using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.MR.BO;

namespace PH.MR.BackEnd.Job
{
   public  class JobFinalMR : PH.Platform.BackEnd.BO.IServerReport
    {

       PH.MR.BO.MRDataContext db = ContextBuilder.CreateContext<MRDataContext>();
       
       //public JobFinalMR() 
       //{

       //}

       //public int CheckDataSource(string parameters)
       //{
           
       //    //Xsj: 返回 -1，可以直接執行代碼進行調試 。
       //    //return -1;

       //    return -1;
       //}

       //public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
       //{

       //    PH.MR.BackEnd.FinalMRReport rpt = new PH.MR.BackEnd.FinalMRReport();         
       //    return rpt;

       //}

       //public object GetReportDataSource(string parameters)
       //{

       //    List<FinalMRReportClass> RptList = new List<FinalMRReportClass>();

       //    List<string> Project = new List<string>();
       //    Project = parameters.Split(',').ToList();
       //    foreach (var a in Project)
       //    {
       //        if (a.Substring(a.Length - 1, 1) == "Y")
       //        {
       //            JobFinalMRReport frm = new JobFinalMRReport();
       //            frm.editProject.Text = a.Substring(0, a.Length - 1);
       //            frm.groupReportType.SelectedIndex = 1;
       //            frm.editCompany.Text = "P1";
       //            List<MRReport> MrList =   frm.GetReportDataSource(frm.GetParameter()) as List<MRReport>;
       //            RptList.AddRange(FinalMRList(MrList, a.Substring(0, a.Length - 1)));
       //        }
       //        else
       //        {
       //            RptList.AddRange(InitialMRList(a.Substring(0, a.Length - 1)));
       //        }
       //    }
       //    return RptList;


       //}

       //private string GetViewHSCodeConition()
       //{

       //    this.gridView1.PostEditor();

       //    string str = "";


       //    for (int i = 0; i < gridView1.RowCount; i++)
       //    {
       //        FinalMRReportQueryProjectClass obj = this.gridView1.GetRow(i) as FinalMRReportQueryProjectClass;
       //        if (obj != null && obj.IsChecked)
       //        {
       //            str = obj.ProjectNo.Trim() + (obj.Status == "Final MR" ? "Y" : "N") + "," + str;
       //        }
       //    }
       //    return str;
       //}




       #region    處理Final MR
       //List<PH.MR.BO.MRReport> Alist = new List<PH.MR.BO.MRReport>();
       //public List<PH.MR.BO.MRReport> IsStatus(string Project)
       //{

       //    frmRoundMR frmMr = new frmRoundMR("MR");
       //    frmMr.frmMain_Load(frmMr, new EventArgs());
       //    frmMr.editCONO.Text = "P1";
       //    frmMr.editProject.Text = Project;
       //    frmMr.rgReportOption.SelectedIndex = 1;
       //    frmMr._HaveRight_MRGetdata = true;
       //    frmMr.AIsGetRptSource = true;
       //    frmMr.Print_Click(frmMr.btnPrint, new System.EventArgs());
       //    return frmMr.RptDateSource.Alist;

       //}

       public List<FinalMRReportClass> FinalMRList(string Project)
       {          
           List<FinalMRReportClass> List = new List<FinalMRReportClass>();

          
           var a = from p in db.tAnticipantMRs
                     where   p.Projectno == Project
                   group p by new { p.Projectno, p.Item_ref, p.Itemno, p.Style_color, p.Unit }
                       into g
                       select new { g.Key.Projectno, g.Key.Item_ref, g.Key.Itemno, g.Key.Style_color, CORQ = g.Sum(p => p.MR_Qty??0), g.Key.Unit };
           if (db.tAnticipantMRs.Where(p => p.Projectno == Project).Count() == 0) 
           {
               FinalMRReportClass obj = new FinalMRReportClass();

               obj.ProjectNo = Project;
               obj.Status = "n.a.";
               obj.SortofMat = "";
               obj.SupplierMatRef = "";
               obj.PHArticle = "";
               obj.Colour = "";
               obj.Quantity = Convert.ToDecimal(0);
               obj.Unit = "";

               List.Add(obj);
           }
           else
           {
               foreach (var b in a)
               {
                   FinalMRReportClass obj = new FinalMRReportClass();

                   obj.ProjectNo = b.Projectno;
                   obj.Status = "Y";
                   obj.SortofMat = tSortofMat(b.Projectno, b.Item_ref, b.Itemno, b.Style_color, b.Unit);
                   obj.SupplierMatRef = b.Item_ref;
                   obj.PHArticle = b.Itemno;
                   obj.Colour = b.Style_color;
                   obj.Quantity =Convert.ToDecimal( b.CORQ);
                   obj.Unit = b.Unit;
                   List.Add(obj);
               }
           }
           return List;
       }

       #endregion


