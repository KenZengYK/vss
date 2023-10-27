using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using PH.MobileQC.BO;

namespace PH.FabricInspection.UI.Elastic
{
    public partial class SelectLotIDForm : DevExpress.XtraEditors.XtraForm
    {
        string _AuditStage;
        public SelectLotIDForm(string AAuditStage, string ACompany, DateTime AIDCreateDate, string AItemCode, string AColorCode)
        {
            InitializeComponent();

            _AuditStage = AAuditStage;
            this.PrepareData(AAuditStage, ACompany, AIDCreateDate, AItemCode, AColorCode);
        }

        void PrepareData(string AAuditStage, string ACompany, DateTime AIDCreateDate, string AItemCode, string AColorCode)
        {
            string ConvertedIDCreateDate = AIDCreateDate.ToString("yyMMdd"); //id create dd转换成ERP中的日期格式

            //因为AS400在2021后出现问题，AS400在2021时将服务的时候修改为2002年，所以Stock_In_Date需要将2002的调整为2021年
            if (!string.IsNullOrEmpty(ConvertedIDCreateDate) && ConvertedIDCreateDate.Substring(0, 4) == "2101")
            {
                ConvertedIDCreateDate = "02" + ConvertedIDCreateDate.Substring(2);
            }

            string SqlStr = string.Format("exec sp_ImportDataFromERP_Elastic '{0}', '{1}', '{2}', '{3}'", ACompany, ConvertedIDCreateDate, AItemCode, AColorCode);
            //string SqlStr = string.Format("exec sp_ImportDataFromERP_Accessory '{0}', '{1}', '{2}'", "P1", APONO, ConvertedIDCreateDate);
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            DataTable dt = db.ExecuteDataTable(SqlStr, "dtAuidtID");
            List<ElasticSelectAduitIDResult> lists = dt.AsEnumerable().Select(dr => new ElasticSelectAduitIDResult
            {
                Whse = dr["Whse"].ToString(),
                PONO = dr["PONO"].ToString(),
                SuppItemRef = dr["SuppItemRef"].ToString(),
                ItemNO = dr["ItemNo"].ToString(),
                ProjectNO = dr["ProjectNO"].ToString(),
                ColorCode = dr["ColorCode"].ToString(),
                LotNO = dr["LotNO"].ToString(),
                PackListQty = Convert.ToInt32(dr["PackListQty"]),
                SuppCode = dr["SuppCode"].ToString(),
                HDONO = dr["HDONO"].ToString(),
                InvoiceNo = dr["InvoiceNO"].ToString(),
            }).ToList();

            this.bindingSource.DataSource = lists;
        }

        public List<ElasticSelectAduitIDResult> GetSelectData()
        {
            List<ElasticSelectAduitIDResult> AllLists = GetAllData();

            List<ElasticSelectAduitIDResult> SelectLists = new List<ElasticSelectAduitIDResult>();
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                ElasticSelectAduitIDResult obj = this.gridView.GetRow(i) as ElasticSelectAduitIDResult;
                if (obj != null && obj.CheckFlag)
                {
                    SelectLists.Add(obj);
                }
            }

            //按ItemNO + Color计算出PackingListQty总数，然后按AQL2.5取出抽检数量，按比例分摊抽检数
            var GroupLists = SelectLists.GroupBy(p => new { p.ItemNO, p.ColorCode }).Select(g => new
            {
                ItemNo = g.Key.ItemNO,
                ColorCode = g.Key.ColorCode,
                PackListQtyByLot = g.Sum(x => x.PackListQty)
            });

            MobileQCDataContext MobileQCDB = ContextBuilder.CreateContext<MobileQCDataContext>();
            foreach (var GroupObj in GroupLists)
            {
                //每个Audit#的PackList总数;
                int iPackListQtyByLot = AllLists.Where(p => p.ItemNO == GroupObj.ItemNo && p.ColorCode == GroupObj.ColorCode).Select(p => p.PackListQty).Sum();
                var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && iPackListQtyByLot >= p.Qty1 && iPackListQtyByLot <= p.Qty2);

