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

namespace PH.FabricInspection.UI.SupplierQE.BraCup
{
    public partial class sSelectLotIDForm : DevExpress.XtraEditors.XtraForm
    {
        public sSelectLotIDForm(string AAuditStage, string ACompany, DateTime AIDCreateDate, string AItemCode, string AColorCode)
        {
            InitializeComponent();
            this.PrepareData(AAuditStage, ACompany, AIDCreateDate, AItemCode, AColorCode);
        }

        void PrepareData(string AAuditStage, string ACompany, DateTime AIDCreateDate, string AItemCode, string AColorCode)
        {
            //this.colCrossCup.Visible = AAuditType == "BraCup";
            //if (AAuditType == "Accessories")
            //{
            //    this.Width -= this.colCrossCup.Width;
            //}

            string ConvertedIDCreateDate = AIDCreateDate.ToString("yyMMdd"); //id create dd转换成ERP中的日期格式

            //因为AS400在2021后出现问题，AS400在2021时将服务的时候修改为2002年，所以Stock_In_Date需要将2002的调整为2021年
            if (!string.IsNullOrEmpty(ConvertedIDCreateDate) && ConvertedIDCreateDate.Substring(0, 4) == "2101")
            {
                ConvertedIDCreateDate = "02" + ConvertedIDCreateDate.Substring(2);
            }

            string SqlStr = string.Format("exec sp_ImportDataFromERP_AccessoryAndBraCup '{0}', '{1}', '{2}', '{3}'", ACompany, ConvertedIDCreateDate, AItemCode, AColorCode);
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            DataTable dt = db.ExecuteDataTable(SqlStr, "dtAuidtID");
            List<sBraCupSelectLotIDResult> lists = dt.AsEnumerable().Select(dr => new sBraCupSelectLotIDResult
            {
                Whse = dr["Whse"].ToString(),
                SuppItemRef = dr["SuppItemRef"].ToString(),
                PONO = dr["PONO"].ToString(),
                ItemNO = dr["ItemNo"].ToString(),
                ProjectNO = dr["ProjectNO"].ToString(),
                ColorCode = dr["ColorCode"].ToString(),
                CupCode = dr["CupCode"].ToString(),
                CupDesc = dr["CupDesc"].ToString(),
                LotNO = dr["LotNO"].ToString(),
                PackListQty = Convert.ToInt32(dr["PackListQty"]),
                SuppCode = dr["SuppCode"].ToString(),
                HDONO = dr["HDONO"].ToString(),
                InvoiceNo = dr["InvoiceNO"].ToString(),
                CrossCup = dr["CrossCup"].ToString(),
            }).ToList();

            this.bindingSource.DataSource = lists;
        }

        public List<sBraCupSelectLotIDResult> GetSelectData()
        {
            List<sBraCupSelectLotIDResult> SelectLists = new List<sBraCupSelectLotIDResult>();
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                sBraCupSelectLotIDResult obj = this.gridView.GetRow(i) as sBraCupSelectLotIDResult;
                if (obj != null && obj.CheckFlag)
                {
                    SelectLists.Add(obj);
                }
            }

            //MobileQCDataContext MobileQCDB = ContextBuilder.CreateContext<MobileQCDataContext>();
            //List<AccessorySelectLotIDResult> AllLists = GetAllData();
            //foreach (var SelectObj in SelectLists)
            //{
            //    int? PackListQtySum = AllLists.Where(p => p.ItemNO == SelectObj.ItemNO && p.ColorCode == SelectObj.ColorCode).Select(p => p.PackListQty).Sum();
            //    //SelectObj.PackListQty = PackListQtySum;
            //    var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && PackListQtySum >= p.Qty1 && PackListQtySum <= p.Qty2);

            //    //SelectObj.PackListQtyByLot = PackListQtySum;
            //    SelectObj.AuditSampleQty = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);
            //}

            ////按ItemNO + Color计算出PackingListQty总数，然后按AQL2.5取出抽检数量，按比例分摊抽检数
            //var GroupLists = SelectLists.GroupBy(p => new { p.ItemNO, p.ColorCode }).Select(g => new
            // {
            //     ItemNo = g.Key.ItemNO,
            //     ColorCode = g.Key.ColorCode,
            //     PackListQtySum = g.Sum(x => x.PackListQty)
            // });

