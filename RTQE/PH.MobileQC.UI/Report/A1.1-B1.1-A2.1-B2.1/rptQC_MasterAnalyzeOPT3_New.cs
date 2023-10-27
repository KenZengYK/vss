using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using PH.MobileQC.BO;
using System.Windows.Forms;
using System.Collections;
using PH.MobileQC.UI.RPT;

namespace PH.MobileQC.UI
{
    public class rptQC_MasterAnalyzeOPT3_New : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTCode;
        private DevExpress.XtraReports.UI.XRTableCell col_Rechk;
        private DevExpress.XtraReports.UI.XRTableCell column_F;
        private DevExpress.XtraReports.UI.XRTableCell column_U;
        private DevExpress.XtraReports.UI.XRTableCell column_pass;
        private DevExpress.XtraReports.UI.XRLabel lbl_DataTo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel lbl_DateForm;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRTableCell column_S;

        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel lbl_Factory;
        private DevExpress.XtraReports.UI.XRLabel lbl_WorkShop;
        private DevExpress.XtraReports.UI.XRTableCell column_Line;
        private DevExpress.XtraReports.UI.XRTableCell column_Project;
        private DevExpress.XtraReports.UI.XRTableCell column_CustStyle;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRTableCell column_P;
        private DevExpress.XtraReports.UI.XRTableCell col_FirstChk;
        private DevExpress.XtraReports.UI.XRTableCell col_totalchk;
        private DevExpress.XtraReports.UI.XRTableCell col_chkqty;
        private DevExpress.XtraReports.UI.XRTableCell col_repasstimes;
        private DevExpress.XtraReports.UI.XRTableCell column_fpy;
        private DevExpress.XtraReports.UI.XRTableCell column_passtimes;
        private DevExpress.XtraReports.UI.XRTableCell col_YieldFail;
        private DevExpress.XtraReports.UI.XRTableCell col_qnqty;
        private DevExpress.XtraReports.UI.XRTableCell xrQA;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRTable xrTable7;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell17;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow10;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell23;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell26;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell18;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell21;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell24;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell22;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell27;
        private DevExpress.XtraReports.UI.XRTable xrTable12;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow21;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell89;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow22;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell92;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell93;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell94;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow23;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell95;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell96;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell97;
        private DevExpress.XtraReports.UI.XRTable xrTable13;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow24;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell90;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow25;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell91;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow26;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell98;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateText;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateName;
        private DevExpress.XtraReports.UI.XRLabel xrVerText;
        private DevExpress.XtraReports.UI.XRLabel xrVerName;
        private DevExpress.XtraReports.UI.XRLabel xrRptText;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel laQnNo;
        private DevExpress.XtraReports.UI.XRTableCell xrQI;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow7;
        private DevExpress.XtraReports.UI.XRTableCell xrlinetotal1;
        private DevExpress.XtraReports.UI.XRTableCell xrprojtotal1;
        private DevExpress.XtraReports.UI.XRTableCell xrstylettl1;
        private DevExpress.XtraReports.UI.XRTableCell col_qnqtyT1;
        private DevExpress.XtraReports.UI.XRTableCell col_KeyOpt1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell251;
        private DevExpress.XtraReports.UI.XRTableCell xropttotal1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell291;
        private DevExpress.XtraReports.UI.XRTableCell xrtotalfirst1;
        private DevExpress.XtraReports.UI.XRTableCell col_RechkT11;
        private DevExpress.XtraReports.UI.XRTableCell col_totalchkT11;
        private DevExpress.XtraReports.UI.XRTableCell col_chkqtyT11;
        private DevExpress.XtraReports.UI.XRTableCell col_passtimesT111;
        private DevExpress.XtraReports.UI.XRTableCell col_repasstimesT11;
        private DevExpress.XtraReports.UI.XRTableCell col_YieldFailT1;
        private DevExpress.XtraReports.UI.XRTableCell column_PT11;
        private DevExpress.XtraReports.UI.XRTableCell column_FT11;
        private DevExpress.XtraReports.UI.XRTableCell column_UT11;
        private DevExpress.XtraReports.UI.XRTableCell column_ST11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell321;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell361;
        private DevExpress.XtraReports.UI.XRLabel xrLabel8;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport2;
        private System.ComponentModel.IContainer components;
        private DevExpress.XtraReports.UI.XRTable xrTableDetailTotal;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow8;
        private DevExpress.XtraReports.UI.XRTableCell tcLineCount;
        private DevExpress.XtraReports.UI.XRTableCell tcProjectCount;
        private DevExpress.XtraReports.UI.XRTableCell tcCustStyleCount;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlQNQty;
        private DevExpress.XtraReports.UI.XRTableCell tcQAFlagCount;
        private DevExpress.XtraReports.UI.XRTableCell tcQIFlagCount;
        private DevExpress.XtraReports.UI.XRTableCell tcOptCodeCount;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell43;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlfirst;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlReCheck;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlCheck;
        private DevExpress.XtraReports.UI.XRTableCell tcAuditTotal;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlFirsPass;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlReFirsPass;
        private DevExpress.XtraReports.UI.XRTableCell tcYieldFailT;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlP_Qty;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlF_Qty;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlU_Qty;
        private DevExpress.XtraReports.UI.XRTableCell tcTtlS_Qty;
        private DevExpress.XtraReports.UI.XRTableCell tcAveragePer;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell59;
        private DevExpress.XtraReports.UI.XRLabel xrLabel12;
        private DevExpress.XtraReports.UI.XRTable xrTable8;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell74;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell71;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell77;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell33;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell75;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell72;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell34;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell78;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell35;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell16;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell38;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell76;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell73;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell69;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell79;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell70;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRTableCell colDefectPtCount;
        private DevExpress.XtraReports.UI.XRTableCell xrDefectPtDescCount;
        private DevExpress.XtraReports.UI.XRTableCell xrDefectDesc;
        private DevExpress.XtraReports.UI.XRTableCell xrTtlDefectPtDescCountFty;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell column_WFName;
        private DevExpress.XtraReports.UI.XRTableCell tcWFIDCount;
        private DevExpress.XtraReports.UI.XRTableCell xrWorkers1;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter1;
        private DevExpress.XtraReports.UI.XRLabel xrVerNo;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rptQC_MasterAnalyzeOPT3_New()
        {
            InitializeComponent();
        }


        //public List<SubRptdata> SubRptData = new List<SubRptdata>();

        bool _sortfpy;
        string _Flag = "";
        List<Proc_MasterAnalyzResult> ReportDataList;
        //List<Proc_MasterAnalyzResult> Allobj = new List<Proc_MasterAnalyzResult>();
        //object Alldata = new object();
        //List<Proc_MasterAnalyzResult_Sub_ByWs_Class> DataByFty = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
        DataSet ds;

