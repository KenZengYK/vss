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
    public partial class MasterAnalyzListForm2A : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        private CheckRptCondition2 CurCC;
        #endregion

        string Flag = "";
        public List<Proc_MasterAnalyzResult_Sub> _ListSub;
        public MasterAnalyzListForm2A()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
            CurCC = new CheckRptCondition2();
            CurCC.radioGroup1.Visible = true;
            CurCC.Text = "QE Opt result (QI/QA)";
        }

        public MasterAnalyzListForm2A(string flag)
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
            Flag = flag;
            CurCC = new CheckRptCondition2();
            CurCC.radioGroup1.Visible = false;
            if (flag != "B")
            {
                PartCodeN.Visible = false;
            }
        }

        public override void DataBind()
        {
            base.DataBind();



            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

            // MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);

            this.DataContext = context;
            this.BindingSource.DataSource = typeof(SP_QC_MasterAnalyz);
        }


        List<SubRptdata> sublist = new List<SubRptdata>();
        List<Proc_MasterAnalyzResult> Allobj = new List<Proc_MasterAnalyzResult>();
        List<Proc_MasterAnalyzResult_Sub_ByWs_Class> DatabyWs = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
        List<Proc_MasterAnalyzResult_Sub_ByWs_Class> DatabyFty = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
        int FirstPassAuditQty = 0, FirstPassTime = 0;
        DataSet ds;

        protected override void OnClickFind()
        {
            Allobj.Clear();

            if (CurCC == null)
            {
                CurCC = new CheckRptCondition2();

                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                // MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);
                this.DataContext = context;
            }

            if (CurCC.ShowDialog() == DialogResult.OK)
            {
                this.BindingSource.DataSource = null;

                if (Flag != "B")
                {
                    Flag = CurCC.ReportType == 0 ? "A" : "C";
                }
                if (Flag != "B")
                {
                    PartCodeN.Visible = false;
                }
                /*
                List<SP_QC_MasterAnalyz> _lst = SqlDataHelper.EXECSP_QC_MasterAnalyze2(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                this.BindingSource.DataSource = _lst;
                 * */



                //List<Proc_MasterAnalyzResult> _lst = SqlDataHelper.EXECSP_QC_MasterAnalyze2A(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);

                //ds = SqlDataHelper.EXECSP_QC_MasterAnalyze2B(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID, Flag);
                //DataSet Allds = SqlDataHelper.EXECSP_QC_MasterAnalyze2B(CurCC.Factory, "", "", "", "", "", CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID, Flag);

                 string SqlStr = string.Format("exec Proc_MasterAnalyze_V8 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}'",
                    CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate.Date, CurCC.ToDate.Date,
                    PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID, Flag);

                ds = (DataContext as MobileQCDataContext).ExecuteDataSet(SqlStr, new DataSet(), "dt");

                //@Factory		varchar(20)		--1
                //,@WorkShop	varchar(20)		--2
                //,@Customer	varchar(20)		--3
                //,@Style		varchar(20)		--4
                //,@Project		varchar(30)	    --5
                //,@Line		varchar(20)		--6
                //,@QC_timeForm	varchar(20) 	--7
                //,@QC_timeTo	varchar(20) 	--8
                //,@LangID		varchar(10) 	--9
                //,@Flag        varchar(1) 


                FirstPassAuditQty = 0;
                FirstPassTime = 0;
                List<Proc_MasterAnalyzResult> _lst = new List<Proc_MasterAnalyzResult>();

                
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
                    newobj.PartCode = item["PartCode"].ToString();
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

                    newobj.DefectPtDesc = item["DefectPtDesc"].ToString();
                    newobj.DefectPtCount = item["DefectPtCount"] is DBNull ? 0 : Convert.ToInt32(item["DefectPtCount"]);

                    newobj.Qn_No = item["qn_no"].ToString();

                    newobj.QAFlag = item["QAFlag"].ToString();
                    newobj.QIFlag = item["QIFlag"].ToString();




                    _lst.Add(newobj);
                    // FirstPassAuditQty = FirstPassAuditQty + newobj.FirstPassAuditQty; //用于計算附表中首通率
                    FirstPassTime = FirstPassTime + newobj.FirsPassTimes;

                }


                //sublist = new List<SubRptdata>();

                //foreach (DataRow item in ds.Tables[1].Rows)
                //{
                //    SubRptdata newobj = new SubRptdata();
                //    newobj.Line = item["Line"].ToString();
                //    newobj.QNNo = item["qn_no"].ToString();
                //    newobj.QN_Qty = int.Parse(item["qn_qty"].ToString());
                //    newobj.OptCount = int.Parse(item["opttotal"].ToString());
                //    newobj.WkCount = int.Parse(item["workertotal"].ToString());
                //    newobj.FpassCount = int.Parse(item["firstpasstimes"].ToString());

                //    newobj.FirstPassQty = int.Parse(item["firstpass_qty"].ToString());

                //    newobj.RpassCount = int.Parse(item["recheckpasstimes"].ToString());

                //    // newobj.TpassCount = int.Parse(item["CustStyle"].ToString());
                //    newobj.ChkQtyCount = int.Parse(item["chkqty"].ToString());
                //    newobj.CheckTimeCount = int.Parse(item["totalchecktimes"].ToString());
                //    newobj.ReCheckTimeCount = int.Parse(item["rechecktimes"].ToString());

                //    newobj.P_Qty = int.Parse(item["p_qty"].ToString());
                //    newobj.F_Qty = int.Parse(item["F_Qty"].ToString());
                //    newobj.U_Qty = int.Parse(item["u_qty"].ToString());
                //    newobj.S_Qty = int.Parse(item["s_qty"].ToString());
                //    newobj.FPY = double.Parse(item["fpy"].ToString());
                //    newobj.Per_Line = double.Parse(item["line_per"].ToString());
                //    newobj.LineCount = int.Parse(item["linecount"].ToString());
                //    newobj.GxTotal = int.Parse(item["gxtotal"].ToString());
                //    newobj.WkTotal = int.Parse(item["wkttl"].ToString());

                //    newobj.PlanCount = int.Parse(item["plancount"].ToString());
                //    newobj.ArrangeCount = int.Parse(item["arrangecount"].ToString());
                //    newobj.UnCheckCount = int.Parse(item["uncheckcount"].ToString());

                //    newobj.KeyCount = int.Parse(item["keycount"].ToString()); //每個QN關鍵工序數

                //    newobj.KeyTotal = int.Parse(item["keytotal"].ToString()); //關鍵工序總數


                //    //newobj.firstpass = int.Parse(item["firstpassqty"].ToString());
                //    sublist.Add(newobj);

                //}



                //_ListSub = new List<Proc_MasterAnalyzResult_Sub>();
                //for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
                //{
                //    Proc_MasterAnalyzResult_Sub ListSub = new Proc_MasterAnalyzResult_Sub();
                //    ListSub.Line = ds.Tables[2].Rows[i]["Line"].ToString();
                //    ListSub.Line_Fpy = Convert.ToDecimal(ds.Tables[2].Rows[i]["Line_Fpy"].ToString());
                //    ListSub.OptCount = Convert.ToInt32(ds.Tables[2].Rows[i]["OptCount"].ToString());

                //    ListSub.QAFlagCount = Convert.ToInt32(ds.Tables[2].Rows[i]["QAFlagCount"].ToString());
                //    ListSub.QIFlagCount = Convert.ToInt32(ds.Tables[2].Rows[i]["QIFlagCount"].ToString());
                //    ListSub.WFIDCount = Convert.ToInt32(ds.Tables[2].Rows[i]["WFIDCount"].ToString());

                //    _ListSub.Add(ListSub);
                //}


                //DatabyWs = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
                //for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
                //{
                //    Proc_MasterAnalyzResult_Sub_ByWs_Class ListSub = new Proc_MasterAnalyzResult_Sub_ByWs_Class();
                //    ListSub.WorkShop = ds.Tables[3].Rows[i]["WorkShop"].ToString();
                //    ListSub.LineCount = Convert.ToInt32(ds.Tables[3].Rows[i]["LineCount"].ToString());
                //    ListSub.ProjectCount = Convert.ToInt32(ds.Tables[3].Rows[i]["ProjectCount"].ToString());

                //    ListSub.CustStyleCount = Convert.ToInt32(ds.Tables[3].Rows[i]["CustStyleCount"].ToString());
                //    ListSub.AuditTotal = Convert.ToInt32(ds.Tables[3].Rows[i]["AuditTotal"].ToString());
                //    ListSub.OptCodeCount = Convert.ToInt32(ds.Tables[3].Rows[i]["OptCodeCount"].ToString());
                //    ListSub.WFIDCount = Convert.ToInt32(ds.Tables[3].Rows[i]["WFIDCount"].ToString());
                //    ListSub.Ttlfirst = Convert.ToInt32(ds.Tables[3].Rows[i]["Ttlfirst"].ToString());
                //    ListSub.TtlReCheck = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlReCheck"].ToString());
                //    ListSub.TtlCheck = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlCheck"].ToString());
                //    ListSub.TtlFirsPass = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlFirsPass"].ToString());
                //    ListSub.TtlReFirsPass = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlReFirsPass"].ToString());
                //    ListSub.YieldFailT = Convert.ToInt32(ds.Tables[3].Rows[i]["YieldFailT"].ToString());
                //    ListSub.TtlP_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlP_Qty"].ToString());
                //    ListSub.TtlF_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlF_Qty"].ToString());
                //    ListSub.TtlU_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlU_Qty"].ToString());
                //    ListSub.TtlS_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlS_Qty"].ToString());

                //    ListSub.QAFlagCount = Convert.ToInt32(ds.Tables[3].Rows[i]["QAFlagCount"].ToString());
                //    ListSub.QIFlagCount = Convert.ToInt32(ds.Tables[3].Rows[i]["QIFlagCount"].ToString());
                //    ListSub.AveragePer = Convert.ToDecimal(ds.Tables[3].Rows[i]["AveragePer"].ToString());
                //    ListSub.TtlQNQty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlQNQty"].ToString());

                //    DatabyWs.Add(ListSub);
                //}


                //DatabyFty = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
                //for (int i = 0; i < ds.Tables[4].Rows.Count; i++)
                //{
                //    Proc_MasterAnalyzResult_Sub_ByWs_Class ListSub = new Proc_MasterAnalyzResult_Sub_ByWs_Class();
                //    //ListSub.WorkShop = ds.Tables[3].Rows[i]["WorkShop"].ToString();
                //    ListSub.LineCount = Convert.ToInt32(ds.Tables[4].Rows[i]["LineCount"].ToString());
                //    ListSub.ProjectCount = Convert.ToInt32(ds.Tables[4].Rows[i]["ProjectCount"].ToString());

                //    ListSub.CustStyleCount = Convert.ToInt32(ds.Tables[4].Rows[i]["CustStyleCount"].ToString());
                //    ListSub.AuditTotal = Convert.ToInt32(ds.Tables[4].Rows[i]["AuditTotal"].ToString());
                //    ListSub.OptCodeCount = Convert.ToInt32(ds.Tables[4].Rows[i]["OptCodeCount"].ToString());
                //    ListSub.WFIDCount = Convert.ToInt32(ds.Tables[4].Rows[i]["WFIDCount"].ToString());
                //    ListSub.Ttlfirst = Convert.ToInt32(ds.Tables[4].Rows[i]["Ttlfirst"].ToString());
                //    ListSub.TtlReCheck = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlReCheck"].ToString());
                //    ListSub.TtlCheck = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlCheck"].ToString());
                //    ListSub.TtlFirsPass = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlFirsPass"].ToString());
                //    ListSub.TtlReFirsPass = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlReFirsPass"].ToString());
                //    ListSub.YieldFailT = Convert.ToInt32(ds.Tables[4].Rows[i]["YieldFailT"].ToString());
                //    ListSub.TtlP_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlP_Qty"].ToString());
                //    ListSub.TtlF_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlF_Qty"].ToString());
                //    ListSub.TtlU_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlU_Qty"].ToString());
                //    ListSub.TtlS_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlS_Qty"].ToString());

                //    ListSub.QAFlagCount = Convert.ToInt32(ds.Tables[4].Rows[i]["QAFlagCount"].ToString());
                //    ListSub.QIFlagCount = Convert.ToInt32(ds.Tables[4].Rows[i]["QIFlagCount"].ToString());
                //    ListSub.AveragePer = Convert.ToDecimal(ds.Tables[4].Rows[i]["AveragePer"].ToString());
                //    ListSub.TtlQNQty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlQNQty"].ToString());

                //    DatabyFty.Add(ListSub);
                //}

                ////第6張表，計算Detail的Total
                //DatabyFty = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
                //for (int i = 0; i < ds.Tables[5].Rows.Count; i++)
                //{
                //    Proc_MasterAnalyzResult_Sub_ByWs_Class ListSub = new Proc_MasterAnalyzResult_Sub_ByWs_Class();
                //    //ListSub.WorkShop = ds.Tables[3].Rows[i]["WorkShop"].ToString();
                //    ListSub.LineCount = Convert.ToInt32(ds.Tables[4].Rows[i]["LineCount"].ToString());
                //    ListSub.ProjectCount = Convert.ToInt32(ds.Tables[4].Rows[i]["ProjectCount"].ToString());

                //    ListSub.CustStyleCount = Convert.ToInt32(ds.Tables[4].Rows[i]["CustStyleCount"].ToString());
                //    ListSub.AuditTotal = Convert.ToInt32(ds.Tables[4].Rows[i]["AuditTotal"].ToString());
                //    ListSub.OptCodeCount = Convert.ToInt32(ds.Tables[4].Rows[i]["OptCodeCount"].ToString());
                //    ListSub.WFIDCount = Convert.ToInt32(ds.Tables[4].Rows[i]["WFIDCount"].ToString());
                //    ListSub.Ttlfirst = Convert.ToInt32(ds.Tables[4].Rows[i]["Ttlfirst"].ToString());
                //    ListSub.TtlReCheck = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlReCheck"].ToString());
                //    ListSub.TtlCheck = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlCheck"].ToString());
                //    ListSub.TtlFirsPass = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlFirsPass"].ToString());
                //    ListSub.TtlReFirsPass = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlReFirsPass"].ToString());
                //    ListSub.YieldFailT = Convert.ToInt32(ds.Tables[4].Rows[i]["YieldFailT"].ToString());
                //    ListSub.TtlP_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlP_Qty"].ToString());
                //    ListSub.TtlF_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlF_Qty"].ToString());
                //    ListSub.TtlU_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlU_Qty"].ToString());
                //    ListSub.TtlS_Qty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlS_Qty"].ToString());

                //    ListSub.QAFlagCount = Convert.ToInt32(ds.Tables[4].Rows[i]["QAFlagCount"].ToString());
                //    ListSub.QIFlagCount = Convert.ToInt32(ds.Tables[4].Rows[i]["QIFlagCount"].ToString());
                //    ListSub.AveragePer = Convert.ToDecimal(ds.Tables[4].Rows[i]["AveragePer"].ToString());
                //    ListSub.TtlQNQty = Convert.ToInt32(ds.Tables[4].Rows[i]["TtlQNQty"].ToString());

                //    DatabyFty.Add(ListSub);
                //}





                this.BindingSource.DataSource = _lst;
            }

        }

        private void barbut_PrintOPT_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //if (CurCC == null || this.BindingSource.Count == 0)
              //  return;


            //            rptQC_MasterAnalyzeOPT2_New rpt = new rptQC_MasterAnalyzeOPT2_New(this.BindingSource.DataSource, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy,Flag);
            if (Flag == "B")
            {
                rptQC_MasterAnalyzeOPT3_New_Part rpt_part = new rptQC_MasterAnalyzeOPT3_New_Part(this.BindingSource.DataSource, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, Flag);
                //rpt_part.SubRptData = sublist;

                PrintingSystem printingSystem1 = rpt_part.PrintingSystem;
                ExportOptions options = printingSystem1.ExportOptions;

                XlsExportOptions xlsOptions = rpt_part.ExportOptions.Xls;
                //Note:XlsExportOptions Xl = rpt_part.PrintingSystem.ExportOptions.Xls;等價於上面上三條代碼
                //  xlsOptions.TextExportMode = TextExportMode.Value;

                // options.Xls.UseNativeFormat
                //   options.XlsTextExportMode = TextExportMode.Value;


                rpt_part.ShowPreviewDialog();
            }
            else
            {
                rptQC_MasterAnalyzeOPT3_New rpt = new rptQC_MasterAnalyzeOPT3_New
                     (ds, this.BindingSource.DataSource, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, Flag);
                    //(ds, this.BindingSource.DataSource, Allobj, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, Flag);
                    
                //rptQC_MasterAnalyzeOPT3_New rpt = new rptQC_MasterAnalyzeOPT3_New
                //    (ds, this.BindingSource.DataSource, Allobj, DatabyWs, DatabyFty, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, Flag, _ListSub);


                //rpt.SubRptData = sublist;

                PrintingSystem printingSystem1 = rpt.PrintingSystem;
                ExportOptions options = printingSystem1.ExportOptions;

                XlsExportOptions xlsOptions = rpt.ExportOptions.Xls;
                //  xlsOptions.TextExportMode = TextExportMode.Value;

                // options.Xls.UseNativeFormat
                // options.XlsTextExportMode = TextExportMode.Value;

                rpt.ShowPreviewDialog();
            }
        }

        private void barBtn_Summary_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurCC == null || this.BindingSource.Count == 0)
                return;

            //rptQC_MasterAnalyzeOPT3_Summary rpt = new rptQC_MasterAnalyzeOPT3_Summary(this.sublist, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, FirstPassAuditQty, Flag);
            rptQC_MasterAnalyzeOPT3_Summary rpt = new rptQC_MasterAnalyzeOPT3_Summary(this.sublist, CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, CurCC.SortByFpy, FirstPassTime, Flag);
            rpt.ShowPreviewDialog();

        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }



    }
}