            //List<AccessorySelectAduitIDResult> AllLists = GetAllData();
            //MobileQCDataContext MobileQCDB = ContextBuilder.CreateContext<MobileQCDataContext>();
            //foreach (var GroupObj in GroupLists)
            //{
            //    var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && GroupObj.PackListQtySum >= p.Qty1 && GroupObj.PackListQtySum <= p.Qty2);
            //    //int SampleQty = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);
            //    //int BalanceQty = SampleQty;

            //    var lists = SelectLists.Where(p => p.ItemNO == GroupObj.ItemNo && p.ColorCode == GroupObj.ColorCode);
            //    foreach (var obj in lists)
            //    {
            //        //double Qty = 1.0000 * obj.PackListQty / GroupObj.PackListQtySum * SampleQty;
            //        //if (Qty > BalanceQty) Qty = BalanceQty; //控制多行的Sample总数不超过PackListQty总数AQL2.5的抽检数,即变量：SampleQty的值

            //        //obj.AuditSampleQty = Convert.ToInt32(Math.Ceiling(Qty));
            //        //BalanceQty -= obj.AuditSampleQty;

            //        //计算Packing List Qty By Lot
            //        //int iPackingListQtyByLot = AllLists.Where(p => p.ItemNO == GroupObj.ItemNo && p.ColorCode == GroupObj.ColorCode).Select(p => p.PackListQty).Sum();
            //        //obj.PackListQtyByLot = iPackingListQtyByLot;

            //        //按Packing List Qty By Lot的数量计算AQL2.5应该抽多少数量
            //        //var SampleObjByLot = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && iPackingListQtyByLot >= p.Qty1 && iPackingListQtyByLot <= p.Qty2);
            //        //obj.AuditSampleQtyByLot = SampleObjByLot == null ? 0 : (SampleObjByLot.SQty ?? 0);

            //        //取得AQL 2.5的合格标准数
            //        //obj.AQL25StandardQty = SampleObjByLot == null ? 0 : (SampleObjByLot.AQty ?? 0);
            //    }
            //}


            //foreach (var obj in SelectLists.OrderBy(p => p.ItemNO).ThenBy(p => p.ColorCode))
            //{
            //    var GroupObj = lists.FirstOrDefault(p => p.ItemNo == obj.ItemNO && p.ColorCode == obj.ColorCode);
            //    if (GroupObj != null)
            //    {
            //        var SampleObj = db.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && obj.PackListQty >= p.Qty1 && obj.PackListQty <= p.Qty2);
            //        int SampleQty = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);
            //        int Qty = obj.PackListQty / GroupObj.PackListQtySum * SampleQty;
            //        obj.AuditSampleQty = Convert.ToInt32(Math.Ceiling(1.00M * Qty));
            //    }
            //}


            return SelectLists;
        }

        public List<sBraCupSelectLotIDResult> GetAllData()
        {
            return this.bindingSource.DataSource as List<sBraCupSelectLotIDResult>;
        }

        private void gridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "CrossCup")
            {
                object CrossCup = gridView.GetRowCellValue(e.RowHandle, "CrossCup");
                if (CrossCup != null && CrossCup.ToString() == "")
                {
                    e.DisplayText = "none";
                    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

    }


    //用于Bra cup从ERP中导入检查ID
    public class sBraCupSelectLotIDResult : BaseEntity
    {
        public string Whse { get; set; }
        public string PONO { get; set; }
        public string SuppItemRef { get; set; }
        public string ItemNO { get; set; }
        public string ProjectNO { get; set; }
        public string ColorCode { get; set; }
        public string CupCode { get; set; }
        public string CupDesc { get; set; }
        public string LotNO { get; set; }
        public int? PackListQty { get; set; }

        //public int? PackListQtyByLot { get; set; }

        //public int AuditSampleQty { get; set; }
        //public int AuditSampleQtyByLot { get; set; }
        //public int AQL25StandardQty { get; set; }

        public string SuppCode { get; set; }
        public string HDONO { get; set; }
        public string InvoiceNo { get; set; }

        public string CrossCup{ get; set; }
      
    }

}