        public rptQC_MasterAnalyzeOPT3_New(DataSet ADataSet,
            object datasouce,
            //List<Proc_MasterAnalyzResult> allobj,
            //List<Proc_MasterAnalyzResult_Sub_ByWs_Class> ADataByWs,
            //List<Proc_MasterAnalyzResult_Sub_ByWs_Class> ADataByFty,
            string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, bool SortFPY, string Flag)
        {
            InitializeComponent();
            ds = ADataSet;

            _Flag = Flag;
            // System.Data.DataTable dt = SqlDataHelper.EXECSP_QC_MasterAnalyzeDT2( Factory,  WorkShop,  Customer,  Style,  Project,  Line, QC_timeForm, QC_timeTo);
            //this.DataSource = datasouce;
            //Allobj = allobj;
            //DataByFty = ADataByFty;



            //rptQC_MasterAnalyzeOPT3_New_Sub rpt_Sub = new rptQC_MasterAnalyzeOPT3_New_Sub(_ListSub);
            //xrSubreport1.ReportSource = rpt_Sub;


            //rptQC_MasterAnalyzeOPT3_Sub_ByWs rpt_SubByWs = new rptQC_MasterAnalyzeOPT3_Sub_ByWs(ADataByWs);
            //xrSubreport2.ReportSource = rpt_SubByWs;



            // Alldata = datasouce;

            //应老板要求将FPY为100%的隐藏，同时Summary部分不按原逻辑不变，（包含100%的计算）,add by shulin 2023-07-27

            var datalist = ((IEnumerable<Proc_MasterAnalyzResult>)datasouce).Where(dr => dr.FPY != 100).OrderBy(p => p.Line).ThenBy(p => p.Qn_No).ToList();
            //var datalist = ((IEnumerable<Proc_MasterAnalyzResult>)ADataSet.Tables[0]).Where(dr => dr.FPY != 100).OrderBy(p => p.Line).ThenBy(p => p.Qn_No).ToList();
            /*            
            //   XlExportOptionsBase.TextExportMode 

            // var   = datalist.OrderBy(p => p.FPY).ToList();

             //ReportDataList = datalist.OrderBy(p => p.FPY).ToList();
            int j = 1, i = 0;

            double mvalue =0;
            foreach (Proc_MasterAnalyzResult pm in datalist)
            {
                if (pm.FPY != mvalue)
                {
                    mvalue = pm.FPY;

                    if (i > 0)
                    {
                        j++;
                        pm.SortId = j;
                    }
                    else
                    {
                        pm.SortId = j;
                    }
                }
                else
                    pm.SortId = j;

                i++; 
            }
            */
            //由David修改首通率(后十位算法) 2023-07-27
            var CalcSortIDList = datalist.Where(p => p.FPY < 100).OrderBy(p => p.FPY);
            int Index = 1;
            int Rank = 1;

            double PreviousFPY = CalcSortIDList.FirstOrDefault() == null ? 0 : CalcSortIDList.FirstOrDefault().FPY;
            foreach (var item in CalcSortIDList)
            {
                if (item.FPY == PreviousFPY)
                {
                    item.SortId = Rank;
                }
                else
                {
                    Rank = Index;
                    item.SortId = Rank;
                }
                PreviousFPY = item.FPY;
                Index++;
            }

            ReportDataList = datalist.ToList();

            //for (int i = 1; i <=10; i++)
            //{
            //    lst[i-1].SortId =i;
            //}

            _sortfpy = SortFPY;



            //if (SortFPY)
            //    this.DataSource = ReportDataList.OrderBy(p => p.FPY).ToList();
            //else
            this.DataSource = ReportDataList.OrderBy(p => p.Line).ThenBy(p => p.Qn_No).ToList();

            this.lbl_Factory.Text = Factory;
            this.lbl_WorkShop.Text = WorkShop;
            //this.lbl_Customer.Text = Customer;
            //this.lbl_Style.Text = Style;
            //this.lbl_Style.Text = Style;
            //this.lbl_Project.Text = Project;
            //this.lbl_Line.Text = Line;
            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");


            DateTime d1 = DateTime.Parse(lbl_DateForm.Text);
            DateTime d2 = DateTime.Parse(lbl_DataTo.Text);

            int aa = Convert.ToInt32(d1.DayOfWeek);
            int bb = Convert.ToInt32(d2.DayOfWeek);


            this.column_OPTCode.DataBindings.Add("Text", this.DataSource, "OPTCode");
            //this.column_DefectPt.DataBindings.Add("Text", this.DataSource, "OPTName");
            //this.xrDefectDes.DataBindings.Add("Text", this.DataSource, "DefectPtDesc");
            this.colDefectPtCount.DataBindings.Add("Text", this.DataSource, "DefectPtCount");

            this.xrDefectDesc.DataBindings.Add("Text", this.DataSource, "DefectPtDesc");
            //this.column_WFID.DataBindings.Add("Text", this.DataSource, "WFID");
            this.column_WFName.DataBindings.Add("Text", this.DataSource, "WFHame");

            this.column_P.DataBindings.Add("Text", this.DataSource, "P_Qty", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F_Qty", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U_Qty", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S_Qty", "{0:0.#}");


            this.col_Rechk.DataBindings.Add("Text", this.DataSource, "ReCheckTimes"); //重檢次數

            this.col_totalchk.DataBindings.Add("Text", this.DataSource, "TotalCheckTimes"); //合計審定計數

            this.col_chkqty.DataBindings.Add("Text", this.DataSource, "AuditTotal"); //審定總件數

            //  this.col_passtimes1.DataBindings.Add("Text", this.DataSource, "FirstPassTimes"); //正檢合格次數
            this.col_repasstimes.DataBindings.Add("Text", this.DataSource, "ReCheckPassTimes"); //重檢合格次數

            // this.col_fpy.DataBindings.Add("Text", this.DataSource, "FPY"); //首次通過率


            this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");
            //col_FirstChk.DataBindings.Add("Text", this.DataSource, "CustStyle");

            this.laQnNo.DataBindings.Add("Text", this.DataSource, "Qn_No");
            //this.col_RechkT.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            //this.col_totalchkT.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            //this.col_chkqtyT.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            //this.col_passtimesT.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            //this.col_repasstimesT.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            column_pass.DataBindings.Add("Text", this.DataSource, "IsPass");

            this.col_qnqty.DataBindings.Add("Text", this.DataSource, "QNQty");
            this.xrQA.DataBindings.Add("Text", this.DataSource, "QAFlag");
            this.xrQI.DataBindings.Add("Text", this.DataSource, "QIFlag");

            string title_part1 = "", title_part11 = "", title_part2 = "", title_part3 = "";

            ReportHelper reportHelper = new ReportHelper("00000030");

            if (_Flag == "A")
            {
                reportHelper = new ReportHelper("00000002");
            }
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;

            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;


            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            if (QC_timeForm.Date == QC_timeTo.Date) //Daily
            {
                xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, "Daily");
                xrRptText.Text = reportHelper.ReportInfo.ReportCodeDaily;
            }
            else
            {
                xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, "Wkly");
                xrRptText.Text = reportHelper.ReportInfo.ReportCodeWeekly;
            }

            //xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, QC_timeForm.Date == QC_timeTo.Date ? "Daily" : "Wkly");
            //xrLabel3.Text = reportHelper.ReportInfo.ReportName_CN;


            // add by joseph
            if (lbl_DateForm.Text == lbl_DataTo.Text)
            {
                //xrTitleCN.Text = "每日";
                //xrTitleEn.Text = "Daily";
                title_part1 = "每日";
                title_part11 = "Daily";
            }
            else if (aa == 1 && (bb == 6 || bb == 0))
            {
                title_part1 = "每周";
                title_part11 = "Wkly";
            }
            else
            {
                //xrTitleCN.Text = "定期";
                //xrTitleEn.Text = "Periodic";
                title_part1 = "定期";
                title_part11 = "Periodly";
            }
            //  title_part3 = SortFPY ? " - 首通率依靠" : " - 組裝線依靠";
            title_part3 = " - 首通率和勞動表現";

            //xrLabel3.Text = "";

            //if (_Flag == "A")
            //  xrLabel3.Text = title_part1 + "巡審定工序报表" + title_part3 + "  (主表)";
            //else
            //    xrLabel3.Text = title_part1 + "巡審查工序报表" + title_part3 + "  (主表)";



            //if (_Flag == "A")
            //    xrLabel1.Text = xrLabel1 + " - Mobile Audit";
            //else
            //    xrLabel1.Text = xrLabel1 + " - Mobile Inspection";


            //if (_Flag == "A")
            //    xrLabel3.Text = xrLabel3 + " - 巡審定";
            //else
            //    xrLabel3.Text = xrLabel3 + " - 巡審查";

            // xrBy.Text = SortFPY ? " - by FPY" : " - by Line";

            //title_part2 = SortFPY ? " - FPY Dependent" : " - Line Dependent";
            title_part2 = " - FPY & WF performance";

            //xrLabel1.Text = "";
            // xrLabel1.Text = "Mobile Auditing Operation Report " + title_part2;
            //if (_Flag == "A")
            //  xrLabel1.Text = title_part11 + " Mobile Audit Operation Report " + title_part2+"  (Main Sheet)";
            //else
            //    xrLabel1.Text = title_part11 + " Mobile Inspection Operation Report " + title_part2 + "  (Main Sheet)";


            //处理Line Total, 由David加入2023-07-31
            var ListSubList = new List<Proc_MasterAnalyzResult_Sub>();
            for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
            {
                Proc_MasterAnalyzResult_Sub ListSub = new Proc_MasterAnalyzResult_Sub();
                ListSub.WorkShop = ds.Tables[2].Rows[i]["WorkShop"].ToString();


                ListSub.Line = ds.Tables[2].Rows[i]["Line"].ToString();
                ListSub.Line_Fpy = Convert.ToDecimal(ds.Tables[2].Rows[i]["Line_Fpy"].ToString());
                ListSub.OptCount = Convert.ToInt32(ds.Tables[2].Rows[i]["OptCount"].ToString());


                ListSub.QAFlagCount = Convert.ToInt32(ds.Tables[2].Rows[i]["QAFlagCount"].ToString());
                ListSub.QIFlagCount = Convert.ToInt32(ds.Tables[2].Rows[i]["QIFlagCount"].ToString());
                ListSub.WFIDCount = Convert.ToInt32(ds.Tables[2].Rows[i]["WFIDCount"].ToString());

                ListSub.firstpasstimesByLine = Convert.ToInt32(ds.Tables[2].Rows[i]["firstpasstimesByLine"].ToString());
                ListSub.firsttimesByLine = Convert.ToInt32(ds.Tables[2].Rows[i]["firsttimesByLine"].ToString());


                ListSub.ProjectCount = Convert.ToInt32(ds.Tables[2].Rows[i]["ProjectCount"].ToString());
                ListSub.CustStyleCount = Convert.ToInt32(ds.Tables[2].Rows[i]["CustStyleCount"].ToString());
                ListSub.DefectCountTtl = Convert.ToInt32(ds.Tables[2].Rows[i]["DefectCountTtl"].ToString());
                ListSub.QNQtyTtl = Convert.ToInt32(ds.Tables[2].Rows[i]["QNQtyTtl"].ToString());

                ListSubList.Add(ListSub);
            }
            rptQC_MasterAnalyzeOPT3_New_Sub rpt_Sub = new rptQC_MasterAnalyzeOPT3_New_Sub(ListSubList.OrderBy(p => p.Line).ToList());
            xrSubreport1.ReportSource = rpt_Sub;


            //处理Ws Total, 由David加入2023-07-31
            var DatabyWs = new List<Proc_MasterAnalyzResult_Sub_ByWs_Class>();
            for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
            {
                Proc_MasterAnalyzResult_Sub_ByWs_Class ListSub = new Proc_MasterAnalyzResult_Sub_ByWs_Class();
                ListSub.WorkShop = ds.Tables[3].Rows[i]["WorkShop"].ToString();
                ListSub.LineCount = Convert.ToInt32(ds.Tables[3].Rows[i]["LineCount"].ToString());
                ListSub.ProjectCount = Convert.ToInt32(ds.Tables[3].Rows[i]["ProjectCount"].ToString());

                ListSub.CustStyleCount = Convert.ToInt32(ds.Tables[3].Rows[i]["CustStyleCount"].ToString());
                ListSub.AuditTotal = Convert.ToInt32(ds.Tables[3].Rows[i]["AuditTotal"].ToString());
                ListSub.OptCodeCount = Convert.ToInt32(ds.Tables[3].Rows[i]["OptCodeCount"].ToString());
                ListSub.WFIDCount = Convert.ToInt32(ds.Tables[3].Rows[i]["WFIDCount"].ToString());
                ListSub.Ttlfirst = Convert.ToInt32(ds.Tables[3].Rows[i]["Ttlfirst"].ToString());
                ListSub.TtlReCheck = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlReCheck"].ToString());
                ListSub.TtlCheck = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlCheck"].ToString());
                ListSub.TtlFirsPass = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlFirsPass"].ToString());
                ListSub.TtlReFirsPass = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlReFirsPass"].ToString());
                ListSub.YieldFailT = Convert.ToInt32(ds.Tables[3].Rows[i]["YieldFailT"].ToString());
                ListSub.TtlP_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlP_Qty"].ToString());
                ListSub.TtlF_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlF_Qty"].ToString());
                ListSub.TtlU_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlU_Qty"].ToString());
                ListSub.TtlS_Qty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlS_Qty"].ToString());

                ListSub.QAFlagCount = Convert.ToInt32(ds.Tables[3].Rows[i]["QAFlagCount"].ToString());
                ListSub.QIFlagCount = Convert.ToInt32(ds.Tables[3].Rows[i]["QIFlagCount"].ToString());
                ListSub.AveragePer = Convert.ToDecimal(ds.Tables[3].Rows[i]["AveragePer"].ToString());
                ListSub.TtlQNQty = Convert.ToInt32(ds.Tables[3].Rows[i]["TtlQNQty"].ToString());
                ListSub.DefectCountTtl = Convert.ToInt32(ds.Tables[3].Rows[i]["DefectCountTtl"].ToString());

                DatabyWs.Add(ListSub);
            }

            rptQC_MasterAnalyzeOPT3_Sub_ByWs rpt_SubByWs = new rptQC_MasterAnalyzeOPT3_Sub_ByWs(DatabyWs);
            xrSubreport2.ReportSource = rpt_SubByWs;



            List<SewingOptsCdeClass> OPTNameList = new List<SewingOptsCdeClass>();
            for (int i = 0; i < ds.Tables[6].Rows.Count; i++)
            {
                SewingOptsCdeClass obj = new SewingOptsCdeClass();
                obj.OptCode = ds.Tables[6].Rows[i]["OptCode"].ToString();
                obj.OPTName = ds.Tables[6].Rows[i]["OPTName"].ToString();
                obj.OPTNameEn = ds.Tables[6].Rows[i]["OPTNameEn"].ToString();
                OPTNameList.Add(obj);
            }
            rptQC_MasterAnalyzeOPT3_New_OptsCde RptOPTName = new rptQC_MasterAnalyzeOPT3_New_OptsCde(OPTNameList);
            xrSubreport3.ReportSource = RptOPTName;


            //DefectCountTtl

            //处理Fty Total, 由David加入 2023-07-31
            DataRow drFty = ds.Tables[4].Rows[0];
            this.xrlinetotal1.Text = drFty["LineCount"].ToString();
            this.xrprojtotal1.Text = drFty["ProjectCount"].ToString();
            this.xrstylettl1.Text = drFty["CustStyleCount"].ToString();
            col_chkqtyT11.Text = drFty["AuditTotal"].ToString();
            //            xropttotal1.Text = drFty["OptCodeCount"].ToString();

            xrTtlDefectPtDescCountFty.Text = drFty["DefectCountTtl"].ToString();

            xrWorkers1.Text = drFty["WFIDCount"].ToString();
            xrtotalfirst1.Text = drFty["Ttlfirst"].ToString();
            col_RechkT11.Text = drFty["TtlReCheck"].ToString();
            col_totalchkT11.Text = drFty["TtlCheck"].ToString();

            col_passtimesT111.Text = drFty["TtlFirsPass"].ToString();
            col_repasstimesT11.Text = drFty["TtlReFirsPass"].ToString();
            col_YieldFailT1.Text = drFty["YieldFailT"].ToString();
            column_PT11.Text = drFty["TtlP_Qty"].ToString();
            column_FT11.Text = drFty["AuditTotal"].ToString();
            column_UT11.Text = drFty["TtlU_Qty"].ToString();
            column_ST11.Text = drFty["TtlS_Qty"].ToString();
            col_KeyOpt1.Text = drFty["QAFlagCount"].ToString();
            xrTableCell251.Text = drFty["QIFlagCount"].ToString();
            //this.xrLabel9.Text = String.Format("{0:F}", Convert.ToDecimal(drFty["AveragePer"]));
            this.xrTableCell321.Text = String.Format("{0:F}", Convert.ToDecimal(drFty["AveragePer"]));
            col_qnqtyT1.Text = drFty["TtlQNQty"].ToString();
            //this.xrDefectPtDescCountFtyTtl.Text = drFty["DefectPtDescCount"].ToString();

            //得到Detail Total的数据源，第6张表，只有一条记录, 由David加入 2023-07-31加入
            DataRow dr1 = ds.Tables[5].Rows[0];
            tcLineCount.Text = dr1["LineCount"].ToString();
            tcProjectCount.Text = dr1["ProjectCount"].ToString();
            tcCustStyleCount.Text = dr1["CustStyleCount"].ToString();
            //tcTtlQNQty.Text = dr1["TtlQNQty"].ToString();
            //tcQAFlagCount.Text = dr1["QAFlagCount"].ToString();
            //tcQIFlagCount.Text = dr1["QIFlagCount"].ToString();
            tcOptCodeCount.Text = dr1["OptCodeCount"].ToString();
            xrDefectPtDescCount.Text = dr1["DefectPtDescCount"].ToString();
            tcWFIDCount.Text = dr1["WFIDCount"].ToString();
            /*
            tcTtlfirst.Text = dr1["Ttlfirst"].ToString();
            tcTtlReCheck.Text = dr1["TtlReCheck"].ToString();
            tcTtlCheck.Text = dr1["TtlCheck"].ToString();
            tcAuditTotal.Text = dr1["AuditTotal"].ToString();
            tcTtlFirsPass.Text = dr1["TtlFirsPass"].ToString();
            tcTtlReFirsPass.Text = dr1["TtlReFirsPass"].ToString();
            tcYieldFailT.Text = dr1["YieldFailT"].ToString();
            tcTtlP_Qty.Text = dr1["TtlP_Qty"].ToString();
            tcTtlF_Qty.Text = dr1["TtlF_Qty"].ToString();
            tcTtlU_Qty.Text = dr1["TtlU_Qty"].ToString();
            tcTtlS_Qty.Text = dr1["TtlS_Qty"].ToString();
            tcAveragePer.Text = String.Format("{0:F}", Convert.ToDecimal(dr1["AveragePer"]));
             * */
        }

        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable8 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell74 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell77 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow19 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell75 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell72 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell78 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell35 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow20 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell38 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell76 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell73 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell69 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell79 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell70 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable12 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow21 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell89 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow22 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell92 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell93 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell94 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow23 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell95 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell96 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell97 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrRptText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPublishedDateText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPublishedDateName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable13 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow24 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell90 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow25 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell91 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow26 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell98 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable7 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow9 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell24 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel11 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel10 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_Factory = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DataTo = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel15 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DateForm = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.laQnNo = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.column_Line = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Project = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CustStyle = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_qnqty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrQA = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrQI = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_WFName = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_OPTCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.colDefectPtCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrDefectDesc = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_FirstChk = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_Rechk = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_totalchk = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_chkqty = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_passtimes = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_repasstimes = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_YieldFail = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_P = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_F = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_U = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_S = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_fpy = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_pass = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrSubreport3 = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrSubreport2 = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrLabel8 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrlinetotal1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrprojtotal1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrstylettl1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_qnqtyT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_KeyOpt1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell251 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrWorkers1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xropttotal1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTtlDefectPtDescCountFty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell291 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrtotalfirst1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_RechkT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_totalchkT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_chkqtyT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_passtimesT111 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_repasstimesT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_YieldFailT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_PT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_FT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_UT11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_ST11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell321 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell361 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrSubreport1 = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrTableDetailTotal = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tcLineCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcProjectCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcCustStyleCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlQNQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcQAFlagCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcQIFlagCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcWFIDCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcOptCodeCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrDefectPtDescCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell43 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlfirst = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlReCheck = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlCheck = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcAuditTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlFirsPass = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlReFirsPass = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcYieldFailT = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlP_Qty = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlF_Qty = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlU_Qty = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcTtlS_Qty = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcAveragePer = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell59 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel12 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrVerNo = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable13)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTableDetailTotal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable8,
            this.xrTable12,
            this.xrRptText,
            this.xrPublishedDateText,
            this.xrPublishedDateName,
            this.xrVerText,
            this.xrVerName,
            this.xrTable1,
            this.xrTable13,
            this.xrTable7,
            this.xrLabel2,
            this.xrPageInfo1,
            this.xrLabel11,
            this.xrLabel10,
            this.lbl_Factory,
            this.lbl_WorkShop,
            this.xrLabel3,
            this.lbl_DataTo,
            this.xrLabel15,
            this.lbl_DateForm,
            this.xrLabel13,
            this.xrLabel1});
            this.PageHeader.Height = 255;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.PageHeader_BeforePrint);
            // 
            // xrTable8
            // 
            this.xrTable8.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable8.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.xrTable8.Location = new System.Drawing.Point(42, 117);
            this.xrTable8.Name = "xrTable8";
            this.xrTable8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow11,
            this.xrTableRow19,
            this.xrTableRow20});
            this.xrTable8.Size = new System.Drawing.Size(648, 138);
            this.xrTable8.StylePriority.UseBorders = false;
            // 
            // xrTableRow11
            // 
            this.xrTableRow11.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell12,
            this.xrTableCell74,
            this.xrTableCell71,
            this.xrTableCell13,
            this.xrTableCell77,
            this.xrTableCell28});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(648, 47);
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell12.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(38, 47);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UseFont = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "Line";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell74
            // 
            this.xrTableCell74.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell74.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell74.Location = new System.Drawing.Point(38, 0);
            this.xrTableCell74.Name = "xrTableCell74";
            this.xrTableCell74.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell74.Size = new System.Drawing.Size(52, 47);
            this.xrTableCell74.StylePriority.UseBorders = false;
            this.xrTableCell74.StylePriority.UseFont = false;
            this.xrTableCell74.StylePriority.UseTextAlignment = false;
            this.xrTableCell74.Text = "Project";
            this.xrTableCell74.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell71
            // 
            this.xrTableCell71.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell71.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell71.Location = new System.Drawing.Point(90, 0);
            this.xrTableCell71.Name = "xrTableCell71";
            this.xrTableCell71.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell71.Size = new System.Drawing.Size(82, 47);
            this.xrTableCell71.StylePriority.UseBorders = false;
            this.xrTableCell71.StylePriority.UseFont = false;
            this.xrTableCell71.StylePriority.UseTextAlignment = false;
            this.xrTableCell71.Text = "Cust Style";
            this.xrTableCell71.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell13.Location = new System.Drawing.Point(172, 0);
            this.xrTableCell13.Multiline = true;
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(42, 47);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.StylePriority.UseFont = false;
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "QN\r\n Qty";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell77
            // 
            this.xrTableCell77.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell77.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell77.Location = new System.Drawing.Point(214, 0);
            this.xrTableCell77.Multiline = true;
            this.xrTableCell77.Name = "xrTableCell77";
            this.xrTableCell77.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell77.Size = new System.Drawing.Size(153, 47);
            this.xrTableCell77.StylePriority.UseBorders = false;
            this.xrTableCell77.StylePriority.UseFont = false;
            this.xrTableCell77.StylePriority.UsePadding = false;
            this.xrTableCell77.StylePriority.UseTextAlignment = false;
            this.xrTableCell77.Text = "Exam Opts";
            this.xrTableCell77.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell28.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell28.Location = new System.Drawing.Point(367, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(281, 47);
            this.xrTableCell28.StylePriority.UseBackColor = false;
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.Text = "Defect Pts 疵點";
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow19
            // 
            this.xrTableRow19.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell33,
            this.xrTableCell75,
            this.xrTableCell72,
            this.xrTableCell34,
            this.xrTableCell78,
            this.xrTableCell35,
            this.xrTableCell16});
            this.xrTableRow19.Name = "xrTableRow19";
            this.xrTableRow19.Size = new System.Drawing.Size(648, 46);
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell33.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell33.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(38, 46);
            this.xrTableCell33.StylePriority.UseBorders = false;
            this.xrTableCell33.StylePriority.UseFont = false;
            this.xrTableCell33.StylePriority.UseTextAlignment = false;
            this.xrTableCell33.Text = "組裝線";
            this.xrTableCell33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell75
            // 
            this.xrTableCell75.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell75.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell75.Location = new System.Drawing.Point(38, 0);
            this.xrTableCell75.Name = "xrTableCell75";
            this.xrTableCell75.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell75.Size = new System.Drawing.Size(52, 46);
            this.xrTableCell75.StylePriority.UseBorders = false;
            this.xrTableCell75.StylePriority.UseFont = false;
            this.xrTableCell75.StylePriority.UseTextAlignment = false;
            this.xrTableCell75.Text = "工程號";
            this.xrTableCell75.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell72
            // 
            this.xrTableCell72.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell72.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell72.Location = new System.Drawing.Point(90, 0);
            this.xrTableCell72.Name = "xrTableCell72";
            this.xrTableCell72.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell72.Size = new System.Drawing.Size(82, 46);
            this.xrTableCell72.StylePriority.UseBorders = false;
            this.xrTableCell72.StylePriority.UseFont = false;
            this.xrTableCell72.StylePriority.UseTextAlignment = false;
            this.xrTableCell72.Text = "客款號";
            this.xrTableCell72.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell34
            // 
            this.xrTableCell34.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell34.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell34.Location = new System.Drawing.Point(172, 0);
            this.xrTableCell34.Multiline = true;
            this.xrTableCell34.Name = "xrTableCell34";
            this.xrTableCell34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell34.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell34.StylePriority.UseBorders = false;
            this.xrTableCell34.StylePriority.UseFont = false;
            this.xrTableCell34.StylePriority.UseTextAlignment = false;
            this.xrTableCell34.Text = "數頁\r\n件數";
            this.xrTableCell34.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell78
            // 
            this.xrTableCell78.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell78.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell78.Location = new System.Drawing.Point(214, 0);
            this.xrTableCell78.Multiline = true;
            this.xrTableCell78.Name = "xrTableCell78";
            this.xrTableCell78.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell78.Size = new System.Drawing.Size(153, 46);
            this.xrTableCell78.StylePriority.UseBorders = false;
            this.xrTableCell78.StylePriority.UseFont = false;
            this.xrTableCell78.StylePriority.UsePadding = false;
            this.xrTableCell78.StylePriority.UseTextAlignment = false;
            this.xrTableCell78.Text = "審考工序";
            this.xrTableCell78.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell35
            // 
            this.xrTableCell35.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell35.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell35.Location = new System.Drawing.Point(367, 0);
            this.xrTableCell35.Multiline = true;
            this.xrTableCell35.Name = "xrTableCell35";
            this.xrTableCell35.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell35.Size = new System.Drawing.Size(28, 46);
            this.xrTableCell35.StylePriority.UseBorders = false;
            this.xrTableCell35.StylePriority.UseFont = false;
            this.xrTableCell35.StylePriority.UseTextAlignment = false;
            this.xrTableCell35.Text = "Ttl\r\n總數";
            this.xrTableCell35.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell16.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell16.Location = new System.Drawing.Point(395, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(253, 46);
            this.xrTableCell16.StylePriority.UseBorders = false;
            this.xrTableCell16.StylePriority.UseFont = false;
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.Text = "Cde & Description\r\n代號及描述";
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow20
            // 
            this.xrTableRow20.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell38,
            this.xrTableCell76,
            this.xrTableCell73,
            this.xrTableCell69,
            this.xrTableCell79,
            this.xrTableCell15,
            this.xrTableCell4,
            this.xrTableCell14,
            this.xrTableCell70,
            this.xrTableCell7});
            this.xrTableRow20.Name = "xrTableRow20";
            this.xrTableRow20.Size = new System.Drawing.Size(648, 45);
            // 
            // xrTableCell38
            // 
            this.xrTableCell38.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell38.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell38.Name = "xrTableCell38";
            this.xrTableCell38.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell38.Size = new System.Drawing.Size(38, 45);
            this.xrTableCell38.StylePriority.UseBorders = false;
            this.xrTableCell38.StylePriority.UseFont = false;
            // 
            // xrTableCell76
            // 
            this.xrTableCell76.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell76.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell76.Location = new System.Drawing.Point(38, 0);
            this.xrTableCell76.Name = "xrTableCell76";
            this.xrTableCell76.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell76.Size = new System.Drawing.Size(52, 45);
            this.xrTableCell76.StylePriority.UseBorders = false;
            this.xrTableCell76.StylePriority.UseFont = false;
            // 
            // xrTableCell73
            // 
            this.xrTableCell73.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell73.Location = new System.Drawing.Point(90, 0);
            this.xrTableCell73.Name = "xrTableCell73";
            this.xrTableCell73.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell73.Size = new System.Drawing.Size(82, 45);
            this.xrTableCell73.StylePriority.UseFont = false;
            // 
            // xrTableCell69
            // 
            this.xrTableCell69.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell69.Location = new System.Drawing.Point(172, 0);
            this.xrTableCell69.Name = "xrTableCell69";
            this.xrTableCell69.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell69.Size = new System.Drawing.Size(42, 45);
            this.xrTableCell69.StylePriority.UseFont = false;
            // 
            // xrTableCell79
            // 
            this.xrTableCell79.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell79.Location = new System.Drawing.Point(214, 0);
            this.xrTableCell79.Multiline = true;
            this.xrTableCell79.Name = "xrTableCell79";
            this.xrTableCell79.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell79.Size = new System.Drawing.Size(19, 45);
            this.xrTableCell79.StylePriority.UseFont = false;
            this.xrTableCell79.StylePriority.UsePadding = false;
            this.xrTableCell79.StylePriority.UseTextAlignment = false;
            this.xrTableCell79.Text = "QA";
            this.xrTableCell79.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell15.Location = new System.Drawing.Point(233, 0);
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(19, 45);
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.Text = "QI";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell4.Location = new System.Drawing.Point(252, 0);
            this.xrTableCell4.Multiline = true;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(70, 45);
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.Text = "WF Name\r\n工人名稱";
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell14.Location = new System.Drawing.Point(322, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(45, 45);
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "Cde\r\n代號";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell70
            // 
            this.xrTableCell70.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell70.Location = new System.Drawing.Point(367, 0);
            this.xrTableCell70.Multiline = true;
            this.xrTableCell70.Name = "xrTableCell70";
            this.xrTableCell70.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell70.Size = new System.Drawing.Size(28, 45);
            this.xrTableCell70.StylePriority.UseFont = false;
            this.xrTableCell70.StylePriority.UseTextAlignment = false;
            this.xrTableCell70.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell7.Location = new System.Drawing.Point(395, 0);
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(253, 45);
            this.xrTableCell7.StylePriority.UseFont = false;
            // 
            // xrTable12
            // 
            this.xrTable12.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable12.Location = new System.Drawing.Point(690, 117);
            this.xrTable12.Name = "xrTable12";
            this.xrTable12.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow21,
            this.xrTableRow22,
            this.xrTableRow23});
            this.xrTable12.Size = new System.Drawing.Size(74, 138);
            this.xrTable12.StylePriority.UseBorders = false;
            // 
            // xrTableRow21
            // 
            this.xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell89});
            this.xrTableRow21.Name = "xrTableRow21";
            this.xrTableRow21.Size = new System.Drawing.Size(74, 46);
            // 
            // xrTableCell89
            // 
            this.xrTableCell89.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell89.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell89.Multiline = true;
            this.xrTableCell89.Name = "xrTableCell89";
            this.xrTableCell89.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell89.Size = new System.Drawing.Size(74, 46);
            this.xrTableCell89.StylePriority.UseFont = false;
            this.xrTableCell89.StylePriority.UseTextAlignment = false;
            this.xrTableCell89.Text = "No.of Exam.\r\n審考次數";
            this.xrTableCell89.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow22
            // 
            this.xrTableRow22.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell92,
            this.xrTableCell93,
            this.xrTableCell94});
            this.xrTableRow22.Name = "xrTableRow22";
            this.xrTableRow22.Size = new System.Drawing.Size(74, 46);
            // 
            // xrTableCell92
            // 
            this.xrTableCell92.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell92.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell92.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell92.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell92.Multiline = true;
            this.xrTableCell92.Name = "xrTableCell92";
            this.xrTableCell92.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell92.Size = new System.Drawing.Size(26, 46);
            this.xrTableCell92.StylePriority.UseBackColor = false;
            this.xrTableCell92.StylePriority.UseBorders = false;
            this.xrTableCell92.StylePriority.UseFont = false;
            this.xrTableCell92.StylePriority.UsePadding = false;
            this.xrTableCell92.StylePriority.UseTextAlignment = false;
            this.xrTableCell92.Text = "1st";
            this.xrTableCell92.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell93
            // 
            this.xrTableCell93.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell93.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell93.Location = new System.Drawing.Point(26, 0);
            this.xrTableCell93.Multiline = true;
            this.xrTableCell93.Name = "xrTableCell93";
            this.xrTableCell93.Padding = new DevExpress.XtraPrinting.PaddingInfo(1, 1, 0, 0, 100F);
            this.xrTableCell93.Size = new System.Drawing.Size(24, 46);
            this.xrTableCell93.StylePriority.UseBorders = false;
            this.xrTableCell93.StylePriority.UseFont = false;
            this.xrTableCell93.StylePriority.UsePadding = false;
            this.xrTableCell93.StylePriority.UseTextAlignment = false;
            this.xrTableCell93.Text = "Ex-\r\ntra\r\n";
            this.xrTableCell93.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell94
            // 
            this.xrTableCell94.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell94.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell94.Location = new System.Drawing.Point(50, 0);
            this.xrTableCell94.Multiline = true;
            this.xrTableCell94.Name = "xrTableCell94";
            this.xrTableCell94.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell94.Size = new System.Drawing.Size(24, 46);
            this.xrTableCell94.StylePriority.UseBorders = false;
            this.xrTableCell94.StylePriority.UseFont = false;
            this.xrTableCell94.StylePriority.UsePadding = false;
            this.xrTableCell94.StylePriority.UseTextAlignment = false;
            this.xrTableCell94.Text = "Ttl\r\n";
            this.xrTableCell94.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow23
            // 
            this.xrTableRow23.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell95,
            this.xrTableCell96,
            this.xrTableCell97});
            this.xrTableRow23.Name = "xrTableRow23";
            this.xrTableRow23.Size = new System.Drawing.Size(74, 46);
            // 
            // xrTableCell95
            // 
            this.xrTableCell95.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell95.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell95.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell95.Name = "xrTableCell95";
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(25, 46);
            this.xrTableCell95.StylePriority.UseBackColor = false;
            this.xrTableCell95.StylePriority.UseFont = false;
            this.xrTableCell95.StylePriority.UsePadding = false;
            this.xrTableCell95.StylePriority.UseTextAlignment = false;
            this.xrTableCell95.Text = "首次";
            this.xrTableCell95.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell96
            // 
            this.xrTableCell96.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell96.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell96.Location = new System.Drawing.Point(25, 0);
            this.xrTableCell96.Name = "xrTableCell96";
            this.xrTableCell96.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell96.Size = new System.Drawing.Size(25, 46);
            this.xrTableCell96.StylePriority.UseBorders = false;
            this.xrTableCell96.StylePriority.UseFont = false;
            this.xrTableCell96.StylePriority.UsePadding = false;
            this.xrTableCell96.StylePriority.UseTextAlignment = false;
            this.xrTableCell96.Text = "額外";
            this.xrTableCell96.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell97
            // 
            this.xrTableCell97.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell97.Location = new System.Drawing.Point(50, 0);
            this.xrTableCell97.Name = "xrTableCell97";
            this.xrTableCell97.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell97.Size = new System.Drawing.Size(24, 46);
            this.xrTableCell97.StylePriority.UseFont = false;
            this.xrTableCell97.StylePriority.UsePadding = false;
            this.xrTableCell97.StylePriority.UseTextAlignment = false;
            this.xrTableCell97.Text = "合共";
            this.xrTableCell97.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrRptText
            // 
            this.xrRptText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrRptText.Location = new System.Drawing.Point(933, 18);
            this.xrRptText.Name = "xrRptText";
            this.xrRptText.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrRptText.Size = new System.Drawing.Size(117, 16);
            this.xrRptText.StylePriority.UseFont = false;
            this.xrRptText.StylePriority.UseTextAlignment = false;
            this.xrRptText.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrPublishedDateText
            // 
            this.xrPublishedDateText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateText.Location = new System.Drawing.Point(1038, 47);
            this.xrPublishedDateText.Multiline = true;
            this.xrPublishedDateText.Name = "xrPublishedDateText";
            this.xrPublishedDateText.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPublishedDateText.Size = new System.Drawing.Size(75, 16);
            this.xrPublishedDateText.StylePriority.UseFont = false;
            this.xrPublishedDateText.StylePriority.UseTextAlignment = false;
            this.xrPublishedDateText.Text = "2019-06-12\r\n";
            this.xrPublishedDateText.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrPublishedDateName
            // 
            this.xrPublishedDateName.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateName.Location = new System.Drawing.Point(958, 47);
            this.xrPublishedDateName.Name = "xrPublishedDateName";
            this.xrPublishedDateName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPublishedDateName.Size = new System.Drawing.Size(79, 16);
            this.xrPublishedDateName.StylePriority.UseFont = false;
            this.xrPublishedDateName.StylePriority.UseTextAlignment = false;
            this.xrPublishedDateName.Text = "Effective dd :";
            this.xrPublishedDateName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrVerText
            // 
            this.xrVerText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrVerText.Location = new System.Drawing.Point(942, 47);
            this.xrVerText.Name = "xrVerText";
            this.xrVerText.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerText.Size = new System.Drawing.Size(25, 16);
            this.xrVerText.StylePriority.UseFont = false;
            this.xrVerText.StylePriority.UseTextAlignment = false;
            this.xrVerText.Text = "2.0";
            this.xrVerText.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrVerName
            // 
            this.xrVerName.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrVerName.Location = new System.Drawing.Point(908, 47);
            this.xrVerName.Name = "xrVerName";
            this.xrVerName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerName.Size = new System.Drawing.Size(33, 16);
            this.xrVerName.StylePriority.UseFont = false;
            this.xrVerName.StylePriority.UseTextAlignment = false;
            this.xrVerName.Text = "Ver :";
            this.xrVerName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTable1
            // 
            this.xrTable1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable1.Location = new System.Drawing.Point(1049, 117);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow2,
            this.xrTableRow3});
            this.xrTable1.Size = new System.Drawing.Size(80, 138);
            this.xrTable1.StylePriority.UseBorders = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell2});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(80, 46);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell1.StylePriority.UseBackColor = false;
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "FPY%";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell2.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell2.Multiline = true;
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(38, 46);
            this.xrTableCell2.StylePriority.UseBorders = false;
            this.xrTableCell2.StylePriority.UseFont = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.Text = " Qual.\r\nExam.\r\nDone";
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3,
            this.xrTableCell9});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(80, 46);
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell3.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell3.StylePriority.UseBackColor = false;
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.StylePriority.UseFont = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "首通率\r\n(wt.ave)";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell9.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(38, 46);
            this.xrTableCell9.StylePriority.UseBorders = false;
            this.xrTableCell9.StylePriority.UseFont = false;
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = "審考\r\n執行\r\n完成";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell5,
            this.xrTableCell10});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(80, 46);
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell5.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell5.StylePriority.UseBackColor = false;
            this.xrTableCell5.StylePriority.UseFont = false;
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell10.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell10.Multiline = true;
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(38, 46);
            this.xrTableCell10.StylePriority.UseFont = false;
            this.xrTableCell10.StylePriority.UseTextAlignment = false;
            this.xrTableCell10.Text = "(IP/Y)";
            this.xrTableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTable13
            // 
            this.xrTable13.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable13.Location = new System.Drawing.Point(764, 117);
            this.xrTable13.Name = "xrTable13";
            this.xrTable13.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow24,
            this.xrTableRow25,
            this.xrTableRow26});
            this.xrTable13.Size = new System.Drawing.Size(36, 138);
            this.xrTable13.StylePriority.UseBorders = false;
            // 
            // xrTableRow24
            // 
            this.xrTableRow24.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell90});
            this.xrTableRow24.Name = "xrTableRow24";
            this.xrTableRow24.Size = new System.Drawing.Size(36, 46);
            // 
            // xrTableCell90
            // 
            this.xrTableCell90.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell90.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell90.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell90.Name = "xrTableCell90";
            this.xrTableCell90.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell90.Size = new System.Drawing.Size(36, 46);
            this.xrTableCell90.StylePriority.UseBorders = false;
            this.xrTableCell90.StylePriority.UseFont = false;
            this.xrTableCell90.StylePriority.UseTextAlignment = false;
            this.xrTableCell90.Text = "Exam. Qty";
            this.xrTableCell90.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow25
            // 
            this.xrTableRow25.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell91});
            this.xrTableRow25.Name = "xrTableRow25";
            this.xrTableRow25.Size = new System.Drawing.Size(36, 46);
            // 
            // xrTableCell91
            // 
            this.xrTableCell91.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell91.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell91.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell91.Multiline = true;
            this.xrTableCell91.Name = "xrTableCell91";
            this.xrTableCell91.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell91.Size = new System.Drawing.Size(36, 46);
            this.xrTableCell91.StylePriority.UseBorders = false;
            this.xrTableCell91.StylePriority.UseFont = false;
            this.xrTableCell91.StylePriority.UseTextAlignment = false;
            this.xrTableCell91.Text = "已審考\r\n件數";
            this.xrTableCell91.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableRow26
            // 
            this.xrTableRow26.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell98});
            this.xrTableRow26.Name = "xrTableRow26";
            this.xrTableRow26.Size = new System.Drawing.Size(36, 46);
            // 
            // xrTableCell98
            // 
            this.xrTableCell98.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.xrTableCell98.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell98.Name = "xrTableCell98";
            this.xrTableCell98.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell98.Size = new System.Drawing.Size(36, 46);
            // 
            // xrTable7
            // 
            this.xrTable7.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable7.Location = new System.Drawing.Point(800, 117);
            this.xrTable7.Name = "xrTable7";
            this.xrTable7.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5,
            this.xrTableRow10,
            this.xrTableRow9});
            this.xrTable7.Size = new System.Drawing.Size(249, 138);
            this.xrTable7.StylePriority.UseBorders = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell17});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(249, 46);
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell17.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(249, 46);
            this.xrTableCell17.StylePriority.UseFont = false;
            this.xrTableCell17.StylePriority.UseTextAlignment = false;
            this.xrTableCell17.Text = "Exam. Result 審考結果";
            this.xrTableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow10
            // 
            this.xrTableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell23,
            this.xrTableCell26});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(249, 46);
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell23.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell23.Multiline = true;
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(110, 46);
            this.xrTableCell23.StylePriority.UseFont = false;
            this.xrTableCell23.StylePriority.UseTextAlignment = false;
            this.xrTableCell23.Text = "Result b/d\r\n結果次數分類";
            this.xrTableCell23.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell26.Location = new System.Drawing.Point(110, 0);
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(139, 46);
            this.xrTableCell26.StylePriority.UseFont = false;
            this.xrTableCell26.StylePriority.UseTextAlignment = false;
            this.xrTableCell26.Text = "QTY件數";
            this.xrTableCell26.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow9
            // 
            this.xrTableRow9.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell20,
            this.xrTableCell18,
            this.xrTableCell21,
            this.xrTableCell19,
            this.xrTableCell27,
            this.xrTableCell24,
            this.xrTableCell22});
            this.xrTableRow9.Name = "xrTableRow9";
            this.xrTableRow9.Size = new System.Drawing.Size(249, 46);
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell20.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell20.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(34, 46);
            this.xrTableCell20.StylePriority.UseBackColor = false;
            this.xrTableCell20.StylePriority.UseFont = false;
            this.xrTableCell20.StylePriority.UsePadding = false;
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "FPY合格(P)\r\n/次數";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell18.Location = new System.Drawing.Point(34, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(1, 0, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(36, 46);
            this.xrTableCell18.StylePriority.UseFont = false;
            this.xrTableCell18.StylePriority.UsePadding = false;
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "2PY(+)\r\n合格(P)\r\n/次數";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell21.Location = new System.Drawing.Point(70, 0);
            this.xrTableCell21.Multiline = true;
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(40, 46);
            this.xrTableCell21.StylePriority.UseFont = false;
            this.xrTableCell21.StylePriority.UsePadding = false;
            this.xrTableCell21.StylePriority.UseTextAlignment = false;
            this.xrTableCell21.Text = "Yield\r\n Failure\r\n通量不過";
            this.xrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell19.Location = new System.Drawing.Point(110, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(30, 46);
            this.xrTableCell19.StylePriority.UseFont = false;
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "(P)\r\n合格\r\n/件數";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell27.Location = new System.Drawing.Point(140, 0);
            this.xrTableCell27.Multiline = true;
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(1, 0, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(34, 46);
            this.xrTableCell27.StylePriority.UseFont = false;
            this.xrTableCell27.StylePriority.UsePadding = false;
            this.xrTableCell27.StylePriority.UseTextAlignment = false;
            this.xrTableCell27.Text = "(F)\r\n不合格\r\n/件數";
            this.xrTableCell27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell24
            // 
            this.xrTableCell24.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell24.Location = new System.Drawing.Point(174, 0);
            this.xrTableCell24.Multiline = true;
            this.xrTableCell24.Name = "xrTableCell24";
            this.xrTableCell24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell24.Size = new System.Drawing.Size(36, 46);
            this.xrTableCell24.StylePriority.UseFont = false;
            this.xrTableCell24.StylePriority.UseTextAlignment = false;
            this.xrTableCell24.Text = "(U)\r\n未分類\r\n/件數";
            this.xrTableCell24.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell22.Location = new System.Drawing.Point(210, 0);
            this.xrTableCell22.Multiline = true;
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(39, 46);
            this.xrTableCell22.StylePriority.UseFont = false;
            this.xrTableCell22.StylePriority.UseTextAlignment = false;
            this.xrTableCell22.Text = "(S)\r\n廢棄\r\n/件數";
            this.xrTableCell22.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel2.Location = new System.Drawing.Point(908, 75);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(92, 25);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.StylePriority.UsePadding = false;
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = "Page :";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrPageInfo1.Location = new System.Drawing.Point(1000, 75);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(50, 25);
            this.xrPageInfo1.StylePriority.UseFont = false;
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel11
            // 
            this.xrLabel11.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel11.Location = new System.Drawing.Point(242, 75);
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(125, 25);
            this.xrLabel11.StylePriority.UseFont = false;
            this.xrLabel11.StylePriority.UseTextAlignment = false;
            this.xrLabel11.Text = "Work Shop :";
            this.xrLabel11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel10
            // 
            this.xrLabel10.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel10.Location = new System.Drawing.Point(42, 75);
            this.xrLabel10.Name = "xrLabel10";
            this.xrLabel10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel10.Size = new System.Drawing.Size(100, 25);
            this.xrLabel10.StylePriority.UseFont = false;
            this.xrLabel10.StylePriority.UseTextAlignment = false;
            this.xrLabel10.Text = "Factory :";
            this.xrLabel10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lbl_Factory
            // 
            this.lbl_Factory.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_Factory.Location = new System.Drawing.Point(150, 75);
            this.lbl_Factory.Name = "lbl_Factory";
            this.lbl_Factory.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Factory.Size = new System.Drawing.Size(42, 25);
            this.lbl_Factory.StylePriority.UseFont = false;
            this.lbl_Factory.StylePriority.UseTextAlignment = false;
            this.lbl_Factory.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbl_WorkShop
            // 
            this.lbl_WorkShop.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_WorkShop.Location = new System.Drawing.Point(375, 75);
            this.lbl_WorkShop.Name = "lbl_WorkShop";
            this.lbl_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_WorkShop.Size = new System.Drawing.Size(50, 25);
            this.lbl_WorkShop.StylePriority.UseFont = false;
            this.lbl_WorkShop.StylePriority.UseTextAlignment = false;
            this.lbl_WorkShop.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 13F);
            this.xrLabel3.Location = new System.Drawing.Point(17, 42);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(1100, 25);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.StylePriority.UseTextAlignment = false;
            this.xrLabel3.Text = "工序首通率結果";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrLabel3.Visible = false;
            // 
            // lbl_DataTo
            // 
            this.lbl_DataTo.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DataTo.Location = new System.Drawing.Point(776, 75);
            this.lbl_DataTo.Name = "lbl_DataTo";
            this.lbl_DataTo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DataTo.Size = new System.Drawing.Size(83, 25);
            this.lbl_DataTo.StylePriority.UseFont = false;
            this.lbl_DataTo.StylePriority.UseTextAlignment = false;
            this.lbl_DataTo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel15
            // 
            this.xrLabel15.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel15.Location = new System.Drawing.Point(750, 75);
            this.xrLabel15.Name = "xrLabel15";
            this.xrLabel15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel15.Size = new System.Drawing.Size(26, 25);
            this.xrLabel15.StylePriority.UseFont = false;
            this.xrLabel15.StylePriority.UseTextAlignment = false;
            this.xrLabel15.Text = "To";
            this.xrLabel15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lbl_DateForm
            // 
            this.lbl_DateForm.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DateForm.Location = new System.Drawing.Point(667, 75);
            this.lbl_DateForm.Name = "lbl_DateForm";
            this.lbl_DateForm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DateForm.Size = new System.Drawing.Size(83, 25);
            this.lbl_DateForm.StylePriority.UseFont = false;
            this.lbl_DateForm.StylePriority.UseTextAlignment = false;
            this.lbl_DateForm.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel13.Location = new System.Drawing.Point(475, 75);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(192, 25);
            this.xrLabel13.StylePriority.UseFont = false;
            this.xrLabel13.StylePriority.UseTextAlignment = false;
            this.xrLabel13.Text = "Time Period : From";
            this.xrLabel13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 13F);
            this.xrLabel1.Location = new System.Drawing.Point(17, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(1100, 35);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Opt. FPY Results";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.laQnNo,
            this.xrTable3});
            this.Detail.Height = 18;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // laQnNo
            // 
            this.laQnNo.CanGrow = false;
            this.laQnNo.Location = new System.Drawing.Point(34, 8);
            this.laQnNo.Name = "laQnNo";
            this.laQnNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.laQnNo.Size = new System.Drawing.Size(2, 2);
            this.laQnNo.Visible = false;
            this.laQnNo.WordWrap = false;
            // 
            // xrTable3
            // 
            this.xrTable3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable3.Location = new System.Drawing.Point(42, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable3.Size = new System.Drawing.Size(1087, 18);
            this.xrTable3.StylePriority.UseBorders = false;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.column_Line,
            this.column_Project,
            this.column_CustStyle,
            this.col_qnqty,
            this.xrQA,
            this.xrQI,
            this.column_WFName,
            this.column_OPTCode,
            this.colDefectPtCount,
            this.xrDefectDesc,
            this.col_FirstChk,
            this.col_Rechk,
            this.col_totalchk,
            this.col_chkqty,
            this.column_passtimes,
            this.col_repasstimes,
            this.col_YieldFail,
            this.column_P,
            this.column_F,
            this.column_U,
            this.column_S,
            this.column_fpy,
            this.column_pass});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(1087, 18);
            this.xrTableRow4.Draw += new DevExpress.XtraReports.UI.DrawEventHandler(this.xrTableRow4_Draw);
            this.xrTableRow4.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.xrTableRow4_BeforePrint);
            // 
            // column_Line
            // 
            this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_Line.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_Line.Location = new System.Drawing.Point(0, 0);
            this.column_Line.Name = "column_Line";
            this.column_Line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Line.Size = new System.Drawing.Size(37, 18);
            this.column_Line.StylePriority.UseBorders = false;
            this.column_Line.StylePriority.UseFont = false;
            this.column_Line.StylePriority.UseTextAlignment = false;
            this.column_Line.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_Project
            // 
            this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_Project.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_Project.Location = new System.Drawing.Point(37, 0);
            this.column_Project.Name = "column_Project";
            this.column_Project.Padding = new DevExpress.XtraPrinting.PaddingInfo(1, 0, 0, 0, 100F);
            this.column_Project.Size = new System.Drawing.Size(52, 18);
            this.column_Project.StylePriority.UseBorders = false;
            this.column_Project.StylePriority.UseFont = false;
            this.column_Project.StylePriority.UsePadding = false;
            this.column_Project.StylePriority.UseTextAlignment = false;
            this.column_Project.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_CustStyle
            // 
            this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_CustStyle.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_CustStyle.Location = new System.Drawing.Point(89, 0);
            this.column_CustStyle.Name = "column_CustStyle";
            this.column_CustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(1, 0, 0, 0, 100F);
            this.column_CustStyle.Size = new System.Drawing.Size(82, 18);
            this.column_CustStyle.StylePriority.UseBorders = false;
            this.column_CustStyle.StylePriority.UseFont = false;
            this.column_CustStyle.StylePriority.UsePadding = false;
            this.column_CustStyle.StylePriority.UseTextAlignment = false;
            this.column_CustStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // col_qnqty
            // 
            this.col_qnqty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_qnqty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_qnqty.Location = new System.Drawing.Point(171, 0);
            this.col_qnqty.Name = "col_qnqty";
            this.col_qnqty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_qnqty.Size = new System.Drawing.Size(42, 18);
            this.col_qnqty.StylePriority.UseBorders = false;
            this.col_qnqty.StylePriority.UseFont = false;
            this.col_qnqty.StylePriority.UseTextAlignment = false;
            this.col_qnqty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrQA
            // 
            this.xrQA.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrQA.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrQA.Location = new System.Drawing.Point(213, 0);
            this.xrQA.Name = "xrQA";
            this.xrQA.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrQA.Size = new System.Drawing.Size(19, 18);
            this.xrQA.StylePriority.UseBorders = false;
            this.xrQA.StylePriority.UseFont = false;
            this.xrQA.StylePriority.UsePadding = false;
            this.xrQA.StylePriority.UseTextAlignment = false;
            this.xrQA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrQI
            // 
            this.xrQI.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrQI.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrQI.Location = new System.Drawing.Point(232, 0);
            this.xrQI.Name = "xrQI";
            this.xrQI.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrQI.Size = new System.Drawing.Size(20, 18);
            this.xrQI.StylePriority.UseBorders = false;
            this.xrQI.StylePriority.UseFont = false;
            this.xrQI.StylePriority.UsePadding = false;
            this.xrQI.StylePriority.UseTextAlignment = false;
            this.xrQI.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_WFName
            // 
            this.column_WFName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.column_WFName.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_WFName.Location = new System.Drawing.Point(252, 0);
            this.column_WFName.Name = "column_WFName";
            this.column_WFName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFName.Size = new System.Drawing.Size(70, 18);
            this.column_WFName.StylePriority.UseBorders = false;
            this.column_WFName.StylePriority.UseFont = false;
            // 
            // column_OPTCode
            // 
            this.column_OPTCode.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_OPTCode.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_OPTCode.Location = new System.Drawing.Point(322, 0);
            this.column_OPTCode.Name = "column_OPTCode";
            this.column_OPTCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(1, 1, 0, 0, 100F);
            this.column_OPTCode.Size = new System.Drawing.Size(45, 18);
            this.column_OPTCode.StylePriority.UseBorders = false;
            this.column_OPTCode.StylePriority.UseFont = false;
            this.column_OPTCode.StylePriority.UsePadding = false;
            this.column_OPTCode.StylePriority.UseTextAlignment = false;
            this.column_OPTCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // colDefectPtCount
            // 
            this.colDefectPtCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.colDefectPtCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.colDefectPtCount.Location = new System.Drawing.Point(367, 0);
            this.colDefectPtCount.Name = "colDefectPtCount";
            this.colDefectPtCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.colDefectPtCount.Size = new System.Drawing.Size(28, 18);
            this.colDefectPtCount.StylePriority.UseBorders = false;
            this.colDefectPtCount.StylePriority.UseFont = false;
            this.colDefectPtCount.StylePriority.UseTextAlignment = false;
            this.colDefectPtCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrDefectDesc
            // 
            this.xrDefectDesc.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrDefectDesc.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrDefectDesc.Location = new System.Drawing.Point(395, 0);
            this.xrDefectDesc.Name = "xrDefectDesc";
            this.xrDefectDesc.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrDefectDesc.Size = new System.Drawing.Size(253, 18);
            this.xrDefectDesc.StylePriority.UseBorders = false;
            this.xrDefectDesc.StylePriority.UseFont = false;
            // 
            // col_FirstChk
            // 
            this.col_FirstChk.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.col_FirstChk.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_FirstChk.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_FirstChk.Location = new System.Drawing.Point(648, 0);
            this.col_FirstChk.Name = "col_FirstChk";
            this.col_FirstChk.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_FirstChk.Size = new System.Drawing.Size(25, 18);
            this.col_FirstChk.StylePriority.UseBackColor = false;
            this.col_FirstChk.StylePriority.UseBorders = false;
            this.col_FirstChk.StylePriority.UseFont = false;
            this.col_FirstChk.StylePriority.UsePadding = false;
            this.col_FirstChk.StylePriority.UseTextAlignment = false;
            this.col_FirstChk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_Rechk
            // 
            this.col_Rechk.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_Rechk.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_Rechk.Location = new System.Drawing.Point(673, 0);
            this.col_Rechk.Name = "col_Rechk";
            this.col_Rechk.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_Rechk.Size = new System.Drawing.Size(24, 18);
            this.col_Rechk.StylePriority.UseBorders = false;
            this.col_Rechk.StylePriority.UseFont = false;
            this.col_Rechk.StylePriority.UsePadding = false;
            this.col_Rechk.StylePriority.UseTextAlignment = false;
            this.col_Rechk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_totalchk
            // 
            this.col_totalchk.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_totalchk.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_totalchk.Location = new System.Drawing.Point(697, 0);
            this.col_totalchk.Name = "col_totalchk";
            this.col_totalchk.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_totalchk.Size = new System.Drawing.Size(25, 18);
            this.col_totalchk.StylePriority.UseBorders = false;
            this.col_totalchk.StylePriority.UseFont = false;
            this.col_totalchk.StylePriority.UsePadding = false;
            this.col_totalchk.StylePriority.UseTextAlignment = false;
            this.col_totalchk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqty
            // 
            this.col_chkqty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_chkqty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_chkqty.Location = new System.Drawing.Point(722, 0);
            this.col_chkqty.Name = "col_chkqty";
            this.col_chkqty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_chkqty.Size = new System.Drawing.Size(36, 18);
            this.col_chkqty.StylePriority.UseBorders = false;
            this.col_chkqty.StylePriority.UseFont = false;
            this.col_chkqty.StylePriority.UseTextAlignment = false;
            this.col_chkqty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_passtimes
            // 
            this.column_passtimes.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.column_passtimes.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_passtimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_passtimes.Location = new System.Drawing.Point(758, 0);
            this.column_passtimes.Name = "column_passtimes";
            this.column_passtimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_passtimes.Size = new System.Drawing.Size(33, 18);
            this.column_passtimes.StylePriority.UseBackColor = false;
            this.column_passtimes.StylePriority.UseBorders = false;
            this.column_passtimes.StylePriority.UseFont = false;
            this.column_passtimes.StylePriority.UseTextAlignment = false;
            this.column_passtimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimes
            // 
            this.col_repasstimes.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_repasstimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_repasstimes.Location = new System.Drawing.Point(791, 0);
            this.col_repasstimes.Name = "col_repasstimes";
            this.col_repasstimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimes.Size = new System.Drawing.Size(36, 18);
            this.col_repasstimes.StylePriority.UseBorders = false;
            this.col_repasstimes.StylePriority.UseFont = false;
            this.col_repasstimes.StylePriority.UseTextAlignment = false;
            this.col_repasstimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFail
            // 
            this.col_YieldFail.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.col_YieldFail.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_YieldFail.Location = new System.Drawing.Point(827, 0);
            this.col_YieldFail.Name = "col_YieldFail";
            this.col_YieldFail.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFail.Size = new System.Drawing.Size(39, 18);
            this.col_YieldFail.StylePriority.UseBorders = false;
            this.col_YieldFail.StylePriority.UseFont = false;
            this.col_YieldFail.StylePriority.UseTextAlignment = false;
            this.col_YieldFail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_P
            // 
            this.column_P.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_P.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_P.Location = new System.Drawing.Point(866, 0);
            this.column_P.Name = "column_P";
            this.column_P.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_P.Size = new System.Drawing.Size(31, 18);
            this.column_P.StylePriority.UseBorders = false;
            this.column_P.StylePriority.UseFont = false;
            this.column_P.StylePriority.UseTextAlignment = false;
            this.column_P.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_F
            // 
            this.column_F.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_F.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_F.Location = new System.Drawing.Point(897, 0);
            this.column_F.Name = "column_F";
            this.column_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_F.Size = new System.Drawing.Size(34, 18);
            this.column_F.StylePriority.UseBorders = false;
            this.column_F.StylePriority.UseFont = false;
            this.column_F.StylePriority.UseTextAlignment = false;
            this.column_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_U
            // 
            this.column_U.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_U.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_U.Location = new System.Drawing.Point(931, 0);
            this.column_U.Name = "column_U";
            this.column_U.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_U.Size = new System.Drawing.Size(36, 18);
            this.column_U.StylePriority.UseBorders = false;
            this.column_U.StylePriority.UseFont = false;
            this.column_U.StylePriority.UseTextAlignment = false;
            this.column_U.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_S
            // 
            this.column_S.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_S.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_S.Location = new System.Drawing.Point(967, 0);
            this.column_S.Name = "column_S";
            this.column_S.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_S.Size = new System.Drawing.Size(39, 18);
            this.column_S.StylePriority.UseBorders = false;
            this.column_S.StylePriority.UseFont = false;
            this.column_S.StylePriority.UseTextAlignment = false;
            this.column_S.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_fpy
            // 
            this.column_fpy.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.column_fpy.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.column_fpy.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_fpy.Location = new System.Drawing.Point(1006, 0);
            this.column_fpy.Name = "column_fpy";
            this.column_fpy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_fpy.Size = new System.Drawing.Size(42, 18);
            this.column_fpy.StylePriority.UseBackColor = false;
            this.column_fpy.StylePriority.UseBorders = false;
            this.column_fpy.StylePriority.UseFont = false;
            this.column_fpy.StylePriority.UseTextAlignment = false;
            this.column_fpy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_pass
            // 
            this.column_pass.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.column_pass.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_pass.Location = new System.Drawing.Point(1048, 0);
            this.column_pass.Name = "column_pass";
            this.column_pass.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_pass.Size = new System.Drawing.Size(39, 18);
            this.column_pass.StylePriority.UseBorders = false;
            this.column_pass.StylePriority.UseFont = false;
            this.column_pass.StylePriority.UseTextAlignment = false;
            this.column_pass.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrVerNo,
            this.xrSubreport3,
            this.xrSubreport2,
            this.xrLabel8,
            this.xrTable2,
            this.xrLabel6,
            this.xrSubreport1});
            this.ReportFooter.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.ReportFooter.Height = 177;
            this.ReportFooter.KeepTogether = true;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // xrSubreport3
            // 
            this.xrSubreport3.Location = new System.Drawing.Point(42, 120);
            this.xrSubreport3.Name = "xrSubreport3";
            this.xrSubreport3.Size = new System.Drawing.Size(1087, 25);
            // 
            // xrSubreport2
            // 
            this.xrSubreport2.Location = new System.Drawing.Point(0, 57);
            this.xrSubreport2.Name = "xrSubreport2";
            this.xrSubreport2.Size = new System.Drawing.Size(1129, 25);
            // 
            // xrLabel8
            // 
            this.xrLabel8.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrLabel8.Location = new System.Drawing.Point(8, 88);
            this.xrLabel8.Name = "xrLabel8";
            this.xrLabel8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel8.Size = new System.Drawing.Size(33, 17);
            this.xrLabel8.StylePriority.UseFont = false;
            this.xrLabel8.StylePriority.UseTextAlignment = false;
            this.xrLabel8.Text = "Fty";
            this.xrLabel8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTable2
            // 
            this.xrTable2.Location = new System.Drawing.Point(42, 88);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow7});
            this.xrTable2.Size = new System.Drawing.Size(1087, 18);
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.BackColor = System.Drawing.Color.Transparent;
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrlinetotal1,
            this.xrprojtotal1,
            this.xrstylettl1,
            this.col_qnqtyT1,
            this.col_KeyOpt1,
            this.xrTableCell251,
            this.xrWorkers1,
            this.xropttotal1,
            this.xrTtlDefectPtDescCountFty,
            this.xrTableCell291,
            this.xrtotalfirst1,
            this.col_RechkT11,
            this.col_totalchkT11,
            this.col_chkqtyT11,
            this.col_passtimesT111,
            this.col_repasstimesT11,
            this.col_YieldFailT1,
            this.column_PT11,
            this.column_FT11,
            this.column_UT11,
            this.column_ST11,
            this.xrTableCell321,
            this.xrTableCell361});
            this.xrTableRow7.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(1087, 18);
            this.xrTableRow7.StylePriority.UseBackColor = false;
            // 
            // xrlinetotal1
            // 
            this.xrlinetotal1.BackColor = System.Drawing.Color.LightCyan;
            this.xrlinetotal1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrlinetotal1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrlinetotal1.Location = new System.Drawing.Point(0, 0);
            this.xrlinetotal1.Name = "xrlinetotal1";
            this.xrlinetotal1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrlinetotal1.Size = new System.Drawing.Size(40, 18);
            this.xrlinetotal1.StylePriority.UseBackColor = false;
            this.xrlinetotal1.StylePriority.UseBorders = false;
            this.xrlinetotal1.StylePriority.UseFont = false;
            this.xrlinetotal1.StylePriority.UseTextAlignment = false;
            this.xrlinetotal1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrprojtotal1
            // 
            this.xrprojtotal1.BackColor = System.Drawing.Color.LightCyan;
            this.xrprojtotal1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrprojtotal1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrprojtotal1.Location = new System.Drawing.Point(40, 0);
            this.xrprojtotal1.Name = "xrprojtotal1";
            this.xrprojtotal1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrprojtotal1.Size = new System.Drawing.Size(49, 18);
            this.xrprojtotal1.StylePriority.UseBackColor = false;
            this.xrprojtotal1.StylePriority.UseBorders = false;
            this.xrprojtotal1.StylePriority.UseFont = false;
            this.xrprojtotal1.StylePriority.UseTextAlignment = false;
            this.xrprojtotal1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrstylettl1
            // 
            this.xrstylettl1.BackColor = System.Drawing.Color.LightCyan;
            this.xrstylettl1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrstylettl1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrstylettl1.Location = new System.Drawing.Point(89, 0);
            this.xrstylettl1.Name = "xrstylettl1";
            this.xrstylettl1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrstylettl1.Size = new System.Drawing.Size(82, 18);
            this.xrstylettl1.StylePriority.UseBackColor = false;
            this.xrstylettl1.StylePriority.UseBorders = false;
            this.xrstylettl1.StylePriority.UseFont = false;
            this.xrstylettl1.StylePriority.UseTextAlignment = false;
            this.xrstylettl1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_qnqtyT1
            // 
            this.col_qnqtyT1.BackColor = System.Drawing.Color.LightCyan;
            this.col_qnqtyT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_qnqtyT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_qnqtyT1.Location = new System.Drawing.Point(171, 0);
            this.col_qnqtyT1.Name = "col_qnqtyT1";
            this.col_qnqtyT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_qnqtyT1.Size = new System.Drawing.Size(42, 18);
            this.col_qnqtyT1.StylePriority.UseBackColor = false;
            this.col_qnqtyT1.StylePriority.UseBorders = false;
            this.col_qnqtyT1.StylePriority.UseFont = false;
            this.col_qnqtyT1.StylePriority.UseTextAlignment = false;
            this.col_qnqtyT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_KeyOpt1
            // 
            this.col_KeyOpt1.BackColor = System.Drawing.Color.LightCyan;
            this.col_KeyOpt1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_KeyOpt1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_KeyOpt1.Location = new System.Drawing.Point(213, 0);
            this.col_KeyOpt1.Name = "col_KeyOpt1";
            this.col_KeyOpt1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_KeyOpt1.Size = new System.Drawing.Size(19, 18);
            this.col_KeyOpt1.StylePriority.UseBackColor = false;
            this.col_KeyOpt1.StylePriority.UseBorders = false;
            this.col_KeyOpt1.StylePriority.UseFont = false;
            this.col_KeyOpt1.StylePriority.UsePadding = false;
            this.col_KeyOpt1.StylePriority.UseTextAlignment = false;
            this.col_KeyOpt1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell251
            // 
            this.xrTableCell251.BackColor = System.Drawing.Color.LightCyan;
            this.xrTableCell251.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell251.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell251.Location = new System.Drawing.Point(232, 0);
            this.xrTableCell251.Name = "xrTableCell251";
            this.xrTableCell251.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell251.Size = new System.Drawing.Size(20, 18);
            this.xrTableCell251.StylePriority.UseBackColor = false;
            this.xrTableCell251.StylePriority.UseBorders = false;
            this.xrTableCell251.StylePriority.UseFont = false;
            this.xrTableCell251.StylePriority.UsePadding = false;
            this.xrTableCell251.StylePriority.UseTextAlignment = false;
            this.xrTableCell251.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrWorkers1
            // 
            this.xrWorkers1.BackColor = System.Drawing.Color.LightCyan;
            this.xrWorkers1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrWorkers1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrWorkers1.Location = new System.Drawing.Point(252, 0);
            this.xrWorkers1.Name = "xrWorkers1";
            this.xrWorkers1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrWorkers1.Size = new System.Drawing.Size(70, 18);
            this.xrWorkers1.StylePriority.UseBackColor = false;
            this.xrWorkers1.StylePriority.UseBorders = false;
            this.xrWorkers1.StylePriority.UseFont = false;
            this.xrWorkers1.StylePriority.UseTextAlignment = false;
            this.xrWorkers1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xropttotal1
            // 
            this.xropttotal1.BackColor = System.Drawing.Color.LightCyan;
            this.xropttotal1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xropttotal1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xropttotal1.Location = new System.Drawing.Point(322, 0);
            this.xropttotal1.Name = "xropttotal1";
            this.xropttotal1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xropttotal1.Size = new System.Drawing.Size(45, 18);
            this.xropttotal1.StylePriority.UseBackColor = false;
            this.xropttotal1.StylePriority.UseBorders = false;
            this.xropttotal1.StylePriority.UseFont = false;
            this.xropttotal1.StylePriority.UseTextAlignment = false;
            this.xropttotal1.Text = "n.a.";
            this.xropttotal1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTtlDefectPtDescCountFty
            // 
            this.xrTtlDefectPtDescCountFty.BackColor = System.Drawing.Color.LightCyan;
            this.xrTtlDefectPtDescCountFty.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTtlDefectPtDescCountFty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTtlDefectPtDescCountFty.Location = new System.Drawing.Point(367, 0);
            this.xrTtlDefectPtDescCountFty.Name = "xrTtlDefectPtDescCountFty";
            this.xrTtlDefectPtDescCountFty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTtlDefectPtDescCountFty.Size = new System.Drawing.Size(28, 18);
            this.xrTtlDefectPtDescCountFty.StylePriority.UseBackColor = false;
            this.xrTtlDefectPtDescCountFty.StylePriority.UseBorders = false;
            this.xrTtlDefectPtDescCountFty.StylePriority.UseFont = false;
            this.xrTtlDefectPtDescCountFty.StylePriority.UseTextAlignment = false;
            this.xrTtlDefectPtDescCountFty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell291
            // 
            this.xrTableCell291.BackColor = System.Drawing.Color.LightCyan;
            this.xrTableCell291.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell291.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell291.Location = new System.Drawing.Point(395, 0);
            this.xrTableCell291.Name = "xrTableCell291";
            this.xrTableCell291.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell291.Size = new System.Drawing.Size(253, 18);
            this.xrTableCell291.StylePriority.UseBackColor = false;
            this.xrTableCell291.StylePriority.UseBorders = false;
            this.xrTableCell291.StylePriority.UseFont = false;
            this.xrTableCell291.StylePriority.UseTextAlignment = false;
            this.xrTableCell291.Text = "n.a.";
            this.xrTableCell291.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrtotalfirst1
            // 
            this.xrtotalfirst1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrtotalfirst1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrtotalfirst1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrtotalfirst1.Location = new System.Drawing.Point(648, 0);
            this.xrtotalfirst1.Name = "xrtotalfirst1";
            this.xrtotalfirst1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrtotalfirst1.Size = new System.Drawing.Size(25, 18);
            this.xrtotalfirst1.StylePriority.UseBackColor = false;
            this.xrtotalfirst1.StylePriority.UseBorders = false;
            this.xrtotalfirst1.StylePriority.UseFont = false;
            this.xrtotalfirst1.StylePriority.UsePadding = false;
            this.xrtotalfirst1.StylePriority.UseTextAlignment = false;
            this.xrtotalfirst1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_RechkT11
            // 
            this.col_RechkT11.BackColor = System.Drawing.Color.LightCyan;
            this.col_RechkT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_RechkT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_RechkT11.Location = new System.Drawing.Point(673, 0);
            this.col_RechkT11.Name = "col_RechkT11";
            this.col_RechkT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_RechkT11.Size = new System.Drawing.Size(24, 18);
            this.col_RechkT11.StylePriority.UseBackColor = false;
            this.col_RechkT11.StylePriority.UseBorders = false;
            this.col_RechkT11.StylePriority.UseFont = false;
            this.col_RechkT11.StylePriority.UsePadding = false;
            this.col_RechkT11.StylePriority.UseTextAlignment = false;
            this.col_RechkT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_totalchkT11
            // 
            this.col_totalchkT11.BackColor = System.Drawing.Color.LightCyan;
            this.col_totalchkT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_totalchkT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_totalchkT11.Location = new System.Drawing.Point(697, 0);
            this.col_totalchkT11.Name = "col_totalchkT11";
            this.col_totalchkT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_totalchkT11.Size = new System.Drawing.Size(25, 18);
            this.col_totalchkT11.StylePriority.UseBackColor = false;
            this.col_totalchkT11.StylePriority.UseBorders = false;
            this.col_totalchkT11.StylePriority.UseFont = false;
            this.col_totalchkT11.StylePriority.UsePadding = false;
            this.col_totalchkT11.StylePriority.UseTextAlignment = false;
            this.col_totalchkT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqtyT11
            // 
            this.col_chkqtyT11.BackColor = System.Drawing.Color.LightCyan;
            this.col_chkqtyT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_chkqtyT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_chkqtyT11.Location = new System.Drawing.Point(722, 0);
            this.col_chkqtyT11.Name = "col_chkqtyT11";
            this.col_chkqtyT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.col_chkqtyT11.Size = new System.Drawing.Size(36, 18);
            this.col_chkqtyT11.StylePriority.UseBackColor = false;
            this.col_chkqtyT11.StylePriority.UseBorders = false;
            this.col_chkqtyT11.StylePriority.UseFont = false;
            this.col_chkqtyT11.StylePriority.UsePadding = false;
            this.col_chkqtyT11.StylePriority.UseTextAlignment = false;
            this.col_chkqtyT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_passtimesT111
            // 
            this.col_passtimesT111.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.col_passtimesT111.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_passtimesT111.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_passtimesT111.Location = new System.Drawing.Point(758, 0);
            this.col_passtimesT111.Name = "col_passtimesT111";
            this.col_passtimesT111.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_passtimesT111.Size = new System.Drawing.Size(33, 18);
            this.col_passtimesT111.StylePriority.UseBackColor = false;
            this.col_passtimesT111.StylePriority.UseBorders = false;
            this.col_passtimesT111.StylePriority.UseFont = false;
            this.col_passtimesT111.StylePriority.UseTextAlignment = false;
            this.col_passtimesT111.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimesT11
            // 
            this.col_repasstimesT11.BackColor = System.Drawing.Color.LightCyan;
            this.col_repasstimesT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_repasstimesT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_repasstimesT11.Location = new System.Drawing.Point(791, 0);
            this.col_repasstimesT11.Name = "col_repasstimesT11";
            this.col_repasstimesT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimesT11.Size = new System.Drawing.Size(36, 18);
            this.col_repasstimesT11.StylePriority.UseBackColor = false;
            this.col_repasstimesT11.StylePriority.UseBorders = false;
            this.col_repasstimesT11.StylePriority.UseFont = false;
            this.col_repasstimesT11.StylePriority.UseTextAlignment = false;
            this.col_repasstimesT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFailT1
            // 
            this.col_YieldFailT1.BackColor = System.Drawing.Color.LightCyan;
            this.col_YieldFailT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_YieldFailT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_YieldFailT1.Location = new System.Drawing.Point(827, 0);
            this.col_YieldFailT1.Name = "col_YieldFailT1";
            this.col_YieldFailT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFailT1.Size = new System.Drawing.Size(39, 18);
            this.col_YieldFailT1.StylePriority.UseBackColor = false;
            this.col_YieldFailT1.StylePriority.UseBorders = false;
            this.col_YieldFailT1.StylePriority.UseFont = false;
            this.col_YieldFailT1.StylePriority.UseTextAlignment = false;
            this.col_YieldFailT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_PT11
            // 
            this.column_PT11.BackColor = System.Drawing.Color.LightCyan;
            this.column_PT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_PT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_PT11.Location = new System.Drawing.Point(866, 0);
            this.column_PT11.Name = "column_PT11";
            this.column_PT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_PT11.Size = new System.Drawing.Size(31, 18);
            this.column_PT11.StylePriority.UseBackColor = false;
            this.column_PT11.StylePriority.UseBorders = false;
            this.column_PT11.StylePriority.UseFont = false;
            this.column_PT11.StylePriority.UseTextAlignment = false;
            this.column_PT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_FT11
            // 
            this.column_FT11.BackColor = System.Drawing.Color.LightCyan;
            this.column_FT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_FT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_FT11.Location = new System.Drawing.Point(897, 0);
            this.column_FT11.Name = "column_FT11";
            this.column_FT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_FT11.Size = new System.Drawing.Size(34, 18);
            this.column_FT11.StylePriority.UseBackColor = false;
            this.column_FT11.StylePriority.UseBorders = false;
            this.column_FT11.StylePriority.UseFont = false;
            this.column_FT11.StylePriority.UseTextAlignment = false;
            this.column_FT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_UT11
            // 
            this.column_UT11.BackColor = System.Drawing.Color.LightCyan;
            this.column_UT11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_UT11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_UT11.Location = new System.Drawing.Point(931, 0);
            this.column_UT11.Name = "column_UT11";
            this.column_UT11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_UT11.Size = new System.Drawing.Size(36, 18);
            this.column_UT11.StylePriority.UseBackColor = false;
            this.column_UT11.StylePriority.UseBorders = false;
            this.column_UT11.StylePriority.UseFont = false;
            this.column_UT11.StylePriority.UseTextAlignment = false;
            this.column_UT11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_ST11
            // 
            this.column_ST11.BackColor = System.Drawing.Color.LightCyan;
            this.column_ST11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_ST11.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_ST11.Location = new System.Drawing.Point(967, 0);
            this.column_ST11.Name = "column_ST11";
            this.column_ST11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_ST11.Size = new System.Drawing.Size(39, 18);
            this.column_ST11.StylePriority.UseBackColor = false;
            this.column_ST11.StylePriority.UseBorders = false;
            this.column_ST11.StylePriority.UseFont = false;
            this.column_ST11.StylePriority.UseTextAlignment = false;
            this.column_ST11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell321
            // 
            this.xrTableCell321.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            this.xrTableCell321.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell321.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell321.Location = new System.Drawing.Point(1006, 0);
            this.xrTableCell321.Name = "xrTableCell321";
            this.xrTableCell321.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell321.Size = new System.Drawing.Size(42, 18);
            this.xrTableCell321.StylePriority.UseBackColor = false;
            this.xrTableCell321.StylePriority.UseBorders = false;
            this.xrTableCell321.StylePriority.UseFont = false;
            this.xrTableCell321.StylePriority.UseTextAlignment = false;
            this.xrTableCell321.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell361
            // 
            this.xrTableCell361.BackColor = System.Drawing.Color.Transparent;
            this.xrTableCell361.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell361.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell361.Location = new System.Drawing.Point(1048, 0);
            this.xrTableCell361.Name = "xrTableCell361";
            this.xrTableCell361.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell361.Size = new System.Drawing.Size(39, 18);
            this.xrTableCell361.StylePriority.UseBackColor = false;
            this.xrTableCell361.StylePriority.UseBorders = false;
            this.xrTableCell361.StylePriority.UseFont = false;
            this.xrTableCell361.StylePriority.UseTextAlignment = false;
            this.xrTableCell361.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel6
            // 
            this.xrLabel6.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrLabel6.Location = new System.Drawing.Point(42, 4);
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(92, 17);
            this.xrLabel6.StylePriority.UseFont = false;
            this.xrLabel6.Text = "Lines Summary :";
            // 
            // xrSubreport1
            // 
            this.xrSubreport1.Location = new System.Drawing.Point(0, 20);
            this.xrSubreport1.Name = "xrSubreport1";
            this.xrSubreport1.Size = new System.Drawing.Size(1129, 25);
            // 
            // xrTableDetailTotal
            // 
            this.xrTableDetailTotal.Location = new System.Drawing.Point(42, 0);
            this.xrTableDetailTotal.Name = "xrTableDetailTotal";
            this.xrTableDetailTotal.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow8});
            this.xrTableDetailTotal.Size = new System.Drawing.Size(1087, 18);
            // 
            // xrTableRow8
            // 
            this.xrTableRow8.BackColor = System.Drawing.Color.LightCyan;
            this.xrTableRow8.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tcLineCount,
            this.tcProjectCount,
            this.tcCustStyleCount,
            this.tcTtlQNQty,
            this.tcQAFlagCount,
            this.tcQIFlagCount,
            this.tcWFIDCount,
            this.tcOptCodeCount,
            this.xrDefectPtDescCount,
            this.xrTableCell43,
            this.tcTtlfirst,
            this.tcTtlReCheck,
            this.tcTtlCheck,
            this.tcAuditTotal,
            this.tcTtlFirsPass,
            this.tcTtlReFirsPass,
            this.tcYieldFailT,
            this.tcTtlP_Qty,
            this.tcTtlF_Qty,
            this.tcTtlU_Qty,
            this.tcTtlS_Qty,
            this.tcAveragePer,
            this.xrTableCell59});
            this.xrTableRow8.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.xrTableRow8.Name = "xrTableRow8";
            this.xrTableRow8.Size = new System.Drawing.Size(1087, 18);
            this.xrTableRow8.StylePriority.UseBackColor = false;
            // 
            // tcLineCount
            // 
            this.tcLineCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcLineCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcLineCount.Location = new System.Drawing.Point(0, 0);
            this.tcLineCount.Name = "tcLineCount";
            this.tcLineCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcLineCount.Size = new System.Drawing.Size(37, 18);
            this.tcLineCount.StylePriority.UseBorders = false;
            this.tcLineCount.StylePriority.UseFont = false;
            this.tcLineCount.StylePriority.UseTextAlignment = false;
            this.tcLineCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcProjectCount
            // 
            this.tcProjectCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcProjectCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcProjectCount.Location = new System.Drawing.Point(37, 0);
            this.tcProjectCount.Name = "tcProjectCount";
            this.tcProjectCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcProjectCount.Size = new System.Drawing.Size(52, 18);
            this.tcProjectCount.StylePriority.UseBorders = false;
            this.tcProjectCount.StylePriority.UseFont = false;
            this.tcProjectCount.StylePriority.UseTextAlignment = false;
            this.tcProjectCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcCustStyleCount
            // 
            this.tcCustStyleCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcCustStyleCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcCustStyleCount.Location = new System.Drawing.Point(89, 0);
            this.tcCustStyleCount.Name = "tcCustStyleCount";
            this.tcCustStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcCustStyleCount.Size = new System.Drawing.Size(82, 18);
            this.tcCustStyleCount.StylePriority.UseBorders = false;
            this.tcCustStyleCount.StylePriority.UseFont = false;
            this.tcCustStyleCount.StylePriority.UseTextAlignment = false;
            this.tcCustStyleCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlQNQty
            // 
            this.tcTtlQNQty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlQNQty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlQNQty.Location = new System.Drawing.Point(171, 0);
            this.tcTtlQNQty.Name = "tcTtlQNQty";
            this.tcTtlQNQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlQNQty.Size = new System.Drawing.Size(42, 18);
            this.tcTtlQNQty.StylePriority.UseBorders = false;
            this.tcTtlQNQty.StylePriority.UseFont = false;
            this.tcTtlQNQty.StylePriority.UseTextAlignment = false;
            this.tcTtlQNQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcQAFlagCount
            // 
            this.tcQAFlagCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcQAFlagCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcQAFlagCount.Location = new System.Drawing.Point(213, 0);
            this.tcQAFlagCount.Name = "tcQAFlagCount";
            this.tcQAFlagCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tcQAFlagCount.Size = new System.Drawing.Size(19, 18);
            this.tcQAFlagCount.StylePriority.UseBorders = false;
            this.tcQAFlagCount.StylePriority.UseFont = false;
            this.tcQAFlagCount.StylePriority.UsePadding = false;
            this.tcQAFlagCount.StylePriority.UseTextAlignment = false;
            this.tcQAFlagCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcQIFlagCount
            // 
            this.tcQIFlagCount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcQIFlagCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcQIFlagCount.Location = new System.Drawing.Point(232, 0);
            this.tcQIFlagCount.Name = "tcQIFlagCount";
            this.tcQIFlagCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tcQIFlagCount.Size = new System.Drawing.Size(20, 18);
            this.tcQIFlagCount.StylePriority.UseBorders = false;
            this.tcQIFlagCount.StylePriority.UseFont = false;
            this.tcQIFlagCount.StylePriority.UsePadding = false;
            this.tcQIFlagCount.StylePriority.UseTextAlignment = false;
            this.tcQIFlagCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcWFIDCount
            // 
            this.tcWFIDCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcWFIDCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcWFIDCount.Location = new System.Drawing.Point(252, 0);
            this.tcWFIDCount.Name = "tcWFIDCount";
            this.tcWFIDCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcWFIDCount.Size = new System.Drawing.Size(70, 18);
            this.tcWFIDCount.StylePriority.UseBorders = false;
            this.tcWFIDCount.StylePriority.UseFont = false;
            this.tcWFIDCount.StylePriority.UseTextAlignment = false;
            this.tcWFIDCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcOptCodeCount
            // 
            this.tcOptCodeCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcOptCodeCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcOptCodeCount.Location = new System.Drawing.Point(322, 0);
            this.tcOptCodeCount.Name = "tcOptCodeCount";
            this.tcOptCodeCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcOptCodeCount.Size = new System.Drawing.Size(45, 18);
            this.tcOptCodeCount.StylePriority.UseBorders = false;
            this.tcOptCodeCount.StylePriority.UseFont = false;
            this.tcOptCodeCount.StylePriority.UseTextAlignment = false;
            this.tcOptCodeCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrDefectPtDescCount
            // 
            this.xrDefectPtDescCount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrDefectPtDescCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrDefectPtDescCount.Location = new System.Drawing.Point(367, 0);
            this.xrDefectPtDescCount.Name = "xrDefectPtDescCount";
            this.xrDefectPtDescCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrDefectPtDescCount.Size = new System.Drawing.Size(28, 18);
            this.xrDefectPtDescCount.StylePriority.UseBorders = false;
            this.xrDefectPtDescCount.StylePriority.UseFont = false;
            this.xrDefectPtDescCount.StylePriority.UseTextAlignment = false;
            this.xrDefectPtDescCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell43
            // 
            this.xrTableCell43.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell43.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell43.Location = new System.Drawing.Point(395, 0);
            this.xrTableCell43.Name = "xrTableCell43";
            this.xrTableCell43.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell43.Size = new System.Drawing.Size(252, 18);
            this.xrTableCell43.StylePriority.UseBorders = false;
            this.xrTableCell43.StylePriority.UseFont = false;
            // 
            // tcTtlfirst
            // 
            this.tcTtlfirst.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlfirst.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlfirst.Location = new System.Drawing.Point(647, 0);
            this.tcTtlfirst.Name = "tcTtlfirst";
            this.tcTtlfirst.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tcTtlfirst.Size = new System.Drawing.Size(26, 18);
            this.tcTtlfirst.StylePriority.UseBorders = false;
            this.tcTtlfirst.StylePriority.UseFont = false;
            this.tcTtlfirst.StylePriority.UsePadding = false;
            this.tcTtlfirst.StylePriority.UseTextAlignment = false;
            this.tcTtlfirst.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlReCheck
            // 
            this.tcTtlReCheck.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlReCheck.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlReCheck.Location = new System.Drawing.Point(673, 0);
            this.tcTtlReCheck.Name = "tcTtlReCheck";
            this.tcTtlReCheck.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tcTtlReCheck.Size = new System.Drawing.Size(24, 18);
            this.tcTtlReCheck.StylePriority.UseBorders = false;
            this.tcTtlReCheck.StylePriority.UseFont = false;
            this.tcTtlReCheck.StylePriority.UsePadding = false;
            this.tcTtlReCheck.StylePriority.UseTextAlignment = false;
            this.tcTtlReCheck.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlCheck
            // 
            this.tcTtlCheck.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlCheck.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlCheck.Location = new System.Drawing.Point(697, 0);
            this.tcTtlCheck.Name = "tcTtlCheck";
            this.tcTtlCheck.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tcTtlCheck.Size = new System.Drawing.Size(25, 18);
            this.tcTtlCheck.StylePriority.UseBorders = false;
            this.tcTtlCheck.StylePriority.UseFont = false;
            this.tcTtlCheck.StylePriority.UsePadding = false;
            this.tcTtlCheck.StylePriority.UseTextAlignment = false;
            this.tcTtlCheck.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcAuditTotal
            // 
            this.tcAuditTotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcAuditTotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcAuditTotal.Location = new System.Drawing.Point(722, 0);
            this.tcAuditTotal.Name = "tcAuditTotal";
            this.tcAuditTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tcAuditTotal.Size = new System.Drawing.Size(36, 18);
            this.tcAuditTotal.StylePriority.UseBorders = false;
            this.tcAuditTotal.StylePriority.UseFont = false;
            this.tcAuditTotal.StylePriority.UsePadding = false;
            this.tcAuditTotal.StylePriority.UseTextAlignment = false;
            this.tcAuditTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlFirsPass
            // 
            this.tcTtlFirsPass.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlFirsPass.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlFirsPass.Location = new System.Drawing.Point(758, 0);
            this.tcTtlFirsPass.Name = "tcTtlFirsPass";
            this.tcTtlFirsPass.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlFirsPass.Size = new System.Drawing.Size(33, 18);
            this.tcTtlFirsPass.StylePriority.UseBorders = false;
            this.tcTtlFirsPass.StylePriority.UseFont = false;
            this.tcTtlFirsPass.StylePriority.UseTextAlignment = false;
            this.tcTtlFirsPass.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlReFirsPass
            // 
            this.tcTtlReFirsPass.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlReFirsPass.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlReFirsPass.Location = new System.Drawing.Point(791, 0);
            this.tcTtlReFirsPass.Name = "tcTtlReFirsPass";
            this.tcTtlReFirsPass.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlReFirsPass.Size = new System.Drawing.Size(36, 18);
            this.tcTtlReFirsPass.StylePriority.UseBorders = false;
            this.tcTtlReFirsPass.StylePriority.UseFont = false;
            this.tcTtlReFirsPass.StylePriority.UseTextAlignment = false;
            this.tcTtlReFirsPass.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcYieldFailT
            // 
            this.tcYieldFailT.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcYieldFailT.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcYieldFailT.Location = new System.Drawing.Point(827, 0);
            this.tcYieldFailT.Name = "tcYieldFailT";
            this.tcYieldFailT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcYieldFailT.Size = new System.Drawing.Size(39, 18);
            this.tcYieldFailT.StylePriority.UseBorders = false;
            this.tcYieldFailT.StylePriority.UseFont = false;
            this.tcYieldFailT.StylePriority.UseTextAlignment = false;
            this.tcYieldFailT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlP_Qty
            // 
            this.tcTtlP_Qty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlP_Qty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlP_Qty.Location = new System.Drawing.Point(866, 0);
            this.tcTtlP_Qty.Name = "tcTtlP_Qty";
            this.tcTtlP_Qty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlP_Qty.Size = new System.Drawing.Size(31, 18);
            this.tcTtlP_Qty.StylePriority.UseBorders = false;
            this.tcTtlP_Qty.StylePriority.UseFont = false;
            this.tcTtlP_Qty.StylePriority.UseTextAlignment = false;
            this.tcTtlP_Qty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlF_Qty
            // 
            this.tcTtlF_Qty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlF_Qty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlF_Qty.Location = new System.Drawing.Point(897, 0);
            this.tcTtlF_Qty.Name = "tcTtlF_Qty";
            this.tcTtlF_Qty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlF_Qty.Size = new System.Drawing.Size(34, 18);
            this.tcTtlF_Qty.StylePriority.UseBorders = false;
            this.tcTtlF_Qty.StylePriority.UseFont = false;
            this.tcTtlF_Qty.StylePriority.UseTextAlignment = false;
            this.tcTtlF_Qty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlU_Qty
            // 
            this.tcTtlU_Qty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlU_Qty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlU_Qty.Location = new System.Drawing.Point(931, 0);
            this.tcTtlU_Qty.Name = "tcTtlU_Qty";
            this.tcTtlU_Qty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlU_Qty.Size = new System.Drawing.Size(36, 18);
            this.tcTtlU_Qty.StylePriority.UseBorders = false;
            this.tcTtlU_Qty.StylePriority.UseFont = false;
            this.tcTtlU_Qty.StylePriority.UseTextAlignment = false;
            this.tcTtlU_Qty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcTtlS_Qty
            // 
            this.tcTtlS_Qty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcTtlS_Qty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcTtlS_Qty.Location = new System.Drawing.Point(967, 0);
            this.tcTtlS_Qty.Name = "tcTtlS_Qty";
            this.tcTtlS_Qty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcTtlS_Qty.Size = new System.Drawing.Size(39, 18);
            this.tcTtlS_Qty.StylePriority.UseBorders = false;
            this.tcTtlS_Qty.StylePriority.UseFont = false;
            this.tcTtlS_Qty.StylePriority.UseTextAlignment = false;
            this.tcTtlS_Qty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcAveragePer
            // 
            this.tcAveragePer.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcAveragePer.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcAveragePer.Location = new System.Drawing.Point(1006, 0);
            this.tcAveragePer.Name = "tcAveragePer";
            this.tcAveragePer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcAveragePer.Size = new System.Drawing.Size(42, 18);
            this.tcAveragePer.StylePriority.UseBorders = false;
            this.tcAveragePer.StylePriority.UseFont = false;
            this.tcAveragePer.StylePriority.UseTextAlignment = false;
            this.tcAveragePer.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell59
            // 
            this.xrTableCell59.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell59.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell59.Location = new System.Drawing.Point(1048, 0);
            this.xrTableCell59.Name = "xrTableCell59";
            this.xrTableCell59.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell59.Size = new System.Drawing.Size(39, 18);
            this.xrTableCell59.StylePriority.UseBorders = false;
            this.xrTableCell59.StylePriority.UseFont = false;
            this.xrTableCell59.StylePriority.UseTextAlignment = false;
            this.xrTableCell59.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel12
            // 
            this.xrLabel12.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrLabel12.Location = new System.Drawing.Point(8, 0);
            this.xrLabel12.Name = "xrLabel12";
            this.xrLabel12.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel12.Size = new System.Drawing.Size(34, 17);
            this.xrLabel12.StylePriority.UseFont = false;
            this.xrLabel12.StylePriority.UsePadding = false;
            this.xrLabel12.StylePriority.UseTextAlignment = false;
            this.xrLabel12.Text = "Sub-ttl:";
            this.xrLabel12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel12,
            this.xrTableDetailTotal});
            this.GroupFooter1.Height = 18;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // xrVerNo
            // 
            this.xrVerNo.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrVerNo.Location = new System.Drawing.Point(950, 150);
            this.xrVerNo.Multiline = true;
            this.xrVerNo.Name = "xrVerNo";
            this.xrVerNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerNo.Size = new System.Drawing.Size(176, 16);
            this.xrVerNo.StylePriority.UseFont = false;
            this.xrVerNo.StylePriority.UseTextAlignment = false;
            this.xrVerNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // rptQC_MasterAnalyzeOPT3_New
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter,
            this.GroupFooter1});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(15, 20, 15, 24);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable13)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTableDetailTotal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        private int _SumCheckQty = 0;
        private void columnF_CheckQty_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            foreach (object obj in e.CalculatedValues)
            {
                if (!(obj is DBNull))
                {
                    _SumCheckQty += Convert.ToInt32(obj);
                }
            }
        }

        private int _SumP = 0;
        private void columnF_P_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            foreach (object obj in e.CalculatedValues)
            {
                if (!(obj is DBNull))
                {
                    _SumP += Convert.ToInt32(obj);
                }
            }
        }


        private int _SumF = 0;
        private void columnF_F_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            foreach (object obj in e.CalculatedValues)
            {
                if (!(obj is DBNull))
                {
                    _SumF += Convert.ToInt32(obj);
                }
            }
        }

        private void columnF_FPY_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            if (_SumCheckQty != 0)
            {
                e.Result = Math.Round(Convert.ToDouble(_SumP) / _SumCheckQty * 100, 2);
                e.Handled = true;

            }
        }

        ArrayList _alline = new ArrayList();
        ArrayList _alproj = new ArrayList();
        ArrayList _alstyle = new ArrayList();
        ArrayList _alworker = new ArrayList();
        ArrayList _aloptcode = new ArrayList();

        int i = 1;

        int total_zhenjian = 0, total_rechk = 0, total_chk = 0, auditqty = 0, passtime1 = 0, passtime2 = 0, p_total = 0, f_total = 0, u_total = 0, s_total = 0, qnqty_total = 0;
        int firstpass_qty = 0, firstpassaudit_qty = 0;

        string LineFirst = ""; string ProjectFirst = ""; string CustStyleFirst = ""; string QnQtyFirst = "";
        string LineSecond = ""; string ProjectSecond = ""; string CustStyleSecond = ""; string QnQtySecond = "";
        string QNFirst = ""; string QNSecomd = "";

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_MasterAnalyzResult gbs = this.GetCurrentRow() as Proc_MasterAnalyzResult;
            if (gbs == null) return;

            if (!_alline.Contains(gbs.Line))
                _alline.Add(gbs.Line);

            if (!_alproj.Contains(gbs.Project))
                _alproj.Add(gbs.Project);

            if (!_alstyle.Contains(gbs.CustStyle))
                _alstyle.Add(gbs.CustStyle);

            if (!_alworker.Contains(gbs.WFID))
                _alworker.Add(gbs.WFID);

            if (!_aloptcode.Contains(gbs.OptCode))
                _aloptcode.Add(gbs.OptCode);

            total_zhenjian = total_zhenjian + (gbs.TotalCheckTimes - gbs.ReCheckTimes);
            total_rechk = total_rechk + gbs.ReCheckTimes;
            total_chk = total_chk + gbs.TotalCheckTimes;

            auditqty = auditqty + gbs.AuditTotal;
            passtime1 = passtime1 + gbs.FirsPassTimes;
            passtime2 = passtime2 + gbs.ReCheckPassTimes;
            p_total = p_total + gbs.P_Qty;
            f_total = f_total + gbs.F_Qty;
            u_total = u_total + gbs.U_Qty;
            s_total = s_total + gbs.S_Qty;
            qnqty_total = qnqty_total + gbs.QNQty;

            firstpass_qty = firstpass_qty + gbs.FirstPassQty;
            firstpassaudit_qty = firstpassaudit_qty + gbs.FirstPassAuditQty;

            // total_fail=total_fail+()


            this.col_FirstChk.Text = (gbs.TotalCheckTimes - gbs.ReCheckTimes).ToString();
            column_passtimes.Text = gbs.FirsPassTimes.ToString();

            //首通率計算改為:首次通過次數/首檢次數 17/3/3
            column_fpy.Text = String.Format("{0:F}", gbs.FPY); //gbs.FPY.ToString(); ->remark by joseph at 17/3/3 updated as below

            // int _p1 = gbs.TotalCheckTimes - gbs.ReCheckTimes;

            // column_fpy.Text = _p1 == 0 ? "0.00" : String.Format("{0:F}", gbs.FirsPassTimes / _p1);

            //this.column_sortid.Text = gbs.SortId <= 10 && gbs.FPY < Double.Parse("100.00") ? gbs.SortId.ToString() : "";
            this.col_YieldFail.Text = (gbs.TotalCheckTimes - gbs.FirsPassTimes - gbs.ReCheckPassTimes).ToString();


            //this.column_WFID.Text = string.IsNullOrEmpty(gbs.WFID) ? "" : "'" + gbs.WFID;

            //this.column_fpy.DataBindings.Add("Text", this.DataSource, "FPY");


            //if (i <= 10)
            //    this.col_firstpassper.Text = i.ToString();
            //else
            //    col_firstpassper.Text = "";

            i++;


            //this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            //this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            //this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");

            //this.col_qnqty.DataBindings.Add("Text", this.DataSource, "QNQty");

            //LineFirst=  this.GetCurrentColumnValue("Line").ToString();
            //ProjectFirst = this.GetCurrentColumnValue("Project").ToString();
            //CustStyleFirst = this.GetCurrentColumnValue("CustStyle").ToString();
            //QnQtyFirst = this.GetCurrentColumnValue("QNQty").ToString();


            //if(LineFirst == LineSecond && ProjectFirst== ProjectSecond && CustStyleFirst)


        }


        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            /*
            this.xrlinetotal.Text = _alline.Count.ToString();
            this.xropttotal.Text = _aloptcode.Count.ToString();
            this.xrprojtotal.Text = _alproj.Count.ToString();
            
           // this.xrstyletotal.Text = _alstyle.Count.ToString();
            this.xrWorkers.Text = _alworker.Count.ToString();
            this.xrstylettl.Text = _alstyle.Count.ToString();

            col_chkqtyT1.Text = auditqty.ToString();

            xrtotalfirst.Text =total_zhenjian.ToString();

            col_RechkT1.Text = total_rechk==0?"0":total_rechk.ToString();

            col_totalchkT1.Text=total_chk==0?"0":total_chk.ToString();

            col_chkqtyT1.Text = auditqty==0?"0":auditqty.ToString();

            col_passtimesT1.Text = passtime1==0?"0": passtime1.ToString();
            col_repasstimesT1.Text = passtime2==0?"0": passtime2.ToString();
            column_PT1.Text= p_total==0?"0":p_total.ToString();
            column_FT1.Text= f_total==0?"0": f_total.ToString();
            column_UT1.Text = u_total==0?"0":u_total.ToString();

            column_ST1.Text = s_total==0?"0":s_total.ToString();
            col_YieldFailT.Text =(total_chk-passtime1-passtime2).ToString();

            //double aa= Convert.ToDouble(p_total * 100 /(p_total + f_total));

          //  double aa = Convert.ToDouble(firstpass_qty * 100.00 / firstpassaudit_qty);
            double aa = total_zhenjian==0 ? 0:Convert.ToDouble(passtime1 * 100.00 / total_zhenjian);


            this.xrAverage.Text = String.Format("{0:F}", aa);


            Proc_MasterAnalyzResult gbs = this.GetCurrentRow() as Proc_MasterAnalyzResult;
            col_qnqtyT.Text = gbs.QNQty_Total.ToString();
             
             
          //  Rpt_Sub1 rptsub = new Rpt_Sub1(SubRptData);
          //  this.xrSubreport1.ReportSource = rptsub; 


                //Math.Round(Convert.ToDouble(p_total * 100 /(p_total + f_total)), 2).ToString()+"%";

        */
            /*
            var datalist = ((IEnumerable<Proc_MasterAnalyzResult>)Alldata).ToList();
            int total_zhenjianNew = datalist.Select(dr => dr.TotalCheckTimes - dr.ReCheckTimes).Sum();
            int passtime1New = datalist.Select(dr => dr.FirsPassTimes).Sum();

            double aa = total_zhenjianNew == 0 ? 0 : Convert.ToDouble(passtime1New * 100.00 / total_zhenjianNew);

            this.xrAverage.Text = String.Format("{0:F}", aa);

            //this.xrAverage.Text = String.Format("{0:F}", aa);


            Proc_MasterAnalyzResult gbs = this.GetCurrentRow() as Proc_MasterAnalyzResult;
            col_qnqtyT.Text = gbs == null ? "" : gbs.QNQty_Total.ToString();

            this.xrlinetotal.Text = datalist.Select(dr => dr.Line).Distinct().Count().ToString();
            this.xrprojtotal.Text = datalist.Select(dr => dr.Project).Distinct().Count().ToString();
            this.xrstylettl.Text = datalist.Select(dr => dr.CustStyle).Distinct().Count().ToString();
            col_chkqtyT1.Text = datalist.Select(dr => dr.AuditTotal).Sum().ToString();
            // col_qnqtyT.Text = datalist.Select(dr => dr.QNQty_Total).Sum().ToString();
            xropttotal.Text = datalist.Select(dr => dr.OptCode).Distinct().Count().ToString();
            xrWorkers.Text = datalist.Select(dr => dr.WFID).Distinct().Count().ToString();
            xrtotalfirst.Text = total_zhenjianNew.ToString();
            col_RechkT1.Text = datalist.Select(dr => dr.ReCheckTimes).Sum().ToString();
            col_totalchkT1.Text = datalist.Select(dr => dr.TotalCheckTimes).Sum().ToString();
            col_chkqtyT1.Text = datalist.Select(dr => dr.AuditTotal).Sum().ToString();
            col_passtimesT1.Text = datalist.Select(dr => dr.FirsPassTimes).Sum().ToString();
            col_repasstimesT1.Text = datalist.Select(dr => dr.ReCheckPassTimes).Sum().ToString();

            col_YieldFailT.Text = datalist.Select(dr => dr.TotalCheckTimes - dr.FirsPassTimes - dr.ReCheckPassTimes).Sum().ToString();
            column_PT1.Text = datalist.Select(dr => dr.P_Qty).Sum().ToString();
            column_FT1.Text = datalist.Select(dr => dr.F_Qty).Sum().ToString();
            column_UT1.Text = datalist.Select(dr => dr.U_Qty).Sum().ToString();
            column_ST1.Text = datalist.Select(dr => dr.S_Qty).Sum().ToString();
            col_KeyOpt.Text = datalist.Where(dr => !string.IsNullOrEmpty(dr.QAFlag)).Count().ToString();
            xrTableCell25.Text = datalist.Where(dr => !string.IsNullOrEmpty(dr.QIFlag)).Count().ToString();
            */

            /************************************/
            /* List<Proc_MasterAnalyzResult> datalist1 = Allobj;
             int total_zhenjianNew1 = datalist1.Select(dr => dr.TotalCheckTimes - dr.ReCheckTimes).Sum();
             int passtime1New1 = datalist1.Select(dr => dr.FirsPassTimes).Sum();

             double aa1 = total_zhenjianNew1 == 0 ? 0 : Convert.ToDouble(passtime1New1 * 100.00 / total_zhenjianNew1);

             this.xrLabel9.Text = String.Format("{0:F}", aa1);
             this.xrTableCell321.Text = String.Format("{0:F}", aa1);
            
             //this.xrAverage.Text = String.Format("{0:F}", aa);


             Proc_MasterAnalyzResult gbsA = datalist1.FirstOrDefault() as Proc_MasterAnalyzResult;
             col_qnqtyT1.Text = gbsA.QNQty_Total.ToString();

             this.xrlinetotal1.Text = datalist1.Select(dr => dr.Line).Distinct().Count().ToString();
             this.xrprojtotal1.Text = datalist1.Select(dr => dr.Project).Distinct().Count().ToString();
             this.xrstylettl1.Text = datalist1.Select(dr => dr.CustStyle).Distinct().Count().ToString();
             col_chkqtyT11.Text = datalist1.Select(dr => dr.AuditTotal).Sum().ToString();
             // col_qnqtyT.Text = datalist.Select(dr => dr.QNQty_Total).Sum().ToString();
             xropttotal1.Text = datalist1.Select(dr => dr.OptCode).Distinct().Count().ToString();
             xrWorkers1.Text = datalist1.Select(dr => dr.WFID).Distinct().Count().ToString();
             xrtotalfirst1.Text = total_zhenjianNew1.ToString();
             col_RechkT11.Text = datalist1.Select(dr => dr.ReCheckTimes).Sum().ToString();
             col_totalchkT11.Text = datalist1.Select(dr => dr.TotalCheckTimes).Sum().ToString();
             col_chkqtyT11.Text = datalist1.Select(dr => dr.AuditTotal).Sum().ToString();
             col_passtimesT111.Text = datalist1.Select(dr => dr.FirsPassTimes).Sum().ToString();
             col_repasstimesT11.Text = datalist1.Select(dr => dr.ReCheckPassTimes).Sum().ToString();

             col_YieldFailT1.Text = datalist1.Select(dr => dr.TotalCheckTimes - dr.FirsPassTimes - dr.ReCheckPassTimes).Sum().ToString();
             column_PT11.Text = datalist1.Select(dr => dr.P_Qty).Sum().ToString();
             column_FT11.Text = datalist1.Select(dr => dr.F_Qty).Sum().ToString();
             column_UT11.Text = datalist1.Select(dr => dr.U_Qty).Sum().ToString();
             column_ST11.Text = datalist1.Select(dr => dr.S_Qty).Sum().ToString();
             col_KeyOpt1.Text = datalist1.Where(dr => !string.IsNullOrEmpty(dr.QAFlag)).Select(dr => dr.OptCode).Distinct().Count().ToString();
             xrTableCell251.Text = datalist1.Where(dr => !string.IsNullOrEmpty(dr.QIFlag)).Select(dr => dr.OptCode).Distinct().Count().ToString();
             */

            //Proc_MasterAnalyzResult_Sub_ByWs_Class ObjFty = DataByFty.FirstOrDefault();


            //this.xrLabel9.Text = String.Format("{0:F}", ObjFty.AveragePer);
            //this.xrTableCell321.Text = String.Format("{0:F}", ObjFty.AveragePer);

            //this.xrAverage.Text = String.Format("{0:F}", aa);

            //col_qnqtyT1.Text = ObjFty.TtlQNQty.ToString();

            //this.xrlinetotal1.Text = ObjFty.LineCount.ToString();
            //this.xrprojtotal1.Text = ObjFty.ProjectCount.ToString();
            //this.xrstylettl1.Text = ObjFty.CustStyleCount.ToString();
            //col_chkqtyT11.Text = ObjFty.AuditTotal.ToString();

            //xropttotal1.Text = ObjFty.OptCodeCount.ToString();
            //xrWorkers1.Text = ObjFty.WFIDCount.ToString();
            //xrtotalfirst1.Text = ObjFty.Ttlfirst.ToString();
            //col_RechkT11.Text = ObjFty.TtlReCheck.ToString();
            //col_totalchkT11.Text = ObjFty.TtlCheck.ToString();


            //col_passtimesT111.Text = ObjFty.TtlFirsPass.ToString();
            //col_repasstimesT11.Text = ObjFty.TtlReFirsPass.ToString();
            //col_YieldFailT1.Text = ObjFty.YieldFailT.ToString();

            //column_PT11.Text = ObjFty.TtlP_Qty.ToString();
            //column_FT11.Text = ObjFty.TtlF_Qty.ToString();
            //column_UT11.Text = ObjFty.TtlU_Qty.ToString();
            //column_ST11.Text = ObjFty.TtlS_Qty.ToString();


            //col_KeyOpt1.Text = ObjFty.QAFlagCount.ToString();
            //xrTableCell251.Text = ObjFty.QIFlagCount.ToString();





        }

        private void xrSubreport1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (_Flag=="A")
            //{
            //    //xrLabel1.Text="Mobile Auditing Operation Report";
            //    //xrLabel3.Text ="巡检定工序报表";
            //    this.xrTableCell89.Text = "No.of Audit\r\n審考次數";
            //    this.xrTableCell90.Text = "Audited Qty";
            //    this.xrTableCell91.Text = "己審考\r\n件數";
            //    this.xrTableCell17.Text = "Audited Result 審考結果";
            //}
            //else
            //{

            //    //xrLabel1.Text="Mobile Inspecting Operation Report";
            //    //xrLabel3.Text ="巡检查工序报表";
            //    this.xrTableCell89.Text = "No.of Inspection\r\n審考次數";
            //    this.xrTableCell90.Text = "Inspected Qty";
            //    this.xrTableCell91.Text = "己審考\r\n件數";
            //    this.xrTableCell17.Text = "Inspected Result 審考結果";
            //}
        }

        private void xrTableRow4_Draw(object sender, DevExpress.XtraReports.UI.DrawEventArgs e)
        {

        }

        private void xrTableRow4_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (QNFirst != "" || QNSecomd != "")
            {
                QNSecomd = QNFirst;
                QNFirst = this.GetCurrentColumnValue("Qn_No").ToString();
                if (QNFirst == QNSecomd)
                {
                    this.column_Line.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                    this.column_Project.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                    this.column_CustStyle.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                    this.col_qnqty.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                    //((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.column_Line.Text = "";
                    this.column_Project.Text = "";
                    this.column_CustStyle.Text = "";
                    this.col_qnqty.Text = "";
                }

                else
                {
                    this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                    this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                    this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                    this.col_qnqty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                }
            }
            else
            {
                QNFirst = this.GetCurrentColumnValue("Qn_No") == null ? "" : this.GetCurrentColumnValue("Qn_No").ToString();
            }
        }


    }
}
