using System;
using System.Linq;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection;
using System.Xml;
using PH.Platform.BO;

namespace PH.MobileQC.BO
{
    public class ReportHelper
    {

        QC_ReportInfo _CurrentReportInfo;
        public ReportHelper(string AReportID)
        {
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            _CurrentReportInfo = db.QC_ReportInfos.FirstOrDefault(p => p.ReportID == AReportID);

            if (_CurrentReportInfo == null)
            {
                _CurrentReportInfo = db.QC_ReportInfos.FirstOrDefault(p => p.ReportID == "Defect");
            }
        }

        public QC_ReportInfo ReportInfo
        {
            get
            {
                return _CurrentReportInfo;
            }
        }


        //static MobileQCDataContext db;
        //public static QC_ReportVersion ReportVersion
        //{
        //    get
        //    {
        //        if (db == null)
        //        {
        //            db = ContextBuilder.CreateContext<MobileQCDataContext>();
        //        }
        //        return db.QC_ReportVersions.FirstOrDefault();
        //    }
        //}

        //public static string VerLabel
        //{
        //    get
        //    {
        //        return ReportVersion.VerName;
        //    }
        //}

        //public static string Ver
        //{
        //    get
        //    {
        //        return ReportVersion.VerContext;
        //    }
        //}

        //public static string PublishedDateLable
        //{
        //    get
        //    {
        //        return ReportVersion.PublishedName;
        //    }
        //}


        //public static string PublishedDate
        //{
        //    get
        //    {
        //        return ReportVersion.PublishedContext; 
        //    }
        //}





        // public const string VerLabel = "Ver :";
        // public const string PublishedDateLable = "Effective dd :";

        //public const  string Ver = "2.0";
        //public const  string PublishedDate = "2019-06-13";

    }
}