       #region Initial MR數據
       public List<FinalMRReportClass> InitialMRList(string Project)
       {

           List<FinalMRReportClass> List = new List<FinalMRReportClass>();

         
           var a = from p in db.AnticipantMRs
                   where p.Projectno == Project
                   group p by new { p.Projectno, p.Item_ref, p.Itemno, p.Style_color, p.Unit }
                       into g
                       select new
                       {
                           Projectno = g.Key.Projectno,
                           SupplierMatRef = g.Key.Item_ref,
                           PHArticle = g.Key.Itemno,
                           Colour = g.Key.Style_color,
                           Quantity = g.Sum(p => p.MR_Qty??0),
                           Unit = g.Key.Unit,
                       };

           if (a.Count() == 0)
           {
               FinalMRReportClass obj = new FinalMRReportClass();
               obj.ProjectNo = Project;
               obj.Status = "n.a.";
               obj.SortofMat = "";
               obj.SupplierMatRef = "";
               obj.PHArticle = "";
               obj.Colour = "";
               obj.Quantity = Convert.ToDecimal(0);
               obj.Unit = "";
               List.Add(obj);
           }
           else
           {
               foreach (var b in a)
               {
                   FinalMRReportClass obj = new FinalMRReportClass();
                   obj.ProjectNo = b.Projectno;
                   obj.Status = "N";
                   obj.SortofMat = SortofMat(b.Projectno, b.SupplierMatRef, b.PHArticle, b.Colour, b.Unit);
                   obj.SupplierMatRef = b.SupplierMatRef;
                   obj.PHArticle = b.PHArticle;
                   obj.Colour = b.Colour;
                   obj.Quantity =Convert.ToDecimal(b.Quantity);
                   obj.Unit = b.Unit;
                   List.Add(obj);
               }
           }
           return List;
       }


       public string SortofMat(string Projectno, string SupplierMatRef, string PHArticle, string Colour, string Unit)
       {
           return context.PHP72Ts.Where(p => p.CUSO72 == Projectno && p.VCAT01 == SupplierMatRef && p.PCOL72 == Colour && (p.CSTL72 == PHArticle  || p.SSTL72 == PHArticle) && p.IUNT72 == Unit).Select(p => p.MATD72).FirstOrDefault();
       }

       public string tSortofMat(string Projectno, string SupplierMatRef, string PHArticle, string Colour, string Unit)
       {
           return context.tPHP72Ts.Where(p => p.CUSO72 == Projectno && p.VCAT01 == SupplierMatRef && p.PCOL72 == Colour && (p.CSTL72 == PHArticle || p.SSTL72 == PHArticle) && p.IUNT72 == Unit).Select(p => p.MATD72).FirstOrDefault();
       }
       #endregion




       #region IServerReport 成员

       public int CheckDataSource(string parameters)
       {
           return 0;
           //Xsj: 返回 -1，可以直接執行代碼進行調試 。
           //Xsj: 返回 0，可以執行后台 
       }

       public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
       {
           PH.MR.BackEnd.FinalMRReport rpt = new PH.MR.BackEnd.FinalMRReport();
           return rpt;
       }

       PH.MR.BO.MRDataContext context = ContextBuilder.CreateContext<MRDataContext>();
       public object GetReportDataSource(string parameters)
       {
           //db.tAnticipantMRs.DeleteAllOnSubmit(db.tAnticipantMRs);
           //db.SubmitChanges();


           context.CommandTimeout = 30000;
           PH.MR.BO.DB.SQL2000DB.Execute("delete from [PH.MR].dbo.[tAnticipantMR]");
           PH.MR.BO.DB.SQL2000DB.Execute("delete from [PH.MR].dbo.[tPHP72T]"); 

           List<FinalMRReportClass> RptList = new List<FinalMRReportClass>();

           List<string> Project = new List<string>();
           Project = parameters.Split(',').ToList();
           foreach (var a in Project.Where(d=>d.Length>1))
           {
               string IsFinalMR = a.Substring(a.Length - 2, 1);
               string IsComplete = a.Substring(a.Length - 1, 1);
               string AProject = a.Substring(0, a.Length - 2);

               if (IsFinalMR == "Y" && IsComplete == "N")
               {               
                   ReportHelper helper = new ReportHelper();
                   string dept = "OA";
                   helper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
                   helper.TM = DateTime.Now.ToString("HHmmssfff");
                   helper.JOBN = string.Format("{0}{1}.{2}", helper.DT, helper.TM.Substring(0, 2), helper.TM.Substring(2, 4));
                   helper.phReportAction = PHReportAction.GenerateMR;
                   helper.dataAction = DataAction.None;
                   helper.ReportOption = PHPrintReportOption.None;
                   helper.Dept = dept;
                   helper.CONO = "P1";
                   helper.Project = AProject; 
                   helper.PrepareData();
                 
                   string sqlcmd = string.Format("exec [PH.MR].dbo.[sp_tAnticipatedMR] {0}0,'{1}'", helper.JOBN, PH.Platform.Common.SysParamHelper.Instance.UserID);
                   PH.MR.BO.DB.SQL2000DB.Execute(sqlcmd);
                   RptList.AddRange(FinalMRList(AProject));
               }
               if (IsFinalMR == "N")
               {
                   RptList.AddRange(InitialMRList(AProject));
               }
           }
          
           return RptList;
       }

       #endregion
    }
}
