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
    public class rptQC_MasterAnalyzeOPT2 : DevExpress.XtraReports.UI.XtraReport
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
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell27;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTCode;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTName;
        private DevExpress.XtraReports.UI.XRTableCell column_WFID;
        private DevExpress.XtraReports.UI.XRTableCell column_WFName;
        private DevExpress.XtraReports.UI.XRTableCell column_CheckQty;
        private DevExpress.XtraReports.UI.XRTableCell column_F;
        private DevExpress.XtraReports.UI.XRTableCell column_U;
        private DevExpress.XtraReports.UI.XRTableCell column_S;
        private DevExpress.XtraReports.UI.XRTableCell column_MA;
        private DevExpress.XtraReports.UI.XRTableCell column_WS;
        private DevExpress.XtraReports.UI.XRTableCell column_Other;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRLabel lbl_DataTo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel lbl_DateForm;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRTableCell column_EV;
        private DevExpress.XtraReports.UI.XRTableCell column_CP;
        private DevExpress.XtraReports.UI.XRTable xrTable4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell8;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell17;
        private DevExpress.XtraReports.UI.XRTableCell col_SortId;
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
        private DevExpress.XtraReports.UI.XRTableCell columnF_CheckQty;
        private DevExpress.XtraReports.UI.XRTableCell columnF_F;
        private DevExpress.XtraReports.UI.XRTableCell columnF_U;
        private DevExpress.XtraReports.UI.XRTableCell columnF_S;
        private DevExpress.XtraReports.UI.XRTableCell columnF_FPY;
        private DevExpress.XtraReports.UI.XRTableCell columnF_EV;
        private DevExpress.XtraReports.UI.XRTableCell columnF_MA;
        private DevExpress.XtraReports.UI.XRTableCell columnF_CP;
        private DevExpress.XtraReports.UI.XRTableCell columnF_WS;
        private DevExpress.XtraReports.UI.XRTableCell columnF_Other;
        private DevExpress.XtraReports.UI.XRLabel xrTitleCN;
        private DevExpress.XtraReports.UI.XRLabel xrTitleEn;
        private DevExpress.XtraReports.UI.XRLabel xrBy;
        private DevExpress.XtraReports.UI.XRTable xrTable6;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow8;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell30;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell32;
        private DevExpress.XtraReports.UI.XRTableCell column_P;
        private DevExpress.XtraReports.UI.XRTableCell columnF_P;
        private DevExpress.XtraReports.UI.XRTableCell column_FPY;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell33;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell col_Recheck;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell35;
        private DevExpress.XtraReports.UI.XRLabel xrAverage;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rptQC_MasterAnalyzeOPT2()
        {
            InitializeComponent();
        }

        public rptQC_MasterAnalyzeOPT2(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo,bool SortFPY)
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
            this.column_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
           // this.columnF_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            this.column_P.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            this.column_EV.DataBindings.Add("Text", this.DataSource, "CP", "{0:0.#}");
            this.column_MA.DataBindings.Add("Text", this.DataSource, "EV", "{0:0.#}");
            this.column_CP.DataBindings.Add("Text", this.DataSource, "MA", "{0:0.#}");
            this.column_WS.DataBindings.Add("Text", this.DataSource, "WS", "{0:0.#}");
            this.column_Other.DataBindings.Add("Text", this.DataSource, "Other");
            this.col_SortId.DataBindings.Add("Text", this.DataSource, "FPY");
            this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");
            col_Recheck.DataBindings.Add("Text", this.DataSource, "ReCheck");

            this.columnF_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            this.columnF_P.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            this.columnF_F.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            this.columnF_U.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            this.columnF_S.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            this.columnF_EV.DataBindings.Add("Text", this.DataSource, "CP", "{0:0.#}");
            this.columnF_MA.DataBindings.Add("Text", this.DataSource, "EV", "{0:0.#}");
            this.columnF_CP.DataBindings.Add("Text", this.DataSource, "MA", "{0:0.#}");
            this.columnF_WS.DataBindings.Add("Text", this.DataSource, "WS", "{0:0.#}");
            this.columnF_Other.DataBindings.Add("Text", this.DataSource, "Other");

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

           // xrBy.Text = SortFPY ? " - by FPY" : " - by Line";



        }

        bool _sortfpy;
        public rptQC_MasterAnalyzeOPT2(object datasouce, string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, bool SortFPY)
        {
            InitializeComponent();

            // System.Data.DataTable dt = SqlDataHelper.EXECSP_QC_MasterAnalyzeDT2( Factory,  WorkShop,  Customer,  Style,  Project,  Line, QC_timeForm, QC_timeTo);
            //this.DataSource = datasouce;

            var datalist = (IEnumerable<SP_QC_MasterAnalyz>)datasouce;

            List<SP_QC_MasterAnalyz> lst = datalist.OrderBy(p => p.FPY).ToList();
            for (int i = 1; i <=10; i++)
            {
                lst[0].SortId =i;
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
            this.column_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            this.column_P.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            this.column_EV.DataBindings.Add("Text", this.DataSource, "CP", "{0:0.#}");
            this.column_MA.DataBindings.Add("Text", this.DataSource, "EV", "{0:0.#}");
            this.column_CP.DataBindings.Add("Text", this.DataSource, "MA", "{0:0.#}");
            this.column_WS.DataBindings.Add("Text", this.DataSource, "WS", "{0:0.#}");
            this.column_Other.DataBindings.Add("Text", this.DataSource, "Other");

            this.column_FPY.DataBindings.Add("Text", this.DataSource, "FPY", "{0:0.00}");

            this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "CustStyle");

            col_Recheck.DataBindings.Add("Text", this.DataSource, "ReCheck"); // add by joseph 8/25
            col_SortId.DataBindings.Add("Text", this.DataSource, "ReCheck"); 

            this.columnF_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            this.columnF_P.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            this.columnF_F.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            this.columnF_U.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            this.columnF_S.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            this.columnF_EV.DataBindings.Add("Text", this.DataSource, "CP", "{0:0.#}");
            this.columnF_MA.DataBindings.Add("Text", this.DataSource, "EV", "{0:0.#}");
            this.columnF_CP.DataBindings.Add("Text", this.DataSource, "MA", "{0:0.#}");
            this.columnF_WS.DataBindings.Add("Text", this.DataSource, "WS", "{0:0.#}");
            this.columnF_Other.DataBindings.Add("Text", this.DataSource, "Other");
            


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

            //var datalist = (IEnumerable<SP_QC_MasterAnalyz>)this.DataSource;
          //  List<SP_QC_MasterAnalyz> datalist = (List<SP_QC_MasterAnalyz>)this.DataSource;
           // datalist.

         
        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRTableCell xrTableCell31;
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary7 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary8 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary9 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary10 = new DevExpress.XtraReports.UI.XRSummary();
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
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.col_Recheck = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CheckQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_P = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_F = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_U = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_S = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_FPY = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_SortId = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_EV = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_MA = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CP = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_WS = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Other = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTableCell35 = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_CheckQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_P = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_F = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_U = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_S = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_FPY = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_EV = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_MA = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_CP = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_WS = new DevExpress.XtraReports.UI.XRTableCell();
            this.columnF_Other = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell31 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // xrTableCell31
            // 
            xrTableCell31.Font = new System.Drawing.Font("Arial Unicode MS", 7.5F, System.Drawing.FontStyle.Bold);
            xrTableCell31.Location = new System.Drawing.Point(849, 0);
            xrTableCell31.Multiline = true;
            xrTableCell31.Name = "xrTableCell31";
            xrTableCell31.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            xrTableCell31.Size = new System.Drawing.Size(75, 75);
            xrTableCell31.StylePriority.UseFont = false;
            xrTableCell31.Text = " WF FPY \r\nPerf(last10)  勞動者首\r\n 次通率表現\r\n   (后十位)";
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
            this.PageHeader.Height = 200;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrBy
            // 
            this.xrBy.Font = new System.Drawing.Font("Arial Unicode MS", 12F, System.Drawing.FontStyle.Bold);
            this.xrBy.Location = new System.Drawing.Point(750, 17);
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
            this.xrTitleEn.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
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
            this.xrLabel11.Location = new System.Drawing.Point(317, 92);
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
            this.xrLabel10.Location = new System.Drawing.Point(25, 92);
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
            this.lbl_Factory.Location = new System.Drawing.Point(150, 92);
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
            this.lbl_WorkShop.Location = new System.Drawing.Point(450, 92);
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
            this.lbl_DataTo.Location = new System.Drawing.Point(967, 92);
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
            this.xrLabel15.Location = new System.Drawing.Point(933, 92);
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
            this.lbl_DateForm.Location = new System.Drawing.Point(825, 92);
            this.lbl_DateForm.Name = "lbl_DateForm";
            this.lbl_DateForm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DateForm.Size = new System.Drawing.Size(100, 25);
            this.lbl_DateForm.StylePriority.UseFont = false;
            this.lbl_DateForm.StylePriority.UseTextAlignment = false;
            this.lbl_DateForm.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel13.Location = new System.Drawing.Point(642, 92);
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
            this.xrTable2.Location = new System.Drawing.Point(1, 125);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(1124, 75);
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
            xrTableCell31,
            this.xrTableCell16});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(1124, 75);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell19.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(48, 75);
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "Line\r\n組裝線";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell20.Location = new System.Drawing.Point(48, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(69, 75);
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "Project\r\n工程號";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell18.Location = new System.Drawing.Point(117, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(74, 75);
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "Cust Style\r\n客款號";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell12.Location = new System.Drawing.Point(191, 0);
            this.xrTableCell12.Multiline = true;
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(67, 75);
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
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell13.Location = new System.Drawing.Point(258, 0);
            this.xrTableCell13.Multiline = true;
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(183, 75);
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
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell14.Location = new System.Drawing.Point(441, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(51, 75);
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
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell15.Location = new System.Drawing.Point(492, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(65, 75);
            this.xrTableCell15.StylePriority.UseBorders = false;
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "WF Name\r\n勞動者\r\n名稱";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell5.Location = new System.Drawing.Point(557, 0);
            this.xrTableCell5.Multiline = true;
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(40, 75);
            this.xrTableCell5.StylePriority.UseFont = false;
            this.xrTableCell5.Text = "\r\n\r\n  重檢\r\n   (?)";
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell1.Location = new System.Drawing.Point(597, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(52, 75);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Auditing Qty\r\n檢定\r\n數量";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4});
            this.xrTableCell2.Font = new System.Drawing.Font("Times New Roman", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell2.Location = new System.Drawing.Point(649, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(158, 75);
            this.xrTableCell2.StylePriority.UseBorders = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable4
            // 
            this.xrTable4.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTable4.Location = new System.Drawing.Point(0, 0);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow6,
            this.xrTableRow5});
            this.xrTable4.Size = new System.Drawing.Size(158, 75);
            this.xrTable4.StylePriority.UseBorders = false;
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell8});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(158, 35);
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell8.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell8.Multiline = true;
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(158, 35);
            this.xrTableCell8.StylePriority.UseFont = false;
            this.xrTableCell8.StylePriority.UseTextAlignment = false;
            this.xrTableCell8.Text = "Auditing Result\r\n檢定結果";
            this.xrTableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell32,
            this.xrTableCell3,
            this.xrTableCell6,
            this.xrTableCell7});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(158, 40);
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell32.Font = new System.Drawing.Font("Times New Roman", 6F, System.Drawing.FontStyle.Bold);
            this.xrTableCell32.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell32.Multiline = true;
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(42, 40);
            this.xrTableCell32.StylePriority.UseBorders = false;
            this.xrTableCell32.StylePriority.UseFont = false;
            this.xrTableCell32.Text = "合格(P)\r\n/數量";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell3.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(43, 40);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.StylePriority.UseFont = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "不合格(F)\r\n/數量";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell6.Font = new System.Drawing.Font("Times New Roman", 6F, System.Drawing.FontStyle.Bold);
            this.xrTableCell6.Location = new System.Drawing.Point(85, 0);
            this.xrTableCell6.Multiline = true;
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(40, 40);
            this.xrTableCell6.StylePriority.UseBorders = false;
            this.xrTableCell6.StylePriority.UseFont = false;
            this.xrTableCell6.StylePriority.UseTextAlignment = false;
            this.xrTableCell6.Text = "未分類(U)\r\n/數量";
            this.xrTableCell6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell7.Location = new System.Drawing.Point(125, 0);
            this.xrTableCell7.Multiline = true;
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(33, 40);
            this.xrTableCell7.StylePriority.UseFont = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.Text = "廢棄(S)\r\n/數量";
            this.xrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell9.Location = new System.Drawing.Point(807, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(42, 75);
            this.xrTableCell9.StylePriority.UseFont = false;
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = "FPY\r\n首次\r\n通量\r\n(%)";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.xrTableCell16.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.xrTableCell16.Location = new System.Drawing.Point(924, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(200, 75);
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(0, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow2});
            this.xrTable1.Size = new System.Drawing.Size(208, 75);
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell4});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(208, 37);
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell4.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell4.Multiline = true;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(208, 37);
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.Text = "疵點來源";
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell10,
            this.xrTableCell11,
            this.xrTableCell27,
            this.xrTableCell28,
            this.xrTableCell17});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(208, 38);
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell10.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell10.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell10.Multiline = true;
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(41, 38);
            this.xrTableCell10.StylePriority.UseBorders = false;
            this.xrTableCell10.StylePriority.UseFont = false;
            this.xrTableCell10.StylePriority.UseTextAlignment = false;
            this.xrTableCell10.Text = "EV\r\n環境";
            this.xrTableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell11.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell11.Location = new System.Drawing.Point(41, 0);
            this.xrTableCell11.Multiline = true;
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(41, 38);
            this.xrTableCell11.StylePriority.UseBorders = false;
            this.xrTableCell11.StylePriority.UseFont = false;
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            this.xrTableCell11.Text = "MA\r\n物料";
            this.xrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell27.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell27.Location = new System.Drawing.Point(82, 0);
            this.xrTableCell27.Multiline = true;
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(44, 38);
            this.xrTableCell27.StylePriority.UseBorders = false;
            this.xrTableCell27.StylePriority.UseFont = false;
            this.xrTableCell27.StylePriority.UseTextAlignment = false;
            this.xrTableCell27.Text = "CP\r\n裁片";
            this.xrTableCell27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell28.Location = new System.Drawing.Point(126, 0);
            this.xrTableCell28.Multiline = true;
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(41, 38);
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.Text = "WS\r\n車工";
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell17.Location = new System.Drawing.Point(167, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(41, 38);
            this.xrTableCell17.StylePriority.UseFont = false;
            this.xrTableCell17.StylePriority.UseTextAlignment = false;
            this.xrTableCell17.Text = "Others\r\n其他";
            this.xrTableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(383, 17);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(358, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Mobile Auditing Operation Report";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
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
            this.xrTable3.Location = new System.Drawing.Point(1, 0);
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
            this.col_Recheck,
            this.column_CheckQty,
            this.column_P,
            this.column_F,
            this.column_U,
            this.column_S,
            this.column_FPY,
            this.col_SortId,
            this.column_EV,
            this.column_MA,
            this.column_CP,
            this.column_WS,
            this.column_Other});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(1124, 25);
            // 
            // column_Line
            // 
            this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Line.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Line.Location = new System.Drawing.Point(0, 0);
            this.column_Line.Name = "column_Line";
            this.column_Line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Line.Size = new System.Drawing.Size(48, 25);
            this.column_Line.StylePriority.UseBorders = false;
            // 
            // column_Project
            // 
            this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Project.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Project.Location = new System.Drawing.Point(48, 0);
            this.column_Project.Name = "column_Project";
            this.column_Project.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Project.Size = new System.Drawing.Size(69, 25);
            this.column_Project.StylePriority.UseBorders = false;
            // 
            // column_CustStyle
            // 
            this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CustStyle.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_CustStyle.Location = new System.Drawing.Point(117, 0);
            this.column_CustStyle.Name = "column_CustStyle";
            this.column_CustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CustStyle.Size = new System.Drawing.Size(74, 25);
            this.column_CustStyle.StylePriority.UseBorders = false;
            // 
            // column_OPTCode
            // 
            this.column_OPTCode.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTCode.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_OPTCode.Location = new System.Drawing.Point(191, 0);
            this.column_OPTCode.Name = "column_OPTCode";
            this.column_OPTCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTCode.Size = new System.Drawing.Size(67, 25);
            this.column_OPTCode.StylePriority.UseBorders = false;
            this.column_OPTCode.StylePriority.UseFont = false;
            this.column_OPTCode.StylePriority.UseTextAlignment = false;
            this.column_OPTCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_OPTName
            // 
            this.column_OPTName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTName.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_OPTName.Location = new System.Drawing.Point(258, 0);
            this.column_OPTName.Name = "column_OPTName";
            this.column_OPTName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTName.Size = new System.Drawing.Size(183, 25);
            this.column_OPTName.StylePriority.UseBorders = false;
            this.column_OPTName.StylePriority.UseFont = false;
            this.column_OPTName.StylePriority.UseTextAlignment = false;
            this.column_OPTName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_WFID
            // 
            this.column_WFID.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFID.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_WFID.Location = new System.Drawing.Point(441, 0);
            this.column_WFID.Name = "column_WFID";
            this.column_WFID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFID.Size = new System.Drawing.Size(51, 25);
            this.column_WFID.StylePriority.UseBorders = false;
            this.column_WFID.StylePriority.UseFont = false;
            this.column_WFID.StylePriority.UseTextAlignment = false;
            this.column_WFID.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_WFName
            // 
            this.column_WFName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFName.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_WFName.Location = new System.Drawing.Point(492, 0);
            this.column_WFName.Name = "column_WFName";
            this.column_WFName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFName.Size = new System.Drawing.Size(65, 25);
            this.column_WFName.StylePriority.UseBorders = false;
            this.column_WFName.StylePriority.UseFont = false;
            this.column_WFName.StylePriority.UseTextAlignment = false;
            this.column_WFName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // col_Recheck
            // 
            this.col_Recheck.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_Recheck.Location = new System.Drawing.Point(557, 0);
            this.col_Recheck.Name = "col_Recheck";
            this.col_Recheck.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_Recheck.Size = new System.Drawing.Size(40, 25);
            this.col_Recheck.StylePriority.UseBorders = false;
            this.col_Recheck.StylePriority.UseTextAlignment = false;
            this.col_Recheck.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_CheckQty
            // 
            this.column_CheckQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CheckQty.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_CheckQty.Location = new System.Drawing.Point(597, 0);
            this.column_CheckQty.Name = "column_CheckQty";
            this.column_CheckQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CheckQty.Size = new System.Drawing.Size(52, 25);
            this.column_CheckQty.StylePriority.UseBorders = false;
            this.column_CheckQty.StylePriority.UseFont = false;
            this.column_CheckQty.StylePriority.UseTextAlignment = false;
            this.column_CheckQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_P
            // 
            this.column_P.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_P.Location = new System.Drawing.Point(649, 0);
            this.column_P.Name = "column_P";
            this.column_P.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_P.Size = new System.Drawing.Size(42, 25);
            this.column_P.StylePriority.UseBorders = false;
            this.column_P.StylePriority.UseTextAlignment = false;
            this.column_P.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_F
            // 
            this.column_F.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_F.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_F.Location = new System.Drawing.Point(691, 0);
            this.column_F.Name = "column_F";
            this.column_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_F.Size = new System.Drawing.Size(42, 25);
            this.column_F.StylePriority.UseBorders = false;
            this.column_F.StylePriority.UseFont = false;
            this.column_F.StylePriority.UseTextAlignment = false;
            this.column_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_U
            // 
            this.column_U.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_U.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_U.Location = new System.Drawing.Point(733, 0);
            this.column_U.Name = "column_U";
            this.column_U.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_U.Size = new System.Drawing.Size(41, 25);
            this.column_U.StylePriority.UseBorders = false;
            this.column_U.StylePriority.UseFont = false;
            this.column_U.StylePriority.UseTextAlignment = false;
            this.column_U.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_S
            // 
            this.column_S.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_S.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_S.Location = new System.Drawing.Point(774, 0);
            this.column_S.Name = "column_S";
            this.column_S.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_S.Size = new System.Drawing.Size(32, 25);
            this.column_S.StylePriority.UseBorders = false;
            this.column_S.StylePriority.UseFont = false;
            this.column_S.StylePriority.UseTextAlignment = false;
            this.column_S.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_FPY
            // 
            this.column_FPY.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_FPY.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_FPY.Location = new System.Drawing.Point(806, 0);
            this.column_FPY.Name = "column_FPY";
            this.column_FPY.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_FPY.Size = new System.Drawing.Size(43, 25);
            this.column_FPY.StylePriority.UseBorders = false;
            this.column_FPY.StylePriority.UseFont = false;
            this.column_FPY.StylePriority.UseTextAlignment = false;
            this.column_FPY.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_SortId
            // 
            this.col_SortId.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_SortId.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.col_SortId.Location = new System.Drawing.Point(849, 0);
            this.col_SortId.Name = "col_SortId";
            this.col_SortId.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_SortId.Size = new System.Drawing.Size(74, 25);
            this.col_SortId.StylePriority.UseBorders = false;
            this.col_SortId.StylePriority.UseFont = false;
            this.col_SortId.StylePriority.UseTextAlignment = false;
            this.col_SortId.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_EV
            // 
            this.column_EV.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_EV.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_EV.Location = new System.Drawing.Point(923, 0);
            this.column_EV.Name = "column_EV";
            this.column_EV.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_EV.Size = new System.Drawing.Size(40, 25);
            this.column_EV.StylePriority.UseBorders = false;
            this.column_EV.StylePriority.UseFont = false;
            this.column_EV.StylePriority.UseTextAlignment = false;
            this.column_EV.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_MA
            // 
            this.column_MA.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_MA.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_MA.Location = new System.Drawing.Point(963, 0);
            this.column_MA.Name = "column_MA";
            this.column_MA.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_MA.Size = new System.Drawing.Size(41, 25);
            this.column_MA.StylePriority.UseBorders = false;
            this.column_MA.StylePriority.UseFont = false;
            this.column_MA.StylePriority.UseTextAlignment = false;
            this.column_MA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_CP
            // 
            this.column_CP.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CP.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_CP.Location = new System.Drawing.Point(1004, 0);
            this.column_CP.Name = "column_CP";
            this.column_CP.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CP.Size = new System.Drawing.Size(44, 25);
            this.column_CP.StylePriority.UseBorders = false;
            this.column_CP.StylePriority.UseFont = false;
            this.column_CP.StylePriority.UseTextAlignment = false;
            this.column_CP.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_WS
            // 
            this.column_WS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WS.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_WS.Location = new System.Drawing.Point(1048, 0);
            this.column_WS.Name = "column_WS";
            this.column_WS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WS.Size = new System.Drawing.Size(41, 25);
            this.column_WS.StylePriority.UseBorders = false;
            this.column_WS.StylePriority.UseFont = false;
            this.column_WS.StylePriority.UseTextAlignment = false;
            this.column_WS.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_Other
            // 
            this.column_Other.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Other.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Other.Location = new System.Drawing.Point(1089, 0);
            this.column_Other.Name = "column_Other";
            this.column_Other.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Other.Size = new System.Drawing.Size(35, 25);
            this.column_Other.StylePriority.UseBorders = false;
            this.column_Other.StylePriority.UseFont = false;
            this.column_Other.StylePriority.UseTextAlignment = false;
            this.column_Other.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
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
            this.xrAverage.Location = new System.Drawing.Point(808, 67);
            this.xrAverage.Name = "xrAverage";
            this.xrAverage.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrAverage.Size = new System.Drawing.Size(42, 17);
            this.xrAverage.StylePriority.UseTextAlignment = false;
            this.xrAverage.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel2.Location = new System.Drawing.Point(0, 67);
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
            this.xrTableCell30.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold);
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
            this.xrTableCell35,
            this.columnF_CheckQty,
            this.columnF_P,
            this.columnF_F,
            this.columnF_U,
            this.columnF_S,
            this.columnF_FPY,
            this.xrTableCell33,
            this.columnF_EV,
            this.columnF_MA,
            this.columnF_CP,
            this.columnF_WS,
            this.columnF_Other});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(1124, 25);
            // 
            // xrlinetotal
            // 
            this.xrlinetotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrlinetotal.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrlinetotal.Location = new System.Drawing.Point(0, 0);
            this.xrlinetotal.Name = "xrlinetotal";
            this.xrlinetotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrlinetotal.Size = new System.Drawing.Size(48, 25);
            this.xrlinetotal.StylePriority.UseBorders = false;
            this.xrlinetotal.StylePriority.UseTextAlignment = false;
            this.xrlinetotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrprojtotal
            // 
            this.xrprojtotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrprojtotal.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrprojtotal.Location = new System.Drawing.Point(48, 0);
            this.xrprojtotal.Name = "xrprojtotal";
            this.xrprojtotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrprojtotal.Size = new System.Drawing.Size(69, 25);
            this.xrprojtotal.StylePriority.UseBorders = false;
            this.xrprojtotal.StylePriority.UseTextAlignment = false;
            this.xrprojtotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrstyletotal
            // 
            this.xrstyletotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrstyletotal.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrstyletotal.Location = new System.Drawing.Point(117, 0);
            this.xrstyletotal.Name = "xrstyletotal";
            this.xrstyletotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrstyletotal.Size = new System.Drawing.Size(74, 25);
            this.xrstyletotal.StylePriority.UseBorders = false;
            this.xrstyletotal.StylePriority.UseTextAlignment = false;
            this.xrstyletotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xropttotal
            // 
            this.xropttotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xropttotal.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xropttotal.Location = new System.Drawing.Point(191, 0);
            this.xropttotal.Name = "xropttotal";
            this.xropttotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xropttotal.Size = new System.Drawing.Size(67, 25);
            this.xropttotal.StylePriority.UseBorders = false;
            this.xropttotal.StylePriority.UseFont = false;
            this.xropttotal.StylePriority.UseTextAlignment = false;
            this.xropttotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell25.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrTableCell25.Location = new System.Drawing.Point(258, 0);
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(184, 25);
            this.xrTableCell25.StylePriority.UseBorders = false;
            this.xrTableCell25.StylePriority.UseFont = false;
            this.xrTableCell25.StylePriority.UseTextAlignment = false;
            this.xrTableCell25.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrWorkers
            // 
            this.xrWorkers.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrWorkers.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrWorkers.Location = new System.Drawing.Point(442, 0);
            this.xrWorkers.Name = "xrWorkers";
            this.xrWorkers.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrWorkers.Size = new System.Drawing.Size(51, 25);
            this.xrWorkers.StylePriority.UseBorders = false;
            this.xrWorkers.StylePriority.UseFont = false;
            this.xrWorkers.StylePriority.UseTextAlignment = false;
            this.xrWorkers.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell29.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold);
            this.xrTableCell29.Location = new System.Drawing.Point(493, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(65, 25);
            this.xrTableCell29.StylePriority.UseBorders = false;
            this.xrTableCell29.StylePriority.UseFont = false;
            this.xrTableCell29.StylePriority.UseTextAlignment = false;
            this.xrTableCell29.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell35
            // 
            this.xrTableCell35.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell35.Location = new System.Drawing.Point(558, 0);
            this.xrTableCell35.Name = "xrTableCell35";
            this.xrTableCell35.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell35.Size = new System.Drawing.Size(42, 25);
            this.xrTableCell35.StylePriority.UseBorders = false;
            // 
            // columnF_CheckQty
            // 
            this.columnF_CheckQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_CheckQty.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_CheckQty.Location = new System.Drawing.Point(600, 0);
            this.columnF_CheckQty.Name = "columnF_CheckQty";
            this.columnF_CheckQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_CheckQty.Size = new System.Drawing.Size(50, 25);
            this.columnF_CheckQty.StylePriority.UseBorders = false;
            this.columnF_CheckQty.StylePriority.UseFont = false;
            this.columnF_CheckQty.StylePriority.UseTextAlignment = false;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_CheckQty.Summary = xrSummary1;
            this.columnF_CheckQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.columnF_CheckQty.SummaryGetResult += new DevExpress.XtraReports.UI.SummaryGetResultHandler(this.columnF_CheckQty_SummaryGetResult);
            // 
            // columnF_P
            // 
            this.columnF_P.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_P.Location = new System.Drawing.Point(650, 0);
            this.columnF_P.Name = "columnF_P";
            this.columnF_P.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_P.Size = new System.Drawing.Size(42, 25);
            this.columnF_P.StylePriority.UseBorders = false;
            this.columnF_P.StylePriority.UseTextAlignment = false;
            this.columnF_P.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.columnF_P.SummaryGetResult += new DevExpress.XtraReports.UI.SummaryGetResultHandler(this.columnF_P_SummaryGetResult);
            // 
            // columnF_F
            // 
            this.columnF_F.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_F.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_F.Location = new System.Drawing.Point(692, 0);
            this.columnF_F.Name = "columnF_F";
            this.columnF_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_F.Size = new System.Drawing.Size(41, 25);
            this.columnF_F.StylePriority.UseBorders = false;
            this.columnF_F.StylePriority.UseFont = false;
            this.columnF_F.StylePriority.UseTextAlignment = false;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_F.Summary = xrSummary2;
            this.columnF_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.columnF_F.SummaryGetResult += new DevExpress.XtraReports.UI.SummaryGetResultHandler(this.columnF_F_SummaryGetResult);
            // 
            // columnF_U
            // 
            this.columnF_U.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_U.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_U.Location = new System.Drawing.Point(733, 0);
            this.columnF_U.Name = "columnF_U";
            this.columnF_U.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_U.Size = new System.Drawing.Size(42, 25);
            this.columnF_U.StylePriority.UseBorders = false;
            this.columnF_U.StylePriority.UseFont = false;
            this.columnF_U.StylePriority.UseTextAlignment = false;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_U.Summary = xrSummary3;
            this.columnF_U.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // columnF_S
            // 
            this.columnF_S.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_S.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_S.Location = new System.Drawing.Point(775, 0);
            this.columnF_S.Name = "columnF_S";
            this.columnF_S.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_S.Size = new System.Drawing.Size(32, 25);
            this.columnF_S.StylePriority.UseBorders = false;
            this.columnF_S.StylePriority.UseFont = false;
            this.columnF_S.StylePriority.UseTextAlignment = false;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_S.Summary = xrSummary4;
            this.columnF_S.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // columnF_FPY
            // 
            this.columnF_FPY.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_FPY.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_FPY.Location = new System.Drawing.Point(807, 0);
            this.columnF_FPY.Name = "columnF_FPY";
            this.columnF_FPY.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_FPY.Size = new System.Drawing.Size(43, 25);
            this.columnF_FPY.StylePriority.UseBorders = false;
            this.columnF_FPY.StylePriority.UseFont = false;
            this.columnF_FPY.StylePriority.UseTextAlignment = false;
            xrSummary5.Func = DevExpress.XtraReports.UI.SummaryFunc.Custom;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_FPY.Summary = xrSummary5;
            this.columnF_FPY.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.columnF_FPY.Visible = false;
            this.columnF_FPY.SummaryGetResult += new DevExpress.XtraReports.UI.SummaryGetResultHandler(this.columnF_FPY_SummaryGetResult);
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell33.Location = new System.Drawing.Point(850, 0);
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(73, 25);
            this.xrTableCell33.StylePriority.UseBorders = false;
            // 
            // columnF_EV
            // 
            this.columnF_EV.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_EV.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_EV.Location = new System.Drawing.Point(923, 0);
            this.columnF_EV.Name = "columnF_EV";
            this.columnF_EV.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_EV.Size = new System.Drawing.Size(41, 25);
            this.columnF_EV.StylePriority.UseBorders = false;
            this.columnF_EV.StylePriority.UseFont = false;
            this.columnF_EV.StylePriority.UseTextAlignment = false;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_EV.Summary = xrSummary6;
            this.columnF_EV.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // columnF_MA
            // 
            this.columnF_MA.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_MA.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_MA.Location = new System.Drawing.Point(964, 0);
            this.columnF_MA.Name = "columnF_MA";
            this.columnF_MA.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_MA.Size = new System.Drawing.Size(41, 25);
            this.columnF_MA.StylePriority.UseBorders = false;
            this.columnF_MA.StylePriority.UseFont = false;
            this.columnF_MA.StylePriority.UseTextAlignment = false;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_MA.Summary = xrSummary7;
            this.columnF_MA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // columnF_CP
            // 
            this.columnF_CP.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_CP.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_CP.Location = new System.Drawing.Point(1005, 0);
            this.columnF_CP.Name = "columnF_CP";
            this.columnF_CP.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_CP.Size = new System.Drawing.Size(44, 25);
            this.columnF_CP.StylePriority.UseBorders = false;
            this.columnF_CP.StylePriority.UseFont = false;
            this.columnF_CP.StylePriority.UseTextAlignment = false;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_CP.Summary = xrSummary8;
            this.columnF_CP.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // columnF_WS
            // 
            this.columnF_WS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_WS.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_WS.Location = new System.Drawing.Point(1049, 0);
            this.columnF_WS.Name = "columnF_WS";
            this.columnF_WS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_WS.Size = new System.Drawing.Size(41, 25);
            this.columnF_WS.StylePriority.UseBorders = false;
            this.columnF_WS.StylePriority.UseFont = false;
            this.columnF_WS.StylePriority.UseTextAlignment = false;
            xrSummary9.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_WS.Summary = xrSummary9;
            this.columnF_WS.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // columnF_Other
            // 
            this.columnF_Other.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.columnF_Other.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.columnF_Other.Location = new System.Drawing.Point(1090, 0);
            this.columnF_Other.Name = "columnF_Other";
            this.columnF_Other.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.columnF_Other.Size = new System.Drawing.Size(34, 25);
            this.columnF_Other.StylePriority.UseBorders = false;
            this.columnF_Other.StylePriority.UseFont = false;
            this.columnF_Other.StylePriority.UseTextAlignment = false;
            xrSummary10.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.columnF_Other.Summary = xrSummary10;
            this.columnF_Other.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // rptQC_MasterAnalyzeOPT2
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
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
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
                this.xrAverage.Text = e.Result.ToString();
            }
        }

        ArrayList _alline = new ArrayList();
        ArrayList _alproj = new ArrayList();
        ArrayList _alstyle = new ArrayList();
        ArrayList _alworker = new ArrayList();
        ArrayList _aloptcode = new ArrayList();

        int i = 1;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SP_QC_MasterAnalyz gbs = this.GetCurrentRow() as SP_QC_MasterAnalyz;
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

          
            if (i <= 10)
                this.col_SortId.Text = i.ToString();
            else
                col_SortId.Text = "";

            i++;

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrlinetotal.Text = _alline.Count.ToString();
            this.xropttotal.Text = _aloptcode.Count.ToString();
            this.xrprojtotal.Text = _alproj.Count.ToString();
            this.xrstyletotal.Text = _alstyle.Count.ToString();
            this.xrWorkers.Text = _alworker.Count.ToString();
            
        }
    }
}
