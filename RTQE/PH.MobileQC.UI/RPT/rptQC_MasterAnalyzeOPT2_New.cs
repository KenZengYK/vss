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

namespace PH.MobileQC.UI
{
    public class rptQC_MasterAnalyzeOPT2_New : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTCode;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTName;
        private DevExpress.XtraReports.UI.XRTableCell column_WFID;
        private DevExpress.XtraReports.UI.XRTableCell column_WFName;
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
        private DevExpress.XtraReports.UI.XRTableCell column_sortid;
        private DevExpress.XtraReports.UI.XRTableCell col_qnqty;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRLabel xrAverage;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRTable xrTable4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow6;
        private DevExpress.XtraReports.UI.XRTableCell xrlinetotal;
        private DevExpress.XtraReports.UI.XRTableCell col_qnqtyT;
        private DevExpress.XtraReports.UI.XRTableCell col_KeyOpt;
        private DevExpress.XtraReports.UI.XRTableCell xropttotal;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell29;
        private DevExpress.XtraReports.UI.XRTableCell xrWorkers;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell30;
        private DevExpress.XtraReports.UI.XRTableCell xrtotalfirst;
        private DevExpress.XtraReports.UI.XRTableCell col_RechkT1;
        private DevExpress.XtraReports.UI.XRTableCell col_totalchkT1;
        private DevExpress.XtraReports.UI.XRTableCell col_chkqtyT1;
        private DevExpress.XtraReports.UI.XRTableCell col_passtimesT1;
        private DevExpress.XtraReports.UI.XRTableCell col_repasstimesT1;
        private DevExpress.XtraReports.UI.XRTableCell col_YieldFailT;
        private DevExpress.XtraReports.UI.XRTableCell column_PT1;
        private DevExpress.XtraReports.UI.XRTableCell column_FT1;
        private DevExpress.XtraReports.UI.XRTableCell column_UT1;
        private DevExpress.XtraReports.UI.XRTableCell column_ST1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell32;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell36;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell37;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRTableCell xrprojtotal;
        private DevExpress.XtraReports.UI.XRTableCell xrstylettl;
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
        private DevExpress.XtraReports.UI.XRTable xrTable8;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell74;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell71;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell77;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell80;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell86;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell83;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell33;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell75;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell72;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell34;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell78;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell81;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell35;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell87;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell84;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell38;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell76;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell73;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell69;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell79;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell82;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell70;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell88;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell85;
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
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rptQC_MasterAnalyzeOPT2_New()
        {
            InitializeComponent();
        }


        public List<SubRptdata> SubRptData = new List<SubRptdata>();

