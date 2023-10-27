using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using PH.Platform.BO;
using PH.MR.BackEnd.Job;

namespace PH.MR.UI.Report
{
    public partial class FinalMRReportQueryProjectForm : DevExpress.XtraEditors.XtraForm
    {
        PH.MR.BO.MRDataContext db = ContextBuilder.CreateContext<MRDataContext>();

        public FinalMRReportQueryProjectForm(List<FinalMRReportQueryProjectClass> AList)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = AList;
        }

        public string AParameter = "";
        private void simpleButton1_Click(object sender, EventArgs e)
        {

            this.AParameter = GetViewHSCodeConition();
            this.Close();
            //PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            //data.AssemblyName = "PH.HSCode.BackEnd.dll";
            //data.ClassFullName = typeof(JobFinalMR).FullName;
            //data.JobName = "Final MR Report";
            //data.ProgramCode = "";
            //data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //data.Parameter = GetViewHSCodeConition();
            //PH.Platform.BackEnd.BO.SReport.InsertData(data);



            //List<FinalMRReportClass> RptList = new List<FinalMRReportClass>();
            //FinalMRReportClass Rtpobj = new FinalMRReportClass();

            //for (int i = 0; i < gridView1.RowCount; i++)
            //{
            //    FinalMRReportQueryProjectClass obj = this.gridView1.GetRow(i) as FinalMRReportQueryProjectClass;
            //    if (obj != null && obj.IsChecked)
            //    {
            //        if (obj.Status == "Final MR")
            //        {
            //            List<PH.MR.BO.MRReport> InitialList = IsStatus(obj.ProjectNo);
            //            RptList.AddRange(FinalMRList(InitialList, obj.ProjectNo));
            //        }
            //        else
            //        {
            //            RptList.AddRange(InitialMRList(obj.ProjectNo));
            //        }



            //    }
            //}

            //List<FinalMRReportClass> RptListOrderby = RptList.OrderBy(p => p.ProjectNo).ToList();
            //FinalMRReport Rpt = new FinalMRReport(RptListOrderby);
            //Rpt.ShowPreview();
        }

        private string GetViewHSCodeConition()
        {

            this.gridView1.PostEditor();

            string str = "";


            for (int i = 0; i < gridView1.RowCount; i++)
            {
                FinalMRReportQueryProjectClass obj = this.gridView1.GetRow(i) as FinalMRReportQueryProjectClass;
                if (obj != null && obj.IsChecked)
                {
                    str = obj.ProjectNo.Trim() + (obj.Status == "Final MR" ? "Y" : "N") + (obj.IsCompleted == "Completed"?"Y":"N") + "," + str;
                }
            }      
            return str;
        }




        #region    處理Final MR
        //List<PH.MR.BO.MRReport> Alist = new List<PH.MR.BO.MRReport>();
        public List<PH.MR.BO.MRReport> IsStatus(string Project) 
        {

            frmRoundMR frmMr = new frmRoundMR("MR");
            frmMr.frmMain_Load(frmMr, new EventArgs());
            frmMr.editCONO.Text = "P1";
            frmMr.editProject.Text = Project;
            frmMr.rgReportOption.SelectedIndex = 1;
            frmMr._HaveRight_MRGetdata = true;
            frmMr.AIsGetRptSource = true;
            frmMr.Print_Click(frmMr.btnPrint, new System.EventArgs());           
            return  frmMr.RptDateSource.Alist;
             
        }

        public List<FinalMRReportClass> FinalMRList(List<PH.MR.BO.MRReport> AList, string Project)
        {
            
            List<FinalMRReportClass> List = new List<FinalMRReportClass>();

            if(AList ==null)  return null;
            var a = from p in AList group p by new { p.MATD,  p.VCAT,  p.CSTL,  p.CCOL,   p.IUNT } 
                                              into g select new { g.Key.MATD, g.Key.VCAT, g.Key.CSTL, g.Key.CCOL,CORQ = g.Sum(p=>p.CORQ), g.Key.IUNT};           
            foreach (var b in a) 
            {
                FinalMRReportClass obj = new FinalMRReportClass();

                obj.ProjectNo = Project;
                obj.Status = "Y";
                obj.SortofMat = b.MATD;
                obj.SupplierMatRef = b.VCAT;
                obj.PHArticle = b.CSTL;
                obj.Colour = b.CCOL;
                obj.Quantity =Convert.ToDecimal(b.CORQ);
                obj.Unit = b.IUNT;
                List.Add(obj);
            }
            return List;
        }

        #endregion


        #region Initial MR數據
        public List<FinalMRReportClass> InitialMRList(string Project)
        {
         
            List<FinalMRReportClass> List = new List<FinalMRReportClass>();

            if (Project == null) return null;
            var a = from p in db.AnticipantMRs  where p.Projectno == Project
                        group p by new { p.Projectno, p.Item_ref, p.Itemno, p.Item_color, p.Unit }
                        into g
                        select new {    
                                            Projectno= g.Key.Projectno,
                                            SupplierMatRef = g.Key.Item_ref,
                                            PHArticle = g.Key.Itemno,
                                            Colour = g.Key.Item_color,
                                            Quantity = g.Sum(p=>p.MR_Qty),
                                            Unit = g.Key.Unit,                                    
                                        };

            foreach (var b in a)
            {
                FinalMRReportClass obj = new FinalMRReportClass();
                obj.ProjectNo = b.Projectno;
                obj.Status = "N";
                obj.SortofMat = SortofMat(b.Projectno, b.SupplierMatRef, b.PHArticle, b.Colour, b.Unit);
                obj.SupplierMatRef = b.SupplierMatRef;
                obj.PHArticle = b.PHArticle;
                obj.Colour = b.Colour;
                obj.Quantity =Convert.ToDecimal( b.Quantity);
                obj.Unit = b.Unit;
                List.Add(obj);
            }
            return List;
        }

        PH.MR.BO.MRDataContext context = ContextBuilder.CreateContext<MRDataContext>();

        //public string SortofMat(string Projectno, string SupplierMatRef, string PHArticle, string Colour, string Unit)
        //{

        //    string StrSql = "select top(1) MATD72 from openquery(as400, 'select MATD72 from AULT4F1.PHP72T where CUSO72=''{0}'' and CMPD72=''{1}'' and CSTL72=''{2}'' and PCOL72=''{3}'' and IUNT72=''{4}'' ')";
        //    StrSql = string.Format(StrSql, Projectno, SupplierMatRef, PHArticle, Colour, Unit);
        //    DataTable tb = context.ExecuteDataSet(StrSql, new DataSet(), "Opts").Tables[0];

        //    return   tb.Rows.Count > 0 ? tb.Rows[0]["MATD72"].ToString():"";
        //}


        public string SortofMat(string Projectno, string SupplierMatRef, string PHArticle, string Colour, string Unit)
        {
          return  context.PHP72Ts.Where(p => p.CUSO72 == Projectno && p.VCAT01 == SupplierMatRef && p.PCOL72 == Colour && p.CSTL72 == PHArticle && p.IUNT72 == Unit).Select(p => p.MATD72).FirstOrDefault();
        }

        #endregion

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < gridView1.RowCount; i++)
            {
                FinalMRReportQueryProjectClass obj = this.gridView1.GetRow(i) as FinalMRReportQueryProjectClass;
                obj.IsChecked = true;
            }
            this.gridView1.RefreshData();
        }




    }
}
