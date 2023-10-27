/*    
*  
* Copyright (c) 2009 PeiHeng   
*  
* CreateDate: 2009-8-27 16:14:17
* $Archive: /PH/PH.MobileQC/PH.MobileQC.UI/SP_QC_MasterAnalyzListForm.cs $   
* $Author: Admin $  
* $Date: 2009-8-27 16:14:17 $   
* $Revision: 0 $   
*/ 
 
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq; 
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.MobileQC.BO;
using DevExpress.XtraPrinting;

namespace PH.MobileQC.UI
{
    public partial class MasterAnalyzListForm2A_Comp : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        private CheckRptCondition2 CurCC; 
        #endregion

        string Flag = "";
        public MasterAnalyzListForm2A_Comp()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
            CurCC = new CheckRptCondition2();
        }

        public MasterAnalyzListForm2A_Comp(string flag)
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
            Flag = flag;
            CurCC = new CheckRptCondition2();
        }

        public override void DataBind()
        {
            base.DataBind();

            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

         //   MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);
            
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(SP_QC_MasterAnalyz);
        }


        List<SubRptdata> sublist =new List<SubRptdata>();

        int FirstPassAuditQty = 0;

        protected override void OnClickFind()
        {
            if (CurCC == null )
            {
                CurCC = new CheckRptCondition2();

                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                this.DataContext = context;
            }

            if (CurCC.ShowDialog()== DialogResult.OK)
            {
                this.BindingSource.DataSource = null;
                /*
                List<SP_QC_MasterAnalyz> _lst = SqlDataHelper.EXECSP_QC_MasterAnalyze2(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                this.BindingSource.DataSource = _lst;
                 * */



                //List<Proc_MasterAnalyzResult> _lst = SqlDataHelper.EXECSP_QC_MasterAnalyze2A(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);

                DataSet ds = SqlDataHelper.EXECSP_QC_MasterAnalyzeComp(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID, Flag);



                List<Proc_MasterAnalyzResult> _lst = new List<Proc_MasterAnalyzResult>();
                sublist = new List<SubRptdata>();

                foreach (DataRow item in ds.Tables[1].Rows)
                {
                    SubRptdata newobj = new SubRptdata();
                    newobj.Line = item["Line"].ToString();
                    newobj.QNNo = item["qn_no"].ToString();
                    newobj.QN_Qty =int.Parse(item["qn_qty"].ToString());
                    newobj.OptCount = int.Parse(item["opttotal"].ToString());
                    newobj.WkCount = int.Parse(item["workertotal"].ToString());
                    newobj.FpassCount = int.Parse(item["firstpasstimes"].ToString());

                    newobj.FirstPassQty = int.Parse(item["firstpass_qty"].ToString());

                    newobj.RpassCount = int.Parse(item["recheckpasstimes"].ToString());

                   // newobj.TpassCount = int.Parse(item["CustStyle"].ToString());
                    newobj.ChkQtyCount = int.Parse(item["chkqty"].ToString());
                    newobj.CheckTimeCount = int.Parse(item["totalchecktimes"].ToString());
                    newobj.ReCheckTimeCount = int.Parse(item["rechecktimes"].ToString());

                    newobj.P_Qty = int.Parse(item["p_qty"].ToString());
                    newobj.F_Qty = int.Parse(item["F_Qty"].ToString());
                    newobj.U_Qty = int.Parse(item["u_qty"].ToString());
                    newobj.S_Qty = int.Parse(item["s_qty"].ToString());
                    newobj.FPY = double.Parse(item["fpy"].ToString());
                    newobj.Per_Line = double.Parse(item["line_per"].ToString());
                    newobj.LineCount = int.Parse(item["linecount"].ToString());
                    newobj.GxTotal = int.Parse(item["gxtotal"].ToString());
                    newobj.WkTotal = int.Parse(item["wkttl"].ToString());

                    newobj.PlanCount = int.Parse(item["plancount"].ToString());
                    newobj.ArrangeCount = int.Parse(item["arrangecount"].ToString());
                    newobj.UnCheckCount = int.Parse(item["uncheckcount"].ToString());
                    
                    newobj.KeyCount = int.Parse(item["keycount"].ToString()); //每個QN關鍵工序數

                    newobj.KeyTotal = int.Parse(item["keytotal"].ToString()); //關鍵工序總數


                    //newobj.firstpass = int.Parse(item["firstpassqty"].ToString());
                    sublist.Add(newobj);

                }

                FirstPassAuditQty = 0;
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    Proc_MasterAnalyzResult newobj = new Proc_MasterAnalyzResult();
                    newobj.WFID = item["WFID"].ToString();
                    newobj.OptCode = item["OptCode"].ToString();
                    newobj.OPTName = item["OPTName"].ToString();
                    newobj.WFHame = item["WFHame"].ToString();
                    newobj.Line = item["Line"].ToString();
                    newobj.Project = item["Project"].ToString();
                    newobj.CustStyle = item["CustStyle"].ToString();

                    newobj.AuditTotal = item["AuditTotal"] is DBNull ? 0 : Convert.ToInt32(item["AuditTotal"]);


                    newobj.TotalCheckTimes = item["totalchktimes"] is DBNull ? 0 : Convert.ToInt32(item["totalchktimes"]);
                    newobj.ReCheckTimes = item["rechecktimes"] is DBNull ? 0 : Convert.ToInt32(item["rechecktimes"]);

                    newobj.FirsPassTimes = item["firstpasstimes"] is DBNull ? 0 : Convert.ToInt32(item["firstpasstimes"]);
                    newobj.ReCheckPassTimes = item["recheckpasstimes"] is DBNull ? 0 : Convert.ToInt32(item["recheckpasstimes"]);
                    newobj.FirstPassQty = item["FirstPassQty"] is DBNull ? 0 : Convert.ToInt32(item["FirstPassQty"]);
                    newobj.FirstPassAuditQty = int.Parse(item["firstpassauditqty"].ToString());

                    newobj.FPY = item["FPY"] is DBNull ? 0 : Convert.ToDouble(item["FPY"]);
                    newobj.IsPass = item["IPY"].ToString();

                    newobj.P_Qty = item["P_Qty"] is DBNull ? 0 : Convert.ToInt32(item["P_Qty"]);
                    newobj.F_Qty = item["F_Qty"] is DBNull ? 0 : Convert.ToInt32(item["F_Qty"]);
                    newobj.U_Qty = item["U_Qty"] is DBNull ? 0 : Convert.ToInt32(item["U_Qty"]);
                    newobj.S_Qty = item["S_Qty"] is DBNull ? 0 : Convert.ToInt32(item["S_Qty"]);
                    newobj.QNQty = item["qn_qty"] is DBNull ? 0 : Convert.ToInt32(item["qn_qty"]);
                    newobj.QNQty_Total = item["qnqty_total"] is DBNull ? 0 : Convert.ToInt32(item["qnqty_total"]);
                
                    _lst.Add(newobj);
                    FirstPassAuditQty = FirstPassAuditQty + newobj.FirstPassAuditQty; //計算附表中首通率

                }
                
                
                this.BindingSource.DataSource = _lst;
            }

        }

        private void barbut_PrintOPT_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurCC == null || this.BindingSource.Count==0)
                return;
            

