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
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell16;
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
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRLabel lbl_DataTo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel lbl_DateForm;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRTableCell col_SortId;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell column_S;
       
        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel lbl_Factory;
        private DevExpress.XtraReports.UI.XRLabel lbl_WorkShop;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell18;
        private DevExpress.XtraReports.UI.XRTableCell column_Line;
        private DevExpress.XtraReports.UI.XRTableCell column_Project;
        private DevExpress.XtraReports.UI.XRTableCell column_CustStyle;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRTable xrTable5;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow7;
        private DevExpress.XtraReports.UI.XRTableCell xrlinetotal;
        private DevExpress.XtraReports.UI.XRTableCell xrprojtotal;
        private DevExpress.XtraReports.UI.XRTableCell xrstyletotal;
        private DevExpress.XtraReports.UI.XRTableCell xropttotal;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell25;
        private DevExpress.XtraReports.UI.XRTableCell xrWorkers;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell29;
        private DevExpress.XtraReports.UI.XRLabel xrTitleCN;
        private DevExpress.XtraReports.UI.XRLabel xrTitleEn;
        private DevExpress.XtraReports.UI.XRLabel xrBy;
        private DevExpress.XtraReports.UI.XRTable xrTable6;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow8;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell30;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRTableCell column_P;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell col_FirstChk;
        private DevExpress.XtraReports.UI.XRTableCell xrtotalfirst;
        private DevExpress.XtraReports.UI.XRLabel xrAverage;
        private DevExpress.XtraReports.UI.XRTable xrTable8;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell22;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell31;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow10;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell26;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell23;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell11;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell8;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell17;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell21;
        private DevExpress.XtraReports.UI.XRTable xrTable4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell32;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell36;
        private DevExpress.XtraReports.UI.XRTableCell col_totalchk;
        private DevExpress.XtraReports.UI.XRTableCell col_chkqty;
        private DevExpress.XtraReports.UI.XRTableCell col_repasstimes;
        private DevExpress.XtraReports.UI.XRTableCell column_fpy;
        private DevExpress.XtraReports.UI.XRTableCell column_passtimes;
        private DevExpress.XtraReports.UI.XRTableCell col_RechkT1;
        private DevExpress.XtraReports.UI.XRTableCell col_totalchkT1;
        private DevExpress.XtraReports.UI.XRTableCell col_chkqtyT1;
        private DevExpress.XtraReports.UI.XRTableCell col_passtimesT1;
        private DevExpress.XtraReports.UI.XRTableCell col_repasstimesT1;
        private DevExpress.XtraReports.UI.XRTableCell column_PT1;
        private DevExpress.XtraReports.UI.XRTableCell column_FT1;
        private DevExpress.XtraReports.UI.XRTableCell column_UT1;
        private DevExpress.XtraReports.UI.XRTableCell column_ST1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell42;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell40;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRTable xrTable7;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell24;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell33;
        private DevExpress.XtraReports.UI.XRTableCell col_YieldFail;
        private DevExpress.XtraReports.UI.XRTableCell col_YieldFailT;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rptQC_MasterAnalyzeOPT2_New()
        {
            InitializeComponent();
        }

        public rptQC_MasterAnalyzeOPT2_New(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo,bool SortFPY)
        {
            InitializeComponent();

            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;

            System.Data.DataTable dt = SqlDataHelper.EXECSP_QC_MasterAnalyzeDT2(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, langID);
            this.DataSource = dt;

            this.lbl_Factory.Text = Factory;
            this.lbl_WorkShop.Text = WorkShop;
            //this.lbl_Customer.Text = Customer;
            //this.lbl_Style.Text = Style;
            //this.lbl_Style.Text = Style;
            //this.lbl_Project.Text = Project;
            //this.lbl_Line.Text = Line;
            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");


            this.column_OPTCode.DataBindings.Add("Text", this.DataSource, "OPTCode");
            this.column_OPTName.DataBindings.Add("Text", this.DataSource, "OPTName");
            this.column_WFID.DataBindings.Add("Text", this.DataSource, "WFID");
            this.column_WFName.DataBindings.Add("Text", this.DataSource, "WFHame");
            this.col_Rechk.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
           // this.columnF_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            this.column_P.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
           // this.col_SortId.DataBindings.Add("Text", this.DataSource, "CP", "{0:0.#}");
            this.column_pass.DataBindings.Add("Text", this.DataSource, "EV", "{0:0.#}");

            this.column_S.DataBindings.Add("Text", this.DataSource, "FPY");
            this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");
            col_FirstChk.DataBindings.Add("Text", this.DataSource, "ReCheck");

  


            if (lbl_DateForm.Text == lbl_DataTo.Text)
            {
                xrTitleCN.Text = "每日";
                xrTitleEn.Text = "Daily";
            }
            else
            {
                xrTitleCN.Text = "定期";
                xrTitleEn.Text = "Periodic";
            }

            xrBy.Text = SortFPY ? " - by FPY" : " - by Line";
          //  xrLabel1.Text = xrLabel1.Text + (SortFPY ? " - by FPY" : " - by Line");



        }

        bool _sortfpy;
        public rptQC_MasterAnalyzeOPT2_New(object datasouce, string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, bool SortFPY)
        {
            InitializeComponent();

            // System.Data.DataTable dt = SqlDataHelper.EXECSP_QC_MasterAnalyzeDT2( Factory,  WorkShop,  Customer,  Style,  Project,  Line, QC_timeForm, QC_timeTo);
            //this.DataSource = datasouce;

            var datalist = (IEnumerable<Proc_MasterAnalyzResult>)datasouce;

            List<Proc_MasterAnalyzResult> lst = datalist.OrderBy(p => p.FPY).ToList();
            for (int i = 1; i <=10; i++)
            {
                lst[i-1].SortId =i;
            }

             _sortfpy = SortFPY;

            if (SortFPY)
                this.DataSource = lst.OrderBy(p => p.FPY).ToList();
            else
                this.DataSource = lst.OrderBy(p => p.Line).ToList();

            this.lbl_Factory.Text = Factory;
            this.lbl_WorkShop.Text = WorkShop;
            //this.lbl_Customer.Text = Customer;
            //this.lbl_Style.Text = Style;
            //this.lbl_Style.Text = Style;
            //this.lbl_Project.Text = Project;
            //this.lbl_Line.Text = Line;
            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");


            this.column_OPTCode.DataBindings.Add("Text", this.DataSource, "OPTCode");
            this.column_OPTName.DataBindings.Add("Text", this.DataSource, "OPTName");
            this.column_WFID.DataBindings.Add("Text", this.DataSource, "WFID");
            this.column_WFName.DataBindings.Add("Text", this.DataSource, "WFHame");
        
            this.column_P.DataBindings.Add("Text", this.DataSource, "P_Qty", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F_Qty", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U_Qty", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S_Qty", "{0:0.#}");
            //this.col_SortId.DataBindings.Add("Text", this.DataSource, "SortId");
        

            //this.col_FirstChk.DataBindings.Add("Text", this.DataSource, "MA", "{0:0.#}"); //正檢次數

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
            


            // add by joseph
            if (lbl_DateForm.Text == lbl_DataTo.Text)
            {
                xrTitleCN.Text = "每日";
                xrTitleEn.Text = "Daily";
            }
            else
            {
                xrTitleCN.Text = "定期";
                xrTitleEn.Text = "Periodic";
            }

            xrBy.Text = SortFPY ? " - By FPY" : " - By Line";

         
        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRTableCell xrTableCell27;
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrBy = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTitleEn = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTitleCN = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel11 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel10 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_Factory = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DataTo = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel15 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DateForm = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable8 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow9 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell31 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable7 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow12 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell24 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.column_Line = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Project = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CustStyle = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.col_SortId = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_pass = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrAverage = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable6 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrlinetotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrprojtotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrstyletotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xropttotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrWorkers = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell42 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell40 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // xrTableCell27
            // 
            xrTableCell27.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            xrTableCell27.Location = new System.Drawing.Point(226, 0);
            xrTableCell27.Multiline = true;
            xrTableCell27.Name = "xrTableCell27";
            xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            xrTableCell27.Size = new System.Drawing.Size(44, 41);
            xrTableCell27.StylePriority.UseFont = false;
            xrTableCell27.Text = "(U)\r\n未分類\r\n/數量";
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrBy,
            this.xrTitleEn,
            this.xrTitleCN,
            this.xrLabel11,
            this.xrLabel10,
            this.lbl_Factory,
            this.lbl_WorkShop,
            this.xrLabel3,
            this.lbl_DataTo,
            this.xrLabel15,
            this.lbl_DateForm,
            this.xrLabel13,
            this.xrTable2,
            this.xrLabel1});
            this.PageHeader.Height = 275;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrBy
            // 
            this.xrBy.Font = new System.Drawing.Font("Arial Unicode MS", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Inch);
            this.xrBy.Location = new System.Drawing.Point(742, 17);
            this.xrBy.Name = "xrBy";
            this.xrBy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrBy.Size = new System.Drawing.Size(100, 25);
            this.xrBy.StylePriority.UseFont = false;
            this.xrBy.StylePriority.UseTextAlignment = false;
            this.xrBy.Text = "xrBy";
            this.xrBy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomLeft;
            // 
            // xrTitleEn
            // 
            this.xrTitleEn.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold);
            this.xrTitleEn.Location = new System.Drawing.Point(283, 17);
            this.xrTitleEn.Name = "xrTitleEn";
            this.xrTitleEn.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTitleEn.Size = new System.Drawing.Size(100, 25);
            this.xrTitleEn.StylePriority.UseFont = false;
            this.xrTitleEn.StylePriority.UseTextAlignment = false;
            this.xrTitleEn.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // xrTitleCN
            // 
            this.xrTitleCN.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold);
            this.xrTitleCN.Location = new System.Drawing.Point(392, 50);
            this.xrTitleCN.Name = "xrTitleCN";
            this.xrTitleCN.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTitleCN.Size = new System.Drawing.Size(100, 33);
            this.xrTitleCN.StylePriority.UseFont = false;
            this.xrTitleCN.StylePriority.UseTextAlignment = false;
            this.xrTitleCN.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel11
            // 
            this.xrLabel11.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel11.Location = new System.Drawing.Point(317, 108);
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(125, 25);
            this.xrLabel11.StylePriority.UseFont = false;
            this.xrLabel11.StylePriority.UseTextAlignment = false;
            this.xrLabel11.Text = "Work Shop(車間）";
            this.xrLabel11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel10
            // 
            this.xrLabel10.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel10.Location = new System.Drawing.Point(25, 108);
            this.xrLabel10.Name = "xrLabel10";
            this.xrLabel10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel10.Size = new System.Drawing.Size(117, 26);
            this.xrLabel10.StylePriority.UseFont = false;
            this.xrLabel10.StylePriority.UseTextAlignment = false;
            this.xrLabel10.Text = "Factory(工廠):";
            this.xrLabel10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lbl_Factory
            // 
            this.lbl_Factory.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_Factory.Location = new System.Drawing.Point(150, 108);
            this.lbl_Factory.Name = "lbl_Factory";
            this.lbl_Factory.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Factory.Size = new System.Drawing.Size(133, 25);
            this.lbl_Factory.StylePriority.UseFont = false;
            this.lbl_Factory.StylePriority.UseTextAlignment = false;
            this.lbl_Factory.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbl_WorkShop
            // 
            this.lbl_WorkShop.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_WorkShop.Location = new System.Drawing.Point(450, 108);
            this.lbl_WorkShop.Name = "lbl_WorkShop";
            this.lbl_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_WorkShop.Size = new System.Drawing.Size(167, 25);
            this.lbl_WorkShop.StylePriority.UseFont = false;
            this.lbl_WorkShop.StylePriority.UseTextAlignment = false;
            this.lbl_WorkShop.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel3.Location = new System.Drawing.Point(492, 50);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(167, 33);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.StylePriority.UseTextAlignment = false;
            this.xrLabel3.Text = "巡检定工序报表";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbl_DataTo
            // 
            this.lbl_DataTo.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DataTo.Location = new System.Drawing.Point(967, 108);
            this.lbl_DataTo.Name = "lbl_DataTo";
            this.lbl_DataTo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DataTo.Size = new System.Drawing.Size(102, 25);
            this.lbl_DataTo.StylePriority.UseFont = false;
            this.lbl_DataTo.StylePriority.UseTextAlignment = false;
            this.lbl_DataTo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel15
            // 
            this.xrLabel15.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel15.Location = new System.Drawing.Point(933, 108);
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
            this.lbl_DateForm.Location = new System.Drawing.Point(825, 108);
            this.lbl_DateForm.Name = "lbl_DateForm";
            this.lbl_DateForm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DateForm.Size = new System.Drawing.Size(100, 25);
            this.lbl_DateForm.StylePriority.UseFont = false;
            this.lbl_DateForm.StylePriority.UseTextAlignment = false;
            this.lbl_DateForm.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel13.Location = new System.Drawing.Point(642, 108);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(167, 25);
            this.xrLabel13.StylePriority.UseFont = false;
            this.xrLabel13.StylePriority.UseTextAlignment = false;
            this.xrLabel13.Text = "Time Period(時間段): From";
            this.xrLabel13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Location = new System.Drawing.Point(0, 142);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(1125, 133);
            this.xrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell19,
            this.xrTableCell20,
            this.xrTableCell18,
            this.xrTableCell12,
            this.xrTableCell13,
            this.xrTableCell14,
            this.xrTableCell15,
            this.xrTableCell5,
            this.xrTableCell1,
            this.xrTableCell2,
            this.xrTableCell9,
            this.xrTableCell16});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(1125, 133);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell19.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(48, 133);
            this.xrTableCell19.StylePriority.UseFont = false;
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "Line\r\n組裝線";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell20.Location = new System.Drawing.Point(48, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(69, 133);
            this.xrTableCell20.StylePriority.UseFont = false;
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "Project\r\n工程號";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell18.Location = new System.Drawing.Point(117, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(75, 133);
            this.xrTableCell18.StylePriority.UseFont = false;
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "Cust Style\r\n客款號";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell12.Location = new System.Drawing.Point(192, 0);
            this.xrTableCell12.Multiline = true;
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(68, 133);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UseFont = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "OPT Code\r\n工序代號";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell13.Location = new System.Drawing.Point(260, 0);
            this.xrTableCell13.Multiline = true;
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(173, 133);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.StylePriority.UseFont = false;
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "OPT Name\r\n工序名稱";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell14.Location = new System.Drawing.Point(433, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(58, 133);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "WFID\r\n勞動\r\n者ID";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell15.Location = new System.Drawing.Point(491, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(59, 133);
            this.xrTableCell15.StylePriority.UseBorders = false;
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "WF Name\r\n勞動者\r\n名稱";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell5.Location = new System.Drawing.Point(550, 0);
            this.xrTableCell5.Multiline = true;
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(100, 133);
            this.xrTableCell5.StylePriority.UseFont = false;
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(0, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow2});
            this.xrTable1.Size = new System.Drawing.Size(100, 133);
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(100, 65);
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(100, 65);
            this.xrTableCell3.StylePriority.UseFont = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "Audit Seq.\r\n檢定次數";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell8,
            this.xrTableCell17,
            this.xrTableCell21});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(100, 68);
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell8.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell8.Multiline = true;
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(32, 68);
            this.xrTableCell8.StylePriority.UseFont = false;
            this.xrTableCell8.StylePriority.UseTextAlignment = false;
            this.xrTableCell8.Text = "正\r\n檢";
            this.xrTableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell17.Location = new System.Drawing.Point(32, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(36, 68);
            this.xrTableCell17.StylePriority.UseFont = false;
            this.xrTableCell17.StylePriority.UseTextAlignment = false;
            this.xrTableCell17.Text = "重\r\n檢";
            this.xrTableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell21.Location = new System.Drawing.Point(68, 0);
            this.xrTableCell21.Multiline = true;
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(32, 68);
            this.xrTableCell21.StylePriority.UseFont = false;
            this.xrTableCell21.StylePriority.UseTextAlignment = false;
            this.xrTableCell21.Text = "合\r\n共";
            this.xrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell1.Location = new System.Drawing.Point(650, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(45, 133);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Audited Qty\r\n己檢定\r\n數量";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable8});
            this.xrTableCell2.Font = new System.Drawing.Font("Times New Roman", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell2.Location = new System.Drawing.Point(695, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(305, 133);
            this.xrTableCell2.StylePriority.UseBorders = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable8
            // 
            this.xrTable8.Location = new System.Drawing.Point(2, 0);
            this.xrTable8.Name = "xrTable8";
            this.xrTable8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow9,
            this.xrTableRow11,
            this.xrTableRow10});
            this.xrTable8.Size = new System.Drawing.Size(303, 133);
            // 
            // xrTableRow9
            // 
            this.xrTableRow9.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell22});
            this.xrTableRow9.Name = "xrTableRow9";
            this.xrTableRow9.Size = new System.Drawing.Size(303, 46);
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell22.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(303, 46);
            this.xrTableCell22.StylePriority.UseFont = false;
            this.xrTableCell22.Text = "Audited Result 檢定結果";
            // 
            // xrTableRow11
            // 
            this.xrTableRow11.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell23,
            this.xrTableCell31});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(303, 46);
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell23.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(128, 46);
            this.xrTableCell23.StylePriority.UseFont = false;
            this.xrTableCell23.Text = "Seq. 次數";
            // 
            // xrTableCell31
            // 
            this.xrTableCell31.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell31.Location = new System.Drawing.Point(128, 0);
            this.xrTableCell31.Name = "xrTableCell31";
            this.xrTableCell31.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell31.Size = new System.Drawing.Size(175, 46);
            this.xrTableCell31.StylePriority.UseFont = false;
            this.xrTableCell31.Text = "QTY件數";
            // 
            // xrTableRow10
            // 
            this.xrTableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell11,
            this.xrTableCell10,
            this.xrTableCell33,
            this.xrTableCell4,
            this.xrTableCell26,
            xrTableCell27,
            this.xrTableCell28});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(303, 41);
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell11.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell11.Multiline = true;
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(36, 41);
            this.xrTableCell11.StylePriority.UseFont = false;
            this.xrTableCell11.Text = "FPY\r\n合格(P)\r\n/次數";
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell10.Location = new System.Drawing.Point(36, 0);
            this.xrTableCell10.Multiline = true;
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(42, 41);
            this.xrTableCell10.StylePriority.UseFont = false;
            this.xrTableCell10.Text = "2PY(+)\r\n合格(P)\r\n/次數";
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell33.Location = new System.Drawing.Point(78, 0);
            this.xrTableCell33.Multiline = true;
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(50, 41);
            this.xrTableCell33.StylePriority.UseFont = false;
            this.xrTableCell33.Text = "Yield\r\n Failure\r\n通量不過";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell4.Location = new System.Drawing.Point(128, 0);
            this.xrTableCell4.Multiline = true;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(50, 41);
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.Text = "(P)\r\n合格\r\n/數量";
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell26.Location = new System.Drawing.Point(178, 0);
            this.xrTableCell26.Multiline = true;
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(48, 41);
            this.xrTableCell26.StylePriority.UseFont = false;
            this.xrTableCell26.Text = "(F)\r\n不合格\r\n/數量";
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell28.ForeColor = System.Drawing.Color.Black;
            this.xrTableCell28.Location = new System.Drawing.Point(270, 0);
            this.xrTableCell28.Multiline = true;
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(33, 41);
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseForeColor = false;
            this.xrTableCell28.Text = "(S)\r\n廢棄\r\n/數量";
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell9.Location = new System.Drawing.Point(1000, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(43, 133);
            this.xrTableCell9.StylePriority.UseFont = false;
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = "FPY\r\n首次\r\n通量\r\n(%)\r\n(wt.ave)";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4,
            this.xrTable7});
            this.xrTableCell16.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.xrTableCell16.Location = new System.Drawing.Point(1043, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(82, 133);
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable7
            // 
            this.xrTable7.Location = new System.Drawing.Point(0, 0);
            this.xrTable7.Name = "xrTable7";
            this.xrTable7.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow12});
            this.xrTable7.Size = new System.Drawing.Size(88, 25);
            // 
            // xrTableRow12
            // 
            this.xrTableRow12.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell24});
            this.xrTableRow12.Name = "xrTableRow12";
            this.xrTableRow12.Size = new System.Drawing.Size(88, 25);
            // 
            // xrTableCell24
            // 
            this.xrTableCell24.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell24.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell24.Name = "xrTableCell24";
            this.xrTableCell24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell24.Size = new System.Drawing.Size(88, 25);
            this.xrTableCell24.StylePriority.UseFont = false;
            this.xrTableCell24.Text = "WF勞動者";
            // 
            // xrTable4
            // 
            this.xrTable4.Location = new System.Drawing.Point(0, 25);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow6});
            this.xrTable4.Size = new System.Drawing.Size(81, 108);
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell32,
            this.xrTableCell6,
            this.xrTableCell36});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(81, 108);
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell32.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell32.Multiline = true;
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(2, 108);
            this.xrTableCell32.StylePriority.UseFont = false;
            this.xrTableCell32.Text = " FPY Perf(last10) \r\n 首通率\r\n表現\r\n  (后十位)\t";
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell36.Location = new System.Drawing.Point(51, 0);
            this.xrTableCell36.Multiline = true;
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(30, 108);
            this.xrTableCell36.StylePriority.UseFont = false;
            this.xrTableCell36.Text = "PY\r\n通率\r\n己通\r\n(Y?)";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(383, 17);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(350, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Mobile Auditing Operation Report";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.Detail.Height = 25;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrTable3
            // 
            this.xrTable3.Location = new System.Drawing.Point(0, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable3.Size = new System.Drawing.Size(1124, 25);
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.column_Line,
            this.column_Project,
            this.column_CustStyle,
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
            this.col_SortId,
            this.column_pass});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(1124, 25);
            // 
            // column_Line
            // 
            this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Line.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_Line.Location = new System.Drawing.Point(0, 0);
            this.column_Line.Name = "column_Line";
            this.column_Line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Line.Size = new System.Drawing.Size(47, 25);
            this.column_Line.StylePriority.UseBorders = false;
            this.column_Line.StylePriority.UseFont = false;
            // 
            // column_Project
            // 
            this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Project.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_Project.Location = new System.Drawing.Point(47, 0);
            this.column_Project.Name = "column_Project";
            this.column_Project.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Project.Size = new System.Drawing.Size(70, 25);
            this.column_Project.StylePriority.UseBorders = false;
            this.column_Project.StylePriority.UseFont = false;
            // 
            // column_CustStyle
            // 
            this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CustStyle.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_CustStyle.Location = new System.Drawing.Point(117, 0);
            this.column_CustStyle.Name = "column_CustStyle";
            this.column_CustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CustStyle.Size = new System.Drawing.Size(75, 25);
            this.column_CustStyle.StylePriority.UseBorders = false;
            this.column_CustStyle.StylePriority.UseFont = false;
            // 
            // column_OPTCode
            // 
            this.column_OPTCode.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTCode.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_OPTCode.Location = new System.Drawing.Point(192, 0);
            this.column_OPTCode.Name = "column_OPTCode";
            this.column_OPTCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTCode.Size = new System.Drawing.Size(68, 25);
            this.column_OPTCode.StylePriority.UseBorders = false;
            this.column_OPTCode.StylePriority.UseFont = false;
            this.column_OPTCode.StylePriority.UseTextAlignment = false;
            this.column_OPTCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_OPTName
            // 
            this.column_OPTName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTName.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_OPTName.Location = new System.Drawing.Point(260, 0);
            this.column_OPTName.Name = "column_OPTName";
            this.column_OPTName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTName.Size = new System.Drawing.Size(173, 25);
            this.column_OPTName.StylePriority.UseBorders = false;
            this.column_OPTName.StylePriority.UseFont = false;
            this.column_OPTName.StylePriority.UseTextAlignment = false;
            this.column_OPTName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_WFID
            // 
            this.column_WFID.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFID.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_WFID.Location = new System.Drawing.Point(433, 0);
            this.column_WFID.Name = "column_WFID";
            this.column_WFID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFID.Size = new System.Drawing.Size(58, 25);
            this.column_WFID.StylePriority.UseBorders = false;
            this.column_WFID.StylePriority.UseFont = false;
            this.column_WFID.StylePriority.UseTextAlignment = false;
            this.column_WFID.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_WFName
            // 
            this.column_WFName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFName.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_WFName.Location = new System.Drawing.Point(491, 0);
            this.column_WFName.Name = "column_WFName";
            this.column_WFName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFName.Size = new System.Drawing.Size(59, 25);
            this.column_WFName.StylePriority.UseBorders = false;
            this.column_WFName.StylePriority.UseFont = false;
            this.column_WFName.StylePriority.UseTextAlignment = false;
            this.column_WFName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // col_FirstChk
            // 
            this.col_FirstChk.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_FirstChk.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_FirstChk.Location = new System.Drawing.Point(550, 0);
            this.col_FirstChk.Name = "col_FirstChk";
            this.col_FirstChk.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_FirstChk.Size = new System.Drawing.Size(32, 25);
            this.col_FirstChk.StylePriority.UseBorders = false;
            this.col_FirstChk.StylePriority.UseFont = false;
            this.col_FirstChk.StylePriority.UseTextAlignment = false;
            this.col_FirstChk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_Rechk
            // 
            this.col_Rechk.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_Rechk.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_Rechk.Location = new System.Drawing.Point(582, 0);
            this.col_Rechk.Name = "col_Rechk";
            this.col_Rechk.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_Rechk.Size = new System.Drawing.Size(36, 25);
            this.col_Rechk.StylePriority.UseBorders = false;
            this.col_Rechk.StylePriority.UseFont = false;
            this.col_Rechk.StylePriority.UseTextAlignment = false;
            this.col_Rechk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_totalchk
            // 
            this.col_totalchk.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_totalchk.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_totalchk.Location = new System.Drawing.Point(618, 0);
            this.col_totalchk.Name = "col_totalchk";
            this.col_totalchk.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_totalchk.Size = new System.Drawing.Size(32, 25);
            this.col_totalchk.StylePriority.UseBorders = false;
            this.col_totalchk.StylePriority.UseFont = false;
            this.col_totalchk.StylePriority.UseTextAlignment = false;
            this.col_totalchk.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqty
            // 
            this.col_chkqty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_chkqty.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_chkqty.Location = new System.Drawing.Point(650, 0);
            this.col_chkqty.Name = "col_chkqty";
            this.col_chkqty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_chkqty.Size = new System.Drawing.Size(45, 25);
            this.col_chkqty.StylePriority.UseBorders = false;
            this.col_chkqty.StylePriority.UseFont = false;
            this.col_chkqty.StylePriority.UseTextAlignment = false;
            this.col_chkqty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_passtimes
            // 
            this.column_passtimes.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_passtimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_passtimes.Location = new System.Drawing.Point(695, 0);
            this.column_passtimes.Name = "column_passtimes";
            this.column_passtimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_passtimes.Size = new System.Drawing.Size(38, 25);
            this.column_passtimes.StylePriority.UseBorders = false;
            this.column_passtimes.StylePriority.UseFont = false;
            this.column_passtimes.StylePriority.UseTextAlignment = false;
            this.column_passtimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimes
            // 
            this.col_repasstimes.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_repasstimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_repasstimes.Location = new System.Drawing.Point(733, 0);
            this.col_repasstimes.Name = "col_repasstimes";
            this.col_repasstimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimes.Size = new System.Drawing.Size(42, 25);
            this.col_repasstimes.StylePriority.UseBorders = false;
            this.col_repasstimes.StylePriority.UseFont = false;
            this.col_repasstimes.StylePriority.UseTextAlignment = false;
            this.col_repasstimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFail
            // 
            this.col_YieldFail.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_YieldFail.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_YieldFail.Location = new System.Drawing.Point(775, 0);
            this.col_YieldFail.Name = "col_YieldFail";
            this.col_YieldFail.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFail.Size = new System.Drawing.Size(50, 25);
            this.col_YieldFail.StylePriority.UseBorders = false;
            this.col_YieldFail.StylePriority.UseFont = false;
            this.col_YieldFail.StylePriority.UseTextAlignment = false;
            this.col_YieldFail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_P
            // 
            this.column_P.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_P.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_P.Location = new System.Drawing.Point(825, 0);
            this.column_P.Name = "column_P";
            this.column_P.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_P.Size = new System.Drawing.Size(50, 25);
            this.column_P.StylePriority.UseBorders = false;
            this.column_P.StylePriority.UseFont = false;
            this.column_P.StylePriority.UseTextAlignment = false;
            this.column_P.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_F
            // 
            this.column_F.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_F.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_F.Location = new System.Drawing.Point(875, 0);
            this.column_F.Name = "column_F";
            this.column_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_F.Size = new System.Drawing.Size(48, 25);
            this.column_F.StylePriority.UseBorders = false;
            this.column_F.StylePriority.UseFont = false;
            this.column_F.StylePriority.UseTextAlignment = false;
            this.column_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_U
            // 
            this.column_U.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_U.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_U.Location = new System.Drawing.Point(923, 0);
            this.column_U.Name = "column_U";
            this.column_U.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_U.Size = new System.Drawing.Size(44, 25);
            this.column_U.StylePriority.UseBorders = false;
            this.column_U.StylePriority.UseFont = false;
            this.column_U.StylePriority.UseTextAlignment = false;
            this.column_U.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_S
            // 
            this.column_S.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_S.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_S.Location = new System.Drawing.Point(967, 0);
            this.column_S.Name = "column_S";
            this.column_S.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_S.Size = new System.Drawing.Size(33, 25);
            this.column_S.StylePriority.UseBorders = false;
            this.column_S.StylePriority.UseFont = false;
            this.column_S.StylePriority.UseTextAlignment = false;
            this.column_S.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_fpy
            // 
            this.column_fpy.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_fpy.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_fpy.Location = new System.Drawing.Point(1000, 0);
            this.column_fpy.Name = "column_fpy";
            this.column_fpy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_fpy.Size = new System.Drawing.Size(43, 25);
            this.column_fpy.StylePriority.UseBorders = false;
            this.column_fpy.StylePriority.UseFont = false;
            this.column_fpy.StylePriority.UseTextAlignment = false;
            this.column_fpy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_SortId
            // 
            this.col_SortId.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_SortId.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_SortId.Location = new System.Drawing.Point(1043, 0);
            this.col_SortId.Name = "col_SortId";
            this.col_SortId.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_SortId.Size = new System.Drawing.Size(51, 25);
            this.col_SortId.StylePriority.UseBorders = false;
            this.col_SortId.StylePriority.UseFont = false;
            this.col_SortId.StylePriority.UseTextAlignment = false;
            this.col_SortId.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_pass
            // 
            this.column_pass.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_pass.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_pass.Location = new System.Drawing.Point(1094, 0);
            this.column_pass.Name = "column_pass";
            this.column_pass.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_pass.Size = new System.Drawing.Size(30, 25);
            this.column_pass.StylePriority.UseBorders = false;
            this.column_pass.StylePriority.UseFont = false;
            this.column_pass.StylePriority.UseTextAlignment = false;
            this.column_pass.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrAverage,
            this.xrLabel2,
            this.xrTable6,
            this.xrTable5});
            this.ReportFooter.Height = 116;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // xrAverage
            // 
            this.xrAverage.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrAverage.Location = new System.Drawing.Point(1000, 58);
            this.xrAverage.Name = "xrAverage";
            this.xrAverage.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrAverage.Size = new System.Drawing.Size(58, 17);
            this.xrAverage.StylePriority.UseFont = false;
            this.xrAverage.StylePriority.UseTextAlignment = false;
            this.xrAverage.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel2.Location = new System.Drawing.Point(0, 58);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(67, 17);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.Text = "Average :";
            // 
            // xrTable6
            // 
            this.xrTable6.Location = new System.Drawing.Point(0, 0);
            this.xrTable6.Name = "xrTable6";
            this.xrTable6.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow8});
            this.xrTable6.Size = new System.Drawing.Size(1125, 25);
            // 
            // xrTableRow8
            // 
            this.xrTableRow8.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell30});
            this.xrTableRow8.Name = "xrTableRow8";
            this.xrTableRow8.Size = new System.Drawing.Size(1125, 25);
            // 
            // xrTableCell30
            // 
            this.xrTableCell30.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell30.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell30.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell30.Name = "xrTableCell30";
            this.xrTableCell30.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell30.Size = new System.Drawing.Size(1125, 25);
            this.xrTableCell30.StylePriority.UseBorders = false;
            this.xrTableCell30.StylePriority.UseFont = false;
            this.xrTableCell30.Text = "Total :";
            // 
            // xrTable5
            // 
            this.xrTable5.Location = new System.Drawing.Point(0, 25);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow7});
            this.xrTable5.Size = new System.Drawing.Size(1124, 25);
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrlinetotal,
            this.xrprojtotal,
            this.xrstyletotal,
            this.xropttotal,
            this.xrTableCell25,
            this.xrWorkers,
            this.xrTableCell29,
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
            this.xrTableCell7,
            this.xrTableCell42,
            this.xrTableCell40});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(1124, 25);
            // 
            // xrlinetotal
            // 
            this.xrlinetotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrlinetotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrlinetotal.Location = new System.Drawing.Point(0, 0);
            this.xrlinetotal.Name = "xrlinetotal";
            this.xrlinetotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrlinetotal.Size = new System.Drawing.Size(48, 25);
            this.xrlinetotal.StylePriority.UseBorders = false;
            this.xrlinetotal.StylePriority.UseFont = false;
            this.xrlinetotal.StylePriority.UseTextAlignment = false;
            this.xrlinetotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrprojtotal
            // 
            this.xrprojtotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrprojtotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrprojtotal.Location = new System.Drawing.Point(48, 0);
            this.xrprojtotal.Name = "xrprojtotal";
            this.xrprojtotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrprojtotal.Size = new System.Drawing.Size(69, 25);
            this.xrprojtotal.StylePriority.UseBorders = false;
            this.xrprojtotal.StylePriority.UseFont = false;
            this.xrprojtotal.StylePriority.UseTextAlignment = false;
            this.xrprojtotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrstyletotal
            // 
            this.xrstyletotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrstyletotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrstyletotal.Location = new System.Drawing.Point(117, 0);
            this.xrstyletotal.Name = "xrstyletotal";
            this.xrstyletotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrstyletotal.Size = new System.Drawing.Size(75, 25);
            this.xrstyletotal.StylePriority.UseBorders = false;
            this.xrstyletotal.StylePriority.UseFont = false;
            this.xrstyletotal.StylePriority.UseTextAlignment = false;
            this.xrstyletotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xropttotal
            // 
            this.xropttotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xropttotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xropttotal.Location = new System.Drawing.Point(192, 0);
            this.xropttotal.Name = "xropttotal";
            this.xropttotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xropttotal.Size = new System.Drawing.Size(68, 25);
            this.xropttotal.StylePriority.UseBorders = false;
            this.xropttotal.StylePriority.UseFont = false;
            this.xropttotal.StylePriority.UseTextAlignment = false;
            this.xropttotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell25.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell25.Location = new System.Drawing.Point(260, 0);
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(173, 25);
            this.xrTableCell25.StylePriority.UseBorders = false;
            this.xrTableCell25.StylePriority.UseFont = false;
            this.xrTableCell25.StylePriority.UseTextAlignment = false;
            this.xrTableCell25.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrWorkers
            // 
            this.xrWorkers.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrWorkers.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrWorkers.Location = new System.Drawing.Point(433, 0);
            this.xrWorkers.Name = "xrWorkers";
            this.xrWorkers.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrWorkers.Size = new System.Drawing.Size(58, 25);
            this.xrWorkers.StylePriority.UseBorders = false;
            this.xrWorkers.StylePriority.UseFont = false;
            this.xrWorkers.StylePriority.UseTextAlignment = false;
            this.xrWorkers.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell29.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell29.Location = new System.Drawing.Point(491, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(59, 25);
            this.xrTableCell29.StylePriority.UseBorders = false;
            this.xrTableCell29.StylePriority.UseFont = false;
            this.xrTableCell29.StylePriority.UseTextAlignment = false;
            this.xrTableCell29.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrtotalfirst
            // 
            this.xrtotalfirst.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrtotalfirst.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrtotalfirst.Location = new System.Drawing.Point(550, 0);
            this.xrtotalfirst.Name = "xrtotalfirst";
            this.xrtotalfirst.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrtotalfirst.Size = new System.Drawing.Size(32, 25);
            this.xrtotalfirst.StylePriority.UseBorders = false;
            this.xrtotalfirst.StylePriority.UseFont = false;
            this.xrtotalfirst.StylePriority.UseTextAlignment = false;
            this.xrtotalfirst.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_RechkT1
            // 
            this.col_RechkT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_RechkT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_RechkT1.Location = new System.Drawing.Point(582, 0);
            this.col_RechkT1.Name = "col_RechkT1";
            this.col_RechkT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_RechkT1.Size = new System.Drawing.Size(36, 25);
            this.col_RechkT1.StylePriority.UseBorders = false;
            this.col_RechkT1.StylePriority.UseFont = false;
            this.col_RechkT1.StylePriority.UseTextAlignment = false;
            this.col_RechkT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_totalchkT1
            // 
            this.col_totalchkT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_totalchkT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_totalchkT1.Location = new System.Drawing.Point(618, 0);
            this.col_totalchkT1.Name = "col_totalchkT1";
            this.col_totalchkT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_totalchkT1.Size = new System.Drawing.Size(32, 25);
            this.col_totalchkT1.StylePriority.UseBorders = false;
            this.col_totalchkT1.StylePriority.UseFont = false;
            this.col_totalchkT1.StylePriority.UseTextAlignment = false;
            this.col_totalchkT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqtyT1
            // 
            this.col_chkqtyT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_chkqtyT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_chkqtyT1.Location = new System.Drawing.Point(650, 0);
            this.col_chkqtyT1.Name = "col_chkqtyT1";
            this.col_chkqtyT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_chkqtyT1.Size = new System.Drawing.Size(45, 25);
            this.col_chkqtyT1.StylePriority.UseBorders = false;
            this.col_chkqtyT1.StylePriority.UseFont = false;
            this.col_chkqtyT1.StylePriority.UseTextAlignment = false;
            this.col_chkqtyT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_passtimesT1
            // 
            this.col_passtimesT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_passtimesT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_passtimesT1.Location = new System.Drawing.Point(695, 0);
            this.col_passtimesT1.Name = "col_passtimesT1";
            this.col_passtimesT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_passtimesT1.Size = new System.Drawing.Size(38, 25);
            this.col_passtimesT1.StylePriority.UseBorders = false;
            this.col_passtimesT1.StylePriority.UseFont = false;
            this.col_passtimesT1.StylePriority.UseTextAlignment = false;
            this.col_passtimesT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimesT1
            // 
            this.col_repasstimesT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_repasstimesT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_repasstimesT1.Location = new System.Drawing.Point(733, 0);
            this.col_repasstimesT1.Name = "col_repasstimesT1";
            this.col_repasstimesT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimesT1.Size = new System.Drawing.Size(42, 25);
            this.col_repasstimesT1.StylePriority.UseBorders = false;
            this.col_repasstimesT1.StylePriority.UseFont = false;
            this.col_repasstimesT1.StylePriority.UseTextAlignment = false;
            this.col_repasstimesT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFailT
            // 
            this.col_YieldFailT.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_YieldFailT.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.col_YieldFailT.Location = new System.Drawing.Point(775, 0);
            this.col_YieldFailT.Name = "col_YieldFailT";
            this.col_YieldFailT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFailT.Size = new System.Drawing.Size(50, 25);
            this.col_YieldFailT.StylePriority.UseBorders = false;
            this.col_YieldFailT.StylePriority.UseFont = false;
            this.col_YieldFailT.StylePriority.UseTextAlignment = false;
            this.col_YieldFailT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_PT1
            // 
            this.column_PT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_PT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_PT1.Location = new System.Drawing.Point(825, 0);
            this.column_PT1.Name = "column_PT1";
            this.column_PT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_PT1.Size = new System.Drawing.Size(50, 25);
            this.column_PT1.StylePriority.UseBorders = false;
            this.column_PT1.StylePriority.UseFont = false;
            this.column_PT1.StylePriority.UseTextAlignment = false;
            this.column_PT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_FT1
            // 
            this.column_FT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_FT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_FT1.Location = new System.Drawing.Point(875, 0);
            this.column_FT1.Name = "column_FT1";
            this.column_FT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_FT1.Size = new System.Drawing.Size(48, 25);
            this.column_FT1.StylePriority.UseBorders = false;
            this.column_FT1.StylePriority.UseFont = false;
            this.column_FT1.StylePriority.UseTextAlignment = false;
            this.column_FT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_UT1
            // 
            this.column_UT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_UT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_UT1.Location = new System.Drawing.Point(923, 0);
            this.column_UT1.Name = "column_UT1";
            this.column_UT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_UT1.Size = new System.Drawing.Size(44, 25);
            this.column_UT1.StylePriority.UseBorders = false;
            this.column_UT1.StylePriority.UseFont = false;
            this.column_UT1.StylePriority.UseTextAlignment = false;
            this.column_UT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_ST1
            // 
            this.column_ST1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_ST1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.column_ST1.Location = new System.Drawing.Point(967, 0);
            this.column_ST1.Name = "column_ST1";
            this.column_ST1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_ST1.Size = new System.Drawing.Size(33, 25);
            this.column_ST1.StylePriority.UseBorders = false;
            this.column_ST1.StylePriority.UseFont = false;
            this.column_ST1.StylePriority.UseTextAlignment = false;
            this.column_ST1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell7.Location = new System.Drawing.Point(1000, 0);
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(43, 25);
            this.xrTableCell7.StylePriority.UseBorders = false;
            this.xrTableCell7.StylePriority.UseFont = false;
            // 
            // xrTableCell42
            // 
            this.xrTableCell42.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell42.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell42.Location = new System.Drawing.Point(1043, 0);
            this.xrTableCell42.Name = "xrTableCell42";
            this.xrTableCell42.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell42.Size = new System.Drawing.Size(51, 25);
            this.xrTableCell42.StylePriority.UseBorders = false;
            this.xrTableCell42.StylePriority.UseFont = false;
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell40.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell40.Location = new System.Drawing.Point(1094, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(30, 25);
            this.xrTableCell40.StylePriority.UseBorders = false;
            this.xrTableCell40.StylePriority.UseFont = false;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell6.Location = new System.Drawing.Point(2, 0);
            this.xrTableCell6.Multiline = true;
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(49, 108);
            this.xrTableCell6.StylePriority.UseFont = false;
            this.xrTableCell6.Text = "FPY Per\r\n(last 10)\r\n首通率表現\r\n(后五位)";
            // 
            // rptQC_MasterAnalyzeOPT2_New
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(21, 20, 18, 50);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
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

        int total_zhenjian = 0, total_rechk = 0, total_chk = 0, auditqty = 0, passtime1 = 0, passtime2 = 0, p_total = 0, f_total = 0, u_total = 0, s_total = 0;

        int total_fail = 0;

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

           // total_fail=total_fail+()


            this.col_FirstChk.Text = (gbs.TotalCheckTimes - gbs.ReCheckTimes).ToString();
            column_fpy.Text = String.Format("{0:F}", gbs.FPY) ; //gbs.FPY.ToString();
            column_passtimes.Text = gbs.FirsPassTimes.ToString();
            col_SortId.Text = gbs.SortId > 0 ? gbs.SortId.ToString() : "";
            this.col_YieldFail.Text = (gbs.TotalCheckTimes - gbs.FirsPassTimes - gbs.ReCheckPassTimes).ToString();

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
            this.xrstyletotal.Text = _alstyle.Count.ToString();
            this.xrWorkers.Text = _alworker.Count.ToString();


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

            double aa= Convert.ToDouble(p_total * 100 /(p_total + f_total));
            this.xrAverage.Text = String.Format("{0:F}", aa);
                //Math.Round(Convert.ToDouble(p_total * 100 /(p_total + f_total)), 2).ToString()+"%";
            
        }
    }
}
