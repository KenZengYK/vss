using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class SelectInformation : DevExpress.XtraEditors.XtraForm
    {
        public SelectInformation(QC_ExamPlanHeader Obj)
        {
            InitializeComponent();

            GetData(Obj.CustStyle, Obj.OID.ToString());
        }


        List<string> SelectedFtyList = new List<string>();
        List<string> SelectedWorkShopList = new List<string>();
        List<string> SelectedLineList = new List<string>();
        
        public string FtyStr { get { return string.Join(",", SelectedFtyList.Distinct().ToArray()); } }
        public string WorkShopStr { get { return string.Join(",", SelectedWorkShopList.Distinct().ToArray()); } }
        public string LineStr { get { return string.Join(",", SelectedLineList.Distinct().ToArray()); } }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            SelectedFtyList.Clear();
            SelectedWorkShopList.Clear();
            SelectedLineList.Clear();
            for (int i = 0; i < this.gridView1.RowCount; i++)
            {
                InformationClass obj = this.gridView1.GetRow(i) as InformationClass;
                if (obj != null && obj.SelectFlag)
                {
                    if (!string.IsNullOrEmpty(obj.Fty)) { SelectedFtyList.Add(obj.Fty.Trim()); }
                    if (!string.IsNullOrEmpty(obj.WorkShop)) { SelectedWorkShopList.Add(obj.WorkShop.Trim()); }
                    if (!string.IsNullOrEmpty(obj.Line)) { SelectedLineList.Add(obj.Line.Trim()); }
                }
            }
            
        }


        public void GetData(string CustStyle, string OID) 
        {
            string SqlStr = string.Format("exec sp_ExamPlanImportLineOptSelectInformation '{0}', '{1}'", CustStyle, OID);
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataSet ds  = db.ExecuteDataSet(SqlStr, new DataSet(), "Opt");
            List<InformationClass> AList = ds.Tables[0].AsEnumerable().Select(dr => new InformationClass 
            {
                Fty = dr["Factory"].ToString(),
                WorkShop = dr["Workshop"].ToString(),
                Line = dr["Line"].ToString(),
            }).ToList();

            this.gridControl1.DataSource = AList;
        }
    }

    public class InformationClass 
    {
        public bool SelectFlag { get; set; }
        public string Fty { get; set; }
        public string WorkShop { get; set; }
        public string Line { get; set; }
    }



}