//            rptQC_MasterAnalyzeOPT2_New rpt = new rptQC_MasterAnalyzeOPT2_New(this.BindingSource.DataSource, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy,Flag);
            rptQC_MasterAnalyzeComp_New rpt = new rptQC_MasterAnalyzeComp_New(this.BindingSource.DataSource, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, Flag);
            rpt.SubRptData = sublist;
            
            PrintingSystem printingSystem1 = rpt.PrintingSystem;
            ExportOptions options = printingSystem1.ExportOptions;

            XlsExportOptions xlsOptions = rpt.ExportOptions.Xls;
          //  xlsOptions.TextExportMode = TextExportMode.Value;

           // options.Xls.UseNativeFormat
         //   options.XlsTextExportMode = TextExportMode.Value;

            rpt.ShowPreviewDialog();
        }

        private void barBtn_Summary_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurCC == null || this.BindingSource.Count == 0)
                return;

          //  rptQC_MasterAnalyzeOPT2_Summary rpt = new rptQC_MasterAnalyzeOPT2_Summary(this.sublist, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, FirstPassAuditQty,Flag);
            rptQC_MasterAnalyzeComp_Summary rpt = new rptQC_MasterAnalyzeComp_Summary(this.sublist, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, FirstPassAuditQty, Flag);
            rpt.ShowPreviewDialog();

        }



    }
}