                //如果不是第一次检查，需要由1st的Level 2 升为 Level 3 检查
                if (_AuditStage != "1st")
                {
                    SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Seq == SampleObj.Seq + 1);
                }

                int iAQLAuditQtyByLot = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);      //每个Audit#总共需要抽检多少数量
                int iAQL25StandardQtyByLot = SampleObj == null ? 0 : (SampleObj.AQty ?? 0); //每个Audit#抽检通过的数量(超过这个数不能通过)
                int AQLAuditBalanceQty = iAQLAuditQtyByLot;
                int AQL25StandardBalanceQty = iAQL25StandardQtyByLot;
                int iSelectedPackListQty = SelectLists.Where(p => p.ItemNO == GroupObj.ItemNo && p.ColorCode == GroupObj.ColorCode).Select(p => p.PackListQty).Sum();

                var lists = SelectLists.Where(p => p.ItemNO == GroupObj.ItemNo && p.ColorCode == GroupObj.ColorCode);
                foreach (var obj in lists)
                {
                    obj.TotalBoxQtyByLot = AllLists.Where(p => p.ItemNO == GroupObj.ItemNo && p.ColorCode == GroupObj.ColorCode).Count();

                    obj.PackListQtyByLot = iPackListQtyByLot;           //每个Audit#的PackList总数
                    obj.AuditSampleQtyByLot = iAQLAuditQtyByLot;        //每个Audit#的合格标准数
                    obj.AQL25StandardQtyByLot = iAQL25StandardQtyByLot; //每个Audit# AQL 2.5的合格标准数
                    obj.PackListQty = obj.PackListQty;

                    double Ratio = 1.0000 * obj.PackListQty / iSelectedPackListQty; //分摊比例

                    //抽查总数按比例分摊到每个ID中
                    obj.AuditSampleQty = Convert.ToInt32(Math.Ceiling(Ratio * obj.AuditSampleQtyByLot));
                    if (obj.AuditSampleQty > AQLAuditBalanceQty)
                    {
                        obj.AuditSampleQty = AQLAuditBalanceQty;
                    }
                    AQLAuditBalanceQty -= obj.AuditSampleQty;

                    //抽查总合格数按比例分摊到每个ID中
                    obj.AQL25StandardQty = Convert.ToInt32(Math.Ceiling(Ratio * obj.AQL25StandardQtyByLot));
                    if (obj.AQL25StandardQty > AQL25StandardBalanceQty)
                    {
                        obj.AQL25StandardQty = AQL25StandardBalanceQty;
                    }
                    AQL25StandardBalanceQty -= obj.AQL25StandardQty;
                }
            }

            return SelectLists;
        }

        public List<ElasticSelectAduitIDResult> GetAllData()
        {
            return this.bindingSource.DataSource as List<ElasticSelectAduitIDResult>;
        }

    }

    //用于Elastic从ERP中导入检查ID
    public class ElasticSelectAduitIDResult : BaseEntity
    {
        public string Whse { get; set; }
        public string PONO { get; set; }
        public string SuppItemRef { get; set; }
        public string ItemNO { get; set; }
        public string ProjectNO { get; set; }
        public string ColorCode { get; set; }
        public string LotNO { get; set; }
        public int TotalBoxQtyByLot { get; set; }

        public int PackListQty { get; set; }
        public int PackListQtyByLot { get; set; }

        public int AuditSampleQty { get; set; }
        public int AuditSampleQtyByLot { get; set; }
        public int AQL25StandardQty { get; set; }
        public int AQL25StandardQtyByLot { get; set; }

        public string SuppCode { get; set; }
        public string HDONO { get; set; }
        public string InvoiceNo { get; set; }

    }



}