        bool _sortfpy;
        string _Flag = "";
        List<Proc_MasterAnalyzResult> ReportDataList;
        public rptQC_MasterAnalyzeOPT2_New(object datasouce, string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, bool SortFPY,string Flag)
        {
            InitializeComponent();
            _Flag =Flag;
            // System.Data.DataTable dt = SqlDataHelper.EXECSP_QC_MasterAnalyzeDT2( Factory,  WorkShop,  Customer,  Style,  Project,  Line, QC_timeForm, QC_timeTo);
            //this.DataSource = datasouce;

            var datalist = ((IEnumerable<Proc_MasterAnalyzResult>)datasouce).OrderBy(p => p.FPY);
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

            ReportDataList = datalist.ToList();

            //for (int i = 1; i <=10; i++)
            //{
            //    lst[i-1].SortId =i;
            //}

             _sortfpy = SortFPY;

            //if (SortFPY)
            //    this.DataSource = ReportDataList.OrderBy(p => p.FPY).ToList();
            //else
                this.DataSource = ReportDataList.OrderBy(p => p.Line).ToList();

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

            int   aa =   Convert.ToInt32(d1.DayOfWeek);
            int   bb = Convert.ToInt32(d2.DayOfWeek);


            this.column_OPTCode.DataBindings.Add("Text", this.DataSource, "OPTCode");
            this.column_OPTName.DataBindings.Add("Text", this.DataSource, "OPTName");
            this.column_WFID.DataBindings.Add("Text", this.DataSource, "WFID");
            this.column_WFName.DataBindings.Add("Text", this.DataSource, "WFHame");
        
            this.column_P.DataBindings.Add("Text", this.DataSource, "P_Qty", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F_Qty", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U_Qty", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S_Qty", "{0:0.#}");


            this.col_Rechk.DataBindings.Add("Text", this.DataSource, "ReCheckTimes"); //重檢次數

            this.col_totalchk.DataBindings.Add("Text", this.DataSource, "TotalCheckTimes"); //合計檢定計數

            this.col_chkqty.DataBindings.Add("Text", this.DataSource, "AuditTotal"); //檢定總件數

          //  this.col_passtimes1.DataBindings.Add("Text", this.DataSource, "FirstPassTimes"); //正檢合格次數
            this.col_repasstimes.DataBindings.Add("Text", this.DataSource, "ReCheckPassTimes"); //重檢合格次數

           // this.col_fpy.DataBindings.Add("Text", this.DataSource, "FPY"); //首次通過率

            
            this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");
            //col_FirstChk.DataBindings.Add("Text", this.DataSource, "CustStyle");
 

            //this.col_RechkT.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            //this.col_totalchkT.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            //this.col_chkqtyT.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            //this.col_passtimesT.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            //this.col_repasstimesT.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            column_pass.DataBindings.Add("Text", this.DataSource, "IsPass");

            this.col_qnqty.DataBindings.Add("Text", this.DataSource, "QNQty");

            string title_part1 = "", title_part11="",title_part2 = "", title_part3 = "";

            // add by joseph
            if (lbl_DateForm.Text == lbl_DataTo.Text)
            {
                //xrTitleCN.Text = "每日";
                //xrTitleEn.Text = "Daily";
                title_part1 = "每日";
                title_part11 = "Daily";
            }
            else if (aa == 1&&(bb == 6||bb==0))
            {
                title_part1 = "每周";
                title_part11 = "Weekly";
            }
            else{
                //xrTitleCN.Text = "定期";
                //xrTitleEn.Text = "Periodic";
                title_part1 = "定期";
                title_part11 = "Periodly";
            }
          //  title_part3 = SortFPY ? " - 首通率依靠" : " - 組裝線依靠";
            title_part3 =  " - 首通率和勞動表現";

            xrLabel3.Text = "";

            if (_Flag == "A")
              xrLabel3.Text = title_part1 + "巡检定工序报表" + title_part3 + "  (主表)";
            else
                xrLabel3.Text = title_part1 + "巡检查工序报表" + title_part3 + "  (主表)";


           // xrBy.Text = SortFPY ? " - by FPY" : " - by Line";

            //title_part2 = SortFPY ? " - FPY Dependent" : " - Line Dependent";
            title_part2 = " - FPY & WF performance";

            xrLabel1.Text = "";
           // xrLabel1.Text = "Mobile Auditing Operation Report " + title_part2;
            if (_Flag == "A")
              xrLabel1.Text = title_part11 + " Mobile Auditing Operation Report " + title_part2+"  (Main Sheet)";
            else
                xrLabel1.Text = title_part11 + " Mobile Inspection Operation Report " + title_part2 + "  (Main Sheet)";


         
        }

        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable13 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow24 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell90 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow25 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell91 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow26 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell98 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTable8 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell74 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell77 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell80 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell86 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell83 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow19 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell75 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell72 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell78 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell81 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell35 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell87 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell84 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow20 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell38 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell76 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell73 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell69 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell79 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell82 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell70 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell88 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell85 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.column_Line = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Project = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CustStyle = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_qnqty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_OPTCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_OPTName = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_WFID = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_WFName = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.column_sortid = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_pass = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrAverage = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrlinetotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrprojtotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrstylettl = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_qnqtyT = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_KeyOpt = new DevExpress.XtraReports.UI.XRTableCell();
            this.xropttotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrWorkers = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrtotalfirst = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_RechkT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_totalchkT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_chkqtyT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_passtimesT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_repasstimesT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_YieldFailT = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_PT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_FT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_UT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_ST1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell37 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable13)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.xrTable13,
            this.xrTable12,
            this.xrTable8,
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
            // xrTable1
            // 
            this.xrTable1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable1.Location = new System.Drawing.Point(1000, 117);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow2,
            this.xrTableRow3});
            this.xrTable1.Size = new System.Drawing.Size(129, 138);
            this.xrTable1.StylePriority.UseBorders = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell2});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(129, 46);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "FPY\r\n首通率";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell2.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(87, 46);
            this.xrTableCell2.StylePriority.UseBorders = false;
            this.xrTableCell2.StylePriority.UseFont = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.Text = "WF勞動者";
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3,
            this.xrTableCell4,
            this.xrTableCell9});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(129, 46);
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.StylePriority.UseFont = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "(%)\r\n(wt.ave)";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell4.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell4.Multiline = true;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(50, 46);
            this.xrTableCell4.StylePriority.UseBorders = false;
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.Text = "FPY Perf.\r\n(last 10)";
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell9.Location = new System.Drawing.Point(92, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(37, 46);
            this.xrTableCell9.StylePriority.UseBorders = false;
            this.xrTableCell9.StylePriority.UseFont = false;
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = " PY\r\nDone\r\n通率執";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell5,
            this.xrTableCell6,
            this.xrTableCell10});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(129, 46);
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell5.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell5.StylePriority.UseFont = false;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell6.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell6.Multiline = true;
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(50, 46);
            this.xrTableCell6.StylePriority.UseFont = false;
            this.xrTableCell6.StylePriority.UseTextAlignment = false;
            this.xrTableCell6.Text = "首通率\r\n(后十位)";
            this.xrTableCell6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell10.Location = new System.Drawing.Point(92, 0);
            this.xrTableCell10.Multiline = true;
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(37, 46);
            this.xrTableCell10.StylePriority.UseFont = false;
            this.xrTableCell10.Text = "行完全\r\n(IP/Y)";
            // 
            // xrTable13
            // 
            this.xrTable13.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable13.Location = new System.Drawing.Point(650, 117);
            this.xrTable13.Name = "xrTable13";
            this.xrTable13.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow24,
            this.xrTableRow25,
            this.xrTableRow26});
            this.xrTable13.Size = new System.Drawing.Size(51, 138);
            this.xrTable13.StylePriority.UseBorders = false;
            // 
            // xrTableRow24
            // 
            this.xrTableRow24.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell90});
            this.xrTableRow24.Name = "xrTableRow24";
            this.xrTableRow24.Size = new System.Drawing.Size(51, 46);
            // 
            // xrTableCell90
            // 
            this.xrTableCell90.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell90.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell90.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell90.Name = "xrTableCell90";
            this.xrTableCell90.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell90.Size = new System.Drawing.Size(51, 46);
            this.xrTableCell90.StylePriority.UseBorders = false;
            this.xrTableCell90.StylePriority.UseFont = false;
            this.xrTableCell90.StylePriority.UseTextAlignment = false;
            this.xrTableCell90.Text = "Audited Qty";
            this.xrTableCell90.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow25
            // 
            this.xrTableRow25.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell91});
            this.xrTableRow25.Name = "xrTableRow25";
            this.xrTableRow25.Size = new System.Drawing.Size(51, 46);
            // 
            // xrTableCell91
            // 
            this.xrTableCell91.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell91.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell91.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell91.Multiline = true;
            this.xrTableCell91.Name = "xrTableCell91";
            this.xrTableCell91.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell91.Size = new System.Drawing.Size(51, 46);
            this.xrTableCell91.StylePriority.UseBorders = false;
            this.xrTableCell91.StylePriority.UseFont = false;
            this.xrTableCell91.StylePriority.UseTextAlignment = false;
            this.xrTableCell91.Text = "己檢定\r\n件數";
            this.xrTableCell91.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableRow26
            // 
            this.xrTableRow26.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell98});
            this.xrTableRow26.Name = "xrTableRow26";
            this.xrTableRow26.Size = new System.Drawing.Size(51, 46);
            // 
            // xrTableCell98
            // 
            this.xrTableCell98.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell98.Name = "xrTableCell98";
            this.xrTableCell98.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell98.Size = new System.Drawing.Size(51, 46);
            // 
            // xrTable12
            // 
            this.xrTable12.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable12.Location = new System.Drawing.Point(556, 117);
            this.xrTable12.Name = "xrTable12";
            this.xrTable12.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow21,
            this.xrTableRow22,
            this.xrTableRow23});
            this.xrTable12.Size = new System.Drawing.Size(95, 138);
            this.xrTable12.StylePriority.UseBorders = false;
            // 
            // xrTableRow21
            // 
            this.xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell89});
            this.xrTableRow21.Name = "xrTableRow21";
            this.xrTableRow21.Size = new System.Drawing.Size(95, 46);
            // 
            // xrTableCell89
            // 
            this.xrTableCell89.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell89.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell89.Multiline = true;
            this.xrTableCell89.Name = "xrTableCell89";
            this.xrTableCell89.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell89.Size = new System.Drawing.Size(95, 46);
            this.xrTableCell89.StylePriority.UseFont = false;
            this.xrTableCell89.StylePriority.UseTextAlignment = false;
            this.xrTableCell89.Text = "No.of Audit\r\n檢定次數";
            this.xrTableCell89.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow22
            // 
            this.xrTableRow22.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell92,
            this.xrTableCell93,
            this.xrTableCell94});
            this.xrTableRow22.Name = "xrTableRow22";
            this.xrTableRow22.Size = new System.Drawing.Size(95, 46);
            // 
            // xrTableCell92
            // 
            this.xrTableCell92.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell92.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell92.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell92.Name = "xrTableCell92";
            this.xrTableCell92.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell92.Size = new System.Drawing.Size(31, 46);
            this.xrTableCell92.StylePriority.UseBorders = false;
            this.xrTableCell92.StylePriority.UseFont = false;
            this.xrTableCell92.StylePriority.UseTextAlignment = false;
            this.xrTableCell92.Text = "正";
            this.xrTableCell92.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell93
            // 
            this.xrTableCell93.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell93.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell93.Location = new System.Drawing.Point(31, 0);
            this.xrTableCell93.Name = "xrTableCell93";
            this.xrTableCell93.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell93.Size = new System.Drawing.Size(36, 46);
            this.xrTableCell93.StylePriority.UseBorders = false;
            this.xrTableCell93.StylePriority.UseFont = false;
            this.xrTableCell93.StylePriority.UseTextAlignment = false;
            this.xrTableCell93.Text = "重";
            this.xrTableCell93.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell94
            // 
            this.xrTableCell94.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell94.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell94.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell94.Name = "xrTableCell94";
            this.xrTableCell94.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell94.Size = new System.Drawing.Size(28, 46);
            this.xrTableCell94.StylePriority.UseBorders = false;
            this.xrTableCell94.StylePriority.UseFont = false;
            this.xrTableCell94.StylePriority.UseTextAlignment = false;
            this.xrTableCell94.Text = "合";
            this.xrTableCell94.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow23
            // 
            this.xrTableRow23.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell95,
            this.xrTableCell96,
            this.xrTableCell97});
            this.xrTableRow23.Name = "xrTableRow23";
            this.xrTableRow23.Size = new System.Drawing.Size(95, 46);
            // 
            // xrTableCell95
            // 
            this.xrTableCell95.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell95.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell95.Name = "xrTableCell95";
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(31, 46);
            this.xrTableCell95.StylePriority.UseFont = false;
            this.xrTableCell95.StylePriority.UseTextAlignment = false;
            this.xrTableCell95.Text = "檢";
            this.xrTableCell95.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell96
            // 
            this.xrTableCell96.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell96.Location = new System.Drawing.Point(31, 0);
            this.xrTableCell96.Name = "xrTableCell96";
            this.xrTableCell96.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell96.Size = new System.Drawing.Size(36, 46);
            this.xrTableCell96.StylePriority.UseFont = false;
            this.xrTableCell96.StylePriority.UseTextAlignment = false;
            this.xrTableCell96.Text = "檢";
            this.xrTableCell96.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell97
            // 
            this.xrTableCell97.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell97.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell97.Name = "xrTableCell97";
            this.xrTableCell97.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell97.Size = new System.Drawing.Size(28, 46);
            this.xrTableCell97.StylePriority.UseFont = false;
            this.xrTableCell97.StylePriority.UseTextAlignment = false;
            this.xrTableCell97.Text = "共";
            this.xrTableCell97.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTable8
            // 
            this.xrTable8.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable8.Location = new System.Drawing.Point(42, 117);
            this.xrTable8.Name = "xrTable8";
            this.xrTable8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow11,
            this.xrTableRow19,
            this.xrTableRow20});
            this.xrTable8.Size = new System.Drawing.Size(515, 138);
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
            this.xrTableCell80,
            this.xrTableCell28,
            this.xrTableCell86,
            this.xrTableCell83});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(515, 47);
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell12.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(39, 47);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UseFont = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "line";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell74
            // 
            this.xrTableCell74.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell74.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell74.Location = new System.Drawing.Point(39, 0);
            this.xrTableCell74.Name = "xrTableCell74";
            this.xrTableCell74.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell74.Size = new System.Drawing.Size(68, 47);
            this.xrTableCell74.StylePriority.UseBorders = false;
            this.xrTableCell74.StylePriority.UseFont = false;
            this.xrTableCell74.StylePriority.UseTextAlignment = false;
            this.xrTableCell74.Text = "Project";
            this.xrTableCell74.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell71
            // 
            this.xrTableCell71.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell71.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell71.Location = new System.Drawing.Point(107, 0);
            this.xrTableCell71.Name = "xrTableCell71";
            this.xrTableCell71.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell71.Size = new System.Drawing.Size(64, 47);
            this.xrTableCell71.StylePriority.UseBorders = false;
            this.xrTableCell71.StylePriority.UseFont = false;
            this.xrTableCell71.StylePriority.UseTextAlignment = false;
            this.xrTableCell71.Text = "Cust Style";
            this.xrTableCell71.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell13.Location = new System.Drawing.Point(171, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(48, 47);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.StylePriority.UseFont = false;
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "QN Qty";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell77
            // 
            this.xrTableCell77.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell77.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell77.Location = new System.Drawing.Point(219, 0);
            this.xrTableCell77.Multiline = true;
            this.xrTableCell77.Name = "xrTableCell77";
            this.xrTableCell77.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell77.Size = new System.Drawing.Size(23, 47);
            this.xrTableCell77.StylePriority.UseBorders = false;
            this.xrTableCell77.StylePriority.UseFont = false;
            this.xrTableCell77.StylePriority.UseTextAlignment = false;
            this.xrTableCell77.Text = "關\r\n鍵\r\n";
            this.xrTableCell77.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell80
            // 
            this.xrTableCell80.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell80.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell80.Location = new System.Drawing.Point(242, 0);
            this.xrTableCell80.Multiline = true;
            this.xrTableCell80.Name = "xrTableCell80";
            this.xrTableCell80.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell80.Size = new System.Drawing.Size(44, 47);
            this.xrTableCell80.StylePriority.UseBorders = false;
            this.xrTableCell80.StylePriority.UseFont = false;
            this.xrTableCell80.StylePriority.UseTextAlignment = false;
            this.xrTableCell80.Text = "OPT \r\nCode";
            this.xrTableCell80.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell28.Location = new System.Drawing.Point(286, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(142, 47);
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.Text = "OPT Name";
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell86
            // 
            this.xrTableCell86.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell86.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell86.Location = new System.Drawing.Point(428, 0);
            this.xrTableCell86.Name = "xrTableCell86";
            this.xrTableCell86.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell86.Size = new System.Drawing.Size(44, 47);
            this.xrTableCell86.StylePriority.UseBorders = false;
            this.xrTableCell86.StylePriority.UseFont = false;
            this.xrTableCell86.StylePriority.UseTextAlignment = false;
            this.xrTableCell86.Text = "WFID";
            this.xrTableCell86.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell83
            // 
            this.xrTableCell83.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell83.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell83.Location = new System.Drawing.Point(472, 0);
            this.xrTableCell83.Multiline = true;
            this.xrTableCell83.Name = "xrTableCell83";
            this.xrTableCell83.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell83.Size = new System.Drawing.Size(43, 47);
            this.xrTableCell83.StylePriority.UseBorders = false;
            this.xrTableCell83.StylePriority.UseFont = false;
            this.xrTableCell83.StylePriority.UseTextAlignment = false;
            this.xrTableCell83.Text = "WF \r\nName";
            this.xrTableCell83.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableRow19
            // 
            this.xrTableRow19.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell33,
            this.xrTableCell75,
            this.xrTableCell72,
            this.xrTableCell34,
            this.xrTableCell78,
            this.xrTableCell81,
            this.xrTableCell35,
            this.xrTableCell87,
            this.xrTableCell84});
            this.xrTableRow19.Name = "xrTableRow19";
            this.xrTableRow19.Size = new System.Drawing.Size(515, 46);
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell33.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell33.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(39, 46);
            this.xrTableCell33.StylePriority.UseBorders = false;
            this.xrTableCell33.StylePriority.UseFont = false;
            this.xrTableCell33.StylePriority.UseTextAlignment = false;
            this.xrTableCell33.Text = "組裝線";
            this.xrTableCell33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell75
            // 
            this.xrTableCell75.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell75.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell75.Location = new System.Drawing.Point(39, 0);
            this.xrTableCell75.Name = "xrTableCell75";
            this.xrTableCell75.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell75.Size = new System.Drawing.Size(68, 46);
            this.xrTableCell75.StylePriority.UseBorders = false;
            this.xrTableCell75.StylePriority.UseFont = false;
            this.xrTableCell75.StylePriority.UseTextAlignment = false;
            this.xrTableCell75.Text = "工程號";
            this.xrTableCell75.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell72
            // 
            this.xrTableCell72.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell72.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell72.Location = new System.Drawing.Point(107, 0);
            this.xrTableCell72.Name = "xrTableCell72";
            this.xrTableCell72.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell72.Size = new System.Drawing.Size(64, 46);
            this.xrTableCell72.StylePriority.UseBorders = false;
            this.xrTableCell72.StylePriority.UseFont = false;
            this.xrTableCell72.StylePriority.UseTextAlignment = false;
            this.xrTableCell72.Text = "客款號";
            this.xrTableCell72.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell34
            // 
            this.xrTableCell34.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell34.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell34.Location = new System.Drawing.Point(171, 0);
            this.xrTableCell34.Name = "xrTableCell34";
            this.xrTableCell34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell34.Size = new System.Drawing.Size(48, 46);
            this.xrTableCell34.StylePriority.UseBorders = false;
            this.xrTableCell34.StylePriority.UseFont = false;
            this.xrTableCell34.StylePriority.UseTextAlignment = false;
            this.xrTableCell34.Text = "數頁件數";
            this.xrTableCell34.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell78
            // 
            this.xrTableCell78.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell78.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell78.Location = new System.Drawing.Point(219, 0);
            this.xrTableCell78.Multiline = true;
            this.xrTableCell78.Name = "xrTableCell78";
            this.xrTableCell78.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell78.Size = new System.Drawing.Size(23, 46);
            this.xrTableCell78.StylePriority.UseBorders = false;
            this.xrTableCell78.StylePriority.UseFont = false;
            this.xrTableCell78.StylePriority.UseTextAlignment = false;
            this.xrTableCell78.Text = "性\r\n工\r\n序";
            this.xrTableCell78.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell81
            // 
            this.xrTableCell81.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell81.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell81.Location = new System.Drawing.Point(242, 0);
            this.xrTableCell81.Multiline = true;
            this.xrTableCell81.Name = "xrTableCell81";
            this.xrTableCell81.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell81.Size = new System.Drawing.Size(44, 46);
            this.xrTableCell81.StylePriority.UseBorders = false;
            this.xrTableCell81.StylePriority.UseFont = false;
            this.xrTableCell81.StylePriority.UseTextAlignment = false;
            this.xrTableCell81.Text = "工序\r\n代號";
            this.xrTableCell81.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell35
            // 
            this.xrTableCell35.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell35.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell35.Location = new System.Drawing.Point(286, 0);
            this.xrTableCell35.Name = "xrTableCell35";
            this.xrTableCell35.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell35.Size = new System.Drawing.Size(142, 46);
            this.xrTableCell35.StylePriority.UseBorders = false;
            this.xrTableCell35.StylePriority.UseFont = false;
            this.xrTableCell35.StylePriority.UseTextAlignment = false;
            this.xrTableCell35.Text = "工序名稱";
            this.xrTableCell35.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell87
            // 
            this.xrTableCell87.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell87.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell87.Location = new System.Drawing.Point(428, 0);
            this.xrTableCell87.Multiline = true;
            this.xrTableCell87.Name = "xrTableCell87";
            this.xrTableCell87.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell87.Size = new System.Drawing.Size(44, 46);
            this.xrTableCell87.StylePriority.UseBorders = false;
            this.xrTableCell87.StylePriority.UseFont = false;
            this.xrTableCell87.StylePriority.UseTextAlignment = false;
            this.xrTableCell87.Text = "勞動\r\n者ID";
            this.xrTableCell87.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell84
            // 
            this.xrTableCell84.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell84.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell84.Location = new System.Drawing.Point(472, 0);
            this.xrTableCell84.Multiline = true;
            this.xrTableCell84.Name = "xrTableCell84";
            this.xrTableCell84.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell84.Size = new System.Drawing.Size(43, 46);
            this.xrTableCell84.StylePriority.UseBorders = false;
            this.xrTableCell84.StylePriority.UseFont = false;
            this.xrTableCell84.StylePriority.UseTextAlignment = false;
            this.xrTableCell84.Text = "勞動者\r\n名稱";
            this.xrTableCell84.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableRow20
            // 
            this.xrTableRow20.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell38,
            this.xrTableCell76,
            this.xrTableCell73,
            this.xrTableCell69,
            this.xrTableCell79,
            this.xrTableCell82,
            this.xrTableCell70,
            this.xrTableCell88,
            this.xrTableCell85});
            this.xrTableRow20.Name = "xrTableRow20";
            this.xrTableRow20.Size = new System.Drawing.Size(515, 45);
            // 
            // xrTableCell38
            // 
            this.xrTableCell38.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell38.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell38.Name = "xrTableCell38";
            this.xrTableCell38.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell38.Size = new System.Drawing.Size(39, 45);
            this.xrTableCell38.StylePriority.UseFont = false;
            // 
            // xrTableCell76
            // 
            this.xrTableCell76.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell76.Location = new System.Drawing.Point(39, 0);
            this.xrTableCell76.Name = "xrTableCell76";
            this.xrTableCell76.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell76.Size = new System.Drawing.Size(68, 45);
            this.xrTableCell76.StylePriority.UseFont = false;
            // 
            // xrTableCell73
            // 
            this.xrTableCell73.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell73.Location = new System.Drawing.Point(107, 0);
            this.xrTableCell73.Name = "xrTableCell73";
            this.xrTableCell73.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell73.Size = new System.Drawing.Size(64, 45);
            this.xrTableCell73.StylePriority.UseFont = false;
            // 
            // xrTableCell69
            // 
            this.xrTableCell69.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell69.Location = new System.Drawing.Point(171, 0);
            this.xrTableCell69.Name = "xrTableCell69";
            this.xrTableCell69.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell69.Size = new System.Drawing.Size(48, 45);
            this.xrTableCell69.StylePriority.UseFont = false;
            // 
            // xrTableCell79
            // 
            this.xrTableCell79.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell79.Location = new System.Drawing.Point(219, 0);
            this.xrTableCell79.Name = "xrTableCell79";
            this.xrTableCell79.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell79.Size = new System.Drawing.Size(23, 45);
            this.xrTableCell79.StylePriority.UseFont = false;
            // 
            // xrTableCell82
            // 
            this.xrTableCell82.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell82.Location = new System.Drawing.Point(242, 0);
            this.xrTableCell82.Name = "xrTableCell82";
            this.xrTableCell82.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell82.Size = new System.Drawing.Size(44, 45);
            this.xrTableCell82.StylePriority.UseFont = false;
            // 
            // xrTableCell70
            // 
            this.xrTableCell70.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell70.Location = new System.Drawing.Point(286, 0);
            this.xrTableCell70.Name = "xrTableCell70";
            this.xrTableCell70.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell70.Size = new System.Drawing.Size(142, 45);
            this.xrTableCell70.StylePriority.UseFont = false;
            // 
            // xrTableCell88
            // 
            this.xrTableCell88.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell88.Location = new System.Drawing.Point(428, 0);
            this.xrTableCell88.Name = "xrTableCell88";
            this.xrTableCell88.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell88.Size = new System.Drawing.Size(44, 45);
            this.xrTableCell88.StylePriority.UseFont = false;
            // 
            // xrTableCell85
            // 
            this.xrTableCell85.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell85.Location = new System.Drawing.Point(472, 0);
            this.xrTableCell85.Name = "xrTableCell85";
            this.xrTableCell85.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell85.Size = new System.Drawing.Size(43, 45);
            this.xrTableCell85.StylePriority.UseFont = false;
            // 
            // xrTable7
            // 
            this.xrTable7.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable7.Location = new System.Drawing.Point(700, 117);
            this.xrTable7.Name = "xrTable7";
            this.xrTable7.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5,
            this.xrTableRow10,
            this.xrTableRow9});
            this.xrTable7.Size = new System.Drawing.Size(300, 138);
            this.xrTable7.StylePriority.UseBorders = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell17});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(300, 46);
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell17.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(300, 46);
            this.xrTableCell17.StylePriority.UseFont = false;
            this.xrTableCell17.StylePriority.UseTextAlignment = false;
            this.xrTableCell17.Text = "Audited Result 檢定結果";
            this.xrTableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow10
            // 
            this.xrTableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell23,
            this.xrTableCell26});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(300, 46);
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell23.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell23.Multiline = true;
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(129, 46);
            this.xrTableCell23.StylePriority.UseFont = false;
            this.xrTableCell23.StylePriority.UseTextAlignment = false;
            this.xrTableCell23.Text = "Result b/d\r\n結果次數分類";
            this.xrTableCell23.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell26.Location = new System.Drawing.Point(129, 0);
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(171, 46);
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
            this.xrTableRow9.Size = new System.Drawing.Size(300, 46);
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell20.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(37, 46);
            this.xrTableCell20.StylePriority.UseFont = false;
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "FPY合格(P)\r\n/次數";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell18.Location = new System.Drawing.Point(37, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell18.StylePriority.UseFont = false;
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "2PY(+)\r\n合格(P)\r\n/次數";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell21.Location = new System.Drawing.Point(79, 0);
            this.xrTableCell21.Multiline = true;
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(50, 46);
            this.xrTableCell21.StylePriority.UseFont = false;
            this.xrTableCell21.StylePriority.UseTextAlignment = false;
            this.xrTableCell21.Text = "Yield\r\n Failure\r\n通量不過";
            this.xrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell19.Location = new System.Drawing.Point(129, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell19.StylePriority.UseFont = false;
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "(P)\r\n合格\r\n/件數";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell27.Location = new System.Drawing.Point(171, 0);
            this.xrTableCell27.Multiline = true;
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(42, 46);
            this.xrTableCell27.StylePriority.UseFont = false;
            this.xrTableCell27.StylePriority.UseTextAlignment = false;
            this.xrTableCell27.Text = "(F)\r\n不合格\r\n/件數";
            this.xrTableCell27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell24
            // 
            this.xrTableCell24.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell24.Location = new System.Drawing.Point(213, 0);
            this.xrTableCell24.Multiline = true;
            this.xrTableCell24.Name = "xrTableCell24";
            this.xrTableCell24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell24.Size = new System.Drawing.Size(44, 46);
            this.xrTableCell24.StylePriority.UseFont = false;
            this.xrTableCell24.StylePriority.UseTextAlignment = false;
            this.xrTableCell24.Text = "(U)\r\n未分類\r\n/件數";
            this.xrTableCell24.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell22.Location = new System.Drawing.Point(257, 0);
            this.xrTableCell22.Multiline = true;
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(43, 46);
            this.xrTableCell22.StylePriority.UseFont = false;
            this.xrTableCell22.StylePriority.UseTextAlignment = false;
            this.xrTableCell22.Text = "(S)\r\n廢棄\r\n/件數";
            this.xrTableCell22.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel2.Location = new System.Drawing.Point(1008, 75);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(33, 25);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = "頁碼:";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrPageInfo1.Location = new System.Drawing.Point(1050, 75);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(50, 25);
            this.xrPageInfo1.StylePriority.UseFont = false;
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel11
            // 
            this.xrLabel11.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel11.Location = new System.Drawing.Point(242, 75);
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(125, 25);
            this.xrLabel11.StylePriority.UseFont = false;
            this.xrLabel11.StylePriority.UseTextAlignment = false;
            this.xrLabel11.Text = "Work Shop(車間)";
            this.xrLabel11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel10
            // 
            this.xrLabel10.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel10.Location = new System.Drawing.Point(50, 75);
            this.xrLabel10.Name = "xrLabel10";
            this.xrLabel10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel10.Size = new System.Drawing.Size(92, 25);
            this.xrLabel10.StylePriority.UseFont = false;
            this.xrLabel10.StylePriority.UseTextAlignment = false;
            this.xrLabel10.Text = "Factory(工廠):";
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
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel3.Location = new System.Drawing.Point(217, 42);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(625, 25);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.StylePriority.UseTextAlignment = false;
            this.xrLabel3.Text = "巡检定工序报表";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lbl_DataTo
            // 
            this.lbl_DataTo.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DataTo.Location = new System.Drawing.Point(817, 75);
            this.lbl_DataTo.Name = "lbl_DataTo";
            this.lbl_DataTo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DataTo.Size = new System.Drawing.Size(83, 25);
            this.lbl_DataTo.StylePriority.UseFont = false;
            this.lbl_DataTo.StylePriority.UseTextAlignment = false;
            this.lbl_DataTo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel15
            // 
            this.xrLabel15.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel15.Location = new System.Drawing.Point(783, 75);
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
            this.lbl_DateForm.Location = new System.Drawing.Point(683, 75);
            this.lbl_DateForm.Name = "lbl_DateForm";
            this.lbl_DateForm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DateForm.Size = new System.Drawing.Size(83, 25);
            this.lbl_DateForm.StylePriority.UseFont = false;
            this.lbl_DateForm.StylePriority.UseTextAlignment = false;
            this.lbl_DateForm.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel13.Location = new System.Drawing.Point(475, 75);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(192, 25);
            this.xrLabel13.StylePriority.UseFont = false;
            this.xrLabel13.StylePriority.UseTextAlignment = false;
            this.xrLabel13.Text = "Time Period(時間段): From";
            this.xrLabel13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(17, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(1100, 35);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Mobile Auditing Operation Report";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.Detail.Height = 18;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
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
            this.xrTableCell7,
            this.column_OPTCode,
            this.column_OPTName,
            this.column_WFID,
            this.column_WFName,
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
            this.column_sortid,
            this.column_pass});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(1087, 18);
            // 
            // column_Line
            // 
            this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Line.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_Line.Location = new System.Drawing.Point(0, 0);
            this.column_Line.Name = "column_Line";
            this.column_Line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Line.Size = new System.Drawing.Size(38, 18);
            this.column_Line.StylePriority.UseBorders = false;
            this.column_Line.StylePriority.UseFont = false;
            this.column_Line.StylePriority.UseTextAlignment = false;
            this.column_Line.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_Project
            // 
            this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Project.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_Project.Location = new System.Drawing.Point(38, 0);
            this.column_Project.Name = "column_Project";
            this.column_Project.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Project.Size = new System.Drawing.Size(68, 18);
            this.column_Project.StylePriority.UseBorders = false;
            this.column_Project.StylePriority.UseFont = false;
            this.column_Project.StylePriority.UseTextAlignment = false;
            this.column_Project.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_CustStyle
            // 
            this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CustStyle.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_CustStyle.Location = new System.Drawing.Point(106, 0);
            this.column_CustStyle.Name = "column_CustStyle";
            this.column_CustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CustStyle.Size = new System.Drawing.Size(64, 18);
            this.column_CustStyle.StylePriority.UseBorders = false;
            this.column_CustStyle.StylePriority.UseFont = false;
            this.column_CustStyle.StylePriority.UseTextAlignment = false;
            this.column_CustStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // col_qnqty
            // 
            this.col_qnqty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_qnqty.Font = new System.Drawing.Font("Times New Roman", 7F);
            this.col_qnqty.Location = new System.Drawing.Point(170, 0);
            this.col_qnqty.Name = "col_qnqty";
            this.col_qnqty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_qnqty.Size = new System.Drawing.Size(48, 18);
            this.col_qnqty.StylePriority.UseBorders = false;
            this.col_qnqty.StylePriority.UseFont = false;
            this.col_qnqty.StylePriority.UseTextAlignment = false;
            this.col_qnqty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell7.Location = new System.Drawing.Point(218, 0);
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(23, 18);
            this.xrTableCell7.StylePriority.UseBorders = false;
            this.xrTableCell7.StylePriority.UseFont = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_OPTCode
            // 
            this.column_OPTCode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTCode.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_OPTCode.Location = new System.Drawing.Point(241, 0);
            this.column_OPTCode.Name = "column_OPTCode";
            this.column_OPTCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTCode.Size = new System.Drawing.Size(44, 18);
            this.column_OPTCode.StylePriority.UseBorders = false;
            this.column_OPTCode.StylePriority.UseFont = false;
            this.column_OPTCode.StylePriority.UseTextAlignment = false;
            this.column_OPTCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_OPTName
            // 
            this.column_OPTName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTName.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_OPTName.Location = new System.Drawing.Point(285, 0);
            this.column_OPTName.Name = "column_OPTName";
            this.column_OPTName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTName.Size = new System.Drawing.Size(142, 18);
            this.column_OPTName.StylePriority.UseBorders = false;
            this.column_OPTName.StylePriority.UseFont = false;
            this.column_OPTName.StylePriority.UseTextAlignment = false;
            this.column_OPTName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_WFID
            // 
            this.column_WFID.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFID.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_WFID.Location = new System.Drawing.Point(427, 0);
            this.column_WFID.Name = "column_WFID";
            this.column_WFID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFID.Size = new System.Drawing.Size(44, 18);
            this.column_WFID.StylePriority.UseBorders = false;
            this.column_WFID.StylePriority.UseFont = false;
            this.column_WFID.StylePriority.UseTextAlignment = false;
            this.column_WFID.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_WFName
            // 
            this.column_WFName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFName.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_WFName.Location = new System.Drawing.Point(471, 0);
            this.column_WFName.Name = "column_WFName";
            this.column_WFName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFName.Size = new System.Drawing.Size(43, 18);
            this.column_WFName.StylePriority.UseBorders = false;
            this.column_WFName.StylePriority.UseFont = false;
            this.column_WFName.StylePriority.UseTextAlignment = false;
            this.column_WFName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // col_FirstChk
            // 
            this.col_FirstChk.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_FirstChk.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_FirstChk.Location = new System.Drawing.Point(514, 0);
            this.col_FirstChk.Name = "col_FirstChk";
            this.col_FirstChk.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_FirstChk.Size = new System.Drawing.Size(30, 18);
            this.col_FirstChk.StylePriority.UseBorders = false;
            this.col_FirstChk.StylePriority.UseFont = false;
            this.col_FirstChk.StylePriority.UseTextAlignment = false;
            this.col_FirstChk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_Rechk
            // 
            this.col_Rechk.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_Rechk.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_Rechk.Location = new System.Drawing.Point(544, 0);
            this.col_Rechk.Name = "col_Rechk";
            this.col_Rechk.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_Rechk.Size = new System.Drawing.Size(36, 18);
            this.col_Rechk.StylePriority.UseBorders = false;
            this.col_Rechk.StylePriority.UseFont = false;
            this.col_Rechk.StylePriority.UseTextAlignment = false;
            this.col_Rechk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_totalchk
            // 
            this.col_totalchk.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_totalchk.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_totalchk.Location = new System.Drawing.Point(580, 0);
            this.col_totalchk.Name = "col_totalchk";
            this.col_totalchk.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_totalchk.Size = new System.Drawing.Size(28, 18);
            this.col_totalchk.StylePriority.UseBorders = false;
            this.col_totalchk.StylePriority.UseFont = false;
            this.col_totalchk.StylePriority.UseTextAlignment = false;
            this.col_totalchk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqty
            // 
            this.col_chkqty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_chkqty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_chkqty.Location = new System.Drawing.Point(608, 0);
            this.col_chkqty.Name = "col_chkqty";
            this.col_chkqty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_chkqty.Size = new System.Drawing.Size(50, 18);
            this.col_chkqty.StylePriority.UseBorders = false;
            this.col_chkqty.StylePriority.UseFont = false;
            this.col_chkqty.StylePriority.UseTextAlignment = false;
            this.col_chkqty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_passtimes
            // 
            this.column_passtimes.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_passtimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_passtimes.Location = new System.Drawing.Point(658, 0);
            this.column_passtimes.Name = "column_passtimes";
            this.column_passtimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_passtimes.Size = new System.Drawing.Size(36, 18);
            this.column_passtimes.StylePriority.UseBorders = false;
            this.column_passtimes.StylePriority.UseFont = false;
            this.column_passtimes.StylePriority.UseTextAlignment = false;
            this.column_passtimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimes
            // 
            this.col_repasstimes.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_repasstimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_repasstimes.Location = new System.Drawing.Point(694, 0);
            this.col_repasstimes.Name = "col_repasstimes";
            this.col_repasstimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimes.Size = new System.Drawing.Size(42, 18);
            this.col_repasstimes.StylePriority.UseBorders = false;
            this.col_repasstimes.StylePriority.UseFont = false;
            this.col_repasstimes.StylePriority.UseTextAlignment = false;
            this.col_repasstimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFail
            // 
            this.col_YieldFail.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_YieldFail.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_YieldFail.Location = new System.Drawing.Point(736, 0);
            this.col_YieldFail.Name = "col_YieldFail";
            this.col_YieldFail.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFail.Size = new System.Drawing.Size(50, 18);
            this.col_YieldFail.StylePriority.UseBorders = false;
            this.col_YieldFail.StylePriority.UseFont = false;
            this.col_YieldFail.StylePriority.UseTextAlignment = false;
            this.col_YieldFail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_P
            // 
            this.column_P.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_P.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_P.Location = new System.Drawing.Point(786, 0);
            this.column_P.Name = "column_P";
            this.column_P.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_P.Size = new System.Drawing.Size(42, 18);
            this.column_P.StylePriority.UseBorders = false;
            this.column_P.StylePriority.UseFont = false;
            this.column_P.StylePriority.UseTextAlignment = false;
            this.column_P.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_F
            // 
            this.column_F.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_F.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_F.Location = new System.Drawing.Point(828, 0);
            this.column_F.Name = "column_F";
            this.column_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_F.Size = new System.Drawing.Size(42, 18);
            this.column_F.StylePriority.UseBorders = false;
            this.column_F.StylePriority.UseFont = false;
            this.column_F.StylePriority.UseTextAlignment = false;
            this.column_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_U
            // 
            this.column_U.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_U.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_U.Location = new System.Drawing.Point(870, 0);
            this.column_U.Name = "column_U";
            this.column_U.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_U.Size = new System.Drawing.Size(44, 18);
            this.column_U.StylePriority.UseBorders = false;
            this.column_U.StylePriority.UseFont = false;
            this.column_U.StylePriority.UseTextAlignment = false;
            this.column_U.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_S
            // 
            this.column_S.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_S.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_S.Location = new System.Drawing.Point(914, 0);
            this.column_S.Name = "column_S";
            this.column_S.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_S.Size = new System.Drawing.Size(43, 18);
            this.column_S.StylePriority.UseBorders = false;
            this.column_S.StylePriority.UseFont = false;
            this.column_S.StylePriority.UseTextAlignment = false;
            this.column_S.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_fpy
            // 
            this.column_fpy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_fpy.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_fpy.Location = new System.Drawing.Point(957, 0);
            this.column_fpy.Name = "column_fpy";
            this.column_fpy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_fpy.Size = new System.Drawing.Size(42, 18);
            this.column_fpy.StylePriority.UseBorders = false;
            this.column_fpy.StylePriority.UseFont = false;
            this.column_fpy.StylePriority.UseTextAlignment = false;
            this.column_fpy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_sortid
            // 
            this.column_sortid.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_sortid.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_sortid.Location = new System.Drawing.Point(999, 0);
            this.column_sortid.Name = "column_sortid";
            this.column_sortid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_sortid.Size = new System.Drawing.Size(50, 18);
            this.column_sortid.StylePriority.UseBorders = false;
            this.column_sortid.StylePriority.UseFont = false;
            this.column_sortid.StylePriority.UseTextAlignment = false;
            this.column_sortid.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_pass
            // 
            this.column_pass.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_pass.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_pass.Location = new System.Drawing.Point(1049, 0);
            this.column_pass.Name = "column_pass";
            this.column_pass.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_pass.Size = new System.Drawing.Size(38, 18);
            this.column_pass.StylePriority.UseBorders = false;
            this.column_pass.StylePriority.UseFont = false;
            this.column_pass.StylePriority.UseTextAlignment = false;
            this.column_pass.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrAverage,
            this.xrLabel5,
            this.xrTable4,
            this.xrLabel4});
            this.ReportFooter.Height = 54;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // xrAverage
            // 
            this.xrAverage.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrAverage.Location = new System.Drawing.Point(1000, 33);
            this.xrAverage.Name = "xrAverage";
            this.xrAverage.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrAverage.Size = new System.Drawing.Size(58, 17);
            this.xrAverage.StylePriority.UseFont = false;
            this.xrAverage.StylePriority.UseTextAlignment = false;
            this.xrAverage.Text = "xrAverage";
            this.xrAverage.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel5
            // 
            this.xrLabel5.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrLabel5.Location = new System.Drawing.Point(8, 33);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(42, 17);
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.Text = "Wt.ave :";
            // 
            // xrTable4
            // 
            this.xrTable4.Location = new System.Drawing.Point(42, 0);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow6});
            this.xrTable4.Size = new System.Drawing.Size(1087, 18);
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrlinetotal,
            this.xrprojtotal,
            this.xrstylettl,
            this.col_qnqtyT,
            this.col_KeyOpt,
            this.xropttotal,
            this.xrTableCell29,
            this.xrWorkers,
            this.xrTableCell30,
            this.xrtotalfirst,
            this.col_RechkT1,
            this.col_totalchkT1,
            this.col_chkqtyT1,
            this.col_passtimesT1,
            this.col_repasstimesT1,
            this.col_YieldFailT,
            this.column_PT1,
            this.column_FT1,
            this.column_UT1,
            this.column_ST1,
            this.xrTableCell32,
            this.xrTableCell36,
            this.xrTableCell37});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(1087, 18);
            // 
            // xrlinetotal
            // 
            this.xrlinetotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrlinetotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrlinetotal.Location = new System.Drawing.Point(0, 0);
            this.xrlinetotal.Name = "xrlinetotal";
            this.xrlinetotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrlinetotal.Size = new System.Drawing.Size(38, 18);
            this.xrlinetotal.StylePriority.UseBorders = false;
            this.xrlinetotal.StylePriority.UseFont = false;
            this.xrlinetotal.StylePriority.UseTextAlignment = false;
            this.xrlinetotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrprojtotal
            // 
            this.xrprojtotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrprojtotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrprojtotal.Location = new System.Drawing.Point(38, 0);
            this.xrprojtotal.Name = "xrprojtotal";
            this.xrprojtotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrprojtotal.Size = new System.Drawing.Size(68, 18);
            this.xrprojtotal.StylePriority.UseBorders = false;
            this.xrprojtotal.StylePriority.UseFont = false;
            this.xrprojtotal.StylePriority.UseTextAlignment = false;
            this.xrprojtotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrstylettl
            // 
            this.xrstylettl.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrstylettl.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrstylettl.Location = new System.Drawing.Point(106, 0);
            this.xrstylettl.Name = "xrstylettl";
            this.xrstylettl.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrstylettl.Size = new System.Drawing.Size(64, 18);
            this.xrstylettl.StylePriority.UseBorders = false;
            this.xrstylettl.StylePriority.UseFont = false;
            this.xrstylettl.StylePriority.UseTextAlignment = false;
            this.xrstylettl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_qnqtyT
            // 
            this.col_qnqtyT.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_qnqtyT.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_qnqtyT.Location = new System.Drawing.Point(170, 0);
            this.col_qnqtyT.Name = "col_qnqtyT";
            this.col_qnqtyT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_qnqtyT.Size = new System.Drawing.Size(48, 18);
            this.col_qnqtyT.StylePriority.UseBorders = false;
            this.col_qnqtyT.StylePriority.UseFont = false;
            this.col_qnqtyT.StylePriority.UseTextAlignment = false;
            this.col_qnqtyT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_KeyOpt
            // 
            this.col_KeyOpt.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_KeyOpt.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_KeyOpt.Location = new System.Drawing.Point(218, 0);
            this.col_KeyOpt.Name = "col_KeyOpt";
            this.col_KeyOpt.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_KeyOpt.Size = new System.Drawing.Size(23, 18);
            this.col_KeyOpt.StylePriority.UseBorders = false;
            this.col_KeyOpt.StylePriority.UseFont = false;
            // 
            // xropttotal
            // 
            this.xropttotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xropttotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xropttotal.Location = new System.Drawing.Point(241, 0);
            this.xropttotal.Name = "xropttotal";
            this.xropttotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xropttotal.Size = new System.Drawing.Size(44, 18);
            this.xropttotal.StylePriority.UseBorders = false;
            this.xropttotal.StylePriority.UseFont = false;
            this.xropttotal.StylePriority.UseTextAlignment = false;
            this.xropttotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell29.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell29.Location = new System.Drawing.Point(285, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(142, 18);
            this.xrTableCell29.StylePriority.UseBorders = false;
            this.xrTableCell29.StylePriority.UseFont = false;
            // 
            // xrWorkers
            // 
            this.xrWorkers.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrWorkers.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrWorkers.Location = new System.Drawing.Point(427, 0);
            this.xrWorkers.Name = "xrWorkers";
            this.xrWorkers.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrWorkers.Size = new System.Drawing.Size(44, 18);
            this.xrWorkers.StylePriority.UseBorders = false;
            this.xrWorkers.StylePriority.UseFont = false;
            this.xrWorkers.StylePriority.UseTextAlignment = false;
            this.xrWorkers.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell30
            // 
            this.xrTableCell30.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell30.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell30.Location = new System.Drawing.Point(471, 0);
            this.xrTableCell30.Name = "xrTableCell30";
            this.xrTableCell30.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell30.Size = new System.Drawing.Size(43, 18);
            this.xrTableCell30.StylePriority.UseBorders = false;
            this.xrTableCell30.StylePriority.UseFont = false;
            this.xrTableCell30.StylePriority.UseTextAlignment = false;
            this.xrTableCell30.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrtotalfirst
            // 
            this.xrtotalfirst.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrtotalfirst.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrtotalfirst.Location = new System.Drawing.Point(514, 0);
            this.xrtotalfirst.Name = "xrtotalfirst";
            this.xrtotalfirst.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrtotalfirst.Size = new System.Drawing.Size(30, 18);
            this.xrtotalfirst.StylePriority.UseBorders = false;
            this.xrtotalfirst.StylePriority.UseFont = false;
            this.xrtotalfirst.StylePriority.UseTextAlignment = false;
            this.xrtotalfirst.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_RechkT1
            // 
            this.col_RechkT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_RechkT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_RechkT1.Location = new System.Drawing.Point(544, 0);
            this.col_RechkT1.Name = "col_RechkT1";
            this.col_RechkT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_RechkT1.Size = new System.Drawing.Size(37, 18);
            this.col_RechkT1.StylePriority.UseBorders = false;
            this.col_RechkT1.StylePriority.UseFont = false;
            this.col_RechkT1.StylePriority.UseTextAlignment = false;
            this.col_RechkT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_totalchkT1
            // 
            this.col_totalchkT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_totalchkT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_totalchkT1.Location = new System.Drawing.Point(581, 0);
            this.col_totalchkT1.Name = "col_totalchkT1";
            this.col_totalchkT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_totalchkT1.Size = new System.Drawing.Size(27, 18);
            this.col_totalchkT1.StylePriority.UseBorders = false;
            this.col_totalchkT1.StylePriority.UseFont = false;
            this.col_totalchkT1.StylePriority.UseTextAlignment = false;
            this.col_totalchkT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqtyT1
            // 
            this.col_chkqtyT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_chkqtyT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_chkqtyT1.Location = new System.Drawing.Point(608, 0);
            this.col_chkqtyT1.Name = "col_chkqtyT1";
            this.col_chkqtyT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_chkqtyT1.Size = new System.Drawing.Size(50, 18);
            this.col_chkqtyT1.StylePriority.UseBorders = false;
            this.col_chkqtyT1.StylePriority.UseFont = false;
            this.col_chkqtyT1.StylePriority.UseTextAlignment = false;
            this.col_chkqtyT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_passtimesT1
            // 
            this.col_passtimesT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_passtimesT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_passtimesT1.Location = new System.Drawing.Point(658, 0);
            this.col_passtimesT1.Name = "col_passtimesT1";
            this.col_passtimesT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_passtimesT1.Size = new System.Drawing.Size(36, 18);
            this.col_passtimesT1.StylePriority.UseBorders = false;
            this.col_passtimesT1.StylePriority.UseFont = false;
            this.col_passtimesT1.StylePriority.UseTextAlignment = false;
            this.col_passtimesT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimesT1
            // 
            this.col_repasstimesT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_repasstimesT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_repasstimesT1.Location = new System.Drawing.Point(694, 0);
            this.col_repasstimesT1.Name = "col_repasstimesT1";
            this.col_repasstimesT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimesT1.Size = new System.Drawing.Size(42, 18);
            this.col_repasstimesT1.StylePriority.UseBorders = false;
            this.col_repasstimesT1.StylePriority.UseFont = false;
            this.col_repasstimesT1.StylePriority.UseTextAlignment = false;
            this.col_repasstimesT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFailT
            // 
            this.col_YieldFailT.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_YieldFailT.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_YieldFailT.Location = new System.Drawing.Point(736, 0);
            this.col_YieldFailT.Name = "col_YieldFailT";
            this.col_YieldFailT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFailT.Size = new System.Drawing.Size(50, 18);
            this.col_YieldFailT.StylePriority.UseBorders = false;
            this.col_YieldFailT.StylePriority.UseFont = false;
            this.col_YieldFailT.StylePriority.UseTextAlignment = false;
            this.col_YieldFailT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_PT1
            // 
            this.column_PT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_PT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_PT1.Location = new System.Drawing.Point(786, 0);
            this.column_PT1.Name = "column_PT1";
            this.column_PT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_PT1.Size = new System.Drawing.Size(42, 18);
            this.column_PT1.StylePriority.UseBorders = false;
            this.column_PT1.StylePriority.UseFont = false;
            this.column_PT1.StylePriority.UseTextAlignment = false;
            this.column_PT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_FT1
            // 
            this.column_FT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_FT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_FT1.Location = new System.Drawing.Point(828, 0);
            this.column_FT1.Name = "column_FT1";
            this.column_FT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_FT1.Size = new System.Drawing.Size(42, 18);
            this.column_FT1.StylePriority.UseBorders = false;
            this.column_FT1.StylePriority.UseFont = false;
            this.column_FT1.StylePriority.UseTextAlignment = false;
            this.column_FT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_UT1
            // 
            this.column_UT1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_UT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_UT1.Location = new System.Drawing.Point(870, 0);
            this.column_UT1.Name = "column_UT1";
            this.column_UT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_UT1.Size = new System.Drawing.Size(44, 18);
            this.column_UT1.StylePriority.UseBorders = false;
            this.column_UT1.StylePriority.UseFont = false;
            this.column_UT1.StylePriority.UseTextAlignment = false;
            this.column_UT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_ST1
            // 
            this.column_ST1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_ST1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_ST1.Location = new System.Drawing.Point(914, 0);
            this.column_ST1.Name = "column_ST1";
            this.column_ST1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_ST1.Size = new System.Drawing.Size(43, 18);
            this.column_ST1.StylePriority.UseBorders = false;
            this.column_ST1.StylePriority.UseFont = false;
            this.column_ST1.StylePriority.UseTextAlignment = false;
            this.column_ST1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell32.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell32.Location = new System.Drawing.Point(957, 0);
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(42, 18);
            this.xrTableCell32.StylePriority.UseBorders = false;
            this.xrTableCell32.StylePriority.UseFont = false;
            this.xrTableCell32.StylePriority.UseTextAlignment = false;
            this.xrTableCell32.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell36.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell36.Location = new System.Drawing.Point(999, 0);
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(50, 18);
            this.xrTableCell36.StylePriority.UseBorders = false;
            this.xrTableCell36.StylePriority.UseFont = false;
            this.xrTableCell36.StylePriority.UseTextAlignment = false;
            this.xrTableCell36.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell37
            // 
            this.xrTableCell37.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell37.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell37.Location = new System.Drawing.Point(1049, 0);
            this.xrTableCell37.Name = "xrTableCell37";
            this.xrTableCell37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell37.Size = new System.Drawing.Size(38, 18);
            this.xrTableCell37.StylePriority.UseBorders = false;
            this.xrTableCell37.StylePriority.UseFont = false;
            this.xrTableCell37.StylePriority.UseTextAlignment = false;
            this.xrTableCell37.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel4
            // 
            this.xrLabel4.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrLabel4.Location = new System.Drawing.Point(8, 0);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(27, 17);
            this.xrLabel4.StylePriority.UseFont = false;
            this.xrLabel4.StylePriority.UseTextAlignment = false;
            this.xrLabel4.Text = "Ttl:";
            this.xrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // rptQC_MasterAnalyzeOPT2_New
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(15, 20, 15, 24);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable13)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        private int _SumCheckQty = 0;
        private void columnF_CheckQty_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            foreach(object obj in e.CalculatedValues)
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
            column_fpy.Text = String.Format("{0:F}", gbs.FPY) ; //gbs.FPY.ToString();
            column_passtimes.Text = gbs.FirsPassTimes.ToString();
            this.column_sortid.Text = gbs.SortId <= 10 && gbs.FPY<Double.Parse("100.00") ? gbs.SortId.ToString() : "";
            this.col_YieldFail.Text = (gbs.TotalCheckTimes - gbs.FirsPassTimes - gbs.ReCheckPassTimes).ToString();

            //this.column_WFID.Text = string.IsNullOrEmpty(gbs.WFID) ? "" : "'" + gbs.WFID;

            //this.column_fpy.DataBindings.Add("Text", this.DataSource, "FPY");

          
            //if (i <= 10)
            //    this.col_firstpassper.Text = i.ToString();
            //else
            //    col_firstpassper.Text = "";

            i++;

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
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

            double aa = Convert.ToDouble(firstpass_qty * 100.00 / firstpassaudit_qty);


            this.xrAverage.Text = String.Format("{0:F}", aa);


            Proc_MasterAnalyzResult gbs = this.GetCurrentRow() as Proc_MasterAnalyzResult;
            col_qnqtyT.Text = gbs.QNQty_Total.ToString();
             
             
          //  Rpt_Sub1 rptsub = new Rpt_Sub1(SubRptData);
          //  this.xrSubreport1.ReportSource = rptsub; 


                //Math.Round(Convert.ToDouble(p_total * 100 /(p_total + f_total)), 2).ToString()+"%";
            
        }

        private void xrSubreport1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (_Flag=="A")
            {
                //xrLabel1.Text="Mobile Auditing Operation Report";
                //xrLabel3.Text ="巡检定工序报表";
                this.xrTableCell89.Text = "No.of Audit\r\n檢定次數";
                this.xrTableCell90.Text = "Audited Qty";
                this.xrTableCell91.Text = "己檢定\r\n件數";
                this.xrTableCell17.Text = "Audited Result 檢定結果";
            }
            else{
            
                //xrLabel1.Text="Mobile Inspecting Operation Report";
                //xrLabel3.Text ="巡检查工序报表";
                this.xrTableCell89.Text = "No.of Inspection\r\n檢查次數";
                this.xrTableCell90.Text = "Inspected Qty";
                this.xrTableCell91.Text = "己檢查\r\n件數";
                this.xrTableCell17.Text = "Inspected Result 檢查結果";
            }
        }
    
       
    }
}
