using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Utils;
using DevExpress.Utils.Drawing;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraReports.UI;
using PH.Platform.ExtendLibrary;
using PH.POPC.BO;
using PH.Platform.BO;
using System.Diagnostics;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.POPC.UI
{

    public class ByteFile
    {
        //打開文件的類型常量

        public const string PdfFileFilter = "PDF 文档(*.PDF)|*.PDF";
        public const string ExcelFileFilter = "Excel 文档(*.xls)|*.xls";
        public const string WordFileFilter = "Word 文档(*.doc)|*.doc";
        public const string TxtileFilter = "文本 文档(*.txt)|*.txt";

        //BulkSubmission; ColorStd; DipSubmit; Lot; TestStatus



        //讀取文件為二進制形式
        public static byte[] ReadFile(string FileName)
        {
            if (System.IO.File.Exists(FileName) == true)
            {
                FileStream fs = new FileStream(FileName, FileMode.Open);
                int length = Convert.ToInt32(fs.Length);
                byte[] bt = new byte[length];
                fs.Position = 0;
                fs.Read(bt, 0, length);
                fs.Close();
                return bt;
            }
            else
            {
                return null;
            }
        }

    }
    public static class Common
    {
        //public const string SampleApproval = "SampleApproval";
        //public const string BulkSubmission = "BulkSubmission";
        //public const string ColorStd = "ColorStd";
        //public const string DipSubmit = "DipSubmit";
        //public const string Lot = "Lot";
        //public const string TestStatus = "TestStatus";
        //public const string SaveInfo = "Data have been Saved";

        public static string[] ConvertToArray(string s)
        {
            s = s.Replace("\r\n", ",");
            if (!string.IsNullOrEmpty(s)) s = s.Trim();
            string[] ss = s.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);

            for (int i = 0; i < ss.Length; i++)
            {
                string s1 = ss[i].Trim();
                ss[i] = s1;
            }
            return ss;
        }

        public static int GetOrderLine(string Company, string PONO, int Version, int AmendmentNo)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            return context.sp_GetOrderLine(Company, PONO, Version, AmendmentNo).First().OrderLine.Value;

        }
        public static void SetFormStatus(Control ctl)
        {
            foreach (Control sub in ctl.Controls)
            {
                if (sub as DevExpress.XtraEditors.TextEdit != null)
                {
                    ((DevExpress.XtraEditors.TextEdit)sub).Enabled = true;
                    ((DevExpress.XtraEditors.TextEdit)sub).Properties.ReadOnly = true;
                }
                else if (sub as DevExpress.XtraEditors.TimeEdit != null)
                {
                    ((DevExpress.XtraEditors.TimeEdit)sub).Enabled = true;
                    ((DevExpress.XtraEditors.TimeEdit)sub).Properties.ReadOnly = true;
                }
                else if (sub as DevExpress.XtraEditors.SpinEdit != null)
                {
                    ((DevExpress.XtraEditors.SpinEdit)sub).Enabled = true;
                    ((DevExpress.XtraEditors.SpinEdit)sub).Properties.ReadOnly = true;
                }
                else if (sub as DevExpress.XtraEditors.ComboBoxEdit != null)
                {
                    ((DevExpress.XtraEditors.ComboBoxEdit)sub).Enabled = true;
                    ((DevExpress.XtraEditors.ComboBoxEdit)sub).Properties.ReadOnly = true;
                }
                else if (sub as DevExpress.XtraEditors.LabelControl != null)
                {
                    ((DevExpress.XtraEditors.LabelControl)sub).Enabled = true;
                    // ((DevExpress.XtraEditors.LabelControl)sub).Properties.ReadOnly = true;
                }
                else if (sub as DevExpress.XtraEditors.ListBoxControl != null)
                {
                    ((DevExpress.XtraEditors.ListBoxControl)sub).Enabled = true;
                    //((DevExpress.XtraEditors.ListBoxControl)sub).Properties.ReadOnly = true;
                }
                else if (sub as DevExpress.XtraEditors.LookUpEdit != null)
                {
                    ((DevExpress.XtraEditors.LookUpEdit)sub).Enabled = true;
                    ((DevExpress.XtraEditors.LookUpEdit)sub).Properties.ReadOnly = true;
                }

                //else if (sub as PH.Platform.UI.CS.UI2.ListForm != null)
                //{
                //    ((PH.Platform.UI.CS.UI2.ListForm)sub).AllowGridEdit = false;
                //    ((PH.Platform.UI.CS.UI2.ListForm)sub).AllowKeyPress = false;

                //}
                else if (sub.Controls.Count > 1)
                {
                    SetFormStatus(sub);
                }
            }
        }
        public static void PostGridValue(DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            if (view.PostEditor())
            {
                view.HideEditor();
                view.UpdateCurrentRow();
            }
        }

        #region POPC Report
        private static string GetSummaryReportLevelTitle(POPCPrintType printType, POPCPrintLevel printLevel)
        {
            string s = "";
            switch (printLevel)
            {
                case POPCPrintLevel.None:
                    break;
                case POPCPrintLevel.InAdvance:
                    break;
                case POPCPrintLevel.OneA:
                case POPCPrintLevel.OneB:
                    s = " - Level 1";
                    break;
                case POPCPrintLevel.TwoA:
                case POPCPrintLevel.TwoB:
                    s = " - Level 2 Part I";
                    break;
                case POPCPrintLevel.TwoAChange:
                case POPCPrintLevel.TwoBChange:
                    s = " - Level 2 Part II - Changed";
                    break;
                case POPCPrintLevel.Three:
                    s = " - Level 3";
                    break;
                case POPCPrintLevel.Five1:
                case POPCPrintLevel.Five2:
                    s = " - Level 4";
                    break;
                default:
                    break;
            }
            return s;
        }
        #region No use

        //public static void PrintPOPC1(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCPrintType printType, POPCPrintLevel printLevel)
        //{
        //    DevExpress.XtraReports.UI.XtraReport report = null;
        //    BindingSource bsData = new BindingSource();
        //    bsData.DataSource = view.FilteredList();// view.DataSource;

        //    string subfix = GetSummaryReportLevelTitle(printType, printLevel);

        //    switch (printType)
        //    {
        //        case POPCPrintType.FrontPage:
        //            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummaryReport();

        //            //title
        //            (report as PH.POPC.BackEnd.POPCNewformat.POPCSummaryReport).PHLabel_Title.Text = string.Format("PO Summary{0}{1}", subfix,
        //                (printLevel == POPCPrintLevel.Four1) ?
        //                    " Part I - Unit Dependent"
        //                    : ((printLevel == POPCPrintLevel.Four2) ? " Part II - Unit Independent" : ""));

        //            //filter
        //            report.FilterString = (printLevel == POPCPrintLevel.Four1) ? "[ConvertFactor] = 1.0" : ((printLevel == POPCPrintLevel.Four2) ? "[ConvertFactor] <> 1.0" : "");

        //            List<object> a1 = view.FilteredList();
        //            if (a1 == null) return;
        //            bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a1);
        //            break;
        //        case POPCPrintType.ItemChanged:
        //            report = new PH.POPC.BackEnd.POPCNewformat.ItemChangedReport();
        //            List<object> ac = view.FilteredList();
        //            if (ac == null) return;
        //            bsData.DataSource = POColorSizeDetail.GetLevel2DataSourceItemChange(ac, false);
        //            break;
        //        case POPCPrintType.ItemSpec:
        //            report = new PH.POPC.BackEnd.POPCNewformat.POPCInAdvanceSpecReport();
        //            break;
        //        case POPCPrintType.SupplementSheet:
        //            if (printLevel == POPCPrintLevel.InAdvance)
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCInAdvanceSupplementReport();
        //            else if (printLevel == POPCPrintLevel.OneA)
        //            {
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1aSupplementSheetReport();
        //                List<object> a2 = view.FilteredList();
        //                if (a2 == null) return;
        //                bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a2);
        //            }
        //            else if (printLevel == POPCPrintLevel.OneB)
        //            {
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport();
        //                //BindingSource bs = view.DataSource as BindingSource;
        //                List<object> aa = view.FilteredList();
        //                if (aa == null) return;
        //                //IEnumerable<POColorSizeDetail> aa = bs.DataSource as IEnumerable<POColorSizeDetail>;
        //                //report.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(aa);
        //                bsData.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(aa);
        //                //haveApplyData = true;
        //            }
        //            else if (printLevel == POPCPrintLevel.TwoB)
        //            {
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport();
        //                //BindingSource bs = view.DataSource as BindingSource;
        //                List<object> aa = view.FilteredList();
        //                if (aa == null) return;
        //                //IEnumerable<POChangesMonitor> aa = bs.DataSource as IEnumerable<POChangesMonitor>;
        //                //report.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(aa);
        //                bsData.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(aa);
        //                //haveApplyData = true;
        //            }
        //            else if (printLevel == POPCPrintLevel.TwoBChange)
        //            {
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport();
        //                (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport).PHLabel_Title.Text = "POPC - Level 2c - supplement sheet of Balance Qty B/down on Size / Cup";
        //                List<object> aa = view.FilteredList();
        //                if (aa == null) return;
        //                bsData.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(aa, true);
        //            }
        //            else
        //            {
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();

        //                //title
        //                (report as PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport).lbSubTitle.Text = string.Format("{0}{1}", subfix,
        //                    (printLevel == POPCPrintLevel.Four1) ? " Part I - Unit Dependent" : ((printLevel == POPCPrintLevel.Four2) ? " Part II - Unit Independent" : ""));
        //                //filter
        //                report.FilterString = (printLevel == POPCPrintLevel.Four1) ? "[ConvertFactor] = 1.0" : ((printLevel == POPCPrintLevel.Four2) ? "[ConvertFactor] <> 1.0" : "");

        //                List<object> a3 = view.FilteredList();
        //                if (a3 == null) return;
        //                bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a3);
        //            }
        //            break;
        //        case POPCPrintType.InvoiceMatching:
        //            if (printLevel == POPCPrintLevel.Four1)
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel4a2Report();
        //            else if (printLevel == POPCPrintLevel.Four2)
        //                report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel4b2Report();
        //            break;
        //        case POPCPrintType.Level:
        //            switch (printLevel)
        //            {
        //                case POPCPrintLevel.InAdvance:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCInAdvanceReport();
        //                    break;
        //                case POPCPrintLevel.OneA:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1aReport();
        //                    break;
        //                case POPCPrintLevel.OneB:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1bReport();
        //                    break;
        //                case POPCPrintLevel.TwoA:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2aReport();
        //                    List<object> a4 = view.FilteredList();
        //                    if (a4 == null) return;
        //                    bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a4);
        //                    break;
        //                case POPCPrintLevel.TwoB:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport();
        //                    (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport).PHLabel_Title.Text = "POPC - Level 2b - Delivery Monitor";
        //                    break;

        //                case POPCPrintLevel.TwoAChange:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2aReport();
        //                    (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2aReport).PHLabel_Title.Text += " - changed";
        //                    List<object> a5 = view.FilteredList();
        //                    if (a5 == null) return;
        //                    bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a5, true);
        //                    break;
        //                case POPCPrintLevel.TwoBChange:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport();
        //                    (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport).PHLabel_Title.Text = "POPC - Level 2c - Delivery Change Monitor (Time, Qty and Transit mode)";
        //                    List<object> a6 = view.FilteredList();
        //                    if (a6 == null) return;
        //                    bsData.DataSource = POColorSizeDetail.GetLevel2DataSource(a6, true);
        //                    break;

        //                case POPCPrintLevel.Three:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel3aReport();
        //                    break;
        //                case POPCPrintLevel.Four1:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel4a1Report();
        //                    break;
        //                case POPCPrintLevel.Four2:
        //                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel4b1Report();
        //                    break;
        //                default:
        //                    break;
        //            }
        //            break;
        //        default:
        //            break;
        //    }
        //    if (report != null)
        //    {
        //        report.ExportOptions.PrintPreview.DefaultFileName = GetReportFileName(printType, printLevel);

        //        report.DataSource = bsData;
        //        //report.ShowDesignerDialog();
        //        report.ShowPreviewDialog();
        //    }



        //    //string levelTitle = GetReportTitle(printType, printLevel);
        //    //DevExpress.XtraReports.UI.XtraReport report = Common.CreateReportByGrid(view, printType, levelTitle);
        //    //report.ShowDesignerDialog();
        //}

        #endregion
        private static string GetReportTitle(POPCPrintType printType, POPCPrintLevel printLevel)
        {
            switch (printType)
            {
                case POPCPrintType.FrontPage:
                    return "POPC - Front Page";
                case POPCPrintType.SupplementSheet:
                    if (printLevel == POPCPrintLevel.InAdvance)
                        return "POPC in Advance - Supplement sheet of colorist comment";
                    else if (printLevel == POPCPrintLevel.OneA)
                        return "POPC - Level 1a - Supplement sheet of colorist comment";
                    else if (printLevel == POPCPrintLevel.TwoB)
                        return "POPC - Level 2 - Supplement sheet 2 / Additional info \"Size/Cup Balance Qty breakdown\"";
                    else
                        return "POPC - Front Page - Supplement Sheet 1 / Additional info of \"End Customer\", \"Delivery\" & \"Size/Cup Range\"";
                case POPCPrintType.InvoiceMatching:
                    return "POPC - Level 4 - Invoice Matching";
                case POPCPrintType.Level:
                    switch (printLevel)
                    {
                        case POPCPrintLevel.InAdvance:
                            return "POPC in advance - MT (Material Technical) - Color Standard & Lab Dip processing before issue Official PO";
                        case POPCPrintLevel.OneA:
                            return "POPC - Level 1a - MT - Color Standard & Lab Dip processing for Production Release";
                        case POPCPrintLevel.OneB:
                            return "POPC - Level 1b - MT - Bulk Color Approval processing for Shipment Release";
                        case POPCPrintLevel.TwoA:
                            return "POPC - Level 2a - Monitoring PO's Delivery dd matching RWO's FW Start dd";
                        case POPCPrintLevel.TwoB:
                            return "POPC - Level 2b - Delivery Change Monitor (Time, Qty and Transit mode)";
                        case POPCPrintLevel.Three:
                            return "POPC - Level 3 - Return Cargo Monitor";
                        case POPCPrintLevel.Four:
                            return "POPC - Level 4 - Liability determination";
                        case POPCPrintLevel.Five1:
                            return "POPC - Level 5.1 - Invoice Matching (Unit Dependent - PO unit is equal to ERP Stk-in unit)";
                        case POPCPrintLevel.Five2:
                            return "POPC - Level 5.2 - Invoice Matching (Unit Independent - PO unit is not the same as ERP Stk-in unit)";
                        default:
                            break;
                    }
                    break;
                default:
                    break;
            }
            return "";
        }
        public static string GetReportFileName(POPCPrintType printType, POPCPrintLevel printLevel)
        {
            switch (printType)
            {
                case POPCPrintType.FrontPage:
                    return string.Format("POPC Summary{0} Report", GetSummaryReportLevelTitle(printType, printLevel));
                case POPCPrintType.ItemChanged:
                    return "Item Changed Report";
                case POPCPrintType.ItemSpec:
                    return "POPC in Advance - Item's spec in BOM";
                case POPCPrintType.SupplementSheet:
                    if (printLevel == POPCPrintLevel.InAdvance)
                        return "POPC in Advance Supplement Report";
                    else if (printLevel == POPCPrintLevel.OneA)
                    {
                        return "Level 1a Supplement Sheet of Colorist Comment";
                    }
                    //else if (printLevel == POPCPrintLevel.OneB)
                    //{
                    //    return "Level 2b Supplement Sheet Report";
                    //}
                    else if (printLevel == POPCPrintLevel.TwoB)
                    {
                        return "Level 2b Supplement Sheet Report";
                    }
                    else if (printLevel == POPCPrintLevel.TwoBChange)
                    {
                        return "Level 2c Supplement Sheet Report";
                    }
                    else
                    {
                        return string.Format("PO Summary Supplement Sheet{0} Report", GetSummaryReportLevelTitle(printType, printLevel));
                    }
                case POPCPrintType.InvoiceMatching:
                    if (printLevel == POPCPrintLevel.Five1)
                        return "POPC - Level 5";
                    //return "Level 5a.2-2 Report";
                    else if (printLevel == POPCPrintLevel.Five2)
                        return "Level 5b.2-2 Report";
                    else return "Unknown";
                case POPCPrintType.Level:
                    switch (printLevel)
                    {
                        case POPCPrintLevel.InAdvance:
                            return "POPC in Advance(QA) Report";
                        case POPCPrintLevel.OneA:
                            return "Level 1a Report";
                        case POPCPrintLevel.OneB:
                            return "Level 1b Report";
                        case POPCPrintLevel.TwoA:
                            return "Level 2a Report";
                        case POPCPrintLevel.TwoB:
                            return "Level 2b - Delivery Monitor Report";
                        case POPCPrintLevel.TwoAChange:
                            return "Level 2a Report(Changed)";
                        case POPCPrintLevel.TwoBChange:
                            return "Level 2c - Delivery Change Monitor Report";
                        case POPCPrintLevel.Three:
                            return "Level 3a Report";
                        case POPCPrintLevel.Four:
                            return "Level 4 Report";
                        case POPCPrintLevel.Five1:
                            return "Level 5 Report";
                        //return "Level 5a.1-2 Report";
                        case POPCPrintLevel.Five2:
                            return "Level 5b.1-2 Report";
                        default:
                            return "Unknown";
                    }
                //break;
                default:
                    break;
            }

            //1	POPC in Advance										
            //    1	MT (Material Technical) - Color Standard & Lab Dip Processing Monitor before issue Official PO									
            //    2	Supplement Sheet of Colorist Comment									
            //    3	Item's spec. in BOM									

            //2	POPC - PO Summary										
            //    1	PO Summary									
            //    2	PO Summary - Supplement Sheet of information related to End Customer, Delivery & Size/Cup Range									
            //        ***PO Summary and it's supplement sheet can split into 2 parts, they are Del Monitor & Del Change Monitor									
            //         at Level 2 & Unit dependent & Unit independent at Level 4									

            //3	POPC Level 1										
            //    1	1a - MT - Color Standard & Lab Dip Processing for Production Release									
            //    2	1a - Supplement Sheet of Colorist Comment									
            //    3	1b - MT - Bulk Color Approval Processing for Shipment Release 									

            //4	POPC Level 2 (I/II)										
            //    1	Part I									
            //        1	2a - Monitoring PO's Delivery dd Matching RWO's FW Start dd								
            //        2	2b - Delivery Monitor								
            //        3	2b - supplement sheet of Balance Qty B/down on Size/Cup								
            //    2	Part II - Changed									
            //        1	2c - Delivery Change Monitor (Time, Qty & Transit mode)								
            //        2	2c - supplement sheet of Balance Qty B/down on Size/Cup 								
            //5	POPC Level 3										
            //    1	3a - Cargo Return Monitor									

            //6	POPC Level 4 (I/II)										
            //    1	Part I - Unit dependent									
            //        1	4a(i) - 1st step of Invoicing Matching on PO Qty based on Unit dependent 								
            //             [Supplier's unit (PO/Inv) are same to our ERP's Stk-in unit]								
            //        2	4a(ii) - 2nd step of Invoicing Matching on Other Points based on Unit dependent								
            //    2	Part II - Unit independent									
            //        1	4b(i) - 1st step of Invoicing Matching on PO Qty based on Unit independent								
            //             [Supplier's unit (PO/Inv) are  different to our ERP's Stk-in unit]								
            //        2	4b(ii) - 2nd step of Invoicing Matching on Other Points based on Unit independent								


            return "Unknown";
        }
        public static string GetAnalysisReportFileName(POPCAnalysisPrintType printType, POPCPrintLevel printLevel)
        {
            switch (printType)
            {
                case POPCAnalysisPrintType.Replacement:
                    return "Level 3 - Cargo Return Analysis Report - Replacement";
                case POPCAnalysisPrintType.CreditCash:
                    return "Level 3 - Cargo Return Analysis Report - Non replacement & non payment of said materials";
                case POPCAnalysisPrintType.WeeklyAmount:
                    return "POPC - WeeklyAmount";
                case POPCAnalysisPrintType.SuppPerformance:
                    return "Level 2 - Supplier Delivery Performance";
                default:
                    break;
            }


            return "Unknown";
        }


        public static void PrintPOPC(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCPrintType printType, POPCPrintLevel printLevel)
        {
            //string levelTitle = GetReportTitle(printType, printLevel);
            //DevExpress.XtraReports.UI.XtraReport rpt = Common.CreateReportByGrid(view, printType, levelTitle);
            //rpt.ShowDesignerDialog();
            //return;

            string subTitle;
            DevExpress.XtraReports.UI.XtraReport report = null;
            BindingSource bsData = new BindingSource();
            //bsData.DataSource = view.FilteredList();// view.DataSource;
            List<POColorSizeDetail> reportDS = null;

            List<object> a1 = view.FilteredList();
            if (a1 == null) return;
            bsData.DataSource = a1;

            #region Print Type

            switch (printType)
            {
                case POPCPrintType.FrontPage:
                    #region FrontPage

                    report = new PH.POPC.BackEnd.POPCNewformat.POPCSummaryReport();

                    subTitle = "";

                    #region Level

                    switch (printLevel)
                    {
                        case POPCPrintLevel.None:
                            break;
                        case POPCPrintLevel.InAdvance:
                            break;
                        case POPCPrintLevel.OneA:
                            subTitle = " - Level 2";
                            break;
                        case POPCPrintLevel.OneB:
                            subTitle = " - Level 2";
                            break;
                        case POPCPrintLevel.TwoA:
                            subTitle = " - Level 3 Part I";
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, false);
                            break;
                        case POPCPrintLevel.TwoB:
                            subTitle = " - Level 3 Part I";
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, false);
                            break;
                        case POPCPrintLevel.TwoAChange:
                            subTitle = " - Level 3 Part II - Changed";
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, true);
                            break;
                        case POPCPrintLevel.TwoBChange:
                            subTitle = " - Level 3 Part II - Changed";
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, true);
                            break;
                        case POPCPrintLevel.Three:
                            subTitle = " - Level 4";
                            break;
                        case POPCPrintLevel.Four:
                            subTitle = " - Level 5";
                            break;
                        case POPCPrintLevel.Five1:
                            subTitle = " - Level 6";
                            //filter
                            // report.FilterString = "[ConvertFactor] = 1.0";
                            break;
                        case POPCPrintLevel.Five2:
                            subTitle = " - Level 6"; //Part II - Unit Independent
                            //filter
                            //report.FilterString = "[ConvertFactor] <> 1.0";
                            break;
                        default:
                            break;
                    }
                    #endregion

                    (report as PH.POPC.BackEnd.POPCNewformat.POPCSummaryReport).lbSubTitle.Text = subTitle;
                    if (reportDS == null)
                        reportDS = POColorSizeDetail.GetLevelDataSource(a1, (bool?)null);

                    bsData.DataSource = reportDS;
                    #endregion
                    break;
                case POPCPrintType.SupplementSheet:
                    #region SupplementSheet

                    subTitle = "";
                    bool isSummarySheet = false;

                    #region Level

                    switch (printLevel)
                    {
                        case POPCPrintLevel.None:
                            break;
                        case POPCPrintLevel.InAdvance:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCInAdvanceSupplementReport();
                            break;
                        case POPCPrintLevel.OneA:
                            subTitle = " - Level 1";

                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1aSupplementSheetReport();
                            bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a1, (bool?)null);
                            break;
                        case POPCPrintLevel.OneB:
                            //Yes
                            isSummarySheet = true;
                            subTitle = " - Level 1";
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            break;
                        case POPCPrintLevel.TwoA:
                            //Yes
                            isSummarySheet = true;
                            subTitle = " - Level 3 Part I";
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, false);
                            break;
                        case POPCPrintLevel.TwoB:
                            subTitle = " - Level 3 Part I";

                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport();
                            (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport).PHLabel_Title.Text = "POPC - Level 3b - Supplement sheet of Balance Qty B/down on Size/Cup";
                            bsData.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(a1, false);

                            break;
                        case POPCPrintLevel.TwoAChange:
                            //Yes
                            isSummarySheet = true;
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            subTitle = " - Level 3 Part II - Changed";
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, true);
                            break;
                        case POPCPrintLevel.TwoBChange:
                            subTitle = " - Level 3 Part II - Changed";

                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport();
                            (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bSupplementSheetReport).PHLabel_Title.Text = "POPC - Level 3c - Supplement sheet of Balance Qty B/down on Size/Cup";
                            bsData.DataSource = POPCLevel2Supplement.GetLevel2SupplementDataSource(a1, true);

                            break;
                        case POPCPrintLevel.Three:
                            //Yes
                            isSummarySheet = true;
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            subTitle = " - Level 4";
                            break;
                        case POPCPrintLevel.Four:
                            //Yes
                            isSummarySheet = true;
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            subTitle = " - Level 5";
                            break;
                        case POPCPrintLevel.Five1:
                            //Yes
                            isSummarySheet = true;
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            subTitle = " - Level 6";// Part I - Unit Dependent
                            //filter
                            //report.FilterString = "[ConvertFactor] = 1.0";
                            break;
                        case POPCPrintLevel.Five2:
                            //Yes
                            isSummarySheet = true;
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport();
                            subTitle = " - Level 6";// Part II - Unit Independent
                            //filter
                            //report.FilterString = "[ConvertFactor] <> 1.0";
                            break;
                        default:
                            break;
                    }
                    #endregion

                    if (isSummarySheet)
                    {
                        (report as PH.POPC.BackEnd.POPCNewformat.POPCSummarySupplementSheetReport).lbSubTitle.Text = subTitle;

                        if (reportDS == null)
                            reportDS = POColorSizeDetail.GetLevelDataSource(a1, (bool?)null);
                        bsData.DataSource = reportDS;
                    }

                    #endregion
                    break;
                case POPCPrintType.Level:
                    #region Level

                    switch (printLevel)
                    {
                        case POPCPrintLevel.InAdvance:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCInAdvanceReport();
                            break;
                        case POPCPrintLevel.OneA:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1aReport();
                            break;
                        case POPCPrintLevel.OneB:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1bReport();
                            break;
                        case POPCPrintLevel.TwoA:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2aReport();
                            //List<object> a4 = view.FilteredList();
                            //if (a4 == null) return;
                            bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a1, false);
                            break;
                        case POPCPrintLevel.TwoB:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport();
                            (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport).PHLabel_Title.Text = "POPC - Level 3b - Delivery Monitor";
                            bsData.DataSource = POColorSizeDetail.GetLevel2DataSource(a1, false);
                            break;

                        case POPCPrintLevel.TwoAChange:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2aReport();
                            //(report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2aReport).PHLabel_Title.Text += " - changed";
                            //List<object> a5 = view.FilteredList();
                            //if (a5 == null) return;
                            bsData.DataSource = POColorSizeDetail.GetLevelDataSource(a1, true);
                            break;
                        case POPCPrintLevel.TwoBChange:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport();
                            (report as PH.POPC.BackEnd.POPCNewformat.POPCLevel2bReport).PHLabel_Title.Text = "POPC - Level 3c - Delivery Change Monitor (Time, Qty and Transit mode)";
                            //List<object> a6 = view.FilteredList();
                            //if (a6 == null) return;
                            bsData.DataSource = POColorSizeDetail.GetLevel2DataSource(a1, true);
                            break;

                        case POPCPrintLevel.Three:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel3aReport();
                            break;

                        case POPCPrintLevel.Four:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel4Report();
                            break;

                        case POPCPrintLevel.Five1:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel5Report();
                            //report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel5a1Report();
                            //report.FilterString = "[ConvertFactor] = 1.0";
                            break;
                        case POPCPrintLevel.Five2:
                            report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel5b1Report();
                            report.FilterString = "[ConvertFactor] <> 1.0";
                            break;
                        default:
                            break;
                    }

                    #endregion
                    break;
                case POPCPrintType.ItemChanged:
                    #region ItemChanged

                    report = new PH.POPC.BackEnd.POPCNewformat.ItemChangedReport();
                    List<object> ac = view.FilteredList();
                    if (ac == null) return;
                    bsData.DataSource = POColorSizeDetail.GetLevel2DataSourceItemChange(ac, false);

                    #endregion
                    break;
                case POPCPrintType.ItemSpec:
                    #region ItemSpec
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCInAdvanceSpecReport();
                    #endregion
                    break;
                case POPCPrintType.InvoiceMatching:
                    #region InvoiceMatching
                    if (printLevel == POPCPrintLevel.Five1)
                    {
                        report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel5a2Report();
                        report.FilterString = "[ConvertFactor] = 1.0";
                    }
                    else if (printLevel == POPCPrintLevel.Five2)
                    {
                        report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel5b2Report();
                        report.FilterString = "[ConvertFactor] <> 1.0";
                    }
                    #endregion
                    break;
                default:
                    break;
            }

            #endregion

            if (report != null)
            {
                report.ExportOptions.PrintPreview.DefaultFileName = GetReportFileName(printType, printLevel);

                report.DataSource = bsData;
                //report.ShowDesignerDialog();
                report.ShowPreviewDialog();
            }

        }
        public static void PrintPOPCAnalysis(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCAnalysisPrintType printType, POPCPrintLevel printLevel, POPCEnquiryCondition condition)
        {


            string subTitle;
            DevExpress.XtraReports.UI.XtraReport report = null;
            BindingSource bsData = new BindingSource();
            //bsData.DataSource = view.FilteredList();// view.DataSource;
            List<POColorSizeDetail> reportDS = null;

            List<object> a1 = view.FilteredList();
            if (a1 == null) return;
            bsData.DataSource = a1;

            //

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            //@OrderClass        varchar(max), --Order Class，可以有多個，用逗號隔開
            //@POStatus          int,
            //@EndCustCodes      varchar(max),
            //@Suppliers         varchar(max),
            //@IssueDateFrom     datetime,
            //@IssueDateTo       datetime,
            //@DeliveryDateFrom  datetime,
            //@DeliveryDateTo    datetime, 

            //@PurchaseOfficerLists varchar(max) = '',
            //@PHDGOrPHHK           varchar(200) = 'All',      -- 有3種類型： PH-DG、PH-HK、All
            //@SuppCodeOrCustCode   varchar(200) = 'SuppCode'  -- 有2種類型： SuppCode、CustCode


            string strSql = "exec sp_WeekLyAmountReport '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}' ";
            //string strSql = "exec sp_WeekLyAmountReport '', 0, '', '', '2020-09-01', '2020-09-30', '', '' ";
            string IssueDateFrom = condition.IssueDateFrom != DateTime.MinValue ? condition.IssueDateFrom.ToString("yyyy-MM-dd") : "";
            string IssueDateTo = condition.IssueDateTo != DateTime.MinValue ? condition.IssueDateTo.ToString("yyyy-MM-dd") : "";
            string DeliveryDateFrom = condition.DeliveryDateFrom != DateTime.MinValue ? condition.DeliveryDateFrom.ToString("yyyy-MM-dd") : "";
            string DeliveryDateTo = condition.DeliveryDateTo != DateTime.MinValue ? condition.DeliveryDateTo.ToString("yyyy-MM-dd") : "";

            string AOrderClasses = "";
            for (int i = 0; i < condition.OrderClasses.Count(); i++)
            {
                AOrderClasses = AOrderClasses + condition.OrderClasses[i].ToString() + ",";
            }

            strSql = string.Format(strSql, AOrderClasses, condition.POStatus, condition.EndCustCode, condition.Supplier,
                IssueDateFrom, IssueDateTo, DeliveryDateFrom, DeliveryDateTo, condition.PurchaseOfficer, condition.PHDGOrPYHK, condition.SuppCodeOrCustCode);


            List<POPCLevel1WeeklyAmountReportClass> ListDetail = context.ExecuteDataSet(strSql, new DataSet(), "dt").Tables[0].AsEnumerable().Select(dr => new POPCLevel1WeeklyAmountReportClass
            {

                Page = Convert.ToInt32(dr["Page"].ToString()),
                Code = dr["Code"].ToString(),

                Week1 = ChangeIntType(dr["Week1"].ToString()),
                AllAmount1 = ChangeType(dr["AllAmount1"].ToString()),
                BalanceAmount1 = ChangeType(dr["BalanceAmount1"].ToString()),

                Week2 = ChangeIntType(dr["Week2"].ToString()),
                AllAmount2 = ChangeType(dr["AllAmount2"].ToString()),
                BalanceAmount2 = ChangeType(dr["BalanceAmount2"].ToString()),

                Week3 = ChangeIntType(dr["Week3"].ToString()),
                AllAmount3 = ChangeType(dr["AllAmount3"].ToString()),
                BalanceAmount3 = ChangeType(dr["BalanceAmount3"].ToString()),

                Week4 = ChangeIntType(dr["Week4"].ToString()),
                AllAmount4 = ChangeType(dr["AllAmount4"].ToString()),
                BalanceAmount4 = ChangeType(dr["BalanceAmount4"].ToString()),

                Week5 = ChangeIntType(dr["Week5"].ToString()),
                AllAmount5 = ChangeType(dr["AllAmount5"].ToString()),
                BalanceAmount5 = ChangeType(dr["BalanceAmount5"].ToString()),

                Week6 = ChangeIntType(dr["Week6"].ToString()),
                AllAmount6 = ChangeType(dr["AllAmount6"].ToString()),
                BalanceAmount6 = ChangeType(dr["BalanceAmount6"].ToString()),

                Week7 = ChangeIntType(dr["Week7"].ToString()),
                AllAmount7 = ChangeType(dr["AllAmount7"].ToString()),
                BalanceAmount7 = ChangeType(dr["BalanceAmount7"].ToString()),

                Week8 = ChangeIntType(dr["Week8"].ToString()),
                AllAmount8 = ChangeType(dr["AllAmount8"].ToString()),
                BalanceAmount8 = ChangeType(dr["BalanceAmount8"].ToString()),

                Year1 = ChangeYearType(dr["Year1"].ToString()),
                Year2 = ChangeYearType(dr["Year2"].ToString()),
                Year3 = ChangeYearType(dr["Year3"].ToString()),
                Year4 = ChangeYearType(dr["Year4"].ToString()),
                Year5 = ChangeYearType(dr["Year5"].ToString()),
                Year6 = ChangeYearType(dr["Year6"].ToString()),
                Year7 = ChangeYearType(dr["Year7"].ToString()),
                Year8 = ChangeYearType(dr["Year8"].ToString()),


            }).ToList();

            string AWeek = context.ExecuteDataSet(strSql, new DataSet(), "dt").Tables[1].Rows[0]["AWeek"].ToString();


            bsData.DataSource = ListDetail;


            #region Print Type

            switch (printType)
            {
                case POPCAnalysisPrintType.Replacement:
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel3ReplacementReport(condition.AnalysisSortBy);
                    break;
                case POPCAnalysisPrintType.CreditCash:
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel3CreditCashReport(condition.AnalysisSortBy);
                    break;
                case POPCAnalysisPrintType.WeeklyAmount:
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel1WeeklyAmountReport(condition, ListDetail, AWeek);
                    break;
                case POPCAnalysisPrintType.SuppPerformance:
                    if (printLevel == POPCPrintLevel.TwoA)//by supp
                        report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2SuppPerformanceReport();
                    else if (printLevel == POPCPrintLevel.TwoB)//by supp/item
                        report = new PH.POPC.BackEnd.POPCNewformat.POPCLevel2SuppPerformanceByItemReport();
                    break;
                default:
                    break;
            }

            #endregion

            if (report != null)
            {
                report.ExportOptions.PrintPreview.DefaultFileName = GetAnalysisReportFileName(printType, printLevel);

                report.DataSource = bsData;
                //report.ShowDesignerDialog();
                report.ShowPreviewDialog();
            }

        }

        private static double? ChangeType(string CT)
        {
            if (CT == "")
                return null;
            else
                return Convert.ToDouble(CT);
        }

        private static int? ChangeYearType(string CT)
        {
            if (CT == "")
                return null;
            else
                return Convert.ToInt32(CT);
        }

        private static int? ChangeIntType(string CT)
        {
            if (CT == "")
                return null;
            else
                return Convert.ToInt32(CT);
        }


        public static XtraReport CreateReportByGrid(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCPrintType printType, string levelTitle)
        {
            #region Report Setting

            XtraReport report = new XtraReport();
            report.DataSource = view.FilteredList();// view.DataSource;
            report.Font = new System.Drawing.Font("Arial Unicode MS", 6f, System.Drawing.FontStyle.Regular);
            //report.SnapGrid = false;

            report.PaperKind = System.Drawing.Printing.PaperKind.A4;
            //report.PageWidth =3610 ;
            //report.PageHeight =2553 ;
            //report.PaperName = "A3";
            report.Landscape = true;
            report.ReportUnit = ReportUnit.HundredthsOfAnInch;
            report.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);

            #endregion

            #region Style
            XRControlStyle style1 = new XRControlStyle();
            style1.Name = "styleData";

            style1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            //style.BorderWidth = style.BorderWidth;
            //style.BorderColor = style.BorderColor;

            style1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            style1.Font = new System.Drawing.Font("Arial Unicode MS", 6f, System.Drawing.FontStyle.Regular);

            //style.BackColor = style.BackColor;
            //style.ForeColor = style.ForeColor;
            //style.Padding = style.Padding;

            //Color backColor, Color borderColor, BorderSide sides, int borderWidth, Font font, Color foreColor, TextAlignment textAlignment, PaddingInfo padding, bool needDisposeFont
            report.StyleSheet.Add(style1);


            XRControlStyle style2 = new XRControlStyle();
            style2.Name = "styleHeader";

            style2.Borders = DevExpress.XtraPrinting.BorderSide.All;
            //style.BorderWidth = style.BorderWidth;
            //style.BorderColor = style.BorderColor;

            style2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            style2.Font = new System.Drawing.Font("Arial Unicode MS", 6f, System.Drawing.FontStyle.Regular);

            //style.BackColor = style.BackColor;
            //style.ForeColor = style.ForeColor;
            //style.Padding = style.Padding;

            //Color backColor, Color borderColor, BorderSide sides, int borderWidth, Font font, Color foreColor, TextAlignment textAlignment, PaddingInfo padding, bool needDisposeFont
            report.StyleSheet.Add(style2);

            #endregion

            int x = 0;
            int y = 0;
            int iClientPageWidth = report.PageWidth - report.Margins.Left - report.Margins.Right;
            int aHeight = 25;
            int aWidth;
            int xSheet = 0;

            #region Header Band

            PageHeaderBand headerBand = new PageHeaderBand();
            report.Bands.Add(headerBand);

            #region Page Infor

            XRLabel lbl = PH.Platform.Report.ReportHelper.CreateLabel(headerBand, levelTitle, new Point(x, 5), new Size(iClientPageWidth - 100, 30), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, true, 12f);

            y = 2;
            aWidth = 100;
            XRPageInfo pi = PH.Platform.Report.ReportHelper.CreatePageInfo(headerBand, "Print Date:  {0:yyyy/MM/dd}", new Point(iClientPageWidth - aWidth, y), new Size(aWidth, 18), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, DevExpress.XtraPrinting.PageInfo.DateTime);
            pi.StyleName = "styleData";
            y += 18;
            pi = PH.Platform.Report.ReportHelper.CreatePageInfo(headerBand, "Page:   {0} of {1}", new Point(iClientPageWidth - aWidth, y), new Size(aWidth, 18), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, DevExpress.XtraPrinting.PageInfo.NumberOfTotal);
            pi.StyleName = "styleData";

            #endregion

            y = 40;
            //bool isLevel = false;

            for (int i = 0; i < view.Bands.VisibleBandCount; i++)
            {
                DevExpress.XtraGrid.Views.BandedGrid.GridBand band = view.Bands.GetVisibleBand(i);
                if (!band.Visible) continue;

                #region  report type

                //isLevel = (band.Tag != null && Convert.ToInt32(band.Tag) == 2);
                //if (printType == POPCPrintType.Level)
                //{
                //    if (band.Name == "bandPage2Key")
                //    {
                //        XRLabel lbl = PH.Platform.Report.ReportHelper.CreateLabel(headerBand, levelTitle, new Point(x + 10, 5), new Size(600, 30), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, true, 12f);
                //        isLevel = true;
                //    }
                //    if (!isLevel) continue;
                //}
                //else if (printType == POPCPrintType.FrontPage)
                //{
                //    if (band.Name == "bandPO")
                //    {
                //        XRLabel lbl = PH.Platform.Report.ReportHelper.CreateLabel(headerBand, "POPC", new Point(x + 10, 5), new Size(300, 30), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, true, 12f);
                //    }
                //    if (band.Name == "bandPO" || band.Name == "bandSuppRef" || band.Name == "bandQty" || band.Name == "bandTime")
                //    {
                //    }
                //    else continue;

                //    //else if (band.Name == "bandPage2Key")
                //    //{
                //    //    x += 34;
                //    //    xSheet = x;
                //    //    XRLabel lbl = PH.Platform.Report.ReportHelper.CreateLabel(headerBand, "Supplement Sheet:-", new Point(x + 10, 5), new Size(300, 30), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, true, 12f);
                //    //}
                //    //else if (isLevel)//(band.Name == "bandQA" || band.Name == "bandQAProcess")
                //    //break;
                //}
                //else if (printType == POPCPrintType.SupplementSheet)
                //{
                //    //if (band.Name == "bandPO")
                //    //{
                //    //    XRLabel lbl = PH.Platform.Report.ReportHelper.CreateLabel(headerBand, "POPC", new Point(x + 10, 5), new Size(300, 30), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, true, 12f);
                //    //}
                //    //else 
                //    if (band.Name == "bandPage2Key")
                //    {
                //        //x += 34;
                //        //xSheet = x;
                //        XRLabel lbl = PH.Platform.Report.ReportHelper.CreateLabel(headerBand, "Supplement Sheet:-", new Point(x + 10, 5), new Size(300, 30), DevExpress.XtraPrinting.BorderSide.None, DevExpress.XtraPrinting.TextAlignment.MiddleLeft, true, 12f);
                //    }
                //    if (band.Name == "bandPage2Key" || band.Name == "bandCust" || band.Name == "bandDelRef" || band.Name == "bandOurItem" || band.Name == "bandSuppItemRef")
                //    {
                //    }
                //    else continue;

                //    //else if (isLevel)//(band.Name == "bandQA" || band.Name == "bandQAProcess")
                //    //    break;
                //}
                #endregion

                aWidth = band.Width;
                XRTable table = CreateTable(headerBand, "styleHeader", new Point(x, y), new Size(aWidth, aHeight));
                table.SuspendLayout();
                CreateHeaderColumns(band, table, 0);

                int ttl = 0;
                foreach (XRTableRow r in table.Rows)
                {
                    ttl += r.Height;
                }
                table.Height = ttl;


                x += aWidth;
                table.PerformLayout();
            }
            headerBand.Height = 80;

            #endregion

            #region GroupHeaderBand
            CreateGroup(view, report, xSheet, printType);
            #endregion

            #region Detail Band

            DetailBand detailBand = new DetailBand();
            report.Bands.Add(detailBand);
            detailBand.KeepTogether = true;
            //aWidth = x;
            x = 0;
            y = 0;
            aHeight = 18;
            //isLevel = false;
            for (int i = 0; i < view.Bands.VisibleBandCount; i++)
            {
                DevExpress.XtraGrid.Views.BandedGrid.GridBand band = view.Bands.GetVisibleBand(i); // view.Bands[i];

                if (!band.Visible) continue;

                #region  report type

                //isLevel = (band.Tag != null && Convert.ToInt32(band.Tag) == 2);
                //if (printType == POPCPrintType.Level)
                //{
                //    if (band.Name == "bandPage2Key")
                //    {
                //        isLevel = true;
                //    }
                //    if (!isLevel) continue;
                //}
                //else if (printType == POPCPrintType.FrontPage)
                //{

                //    if (band.Name == "bandPO" || band.Name == "bandSuppRef" || band.Name == "bandQty" || band.Name == "bandTime")
                //    {
                //    }
                //    else continue;

                //}
                //else if (printType == POPCPrintType.SupplementSheet)
                //{
                //    if (band.Name == "bandPage2Key" || band.Name == "bandCust" || band.Name == "bandDelRef" || band.Name == "bandOurItem" || band.Name == "bandSuppItemRef")
                //    {
                //    }
                //    else continue;
                //}
                #endregion


                //isLevel = (band.Tag != null && Convert.ToInt32(band.Tag) == 2);
                //if (printType)
                //{
                //    if (band.Name == "bandPage2Key")
                //    {
                //        isLevel = true;
                //    }
                //    if (!isLevel) continue;
                //}
                //else
                //{
                //    if (band.Name == "bandPage2Key")
                //    {
                //        x += 34;
                //    }
                //    else if (isLevel)//(band.Name == "bandQA" || band.Name == "bandQAProcess")
                //        break;
                //}
                aWidth = band.Width;
                XRTable table = CreateTable(detailBand, "styleData", new Point(x, y), new Size(aWidth, aHeight));
                table.SuspendLayout();
                CreateDetailColumns(band, table, 0);

                x += aWidth;
                table.PerformLayout();
            }
            detailBand.Height = 18;

            #endregion

            return report;
        }
        private static void CreateHeaderColumns(DevExpress.XtraGrid.Views.BandedGrid.GridBand band, XRTable table, int x)
        {
            int aWidth = 0;
            int aHeight = 25;
            int y = 0;
            if (!band.Visible) return;
            //get row
            XRTableRow row;
            if (band.BandLevel < (table.Rows.Count))
                row = table.Rows[band.BandLevel];
            else
                row = CreateRow(table, aHeight);

            //create cells
            aWidth = band.Width;
            XRTableCell cell;
            cell = CreateCell(row, band.Caption, new Point(x, y), new Size(aWidth, aHeight), true, true);
            //cell.WordWrap = true;
            //cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            if (band.HasChildren)
            {
                //bands
                foreach (DevExpress.XtraGrid.Views.BandedGrid.GridBand band1 in band.Children)
                {
                    aWidth = band1.Width;
                    if (!band1.Visible) continue;

                    CreateHeaderColumns(band1, table, x);

                    x += aWidth;
                }
            }
            else
            {
                //aWidth = band.Width;

                //columns
                if ((band.BandLevel + 1) < table.Rows.Count)
                    row = table.Rows[band.BandLevel + 1];
                else
                    row = CreateRow(table, 40);
                //row.Height = 40;
                //row.Size = new Size(table.Size.Width, 40);

                foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col in band.Columns)
                {
                    if (!col.Visible) continue;
                    aWidth = col.Width;
                    cell = CreateCell(row, col.Caption, new Point(x, y), new Size(aWidth, aHeight), true, true);
                    //cell.WordWrap = true;
                    //cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

                    x += aWidth;
                }

            }
        }
        private static void CreateDetailColumns(DevExpress.XtraGrid.Views.BandedGrid.GridBand band, XRTable table, int x)
        {
            int aWidth = 0;
            int aHeight = 18;
            int y = 0;
            if (!band.Visible) return;

            //get row
            XRTableRow row;

            if (table.Rows.Count != 0)
                row = table.Rows[0];
            else
                row = CreateRow(table, aHeight);

            //create cells
            XRTableCell cell;

            if (band.HasChildren)
            {
                //bands
                foreach (DevExpress.XtraGrid.Views.BandedGrid.GridBand band1 in band.Children)
                {
                    if (!band1.Visible) continue;
                    aWidth = band1.Width;

                    CreateDetailColumns(band1, table, x);

                    x += aWidth;
                }
            }
            else
            {
                //aWidth = band.Width;

                //columns
                if (table.Rows.Count != 0)
                    row = table.Rows[0];
                else
                    row = CreateRow(table, aHeight);

                foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col in band.Columns)
                {
                    if (!col.Visible) continue;
                    aWidth = col.Width;

                    string format;
                    if (col.ColumnEdit != null)
                        format = col.ColumnEdit.DisplayFormat.FormatString;
                    else
                        format = col.DisplayFormat.FormatString;
                    format = string.IsNullOrEmpty(format) ? "" : string.Format("{{0:{0}}}", format);

                    cell = CreateBindingCell(row, col.FieldName, format, new Point(x, y), new Size(aWidth, aHeight), false, false);
                    if (col.AppearanceCell.TextOptions.HAlignment == HorzAlignment.Center)
                        cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    else if (col.AppearanceCell.TextOptions.HAlignment == HorzAlignment.Far)
                        cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;

                    x += aWidth;
                }

            }
        }
        private static void CreateGroup(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, XtraReport report, int xSheet, POPCPrintType printType)
        {
            if (view.GroupedColumns.Count == 0) return;

            GroupHeaderBand groupHeaderBand = new GroupHeaderBand();
            report.Bands.Add(groupHeaderBand);
            groupHeaderBand.GroupFields.Clear();
            groupHeaderBand.GroupFields.Add(new GroupField("Team", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
            groupHeaderBand.GroupFields.Add(new GroupField("PurchaseOfficer", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
            groupHeaderBand.KeepTogether = true;

            int x = 0;
            int y = 2;
            int aWidth = 250;
            int aHeight = 18;
            XRTable table = CreateTable(groupHeaderBand, "styleHeader", new Point(x, y), new Size(aWidth, aHeight));
            table.SuspendLayout();
            table.BorderColor = Color.Blue;
            XRTableRow row = CreateRow(table, aHeight);
            CreateGroupTableCell(row);
            table.PerformLayout();

            //if (!printType)
            //{
            //    x = xSheet;
            //    table = CreateTable(groupHeaderBand, "styleHeader", new Point(x, y), new Size(aWidth, aHeight));
            //    table.SuspendLayout();
            //    table.BorderColor = Color.Blue;
            //    row = CreateRow(table, aHeight);
            //    CreateGroupTableCell(row);
            //    table.PerformLayout();
            //}
            groupHeaderBand.Height = 18;
        }
        private static void CreateGroupTableCell(XRTableRow row)
        {
            int x = 0;
            int y = 0;
            int aWidth1 = 95;
            int aWidth2 = 155;
            int aHeight = 18;
            XRTableCell cell = CreateCell(row, "Division:  [Team]", new Point(x, y), new Size(aWidth1, aHeight), true, true);
            cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //cell.Borders = DevExpress.XtraPrinting.BorderSide.All ^ DevExpress.XtraPrinting.BorderSide.Right;
            x += aWidth1;

            //cell = CreateBindingCell(row, "Team", "", new Point(x, y), new Size(aWidth1, aHeight), false, false);
            //cell.Borders = DevExpress.XtraPrinting.BorderSide.All ^ DevExpress.XtraPrinting.BorderSide.Left;
            //cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //x += aWidth1;

            cell = CreateCell(row, "Coordinator:  [PurchaseOfficer]", new Point(x, y), new Size(aWidth2, aHeight), true, true);
            cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //cell.Borders = DevExpress.XtraPrinting.BorderSide.All ^ DevExpress.XtraPrinting.BorderSide.Right;
            x += aWidth2;

            //cell = CreateBindingCell(row, "PurchaseOfficer", "", new Point(x, y), new Size(aWidth2, aHeight), false, false);
            //cell.Borders = DevExpress.XtraPrinting.BorderSide.All ^ DevExpress.XtraPrinting.BorderSide.Left;
            //cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //x += aWidth2;
        }

        private static void CreateDetailColumns1(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, Band band, int width)
        {
            int x = 0;
            int y = 0;
            int aHeight = 20;
            int aWidth;

            XRTable table = CreateTable(band, "styleData", new Point(x, y), new Size(width, aHeight));
            table.SuspendLayout();
            XRTableRow row = CreateRow(table, aHeight);
            foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col in view.VisibleColumns)
            {
                aWidth = col.Width;
                string format;
                if (col.ColumnEdit != null)
                    format = col.ColumnEdit.DisplayFormat.FormatString;
                else
                    format = col.DisplayFormat.FormatString;
                format = string.IsNullOrEmpty(format) ? "" : string.Format("{{0:{0}}}", format);


                XRTableCell cell = CreateBindingCell(row, col.FieldName, format, new Point(x, y), new Size(aWidth, aHeight), false, false);
                if (col.AppearanceCell.TextOptions.HAlignment == HorzAlignment.Center)
                    cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                else if (col.AppearanceCell.TextOptions.HAlignment == HorzAlignment.Far)
                    cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
                //cell.WordWrap = true;

                x += aWidth;
            }
            table.PerformLayout();
        }

        #region Basic Create

        public static XRTable CreateTable(Band band, string style, Point location, Size size)
        {
            // Create a table and set its size.
            XRTable tab = new XRTable();
            tab.Name = string.Format("PHTable_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            band.Controls.Add(tab);
            tab.Size = size;
            tab.Location = location;
            // Set the table's borders.
            tab.BorderWidth = 1;
            tab.WordWrap = false;
            //tab.Styles.Style = style;
            tab.StyleName = style;
            return tab;
        }
        public static XRTableRow CreateRow(XRTable table, int height)
        {
            // Create a table row.
            XRTableRow row = new XRTableRow();
            row.Name = string.Format("PHRow_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            table.Rows.Add(row);
            row.Size = new Size(table.Size.Width, height);
            //row.Borders = bs;
            //row.TextAlignment = align;
            //row.CanGrow = true;
            //row.CanShrink = false;
            //row.Font = new System.Drawing.Font(fontName, fontSize, fontStyle);//Tahoma "Arial Unicode MS"

            return row;
        }
        public static XRTableCell CreateCell(XRTableRow row, object text, Point location, Size size, bool multiLine, bool wordWrap)
        {
            // Create two table cells.
            XRTableCell cell = new XRTableCell();
            cell.Name = string.Format("PHCell_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            // Compose the table.
            row.Cells.Add(cell);

            cell.Location = location;
            cell.Size = size;
            if (text == null) text = "";
            cell.Text = string.Format("{0}", text);

            cell.Multiline = multiLine;
            cell.CanGrow = false;
            cell.WordWrap = wordWrap;

            return cell;
        }
        public static XRTableCell CreateBindingCell(XRTableRow row, string dataMember, string stringFormat, Point location, Size size, bool multiLine, bool wordWrap)
        {
            XRTableCell cell = CreateCell(row, null, location, size, multiLine, wordWrap);
            PH.Platform.Report.ReportHelper.BindingReportControl(row.Report, cell, dataMember, stringFormat);

            return cell;
        }
        #endregion

        #endregion

    }

    public enum POType
    {
        PO = 1,
        POSticker = 2,
        //Xsj20110322:MIDc Sample Po Order
        MIDcPO = 3
    }
    public enum POStatus
    {
        Completed = 0,
        OutStanding = 1,
        Cancel = -1
    }
    public enum POVersion
    {
        AllVersion = 1,
        CurVersion = 2
    }
    public class POInfo
    {
        // 1:Level 1 -->POColorSizeDetail
        // 2:Level 2 -->POChangesMonitor
        // 3:Level 3 -->PORC
        // 4: View_POPC_PUR
        public int Level { get; set; }

        public POType PoType { get; set; }
        public POStatus PoStatus { get; set; }
        public POVersion Poversion { get; set; }

        public Object Pur { get; set; }

        //public PH.POPC.BO.View_POPC_PUR Pur { get; set; }
        //public PH.POPC.BO.POColorSizeDetail SKU { get; set; }
        //public PH.POPC.BO.PORC RC { get; set; }
        //public PH.POPC.BO.POChangesMonitor Mon { get; set; }

        public BindingSource POPCView { get; set; }
        public DevExpress.XtraGrid.GridControl Grid { get; set; }
        public DevExpress.XtraGrid.Views.Grid.GridView GridView { get; set; }
        public DevExpress.XtraTab.XtraTabPage POPCPage { get; set; }
    }
    public class Tools
    {
        #region DateTime Formatter
        public static void DateTimeFormatterControls(Control control, string format)
        {
            DateTimeFormatterControls(control, format, -1);
        }
        public static void DateTimeFormatterControls(Control control, string format, int level)
        {
            DateTimeFormatterControl(control, format);
            if (level == 0) return;
            int chileLevel = level--;

            foreach (Control c in control.Controls)
            {
                DateTimeFormatterControl(c, format);
                DateTimeFormatterControls(c, format, chileLevel);
            }
        }
        public static void DateTimeFormatterControl(Control control, string format)
        {
            DevExpress.XtraEditors.DateEdit editor;
            DevExpress.XtraGrid.GridControl gc;
            if (control is DevExpress.XtraEditors.DateEdit)
            {
                editor = (control as DevExpress.XtraEditors.DateEdit);
                editor.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;

                editor.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
                editor.Properties.DisplayFormat.FormatString = format;
                editor.Properties.DisplayFormat.Format = new PHDateFormatter();

                editor.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
                editor.Properties.EditFormat.FormatString = format;
                editor.Properties.EditFormat.Format = new PHDateFormatter();

            }
            else if (control is DevExpress.XtraGrid.GridControl)
            {
                gc = (control as DevExpress.XtraGrid.GridControl);
                foreach (DevExpress.XtraEditors.Repository.RepositoryItem item in gc.RepositoryItems)
                {
                    if (item is DevExpress.XtraEditors.Repository.RepositoryItemDateEdit)
                    {
                        DevExpress.XtraEditors.Repository.RepositoryItemDateEdit ride = (item as DevExpress.XtraEditors.Repository.RepositoryItemDateEdit);
                        ride.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;

                        ride.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
                        ride.DisplayFormat.FormatString = format;
                        ride.DisplayFormat.Format = new PHDateFormatter();

                        ride.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
                        ride.EditFormat.FormatString = format;
                        ride.EditFormat.Format = new PHDateFormatter();
                    }
                }
            }
        }

        public static string PHDateTimeString(DateTime dt, string format)
        {
            if (dt == DateTime.MaxValue || dt == DateTime.MinValue || dt == Convert.ToDateTime("1899/12/30"))
                return "";
            else if (format == "")
                return dt.ToString();
            else
                return dt.ToString(format);
        }
        #endregion
    }
    public class PHDateFormatter : IFormatProvider, ICustomFormatter
    {
        // The GetFormat method of the IFormatProvider interface.
        // This must return an object that provides formatting services for the specified type.
        public object GetFormat(Type format)
        {
            if (format == typeof(ICustomFormatter)) return this;
            else return null;
        }
        // The Format method of the ICustomFormatter interface.
        // This must format the specified value according to the specified format settings.
        public string Format(string format, object arg, IFormatProvider provider)
        {
            if (format == null || Type.GetTypeCode(arg.GetType()) != TypeCode.DateTime)
            {
                if (arg is IFormattable)
                    return ((IFormattable)arg).ToString(format, provider);
                else
                    return arg.ToString();
            }
            DateTime dt = (DateTime)arg;
            if (dt == DateTime.MinValue || dt == Convert.ToDateTime("1899/12/30"))
                return "";
            else
                return dt.ToString(format);// Convert.ToString(dt, provider);
        }
    }

    public class POView
    {
        PH.POPC.BO.View_POPC_PUR Pur { get; set; }
        DevExpress.XtraTab.XtraTabPage ParentPage { get; set; }
    }

    public class POLevelDraw
    {
        public POLevelDraw(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gridView)
        {
            this._gridView = gridView;
            InitAppearances();
            ClearColumnMerge();
        }

        DevExpress.XtraGrid.Views.BandedGrid.BandedGridView _gridView;
        string _fieldNames = ";EndCustCode;ProjectNO;Supplier;PONO;OrderLine;SKU;HandleNo";

        #region Draw
        AppearanceDefault appCustomFocusedColumn;
        DevExpress.Skins.Skin currentSkin;
        DevExpress.Skins.SkinElement element;
        Color defaultColor;
        Color defaultColor1;

        private void InitAppearances()
        {
            appCustomFocusedColumn = new AppearanceDefault(Color.SaddleBrown, Color.Empty, new Font("Arial", 8.25F, FontStyle.Bold | FontStyle.Italic | FontStyle.Underline));

            //this.bandedGridView1.BeginUpdate();
            //this.bandedGridView1.OptionsView.ShowChildrenInGroupPanel = true;
            //if (this.objListGridControl.LevelTree.Nodes["Standby"] != null)
            //    ((GridView)this.objListGridControl.LevelTree.Nodes["Standby"].LevelTemplate).OptionsView.ShowGroupPanel = false;
            ////for (int i = 0; i < this.objListGridControl.Views.Count; i++)
            ////{
            ////    ((GridView)this.objListGridControl.Views[i]).ExpandAllGroups();
            ////}
            //this.bandedGridView1.EndUpdate();

            string elementName;

            currentSkin = DevExpress.Skins.GridSkins.GetSkin(this._gridView.GridControl.LookAndFeel);
            elementName = DevExpress.Skins.GridSkins.SkinHeader;
            element = currentSkin[elementName];
            Image image = element.Image.Image;
            DevExpress.Utils.ImageCollection images = element.Image.GetImages();
            Bitmap bmp = new Bitmap(images.Images[0]);
            defaultColor = bmp.GetPixel(bmp.Width / 2, bmp.Height / 2);

            elementName = DevExpress.Skins.GridSkins.SkinGridGroupPanel;
            element = currentSkin[elementName];
            defaultColor1 = element.Color.BackColor2;
        }
        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }
        private static void DrawCustomFilterButton(Graphics g, DevExpress.XtraGrid.Columns.GridColumn column, DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo, ImageList iml)
        {
            if (iml == null) return;
            int i = 0;
            if ((filterInfo.State & DevExpress.Utils.Drawing.ObjectState.Hot) != 0) i = 1;
            if ((filterInfo.State & DevExpress.Utils.Drawing.ObjectState.Pressed) != 0) i = 2;
            if (column.FilterInfo.Type != DevExpress.XtraGrid.Columns.ColumnFilterType.None) i += 3;
            g.DrawImageUnscaled(
                iml.Images[i],
                filterInfo.Bounds.X + (filterInfo.Bounds.Width - iml.ImageSize.Width) / 2,
                filterInfo.Bounds.Y + (filterInfo.Bounds.Height - iml.ImageSize.Height) / 2);
        }
        private static void DrawCustomSortedShape(Graphics g, Rectangle r, DevExpress.Data.ColumnSortOrder so, ImageList iml)
        {
            if (so == DevExpress.Data.ColumnSortOrder.None || iml == null) return;
            int i = 0;
            if (so == DevExpress.Data.ColumnSortOrder.Descending) i = 1;
            g.DrawImageUnscaled(
                iml.Images[i],
                r.X + (r.Width - iml.ImageSize.Width) / 2,
                r.Y + (r.Height - iml.ImageSize.Height) / 2);
        }
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand GetTopBand(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            if (subBand.ParentBand == null) return subBand;
            return GetTopBand(subBand.ParentBand);
        }
        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }

        public void BandedGridView_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null) return;

            object obj = GetParentBandTag(e.Band);
            if (obj == null) return;

            string sTag = Convert.ToString(obj);
            if (sTag == "") return;

            Brush brushGold = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Gold, Color.Goldenrod, 90);
            Brush brushGreen = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Aquamarine, Color.DarkSeaGreen, 90);
            Brush brushGreen2 = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Aquamarine, Color.LightSeaGreen, 90);
            // Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Blue, Color.BlueViolet, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Cornsilk, Color.DarkKhaki, 90);


            //Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.FromArgb(235, 241, 222), Color.FromArgb(235, 241, 222), 90);
            //Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.FromArgb(220, 230, 241), Color.FromArgb(220, 230, 241), 90);


            Rectangle r = e.Bounds;

            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);
            //bool useBrushYellow = (sTag == "1");

            Brush brush;
            //switch (sTag)
            //{
            //    case "1":
            //        brush = brushYellow;
            //        break;
            //    case "2":
            //        brush = brushBlue;
            //        break;
            //    default:
            //        brush = brushYellow;
            //        break;
            //}
            switch (sTag)
            {
                case "1":
                    brush = brushGreen;
                    break;
                case "2":
                    brush = brushGold;
                    break;
                case "3":
                    brush = brushGreen2;
                    break;
                case "4":
                    brush = brushBlue;
                    break;
                case "6":
                    brush = brushGold;
                    break;
                default:
                    brush = brushGreen;
                    break;
            }
            e.Graphics.FillRectangle(brush, r);

            r.Inflate(-2, 0);
            //e.Graphics.DrawString(e.Band.Caption, e.Appearance.Font, Brushes.White, new RectangleF(r.X + 1, r.Y + 1, r.Width, r.Height), e.Appearance.GetStringFormat());
            //e.Graphics.DrawString(e.Band.Caption, e.Appearance.Font, Brushes.Black, r, e.Appearance.GetStringFormat());
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;
        }

        public void BandedGridView_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            ////由David修改以下這句代碼 2022-03-14
            ////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            if (sTag == "") return;

            //Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.FromArgb(235, 241, 222), Color.FromArgb(235, 241, 222), 90);
            //Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.FromArgb(220, 230, 241), Color.FromArgb(220, 230, 241), 90);


            Brush brushGold = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Gold, Color.Goldenrod, 90);
            //Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.LemonChiffon, Color.Khaki, 90);
            Brush brushGreen = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Aquamarine, Color.DarkSeaGreen, 90);
            Brush brushGreen2 = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Aquamarine, Color.LightSeaGreen, 90);
            //Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.SkyBlue, Color.DeepSkyBlue, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Cornsilk, Color.DarkKhaki, 90);
            Brush brushGrey = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), defaultColor, defaultColor1, 90);
            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
            Rectangle r = e.Bounds;

            //bool useBrushYellow = (sTag == "1");
            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            Brush brush;
            //switch (sTag)
            //{
            //    case "1":
            //        brush = brushYellow;
            //        break;
            //    case "2":
            //        brush = brushBlue;
            //        break;
            //    default:
            //        brush = brushYellow;
            //        break;
            //}
            switch (sTag)
            {
                case "1":
                    brush = brushGreen;
                    break;
                case "2":
                    brush = brushGold;
                    break;
                case "3":
                    brush = brushGreen2;
                    break;
                case "4":
                    brush = brushBlue;
                    break;
                case "5":
                    brush = brushGrey;
                    break;
                case "6":
                    brush = brushGold;
                    break;
                default:
                    brush = brushGreen;
                    break;
            }


            //paint header
            //{
            //if (sTag != "4")
            //{
            //paint Border & Rect
            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
            r.Inflate(-2, 0);
            //}
            //paint Caption

            //e.Appearance.ForeColor = Color.Black;


            //if (sTag == "4") r.Inflate(3, 1);
            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);

            if (_fieldNames.IndexOf(col.FieldName) > 0)
                RemoveSortGlyphIfNeccessary(e);
            if (!sortBounds.IsEmpty)
                DrawCustomSortedShape(e.Graphics, sortBounds, e.Column.SortOrder, null);
            if (!filterBounds.IsEmpty && filterInfo != null)

                DrawCustomFilterButton(e.Graphics, e.Column, filterInfo, null);
            //if (SortingGlyphsImageList == null)
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);

            e.Handled = true;

        }








        public void BandedGridView_CustomDrawBandHeader1(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            //if (e.Band == null) return;

            //object obj = GetParentBandTag(e.Band);
            //if (obj == null) return;

            //string sTag = Convert.ToString(obj);
            //if (sTag == "") return;

            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;


            Color colorGray = Color.FromArgb(217, 217, 217);
            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);

            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Rectangle r = e.Bounds;
            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);

            Brush brush;
            switch (sTag)
            {
                case "0":
                    brush = brushGray;
                    //e.Appearance.BackColor = colorGray;
                    break;
                case "1":
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    //e.Appearance.BackColor = colorBlue;
                    break;
                default:
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
            }

            //if (e.Band.AppearanceHeader.BackColor2 != null) //如果Band自己設置了顏色，則顯示設置的顏色
            //{
            //    brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Band.AppearanceHeader.BackColor2, e.Band.AppearanceHeader.BackColor2, 90);
            //}

            //e.Band.AppearanceHeader.BackColor = e.Appearance.BackColor;

            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;

        }

        public void BandedGridView_CustomDrawColumnHeader1(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            //if (e.Column == null) return;

            //DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            //if (col.OwnerBand == null) return;

            //string sTag = col.OwnerBand.Tag.ToString();

            ////object obj = GetParentBandTag(col.OwnerBand);

            ////object objCol = col.Tag;
            ////if (obj == null && objCol == null) return;

            //////由David修改以下這句代碼 2022-03-14
            //////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

            ////string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            //if (sTag == "") return;



            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            ////由David修改以下這句代碼 2022-03-14
            ////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            if (sTag == "") return;

            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty; 
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            Brush brush;
            switch (sTag)
            {
                case "1":
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    //e.Appearance.BackColor = colorBlue;
                    break;
                default:
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
            }

            //e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;

            //if (e.Column.AppearanceHeader.BackColor != null) //Column自己設置了顏色, 就顯示設置的顏色
            //{
            //    brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Column.AppearanceHeader.BackColor, e.Column.AppearanceHeader.BackColor, 90);
            //}

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
            r.Inflate(-2, 0);

            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);

            if (_fieldNames.IndexOf(col.FieldName) > 0)
                RemoveSortGlyphIfNeccessary(e);
            if (!sortBounds.IsEmpty)
                DrawCustomSortedShape(e.Graphics, sortBounds, e.Column.SortOrder, null);
            if (!filterBounds.IsEmpty && filterInfo != null)

                DrawCustomFilterButton(e.Graphics, e.Column, filterInfo, null);

            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }


        #endregion

        #region  Remove Sort Glyph

        public void RemoveSortGlyphIfNeccessary(ColumnHeaderCustomDrawEventArgs args)
        {
            DrawElementInfo elementInfo = FindSortGlyphElement(args.Info);
            if (elementInfo == null)
                return;
            args.Info.InnerElements.Remove(elementInfo);
            args.Painter.CalcObjectBounds(args.Info);
        }
        private DrawElementInfo FindSortGlyphElement(DevExpress.XtraGrid.Drawing.GridColumnInfoArgs info)
        {
            foreach (DrawElementInfo innerElement in info.InnerElements)
                if (innerElement.ElementInfo is SortedShapeObjectInfoArgs)
                    return innerElement;
            return null;
        }
        #endregion

        private void ClearColumnMerge()
        {
            this._gridView.OptionsView.AllowCellMerge = false;

            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this._gridView.Columns)
            {
                col.OptionsColumn.AllowMerge = DefaultBoolean.False;
            }
        }
    }

    public class InputBox
    {
        private static object _defaultValue;
        public static bool Show(string fieldName, string caption, string hint, POColorSizeDetail sku, bool isColorShade, TypeCode typeCode, ref object defaultValue)
        {
            _defaultValue = defaultValue;
            TextEdit editor = null;
            if (isColorShade)
            {
                editor = new ComboBoxEdit();
                InitColorShade(sku, (ComboBoxEdit)editor);
            }
            else if (fieldName == "ClassCode")
            {
                editor = new ImageComboBoxEdit();
                //InitImageComb((ImageComboBoxEdit)editor, "PH.POPC.ClassCode");
                InitImageComb((ImageComboBoxEdit)editor, BO.Common.ClassCodeDictionary);
            }
            else if (fieldName == "LadDipOption" || fieldName == "LDOption")
            {
                editor = new ComboBoxEdit();
                InitCombobox((ComboBoxEdit)editor, "PH.POPC.LadDip");
            }
            else if (fieldName == "BulkOption")
            {
                editor = new ComboBoxEdit();
                InitCombobox((ComboBoxEdit)editor, "PH.POPC.Bulk");
            }
            else if (fieldName == "OrderOption")
            {
                editor = new ComboBoxEdit();
                InitCombobox((ComboBoxEdit)editor, "PH.POPC.OrderOption");
            }
            else if (fieldName == "ColoristRemark" || fieldName == "CustRemark")
            {
                editor = new MemoEdit();
                (editor as MemoEdit).Height = 50;
            }
            else if (fieldName == "SampleAuditedby")
            {
                editor = new ImageComboBoxEdit();
                InitImageComb((ImageComboBoxEdit)editor, "PH.POPC.BOMAuditedby");
            }
            else if (fieldName == "ActionPlan")
            {
                editor = new ImageComboBoxEdit();
                InitImageComb((ImageComboBoxEdit)editor, "PH.POPC.ActionPlan");
            }
            else
            {
                if (typeCode == TypeCode.DateTime)
                {
                    editor = new DateEdit();
                }
                else if (typeCode == TypeCode.Double || typeCode == TypeCode.Decimal)
                {
                    editor = new SpinEdit();
                }
                else if (typeCode == TypeCode.String)
                {
                    editor = new TextEdit();
                }
                else if (typeCode == TypeCode.Boolean)
                {
                    editor = new ComboBoxEdit();

                    if (fieldName == "ColorStdPHCust" || fieldName == "StdPHCust")
                    {
                        ((ComboBoxEdit)editor).Properties.Items.Add("PH");
                        ((ComboBoxEdit)editor).Properties.Items.Add("Cust");
                    }
                    else
                    {
                        ((ComboBoxEdit)editor).Properties.Items.Add("Y");
                        ((ComboBoxEdit)editor).Properties.Items.Add("N");
                    }
                }
            }
            if (fieldName == "RoundNo") editor.Properties.ReadOnly = true;

            if (editor != null)
            {
                if (InnerShow(caption, hint, sku, editor))
                {
                    defaultValue = _defaultValue;
                    return true;
                }
            }
            return false;
        }
        private static bool InnerShow(string caption, string hint, POColorSizeDetail sku, TextEdit editor)
        {
            XtraForm form = new XtraForm();
            Label lbHint = new Label();

            SimpleButton okBtn = new SimpleButton();
            SimpleButton cancelBtn = new SimpleButton();

            #region Form

            form.MinimizeBox = false;
            form.MaximizeBox = false;
            form.StartPosition = FormStartPosition.CenterScreen;
            form.Width = 300;
            form.Height = 200;
            form.Text = caption;

            #endregion

            #region Label

            lbHint.Text = hint;
            lbHint.Left = 10;
            lbHint.Top = 20;
            lbHint.Parent = form;
            lbHint.AutoSize = true;
            #endregion

            #region Editor

            editor.Left = 30;
            editor.Top = 60;
            editor.Width = 250;
            editor.Parent = form;
            editor.EditValue = _defaultValue;

            #endregion

            #region OK Button

            okBtn.Left = 30;
            okBtn.Top = 120;
            okBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            okBtn.Parent = form;
            okBtn.Text = "OK";
            form.AcceptButton = okBtn;
            okBtn.DialogResult = DialogResult.OK;
            #endregion

            #region Cancel Button

            cancelBtn.Left = 150;
            cancelBtn.Top = 120;
            cancelBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            cancelBtn.Parent = form;
            cancelBtn.Text = "Cancel";
            cancelBtn.DialogResult = DialogResult.Cancel;
            #endregion

            if (form.ShowDialog() == DialogResult.OK)
            {
                _defaultValue = editor.EditValue;

                return true;
            }

            return false;
        }
        private static void InitColorShade(POColorSizeDetail sku, ComboBoxEdit comb)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var Data = from c in context.POColorShades
                       where c.ColorCode == sku.ColorCode &&
                             c.ItemCode == sku.ItemCode &&
                             c.Company == sku.Company &&
                             c.Supplier == sku.Supplier &&
                             c.ColorType == 5
                       select c;
            comb.Properties.Items.Clear();
            foreach (PH.POPC.BO.POColorShade item in Data)
            {
                comb.Properties.Items.Add(item.ColorShade);
            }
        }
        public static void InitImageComb(ImageComboBoxEdit imageComb, string dataType)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            context.CommandTimeout = 1000;
            List<PH.Platform.Misc.BO.Misc_DataDictionary> dataList = context.Misc_DataDictionaries.Where(P => P.DataType == dataType).OrderBy(P => P.DataCode).ToList();
            imageComb.Properties.Items.Clear();

            DevExpress.XtraEditors.Controls.ImageComboBoxItem newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            newImageComboxItem.Value = null;
            newImageComboxItem.Description = "";
            imageComb.Properties.Items.Add(newImageComboxItem);
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dataList)
            {
                newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
                newImageComboxItem.Value = item.DataCode;
                //newImageComboxItem.Description = item.Description;
                newImageComboxItem.Description = string.Format("{0} - {1}", item.DataCode, item.Description);
                imageComb.Properties.Items.Add(newImageComboxItem);
            }
        }
        public static void InitImageComb(RepositoryItemImageComboBox imageComb, string dataType)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            context.CommandTimeout = 1000;
            List<PH.Platform.Misc.BO.Misc_DataDictionary> dataList = context.Misc_DataDictionaries.Where(P => P.DataType == dataType).OrderBy(P => P.DataCode).ToList();
            imageComb.Items.Clear();

            DevExpress.XtraEditors.Controls.ImageComboBoxItem newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            newImageComboxItem.Value = null;
            newImageComboxItem.Description = "";
            imageComb.Items.Add(newImageComboxItem);
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dataList)
            {
                newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
                newImageComboxItem.Value = item.DataCode;
                newImageComboxItem.Description = string.Format("{0} - {1}", item.DataCode, item.Description);
                imageComb.Items.Add(newImageComboxItem);
            }
        }
        public static void InitCombobox(ComboBoxEdit comb, string dataType)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            context.CommandTimeout = 1000;
            List<PH.Platform.Misc.BO.Misc_DataDictionary> dataList = context.Misc_DataDictionaries.Where(P => P.DataType == dataType).OrderBy(P => P.DataCode).ToList();
            comb.Properties.Items.Clear();

            comb.Properties.Items.Add("");
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dataList)
            {
                comb.Properties.Items.Add(item.DataCode);
            }
        }

    }

    public class POPCReport
    {
        public static DataTable GetShipmentDetail(PH.POPC.BO.POColorSizeDetail pur)
        {
            //rect59: G--Goods inwards, I--Inspection, S--Stores
            string SqlStr = "select a.RECD59,case a.recd59 when 0 then 0 else a.recd59+19000000 end AS FDate," +
                " a.advn59,a.grno59,a.trnq59,a.suom59,a.rect59,a.scrc59,c.DSCR12,a.ordn59,a.Line59,a.cono59,a.item59,a.trin59, b.nrol59 as Roll " +
                " from ault4f1.pmp59 a LEFT JOIN ault4F1.PMP12 c ON (CONO12=a.CONO59 AND PRMT12='SCRC' AND PSRG12=a.SCRC59) " +
                " left join ault4f1.pmp59p b on a.cono59=b.cono59 and a.ordn59 = b.ordn59 and a.line59=b.line59 and a.dlin59 = b.dlin59" +
                " where  a.trnq59<>0 " +  //'expd59=9999999 and'
                " AND a.cono59 = '{0}' and a.ordn59 = '{1}' " +
                " and a.Line59 = {2} and a.item59= '{3}' " +
                " Order by a.RECD59,a.GRNO59,a.RECT59";
            SqlStr = string.Format(SqlStr, pur.Company, pur.PONO, pur.OrderLine, pur.SKU);
            return PH.POPC.BO.DB.AS400DB.GetTable(SqlStr);
        }

        public static void ShowPOPCWOReport(string projectNo)
        {
            if (string.IsNullOrEmpty(projectNo)) return;
            projectNo = projectNo.Replace("EX-", "");

            PH.RWO.BO.WorkOrderList list = new PH.RWO.BO.WorkOrderList();
            PH.RWO.BackEnd.POPCWOReport report = new PH.RWO.BackEnd.POPCWOReport();
            report.DataSource = list.GetWorkOrdersByProject(projectNo);
            report.ShowPreviewDialog();
        }

        public static void ShowPOPCRWOReport(string projectNo)
        {
            if (string.IsNullOrEmpty(projectNo)) return;
            projectNo = projectNo.Replace("EX-", "");

            PH.RWO.BO.RoundWorkOrderList list = new PH.RWO.BO.RoundWorkOrderList();
            PH.RWO.BackEnd.POPCRWOReport report = new PH.RWO.BackEnd.POPCRWOReport();
            report.DataSource = list.GetRoundWorkOrdersByProject(projectNo);
            report.ShowPreviewDialog();
        }
    }

    public enum POPCPrintType
    {
        FrontPage,
        SupplementSheet, // FrontPage - Supplement Sheet 1
        Level,
        ItemChanged,
        ItemSpec,
        InvoiceMatching
    }
    public enum POPCPrintLevel
    {
        None,
        InAdvance,
        OneA,
        OneB,
        TwoA,
        TwoB,
        TwoAChange,
        TwoBChange,
        Three,
        Four,
        Five1,
        Five2
    }
    public enum POPCAnalysisPrintType
    {
        Replacement,
        CreditCash,
        WeeklyAmount,
        SuppPerformance
    }


    //用于处理与Banded Grid View相关的通用操作, 由David增加 2022-05-30
    public class BandedGridViewHelper
    {
        static Color colorGray = Color.FromArgb(217, 217, 217);
        static Color colorYellow = Color.FromArgb(235, 241, 222);
        static Color colorBlue = Color.FromArgb(220, 230, 241);

        public static void SetGridViewBackColor(BandedGridView ABandedGridView)
        {
            SetGridViewBandBackColor(ABandedGridView.Bands);

            for (int i = 0; i < ABandedGridView.Columns.Count; i++)
            {
                if (ABandedGridView.Columns[i].OwnerBand != null && ABandedGridView.Columns[i].OwnerBand.Tag != null)
                {
                    string sTag = Convert.ToString(ABandedGridView.Columns[i].OwnerBand.Tag);
                    if (sTag == "0") ABandedGridView.Columns[i].AppearanceHeader.BackColor = colorGray;
                    else if (sTag == "1") ABandedGridView.Columns[i].AppearanceHeader.BackColor = colorYellow;
                    else if (sTag == "2") ABandedGridView.Columns[i].AppearanceHeader.BackColor = colorBlue;
                }
            }
        }

        static void SetGridViewBandBackColor(GridBandCollection AGridBands)
        {
            for (int i = 0; i < AGridBands.Count; i++)
            {
                if (AGridBands[i].Tag != null)
                {
                    string sTag = Convert.ToString(AGridBands[i].Tag);
                    if (sTag == "0") AGridBands[i].AppearanceHeader.BackColor = colorGray;
                    else if (sTag == "1") AGridBands[i].AppearanceHeader.BackColor = colorYellow;
                    else if (sTag == "2") AGridBands[i].AppearanceHeader.BackColor = colorBlue;
                }

                if (AGridBands[i].Children.Count > 0)
                {
                    SetGridViewBandBackColor(AGridBands[i].Children);
                }
            }

        }
    }



    public class GetBandedColorGridViewHelper
    {
        //static Color colorGray = Color.FromArgb(217, 217, 217);
        //static Color colorYellow = Color.FromArgb(235, 241, 222);
        //static Color colorBlue = Color.FromArgb(220, 230, 241);
        static Color Defaultcolor = Color.FromArgb(247, 245, 241);
        public static void SetGridViewBackColor(BandedGridView ABandedGridView)
        {
            SetGridViewBandBackColor(ABandedGridView.Bands);

            for (int i = 0; i < ABandedGridView.Columns.Count; i++)
            {
                if (ABandedGridView.Columns[i].OwnerBand != null && ABandedGridView.Columns[i].OwnerBand.Tag != null)
                {
                    string sTag = Convert.ToString(ABandedGridView.Columns[i].OwnerBand.Tag);
                    if (sTag == "0") ABandedGridView.Columns[i].AppearanceHeader.BackColor = Defaultcolor;
                    else if (sTag == "1") ABandedGridView.Columns[i].AppearanceHeader.BackColor = Defaultcolor;
                    else if (sTag == "2") ABandedGridView.Columns[i].AppearanceHeader.BackColor = Defaultcolor;
                }
            }
        }

        static void SetGridViewBandBackColor(GridBandCollection AGridBands)
        {
            for (int i = 0; i < AGridBands.Count; i++)
            {
                if (AGridBands[i].Tag != null)
                {
                    string sTag = Convert.ToString(AGridBands[i].Tag);
                    if (sTag == "0") AGridBands[i].AppearanceHeader.BackColor = Defaultcolor;
                    else if (sTag == "1") AGridBands[i].AppearanceHeader.BackColor = Defaultcolor;
                    else if (sTag == "2") AGridBands[i].AppearanceHeader.BackColor = Defaultcolor;
                }

                if (AGridBands[i].Children.Count > 0)
                {
                    SetGridViewBandBackColor(AGridBands[i].Children);
                }
            }

        }
    }
}
