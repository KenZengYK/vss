using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using System.Data;
using System.Diagnostics;
using System.Reflection;
using System.IO;

namespace PH.MR.BO
{
    public class MREnquiriesRight
    {
        internal static int MREnquiries_AllVersions = 30;
        internal static int MREnquiries_WO = 31;
        internal static int MREnquiries_MR = 32;
        internal static int MREnquiries_PO = 33;
        internal static int MREnquiries_MC = 34;
        internal static int MREnquiries_MU = 35;
        internal static int MREnquiries_CAC = 36;
        internal static int MREnquiries_EditOldVersions = 37;
    }
    public enum DataAction
    {
        None, MR, RoundMR, QN, MRHistoryEnquiries, HSCode, CMT, Compiere
    }
    public enum PHPrintReportOption
    {
        None,//0
        SumListing,//1
        SumBreakDownListing,//2
        DetailListing,//3
        HSCodeDetailListing,//4
        HSCodeSummaryListing,//5
        SumListingCMT,//6
        ////by Peter 20140303
        SumBreakDownListingCMT,//7
        DetailListingCMT//8
    }
    public enum PHReportAction
    {
        None, ShowReport, DesignReport, ExportReport, GenerateMR, MR2Compiere, SaveVersion, CompareVersion, GetVersions, GenerateMRHistoryEnquiries
    }

    public enum GenerateDataStatus
    {
        Progressing, Finished, Cancel
    }

    public enum PrintAgainOption
    {
        None, Yes, No
    }

    [Flags]
    public enum HasPrintedReport
    {
        None = 0,
        MR_SumListing = 1,
        MR_SumBreakDownListing = 2,
        MR_DetailListing = 4,
        RMR_DetailListing = 8,
        QN_DetailListing = 16,
    }

    public class PHReportHelper
    {
        public static string[] PHReportExportDescript = new string[]
        {
            "Export to PDF",
            "Export to HTML",
            "Export to TXT",
            "Export to CSV",
            "Export to MHT",
            "Export to XLS",
            "Export to RTF",
            "Export to BMP"
        };
    }



    public enum ShowFormOption
    {
        None, MR, RoundMR, QN, HistoryEnquiry, HSCode, CMT, Compiere
    }

    public enum PHCompareOption
    {
        None, MR, MU, PO
    }
}
