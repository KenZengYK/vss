

namespace PH.MobileQC.BO
{
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
    using System.Collections.Generic;
    using PH.LWPM.BO;
    using PH.Platform.Misc.BO;
    using PH.FabricInspection.BO;
    using System.IO;
    using System.Drawing;
    using System.Globalization;
    using System.Linq.Expressions;



    public class MiscHelper
    {

        static PHPlatformMiscDataContext _misctx;
        public static PHPlatformMiscDataContext MiscCtx
        {
            get
            {
                if (_misctx == null)
                {
                    _misctx = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
                    _misctx.CommandTimeout = 1000;
                }
                return _misctx;
            }

        }
    }



    //Xsj20161214:為做平板系統而添加以下代碼 
    public partial class QC_QCRole : BaseEntity
    {
    }
    public partial class QC_QCUser : BaseEntity
    {
    }
    public partial class QC_RoleUser : BaseEntity
    {
    }
    public partial class QC_AppRightInfo : BaseEntity
    {
    }
    public partial class QC_AppInfo : BaseEntity
    {
    }

    public partial class QC_AppActivityInfo : BaseEntity
    {
    }

    public partial class Email : BaseEntity
    {

    }


    public class AttachDefect
    {
        public bool CheckFlag { get; set; }
        public string DefectCode { get; set; }
        public string DefectName { get; set; }
    }


    public class AttachPosition
    {
        public bool CheckFlag { get; set; }
        public string PositionCode { get; set; }
        public string PositionName { get; set; }
    }




    public partial class QC_ProductTypeInfo : BaseEntity
    {

        //public IEnumerable<PHQCDefect> GetNoAttachDefects()
        //{
        //    var defects = (from r in this.QC_ProductType_CommonDefects
        //                 select new
        //                 {
        //                     DefectCode = r.DefectCode
        //                 }.DefectCode).ToList();

        //    var lists = from a in  DefectHelper.FbcCtx.PHQCDefects
        //                where !(defects.Contains(a.PHDefectCode))
        //                select a;
        //    return lists;        
        //}


        public IEnumerable<QC_Defect> GetNoAttachPosition()
        {
            MobileQCDataContext _context = this.CurrentDataContext as MobileQCDataContext;
            if (_context == null)
                return null;

            var poslist = (from r in this.QC_ProductType_CommonPositions
                           select new
                           {
                               PositionCode = r.PositionCode
                           }.PositionCode).ToList();

            var lists = from a in _context.QC_Defects
                        where !(poslist.Contains(a.Defect_Code))
                        select a;
            return lists;
        }
    }
    public partial class QC_ProductType_CommonDefect : BaseEntity
    {
        public string DefectName
        {
            get
            {

                if (string.IsNullOrEmpty(this.DefectCode))
                    return "";
                else
                {
                    PHQCDefect _pdf = DefectHelper.FbcCtx.PHQCDefects.Where(p => p.PHDefectCode == this.DefectCode).FirstOrDefault();
                    if (_pdf == null)
                        return "";
                    else
                        return _pdf.DefectChineseName;
                }
            }

        }


    }

    //PositionName
    public partial class QC_ProductType_CommonPosition : BaseEntity
    {

        public string PositionName
        {
            get
            {

                if (string.IsNullOrEmpty(this.PositionCode))
                    return "";
                else
                {
                    //  PHQCDefect _pdf = MobileHelper.MobileCtx.QC_Defects.Where(p => p.Defect_Type==2 && p.Defect_Code PositionCode)== this..FirstOrDefault();
                    QC_Defect _pdf = MobileHelper.MobileCtx.QC_Defects.Where(p => p.Defect_Type == 2 && p.Defect_Code == this.PositionCode).FirstOrDefault();
                    if (_pdf == null)
                        return "";
                    else
                        return _pdf.Defect_Spec;
                }
            }

        }
    }

    partial class MobileQCDataContext
    {


        public static string TestConnStr
        {
            get
            {

                return "Data Source=10.2.1.10;Initial Catalog=PH.MobileQC_V2;Persist Security Info=True;User ID=ituser;Password=itsystem@2009";
            }
        }

        #region

        [Function(Name = "dbo.Proc_MasterList")]
        public ISingleResult<Proc_MasterList> Proc_MasterList([Parameter(DbType = "VarChar(10)")] string factory, [Parameter(Name = "StartDate", DbType = "DateTime")] System.Nullable<System.DateTime> startDate, [Parameter(Name = "EndDate", DbType = "DateTime")] System.Nullable<System.DateTime> endDate)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, startDate, endDate);
            return ((ISingleResult<Proc_MasterList>)(result.ReturnValue));
        }

        [Function(Name = "dbo.WorkforceSewingSkill")]
        public ISingleResult<WorkforceSewingSkillResult> WorkforceSewingSkill(
                                            [Parameter(Name = "Line", DbType = "VarChar(8)")]string line,
                                            [Parameter(Name = "Workforce", DbType = "VarChar(20)")]  string workforce,
                                            [Parameter(Name = "Customer", DbType = "VarChar(10)")] string customer,
                                            [Parameter(Name = "QCTimeFrom", DbType = "VarChar(10)")] string qCTimeFrom,
                                            [Parameter(Name = "QCTimeTo", DbType = "VarChar(10)")] string qCTimeTo,
                                            [Parameter(Name = "LangID", DbType = "VarChar(10)")]string langid)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), line, workforce, customer, qCTimeFrom, qCTimeTo, langid);
            return ((ISingleResult<WorkforceSewingSkillResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.StyleLineQCStat")]
        public ISingleResult<StyleLineQCStatResult> StyleLineQCStat(
                                            [Parameter(Name = "Line", DbType = "VarChar(8)")] string line,
                                            [Parameter(Name = "Style", DbType = "VarChar(20)")] string style,
                                            [Parameter(Name = "LangID", DbType = "VarChar(10)")]string langid)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), line, style, langid);
            return ((ISingleResult<StyleLineQCStatResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.StyleLineQCStatByWorkShop")]
        public ISingleResult<StyleLineQCStatByWorkshopResult> StyleLineQCStatByWorkShop(
            [Parameter(Name = "Factory", DbType = "VarChar(20)")] string factory,
            [Parameter(Name = "Workshop", DbType = "VarChar(20)")] string workshop,
             [Parameter(Name = "Line", DbType = "VarChar(8)")] string Line,
             [Parameter(Name = "Style", DbType = "VarChar(20)")] string Style,
            [Parameter(Name = "LangID", DbType = "VarChar(10)")] string langID,
            [Parameter(Name = "ShowYellow", DbType = "Int")]  int showYellow,
            [Parameter(Name = "ShowGreen", DbType = "Int")] int showGreen,
            [Parameter(Name = "ShowRed", DbType = "Int")] int showRed)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, workshop, Line, Style, langID, showYellow, showGreen, showRed);
            return (ISingleResult<StyleLineQCStatByWorkshopResult>)(result.ReturnValue);
        }

        [Function(Name = "dbo.worker_evaluate_view")]
        public ISingleResult<worker_Evaluate> worker_evaluateview(
            [Parameter(Name = "factory", DbType = "varchar(5)")] string factory,
            [Parameter(Name = "workshop", DbType = "varchar(10)")] string workshop,
            [Parameter(Name = "timefrom", DbType = "datetime")] System.Nullable<System.DateTime> timefrom,
            [Parameter(Name = "timeto", DbType = "datetime")] System.Nullable<System.DateTime> timeto,
            [Parameter(Name = "line", DbType = "varchar(20)")] string line,
            [Parameter(Name = "langid", DbType = "char(10)")] string langid)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, workshop, timefrom, timeto, line, langid);
            return ((ISingleResult<worker_Evaluate>)(result.ReturnValue));

        }

        [Function(Name = "dbo.OPT_QCRate")]
        public ISingleResult<qc_rate> opt_qcrate(
            [Parameter(Name = "worker", DbType = "char(20)")] string worker,
            [Parameter(Name = "qc_time", DbType = "datetime")] DateTime qc_time,
            [Parameter(Name = "langid", DbType = "varchar(100)")] string langid)
        {
            IExecuteResult resutl = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), worker, qc_time, langid);
            return ((ISingleResult<qc_rate>)(resutl.ReturnValue));
        }



        [Function(Name = "dbo.StyleLineQCStat_Comp")]
        public ISingleResult<StyleLineQCStatResult> StyleLineQCStat_Comp(
                                            [Parameter(Name = "Line", DbType = "VarChar(8)")] string line,
                                            [Parameter(Name = "Style", DbType = "VarChar(20)")] string style,
                                            [Parameter(Name = "LangID", DbType = "VarChar(10)")]string langid)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), line, style, langid);
            return ((ISingleResult<StyleLineQCStatResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.WorkforceSewingSkill_Comp")]
        public ISingleResult<WorkforceSewingSkillResult> WorkforceSewingSkill_Comp(
                                            [Parameter(Name = "Line", DbType = "VarChar(8)")]string line,
                                            [Parameter(Name = "Workforce", DbType = "VarChar(20)")]  string workforce,
                                            [Parameter(Name = "Customer", DbType = "VarChar(10)")] string customer,
                                            [Parameter(Name = "QCTimeFrom", DbType = "VarChar(10)")] string qCTimeFrom,
                                            [Parameter(Name = "QCTimeTo", DbType = "VarChar(10)")] string qCTimeTo,
                                            [Parameter(Name = "LangID", DbType = "VarChar(10)")]string langid)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), line, workforce, customer, qCTimeFrom, qCTimeTo, langid);
            return ((ISingleResult<WorkforceSewingSkillResult>)(result.ReturnValue));
        }


        //17/6/23 add
        [Function(Name = "dbo.StyleLineQCStatByWorkShop_Comp")]
        public ISingleResult<StyleLineQCStatByWorkshopResult> StyleLineQCStatByWorkShop_Comp(
            [Parameter(Name = "Factory", DbType = "VarChar(20)")] string factory,
            [Parameter(Name = "Workshop", DbType = "VarChar(20)")] string workshop,
            [Parameter(Name = "LangID", DbType = "VarChar(10)")] string langID,
            [Parameter(Name = "ShowYellow", DbType = "Int")]  int showYellow,
            [Parameter(Name = "ShowGreen", DbType = "Int")] int showGreen,
            [Parameter(Name = "ShowRed", DbType = "Int")] int showRed)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, workshop, langID, showYellow, showGreen, showRed);
            return (ISingleResult<StyleLineQCStatByWorkshopResult>)(result.ReturnValue);
        }

        //[Function(Name = "dbo.StyleLineQCStatByWorkShop")]
        //public ISingleResult<StyleLineQCStatResult> StyleLineQCStatByWorkShop(
        //                         [Parameter(Name = "Factory", DbType = "VarChar(20)")] string factory,
        //                         [Parameter(Name = "Workshop", DbType = "VarChar(20)")] string workshop,
        //                         [Parameter(Name = "LangID", DbType = "VarChar(10)")] string langID,
        //                         [Parameter(Name = "ShowYellow", DbType = "Int")] int showYellow,
        //                         [Parameter(Name = "ShowGreen", DbType = "Int")] int showGreen,
        //                         [Parameter(Name = "ShowRed", DbType = "Int")] int showRed)
        ////[Parameter(Name = "Line", DbType = "VarChar(8)")] string line,
        ////[Parameter(Name = "Style", DbType = "VarChar(20)")] string style,
        //{
        //    //IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, workshop, langID, showYellow, showGreen, showRed);
        //    //return ((ISingleResult<StyleLineQCStatResult>)(result.ReturnValue));

        //    IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, workshop, langID, showYellow, showGreen, showRed);
        //    return ((ISingleResult<StyleLineQCStatResult>)(result.ReturnValue));
        //}



        public string OfflineConnectionString
        {
            get
            {


                //return PH.MobileQC.BO.Properties.Settings.Default.PH_MobileQC_OfflineConnectionString;
                // return this.ConfigGetValue(this.CurrentAssembly, "PH.MobileQC.BO.Properties.Settings.PH_MobileQC_OfflineConnectionString","connectionString");
                return this.ConfigGetValue(this.CurrentAssembly, "PH.MobileQC.BO.Properties.Settings.PH_MobileQC_OfflineConnectionString", "connectionString");


            }

        }

        //public string DefaultConnectionString
        //{
        //    get
        //    {
        //       //return PH.MobileQC.BO.Properties.Settings.Default.PH_MobileQCConnectionString;
        //       // return this.ConfigGetValue(this.CurrentAssembly, "PH.MobileQC.BO.Properties.Settings.PH_MobileQCConnectionString", "connectionString");
        //        return this.ConfigGetValue(this.CurrentAssembly, "PH.MobileQC.BO.Properties.Settings.PH_MobileQC_OfflineConnectionString", "connectionString");

        //    }

        //}

        public string CurrentAssembly
        {
            get
            {
                return System.Reflection.Assembly.GetAssembly(this.GetType()).Location;
            }
        }

        public void ConfigSetValue(string strExecutablePath, string AppKey, string AppValue)
        {
            XmlDocument xDoc = new XmlDocument();
            //鳳褫硒俴恅璃腔繚噤睿靡備
            xDoc.Load(strExecutablePath + ".config");

            XmlNode xNode;
            XmlElement xElem1;
            XmlElement xElem2;
            xNode = xDoc.SelectSingleNode("//connectionStrings");
            // xDoc.Load(System.Windows.Forms.Application.ExecutablePath + ".config");
            xElem1 = (XmlElement)xNode.SelectSingleNode("//add[@name='" + AppKey + "']");
            if (xElem1 != null) xElem1.SetAttribute("connectionString", AppValue);
            else
            {
                xElem2 = xDoc.CreateElement("add");
                xElem2.SetAttribute("name", AppKey);
                xElem2.SetAttribute("connectionString", AppValue);
                xNode.AppendChild(xElem2);
            }
            xDoc.Save(strExecutablePath + ".config");
        }

        public string ConfigGetValue(string strExecutablePath, string appKey, string attributeName)
        {
            XmlDocument xDoc = new XmlDocument();
            try
            {
                xDoc.Load(strExecutablePath + ".config");
                XmlNode xNode;
                XmlElement xElem;
                xNode = xDoc.SelectSingleNode("//connectionStrings");

                xElem = (XmlElement)xNode.SelectSingleNode("//add[@name='" + appKey + "']");
                if (xElem != null)
                    //return xElem.GetAttribute("connectionString");
                    return xElem.GetAttribute(attributeName);
                else
                    return "";
            }
            catch (Exception)
            {
                return "";
            }
        }

        /// <summary>
        /// 从QC记录中得到所有的Factory信息
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllFactory()
        {
            string SqlStr = "SELECT DISTINCT Factory FROM QC_Master ORDER BY Factory DESC";
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 从QC记录中得到对应Factory的Workshop
        /// </summary>
        /// <param name="AFactory"></param>
        /// <returns></returns>
        public DataTable GetAllWorkshop(string AFactory)
        {
            string SqlStr = "SELECT DISTINCT Workshop FROM QC_Master WHERE ( ('{0}' = 'GX' and Factory in ('GG','RX') ) or (Factory = '{0}')) and isnull(workshop,'')!='' ORDER BY Workshop";
            SqlStr = string.Format(SqlStr, AFactory);

            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 得到QC_Master中所有Line
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllLine()
        {
            string SqlStr = "SELECT DISTINCT Line FROM QC_Master where isnull(Line,'')!='' ORDER BY Line ";
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 得到QC_Master中所有Line
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllLine(DateTime AFromTime, DateTime AToTime)
        {
            string d1 = AFromTime.ToShortDateString() + " 00:00:00";
            string d2 = AToTime.ToShortDateString() + " 23:59:59";

            string SqlStr = "SELECT DISTINCT Line FROM QC_Master WHERE QC_Time >= '{0}' AND QC_Time <= '{1}' and isnull(Line,'')!='' ORDER BY Line ";
            //  SqlStr = string.Format(SqlStr, AFromTime, AToTime);
            SqlStr = string.Format(SqlStr, d1, d2);
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }


        /// <summary>
        /// 得到Workshop的Line
        /// </summary>
        /// <param name="AFactory">Factory</param>
        /// <param name="AWorkshop">Workshop</param>
        /// <returns></returns>
        public DataTable GetAllLine(string AFactory, string AWorkshop)
        {
            string SqlStr = "SELECT DISTINCT Line FROM QC_Master WHERE Factory = '{0}' and Workshop = '{1}' ORDER BY Line ";
            SqlStr = string.Format(SqlStr, AFactory, AWorkshop);
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 全条件line
        /// </summary>
        /// <param name="afactory">1</param>
        /// <param name="aworkshop">2</param>
        /// <param name="afromtime">3</param>
        /// <param name="atotime">4</param>
        /// <returns></returns>
        //public DataTable getallline(string afactory, string aworkshop, DateTime afromtime, DateTime atotime)
        public DataTable getallline(string afactory, string aworkshop, string afromtime, string atotime)
        {

            string sqlstr = "select distinct Line from qc_master where factory='{0}' and workshop='{1}' and qc_time between '{2}' and '{3}' order by Line ";
            sqlstr = string.Format(sqlstr, afactory, aworkshop, afromtime, atotime);
            return this.ExecuteDataTable(sqlstr, "QC_Master");


        }

        public List<string> GetLineByFactory(string _fac)
        {
            string sqlstr = "select pline from openquery(INTERBASE, 'select distinct tshop,pline,tplant from Mobile_QC where tplant=''" + _fac + "''')";
            List<string> lines = this.ExecuteQuery<string>(sqlstr).ToList();
            return lines;
        }


        public List<string> GetWorkshopInfo(string _fac)
        {
            //string sqlstr = "select '' as Workshop union select tshop as Workshop from openquery(INTERBASE, 'select distinct tshop from Mobile_QC where tplant=''" + _fac + "''')";
            //string sqlstr = "select tshop as Workshop from openquery(INTERBASE, 'select distinct tshop from Mobile_QC where tplant=''" + _fac + "''  ')";

            string sqlstr = "select tshop as Workshop from openquery(INTERBASE, 'select distinct tshop from Mobile_QC where  (''" + _fac + "'' = ''GX(GG+RX)'' and   tplant in (''GG'', ''RX'') )  or   tplant=''" + _fac + "''  ')";

            List<string> workshops = this.ExecuteQuery<string>(sqlstr).ToList();
            return workshops;
        }

        public List<string> GetLineInfo(string _fac, string _wshop)
        {

            string sqlstr = "";
            if (!string.IsNullOrEmpty(_wshop))
                //sqlstr = "select pline as Line from openquery(INTERBASE, 'select distinct pline from Mobile_QC where tplant=''" + _fac + "'' and tshop=''" + _wshop + "''')";
                sqlstr = "select pline as Line from openquery(INTERBASE, 'select distinct pline from Mobile_QC where ( (''" + _fac + "'' = ''GX(GG+RX)'' and   tplant in (''GG'', ''RX'') )  or   tplant=''" + _fac + "'' ) and tshop=''" + _wshop + "''')";
            else
                //sqlstr = "select pline as Line from openquery(INTERBASE, 'select distinct pline,tplant from Mobile_QC where tplant=''" + _fac + "''')";
                sqlstr = "select pline as Line from openquery(INTERBASE, 'select distinct pline,tplant from Mobile_QC where (''" + _fac + "'' = ''GX(GG+RX)'' and   tplant in (''GG'', ''RX'') )  or   tplant=''" + _fac + "'' ')";
            List<string> lines = this.ExecuteQuery<string>(sqlstr).ToList();

            return lines;
        }




        /// <summary>
        /// 得到Line的Worker
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <returns></returns>
        public DataTable GetWorker(string ALine)
        {
            string SqlStr = "SELECT DISTINCT Worker FROM QC_Master WHERE Line = '{0}'";
            SqlStr = string.Format(SqlStr, ALine);
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 得到时间段内Line的Worker
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <returns></returns>
        //public DataTable GetWorker(DateTime AFromTime, DateTime AToTime, string ALine)
        public DataTable GetWorker(string AFromTime, string AToTime, string ALine)
        {
            //string SqlStr = "SELECT DISTINCT Worker FROM QC_Master WHERE qc_time>='{0}' and qc_time<='{1}' and  Line = '{2}'";

            string SqlStr = " SELECT  distinct (case when c.W_Procedure is null then a.Worker else c.Worker end ) as  Worker " +
                            " FROM QC_Master AS a  " +
                            "  Inner Join QC_Detail AS b On a.MasterID = b.MasterID " +
                            "  Left Join QC_Detail_Detail C on a.MasterID=C.MasterID and b.ID=C.DetailID  " +
                            " WHERE qc_time>='{0}' and qc_time<='{1}' and  Line = '{2}'";

            SqlStr = string.Format(SqlStr, AFromTime, AToTime, ALine);
            return this.ExecuteDataTable(SqlStr, "QC_Master");

        }


        /// <summary>
        /// 得到Line的當天的Style
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <returns></returns>
        public DataTable GetStyle(string ALine)
        {
            string SqlStr = "SELECT DISTINCT Style FROM QC_Master WHERE Line = '{0}' AND QC_Time BETWEEN '{1}' AND '{2}'";

            SqlStr = string.Format(SqlStr, ALine, DateTime.Now.ToString("yyyy-MM-dd 0:00:00"), DateTime.Now.ToString("yyyy-MM-dd 23:59:59"));
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 得到Line的Style
        /// </summary>
        /// <param name="AFactory"></param>
        /// <param name="AWorkshop"></param>
        /// <param name="ALine"></param>
        /// <returns></returns>
        public DataTable GetStyle(string AFactory, string AWorkshop, string ALine)
        {
            string SqlStr = "SELECT DISTINCT Style FROM QC_Master WHERE Factory = '{0}' AND Workshop = '{1}' AND Line = '{2}' AND QC_Time BETWEEN '{3}' AND '{4}'";

            SqlStr = string.Format(SqlStr, AFactory, AWorkshop, ALine,
                DateTime.Now.ToString("yyyy-MM-dd 0:00:00"), DateTime.Now.ToString("yyyy-MM-dd 23:59:59"));
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        /// <summary>
        /// 得到Customer(Project的前四位為Customer)
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <param name="AWorker">Worker</param>
        /// <returns></returns>
        public DataTable GetCustomer(string ALine, string AWorker)
        {
            string SqlStr = "SELECT DISTINCT LEFT(Project, 4) AS Customer FROM QC_Master WHERE Line = '{0}' AND Worker = '{1}'";
            SqlStr = string.Format(SqlStr, ALine, AWorker);
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }


        /// <summary>
        /// 得到时间段内的Customer(Project的前四位為Customer)
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <param name="AWorker">Worker</param>
        /// <returns></returns>
        //public DataTable GetCustomer(DateTime fromtime, DateTime totime, string ALine, string AWorker)
        public DataTable GetCustomer(string fromtime, string totime, string ALine, string AWorker)
        {
            //string SqlStr = "SELECT DISTINCT LEFT(Project, 4) AS Customer FROM QC_Master WHERE qc_time>='{0}' and qc_time<='{1}' and  Line = '{2}' AND Worker = '{3}'";

            string SqlStr = " SELECT  DISTINCT LEFT(Project, 4) AS Customer " +
                            " FROM QC_Master AS a  " +
                            "  Inner Join QC_Detail AS b On a.MasterID = b.MasterID " +
                            "  Left Join QC_Detail_Detail C on a.MasterID=C.MasterID and b.ID=C.DetailID  " +
                            " WHERE qc_time>='{0}' and qc_time<='{1}' and  Line = '{2}' AND (case when c.W_Procedure is null then a.Worker else c.Worker end )  = '{3}'";

            SqlStr = string.Format(SqlStr, fromtime, totime, ALine, AWorker);
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }



        /// <summary>
        /// 得到QN Qty
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <param name="AStyle">Style</param>
        /// <param name="AProject">Project</param>
        /// <param name="AQN">QN</param>
        /// <returns></returns>
        public int GetQNQty(string ALine, string AStyle, string AProject, string AQN)
        {
            string SqlStr = @"SELECT ISNULL(SUM(Qty), 0) AS QNQty FROM OPENQUERY(INTERBASE, 'SELECT * FROM Mobile_QC_ALL') 
WHERE PLine = '{0}' AND CStyle = '{1}' AND J_No IN ({2}) AND FCCS IN ({3}) ";
            SqlStr = string.Format(SqlStr, ALine, AStyle, AProject, AQN);
            DataTable dt = this.ExecuteDataTable(SqlStr, "QNQty");
            if (dt.Rows.Count > 0)
            {
                return Convert.ToInt32(dt.Rows[0][0]);
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 得到質量不合格的QC明細資訊
        /// </summary>
        /// <param name="ALine">Line</param>
        /// <param name="AStyle">Style</param>
        /// <param name="AGXDH">Operation Code</param>
        /// <param name="AWorkerID">Worker ID</param>
        /// <param name="ALastQC_Time">Last QC Time</param>
        /// <returns></returns>
        public DataTable GetNoPassDetail(string ALine, string AStyle, string AGXDH, string AWorkerID, DateTime ALastQC_Time)
        {
            string SqlStr = @"SELECT Line, Project, WO, RWO, Style, W_Procedure, Worker, QC_Time, QCMan, QNNO, BoxNO, BindNo, MachinePlace, Color, Size,WOc, OTN, QC_Light, LightCount, Defect_Code, Problem, Action_Taken, SolutionCode, ONOffLine, Cause 
                              FROM QC_Master AS a, QC_Detail AS b
                              WHERE a.MasterID = b.MasterID AND a.Line = '{0}' AND a.Style = '{1}' AND
                                    a.W_Procedure = '{2}' AND Worker = '{3}' AND b.QC_Light <> 'P' AND
                                    a.QC_Time = '{4}'";
            SqlStr = string.Format(SqlStr, ALine, AStyle, AGXDH, AWorkerID, ALastQC_Time);
            return this.ExecuteDataTable(SqlStr, "NoPassDetail");

        }


        /// <summary>
        /// 取某時間段內出現的暇疵
        /// </summary>
        /// <param name="startdate"></param>
        /// <param name="enddate"></param>
        /// <returns></returns>
        public DataTable GetDefectRecently(string startdate, string enddate)
        {

            string sqlstr = string.Format(@"select aa.defectcode,bb.defectchinesename as defectname,aa.ttl from
            (select c.defectcode,count(distinct a.masterid) as ttl 
            from qc_master a join qc_detail_detail c on a.masterid=c.masterid
            where a.qc_time between '{0}' and '{1}'
            group by c.defectcode
            ) aa join [PH.FabricInspection]..PHQCDefect bb on aa.defectcode=bb.phdefectcode order by aa.ttl desc
            ", startdate, enddate);
            DataTable dt = this.ExecuteDataTable(sqlstr, "defect");
            return dt;
        }

        public DataTable GetDefectRecently(string factory, string workshop, string line, string startdate, string enddate)
        {
            string sqlstr = ""; DataTable dt = null;

            if (!string.IsNullOrEmpty(workshop) && !string.IsNullOrEmpty(line))
            {
                sqlstr = string.Format(@"select aa.defectcode,bb.defectchinesename as defectname,aa.ttl from
                        (select c.defectcode,count(distinct a.masterid) as ttl 
                         from qc_master a join qc_detail_detail c on a.masterid=c.masterid
                         where a.factory='{0}' and workshop='{1}' and line='{2}' and a.qc_time between '{3}' and '{4}'
                          group by c.defectcode
                         ) aa join [PH.FabricInspection]..PHQCDefect bb on aa.defectcode=bb.phdefectcode order by aa.ttl desc"
                , factory, workshop, line, startdate, enddate);
                dt = this.ExecuteDataTable(sqlstr, "defect");
            }

            if (!string.IsNullOrEmpty(workshop) && string.IsNullOrEmpty(line))
            {
                sqlstr = string.Format(@"select aa.defectcode,bb.defectchinesename as defectname,aa.ttl from
                        (select c.defectcode,count(distinct a.masterid) as ttl 
                         from qc_master a join qc_detail_detail c on a.masterid=c.masterid
                         where a.factory='{0}' and workshop='{1}' and a.qc_time between '{2}' and '{3}'
                          group by c.defectcode
                         ) aa join [PH.FabricInspection]..PHQCDefect bb on aa.defectcode=bb.phdefectcode order by aa.ttl desc"
                , factory, workshop, startdate, enddate);
                dt = this.ExecuteDataTable(sqlstr, "defect");
            }
            if (string.IsNullOrEmpty(workshop) && !string.IsNullOrEmpty(line))
            {
                sqlstr = string.Format(@"select aa.defectcode,bb.defectchinesename as defectname,aa.ttl from
                        (select c.defectcode,count(distinct a.masterid) as ttl 
                         from qc_master a join qc_detail_detail c on a.masterid=c.masterid
                         where a.factory='{0}' and line='{1}' and a.qc_time between '{2}' and '{3}'
                          group by c.defectcode
                         ) aa join [PH.FabricInspection]..PHQCDefect bb on aa.defectcode=bb.phdefectcode order by aa.ttl desc"
                , factory, line, startdate, enddate);
                dt = this.ExecuteDataTable(sqlstr, "defect");
            }

            if (string.IsNullOrEmpty(workshop) && string.IsNullOrEmpty(line))
            {
                sqlstr = string.Format(@"select aa.defectcode,bb.defectchinesename as defectname,aa.ttl from
                        (select c.defectcode,count(distinct a.masterid) as ttl 
                         from qc_master a join qc_detail_detail c on a.masterid=c.masterid
                         where a.factory='{0}' and a.qc_time between '{1}' and '{2}'
                          group by c.defectcode
                         ) aa join [PH.FabricInspection]..PHQCDefect bb on aa.defectcode=bb.phdefectcode order by aa.ttl desc"
                , factory, startdate, enddate);
                dt = this.ExecuteDataTable(sqlstr, "defect");
            }
            return dt;
        }

        public DataTable getQCStyle(string StartTime, string EndTime, string Factory)
        {
            StartTime = StartTime + " 00:00:00"; EndTime = EndTime + " 23:59:59";
            string sqlstr = string.Format(@"select  distinct a.Style from QC_Master as a , QC_detail as b 
                                                        where a.masterid= b.masterid and b.QC_light <> 'P'  and  a.QC_time between '{0}' and '{1}' and isnull(a.QCType, 'Process') = 'Process'  and a.Factory ='{2}' order by a.Style ",
                                                       StartTime, EndTime, Factory);
            DataTable dt = this.ExecuteDataTable(sqlstr, "defect");
            return dt;
        }



        /// <summary>
        /// 取固定暇疵
        /// </summary>
        /// <param name="startdate"></param>
        /// <param name="enddate"></param>
        /// <returns></returns>
        public DataTable GetDefectFix()
        {
            string sqlstr = "select datacode,description from Misc_DataDictionary where datatype='PH.MobileQC.DefectFix'";
            DataTable dt = MiscHelper.MiscCtx.ExecuteDataTable(sqlstr, "defix");
            return dt;
        }

        /// <summary>
        /// 取Level
        /// </summary>
        /// <param name="startdate"></param>
        /// <param name="enddate"></param>
        /// <returns></returns>
        public DataTable GetLevel()
        {
            string sqlstr = "select datacode,description from Misc_DataDictionary where datatype='PH.MobileQC.TraceLevel'";
            DataTable dt = MiscHelper.MiscCtx.ExecuteDataTable(sqlstr, "level");
            return dt;
        }

        /// <summary>
        /// 取Executer
        /// </summary>
        /// <param name="startdate"></param>
        /// <param name="enddate"></param>
        /// <returns></returns>
        public DataTable GeExecuter()
        {
            string sqlstr = "select datacode,description from Misc_DataDictionary where datatype='PH.MobileQC.Executer '";
            DataTable dt = MiscHelper.MiscCtx.ExecuteDataTable(sqlstr, "exec");
            return dt;
        }

        ///// <summary>
        ///// 得到某個時間段內的Project、Style、WO等信息
        ///// </summary>
        ///// <param name="AReportType">0: AQL報表， 1:FullAudit報表</param>
        ///// <param name="AFieldName">需要返回的字段，如：Style 返回款， Project返回工程號</param>
        ///// <param name="AQC_TimeBeginDate">審定開始日期，格式如：2017-12-28</param>
        ///// <param name="AQC_TimeEndDate">審定截止日期，格式如：2017-12-28</param>
        ///// <returns></returns>
        //public DataTable GetChoiceData_Final(int AReportType, string AFieldName, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        //{
        //    string SqlStr = "select distinct {0} from QC_Master_Final where QC_Time between '{1}' and '{2}'";
        //    if (AReportType == 0)
        //    {
        //        SqlStr += " and AuditType like 'AQL%'";
        //    }
        //    else if (AReportType == 1)
        //    {
        //        SqlStr += " and AuditType = 'FullAudit'";
        //    }
        //    SqlStr = string.Format(SqlStr, AFieldName, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999");
        //    return this.ExecuteDataTable(SqlStr, "");
        //}

        /// <summary>
        /// 得到工程數據，此方法用于尺寸量度審查表報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetProjectData(int AReportType, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            string SqlStr = @"select distinct Project from QC_Master_Final as a where QC_Time between '{0}' and '{1}' 
                                    and exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Size')";
            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999");
            return this.ExecuteDataTable(SqlStr, "");
        }

        /// <summary>
        /// 得到制單數據，此方法用于尺寸量度審查表報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AProject">工程號</param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetWOData(int AReportType, string AProject, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            string SqlStr = @"select distinct WO from QC_Master_Final  as a where QC_Time between '{0}' and '{1}' and Project = '{2}'
                                    and exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Size')";
            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999", AProject);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /// <summary>
        /// 得到款數據，此方法用于尺寸量度審查表報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AProject">工程號</param>
        /// <param name="AWO">制單號</param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetStyleData(int AReportType, string AProject, string AWO, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            string SqlStr = @"select distinct Style from QC_Master_Final as a where QC_Time between '{0}' and '{1}' and Project = '{2}' and WO = '{3}'
                                        and  exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Size')";
            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999", AProject, AWO);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /// <summary>
        /// 得到顏色數據，此方法用于尺寸量度審查表報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AProject">工程號</param>
        /// <param name="AWO">制單號</param>
        /// <param name="AStyle"></param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetColorData(int AReportType, string AProject, string AWO, string AStyle, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            string SqlStr = @"select distinct a.Color from QC_Master_Final as a where a.QC_Time between '{0}' and '{1}' and  ('{2}' ='' or a.Project = '{2}') and ('{3}' ='' or  a.WO = '{3}' ) and a.Style = '{4}'
                                        and exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Size') ";
            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999", AProject, AWO, AStyle);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /// <summary>
        /// 得到車間數據，此方法用于審定次品圖報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AFactory">工廠</param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetWorkShopData(int AReportType, string AFactory, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            string SqlStr = @"select distinct  a.WorkShop from QC_Master_Final as a where a.QC_Time between '{0}' and '{1}' and (('{2}' = 'GX(GG+RX)' and a.Factory in ('RX', 'GG')) or a.Factory = '{2}')
                                        and  exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Defect')  ";
            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999", AFactory);
            return this.ExecuteDataTable(SqlStr, "");
        }
        /// <summary>
        /// 得到客戶數據，此方法用于審定次品圖報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AFactory">工廠</param>
        /// <param name="AWorkShop">車間</param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetCustomerData(int AReportType, string AFactory, string AWorkShop, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            string SqlStr = @"select distinct left(Project, 4) as Customer from QC_Master_Final as a where QC_Time between '{0}' and '{1}' and (('{2}' = 'GX(GG+RX)' and a.Factory in ('RX', 'GG')) or a.Factory = '{2}') and   CHARINDEX(WorkShop,'{3}' )>0
                                    and  exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Defect')";
            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999", AFactory, AWorkShop);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /// <summary>
        /// 得到款號數據，此方法用于審定次品圖報表 2018-01-09由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表， 1:FullAudit報表</param>
        /// <param name="AFactory">工廠</param>
        /// <param name="AWorkShop">車間</param>
        /// <param name="ACustomer">客人</param>
        /// <param name="AQC_TimeBeginDate">審定開始日期</param>
        /// <param name="AQC_TimeEndDate">審定截止日期</param>
        /// <returns></returns>
        public DataTable GetStyleData(int AReportType, string AFactory, string AWorkShop, string ACustomer, string AQC_TimeBeginDate, string AQC_TimeEndDate)
        {
            //            string SqlStr = @"select distinct Style from QC_Master_Final as a where QC_Time between '{0}' and '{1}' and Factory = '{2}' and WorkShop = '{3}' and left(Project, 4) = '{4}'
            //                                       and exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Size') ";

            string SqlStr = @"select distinct Style from QC_Master_Final as a where QC_Time between '{0}' and '{1}' and  (('{2}' = 'GX(GG+RX)' and a.Factory in ('RX', 'GG')) or a.Factory = '{2}') and CHARINDEX(WorkShop,'{3}' ) > 0 and   CHARINDEX(left(Project, 4),'{4}' ) > 0
                                       and exists (select 1 from QC_Detail_Final as b where a.masterid= b.masterid and b.DetailType = 'Defect') ";


            if (AReportType == 0)
            {
                SqlStr += " and  (isnull(AuditType,'') = '' or AuditType like 'AQL%') ";
            }
            else if (AReportType == 1)
            {
                SqlStr += " and AuditType = 'FullAudit'";
            }
            SqlStr = string.Format(SqlStr, AQC_TimeBeginDate + " 00:00:000", AQC_TimeEndDate + " 23:59:59:999", AFactory, AWorkShop, ACustomer);
            return this.ExecuteDataTable(SqlStr, "");
        }
        #endregion


        #region
        //GarmentsOffLinesCondition list中自动添加

        //當唯一條件時，填充全部數據--Add 20180706 shulin 
        public DataTable GetAll(string GarmentsWo, string GarmentsColor, string GarmentsLine)
        {
            string SqlStr = "select  *,left(AuditType,3)as StyleType from dbo.QC_Master_Final as a,[PH.RWO1]..WorkOrder as b,[as400db]..APP10 as c where  c.PCOL10 = a.Color and a.QC_time in (select max(b.QC_time) from dbo.QC_Master_Final b where b.WO=a.WO and b.Color=a.Color and b.Line=a.Line) and a.WO = b.WorkOrderNo and  WO='{0}' and color ='{1}' and Line='{2}'";
            SqlStr = string.Format(SqlStr, GarmentsWo, GarmentsColor, GarmentsLine);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //根据工程号，订单获取Line--Add 20180706 shulin
        public DataTable GetGarmentsLine(string GarmentsProbject, string GarmentsWo)
        {
            string SqlStr = "select  distinct Line from dbo.QC_Master_Final  where   Project='{0}' and WO='{1}'";
            SqlStr = string.Format(SqlStr, GarmentsProbject, GarmentsWo);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //根據訂單，產線獲取Color--Add 20180706 shulin
        public DataTable GetGarmentsColor(string GarmentsProbject, string GarmentsWo, string GarmentsLine)
        {
            string SqlStr = "select distinct Color from dbo.QC_Master_Final  where   Project='{0}' and WO='{1}' and Line='{2}'";
            SqlStr = string.Format(SqlStr, GarmentsProbject, GarmentsWo, GarmentsLine);
            return this.ExecuteDataTable(SqlStr, "");
        }

        //根據時間，訂單，產線,顏色獲取Project--Add 20180706 shulin 
        public DataTable GetGarmentsProject(string AProjectNo)
        {
            string SqlStr = "select distinct Style from dbo.QC_Master_Final  where   Project='{0}'";
            SqlStr = string.Format(SqlStr, AProjectNo);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //根據訂單，產線,顏色，工程號獲取Style --add 20180706 shulin
        public DataTable GetGarmentsStyle(string GarmentsProbject, string GarmentsWo, string GarmentsLine, string GarmentsColor)
        {
            //string SqlStr = "select distinct Style from dbo.QC_Master_Final  where   Project='{0}' and WO='{1}' and Line='{2}' and Color='{3}'";
            string SqlStr = "select distinct Style from dbo.QC_Master_Final  where   Project='{0}'";
            SqlStr = string.Format(SqlStr, GarmentsProbject);

            //SqlStr = string.Format(SqlStr, GarmentsProbject, GarmentsWo, GarmentsLine, GarmentsColor);
            return this.ExecuteDataTable(SqlStr, "");
        }

        public DataTable GetGarmentsCheck(string GarmentsWo, string GarmentsLine, string GarmentsColor)
        {
            string SqlStr = "select distinct Style from dbo.QC_Master_Final  where    WO='{0}' and Line='{1}' and Color='{2}'";
            SqlStr = string.Format(SqlStr, GarmentsWo, GarmentsLine, GarmentsColor);
            return this.ExecuteDataTable(SqlStr, "");
        }

        //根據，工程號,款號 獲取Type--add 20180706 shulin
        public DataTable GetGarmentsType(string Project, string StyleNo)
        {
            string SqlStr = "select distinct Wo from dbo.QC_Master_Final  where  Project='{0}' and Style='{1}'";
            SqlStr = string.Format(SqlStr, Project, StyleNo);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //獲取Line,根據Wo--Add 20180706 shulin     
        public DataTable GetGarmentsWO1(string GarmentsWo)
        {
            string SqlStr = "select  distinct Line from dbo.QC_Master_Final  where   WO='{0}'";
            SqlStr = string.Format(SqlStr, GarmentsWo);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //獲取Color，根據Line--Add 20180706 shulin 
        public DataTable GetGarmentsLine1(string GarmentsLine)
        {
            string SqlStr = "select  distinct Color from dbo.QC_Master_Final as a,[PH.RWO1]..WorkOrder as b,[as400db]..APP10 as c where  c.PCOL10 = a.Color and a.QC_time in (select max(b.QC_time) from dbo.QC_Master_Final b where b.WO=a.WO and b.Color=a.Color and b.Line=a.Line) and a.WO = b.WorkOrderNo and Line='{0}'";
            SqlStr = string.Format(SqlStr, GarmentsLine);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //獲取Color,根據Line WO --Add 20180706 shulin
        public DataTable GetGarmentsLine2(string GarmentsLine, string GarmentsWO)
        {
            string SqlStr = "select distinct Color  from dbo.QC_Master_Final as a where  Line='{0}' and wo='{1}'";
            SqlStr = string.Format(SqlStr, GarmentsLine, GarmentsWO);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //獲取Style，根據Color --Add 20180706 shulin
        public DataTable GetGarmentscbClolor1(string GarmentsClolor)
        {
            string SqlStr = "select  *,left(AuditType,3)as StyleType from dbo.QC_Master_Final as a,[PH.RWO1]..WorkOrder as b,[as400db]..APP10 as c where  c.PCOL10 = a.Color and a.QC_time in (select max(b.QC_time) from dbo.QC_Master_Final b where b.WO=a.WO and b.Color=a.Color and b.Line=a.Line) and a.WO = b.WorkOrderNo and Color='{0}'";
            SqlStr = string.Format(SqlStr, GarmentsClolor);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //獲取WO,根據Project Style --Add 20180706 shulin
        public DataTable GetGarmentscbWO2(string GarmentsProbject, string GarmentsStyle)
        {
            string SqlStr = "select distinct wo from dbo.QC_Master_Final where   Project='{0}' and Style='{1}'";
            SqlStr = string.Format(SqlStr, GarmentsProbject, GarmentsStyle);
            return this.ExecuteDataTable(SqlStr, "");
        }
        //獲取Wo,根據Style--Add 20180706 shulin
        public DataTable GetGarmentscbWO3(string GarmentsStyle)
        {
            string SqlStr = "select distinct wo from dbo.QC_Master_Final where Style='{0}'";
            SqlStr = string.Format(SqlStr, GarmentsStyle);
            return this.ExecuteDataTable(SqlStr, "");
        }
        #endregion

        public DataTable GetFactoryType()
        {
            string SqlStr = "select Name from [PH.LWPM.WP]..BaseCode where type = 'factory' and ExtraField1 = '1' and Name !='GG' ";
            //SqlStr = string.Format(SqlStr, GarmentsStyle);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /// <summary>
        /// 得到疵次圖片報表的數據源，因平板上傳的圖片太大，需要將圖片進行壓縮 2017-12-29由David加入
        /// </summary>
        /// <param name="AReportType">報表類型：0: AQL報表 1:FullAudit報表</param>
        /// <param name="ABeginDate">審定開始日期</param>
        /// <param name="AEndDate">審定截止日期</param>
        /// <param name="ACustomer">客戶</param>
        /// <param name="AStyle">款號</param>
        /// <param name="AFacotry">工廠</param>
        /// <param name="AWorkShop">車間</param>
        /// <returns></returns>
        public List<sp_GetDefectPictureReportResult> GetDefectPictureReport(int AReportType, DateTime ABeginDate, DateTime AEndDate, string ACustomer, string AStyle, string AFacotry, string AWorkShop)
        {
            ISingleResult<sp_GetDefectPictureReportResult> lists = this.sp_GetDefectPictureReport(AReportType, ABeginDate, AEndDate, ACustomer, AStyle, AFacotry, AWorkShop);
            List<sp_GetDefectPictureReportResult> ProcessLists = new List<sp_GetDefectPictureReportResult>();

            IEnumerator<sp_GetDefectPictureReportResult> enumerator = lists.GetEnumerator();
            while (enumerator.MoveNext())
            {
                string SourcePath = @"\\10.2.1.53\MobileQCPics\";
                string DestPath = @"\\10.2.1.53\MobileQCPics_Small\";
                string FileName = enumerator.Current.ImgUrl;

                if (!File.Exists(DestPath + FileName))
                {
                    //壓縮圖片后，將源上傳的文件copy到另外一個目錄MobileQCPics_Small中，供報表顯示使用
                    Image img_Big = Image.FromFile(SourcePath + FileName);
                    Image img_Samll = PictureHelper.ResizeImage(img_Big, new Size(54 * 15, 45 * 15));
                    img_Samll.Save(DestPath + FileName);
                }

                ProcessLists.Add(new sp_GetDefectPictureReportResult
                {
                    ImgUrl = DestPath + FileName,
                    Factory = enumerator.Current.Factory,
                    WorkShop = enumerator.Current.WorkShop,
                    Line = enumerator.Current.Line,
                    Project = enumerator.Current.Project,
                    WO = enumerator.Current.WO,
                    Style = enumerator.Current.Style,
                    Color = enumerator.Current.Color,
                    QC_Time = enumerator.Current.QC_Time,
                    AuditType = enumerator.Current.AuditType,
                    DefectChineseName = enumerator.Current.DefectChineseName

                });
            }

            return ProcessLists;
        }


        public int GetLCLExFtyShipCompleted(string workorderNo)
        {

            string SqlStr = "select count(*) from phdb..tbl_carte_sopc1 where workorderno ='{0}'";
            SqlStr = string.Format(SqlStr, workorderNo);
            //return db.ExecuteDataSet(SqlStr)
            return this.ExecuteQuery<int>(SqlStr).FirstOrDefault();
        }



        public static DataSet WeeklySource(DateTime starDate, DateTime EndDate, string Factory)
        {

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string Sqlstr = "exec sp_QIQADefectPointsComparison '{0}', '{1}','{2}'";
            Sqlstr = string.Format(Sqlstr, starDate.ToString("yyyy-MM-dd"), EndDate.ToString("yyyy-MM-dd"), Factory);
            DataSet ds = db.ExecuteDataSet(Sqlstr, new DataSet(), "111");
            return ds;
        }

        public static DataSet WeeklySourceNew(DateTime starDate, DateTime EndDate, string Factory)
        {

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string Sqlstr = "exec sp_QIQADefectPointsComparison_New '{0}', '{1}','{2}'";
            Sqlstr = string.Format(Sqlstr, starDate.ToString("yyyy-MM-dd"), EndDate.ToString("yyyy-MM-dd"), Factory);
            DataSet ds = db.ExecuteDataSet(Sqlstr, new DataSet(), "111");
            return ds;
        }


        public List<WeeklyDefectPointsComparison> DetailSource(DataSet ds)
        {
            List<WeeklyDefectPointsComparison> FormList = ds.Tables[0].AsEnumerable().Select(dr =>
                new WeeklyDefectPointsComparison()
                {
                    Factory = dr["Factory"].ToString(),
                    WorkShop = dr["WorkShop"].ToString(),
                    Style = dr["Style"].ToString(),
                    Line = dr["Line"].ToString(),
                    Project = dr["Project"].ToString(),
                    Color = dr["Color"].ToString(),
                    RWO = dr["QN"].ToString(),
                    QC_time = dr["QC_time"].ToString(),

                    InspectionQty = int.Parse(dr["InspectionQty"].ToString()),
                    InspectionDefectPoint = dr["InspectionDefectPoint"].ToString(),
                    InspectionCodeNub = int.Parse(dr["InspectionCodeNub"].ToString()),
                    InspectionDefects_MajOrMinNub = int.Parse(dr["InspectionDefects_MajOrMinNub"].ToString()),//新加字段


                    AuditQty = int.Parse(dr["AuditQty"].ToString()),
                    AuditDefectPoint = dr["AuditDefectPoint"].ToString(),
                    AuditCodeNub = int.Parse(dr["AuditCodeNub"].ToString()),
                    AuditCode_Per = dr["AuditCode_Per"].ToString(),
                    AuditDefect_Maj = int.Parse(dr["AuditDefect_Maj"].ToString()),//新加字段
                    AuditDefect_Min = int.Parse(dr["AuditDefect_Min"].ToString()),//新加字段

                    AuditDefectPoint_New = dr["AuditDefectPoint_New"].ToString(),
                    AuditCode_New_Nub = int.Parse(dr["AuditCode_New_Nub"].ToString()),
                    AuditCode_New_Per = dr["AuditCode_New_Per"].ToString(),
                    AuditDefect_New_Maj = int.Parse(dr["AuditDefect_New_Maj"].ToString()),//新加字段
                    AuditDefect_New_Min = int.Parse(dr["AuditDefect_New_Min"].ToString()), //新加字段
                    AuditDefect_New_MajPer = dr["AuditDefect_New_MajPer"].ToString(), //新加字段
                    AuditDefect_New_MinPer = dr["AuditDefect_New_MinPer"].ToString(), //新加字段

                    InlineInspector = dr["InlineInspector"].ToString(),
                    EndlineInspector = dr["EndlineInspector"].ToString(),
                    MobileAuditor_A = dr["MobileAuditor_A"].ToString(),
                    QualAuditor_A = dr["QualAuditor_A"].ToString(),
                    LineLeader_A = dr["LineLeader_A"].ToString(),
                    Supervisor_A = dr["Supervisor_A"].ToString()

                }).ToList();

            return FormList;

        }


        public static List<FirstPassDetail> FirstDetail(DataSet ds2)
        {
            List<FirstPassDetail> DetailTable = ds2.Tables[0].AsEnumerable().Select(dr =>
              new FirstPassDetail()
              {
                  MasterID = dr["MasterID"].ToString(),
                  Date = dr["Date"].ToString(),
                  Workshop = dr["Workshop"].ToString(),
                  Line = dr["Line"].ToString(),
                  CustStyle = dr["CustStyle"].ToString(),
                  Customer = dr["Customer"].ToString(),

                  Worker = dr["Worker"].ToString(),
                  WorkerSum = dr["WorkerSum"].ToString(),

                  Class = dr["Class"].ToString(),
                  QN = dr["QN"].ToString(),
                  Color = dr["Color"].ToString(),
                  AcceptLimit = Convert.ToInt32(dr["AcceptLimit"].ToString()),
                  QNQty = Convert.ToInt32(dr["QNQty"].ToString()),
                  Lt = dr["Lt"].ToString(),
                  SizeQty = Convert.ToInt32(dr["SizeQty"].ToString()),
                  SampleQty = Convert.ToInt32(dr["SampleQty"].ToString()),
                  Time = dr["Time"].ToString(),
                  PF = dr["P/F"].ToString(),
                  ReportNr = Convert.ToInt32(dr["ReportNr"].ToString()),

                  PODCode = dr["PODCode"].ToString(),

                  PODName_EN = dr["PODName_EN"].ToString(),
                  PODName_CN = dr["PODName_CN"].ToString(),
                  PODName_BD = dr["PODName_BD"].ToString(),
                  // PODName = LanguageChose.EditValue.ToString()=="CN"? dr["PODName_CN"].ToString():dr["PODName_EN"].ToString(),

                  SinglePODQty = Convert.ToInt32(dr["SinglePODQty"].ToString()),
                  PODCodeCount = Convert.ToInt32(dr["PODCodeCount"].ToString()),

                  DefectCode = dr["DefectCode"].ToString(),
                  DefectName_EN = dr["DefectName_EN"].ToString(),
                  DefectName_CN = dr["DefectName_CN"].ToString(),
                  DefectName_BD = dr["DefectName_BD"].ToString(),
                  //DefectName =  LanguageChose.EditValue.ToString()=="CN"? dr["DefectName_CN"].ToString():dr["DefectName_EN"].ToString(),

                  SingleDefectQty = Convert.ToInt32(dr["SingleDefectQty"].ToString()),
                  DefectCodeCount = Convert.ToInt32(dr["DefectCodeCount"].ToString()),

                  MajorAQL = dr["MajorAQL#"].ToString(),
                  MajorLevel = dr["MajorLevel"].ToString(),
                  MajorSinglePiece = Convert.ToInt32(dr["MajorSinglePiece"].ToString()),
                  MajorCountNr = Convert.ToInt32(dr["MajorCountNr"].ToString()),
                  MajorNonCountNr = Convert.ToInt32(dr["MajorNonCountNr"].ToString()),
                  MajorTotal = Convert.ToInt32(dr["MajorTotal"].ToString()),


                  MinorAQL = dr["MinorAQL#"].ToString(),
                  MinorLevel = dr["MinorLevel"].ToString(),
                  MinorSinglePiece = Convert.ToInt32(dr["MinorSinglePiece"].ToString()),
                  MinorCountNr = Convert.ToInt32(dr["MinorCountNr"].ToString()),
                  MinorNonCountNr = Convert.ToInt32(dr["MinorNonCountNr"].ToString()),
                  MinorTotal = Convert.ToInt32(dr["MinorTotal"].ToString()),

                  ImgUrl = dr["ImgUrl"].ToString()


                  //DefectCodeCount = Convert.ToInt32(dr["DefectCodeCount"].ToString()),
                  //DefectPieceQty = Convert.ToInt32(dr["DefectPieceQty"].ToString()),
                  //QCCount = dr["QCCount"].ToString(),
                  //Style = dr["Style"].ToString(),
                  //Color = dr["Color"].ToString(),
                  //Class = dr["Class"].ToString(),
                  //ProductQty = dr["ProductQty"].ToString()

              }).ToList();

            return DetailTable;
        }



        public static List<FirstPassWorker> FirstDetailWorker(DataSet ds2)
        {
            List<FirstPassWorker> DetailTable = ds2.Tables[1].AsEnumerable().Select(dr =>
              new FirstPassWorker()
              {
                  MasterID = dr["MasterID"].ToString(),
                  //Date = dr["Date"].ToString(),
                  Workshop = dr["Workshop"].ToString(),
                  Line = dr["Line"].ToString(),
                  //CustStyle = dr["CustStyle"].ToString(),

                  //Worker = dr["Worker"].ToString(),
                  WorkerSum = dr["WorkerSum"].ToString(),

                  //Class = dr["Class"].ToString(),
                  QN = dr["QN"].ToString(),
                  //Color = dr["Color"].ToString(),
                  //AcceptLimit = Convert.ToInt32(dr["AcceptLimit"].ToString()),
                  //QNQty = Convert.ToInt32(dr["QNQty"].ToString()),
                  Lt = dr["Lt"].ToString(),
                  //SizeQty = Convert.ToInt32(dr["SizeQty"].ToString()),
                  SampleQty = Convert.ToInt32(dr["SampleQty"].ToString()),
                  Time = dr["Time"].ToString(),
                  PF = dr["P/F"].ToString(),
                  //ReportNr = Convert.ToInt32(dr["ReportNr"].ToString()),

                  //PODCode = dr["PODCode"].ToString(),

                  ////PODName_EN = dr["PODName_EN"].ToString(),
                  ////PODName_CN = dr["PODName_CN"].ToString(),
                  //// PODName = LanguageChose.EditValue.ToString()=="CN"? dr["PODName_CN"].ToString():dr["PODName_EN"].ToString(),

                  //SinglePODQty = Convert.ToInt32(dr["SinglePODQty"].ToString()),
                  //PODCodeCount = Convert.ToInt32(dr["PODCodeCount"].ToString()),

                  DefectCode = dr["DefectCode"].ToString(),
                  DefectName_EN = dr["DefectName_EN"].ToString(),
                  DefectName_CN = dr["DefectName_CN"].ToString(),


                  Worker1 = dr["Worker"].ToString(),
                  WorkerName = dr["WorkerName"].ToString(),
                  WorkerNameEn = dr["WorkerNameEn"].ToString(),
                  WorkerNameBd = dr["WorkerNameBd"].ToString(),

                  W_procedure = dr["W_procedure"].ToString(),
                  W_procedureName = dr["W_procedureName"].ToString(),
                  W_procedureNameEn = dr["W_procedureNameEn"].ToString(),
                  W_procedureNameBd = dr["W_procedureNameBd"].ToString()
                  //DefectName =  LanguageChose.EditValue.ToString()=="CN"? dr["DefectName_CN"].ToString():dr["DefectName_EN"].ToString(),

                  //SingleDefectQty = Convert.ToInt32(dr["SingleDefectQty"].ToString()),
                  //DefectCodeCount = Convert.ToInt32(dr["DefectCodeCount"].ToString()),

                  //MajorAQL = dr["MajorAQL#"].ToString(),
                  //MajorLevel = dr["MajorLevel"].ToString(),
                  //MajorSinglePiece = Convert.ToInt32(dr["MajorSinglePiece"].ToString()),
                  //MajorCountNr = Convert.ToInt32(dr["MajorCountNr"].ToString()),
                  //MajorNonCountNr = Convert.ToInt32(dr["MajorNonCountNr"].ToString()),
                  //MajorTotal = Convert.ToInt32(dr["MajorTotal"].ToString()),


                  //MinorAQL = dr["MinorAQL#"].ToString(),
                  //MinorLevel = dr["MinorLevel"].ToString(),
                  //MinorSinglePiece = Convert.ToInt32(dr["MinorSinglePiece"].ToString()),
                  //MinorCountNr = Convert.ToInt32(dr["MinorCountNr"].ToString()),
                  //MinorNonCountNr = Convert.ToInt32(dr["MinorNonCountNr"].ToString()),
                  //MinorTotal = Convert.ToInt32(dr["MinorTotal"].ToString())


                  //DefectCodeCount = Convert.ToInt32(dr["DefectCodeCount"].ToString()),
                  //DefectPieceQty = Convert.ToInt32(dr["DefectPieceQty"].ToString()),
                  //QCCount = dr["QCCount"].ToString(),
                  //Style = dr["Style"].ToString(),
                  //Color = dr["Color"].ToString(),
                  //Class = dr["Class"].ToString(),
                  //ProductQty = dr["ProductQty"].ToString()

              }).ToList();

            return DetailTable;
        }

    }

    public class NoPassDetail : BaseEntity
    {
        #region
        public string Line { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string RWO { get; set; }
        public string Style { get; set; }
        public string W_Procedure { get; set; }
        public string Worker { get; set; }
        public DateTime QC_Time { get; set; }
        public string QCMan { get; set; }
        public string QNNO { get; set; }
        public string BoxNO { get; set; }
        public string BindNo { get; set; }
        public string MachinePlace { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public string WOc { get; set; }
        public string OTN { get; set; }
        public string QC_Light { get; set; }
        public int LightCount { get; set; }
        public string Defect_Code { get; set; }
        public string Problem { get; set; }
        public string Action_Taken { get; set; }
        public string SolutionCode { get; set; }
        public string ONOffLine { get; set; }
        public string Cause { get; set; }
        #endregion
    }

    public class machines
    {
        #region

        private string _machineid;
        private string _machinena;
        public string Id
        {
            get
            {
                return _machineid;
            }
            set
            {
                _machineid = value;
            }
        }
        public string Name
        {
            get
            {
                return _machinena;
            }
            set
            {
                _machinena = value;
            }
        }
        #endregion
    }





    public class lines
    {
        #region

        private string _line;
        public string PLINE
        {
            get
            {
                return _line;
            }
            set
            {
                _line = value;
            }
        }

        //add by joseph
        private string _factory;
        public string FACTORY
        {
            get
            {
                return _factory;
            }
            set
            {
                _factory = value;
            }
        }

        private string _shop;
        public string TSHOP
        {
            get
            {
                return _shop;
            }
            set
            {
                _shop = value;
            }
        }
        #endregion
    }

    public class workers
    {
        #region
        private string _workerid;
        private string _workername;

        public string Id
        {
            get
            {
                return _workerid;
            }
            set
            {
                _workerid = value;
            }
        }

        public string NameCn
        {
            get
            {
                return _workername;
            }
            set
            {
                _workername = value;
            }
        }
        #endregion
    }





    public class operation
    {
        #region
        private int _gxh;
        private string _gxdh;
        private string _gxm;
        private string _egxm;
        private string _tgxm;
        private string _yzjb;
        private string _zkcc;
        private string _mx;
        public int GXH
        {
            get
            {
                return _gxh;
            }
            set
            {
                _gxh = value;
            }
        }
        public string GXDH
        {
            get
            {
                return _gxdh;
            }
            set
            {
                _gxdh = value;
            }
        }
        public string GXM
        {
            get
            {
                return _gxm;
            }
            set
            {
                _gxm = value;
            }
        }
        public string EGXM
        {
            get
            {
                return _egxm;
            }
            set
            {
                _egxm = value;
            }
        }
        public string TGXM
        {
            get
            {
                return _tgxm;
            }
            set
            {
                _tgxm = value;
            }
        }
        public string Yzjb
        {
            get
            {
                return _yzjb;
            }
            set
            {
                _yzjb = value;
            }
        }
        public string Zkcc
        {
            get
            {
                return _zkcc;
            }
            set
            {
                _zkcc = value;
            }
        }
        public string Mx
        {
            get
            {
                return _mx;
            }
            set
            {
                _mx = value;
            }
        }

        #endregion
    }

    public class mobileqc
    {

        private string fccs;
        private string j_no;
        private string j2_job;
        private string cwo;
        private string wo;
        private string rwo;
        private string acol;
        private string style;
        private int seq;
        private DateTime? strdt;
        private string flag;


        public string J_NO
        {

            get
            {
                return j_no;
            }
            set
            {
                j_no = value;
            }
        }

        public string J2_JOB
        {

            get
            {
                return j2_job;
            }
            set
            {
                j2_job = value;
            }
        }

        public string FCCS
        {
            get
            {
                return fccs;
            }
            set
            {
                fccs = value;
            }
        }

        public string WO
        {
            get
            {
                return wo;
            }
            set
            {
                wo = value;
            }
        }

        public string CWO
        {
            get
            {
                return cwo;
            }
            set
            {
                cwo = value;
            }
        }
        public string RWO
        {
            get
            {
                return rwo;
            }
            set
            {
                rwo = value;
            }
        }
        public string ACOL
        {
            get
            {
                return acol;
            }
            set
            {
                acol = value;
            }
        }
        public int Seq
        {
            get
            {
                return seq;
            }
            set
            {
                seq = value;
            }
        }

        public string CSTYLE
        {
            get
            {
                return style;
            }
            set
            {
                style = value;
            }
        }

        public DateTime? STRDT
        {
            get
            {
                return strdt;
            }
            set
            {
                strdt = value;
            }
        }
        public string FLAG
        {
            get
            {
                return flag;
            }
            set
            {
                flag = value;
            }
        }
    }


    partial class QC_Detail : PH.Platform.BO.BaseEntity
    {
    }

    //Xsj20141226:add 
    partial class QC_Detail_Detail : PH.Platform.BO.BaseEntity
    {
    }

    public class QC_MasterQueryEntity
    {
        public string Factory
        { get; set; }
        public string WorkShop
        { get; set; }
        public string Style
        { get; set; }
        public string Project
        { get; set; }
        public string Line
        { get; set; }
        public string Customer
        { get; set; }

    }
    partial class QC_Master : PH.Platform.BO.BaseEntity
    {


        #region
        public override void InitEntity()
        {
            base.InitEntity();
            this.MasterID = System.Guid.NewGuid();
            this._QCCount = 5;
            this._QC_time = DateTime.Now;
            // this.Factory = PH.Platform.Common.SysParamHelper.Instance.Location;

        }

        partial void OnLineChanged()
        {
            if (!string.IsNullOrEmpty(this.Line))
            {
                this.WorkShop = SqlDataHelper.GetWorkShop(this.Line);
            }

            if (string.IsNullOrEmpty(this.Factory))
            {
                this.Factory = PH.Platform.Common.SysParamHelper.Instance.Location;

            }
        }


        public int PCount
        {
            get
            {
                //return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == 'P').Sum(z => z.LightCount ?? 0);
                //return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == 'P').Count();
                return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == "P").Select(p => p.LightCount ?? 0).Sum();

            }
        }

        public int FCount
        {
            get
            {
                // return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == 'F').Sum(z => z.LightCount ?? 0);
                return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == "F").Count();
            }
        }

        public int UCount
        {
            get
            {
                //return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == 'U').Sum(z => z.LightCount ?? 0);
                return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == "U").Count();
            }
        }



        public int SCount
        {
            get
            {
                // return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == 'S').Sum(z => z.LightCount ?? 0);
                return this.QC_Details.Where<QC_Detail>(w => w.QC_Light == "S").Count();
            }
        }



        public string QC_Time_Disp
        {
            get
            {
                return this.QC_time.GetValueOrDefault() == null ? "" : this.QC_time.GetValueOrDefault().ToShortDateString().Substring(5) + " "
                    + this.QC_time.GetValueOrDefault().ToShortTimeString();
            }
        }


        public char Active
        {
            get
            {

                int _count = 0;


                WorkForce wfs;
                if (this != null)
                {

                    if (!this.WorkShop.Contains("PPW"))
                        wfs = RapDataHelper.RapCtx.WorkForces.Where(p => p.Id == this.Worker && p.Factory == this.Factory).FirstOrDefault();
                    //  wfs = RapDataHelper.RapCtx.WorkForces.Where(p => p.Id == this.Worker).FirstOrDefault();
                    else
                        wfs = RapDataHelper.RapCtx.WorkForces.Where(p => p.Id == this.Worker && p.Factory == "SL (Sales)").FirstOrDefault();



                    if (wfs == null)
                        _count = 0;
                    else if (!wfs.MTM.GetValueOrDefault() && !wfs.InActive.GetValueOrDefault())
                        _count = 1;
                    else
                    {
                        if (wfs.REDate.HasValue && wfs.REDate > this.QC_time)
                            _count = 1;
                    }

                }

                return _count > 0 ? 'Y' : 'N';
            }
        }

        public char ReAudit
        {
            get
            {

                char _reaudit = 'N';
                foreach (QC_Detail qd in this.QC_Details)
                {
                    if (!string.IsNullOrEmpty(qd.IsReAudit) && qd.IsReAudit == "Y")
                        _reaudit = 'Y';
                }
                return _reaudit;
            }
        }


        public string ReAudit_Disp
        {
            get
            {

                string _reaudit = "N";
                if (this != null && this.QC_time.HasValue)
                {
                    foreach (QC_Detail qd in this.QC_Details)
                    {
                        if (string.IsNullOrEmpty(qd.IsReAudit) && string.IsNullOrEmpty(qd.ReAuditID))
                            _reaudit = "N";

                        //if (!string.IsNullOrEmpty(qd.ReAuditID) && qd.QC_Light.ToString() != "P")
                        if (!string.IsNullOrEmpty(qd.ReAuditID))
                        {
                            QC_Master qm = MobileHelper.MobileCtx.QC_Masters.Where(t => t.MasterID.ToString() == qd.ReAuditID).FirstOrDefault();
                            if (qm != null && qm.QC_time.HasValue)
                            {
                                DateTime _d1 = DateTime.Parse(qm.QC_time.GetValueOrDefault().ToString("yyyy-MM-dd"));
                                DateTime _d2 = DateTime.Parse(this.QC_time.GetValueOrDefault().ToString("yyyy-MM-dd"));
                                if (_d1 < _d2)
                                    _reaudit = "Yb4";
                                else if (_d1 == _d2)
                                    _reaudit = "Ytdy";
                            }
                        }
                    }
                }

                return _reaudit;
            }
        }

        public char FAE
        {
            get
            {

                string _faestr = MobileHelper.MobileCtx.FN_GetFAE(this.Style, this.W_procedure);
                if (!string.IsNullOrEmpty(_faestr) && _faestr.Length > 0)
                    return char.Parse(_faestr.Substring(0, 1));
                else
                    return 'X';
            }
        }


        //public string DefectCode { get; set; }
        //public string DefectName { get; set; }
        //public string DefectLoc { get; set; }


        #endregion
    }


    public class QC_Master_Extend : QC_Master
    {
        //[Column(Storage = "_BCC", DbType = "VarChar(2000)")]
        //public string DefectCode { get; set; }
        //public string DefectName { get; set; }
        //public string DefectLoc { get; set; }
    }


    //partial class PHQCDefect : PH.Platform.BO.BaseEntity
    //{
    //}

    partial class QC_Defect : PH.Platform.BO.BaseEntity
    {
        #region
        public string Defect_Type_Zh
        {
            get
            {
                string temp = "";
                switch (this._Defect_Type)
                {
                    //case 1:               此块的数据已经转到從Fabric System.PHQCDefect表中。
                    //    temp = "瑕疵";
                    //    break;

                    case 2:
                        temp = "瑕疵部位";
                        break;

                    case 3:
                        temp = "瑕疵處理";
                        break;

                    case 4:
                        temp = "瑕疵預防";
                        break;

                    case 5:
                        temp = "QC結果";
                        break;

                    case 6:
                        temp = "Cause";
                        break;

                    default:
                        temp = "空";
                        break;
                }
                return temp;

            }
        }

        #endregion
    }

    public partial class QC_AlertMessage : BaseEntity
    {

        /// <summary>
        /// Email Titel = Line + Style + Operation Name + Defect Name
        /// </summary>
        public string EmailTitle
        {
            get
            {
                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

                //var lc = from b in context.QC_AlertMessages
                //         where b.Project == this.Project && b.Style == this.Style && b.OPNCode == this.OPNCode                        
                //         select b;


                string str = "select sum(b.lightcount) from qc_master as a,qc_detail as b where a.masterid=b.masterid and a.style='{0}' and a.project='{1}' and a.w_procedure='{2}' and b.qc_light<>'p'";
                str = string.Format(str, this.Style, this.Project, this.OPNCode);
                SqlConnection con = new SqlConnection(context.Connection.ConnectionString);
                SqlCommand sqlstr = new SqlCommand(str, con);
                con.Open();
                System.Data.SqlClient.SqlDataReader dr = sqlstr.ExecuteReader();


                //this.rcount = lc.Count();
                //return this.Linde + " " + this.Style + " " + this.OPNName + " " + this.Defect + Convert.ToString(this.rcount);

                dr.Read();

                return this.Line + " " + this.Style + " " + this.OPNName + " " + this.Defect + dr[0].ToString();
                con.Close();

            }
        }

        private int rcount;
        /// <summary>
        /// 专门供Email使用的计算字段，其格式如下：
        ///  2010-09-20 10:20:00  Defect Name: Sharp Point 2pc(s)、Broken Weld  1pc
        ///  2010-09-21 15:20:00  Defect Name: Broken Weld  1pc   
        /// </summary>
        public string EmailDefectInfo
        {
            get
            {
                string Str = "";
                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                var lists = from a in context.QC_AlertMessages
                            //where a.Line == this.Line && a.Project == a.Project && a.Style == this.Style && a.OPNCode == this.OPNCode
                            where a.Line == this.Line && a.Project == this.Project && a.Style == this.Style && a.OPNCode == this.OPNCode
                            orderby a.SendTime descending
                            select a;


                //var lists = from a in context.QC_master
                //            join b in context.QC_Details
                //            on a.masterid equals b.masterid
                //            //where a.Line == this.Line && a.Project == a.Project && a.Style == this.Style && a.OPNCode == this.OPNCode
                //            where a.Line == this.Line && a.Project == this.Project && a.Style == this.Style && a.w_procedure == this.OPNCode && b.lightcount!="p"
                //            orderby a.SendTime descending
                //            select a;

                //this._EmailRemindCount = lists.Count();

                //var listcount = from b in context.QC_AlertMessages
                //                where b.Project == this.Project && b.Style == this.Style && b.OPNCode == this.OPNCode
                //                select b;
                //              this.rcount=listcount.Count();


                IQueryable ShowLists = lists.Take<QC_AlertMessage>(3);
                //  FabricInspectionDataContext fdc = ContextBuilder.CreateContext<FabricInspectionDataContext>();

                foreach (QC_AlertMessage obj in ShowLists)
                {

                    Str += obj.SendTime.ToString("yyyy-MM-dd HH:mm:ss") + "  Color:" + obj.Color + " Defect Name: " + obj.Defect + "  \n" + "     ";
                }

                return Str;
            }
        }

        private int _EmailRemindCount;
        /// <summary>
        /// 专门供Email使用的计算字段(同一款同一工序出现质量问题的提醒次数)
        /// </summary>
        public int EmailRemindCount
        {
            get
            {

                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

                var lists = from a in context.QC_AlertMessages
                            where a.Line == this.Line && a.Project == this.Project && a.Style == this.Style && a.OPNCode == this.OPNCode
                            orderby a.SendTime descending
                            select a;

                this._EmailRemindCount = lists.Count() == 0 ? 1 : lists.Count();
                return this._EmailRemindCount;
            }
        }


    }

    public partial class QC_AlertEmail : BaseEntity
    {
    }
    public partial class QC_AlertSwitch : BaseEntity
    {
    }

    public partial class TraceInfo : BaseEntity
    {

        public string Level_Disp
        {
            get
            {

                string _level = "";
                Misc_DataDictionary mdc = MiscHelper.MiscCtx.Misc_DataDictionaries.Where(p => p.DataType == "PH.MobileQC.TraceLevel" && p.DataCode == this.LevelCode).FirstOrDefault();
                if (mdc != null)
                    _level = mdc.Description;

                return _level;

            }
        }

        public string Exec_Disp
        {
            get
            {

                string _exec = "";
                Misc_DataDictionary mdc = MiscHelper.MiscCtx.Misc_DataDictionaries.Where(p => p.DataType == "PH.MobileQC.Executer" && p.DataCode == this.Executer).FirstOrDefault();
                if (mdc != null)
                    _exec = mdc.Description;

                return _exec;

            }
        }
    }


    [Table(Name = "")]
    public partial class WorkforceSewingSkillResult : PH.Platform.BO.BaseEntity
    {
        #region
        private string _W_Procedure;
        private string _GXM;
        private string _Defect_Code;
        private int? _LightCount;
        private int? _QCCount;
        private int? _PassCount;
        private int? _NoPassCount;
        private float? _FPY;

        public WorkforceSewingSkillResult()
        {

        }

        [Column(Storage = "_W_Procedure", DbType = "VarChar(8)")]
        public string W_Procedure
        {
            get
            {
                return this._W_Procedure;
            }
            set
            {
                if ((this._W_Procedure != value))
                {
                    this._W_Procedure = value;
                }
            }
        }

        [Column(Storage = "_GXM", DbType = "VarChar(500)")]
        public string GXM
        {
            get
            {
                return this._GXM;
            }
            set
            {
                if ((this._GXM != value))
                {
                    this._GXM = value;
                }
            }
        }

        [Column(Storage = "_Defect_Code", DbType = "VarChar(10)")]
        public string Defect_Code
        {
            get
            {
                return this._Defect_Code;
            }
            set
            {
                if ((this._Defect_Code != value))
                {
                    this._Defect_Code = value;
                }
            }
        }

        [Column(Storage = "_LightCount", DbType = "Int")]
        public System.Nullable<int> LightCount
        {
            get
            {
                return this._LightCount;
            }
            set
            {
                if ((this._LightCount != value))
                {
                    this._LightCount = value;
                }
            }
        }

        [Column(Storage = "_QCCount", DbType = "Int")]
        public System.Nullable<int> QCCount
        {
            get
            {
                return this._QCCount;
            }
            set
            {
                if ((this._QCCount != value))
                {
                    this._QCCount = value;
                }
            }
        }

        [Column(Storage = "_PassCount", DbType = "Int")]
        public System.Nullable<int> PassCount
        {
            get
            {
                return this._PassCount;
            }
            set
            {
                if ((this._PassCount != value))
                {
                    this._PassCount = value;
                }
            }
        }

        [Column(Storage = "_NoPassCount", DbType = "Int")]
        public System.Nullable<int> NoPassCount
        {
            get
            {
                return this._NoPassCount;
            }
            set
            {
                if ((this._NoPassCount != value))
                {
                    this._NoPassCount = value;
                }
            }
        }

        [Column(Storage = "_FPY", DbType = "Float")]
        public float? FPY
        {
            get
            {
                return this._FPY;
            }
            set
            {
                if ((this._FPY != value))
                {
                    this._FPY = value;
                }
            }
        }


        #endregion
    }

    [Table(Name = "")]
    public partial class StyleLineQCStatByWorkshopResult
    {

        private string _Line;

        private string _Style;

        private string _GXDH;

        private string _WorkerID;

        private System.Nullable<System.DateTime> _LastQC_Time;
        private string _LastQC_Time_Disp;

        private string _FAE;
        private string _GXH;


        private int _StatusTag;

        private string _Status;

        private string _GXM;

        private string _WorkerName;



        [Column(Storage = "_Line", DbType = "VarChar(8)")]
        public string Line
        {
            get
            {
                return this._Line;
            }
            set
            {
                if ((this._Line != value))
                {
                    this._Line = value;
                }
            }
        }

        [Column(Storage = "_Style", DbType = "VarChar(20)")]
        public string Style
        {
            get
            {
                return this._Style;
            }
            set
            {
                if ((this._Style != value))
                {
                    this._Style = value;
                }
            }
        }

        [Column(Storage = "_GXDH", DbType = "VarChar(8)")]
        public string GXDH
        {
            get
            {
                return this._GXDH;
            }
            set
            {
                if ((this._GXDH != value))
                {
                    this._GXDH = value;
                }
            }
        }



        [Column(Storage = "_FAE", DbType = "VarChar(3)")]
        public string FAE
        {
            get
            {
                return this._FAE;
            }
            set
            {
                if ((this._FAE != value))
                {
                    this._FAE = value;
                }
            }
        }

        [Column(Storage = "_GXH", DbType = "VarChar(5)")]
        public string GXH
        {
            get
            {
                return this._GXH;
            }
            set
            {
                if ((this._GXH != value))
                {
                    this._GXH = value;
                }
            }
        }


        [Column(Storage = "_WorkerID", DbType = "VarChar(12)")]
        public string WorkerID
        {
            get
            {
                return this._WorkerID;
            }
            set
            {
                if ((this._WorkerID != value))
                {
                    this._WorkerID = value;
                }
            }
        }

        [Column(Storage = "_LastQC_Time", DbType = "DateTime")]
        public System.Nullable<System.DateTime> LastQC_Time
        {
            get
            {
                return this._LastQC_Time;
            }
            set
            {
                if ((this._LastQC_Time != value))
                {
                    this._LastQC_Time = value;
                }
            }
        }

        [Column(Storage = "_LastQC_Time_Disp", DbType = "Varchar(20)")]
        public string LastQC_Time_Disp
        {
            get
            {
                return this._LastQC_Time_Disp;
            }
            set
            {
                if ((this._LastQC_Time_Disp != value))
                {
                    this._LastQC_Time_Disp = value;
                }
            }
        }

        [Column(Storage = "_StatusTag", DbType = "Int NOT NULL")]
        public int StatusTag
        {
            get
            {
                return this._StatusTag;
            }
            set
            {
                if ((this._StatusTag != value))
                {
                    this._StatusTag = value;
                }
            }
        }

        [Column(Storage = "_Status", DbType = "VarChar(26) NOT NULL", CanBeNull = false)]
        public string Status
        {
            get
            {
                return this._Status;
            }
            set
            {
                if ((this._Status != value))
                {
                    this._Status = value;
                }
            }
        }

        [Column(Storage = "_GXM", DbType = "NVarChar(200)")]
        public string GXM
        {
            get
            {
                return this._GXM;
            }
            set
            {
                if ((this._GXM != value))
                {
                    this._GXM = value;
                }
            }
        }

        [Column(Storage = "_WorkerName", DbType = "NVarChar(200)")]
        public string WorkerName
        {
            get
            {
                return this._WorkerName;
            }
            set
            {
                if ((this._WorkerName != value))
                {
                    this._WorkerName = value;
                }
            }
        }
    }


    [Table(Name = "")]
    public partial class StyleLineQCStatResult : PH.Platform.BO.BaseEntity
    {
        #region

        private string _GXDH;
        private string _GXM;
        private int _StatusTag;
        private string _Status;
        private string _WorkerID;
        private string _WorkerName;
        private DateTime? _LastQC_Time;
        private string _LastQC_Time_Disp;
        private string _FAE;
        private string _GXH;

        public StyleLineQCStatResult()
        {

        }

        [Column(Storage = "_GXDH", DbType = "VarChar(20)")]
        public string GXDH
        {
            get
            {
                return this._GXDH;
            }
            set
            {
                if ((this._GXDH != value))
                {
                    this._GXDH = value;
                }
            }
        }



        [Column(Storage = "_GXH", DbType = "VarChar(5)")]
        public string GXH
        {
            get
            {
                return this._GXH;
            }
            set
            {
                if ((this._GXH != value))
                {
                    this._GXH = value;
                }
            }
        }


        [Column(Storage = "_FAE", DbType = "VarChar(5)")]
        public string FAE
        {
            get
            {
                return this._FAE;
            }
            set
            {
                if ((this._FAE != value))
                {
                    this._FAE = value;
                }
            }
        }




        [Column(Storage = "_GXM", DbType = "VarChar(500)")]
        public string GXM
        {
            get
            {
                return this._GXM;
            }
            set
            {
                if ((this._GXM != value))
                {
                    this._GXM = value;
                }
            }
        }

        [Column(Storage = "_Status", DbType = "VarChar(20)")]
        public string Status
        {
            get
            {
                return this._Status;
            }
            set
            {
                if ((this._Status != value))
                {
                    this._Status = value;
                }
            }
        }

        [Column(Storage = "_StatusTag", DbType = "Int")]
        public int StatusTag
        {
            get
            {
                return this._StatusTag;
            }
            set
            {
                if ((this._StatusTag != value))
                {
                    this._StatusTag = value;
                }
            }
        }

        [Column(Storage = "_WorkerID", DbType = "Varchar(200)")]
        public string WorkerID
        {
            get
            {
                return this._WorkerID;
            }
            set
            {
                if ((this._WorkerID != value))
                {
                    this._WorkerID = value;
                }
            }
        }

        [Column(Storage = "_WorkerName", DbType = "Varchar(2000)")]
        public string WorkerName
        {
            get
            {
                return this._WorkerName;
            }
            set
            {
                if ((this._WorkerName != value))
                {
                    this._WorkerName = value;
                }
            }
        }

        [Column(Storage = "_LastQC_Time", DbType = "DateTime")]
        public DateTime? LastQC_Time
        {
            get
            {
                return this._LastQC_Time;
            }
            set
            {
                if ((this._LastQC_Time != value))
                {
                    this._LastQC_Time = value;
                }
            }
        }

        [Column(Storage = "_LastQC_Time_Disp", DbType = "varchar(20)")]
        public String LastQC_Time_Disp
        {
            get
            {
                return this._LastQC_Time_Disp;
            }
            set
            {
                if ((this._LastQC_Time_Disp != value))
                {
                    this._LastQC_Time_Disp = value;
                }
            }
        }

        #endregion
    }



    [Table(Name = "")]
    public class SP_QC_MasterAnalyz : PH.Platform.BO.BaseEntity
    {
        public string WFID
        {
            get;
            set;
        }
        public string OptCode
        {
            get;
            set;
        }
        public int CheckQty
        {
            get;
            set;
        }


        // check seq of same qn;  add by joseph
        public int ChkSeq { get; set; }
        public string ReCheck { get; set; }

        public int SortId { get; set; }
        public int P
        {
            get;
            set;
        }
        public int F
        {
            get;
            set;
        }
        public int U
        {
            get;
            set;
        }
        public int S
        {
            get;
            set;
        }
        public int CP
        {
            get;
            set;
        }
        public int EV
        {
            get;
            set;
        }
        public int MA
        {
            get;
            set;
        }
        public int WS
        {
            get;
            set;
        }
        public int Other
        {
            get;
            set;
        }
        public string OPTName
        {
            get;
            set;
        }
        public string WFHame
        {
            get;
            set;
        }
        public double FPY
        {
            get;
            set;
        }
        public string Line
        {
            get;
            set;
        }
        public string Project
        {
            get;
            set;
        }
        public string CustStyle
        {
            get;
            set;
        }
    }

    #region new report result mapping class

    [Table(Name = "")]
    public class SubRptdata
    {
        public string Line { get; set; }
        public string QNNo { get; set; }

        public int QN_Qty { get; set; }
        public int OptCount { get; set; }
        public int WkCount { get; set; }
        public int WkTotal { get; set; } //總人數

        public int FpassCount { get; set; } //正檢通過
        public int RpassCount { get; set; } //重檢通過
        public int TpassCount { get; set; } //合共

        public int ChkQtyCount { get; set; } //審定數量
        public int CheckTimeCount { get; set; }
        public int ReCheckTimeCount { get; set; }
        public int P_Qty { get; set; }
        public int F_Qty { get; set; }
        public int U_Qty { get; set; }
        public int S_Qty { get; set; }
        public double FPY { get; set; }
        public int FirstPassQty { get; set; }
        public double Per_Line { get; set; }
        public int LineCount { get; set; }
        public int GxTotal { get; set; }
        public int PlanCount { get; set; } //計劃次數
        public int UnCheckCount { get; set; } //未檢次數
        public int ArrangeCount { get; set; } //安排次數
        public int KeyCount { get; set; } //關鍵工序數
        public int KeyTotal { get; set; } //關鍵工序數總合計
    }

    [Table(Name = "")]
    public class Proc_MasterAnalyzResult_Sub : PH.Platform.BO.BaseEntity
    {

        public int ProjectCount { get; set; }
        public int CustStyleCount { get; set; }       	
        public int QNQtyTtl { get; set; }  
        public int DefectCountTtl { get; set; }
        public string WorkShop{ get;  set;   }

        public int firstpasstimesByLine { get; set; }
        public int firsttimesByLine { get; set; }


        public string Line
        {
            get;
            set;
        }
        public decimal Line_Fpy
        {
            get;
            set;
        }
        public int OptCount
        {
            get;
            set;
        }

        public int QAFlagCount
        {
            get;
            set;
        }

        public int QIFlagCount
        {
            get;
            set;
        }

        public int WFIDCount
        {
            get;
            set;
        }
        
    }

    public class Proc_MasterAnalyzResult_Sub_ByWs_Class : PH.Platform.BO.BaseEntity
    {
       //																				
        public string WorkShop { get; set; }
        public int LineCount { get; set; }
        public int ProjectCount { get; set; }
        public int CustStyleCount { get; set; }
        public int DefectCountTtl { get; set; }
    
        public int AuditTotal { get; set; }
        public int OptCodeCount { get; set; }
        public int WFIDCount { get; set; }
        public int Ttlfirst { get; set; }
        public int TtlReCheck { get; set; }
        public int TtlCheck { get; set; }
        public int TtlFirsPass { get; set; }
        public int TtlReFirsPass { get; set; }
        public int YieldFailT { get; set; }
        public int TtlP_Qty { get; set; }
        public int TtlF_Qty { get; set; }
        public int TtlU_Qty { get; set; }
        public int TtlS_Qty { get; set; }
        public int QAFlagCount { get; set; }
        public int QIFlagCount { get; set; }
        public decimal AveragePer { get; set; }
        public int TtlQNQty { get; set; }
    }


    public class SewingOptsCdeClass : PH.Platform.BO.BaseEntity
    {																		
        public string OptCode { get; set; }
        public string OPTName { get; set; }
        public string OPTNameEn { get; set; }
    }



    [Table(Name = "")]
    public class Proc_MasterAnalyzResult : PH.Platform.BO.BaseEntity
    {
        public string DefectPtDesc
        {
            get;
            set;
        }

        public int DefectPtCount
        {
            get;
            set;
        }



        public string QAFlag
        {
            get;
            set;
        }

        public string QIFlag
        {
            get;
            set;
        }

        public string WFID
        {
            get;
            set;
        }

        public string Qn_No
        {
            get;
            set;
        }

        public string OptCode
        {
            get;
            set;
        }
        public int AuditTotal
        {
            get;
            set;
        }
        public int TotalCheckTimes { get; set; }
        public int ReCheckTimes { get; set; }
        public int FirsPassTimes { get; set; }
        public int ReCheckPassTimes { get; set; }
        public int FirstPassQty { get; set; }  //首次通過審定通過數量
        public int FirstPassAuditQty { get; set; }  //首次通過審定總數

        public int QNQty { get; set; }
        public int QNQty_Total { get; set; }

        public string PartCode { get; set; }






        public string IsPass { get; set; } //通率己通


        public int SortId { get; set; }
        public int P_Qty
        {
            get;
            set;
        }
        public int F_Qty
        {
            get;
            set;
        }
        public int U_Qty
        {
            get;
            set;
        }
        public int S_Qty
        {
            get;
            set;
        }

        public string OPTName
        {
            get;
            set;
        }
        public string WFHame
        {
            get;
            set;
        }
        public double FPY //首次通過率
        {
            get;
            set;
        }
        public string Line
        {
            get;
            set;
        }
        public string Project
        {
            get;
            set;
        }
        public string CustStyle
        {
            get;
            set;
        }
    }


    #endregion




    public class PHQCDefect_Disp
    {

        public string PHDefectCode
        {
            get;
            set;
        }
        public string DefectChineseName
        {
            get;
            set;
        }

    }

    [Table(Name = "")]
    public class DefectSummaryResult : PH.Platform.BO.BaseEntity
    {
        public string Line { get; set; }
        public string Custmer { get; set; }
        public string ProjNo { get; set; }
        public string CustStyle { get; set; }
        public string OperCode { get; set; }
        public string OperName { get; set; }
        public int AuditQty { get; set; }
        public int DefectQty { get; set; }
        public decimal PerPass { get; set; }
        public string Worker { get; set; }
        public string DefectCode { get; set; }
        public string DefectName { get; set; }
        public int PointQty { get; set; }

    }


    /*joseph:工序瑕疵統計分析報表結果類*/
    [Table(Name = "")]
    public class DefectAnalyzeResult : PH.Platform.BO.BaseEntity
    {
        public string Line { get; set; }
        public string Project { get; set; }
        public string Style { get; set; }
        public string OptCode { get; set; }
        public string OptName { get; set; }
        public string ImgUrl { get; set; }

        public string DefectCode { get; set; }
        public string DefectName { get; set; }
        public int CheckTimes { get; set; } //審查次數
        public int Frequency { get; set; } //瑕疵出現頻率(次數)


    }

    /*joseph:質量表現報表結果類*/
    [Table(Name = "")]
    public class QualityPerformance : PH.Platform.BO.BaseEntity
    {
        public string Line { get; set; }
        public string Factory { get; set; }
        public string WorkShop { get; set; }
        public string DateRange { get; set; }

        public int Qty_QA { get; set; } //QA審定件數
        public int Qty_QI { get; set; }

        public int Qty_QA_Rej { get; set; } //QA拒收件數
        public int Qty_QI_Rej { get; set; }

        public string Per_QA_Rej
        {
            get
            {
                if (Qty_QA_Rej == 0 || Qty_QA == 0)
                    return "0.00%";
                else
                {
                    double aa = Convert.ToDouble(this.Qty_QA_Rej * 100.00 / Qty_QA);
                    return String.Format("{0:F}", aa) + "%";
                }
            }
        }
        public string Per_QI { get; set; }



        public int Qty_AQL { get; set; } //AQL審定件數
        public int Qty_FI { get; set; }


        public int Qty_AQL_Rej { get; set; } //AQL拒收件數
        public int Qty_FI_Rej { get; set; }

        public string Per_AQL_Rej
        {
            get
            {

                if (Qty_AQL_Rej == 0 || Qty_AQL == 0)
                    return "0.00%";
                else
                {

                    double aa = Convert.ToDouble(this.Qty_AQL_Rej * 100.00 / Qty_AQL);
                    return String.Format("{0:F}", aa) + "%";
                }
            }
        }
        public string Per_FI { get; set; }


        public int Qty_FAudit { get; set; } //Full Audit審定件數
        public int Qty_FAudit_Rej { get; set; } //ull Audit拒收件數
        public string Per_FAudit_Rej
        {

            get
            {

                if (Qty_FAudit == 0 || Qty_FAudit_Rej == 0)
                    return "0.00%";
                else
                {

                    double aa = Convert.ToDouble(this.Qty_FAudit_Rej * 100.00 / Qty_FAudit);
                    return String.Format("{0:F}", aa) + "%";
                }
            }

        }

        // 17/4/8 add by joseph
        public string Per_Total { get; set; }
        public string total_per_QI { get; set; }
        public string Remark { get; set; }
        public string Per_AQL_XD { get; set; }
        public string Per_FI_Converted { get; set; }

        public string LineLeader_A { get; set; }
        public string Supervisor_A { get; set; }
        public string Superintendent_A { get; set; }

        public decimal total_per_group
        {
            get;
            set;

        }

        public decimal Per_FAudit_Rej_d
        {
            get
            {

                return string.IsNullOrEmpty(this.Per_FAudit_Rej) ? 0 : Convert.ToDecimal(this.Per_FAudit_Rej.Replace("%", "")) / 100;
            }
        }


        public decimal Per_QA_Rej_d
        {
            get
            {
                return string.IsNullOrEmpty(this.Per_QA_Rej) ? 0 : Convert.ToDecimal(this.Per_QA_Rej.Replace("%", "")) / 100;
            }
        }


        public decimal Per_AQL_Rej_d
        {
            get
            {
                return string.IsNullOrEmpty(this.Per_AQL_Rej) ? 0 : Convert.ToDecimal(this.Per_AQL_Rej.Replace("%", "")) / 100;
            }
        }

        public decimal per_aql_xd_group
        {
            get;
            set;
        }


    }



    public class QualityPerformanceOperationday : PH.Platform.BO.BaseEntity
    {
        public int NoOperationdays { get; set; }
        public int Operationdays { get; set; }
    }

    //Xsj20160830:為做QC計劃而添加以下代碼
    public partial class QC_TaskSchemaHeader : PH.Platform.BO.BaseEntity
    {
        public int ProcessTotalQty
        {
            get
            {
                return this.QC_TaskSchemaDetails.Count;
            }
        }


        public int SchemaProcessQty
        {
            get
            {
                return this.QC_TaskSchemaDetails.Where(p => p.IsInSchema ?? false).Count();
            }
        }

        public int QCFinishProcessQty
        {
            get
            {
                return 0;
            }
        }


        public decimal TaskFinishPercent
        {
            get
            {
                return 0;
            }
        }
    }

    public partial class QC_TaskSchemaDetail : BaseEntity
    {
    }


    public partial class QC_TaskSchemaBlackWhiteProcessInfo : BaseEntity
    {
        public static PH.MobileQC.BO.MobileQCDataContext Dcon
        {
            get
            {
                if (_dcon == null)
                {
                    _dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
                }
                return _dcon;
            }
            set
            {
                _dcon = value;
            }
        }
        public static PH.MobileQC.BO.MobileQCDataContext _dcon = null;

        public string ProcessName
        {
            get
            {
                if (_processName == null)
                {
                }
                return _processName;
            }
        }
        private string _processName = null;
    }


    //Xsj:QCTV屏幕顯示內容BO實體
    //public partial class QCResultBO
    //{
    //    //Xsj:正檢/重檢情況
    //    public string AuditStatus
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:組裝線
    //    public string LineNO
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:工程號
    //    public string ProjectNO
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:制單號
    //    public string WO
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:客款號
    //    public string StyleNO
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:勞動者ID
    //    public string WorkerID
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:勞動者年資
    //    public string WorkingAge
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:上線審定日期/時間
    //    public string AuditDate
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:上線審定數
    //    public string AuditQty
    //    {
    //        get;
    //        set;
    //    } 
    //    //Xsj:疵點數
    //    public string DefectQty
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:疵點樣板排序
    //    public string DefectSampleSeq
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:疵點在此工序
    //    public string IsAtSameProcess
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:疵點在其他工序
    //    public string IsAtOtherProcess
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:交通燈
    //    public string TrafficRight
    //    {
    //        get;
    //        set;
    //    }
    //    //Xsj:疵點代碼
    //    public string DefectCode
    //    {
    //        get;
    //        set;
    //    } 

    //    //Xsj:疵點名稱（中文）
    //    public string DefectNameCN
    //    {
    //        get;
    //        set;
    //    }

    //    //Xsj:此勞動者曾做此工序次數
    //    public string WorkingCount
    //    {
    //        get;
    //        set;
    //    }

    //    //Xsj:工作崗位
    //    public string WorkStation
    //    {
    //        get;
    //        set;
    //    }

    //    //Xsj:此工序之序號
    //    public string ProcessSeq
    //    {
    //        get;
    //        set;
    //    }

    //    //Xsj:工序號
    //    public string ProcessCode
    //    {
    //        get;
    //        set;
    //    }

    //    //Xsj:工序名稱（中文）
    //    public string ProcessNameCN
    //    {
    //        get;
    //        set;
    //    } 
    //}

    public class QCResultBO
    {
        public string DetailID
        {
            get;
            set;
        }
        public string LineNO
        {
            get;
            set;
        }
        public string ProjectNO
        {
            get;
            set;
        }
        public string WONO
        {
            get;
            set;
        }
        public string CustStyleNO
        {
            get;
            set;
        }
        public string WFID
        {
            get;
            set;
        }
        public string Seniority
        {
            get;
            set;
        }
        public string AudtiQty
        {
            get;
            set;
        }
        public string AuditDate
        {
            get;
            set;
        }
        public string DefectQty
        {
            get;
            set;
        }
        public string DefectSmplSeq
        {
            get;
            set;
        }
        public string DefectPointAtThatOpt
        {
            get;
            set;
        }
        public string DefectPointAtOtherOpt
        {
            get;
            set;
        }
        public string TrafficLightFlag
        {
            get;
            set;
        }
        public string DefectCode
        {
            get;
            set;
        }
        public string DefectName_CN
        {
            get;
            set;
        }
        public string WCount
        {
            get;
            set;
        }
        public string WorkStation
        {
            get;
            set;
        }

        public string ProcedureSeq
        {
            get;
            set;
        }
        public string ProcedureCode
        {
            get;
            set;
        }
        public string ProcedureName_CN
        {
            get;
            set;
        }
        public DateTime RefreshTime
        {
            get;
            set;
        }

        public int LineRowSpan
        {
            get
            {
                return this._lineRowSpan;
            }
            set
            {
                _lineRowSpan = value;
            }
        }
        private int _lineRowSpan = 1;

        public int ProjNORowSpan
        {
            get
            {
                return this._projNORowSpan;
            }
            set
            {
                _projNORowSpan = value;
            }
        }
        private int _projNORowSpan = 1;

        public int WONORowSpan
        {
            get
            {
                return this._WONORowSpan;
            }
            set
            {
                _WONORowSpan = value;
            }
        }
        private int _WONORowSpan = 1;

        public int CustStyleRowSpan
        {
            get
            {
                return this._custStyleRowSpan;
            }
            set
            {
                _custStyleRowSpan = value;
            }
        }
        private int _custStyleRowSpan = 1;

        public int AuditQtyRowSpan
        {
            get
            {
                return this._auditQtyRowSpan;
            }
            set
            {
                _auditQtyRowSpan = value;
            }
        }
        private int _auditQtyRowSpan = 1;


        public int DefectQtyRowSpan
        {
            get
            {
                return this._defectQtyRowSpan;
            }
            set
            {
                _defectQtyRowSpan = value;
            }
        }
        private int _defectQtyRowSpan = 1;

        public string AuditNote
        {
            get;
            set;
        }
    }




    //用于讀取RAP資料的DataContext
    public class RapDataHelper
    {
        static RAPLQDataContext _rapdc;
        // static BasicInfoDataContext _basicctx;
        public static RAPLQDataContext RapCtx
        {
            get
            {
                if (_rapdc == null)
                {
                    _rapdc = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
                    _rapdc.CommandTimeout = 1000;
                }
                return _rapdc;
            }

        }

    }

    public class MobileHelper
    {
        static MobileQCDataContext _mdc;
        // static BasicInfoDataContext _basicctx;
        public static MobileQCDataContext MobileCtx
        {
            get
            {
                if (_mdc == null)
                {
                    _mdc = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                    _mdc.CommandTimeout = 1000;
                }
                return _mdc;
            }

        }

    }


    public class DefectHelper
    {
        static FabricInspectionDataContext _fbrctx;

        public static FabricInspectionDataContext FbcCtx
        {
            get
            {
                if (_fbrctx == null)
                {
                    _fbrctx = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                    _fbrctx.CommandTimeout = 1000;
                }
                return _fbrctx;
            }

        }
    }





    [Table(Name = "")]
    public class Proc_TrafficSummaryResult : TrafficBasicBO// PH.Platform.BO.BaseEntity
    {
        public string Factory
        {
            get;
            set;
        }

        public int WSCount
        {
            get;
            set;
        }
        public List<TrafficBasicBO> TrafficBasicBOs = new List<TrafficBasicBO>();

        //public string Section
        //{
        //    get;
        //    set;
        //}
        //public int TTL_Val_Y
        //{
        //    get;
        //    set;
        //}
        //public int OS_Val_Y
        //{
        //    get;
        //    set;
        //}
        //public int TTL_Val_R
        //{
        //    get;
        //    set;
        //}
        //public int OS_Val_R
        //{
        //    get;
        //    set;
        //}

    }

    public class TrafficBasicBO
    {

        public string Section
        {
            get;
            set;
        }
        public int TTL_Val_Y
        {
            get;
            set;
        }
        public int OS_Val_Y
        {
            get;
            set;
        }

        public int OS_Val_Y_Cur
        {
            get;
            set;
        }

        public int OS_Val_Y_B4
        {
            get;
            set;
        }

        public int TTL_Val_R
        {
            get;
            set;
        }

        public int OS_Val_R
        {
            get;
            set;
        }

        public int OS_Val_R_Cur
        {
            get;
            set;
        }
        public int OS_Val_R_B4
        {
            get;
            set;
        }

    }

    public class Proc_MasterList
    {

        private System.Guid _masterid;

        private string _Factory;

        private string _WorkShop;

        private string _Line;

        private string _Project;

        private string _WO;

        private string _WOC;

        private string _RWO;

        private string _QNNO;

        private string _Style;

        private string _W_procedure;

        private string _Worker;

        private string _FAE;

        private char _ReAudit;

        private System.Nullable<int> _Active;

        private System.Nullable<System.DateTime> _QC_time;

        private System.Nullable<int> _QCCount;

        private string _QCMan;

        private string _DefectCode;

        private string _DefectLoc;

        private string _DefectName;
        private string _QCRoleCode;
        private string _RoleName;

        private System.Nullable<int> _PCount;

        private System.Nullable<int> _FCount;

        public Proc_MasterList()
        {
        }

        [Column(Storage = "_masterid", DbType = "UniqueIdentifier NOT NULL")]
        public System.Guid masterid
        {
            get
            {
                return this._masterid;
            }
            set
            {
                if ((this._masterid != value))
                {
                    this._masterid = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "VarChar(20)")]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_WorkShop", DbType = "VarChar(20)")]
        public string WorkShop
        {
            get
            {
                return this._WorkShop;
            }
            set
            {
                if ((this._WorkShop != value))
                {
                    this._WorkShop = value;
                }
            }
        }

        [Column(Storage = "_Line", DbType = "VarChar(8)")]
        public string Line
        {
            get
            {
                return this._Line;
            }
            set
            {
                if ((this._Line != value))
                {
                    this._Line = value;
                }
            }
        }

        [Column(Storage = "_Project", DbType = "VarChar(20)")]
        public string Project
        {
            get
            {
                return this._Project;
            }
            set
            {
                if ((this._Project != value))
                {
                    this._Project = value;
                }
            }
        }

        [Column(Storage = "_WO", DbType = "VarChar(20)")]
        public string WO
        {
            get
            {
                return this._WO;
            }
            set
            {
                if ((this._WO != value))
                {
                    this._WO = value;
                }
            }
        }

        [Column(Storage = "_WOC", DbType = "VarChar(20)")]
        public string WOC
        {
            get
            {
                return this._WOC;
            }
            set
            {
                if ((this._WOC != value))
                {
                    this._WOC = value;
                }
            }
        }

        [Column(Storage = "_RWO", DbType = "VarChar(20)")]
        public string RWO
        {
            get
            {
                return this._RWO;
            }
            set
            {
                if ((this._RWO != value))
                {
                    this._RWO = value;
                }
            }
        }

        [Column(Storage = "_QNNO", DbType = "VarChar(10)")]
        public string QNNO
        {
            get
            {
                return this._QNNO;
            }
            set
            {
                if ((this._QNNO != value))
                {
                    this._QNNO = value;
                }
            }
        }

        [Column(Storage = "_Style", DbType = "VarChar(20)")]
        public string Style
        {
            get
            {
                return this._Style;
            }
            set
            {
                if ((this._Style != value))
                {
                    this._Style = value;
                }
            }
        }

        [Column(Storage = "_W_procedure", DbType = "NVarChar(50)")]
        public string W_procedure
        {
            get
            {
                return this._W_procedure;
            }
            set
            {
                if ((this._W_procedure != value))
                {
                    this._W_procedure = value;
                }
            }
        }

        [Column(Storage = "_Worker", DbType = "NVarChar(50)")]
        public string Worker
        {
            get
            {
                return this._Worker;
            }
            set
            {
                if ((this._Worker != value))
                {
                    this._Worker = value;
                }
            }
        }

        [Column(Storage = "_FAE", DbType = "VarChar(2)")]
        public string FAE
        {
            get
            {
                return this._FAE;
            }
            set
            {
                if ((this._FAE != value))
                {
                    this._FAE = value;
                }
            }
        }

        [Column(Storage = "_ReAudit", DbType = "VarChar(1) NOT NULL")]
        public char ReAudit
        {
            get
            {
                return this._ReAudit;
            }
            set
            {
                if ((this._ReAudit != value))
                {
                    this._ReAudit = value;
                }
            }
        }

        [Column(Storage = "_Active", DbType = "Int")]
        public System.Nullable<int> Active
        {
            get
            {
                return this._Active;
            }
            set
            {
                if ((this._Active != value))
                {
                    this._Active = value;
                }
            }
        }

        [Column(Storage = "_QC_time", DbType = "DateTime")]
        public System.Nullable<System.DateTime> QC_time
        {
            get
            {
                return this._QC_time;
            }
            set
            {
                if ((this._QC_time != value))
                {
                    this._QC_time = value;
                }
            }
        }

        [Column(Storage = "_QCCount", DbType = "Int")]
        public System.Nullable<int> QCCount
        {
            get
            {
                return this._QCCount;
            }
            set
            {
                if ((this._QCCount != value))
                {
                    this._QCCount = value;
                }
            }
        }

        [Column(Storage = "_QCMan", DbType = "VarChar(20)")]
        public string QCMan
        {
            get
            {
                return this._QCMan;
            }
            set
            {
                if ((this._QCMan != value))
                {
                    this._QCMan = value;
                }
            }
        }

        [Column(Storage = "_DefectCode", DbType = "NVarChar(50)")]
        public string DefectCode
        {
            get
            {
                return this._DefectCode;
            }
            set
            {
                if ((this._DefectCode != value))
                {
                    this._DefectCode = value;
                }
            }
        }

        [Column(Storage = "_DefectLoc", DbType = "NVarChar(50)")]
        public string DefectLoc
        {
            get
            {
                return this._DefectLoc;
            }
            set
            {
                if ((this._DefectLoc != value))
                {
                    this._DefectLoc = value;
                }
            }
        }

        [Column(Storage = "_DefectName", DbType = "NVarChar(50)")]
        public string DefectName
        {
            get
            {
                return this._DefectName;
            }
            set
            {
                if ((this._DefectName != value))
                {
                    this._DefectName = value;
                }
            }
        }

        [Column(Storage = "_PCount", DbType = "Int")]
        public System.Nullable<int> PCount
        {
            get
            {
                return this._PCount;
            }
            set
            {
                if ((this._PCount != value))
                {
                    this._PCount = value;
                }
            }
        }

        [Column(Storage = "_FCount", DbType = "Int")]
        public System.Nullable<int> FCount
        {
            get
            {
                return this._FCount;
            }
            set
            {
                if ((this._FCount != value))
                {
                    this._FCount = value;
                }
            }
        }

        private char _inactive;
        public char InActive
        {


            get
            {

                //return this.Active.GetValueOrDefault() == 1 ? 'Y' : 'N'; 
                return _inactive;

            }

            set
            {
                _inactive = this.Active.GetValueOrDefault() == 1 ? 'Y' : 'N';
            }
        }

        [Column(Storage = "_QCRoleCode", DbType = "NVarChar(50)")]
        public string QCRoleCode
        {
            get
            {
                return this._QCRoleCode;
            }
            set
            {
                if ((this.QCRoleCode != value))
                {
                    this.QCRoleCode = value;
                }
            }
        }

        [Column(Storage = "_RoleName", DbType = "NVarChar(50)")]
        public string RoleName
        {
            get
            {

                return _RoleName;
                //if (this._QCRoleCode == "A")
                //    return "巡審定";
                //else if (this._QCRoleCode == "C")
                //    return "巡審定";
                //else
                //    return "";
            }
            set
            {

                if ((this.RoleName != value))
                {
                    this._RoleName = value;
                }

            }
        }
    }


    /*add by joseph:上線全審查品質報表結果*/
    public class FullAuditQualityRptResult
    {
        public string Factory { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Customer { get; set; }
        public string BKU { get; set; }
        public string Style { get; set; }
        public string YYMM { get; set; }
        public string DefectCode { get; set; }
        public string MLevel { get; set; }
        public string MPer { get; set; }
        public int DefectQty { get; set; }
        public int ChkTotal { get; set; }
        public int DefectTotal { get; set; }
        public int MasterTotal { get; set; }
        public int OtherTotal
        {
            get
            {
                return this.DefectTotal - this.MasterTotal;
            }
        }

        public int ProductTotal { get; set; }
        public int DefectTypeTotal { get; set; }

    }

    public class FullAuditOnLineResult
    {
        public string Factory { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Customer { get; set; }
        public string BKU { get; set; }
        public string Style { get; set; }
        public string YYMM { get; set; }
        //  public string DefectCode { get; set; }
        public string MLevel { get; set; }
        public string MPer { get; set; }
        //   public int DefectQty { get; set; }
        public int ChkTotal { get; set; }
        public int DefectTotal { get; set; }
        public int MasterTotal { get; set; }
        public int OtherTotal
        {
            get
            {
                return this.DefectTotal - this.MasterTotal;
            }
        }

        public int ProductTotal { get; set; }
        public int DefectTypeTotal { get; set; }
        public int SortId { get; set; }
        //public List<DefectInfo> 

        // public List<DefectInfo> DefectBOs = new List<DefectInfo>();


    }



    public class FullAuditOnLineResult_V1
    {

        public string Factory { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Customer { get; set; }
        public string BKU { get; set; }
        public string Style { get; set; }
        public string YYMM { get; set; }
        //  public string DefectCode { get; set; }
        //public string MLevel { get; set; }
        public string MLevel
        {
            get
            {
                //double aa = ProductTotal == 0 ? 0 : Convert.ToDouble(this.DefectTotal * 100.00 / this.ProductTotal);
                //return String.Format("{0:F}", aa);
                if (double.Parse(MPer) < 1)
                    return "A";
                else if (double.Parse(MPer) >= 1 && double.Parse(MPer) < 2)
                    return "B";
                else if (double.Parse(MPer) >= 2 && double.Parse(MPer) < 3)
                    return "C";
                else if (double.Parse(MPer) >= 3 && double.Parse(MPer) < 5)
                    return "F";
                else
                    return "U";


            }

        }

        //public string MPer { get; set; }
        public string MPer
        {
            get
            {

                double aa = ProductTotal == 0 ? 0 : Convert.ToDouble(this.DefectTotal * 100.00 / this.ProductTotal);
                return String.Format("{0:F}", aa);

            }

        }



        //   public int DefectQty { get; set; }
        public int ChkTotal { get; set; }
        public int DefectTotal
        {
            get
            {

                return this.F01 + F02 + F03 + F04 + F05 + F06 + F07 + F08 + F09 + F10 + F11 + OtherTotal;

            }
            //    set; 

        }
        public int MasterTotal { get; set; }
        public int OtherTotal
        {

            get;
            set;
            //get
            //{
            //    return this.DefectTotal - this.MasterTotal;
            //}
        }

        public int ProductTotal { get; set; }
        public int DefectTypeTotal { get; set; }
        public int SortId { get; set; }

        public int F01 { get; set; }
        public int F02 { get; set; }
        public int F03 { get; set; }
        public int F04 { get; set; }
        public int F05 { get; set; }

        public int F06 { get; set; }
        public int F07 { get; set; }
        public int F08 { get; set; }
        public int F09 { get; set; }
        public int F10 { get; set; }
        public int F11 { get; set; }

    }

    public class AuditOffLine_AQL
    {

        private string GetDispStr(int ttl, int mttl)
        {
            string _retstr = "";
            if (ttl == 0)
                _retstr = "/";
            else if (mttl == 0)
                _retstr = "/ " + (ttl == 0 ? "" : ttl.ToString());
            else if (mttl == ttl)
                _retstr = mttl.ToString() + " /";
            else
                _retstr = mttl.ToString() + " / " + (ttl - mttl).ToString();
            return _retstr;

        }

        public string MasterId { get; set; }
        public string Factory { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Customer { get; set; }
        public string BKU { get; set; }
        public string Style { get; set; }
        public string YYMM { get; set; }
        //  public string DefectCode { get; set; }

        public string AuditType { get; set; } //AQL2.5,2.0,1.0....
        public string AuditTimes { get; set; }
        public string AuditResult { get; set; }
        public string BatchNo { get; set; }

        public string MPer { get; set; }
        //   public int DefectQty { get; set; }
        public int ChkTotal { get; set; }
        public int DefectTotal { get; set; }
        public int MasterTotal { get; set; }

        public int FailQty { get; set; } //未通過件數

        //   public int FailQty_Main { get; set; } //因主要xiaci未通過件數

        public int ProductTotal { get; set; }
        public int DefectTypeTotal { get; set; }
        public int SortId { get; set; }
        public int MFailQty { get; set; }

        public int OtherTotal
        {

            get;
            set;
            //get
            //{
            //    //return this.DefectTotal - this.MasterTotal;
            //    return this.DefectTotal - this.F01 - this.F02 - this.F03 - this.F04 - this.F05 - this.F06 - this.F07 - this.F08 - this.F09 - this.F10 - this.F11;
            //}
        }

        public int OtherMainTotal { get; set; }


        public int F01 { get; set; }
        public int F02 { get; set; }
        public int F03 { get; set; }
        public int F04 { get; set; }
        public int F05 { get; set; }

        public int F06 { get; set; }
        public int F07 { get; set; }
        public int F08 { get; set; }
        public int F09 { get; set; }
        public int F10 { get; set; }
        public int F11 { get; set; }

        public int FOther { get; set; }


        public int MF01 { get; set; }
        public int MF02 { get; set; }
        public int MF03 { get; set; }
        public int MF04 { get; set; }
        public int MF05 { get; set; }

        public int MF06 { get; set; }
        public int MF07 { get; set; }
        public int MF08 { get; set; }
        public int MF09 { get; set; }
        public int MF10 { get; set; }
        public int MF11 { get; set; }


        public int MFOther { get; set; }

        public string F01_Disp
        {

            get
            {

                return GetDispStr(F01, MF01);
            }
        }


        public string F02_Disp
        {

            get
            {
                return GetDispStr(F02, MF02);
            }
        }

        public string F03_Disp
        {

            get
            {

                return GetDispStr(F03, MF03);
            }
        }

        public string F04_Disp
        {

            get
            {
                return GetDispStr(F04, MF04);
            }
        }

        public string F05_Disp
        {

            get
            {
                return GetDispStr(F05, MF05);
            }
        }

        public string F06_Disp
        {

            get
            {
                return GetDispStr(F06, MF06);
            }
        }

        public string F07_Disp
        {

            get
            {

                return GetDispStr(F07, MF07);
            }
        }

        public string F08_Disp
        {

            get
            {

                return GetDispStr(F08, MF08);
            }
        }

        public string F09_Disp
        {
            get
            {

                return GetDispStr(F09, MF09);
            }
        }

        public string F10_Disp
        {
            get
            {

                return GetDispStr(F10, MF10);
            }
        }

        public string F11_Disp
        {
            get
            {
                return GetDispStr(F11, MF11);
            }
        }

        public string FOther_Disp
        {
            get
            {
                return GetDispStr(FOther, MFOther);
            }
        }
    }


    //public class DefectInfo
    //{
    //    public string DefectCode { get; set; }
    //    public string DefectDesc { get; set; }
    //}

    public class FullAuditHeadInfo
    {
        public int LineTotal { get; set; }
        public int CheckTotal { get; set; }
        public int ProductTotal { get; set; }
        public int POTotal { get; set; }
        public int StyleTotal { get; set; }
        public int CustomerTotal { get; set; }
    }

    public class FullAuditPerformance
    {
        public string Factory { get; set; }
        public string MasterId { get; set; }
        public string QCDate { get; set; }
        public string Workshop { get; set; }
        public string POList { get; set; }

        public string BKU { get; set; }
        public string Style { get; set; }
        public string QCMan { get; set; }
        public int AuditQty { get; set; }
        public int DefectQty_Ttl { get; set; }

        public int MaxColor { get; set; }
        public int MaxSize { get; set; }
        public int Gam_Ttl { get; set; }
        public int Sample_Ttl { get; set; }
        public int ReauditQty { get; set; }
        public int AuditTtl { get; set; }
        public int Defect_Major { get; set; }
        public string IsReaudit { get; set; }

    }



    //public partial class Proc_MasterList
    //{

    //    private char _inactive;
    //    public char InActive
    //    {


    //        get
    //        {

    //            //return this.Active.GetValueOrDefault() == 1 ? 'Y' : 'N'; 
    //            return _inactive;

    //        }

    //        set
    //        {
    //            _inactive = this.Active.GetValueOrDefault() == 1 ? 'Y' : 'N';
    //        }
    //    }
    //}

    [Table(Name = "")]
    public class Proc_AuditorWorkResult
    {
        public int SeqNo
        {
            get;
            set;
        }


        public int ExamTotalTime
        {
            get;
            set;
        }

        public string Factory
        {
            get;
            set;
        }

        public string Auditor
        {
            get;
            set;
        }
        public string WorkShop
        {
            get;
            set;
        }

        public int ReauditTimes
        {
            get;
            set;
        }

        public int ReauditTimes_Yt  //當日重檢次數
        {
            get;
            set;
        }


        public int AllTimes
        {
            get;
            set;
        }

        //正檢次數
        public int FormalTimes
        {
            get
            { return this.AllTimes > 0 ? AllTimes - ReauditTimes : 0; }
        }

        public DateTime? StartTime
        {
            get;
            set;
        }

        public DateTime? EndTime
        {
            get;
            set;
        }


        public int time_reaudit
        {
            get;
            set;
        }

        public decimal TotalHour
        {
            get;
            set;
        }

        public string AveExamUsedTime
        {
            get;
            set;
        }

        public string AveExamUsedTimeSum
        {
            get;
            set;
        }

        string _ActualQETime;
        double _ActualTotalHour;
        bool Flag;
        public string QETimeShow
        {
            get
            {
                if (!Flag)
                {
                    this.CalculateActualQETime(this.Factory, this.StartTime ?? DateTime.MinValue, this.EndTime ?? DateTime.MinValue, ref _ActualQETime, ref _ActualTotalHour);
                }
                return _ActualQETime;
            }
        }

        public double TotalHourShow
        {
            get
            {
                if (!Flag)
                {
                    this.CalculateActualQETime(this.Factory, this.StartTime ?? DateTime.MinValue, this.EndTime ?? DateTime.MinValue, ref _ActualQETime, ref _ActualTotalHour);
                }
                return _ActualTotalHour;
            }
        }

        public double AveExamUsedTimeShow
        {
            get
            {
                return TotalHourShow * 60.00 / this.AllTimes;
            }
        }

        //根據工廠的時間安排與QA人員的工作時間，計算出實際的工作小時
        //每天分為三段進行計算：N1、N2、OT
        void CalculateActualQETime(string AFactory, DateTime AStartTime, DateTime AEndTime, ref string AActualQETime, ref double AActualTotalHour)
        {
            AActualQETime = "";
            AActualTotalHour = 0;
            double TotalMinute = 0;

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            string SFTC = "SL_01";
            string SFT = "Mon-Fri";
            if (AFactory == "SL") SFTC = "SL_01";
            else if (AFactory == "GG") SFTC = "GG_02";
            else if (AFactory == "RX") SFTC = "RX_01";
            else if (AFactory == "CL") { SFTC = "CL_01"; SFT = "Sat-Thu"; }

            if (AFactory != "CL" && AStartTime.DayOfWeek == DayOfWeek.Saturday)
            {
                SFT = "Sat";
            }

            string SqlStr = @"select SEQ, SFT, ST01, ET01, ST02, ET02, ST03, ET03, ST04, ET04
                              from openquery(INTERBASE, 'select * from tbl_shift where SFTC = ''{0}'' and SFT = ''{1}''')";
            SqlStr = string.Format(SqlStr, SFTC, SFT);

            DataTable dt = db.ExecuteDataTable(SqlStr, "dtShift");
            if (dt.Rows.Count == 0)
            {
                AActualQETime = AStartTime.ToString("HH:mm") + " - " + AEndTime.ToString("HH:mm");
                AActualTotalHour = (AEndTime - AStartTime).TotalHours;
                return;
            }

            //N1
            DateTime ST01 = Convert.ToDateTime(dt.Rows[0]["ST01"].ToString());
            DateTime ET01 = Convert.ToDateTime(dt.Rows[0]["ET01"].ToString());
            ST01 = DateTime.Parse(AStartTime.ToString("yyyy-MM-dd ") + ST01.ToString("HH:mm"));
            ET01 = DateTime.Parse(AStartTime.ToString("yyyy-MM-dd ") + ET01.ToString("HH:mm"));

            if (AStartTime < ET01)  //滿足此條件，有N1段
            {
                AActualQETime += (AStartTime > ST01 ? AStartTime : ST01).ToString("HH:mm") + " - " +
                                (AEndTime > ET01 ? ET01 : AEndTime).ToString("HH:mm") + Environment.NewLine;
                TotalMinute += ((AEndTime > ET01 ? ET01 : AEndTime) - (AStartTime > ST01 ? AStartTime : ST01)).TotalMinutes;
            }

            //N2
            DateTime ST02 = Convert.ToDateTime(dt.Rows[0]["ST02"].ToString());
            DateTime ET02 = dt.Rows[0]["ET03"] is DBNull ? Convert.ToDateTime(dt.Rows[0]["ET02"].ToString()) : Convert.ToDateTime(dt.Rows[0]["ET03"].ToString());
            ST02 = DateTime.Parse(AStartTime.ToString("yyyy-MM-dd ") + ST02.ToString("HH:mm"));
            ET02 = DateTime.Parse(AStartTime.ToString("yyyy-MM-dd ") + ET02.ToString("HH:mm"));

            if (AEndTime > ST02 && AStartTime < ET02)  //滿足此條件，有N2段
            {
                AActualQETime += (AStartTime > ST02 ? AStartTime : ST02).ToString("HH:mm") + " - " +
                                (AEndTime > ET02 ? ET02 : AEndTime).ToString("HH:mm") + Environment.NewLine;
                TotalMinute += ((AEndTime > ET02 ? ET02 : AEndTime) - (AStartTime > ST02 ? AStartTime : ST02)).TotalMinutes;
            }

            //OT
            if (dt.Rows[0]["ST04"] is DBNull) //沒有設置OT時間段
            {
                AActualTotalHour = TotalMinute / 60.00;
                Flag = true;
                return;
            }

            DateTime STOT = Convert.ToDateTime(dt.Rows[0]["ST04"].ToString());
            STOT = DateTime.Parse(AStartTime.ToString("yyyy-MM-dd ") + STOT.ToString("HH:mm"));
            if (AEndTime > STOT)
            {
                AActualQETime += STOT.ToString("HH:mm") + " - " + AEndTime.ToString("HH:mm");
                TotalMinute += (AEndTime - STOT).TotalMinutes;
            }

            AActualTotalHour = TotalMinute / 60.00;
            Flag = true;
        }

    }




    [Table(Name = "")]
    public class Proc_WorkShopAnalysiskResult
    {


        public Proc_WorkShopAnalysiskResult()
        {

        }
        public string Factory
        {
            get;
            set;
        }

        public string WorkShop
        {
            get;
            set;
        }


        public int GroupBase
        {
            get;
            set;
        }

        public int Level
        {
            get;
            set;
        }

        public int FistLight
        {
            get;
            set;
        }

        public int RepeatLight
        {
            get;
            set;
        }

        public int FirstPass
        {
            get;
            set;
        }

        public int SecondPass
        {
            get;
            set;
        }

        public int ZeroDefectQty
        {
            get;
            set;
        }

        public int OneDefectQty
        {
            get;
            set;
        }

        public int TwoDefectQty
        {
            get;
            set;
        }

        public int AllChkQty
        {
            get;
            set;
        }
        public int AllPassQty
        {
            get;
            set;
        }

        public int OneFailQty
        {
            get;
            set;
        }
        public int TwoFailQty
        {
            get;
            set;
        }
        public int ThreeFailQty
        {
            get;
            set;
        }
        public int FourFailQty
        {
            get;
            set;
        }
        public int FiveFailQty
        {
            get;
            set;
        }

        public int SixFailQty
        {
            get;
            set;
        }
        public int SevenFailQty
        {
            get;
            set;
        }

        public int FirstPassTime //首檢通過次數
        {
            get;
            set;
        }

        public int FirstChkTime //首檢總次數
        {
            get;
            set;
        }


        public int FailTotalQty
        {
            get
            {

                return this.OneFailQty + this.TwoFailQty + this.ThreeFailQty + this.FourFailQty + this.FiveFailQty + this.SixFailQty + this.SevenFailQty;
                // return this.AllChkQty - this.AllPassQty;
            }
        }

        public double Cal_Per
        {
            get
            {
                // return this.AllPassQty * 100.00 / (this.AllPassQty + this.FailTotalQty);
                return Convert.ToDouble(AllPassQty * 100.00 / (this.AllPassQty + this.FailTotalQty));
            }
        }

        public int MobileExamTotalQty
        {
            get
            {
                return this.FistLight + this.RepeatLight;
            }
        }

        public string FPY
        {
            get
            {
                if (this.FistLight == 0)
                {
                    return "0.00%";
                }

                return (1.0000 * this.FirstPass / this.FistLight).ToString("P");
            }
        }

        public string PY
        {
            get
            {
                if (this.MobileExamTotalQty == 0)
                {
                    return "0.00%";
                }

                return (1.0000 * this.AllPassQty / this.MobileExamTotalQty).ToString("P");
            }
        }

    }


    public class LineBO
    {
        public string Factory
        {
            get;
            set;
        }

        public string WorkShop
        {
            get;
            set;
        }

        public string Line
        {
            get;
            set;
        }
    }

    public class StyleChooseBO
    {
        public bool IsSelected { get; set; }
        public string Style { get; set; }
    }


    public class AuditQtyMoveBO
    {
        public string QCRoleCode { get; set; }
        public string Factory { get; set; }
        public string WorkShop { get; set; }
        public string Line { get; set; }
        public string Style { get; set; }
        public string MoveDate { get; set; }
        public decimal FirstPassQty { get; set; }
        public decimal AuditQty { get; set; }
        public decimal FirstPassRatio { get; set; }
    }

    public class QCMasterSeartchConditionBO
    {
        public string Factory { get; set; }
        public string WorkShop { get; set; }
        public string WorkLine { get; set; }
        public string Style { get; set; }
        public string QCTimeFrom { get; set; }
        public string QCTimeTO { get; set; }
        public string QCRole { get; set; }
        public string QCMan { get; set; }
        public string RecordType { get; set; }
        public string AnalyseType { get; set; }
    }

    public partial class QC_FirstPassRatioTarget : BaseEntity
    {
    }

    //----------------------End-----------------


    public class OfflineAQLAduitQualityMaster
    {
        public DateTime QC_time { get; set; }
        public string Style { get; set; }
        public string CustomerPO { get; set; }
        public string QCMan { get; set; }
        public string ColorName { get; set; }
        public string Factory { get; set; }
        public string StyleType { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string Line { get; set; }
        public string Color { get; set; }
        public string QNQty { get; set; }
        public string AuditType { get; set; }
        public string QCCount { get; set; }
        public string PassLevel { get; set; }
        public string AuditResult { get; set; }
        public string Audit { get; set; }
        public string POQuantity { get; set; }
    }


    public class OfflineAQLAduitQualityDetail
    {
        public string Position { get; set; }
        public string DefectDescriptn { get; set; }
        public int Marjo { get; set; }
        public int Minor { get; set; }

    }

    public class OfflineFullAduitQualityMaster
    {
        public DateTime QC_time { get; set; }
        public string Style { get; set; }
        public string CustomerPO { get; set; }
        public string QCMan { get; set; }
        public string ColorName { get; set; }
        public string Factory { get; set; }
        public string StyleType { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string Line { get; set; }
        public string Color { get; set; }
        public string QNQty { get; set; }
        public string AuditType { get; set; }
        public string AuditResult { get; set; }
        public string Audit { get; set; }
        public string POQuantity { get; set; }

    }

    public class OfflineAQLAduitQualityMaster_Main
    {
        public DateTime QC_time { get; set; }
        public string Style { get; set; }
        public string CustomerPO { get; set; }
        public string QCMan { get; set; }
        public string ColorName { get; set; }
        public string Factory { get; set; }
        public string StyleType { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string Line { get; set; }
        public string Color { get; set; }
        public string QNQty { get; set; }
        public string AuditType { get; set; }
        public string QCCount { get; set; }
        public string PassLevel { get; set; }
        public string AuditResult { get; set; }
        public string Audit { get; set; }
        public string POQuantity { get; set; }
        public string DefPercent { get; set; }
        public string DefectName_top3 { get; set; }
        public string MasterID { get; set; }
        public DateTime QC_time_Detail { get; set; }

        public string Position { get; set; }
        public string DefectDescriptn { get; set; }
        public string Marjo { get; set; }
        public string Minor { get; set; }

        public string RejQty { get; set; }
        public bool CheckApprovedSample { get; set; }
        public bool CheckColorSample { get; set; }
        public bool CheckWO { get; set; }

    }

    public class OfflineAQLAduitQualityMaster_Sub
    {
        public string MasterID { get; set; }
        public string Position { get; set; }
        public string DefectDescriptn { get; set; }
        public string Productqty { get; set; }
        public string QCCount { get; set; }
        public int ProductSeq { get; set; }
        public string Marjo { get; set; }
        public string Minor { get; set; }
        public DateTime QC_time { get; set; }
        public string AuditResult { get; set; }
        public string AcceptableLeave { get; set; }
        public string QCMan { get; set; }

        public string WsConfirm { get; set; }
        public string QAConfirm { get; set; }
        public string SIConfirm { get; set; }
        public string ImproveActionPlan { get; set; }

        public string ImgUrl { get; set; }

        public string DefPercent { get; set; }
        public string GetLeave(string Marjor, string Mino, string Quantity)
        {
            if (Marjor == "FullAudit" || Mino == "FullAudit")
            {
                return "Major FullAudit / Minor FullAudit";
            }
            else
            {
                MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
                string SQL_Quantity = string.Format("SELECT AQty_10 as AQL10, AQty_15 as AQL15, AQty as AQL25, MQty as AQL40, AQty_65 as AQL65 FROM [PH.MobileQC].[dbo].[QC_AuditQtyRange]  where Flag = 'FinalCheck' and (Qty1<={0} and Qty2>={0})", Quantity);
                DataTable tb = db.ExecuteDataTable(SQL_Quantity, "");

                string Major_rep = Marjor.ToString().Replace(".", "");
                string Minor_rep = Mino.ToString().Replace(".", "");
                if (Major_rep == "")
                {
                    return "Minor " + tb.Rows[0]["" + Minor_rep + ""].ToString();
                }
                else if (Minor_rep == "")
                {
                    return "Major " + tb.Rows[0]["" + Major_rep + ""].ToString();
                }
                else
                {
                    return "Major " + tb.Rows[0]["" + Major_rep + ""].ToString() + " / " + "Minor " + tb.Rows[0]["" + Minor_rep + ""].ToString();
                }
            }

        }




    }


    public class FirstBoxAuditListReportClass
    {
        public DateTime QCtime { get; set; }
        public string Productqty { get; set; }
        public string QCCount { get; set; }
        public string RejQty { get; set; }
        public string AuditResult { get; set; }
        public string AuditTimes { get; set; }
        public string AuditType { get; set; }
        public string SubAuditType { get; set; }
        public string QCMan { get; set; }
        public string DefPercent { get; set; }
        public string ColorName { get; set; }
        public string Factory { get; set; }
        public string Style { get; set; }
        public string StyleType { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string Line { get; set; }
        public string Color { get; set; }

        public string QNQty { get; set; }
        public string CustomerPO { get; set; }
        public string POQuantity { get; set; }

        public bool CheckApprovedSample { get; set; }
        public bool CheckColorSample { get; set; }
        public bool CheckWO { get; set; }
        public string MasterID { get; set; }
        public string ImproveActionPlan { get; set; }
        //public string QCtime { get; set; }
        //public string Position { get; set; }
        //public string DefectDescriptn { get; set; }
        //public string Marjo { get; set; }
        //public string Minor { get; set; }


        public List<KeyFistBoxAuditListDetailFist> _KeyFistBoxAuditListDetailFist;
        public List<KeyFistBoxAuditListDetailFist> ListDetailDefect
        {
            get
            {
                if (_KeyFistBoxAuditListDetailFist == null)
                {
                    _KeyFistBoxAuditListDetailFist = new List<KeyFistBoxAuditListDetailFist>();
                }
                return _KeyFistBoxAuditListDetailFist;
            }
            set
            {
                _KeyFistBoxAuditListDetailFist = value;
            }
        }



        public List<KeyFirstBoxAuditListDetailSecond> _KeyFirstBoxAuditListDetailSecond;
        public List<KeyFirstBoxAuditListDetailSecond> ListDetailUrl
        {


            get
            {
                if (_KeyFirstBoxAuditListDetailSecond == null)
                {
                    _KeyFirstBoxAuditListDetailSecond = new List<KeyFirstBoxAuditListDetailSecond>();
                }
                return _KeyFirstBoxAuditListDetailSecond;
            }
            set
            {
                _KeyFirstBoxAuditListDetailSecond = value;
            }
        }


    }

    public class FirstBoxAuditListReportClass_head
    {
        public DateTime QCtime { get; set; }
        public string Productqty { get; set; }
        public string QCCount { get; set; }
        public string RejQty { get; set; }
        public string AuditResult { get; set; }
        public string AuditTimes { get; set; }
        public string AuditType { get; set; }
        public string SubAuditType { get; set; }
        public string QCMan { get; set; }
        public string DefPercent { get; set; }
        public string ColorName { get; set; }
        public string Factory { get; set; }
        public string Style { get; set; }
        public string StyleType { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string Line { get; set; }
        public string Color { get; set; }

        public string QNQty { get; set; }
        public string CustomerPO { get; set; }
        public string POQuantity { get; set; }

        public string CheckApprovedSample { get; set; }
        public string CheckColorSample { get; set; }
        public string CheckWO { get; set; }
        public string MasterID { get; set; }
    }



    public class KeyFistBoxAuditListDetailFist
    {
        public string QCtime { get; set; }
        public string Position { get; set; }
        public string DefectDescriptn { get; set; }
        public string Marjo { get; set; }
        public string Minor { get; set; }
        public string MasterID { get; set; }
        //public string Productqty { get; set; }
        //public string QCCount { get; set; }
        //public string RejQty { get; set; }
        //public string AuditResult { get; set; }
        //public string AuditTimes { get; set; }
        //public string AuditType { get; set; }
        //public string SubAuditType { get; set; }
        //public string QCMan { get; set; }
        //public string DefPercent { get; set; }
        //public string ColorName { get; set; }
        //public string Factory { get; set; }
        //public string Style { get; set; }
        //public string StyleType { get; set; }
        //public string Project { get; set; }
        //public string WO { get; set; }
        //public string Line { get; set; }
        //public string Color { get; set; }
        //public string QNQty { get; set; }
        //public string CustomerPO { get; set; }
        //public string POQuantity { get; set; }
        //public string CheckApprovedSample { get; set; }
        //public string CheckColorSample { get; set; }
        //public string CheckWO { get; set; }

    }


    public class KeyFirstBoxAuditListDetailSecond
    {
        public string MasterID { get; set; }
        public string QCtime { get; set; }
        public string ImproveActionPlan { get; set; }
        public string ImgUrl { get; set; }
        //public string Style { get; set; }
        //public string QCMan { get; set; }
        //public string AuditType { get; set; }
        //public string SubAuditType { get; set; }
        //public string Productqty { get; set; }
        //public string QCCount { get; set; }
        //public string PassLevel { get; set; }
        //public string AuditResult { get; set; }
        //public string AuditTimes { get; set; }
        //public string DefPercent { get; set; }
        //public string DefectName_top3 { get; set; }
        public string WsConfirm { get; set; }
        public string QAConfirm { get; set; }
        public string SIConfirm { get; set; }
    }

    public class FirstPassDetail
    {
        public string MasterID { get; set; }

        //由於將Customer改成Project NO  在sp_GetFirstPassYieldDetail存儲過程裏面改動繁瑣，
        //故在存儲過程裏面取數地方直接修改成ProjectNo
        public string Customer { get; set; }
        public string Date { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string CustStyle { get; set; }
        public string Class { get; set; }
        public int AcceptLimit { get; set; }
        public string QN { get; set; }
        public int QNQty { get; set; }

        public string Worker { get; set; }
        public string WorkerSum { get; set; }
        public string WorkerSumShow
        {
            get
            {
                if (WorkerSum == "0")
                {
                    return WorkerSum;
                }

                return WorkerSum + (string.IsNullOrEmpty(ImgUrl) ? "!" : "");
            }
        }

        public string Lt { get; set; }
        public int SizeQty { get; set; }
        public string Color { get; set; }
        public int SampleQty { get; set; }
        public string Time { get; set; }
        public string PF { get; set; }
        public int ReportNr { get; set; }

        public string PODCode { get; set; }
        public string PODName_EN { get; set; }
        public string PODName_CN { get; set; }
        public string PODName_BD { get; set; }
        //public string PODName
        //{
        //    //get
        //    //{
        //    //    return this.PODName_EN + System.Environment.NewLine + this.PODName_CN;

        //    //}
        //    get;
        //    set;
        //}
        public int SinglePODQty { get; set; }
        public int PODCodeCount { get; set; }

        public string DefectCode { get; set; }
        public string DefectName_EN { get; set; }
        public string DefectName_CN { get; set; }
        public string DefectName_BD { get; set; }
        //public string DefectName
        //{
        //    //get
        //    //{
        //    //    return this.DefectName_EN + System.Environment.NewLine + this.DefectName_CN;
        //    //}
        //    get;
        //    set;
        //}
        public int SingleDefectQty { get; set; }
        public int DefectCodeCount { get; set; }

        public string MajorAQL { get; set; }
        public string MajorLevel { get; set; }
        public int MajorSinglePiece { get; set; }
        public int MajorCountNr { get; set; }
        public int MajorNonCountNr { get; set; }
        public int MajorTotal { get; set; }

        public string MinorAQL { get; set; }
        public string MinorLevel { get; set; }
        public int MinorSinglePiece { get; set; }
        public int MinorCountNr { get; set; }
        public int MinorNonCountNr { get; set; }
        public int MinorTotal { get; set; }

        public string ImgUrl { get; set; }

    }

    public class FirstPassWorker
    {
        public string MasterID { get; set; }
        public string Date { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string CustStyle { get; set; }
        public string Class { get; set; }
        public int AcceptLimit { get; set; }
        public string QN { get; set; }
        public int QNQty { get; set; }

        public string Worker { get; set; }
        public string WorkerSum { get; set; }

        public string Lt { get; set; }
        public int SizeQty { get; set; }
        public string Color { get; set; }
        public int SampleQty { get; set; }
        public string Time { get; set; }
        public string PF { get; set; }
        public int ReportNr { get; set; }

        public string PODCode { get; set; }
        public string PODName_EN { get; set; }
        public string PODName_CN { get; set; }
        //public string PODName
        //{
        //    //get
        //    //{
        //    //    return this.PODName_EN + System.Environment.NewLine + this.PODName_CN;

        //    //}
        //    get;
        //    set;
        //}
        public int SinglePODQty { get; set; }
        public int PODCodeCount { get; set; }

        public string DefectCode { get; set; }
        public string DefectName_EN { get; set; }
        public string DefectName_CN { get; set; }

        public string Worker1 { get; set; }
        public string WorkerName { get; set; }
        public string WorkerNameEn { get; set; }
        public string WorkerNameBd { get; set; }

        public string W_procedure { get; set; }
        public string W_procedureName { get; set; }
        public string W_procedureNameEn { get; set; }
        public string W_procedureNameBd { get; set; }


        //public string DefectName
        //{
        //    //get
        //    //{
        //    //    return this.DefectName_EN + System.Environment.NewLine + this.DefectName_CN;
        //    //}
        //    get;
        //    set;
        //}
        //public int SingleDefectQty { get; set; }
        //public int DefectCodeCount { get; set; }

        //public string MajorAQL { get; set; }
        //public string MajorLevel { get; set; }
        //public int MajorSinglePiece { get; set; }
        //public int MajorCountNr { get; set; }
        //public int MajorNonCountNr { get; set; }
        //public int MajorTotal { get; set; }

        //public string MinorAQL { get; set; }
        //public string MinorLevel { get; set; }
        //public int MinorSinglePiece { get; set; }
        //public int MinorCountNr { get; set; }
        //public int MinorNonCountNr { get; set; }
        //public int MinorTotal { get; set; }

    }





    public partial class QC_ImproveActionPlan : BaseEntity
    { }

    public partial class QC_Master_Final : BaseEntity
    {
        /// <summary>
        /// Pass件數
        /// </summary>
        public int? PassQty
        {
            get
            {
                return this.QC_Detail_Finals.Where(p => p.QC_Light == 'P').Sum(p => p.LightCount);
            }
        }

        /// <summary>
        /// Fail件數
        /// </summary>
        public int? FailQty
        {
            get
            {
                return this.QC_Detail_Finals.Where(p => p.QC_Light == 'F').Count();
            }
        }

        /// <summary>
        /// 每個審查報表對應的疵點匯總信息
        /// </summary>
        public List<QAAuditReportConfirmDefect> DefectList
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("exec sp_GetQAAuditReportDefectList '{0}'", this.MasterID);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<QAAuditReportConfirmDefect>(SqlStr).ToList();
            }
        }
    }

    /// <summary>
    /// 用于顯示每個審查報表對應的疵點匯總信息
    /// </summary>
    public class QAAuditReportConfirmDefect
    {
        public string DefectCode { get; set; }
        public string DefectNameCN { get; set; }
        public string DefectNameEN { get; set; }
        public int DefectQty { get; set; }
        public string DefectFromWs { get; set; }
    }

    public partial class QC_Detail_Final : BaseEntity
    { }

    public partial class QC_Detail_Detail_Final : BaseEntity
    { }


    public class FirstPassQty
    {
        public string WorkShop { get; set; }
        public string QCTime { get; set; }
        public string DefectName_top6 { get; set; }

        //  WorkShop	QCTime	DefectName_top6
    }

    public class WeeklyDefectPointsComparison : BaseEntity
    {
        public string Factory { get; set; }
        public string WO { get; set; }
        public string WorkShop { get; set; }
        public string Line { get; set; }
        public string Project { get; set; }
        public string Style { get; set; }
        public string Color { get; set; }
        public string RWO { get; set; }

        public int InspectionQty { get; set; }
        public string InspectionDefectPoint { get; set; }
        public int InspectionCodeNub { get; set; }
        public int InspectionDefects_MajOrMinNub { get; set; }

        public int AuditQty { get; set; }
        public string AuditDefectPoint { get; set; }
        public int AuditCodeNub { get; set; }
        public string AuditCode_Per { get; set; }
        public int AuditDefect_Maj { get; set; }
        public int AuditDefect_Min { get; set; }

        public string AuditDefectPoint_New { get; set; }
        public int AuditCode_New_Nub { get; set; }
        public string AuditCode_New_Per { get; set; }
        public int AuditDefect_New_Maj { get; set; }
        public int AuditDefect_New_Min { get; set; }
        public string AuditDefect_New_MinPer { get; set; }
        public string AuditDefect_New_MajPer { get; set; }
        public string QC_time { get; set; }

        public string InlineInspector { get; set; }
        public string EndlineInspector { get; set; }
        public string MobileAuditor_A { get; set; }
        public string QualAuditor_A { get; set; }
        public string LineLeader_A { get; set; }
        public string Supervisor_A { get; set; }

    }

    public class WeeklyDefectPointsComparison_Sub1
    {
        public string DefectCode { get; set; }
    }

    public class WeeklyDefectPointsComparison_Sub2
    {
        public string DefectCode { get; set; }
    }

    public partial class Email : BaseEntity
    {

    }


    public partial class FirstPass_Header : BaseEntity
    {
    }

    public partial class FirstPass_Detail : BaseEntity
    {

    }

    public partial class FirstPass_AlertLogCategory : BaseEntity
    {

    }


    public partial class FirstPass_AlertLogDetail : BaseEntity
    {
        public override void AddNew()
        {
            base.AddNew();
            this.Sender = PH.Platform.Common.SysParamHelper.Instance.UserID;
        }
    }

    public partial class FirstPass_AlertLogHeader : BaseEntity
    {
        partial void OnIsCompletedChanged()
        {
            this.CompletedDate = (this.IsCompleted ?? false) ? DateTime.Now : new Nullable<DateTime>();
        }
    }
    public class StyleOptQualityProblemShootingReportResultByOptCode
    {      		
        public string OptCode{get; set;}
        public string OptName{get; set;}
        public string OptNameCN { get; set; }
    }


    public class StyleOptQualityProblemShootingReportResultByWF
    {
        public string WFID { get; set; }
        public string WFName { get; set; }
    }

    public class StyleOptQualityProblemShootingReportResult
    {
        public string Line { get; set; }
        public string QNStartDate { get; set; }
        public int? QNTotalDays { get; set; }
        public string OptCode { get; set; }
        public string OptName { get; set; }
        public string DefectPt { get; set; }
        public string DefectCount { get; set; }
        public string WFID { get; set; }
        public string WFName { get; set; }
        public string QCDate { get; set; }
        public int? ExamQty1 { get; set; }
        public int? PQty1 { get; set; }
        public int? FQty1 { get; set; }
        public string FPY1 { get; set; }
        public int? ExamQty2 { get; set; }
        public int? PQty2 { get; set; }
        public int? FQty2 { get; set; }
        public string FPY2 { get; set; }
        public int? ExamQty3 { get; set; }
        public int? PQty3 { get; set; }
        public int? FQty3 { get; set; }
        public string FPY3 { get; set; }
        public int? ExamQty4 { get; set; }
        public int? PQty4 { get; set; }
        public int? FQty4 { get; set; }
        public string FPY4 { get; set; }
        public int? ExamQty5 { get; set; }
        public int? PQty5 { get; set; }
        public int? FQty5 { get; set; }
        public string FPY5 { get; set; }
        public int? ExamQty6 { get; set; }
        public int? PQty6 { get; set; }
        public int? FQty6 { get; set; }
        public string FPY6 { get; set; }
        public string Project { get; set; }
        public string QN { get; set; }
        public string FAE { get; set; }
        public string TotalWF { get; set; }
        public string TotalOpt { get; set; }

    }



    //public partial class CustQC_Master : BaseEntity
    //{
    //    public override void AddNew()
    //    {
    //        base.AddNew();
    //        this.MasterID = Guid.NewGuid();
    //    }

    //    partial void OnQCCountChanged()
    //    {
    //        if (string.IsNullOrEmpty(this.AQLLevel)) return;

    //        AQLLevels AQLLevel = AQLLevels.AQL10;
    //        if (this.AQLLevel == "AQL 1.0") AQLLevel = AQLLevels.AQL10;
    //        else if (this.AQLLevel == "AQL 1.5") AQLLevel = AQLLevels.AQL15;
    //        else if (this.AQLLevel == "AQL 2.5") AQLLevel = AQLLevels.AQL25;
    //        else if (this.AQLLevel == "AQL 4.0") AQLLevel = AQLLevels.AQL40;
    //        else if (this.AQLLevel == "AQL 6.5") AQLLevel = AQLLevels.AQL65;

    //        this.AcceptQty = AQLHelper.GetAcceptQty(this.CurrentDataContext as MobileQCDataContext, this.QCCount ?? 0, AQLLevel);
    //        this.RejectQty = this.AcceptQty == 0 ? 0 : this.AcceptQty + 1;
    //    }

    //    partial void OnAQLLevelChanged()
    //    {
    //        if ((this.QCCount ?? 0) == 0) return;

    //        AQLLevels AQLLevel = AQLLevels.AQL10;
    //        if (this.AQLLevel == "AQL 1.0") AQLLevel = AQLLevels.AQL10;
    //        else if (this.AQLLevel == "AQL 1.5") AQLLevel = AQLLevels.AQL15;
    //        else if (this.AQLLevel == "AQL 2.5") AQLLevel = AQLLevels.AQL25;
    //        else if (this.AQLLevel == "AQL 4.0") AQLLevel = AQLLevels.AQL40;
    //        else if (this.AQLLevel == "AQL 6.5") AQLLevel = AQLLevels.AQL65;

    //        this.AcceptQty = AQLHelper.GetAcceptQty(this.CurrentDataContext as MobileQCDataContext, this.QCCount ?? 0, AQLLevel);
    //        this.RejectQty = this.AcceptQty == 0 ? 0 : this.AcceptQty + 1;
    //    }

    //    partial void OnMajorDefectQtyChanged()
    //    {
    //        if ((this.MajorDefectQty ?? 0) <= (this.AcceptQty ?? 0))
    //            this.QCResult = "Acc";
    //        else this.QCResult = "Rej";
    //    }
    //}
    //public partial class CustQC_Detail : BaseEntity
    //{
    //    public string DefectNameCN
    //    {
    //        get
    //        {
    //            if (this.CurrentDataContext == null)
    //            {
    //                this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
    //            }

    //            string SqlStr = string.Format("select DefectChineseName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
    //            return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
    //        }
    //    }
    //}

    public partial class QC_ReportInfo : BaseEntity { }


    //public partial class sp_GetExamListResult : PH.Platform.BO.BaseEntity { }

    public class sp_GetExamListResult
    {

        public string Factory { get; set; }

        public string Workshop { get; set; }

        public string Line { get; set; }

        public string Project { get; set; }

        public string WO { get; set; }

        public string WOc { get; set; }

        public string RWO { get; set; }

        public string QNNo { get; set; }

        public string Style { get; set; }

        public string W_Procedure { get; set; }

        public string Worker { get; set; }

        public DateTime QC_Time { get; set; }

        public string QCMan { get; set; }

        public int QCCount { get; set; }

        public int? PCount { get; set; }

        public int FCount { get; set; }

        public int UCount { get; set; }

        public int SCount { get; set; }

        public string FAE { get; set; }

        public string Active { get; set; }

        public string ReAduit { get; set; }

        public string ReAudit_Disp { get; set; }
    }

    public partial class QC_ExamPlanHeader : BaseEntity
    {

        //public string WorkShopShow
        //{
        //    get
        //    {
        //        if (this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() == 0) return null;
        //       return string.Join(",", this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Select(dr => dr.Workshop).OrderBy(dr => dr).Distinct().ToArray());

        //    }
        //}

        //header.QC_ExamPlanDetails.Where(p => p.Line != header.CustStyle)

        public bool QAChecked
        {
            get
            {
                return this.QC_ExamPlanDetails.Where(p => p.Line == this.CustStyle && (p.MQACheck ?? false)).Count() > 0;
            }
        }

        public bool QIChecked
        {
            get
            {
                return this.QC_ExamPlanDetails.Where(p => p.Line == this.CustStyle && (p.MQCCheck ?? false)).Count() > 0;
            }
        }

        public bool QIStep2Checked
        {
            get
            {
                return this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() != 0 &&
                       this.QC_ExamPlanDetails.Where(p => (p.IsConfirmQI ?? false) == false && p.Line != this.CustStyle).Count() == 0;
            }
        }

        public string QIStep2ConfirmerShow
        {
            get
            {

                return string.Join(",", this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle && !string.IsNullOrEmpty(p.ConfirmerQI)).Select(dr => dr.ConfirmerQI).Distinct().OrderBy(dr => dr).ToArray());
                //if (this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() == 0 ||
                //    this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle && string.IsNullOrEmpty(p.ConfirmerQI)).Count() > 0)
                //{
                //    return null;
                //}
                //else
                //{

                //    return this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).FirstOrDefault().ConfirmerQI;
                //}
            }
        }

        public string QIStep2ConfirmDateShow
        {
            get
            {
                return string.Join(",", this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle && !string.IsNullOrEmpty(p.ConfirmDateQI.ToString())).Select(dr => (Convert.ToDateTime(dr.ConfirmDateQI)).ToString("yyyy-MM-dd")).Distinct().OrderBy(dr => dr).ToArray());
                //if (this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() == 0 ||
                //    this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle && !p.ConfirmDateQI.HasValue).Count() > 0)
                //{
                //    return null;
                //}
                //else
                //{
                //    return this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).FirstOrDefault().ConfirmDateQI;
                //}
            }
        }

        public bool QAStep2Checked
        {
            get
            {
                return this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() != 0 &&
                       this.QC_ExamPlanDetails.Where(p => (p.IsConfirmQA ?? false) == false && p.Line != this.CustStyle).Count() == 0;
            }
        }

        public string QAStep2ConfirmerShow
        {
            get
            {
                if (this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() == 0 ||
                    this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle && string.IsNullOrEmpty(p.ConfirmerQA)).Count() > 0)
                {
                    return null;
                }
                else
                {
                    return this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).FirstOrDefault().ConfirmerQA;
                }
            }
        }

        public DateTime? QAStep2ConfirmDateShow
        {
            get
            {
                if (this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() == 0 ||
                    this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle && !p.ConfirmDateQA.HasValue).Count() > 0)
                {
                    return null;
                }
                else
                {
                    return this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).FirstOrDefault().ConfirmDateQA;
                }
            }
        }



        //public string QIConfirmerStep2Show
        //{
        //    get
        //    {

        //        this.QC_ExamPlanDetails.Where(p => (p.IsConfirmQI ?? false) == false && p.Line != this.CustStyle).Count() > 0;
        //        if (this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Count() == 0) return null;
        //        return string.Join(",", this.QC_ExamPlanDetails.Where(p => p.Line != this.CustStyle).Select(dr => dr.Workshop).OrderBy(dr => dr).Distinct().ToArray());

        //    }
        //}



    }
    public partial class QC_ExamPlanDetail : BaseEntity
    {

        public bool? SelectFlag { get; set; }


        public bool? QICheckStep1Show
        {
            get
            {
                var obj = this.QC_ExamPlanHeader.QC_ExamPlanDetails.FirstOrDefault(p => p.Line == this.QC_ExamPlanHeader.CustStyle && p.OptCode == this.OptCode);
                return obj == null ? null : obj.MQCCheck;
            }
        }

        public bool? QACheckStep1Show
        {
            get
            {
                var obj = this.QC_ExamPlanHeader.QC_ExamPlanDetails.FirstOrDefault(p => p.Line == this.QC_ExamPlanHeader.CustStyle && p.OptCode == this.OptCode);
                return obj == null ? null : obj.MQACheck;
            }
        }

    }

    public class QC_ExamPlanCustStyle
    {
        public string Factory { get; set; }
        public string Workshop { get; set; }
        public string CustStyle { get; set; }
        public string Line { get; set; }
    }
    public partial class QC_AuditQtyRange : BaseEntity
    {

    }


    public class QualExamLineDependent
    {
        public string FAE { get; set; }
        public string OptSeq { get; set; }
        public string Code { get; set; }
        public string WFCode { get; set; }
        public string WorkDesk { get; set; }
        public string Language_En { get; set; }
        public string Language_Cn { get; set; }
        public string Language_Bn { get; set; }
        public string Des_En { get; set; }
        public string Des_Cn { get; set; }
        public string Des_Bn { get; set; }
        public string Requirement_En { get; set; }
        public string Requirement_Cn { get; set; }
        public string Requirement_Bn { get; set; }

        public string MQACheck { get; set; }
        public string MQCCheck { get; set; }


        public string QAAssignedLine { get; set; }
        public string QIAssignedLine { get; set; }
        public string QALine1 { get; set; }
        public string QILine1 { get; set; }
        public string QALine2 { get; set; }
        public string QILine2 { get; set; }
        public string QALine3 { get; set; }
        public string QILine3 { get; set; }
        public string QALine4 { get; set; }
        public string QILine4 { get; set; }
        public string QALine5 { get; set; }
        public string QILine5 { get; set; }

        public string EN { get; set; }
        public string CN { get; set; }
        public string BD { get; set; }

    }

    public partial class QC_Detail_SizeAudit : BaseEntity { }
    public partial class QC_Detail_SizeAudit_Final : BaseEntity { }

    public partial class Num
    {

        public int No = 1;
        public int getNo
        {
            get { return No; }
            set { No++; }
        }

    }


    public partial class CustQCMaster : BaseEntity
    {




        partial void OnProjectNOChanged()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            }

            QC_AQLLevel obj = (this.CurrentDataContext as MobileQCDataContext).QC_AQLLevels.FirstOrDefault(p => p.ProjectNo == this.ProjectNO.Substring(0, 4));

            this.AQLMarjorDefectLevel = "";
            this.AQLMinorDefectLevel = "";
            this.AQLMarjorDefectAcceptQty = null;
            this.AQLMinorDefectAcceptQty = null;

            if (obj != null)
            {
                this.AQLMarjorDefectLevel = obj.AQLMarjorLevel;
                this.AQLMinorDefectLevel = obj.AQLMinorLevel;
                this.Customer = obj.Customer;
            }

            //this.Customer = (this.CurrentDataContext as MobileQCDataContext).QC_AQLLevels.FirstOrDefault(p => p.ProjectNo == this.ProjectNO.Substring(0, 4)).Customer??"";

        }

        partial void OnAQLMarjorDefectLevelChanged()
        {
            if ((this.SampleSizeQty ?? 0) == 0)
            {
                this.AQLMarjorDefectAcceptQty = null;
                return;
            }

            if (string.IsNullOrEmpty(this.AQLMarjorDefectLevel))
            {
                this.AQLMarjorDefectAcceptQty = null;
            }

            AQLLevels AQLLevel = AQLLevels.AQL10;
            if (this.AQLMarjorDefectLevel == "AQL 1.0") AQLLevel = AQLLevels.AQL10;
            else if (this.AQLMarjorDefectLevel == "AQL 0.65") AQLLevel = AQLLevels.AQL065;
            else if (this.AQLMarjorDefectLevel == "AQL 1.5") AQLLevel = AQLLevels.AQL15;
            else if (this.AQLMarjorDefectLevel == "AQL 2.5") AQLLevel = AQLLevels.AQL25;
            else if (this.AQLMarjorDefectLevel == "AQL 4.0") AQLLevel = AQLLevels.AQL40;
            else if (this.AQLMarjorDefectLevel == "AQL 6.5") AQLLevel = AQLLevels.AQL65;

            this.AQLMarjorDefectAcceptQty = AQLHelper.GetAcceptQty(this.CurrentDataContext as MobileQCDataContext, this.SampleSizeQty ?? 0, AQLLevel);
        }

        partial void OnAQLMinorDefectLevelChanged()
        {
            if ((this.SampleSizeQty ?? 0) == 0)
            {
                this.AQLMinorDefectAcceptQty = null;
                return;
            }

            if (string.IsNullOrEmpty(this.AQLMinorDefectLevel))
            {
                this.AQLMinorDefectAcceptQty = null;
            }

            AQLLevels AQLLevel = AQLLevels.AQL10;
            if (this.AQLMinorDefectLevel == "AQL 1.0") AQLLevel = AQLLevels.AQL10;
            else if (this.AQLMinorDefectLevel == "AQL 0.65") AQLLevel = AQLLevels.AQL065;
            else if (this.AQLMinorDefectLevel == "AQL 1.5") AQLLevel = AQLLevels.AQL15;
            else if (this.AQLMinorDefectLevel == "AQL 2.5") AQLLevel = AQLLevels.AQL25;
            else if (this.AQLMinorDefectLevel == "AQL 4.0") AQLLevel = AQLLevels.AQL40;
            else if (this.AQLMinorDefectLevel == "AQL 6.5") AQLLevel = AQLLevels.AQL65;

            this.AQLMinorDefectAcceptQty = AQLHelper.GetAcceptQty(this.CurrentDataContext as MobileQCDataContext, this.SampleSizeQty ?? 0, AQLLevel);
        }

        partial void OnSampleSizeQtyChanged()
        {
            if (!string.IsNullOrEmpty(this.AQLMarjorDefectLevel))
            {
                this.OnAQLMarjorDefectLevelChanged();
            }

            if (!string.IsNullOrEmpty(this.AQLMinorDefectLevel))
            {
                this.OnAQLMinorDefectLevelChanged();
            }

            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            }

            this.SampleSzie = (this.CurrentDataContext as MobileQCDataContext).QC_AuditQtyRanges.Where(p => p.Qty1 <= this.SampleSizeQty && p.Qty2 >= this.SampleSizeQty).Select(p => p.SQty).FirstOrDefault() ?? 0;
        }

        public int SeqNo { get; set; }

        public int CasingCriticalDefectQtyShow
        {
            get { return this.CustQCDetails.Where(p => p.DefectCode != null && p.DefectCode.StartsWith("CS")).Select(p => p.CriticalDefectQty ?? 0).Sum(); }
        }

        public int OptCriticalDefectQtyShow
        {
            get { return this.CustQCDetails.Where(p => p.DefectCode != null && !p.DefectCode.StartsWith("CS") && !p.DefectCode.StartsWith("MS")).Select(p => p.CriticalDefectQty ?? 0).Sum(); }
        }

        public int OptMarjorDefectQtyShow
        {
            get { return this.CustQCDetails.Where(p => p.DefectCode != null && !p.DefectCode.StartsWith("CS") && !p.DefectCode.StartsWith("MS")).Select(p => p.MarjorDefectQty ?? 0).Sum(); }
        }

        public int OptMinorDefectQtyShow
        {
            get { return this.CustQCDetails.Where(p => p.DefectCode != null && !p.DefectCode.StartsWith("CS") && !p.DefectCode.StartsWith("MS")).Select(p => p.MinorDefectQty ?? 0).Sum(); }
        }

        public int POMMarjorDefectQtyShow
        {
            get { return this.CustQCDetails.Where(p => p.DefectCode != null && p.DefectCode.StartsWith("MS")).Select(p => p.MarjorDefectQty ?? 0).Sum(); }
        }

        public int POMMinorDefectQtyShow
        {
            get { return this.CustQCDetails.Where(p => p.DefectCode != null && p.DefectCode.StartsWith("MS")).Select(p => p.MinorDefectQty ?? 0).Sum(); }
        }

        public string CasingAcceptShow
        {
            get { return string.IsNullOrEmpty(CasingRejectShow) ? "x" : ""; }
        }
        public string CasingRejectShow
        {
            get { return this.CasingCriticalDefectQtyShow > 0 ? "x" : ""; }
        }

        public string OptAcceptShow
        {
            get { return string.IsNullOrEmpty(OptRejectShow) ? "x" : ""; }
        }
        public string OptRejectShow
        {
            get
            {
                if (this.OptCriticalDefectQtyShow > 0) //有一個嚴重疵點時就直接拒收
                {
                    return "x";
                }
                else if (this.OptMarjorDefectQtyShow > (this.AQLMarjorDefectAcceptQty ?? 0) ) //主要疵點多過AQL Level Marjor的Acc數拒收
                {
                    return "x";
                }
                else if (this.OptMinorDefectQtyShow > (this.AQLMinorDefectAcceptQty??0)) //次要疵點多過AQL Level Minor的Acc數拒收
                {
                    return "x";
                }

                return "";
            }
        }

        public string POMAcceptShow
        {
            //get { return "x"; }
            get { return this.POMRejectShow == "x" ? "" : "x"; }
        }
        public string POMRejectShow
        {
            get { return this.POMMarjorDefectQtyShow > (this.AQLMarjorDefectAcceptQty??0) ? "x" : ""; }
        }

        public string OverallAcceptShow
        {
            get { return OverallRejectShow == "x" ? "" : "x"; }
            //get {
            //        if (OverallRejectShow == "x")
            //       {
            //        this._OverallAcceptShowFlag = "";
            //        return  "" ;
            //      }
            //     else
            //     {
            //         this._OverallAcceptShowFlag = "x";
            //         return "x";
            //     }
            //   }
            //set {  this._OverallAcceptShowFlag = this.OverallAcceptShow; }
        }
        public string OverallRejectShow
        {
            get
            {
                if (this.CasingRejectShow == "x" || this.OptRejectShow == "x" || this.POMRejectShow == "x")
                {
                    return "x";
                }
                return "";
            }
        }

        public string ShipmentDateShow
        {
            get
            {
                if (this.ShipmentDate == null || this.ShipmentDate == DateTime.MinValue) return "";
                return (this.ShipmentDate ?? DateTime.MinValue).ToString("dd-MMM", CultureInfo.CreateSpecificCulture("en-GB"));
            }
        }

    }

    public partial class CustQCDetail : BaseEntity
    {
        public string DefectNameCN
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("select DefectChineseName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
            }
        }

        public string DefectNameEN
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("select DefectEnglishName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
            }
        }

        public string DefectNameBD
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("select DefectThaiName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
            }
        }
    }

    public partial class CustQCMaster_Interim : BaseEntity
    {

        partial void OnProjectNOChanged()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            }

            QC_AQLLevel obj = (this.CurrentDataContext as MobileQCDataContext).QC_AQLLevels.FirstOrDefault(p => p.ProjectNo == this.ProjectNO.Substring(0, 4));

            this.AQLMarjorDefectLevel = "";
            this.AQLMinorDefectLevel = "";
            this.AQLMarjorDefectAcceptQty = null;
            this.AQLMinorDefectAcceptQty = null;

            if (obj != null)
            {
                this.AQLMarjorDefectLevel = obj.AQLMarjorLevel;
                this.AQLMinorDefectLevel = obj.AQLMinorLevel;
            }
            this.Customer = (this.CurrentDataContext as MobileQCDataContext).QC_AQLLevels.FirstOrDefault(p => p.ProjectNo == this.ProjectNO.Substring(0, 4)).Customer;

        }

        partial void OnAQLMarjorDefectLevelChanged()
        {
            if ((this.SampleSizeQty ?? 0) == 0)
            {
                this.AQLMarjorDefectAcceptQty = null;
                return;
            }

            if (string.IsNullOrEmpty(this.AQLMarjorDefectLevel))
            {
                this.AQLMarjorDefectAcceptQty = null;
            }

            AQLLevels AQLLevel = AQLLevels.AQL10;
            if (this.AQLMarjorDefectLevel == "AQL 1.0") AQLLevel = AQLLevels.AQL10;
            else if (this.AQLMarjorDefectLevel == "AQL 1.5") AQLLevel = AQLLevels.AQL15;
            else if (this.AQLMarjorDefectLevel == "AQL 2.5") AQLLevel = AQLLevels.AQL25;
            else if (this.AQLMarjorDefectLevel == "AQL 4.0") AQLLevel = AQLLevels.AQL40;
            else if (this.AQLMarjorDefectLevel == "AQL 6.5") AQLLevel = AQLLevels.AQL65;

            this.AQLMarjorDefectAcceptQty = AQLHelper.GetAcceptQty(this.CurrentDataContext as MobileQCDataContext, this.SampleSizeQty ?? 0, AQLLevel);
        }

        partial void OnAQLMinorDefectLevelChanged()
        {
            if ((this.SampleSizeQty ?? 0) == 0)
            {
                this.AQLMinorDefectAcceptQty = null;
                return;
            }

            if (string.IsNullOrEmpty(this.AQLMinorDefectLevel))
            {
                this.AQLMinorDefectAcceptQty = null;
            }

            AQLLevels AQLLevel = AQLLevels.AQL10;
            if (this.AQLMinorDefectLevel == "AQL 1.0") AQLLevel = AQLLevels.AQL10;
            else if (this.AQLMinorDefectLevel == "AQL 1.5") AQLLevel = AQLLevels.AQL15;
            else if (this.AQLMinorDefectLevel == "AQL 2.5") AQLLevel = AQLLevels.AQL25;
            else if (this.AQLMinorDefectLevel == "AQL 4.0") AQLLevel = AQLLevels.AQL40;
            else if (this.AQLMinorDefectLevel == "AQL 6.5") AQLLevel = AQLLevels.AQL65;

            this.AQLMinorDefectAcceptQty = AQLHelper.GetAcceptQty(this.CurrentDataContext as MobileQCDataContext, this.SampleSizeQty ?? 0, AQLLevel);
        }

        partial void OnSampleSizeQtyChanged()
        {
            if (!string.IsNullOrEmpty(this.AQLMarjorDefectLevel))
            {
                this.OnAQLMarjorDefectLevelChanged();
            }

            if (!string.IsNullOrEmpty(this.AQLMinorDefectLevel))
            {
                this.OnAQLMinorDefectLevelChanged();
            }
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            }

            this.SampleSize = (this.CurrentDataContext as MobileQCDataContext).QC_AuditQtyRanges.Where(p => p.Qty1 <= this.SampleSizeQty && p.Qty2 >= this.SampleSizeQty).Select(p => p.SQty).FirstOrDefault() ?? 0;
        }

        public int SeqNo { get; set; }

        public int CasingCriticalDefectQtyShow
        {
            get { return this.CustQCDetail_Interims.Where(p => p.DefectCode != null && p.DefectCode.StartsWith("CS")).Select(p => p.CriticalDefectQty ?? 0).Sum(); }
        }


        public int OptCriticalDefectQtyShow
        {
            get { return this.CustQCDetail_Interims.Where(p => p.DefectCode != null && !p.DefectCode.StartsWith("CS") && !p.DefectCode.StartsWith("MS")).Select(p => p.CriticalDefectQty ?? 0).Sum(); }
        }

        public int OptMarjorDefectQtyShow
        {
            get { return this.CustQCDetail_Interims.Where(p => p.DefectCode != null && !p.DefectCode.StartsWith("CS") && !p.DefectCode.StartsWith("MS")).Select(p => p.MarjorDefectQty ?? 0).Sum(); }
        }

        public int OptMinorDefectQtyShow
        {
            get { return this.CustQCDetail_Interims.Where(p => p.DefectCode != null && !p.DefectCode.StartsWith("CS") && !p.DefectCode.StartsWith("MS")).Select(p => p.MinorDefectQty ?? 0).Sum(); }
        }

        public int POMMarjorDefectQtyShow
        {
            get { return this.CustQCDetail_Interims.Where(p => p.DefectCode != null && p.DefectCode.StartsWith("MS")).Select(p => p.MarjorDefectQty ?? 0).Sum(); }
        }

        public int POMMinorDefectQtyShow
        {
            get { return this.CustQCDetail_Interims.Where(p => p.DefectCode != null && p.DefectCode.StartsWith("MS")).Select(p => p.MinorDefectQty ?? 0).Sum(); }
        }


        //Add by shulin 2019 - 09 - 24
        public string AQLMarjorDefectLevelShow
        {
            get { return string.IsNullOrEmpty(this._AQLMarjorDefectLevel) ? "-" : this._AQLMarjorDefectLevel; }
        }


        public string AQLMarjorDefectAcceptQtyShow
        {
            get { return string.IsNullOrEmpty(this._AQLMarjorDefectAcceptQty.ToString()) ? "-" : this._AQLMarjorDefectAcceptQty.ToString(); }
        }

        public string AQLMinorDefectLevelShow
        {
            get { return string.IsNullOrEmpty(this._AQLMinorDefectLevel) ? "-" : this._AQLMinorDefectLevel; }
        }

        public string AQLMinorDefectAcceptQtyShow
        {
            get { return string.IsNullOrEmpty(this._AQLMinorDefectAcceptQty.ToString()) ? "-" : this._AQLMinorDefectAcceptQty.ToString(); }
        }



        //public string CasingAcceptShow
        //{
        //    get { return string.IsNullOrEmpty(CasingRejectShow) ? "x" : ""; }
        //}
        //public string CasingRejectShow
        //{
        //    get { return this.CasingCriticalDefectQtyShow > 0 ? "x" : ""; }
        //}

        public string OptAcceptShow { get { return "-"; } }
        public string OptRejectShow { get { return "-"; } }

        public string POMAcceptShow
        {
            get { return this.POMRejectShow == "x" ? "" : "x"; }
        }
        public string POMRejectShow
        {
            get { return this.POMMarjorDefectQtyShow > this.AQLMarjorDefectAcceptQty ? "x" : ""; }
        }

        public string OverallAcceptShow { get { return "-"; } }
        public string OverallRejectShow { get { return "-"; } }

        public string ShipmentDateShow
        {
            get
            {
                if (this.ShipmentDate == null || this.ShipmentDate == DateTime.MinValue) return "";
                return (this.ShipmentDate ?? DateTime.MinValue).ToString("dd-MMM", CultureInfo.CreateSpecificCulture("en-GB"));
            }
        }
    }

    public partial class CustQCDetail_Interim : BaseEntity
    {

        public string DefectNameCN
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("select DefectChineseName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
            }
        }

        public string DefectNameEN
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("select DefectEnglishName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
            }
        }

        public string DefectNameBD
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
                }

                string SqlStr = string.Format("select DefectThaiName from [PH.FabricInspection]..PHQCDefect where PHDefectCode = '{0}'", this.DefectCode);
                return (this.CurrentDataContext as MobileQCDataContext).ExecuteQuery<string>(SqlStr).FirstOrDefault();
            }
        }
    }

    public partial class sp_CustQCDetailReportResult
    {
        public string ExamDateShow
        {
            get
            {
                if (this.ExamDate == null || this.ExamDate == DateTime.MinValue) return "";
                return (this.ExamDate ?? DateTime.MinValue).ToString("dd-MMM", CultureInfo.CreateSpecificCulture("en-GB"));
            }
            set { ; }
        }
    }

    public partial class sp_CustQCDetailInterimReportResult
    {
        public string ExamDateShow
        {
            get
            {
                if (this.ExamDate == null || this.ExamDate == DateTime.MinValue) return "";
                return (this.ExamDate ?? DateTime.MinValue).ToString("dd-MMM", CultureInfo.CreateSpecificCulture("en-GB"));
            }
            set { ; }
        }
    }

    public class sp_GetCustomerPOInfoResult
    {
        public string CustomerPO { get; set; }
        public string WO { get; set; }
        public string CustomerStyleNo { get; set; }
        public string ProductType { get; set; }
        //public string StyleNo { get; set; }
        public string Project { get; set; }
        public string Customer { get; set; }
        public string Factory { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Color { get; set; }
        public DateTime ShptDate { get; set; }

        public bool CheckFlag { get; set; }
    }

    public class AQLPerfDefectPointListReportClass
    {
        /// <summary>
        /// 组装线
        /// </summary>
        public string Workshop { get; set; }
        /// <summary>
        /// 拉
        /// </summary>
        public string Line { get; set; }
        /// <summary>
        /// 客户代号
        /// </summary>
        public string Customer { get; set; }
        /// <summary>
        /// 款式种类
        /// </summary>
        public string StyleType { get; set; }
        /// <summary>
        /// 客户款号
        /// </summary>
        public string Style { get; set; }
        /// <summary>
        /// 周
        /// </summary>
        public string Week { get; set; }
        /// <summary>
        /// 疵点1
        /// </summary>
        public string DefectQty1 { get; set; }
        /// <summary>
        /// 疵点2
        /// </summary>
        public string DefectQty2 { get; set; }
        /// <summary>
        /// 疵点3
        /// </summary>
        public string DefectQty3 { get; set; }
        /// <summary>
        /// 疵点4
        /// </summary>
        public string DefectQty4 { get; set; }
        /// <summary>
        /// 疵点5
        /// </summary>
        public string DefectQty5 { get; set; }
        /// <summary>
        /// 疵点6
        /// </summary>
        public string DefectQty6 { get; set; }
        /// <summary>
        /// 疵点7
        /// </summary>
        public string DefectQty7 { get; set; }
        /// <summary>
        /// 疵点8
        /// </summary>
        public string DefectQty8 { get; set; }
        /// <summary>
        /// 疵点9
        /// </summary>
        public string DefectQty9 { get; set; }
        /// <summary>
        /// 其他疵点
        /// </summary>
        public string OtherDefectQty { get; set; }
        /// <summary>
        /// 疵点种类
        /// </summary>
        public int DefectTypeCount { get; set; }
        /// <summary>
        /// 疵点总计-大
        /// </summary>
        public int TotalMarjorQty { get; set; }
        /// <summary>
        /// 疵点总计-细
        /// </summary>
        public int TotalMinorQty { get; set; }
        /// <summary>
        /// 已审定出货数量
        /// </summary>
        public int ShipmentQty { get; set; }
        /// <summary>
        /// 抽审定数-AQL级别
        /// </summary>
        public string AQLLevel { get; set; }
        /// <summary>
        /// 抽审定数-数量
        /// </summary>
        public int SampleQty { get; set; }
        /// <summary>
        /// 抽审定数-不合格（主要）数量
        /// </summary>
        public int RejectMarjorQty { get; set; }
        /// <summary>
        /// 抽审定数-不合格（次要）数量
        /// </summary>
        public int RejectMinorQty { get; set; }
        /// <summary>
        /// 审定次数
        /// </summary>
        public string AuditTime { get; set; }
        /// <summary>
        /// 审定结果
        /// </summary>
        public string AuditResult { get; set; }
        /// <summary>
        /// 疵点百分比（大）
        /// </summary>
        public decimal TotalMarjorPercent { get; set; }
        /// <summary>
        /// 疵点百分比（细）
        /// </summary>
        public decimal TotalMinorPercent { get; set; }
    }

    /// <summary>
    /// AQLPerfDefectPointListReport -- 子报表
    /// </summary>
    public class AQLPerfDefectPointListReportClass_Sub
    {

        /// <summary>
        /// Customer结合Flag字段可以区分“客户”与“车间”
        /// </summary>
        public int Flag { get; set; }
        /// <summary>
        ///  Customer结合Flag字段可以区分“客户”与“车间”
        /// </summary>
        public string Customer { get; set; }
        /// /// <summary>
        /// 疵点1
        /// </summary>
        public string DefectQty1 { get; set; }
        /// <summary>
        /// 疵点2
        /// </summary>
        public string DefectQty2 { get; set; }
        /// <summary>
        /// 疵点3
        /// </summary>
        public string DefectQty3 { get; set; }
        /// <summary>
        /// 疵点4
        /// </summary>
        public string DefectQty4 { get; set; }
        /// <summary>
        /// 疵点5
        /// </summary>
        public string DefectQty5 { get; set; }
        /// <summary>
        /// 疵点6
        /// </summary>
        public string DefectQty6 { get; set; }
        /// <summary>
        /// 疵点7
        /// </summary>
        public string DefectQty7 { get; set; }
        /// <summary>
        /// 疵点8
        /// </summary>
        public string DefectQty8 { get; set; }
        /// <summary>
        /// 疵点9
        /// </summary>
        public string DefectQty9 { get; set; }
        /// <summary>
        /// 其他疵点
        /// </summary>
        public string OtherDefectQty { get; set; }
        /// <summary>
        /// 疵点种类
        /// </summary>
        public int DefectTypeCount { get; set; }
        /// <summary>
        /// 疵点总计-大
        /// </summary>
        public int TotalMarjorQty { get; set; }
        /// <summary>
        /// 疵点总计-细
        /// </summary>
        public int TotalMinorQty { get; set; }
        /// <summary>
        /// 已审定出货数量
        /// </summary>
        public int ShipmentQty { get; set; }
        /// <summary>
        /// 抽审定数-AQL级别
        /// </summary>
        public string AQLLevel { get; set; }
        /// <summary>
        /// 抽审定数-数量
        /// </summary>
        public int SampleQty { get; set; }
        /// <summary>
        /// 抽审定数-不合格（主要）数量
        /// </summary>
        public int RejectMarjorQty { get; set; }
        /// <summary>
        /// 抽审定数-不合格（次要）数量
        /// </summary>
        public int RejectMinorQty { get; set; }
        /// <summary>
        /// 疵点百分比（大）
        /// </summary>
        public double TotalMarjorPercent { get; set; }
        /// <summary>
        /// 疵点百分比（细）
        /// </summary>
        public double TotalMinorPercent { get; set; }
    }

    public class FullInspectionDefectPointAnalyseClass
    {
        public string po_seq { get; set; }
        public string Customer { get; set; }
        //public int Year { get; set; }
        //public int Month { get; set; }
        public int Week { get; set; }
        public string StyleType { get; set; }
        public string Style { get; set; }
        public string CustomerPO { get; set; }
        public int ShipmentQty { get; set; }

        public int DefectQty1 { get; set; }
        public int DefectQty2 { get; set; }
        public int DefectQty3 { get; set; }
        public int DefectQty4 { get; set; }
        public int DefectQty5 { get; set; }
        public int DefectQty6 { get; set; }
        public int DefectQty7 { get; set; }
        public int DefectQty8 { get; set; }
        public int DefectQtyOther { get; set; }

        public int DefectPointTypeQty { get; set; }
        public int DefectPointTotalQty { get; set; }
        public decimal DefectPointPer { get; set; }


        public int CountLine { get; set; }
        public int SampleQty { get; set; }
        public int Examdays { get; set; }
        public int CountLot { get; set; }
        public int SampleRejQty { get; set; }
        public string ExamResult { get; set; }
        public string IsCompleted { get; set; }

        public string dLine { get; set; }
        public string dQN { get; set; }
        public string dAuditDate { get; set; }
        public int dSampleQty { get; set; }
        public int dLotSeq { get; set; }
        public int dSampleRejQty { get; set; }
        public string dExamResult { get; set; }

        public int QNQty { get; set; }
    }

    public class FullInspectionDefectPointAnalyseClass_Sub
    {
        public string Customer { get; set; }
        public int Week { get; set; }
        public string StyleType { get; set; }
        public string Style { get; set; }
        public string CustomerPO { get; set; }
        public int ShipmentQty { get; set; }

        public int DefectQty1 { get; set; }
        public int DefectQty2 { get; set; }
        public int DefectQty3 { get; set; }
        public int DefectQty4 { get; set; }
        public int DefectQty5 { get; set; }
        public int DefectQty6 { get; set; }
        public int DefectQty7 { get; set; }
        public int DefectQty8 { get; set; }
        public int DefectQtyOther { get; set; }

        public int DefectPointTypeQty { get; set; }
        public int DefectPointTotalQty { get; set; }
        public decimal DefectPointPer { get; set; }


        public int CountLine { get; set; }
        public int SampleQty { get; set; }
        //public int Examdays { get; set; }
        public int CountLot { get; set; }
        public int SampleRejQty { get; set; }
        //public string ExamResult { get; set; }
        //public string IsCompleted { get; set; }

        public string dLine { get; set; }
        public string dQN { get; set; }
        //public string dAuditDate { get; set; }
        public int dSampleQty { get; set; }
        //public int dLotSeq { get; set; }
        public int dSampleRejQty { get; set; }
        //public string dExamResult { get; set; }

        public int QNQty { get; set; }
    }


    public class sp_AQLRejectRecordToBeCompletedReportClass
    {
        public string Customer { get; set; }
        public string Line { get; set; }
        public string QN { get; set; }
        public string Style { get; set; }
        public int ShipmentQty { get; set; }
        public string AQLLevel { get; set; }
        public string SubAQLLevel { get; set; }
        public int ReadyExamQty { get; set; }
        public int LotNo { get; set; }
        public string QC_Time { get; set; }
        public int SampleQty { get; set; }

        public int MarjonRejQty { get; set; }
        public int MinorRejQty { get; set; }

        public string ExamResult { get; set; }
        public string ExamTimes { get; set; }
        public string HasReAudit { get; set; }

        public string InlineInspector { get; set; }
        public string EndlineInspector { get; set; }
        public string MobileAuditor_A { get; set; }
        public string QualAuditor_A { get; set; }
        public string LineLeader_A { get; set; }
        public string Supervisor_A { get; set; }
    }

    public class sp_WorkforceAnalyzeClass
    {
        //					
        public string Worker { get; set; }
        public string IsOnDuty { get; set; }
        public string WorkerName { get; set; }
        public int CheckQty { get; set; }
        public int PQty { get; set; }
        public int FQty { get; set; }
        public int UQty { get; set; }
        public int SQty { get; set; }
        public int CheckCount { get; set; }
        public int RejCount { get; set; }
        public int PassCount { get; set; }

        public int ExtraDefTtlCount { get { return CheckCount - PassCount; } }

        public double FPY { get; set; }

        public int DefectCount { get; set; }
        public string Defect { get; set; }
        public int ReAuditCount { get; set; }
        public int ReAuditPassCount { get; set; }
        public int OutstandingCount { get; set; }
        public int FPYRank { get; set; }

    }

    public class sp_WorkforceAnalyze_Sub_Class
    { 
        //		
        public string DefectCode { get; set; }
        public string DefectName_EN { get; set; }
        public string DefectName_CN { get; set; }
    }

    public class sp_AQLRejectRecordSummaryResult
    {
        public string Line { get; set; }
        public int CustCount { get; set; }
        public int WOCount { get; set; }
        public int QNCount { get; set; }
        public int StyleCount { get; set; }
        public int ShipmentQty { get; set; }
        public int ReadyExamQty { get; set; }
        public int ExamDays { get; set; }
        public int SampleQty { get; set; }
        public int ExamTimes { get; set; }
        public int MarjonRejQty { get; set; }
        public int MinorRejQty { get; set; }
        public int LotNo { get; set; }
        public string ExamResult { get; set; }

        public string InlineInspector { get; set; }
        public string EndlineInspector { get; set; }
        public string MobileAuditor_A { get; set; }
        public string QualAuditor_A { get; set; }
        public string LineLeader_A { get; set; }
        public string Supervisor_A { get; set; }
    }

    public class sp_AQLRejectRecordReportFooterResult
    {
        public int CountStyle { get; set; }
        public int SumShipmentQty { get; set; }
    }

    public class AQLDefectPointAnalyseReportClass
    {
        public string Customer { get; set; }
        public int Year { get; set; }
        public int Month { get; set; }
        public int Week { get; set; }
        public string StyleType { get; set; }
        public string Style { get; set; }
        public string CustomerPO { get; set; }
        public string WO { get; set; }
        public int ShipmentQty { get; set; }
        public string AQLLevel { get; set; }
        public decimal SampleRatio { get; set; }

        public int MarjorDefectQty1 { get; set; }
        public int MinorDefectQty1 { get; set; }
        public int MarjorDefectQty2 { get; set; }
        public int MinorDefectQty2 { get; set; }
        public int MarjorDefectQty3 { get; set; }
        public int MinorDefectQty3 { get; set; }
        public int MarjorDefectQty4 { get; set; }
        public int MinorDefectQty4 { get; set; }
        public int MarjorDefectQty5 { get; set; }
        public int MinorDefectQty5 { get; set; }
        //public int MarjorDefectQty6 { get; set; }
        //public int MinorDefectQty6 { get; set; }
        //public int MarjorDefectQty7 { get; set; }
        //public int MinorDefectQty7 { get; set; }
        //public int MarjorDefectQty8 { get; set; }
        //public int MinorDefectQty8 { get; set; }
        public int MarjorDefectQtyOther { get; set; }
        public int MinorDefectQtyOther { get; set; }

        public int DefectTypeQty { get; set; }
        public int MarjorDefectQty { get; set; }
        public int MinorDefectQty { get; set; }
        public decimal PerMarjorDefect { get; set; }
        public decimal PerMinorDefect { get; set; }

        public int CountLine { get; set; }
        public int ReadyAuditQty { get; set; }
        public int SampleQty { get; set; }
        public int ExamDays { get; set; }
        public int CountLot { get; set; }
        public int SampleMarjorRejQty { get; set; }
        public int SampleMinorRejQty { get; set; }
        public string ExamTimes { get; set; }
        public string ExamResult { get; set; }
        public string IsCompleted { get; set; }

        public string dLine { get; set; }
        public string dAuditDate { get; set; }
        public int dReadyAuditQty { get; set; }
        public int dSampleQty { get; set; }
        public int dLotSeq { get; set; }
        public int dSampleMarjorRejQty { get; set; }
        public int dSampleMinorRejQty { get; set; }
        public string dExamTimes { get; set; }
        public string dExamResult { get; set; }
        public string dQN { get; set; }
        public int dQNQty { get; set; }

        public int PDNShptQty { get; set; }
        public string Color { get; set; }
        public string ColorCount { get; set; }
        public string AuditLevel { get; set; }
        public string IsRed { get; set; }
        public string Seq { get; set; }

        


        public string DefectQty1Show { get { return this.MarjorDefectQty1.ToString() + " / " + this.MinorDefectQty1.ToString(); } set { } }
        public string DefectQty2Show { get { return this.MarjorDefectQty2.ToString() + " / " + this.MinorDefectQty2.ToString(); } set { } }
        public string DefectQty3Show { get { return this.MarjorDefectQty3.ToString() + " / " + this.MinorDefectQty3.ToString(); } set { } }
        public string DefectQty4Show { get { return this.MarjorDefectQty4.ToString() + " / " + this.MinorDefectQty4.ToString(); } set { } }
        public string DefectQty5Show { get { return this.MarjorDefectQty5.ToString() + " / " + this.MinorDefectQty5.ToString(); } set { } }
        //public string DefectQty6Show { get { return this.MarjorDefectQty6.ToString() + " / " + this.MinorDefectQty6.ToString(); } set { } }
        //public string DefectQty7Show { get { return this.MarjorDefectQty7.ToString() + " / " + this.MinorDefectQty7.ToString(); } set { } }
        //public string DefectQty8Show { get { return this.MarjorDefectQty8.ToString() + " / " + this.MinorDefectQty8.ToString(); } set { } }
        public string DefectQtyOtherShow { get { return this.MarjorDefectQtyOther.ToString() + " / " + this.MinorDefectQtyOther.ToString(); } set { } }

    }


    public class AQLDefectPointAnalyseReportClass_Sub
    {
        public string Customer { get; set; }
        //public int Year { get; set; }
        //public int Month { get; set; }
        //public int Week { get; set; }
        //public string StyleType { get; set; }
        //public string Style { get; set; }
        //public string CustomerPO { get; set; }
        //public string WO { get; set; }
        public int ShipmentQty { get; set; }
        public int PDNShptQty { get; set; }
        //public string AQLLevel { get; set; }
        //public decimal SampleRatio { get; set; }

        public int MarjorDefectQty1 { get; set; }
        public int MinorDefectQty1 { get; set; }
        public int MarjorDefectQty2 { get; set; }
        public int MinorDefectQty2 { get; set; }
        public int MarjorDefectQty3 { get; set; }
        public int MinorDefectQty3 { get; set; }
        public int MarjorDefectQty4 { get; set; }
        public int MinorDefectQty4 { get; set; }
        public int MarjorDefectQty5 { get; set; }
        public int MinorDefectQty5 { get; set; }
        //public int MarjorDefectQty6 { get; set; }
        //public int MinorDefectQty6 { get; set; }
        //public int MarjorDefectQty7 { get; set; }
        //public int MinorDefectQty7 { get; set; }
        //public int MarjorDefectQty8 { get; set; }
        //public int MinorDefectQty8 { get; set; }
        public int MarjorDefectQtyOther { get; set; }
        public int MinorDefectQtyOther { get; set; }

        public int DefectTypeQty { get; set; }
        public int MarjorDefectQty { get; set; }
        public int MinorDefectQty { get; set; }
        public decimal PerMarjorDefect { get; set; }
        public decimal PerMinorDefect { get; set; }

        public int CountLine { get; set; }
        public int ReadyAuditQty { get; set; }
        public int SampleQty { get; set; }
        //public int ExamDays { get; set; }
        //public int CountLot { get; set; }
        public int SampleMarjorRejQty { get; set; }
        public int SampleMinorRejQty { get; set; }
        //public string ExamTimes { get; set; }
        //public string ExamResult { get; set; }
        //public string IsCompleted { get; set; }

        //public string dLine { get; set; }
        //public string dAuditDate { get; set; }
        public int dReadyAuditQty { get; set; }
        public int dSampleQty { get; set; }
        //public int dLotSeq { get; set; }
        public int dSampleMarjorRejQty { get; set; }
        public int dSampleMinorRejQty { get; set; }
        //public string dExamTimes { get; set; }
        //public string dExamResult { get; set; }
        //public string dQN { get; set; }
        //public int dQNQty { get; set; }

        public string DefectQty1Show { get { return this.MarjorDefectQty1.ToString() + " / " + this.MinorDefectQty1.ToString(); } set { } }
        public string DefectQty2Show { get { return this.MarjorDefectQty2.ToString() + " / " + this.MinorDefectQty2.ToString(); } set { } }
        public string DefectQty3Show { get { return this.MarjorDefectQty3.ToString() + " / " + this.MinorDefectQty3.ToString(); } set { } }
        public string DefectQty4Show { get { return this.MarjorDefectQty4.ToString() + " / " + this.MinorDefectQty4.ToString(); } set { } }
        public string DefectQty5Show { get { return this.MarjorDefectQty5.ToString() + " / " + this.MinorDefectQty5.ToString(); } set { } }
        //public string DefectQty6Show { get { return this.MarjorDefectQty6.ToString() + " / " + this.MinorDefectQty6.ToString(); } set { } }
        //public string DefectQty7Show { get { return this.MarjorDefectQty7.ToString() + " / " + this.MinorDefectQty7.ToString(); } set { } }
        //public string DefectQty8Show { get { return this.MarjorDefectQty8.ToString() + " / " + this.MinorDefectQty8.ToString(); } set { } }
        public string DefectQtyOtherShow { get { return this.MarjorDefectQtyOther.ToString() + " / " + this.MinorDefectQtyOther.ToString(); } set { } }

    }

    /// <summary>
    /// Rtp2.3 AQL Control Perf Summary with diagram
    /// </summary>
    public class sp_CustQCPerformceSummaryReportResult
    {
        /// <summary>
        /// 年份
        /// </summary>
        public int Year { get; set; }
        /// <summary>
        /// 月份
        /// </summary>
        public int Month { get; set; }
        /// <summary>
        /// 周
        /// </summary>
        public string Week { get; set; }
        /// <summary>
        /// 檢查單數(審管批次數)
        /// </summary>
        public int ExamLotQty { get; set; }
        /// <summary>
        /// 通過單數
        /// </summary>
        public int PassLotQty { get; set; }
        /// <summary>
        /// 首通率(批次)%
        /// </summary>
        public double LotFPY { get; set; }
        /// <summary>
        /// 檢查件數
        /// </summary>
        public int ExamQty { get; set; }
        /// <summary>
        /// 通過走貨數
        /// </summary>
        public int PassShipmentQty { get; set; }
        /// <summary>
        /// 首通率(件數)%
        /// </summary>
        public double FPY { get; set; }
    }

    public class CustQCDefectCode
    {
        //PHDefectCode, DefectChineseName, DefectEnglishName, DefectThaiName 
        public string PHDefectCode { get; set; }
        public string DefectChineseName { get; set; }
        public string DefectEnglishName { get; set; }
        public string DefectThaiName { get; set; }

    }


    public class QCMasterFinalFPY
    {
        public string WorkShop { get; set; }
        public string Line { get; set; }
        public int CheckLots { get; set; }
        public int AcceptLots { get; set; }
        public decimal FPYPercent { get; set; }
    }

    /// <summary>
    /// GDAQLAuditChartReport
    /// </summary>
    public class sp_GDAQLAuditChartResult
    {
        /// <summary>
        ///  该字段用于显示Factory或者WorkShop
        /// </summary>
        public string FactoryOrWorkShop { get; set; }
        /// <summary>
        /// 月份
        /// </summary>
        public string Month { get; set; }
        /// <summary>
        /// 檢查單數(審管批次數)
        /// </summary>
        public int LotsQty { get; set; }
        /// <summary>
        /// 拒收數（Lots）
        /// </summary>
        public int LotsRejectQty { get; set; }
        /// <summary>
        /// 拒收率(Lots)%
        /// </summary>
        public decimal LotsPrecent { get; set; }
        /// <summary>
        /// 审定件數（Piece）
        /// </summary>
        public int PieceQty { get; set; }
        /// <summary>
        /// 通過走貨數（Piece）
        /// </summary>
        public int PieceRejectQty { get; set; }
        /// <summary>
        /// 拒收率(件數)%（Piece）
        /// </summary>
        public decimal PieceRejectPrecent { get; set; }
    }

    public partial class QC_AQLLevel : BaseEntity
    {

    }

    public partial class FullInspectionHeader : BaseEntity
    {



        public int FInspectionDateShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.InspectionDateShow.ToString())).Select(p => p.InspectionDateShow).Distinct().Count();
            }
        }

        public int FCheckPointSignedShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.CheckPointSigned)).Select(p => p.CheckPointSigned).Count();
            }
        }

        public int InspectionQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Select(p => p.ProductQty ?? 0).Sum();
            }
        }
        public DateTime? QNStartDate
        {
            get
            {
                return this.FullInspectionDetails.Select(p => p.InspectionDate).Min();
            }
        }


        public string ExamineQtySizeBdown
        {
            get
            {
                string Str = "Examine Qty Size B/down 審考尺碼分配件數 : ";
                var AList = this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.Size) && (dr.ProductQty ?? 0) != 0).GroupBy(dr => dr.Size).Select
                    (g => new
                    {
                        ASize = g.Key,
                        ProductQty = g.Sum(p => p.ProductQty)
                    }
                    ).OrderBy(p => p.ASize).ToList();

                foreach (var Aobj in AList)
                {
                    Str = Str + (string.IsNullOrEmpty(Aobj.ASize) ? " " : Aobj.ASize.ToString()) + ":" + Aobj.ProductQty.ToString() + ",";
                }
                Str = AList.Count > 0 ? Str.Substring(0, Str.Length - 1) + " = " + this.ProductQtyShow.ToString() + " pcs" : "";

                string Str2 = "Reinspected% 重審查% : " + (((DefectiveGarmentQtyShow ?? 0) + (ProductQtyShow ?? 0)) == 0 ? "0.00%" : Convert.ToDecimal(((DefectiveGarmentQtyShow ?? 0) * 1.00 / (DefectiveGarmentQtyShow + ProductQtyShow))).ToString("P"));
                string Str3 = "Check Pt Ave. 核對點平均值 : " + (FInspectionDateShow == 0 ? "0.00" : Math.Round(Convert.ToDecimal((FCheckPointSignedShow * 1.00 / FInspectionDateShow)), 2).ToString("N2"));
                return Str + "\r\n" + Str2 + "\r\n" + Str3;

            }
        }





        public string EndlineInspectorShow
        {
            get
            {
                if (this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.Inspector).Distinct().Count() > 0)
                {
                    string Str = string.Join(",", this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.Inspector).Distinct().ToArray());

                    return Str.Substring(0, (Str.Length - 1));
                }
                else { return ""; }
            }
        }


        public int? BoxNoShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && (dr.BoxNo ?? 0) != 0).Select(dr => dr.BoxNo).Count();
            }
        }

        public int? CheckPointSignedShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && dr.DataSeqNoShow != null).Select(dr => dr.DataSeqNoShow).Count();
            }
        }

        public int? SizeShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.Size)).Select(dr => dr.Size).Distinct().Count();
            }
        }

        public int? ProductQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.ProductQty).Sum();
            }
        }

        public int? DefectiveGarmentQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.DefectiveGarmentQty).Sum();
            }
        }

        public string DefectiveGarmentQtyPer
        {
            get
            {
                return (ProductQtyShow ?? 0) == 0 ? "0.00 %" : Math.Round(Convert.ToDecimal(DefectiveGarmentQtyShow * 1.00 / ProductQtyShow), 5).ToString("P");
            }
        }


        public int? RepairedShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && (dr.Repaired ?? false) == true).Select(dr => (dr.DefectiveGarmentQty ?? 0) - (dr.RejectQty ?? 0)).Sum();
            }
        }

        public int? RejectQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Select(dr => (dr.RejectQty ?? 0)).Sum();
            }
        }


        public int? CheckPointShow
        {
            get
            {
                return this.FullInspectionDetails.Select(dr => dr.CheckPoint).Sum();
            }
        }

        public int? PODCodeShow
        {
            get
            {
                //var aa = this.FullInspectionDetails.Where(dr => !string.IsNullOrEmpty(dr.PODCodeShow)).Select(dr => dr.PODCodeShow).ToList();
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.PODCodeShow)).Select(dr => dr.PODCodeShow).Distinct().Count();
            }
        }

        public int? DefectCodeShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.DefectCodeShow)).Select(dr => dr.DefectCodeShow).Distinct().Count();
            }
        }

        public int? DefectQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.DefectQty).Sum();
            }
        }


    }

    public partial class FullInspectionDetail : BaseEntity
    {
        public int? RecordNoShow { get; set; }


        public int? DataSeqNoShow { get; set; }

        public DateTime? InspectionDateShow { get; set; }
        public DateTime? InspectionDateSort { get; set; }
        public string SizeSort { get; set; }
        public string RepairedShow
        {
            get
            {
                return this.Repaired == true ? "√" : "";
            }
        }

        public int SortNO { get; set; }
        public string PODCodeShow { get; set; }
        public string PODNameShow { get; set; }
        public string DefectCodeShow { get; set; }
        public string DefectNameShow { get; set; }

    }

    public class FIS2ReworkGmtAtEndPhaseClass
    {
        public string Cust { get; set; }
        public string CustomerPO { get; set; }
        public string CustStyle { get; set; }
        public string ProjectNo { get; set; }
        public string QNNo { get; set; }
        public string ColorCode { get; set; }
        public string Fty { get; set; }
        public string Ws { get; set; }
        public string Line{ get; set; }
        public string InspectionDate { get; set; }
        public string Inspector { get; set; }
        public int QNQty { get; set; }
        public int InspectedQty { get; set; }
        public decimal NonInspectedPer { get; set; }
        public int ReworkedQty { get; set; }
        public decimal ReworkedPer { get; set; }
        public int FreqChkPt { get; set; }
        public string Teamleader { get; set; }

    
    }

    //public partial class FullInspectionHeader : BaseEntity
    //{



    //    public int FInspectionDateShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.InspectionDateShow.ToString())).Select(p => p.InspectionDateShow).Distinct().Count();
    //        }
    //    }

    //    public int FCheckPointSignedShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.CheckPointSigned)).Select(p => p.CheckPointSigned).Count();
    //        }
    //    }

    //    public int InspectionQtyShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Select(p => p.ProductQty ?? 0).Sum();
    //        }
    //    }
    //    public DateTime? QNStartDate
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Select(p => p.InspectionDate).Min();
    //        }
    //    }


    //    public string ExamineQtySizeBdown
    //    {
    //        get
    //        {
    //            string Str = "Examine Qty Size B/down 審考尺碼分配件數 : ";
    //            var AList = this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.Size) && (dr.ProductQty ?? 0) != 0).GroupBy(dr => dr.Size).Select
    //                (g => new
    //                {
    //                    ASize = g.Key,
    //                    ProductQty = g.Sum(p => p.ProductQty)
    //                }
    //                ).OrderBy(p => p.ASize).ToList();

    //            foreach (var Aobj in AList)
    //            {
    //                Str = Str + (string.IsNullOrEmpty(Aobj.ASize) ? " " : Aobj.ASize.ToString()) + ":" + Aobj.ProductQty.ToString() + ",";
    //            }
    //            Str = AList.Count > 0 ? Str.Substring(0, Str.Length - 1) + " = " + this.ProductQtyShow.ToString() + " pcs" : "";

    //            string Str2 = "Reinspected% 重審查% : " + (((DefectiveGarmentQtyShow ?? 0) + (ProductQtyShow ?? 0)) == 0 ? "0.00%" : Convert.ToDecimal(((DefectiveGarmentQtyShow ?? 0) * 1.00 / (DefectiveGarmentQtyShow + ProductQtyShow))).ToString("P"));
    //            string Str3 = "Check Pt Ave. 核對點平均值 : " + (FInspectionDateShow == 0 ? "0.00" : Math.Round(Convert.ToDecimal((FCheckPointSignedShow * 1.00 / FInspectionDateShow)), 2).ToString("N2"));
    //            return Str + "\r\n" + Str2 + "\r\n" + Str3;

    //        }
    //    }





    //    public string EndlineInspectorShow
    //    {
    //        get
    //        {
    //            if (this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.Inspector).Distinct().Count() > 0)
    //            {
    //                string Str = string.Join(",", this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.Inspector).Distinct().ToArray());

    //                return Str.Substring(0, (Str.Length - 1));
    //            }
    //            else { return ""; }
    //        }
    //    }


    //    public int? BoxNoShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && (dr.BoxNo ?? 0) != 0).Select(dr => dr.BoxNo).Count();
    //        }
    //    }

    //    public int? CheckPointSignedShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && dr.DataSeqNoShow != null).Select(dr => dr.DataSeqNoShow).Count();
    //        }
    //    }

    //    public int? SizeShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.Size)).Select(dr => dr.Size).Distinct().Count();
    //        }
    //    }

    //    public int? ProductQtyShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.ProductQty).Sum();
    //        }
    //    }

    //    public int? DefectiveGarmentQtyShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.DefectiveGarmentQty).Sum();
    //        }
    //    }

    //    public string DefectiveGarmentQtyPer
    //    {
    //        get
    //        {
    //            return (ProductQtyShow ?? 0) == 0 ? "0.00 %" : Math.Round(Convert.ToDecimal(DefectiveGarmentQtyShow * 1.00 / ProductQtyShow), 5).ToString("P");
    //        }
    //    }


    //    public int? RepairedShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && (dr.Repaired ?? false) == true).Select(dr => (dr.DefectiveGarmentQty ?? 0) - (dr.RejectQty ?? 0)).Sum();
    //        }
    //    }

    //    public int? RejectQtyShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Select(dr => (dr.RejectQty ?? 0)).Sum();
    //        }
    //    }


    //    public int? CheckPointShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Select(dr => dr.CheckPoint).Sum();
    //        }
    //    }

    //    public int? PODCodeShow
    //    {
    //        get
    //        {
    //            //var aa = this.FullInspectionDetails.Where(dr => !string.IsNullOrEmpty(dr.PODCodeShow)).Select(dr => dr.PODCodeShow).ToList();
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.PODCodeShow)).Select(dr => dr.PODCodeShow).Distinct().Count();
    //        }
    //    }


    //    public int? DefectCodeShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && !string.IsNullOrEmpty(dr.DefectCodeShow)).Select(dr => dr.DefectCodeShow).Distinct().Count();
    //        }
    //    }

    //    public int? DefectQtyShow
    //    {
    //        get
    //        {
    //            return this.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).Select(dr => dr.DefectQty).Sum();
    //        }
    //    }


    //}

    //public partial class FullInspectionDetail : BaseEntity
    //{
    //    public int? RecordNoShow { get; set; }


    //    public int? DataSeqNoShow { get; set; }

    //    public DateTime? InspectionDateShow { get; set; }
    //    public DateTime? InspectionDateSort { get; set; }
    //    public string SizeSort { get; set; }
    //    public string RepairedShow
    //    {
    //        get
    //        {
    //            return this.Repaired == true ? "√" : "";
    //        }
    //    }

    //    public int SortNO { get; set; }
    //    public string PODCodeShow { get; set; }
    //    public string PODNameShow { get; set; }
    //    public string DefectCodeShow { get; set; }
    //    public string DefectNameShow { get; set; }

    //}


    public class sp_MobileQARejectDetailClass
    {
        public string Line { get; set; }
        public string Project { get; set; }
        public string CustStyle { get; set; }
        public string AuditDate { get; set; }
        public string WFName { get; set; }
        public string OPTName { get; set; }
        public string ExamQty { get; set; }
        public string FailQty { get; set; }
        public string FailDefectName { get; set; }
        public string OptCode { get; set; }

    }
    public class sp_QCManWorkLoadClass
    {
        public string Factory { get; set; }
        public string Auditor { get; set; }
        public int WorkLoadRank { get; set; }
        public decimal TargetAuditPer { get; set; }
        public int FirstAuditCount { get; set; }
        public int ReAduitCount { get; set; }
        
        public int TotalAudit { get; set; }
        public int TargetAuditCount { get; set; }


     }
    


    public class sp_GetExamDataList_V1Class
    {
															
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Project { get; set; }
        public string QN { get; set; }
        public int QNQty { get; set; }
        public string Style { get; set; }
        public string Worker { get; set; }
        public string W_Procedure { get; set; }
        public string StartDate { get; set; }
        public string LastDate { get; set; }
        public int ReAuditCount { get; set; }
        public int ReAuditQty { get; set; }
        public int DefectCount { get; set; }

        public string Defects { get; set; }
        public string QCMan { get; set; }

        public string ChooseType { get; set; }
        


    }



    public static class PredicateBuilder
    {
        public static Expression<Func<T, bool>> True<T>() { return f => true; }
        public static Expression<Func<T, bool>> False<T>() { return f => false; }

        public static Expression<Func<T, bool>> Or<T>(this Expression<Func<T, bool>> expr1,
                                                            Expression<Func<T, bool>> expr2)
        {
            var invokedExpr = Expression.Invoke(expr2, expr1.Parameters.Cast<Expression>());
            return Expression.Lambda<Func<T, bool>>
                  (Expression.Or(expr1.Body, invokedExpr), expr1.Parameters);
        }

        public static Expression<Func<T, bool>> And<T>(this Expression<Func<T, bool>> expr1,
                                                             Expression<Func<T, bool>> expr2)
        {
            var invokedExpr = Expression.Invoke(expr2, expr1.Parameters.Cast<Expression>());
            return Expression.Lambda<Func<T, bool>>
                  (Expression.And(expr1.Body, invokedExpr), expr1.Parameters);
        }


    }

    public class sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop
    {
        public string FactoryFlag { get; set; }
        public string WorkShop { get; set; }
        public string xh { get; set; }
    }

    public class sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs
    {
        public string FactoryFlag { get; set; }
        public string FactoryByLotByPcs { get; set; }
    }

    public class sp_AQLAuditFPYSupplementSheetOfRpt22aTips
    {
        public string FactoryFlag { get; set; }
        public string Tips { get; set; }
    }

    public class sp_AQLAuditFPYSupplementSheetOfRpt22a
    {
        public string FactoryFlag { get; set; }
        public string SeqNo { get; set; }
        public string factory1 { get; set; }
        public string WorkShop1 { get; set; }
        public string Line1 { get; set; }
        public string ByLot1 { get; set; }
        public string LotRank1 { get; set; }
        public string ByPcs1 { get; set; }
        public string PcsRank1 { get; set; }

        public string factory2 { get; set; }
        public string WorkShop2 { get; set; }
        public string Line2 { get; set; }
        public string ByLot2 { get; set; }
        public string LotRank2 { get; set; }
        public string ByPcs2 { get; set; }
        public string PcsRank2 { get; set; }

        public string factory3 { get; set; }
        public string WorkShop3 { get; set; }
        public string Line3 { get; set; }
        public string ByLot3 { get; set; }
        public string LotRank3 { get; set; }
        public string ByPcs3 { get; set; }
        public string PcsRank3 { get; set; }

        public string factory4 { get; set; }
        public string WorkShop4 { get; set; }
        public string Line4 { get; set; }
        public string ByLot4 { get; set; }
        public string LotRank4 { get; set; }
        public string ByPcs4 { get; set; }
        public string PcsRank4 { get; set; }

        public string factory5 { get; set; }
        public string WorkShop5 { get; set; }
        public string Line5 { get; set; }
        public string ByLot5 { get; set; }
        public string LotRank5 { get; set; }
        public string ByPcs5 { get; set; }
        public string PcsRank5 { get; set; }

        public string factory6 { get; set; }
        public string WorkShop6 { get; set; }
        public string Line6 { get; set; }
        public string ByLot6 { get; set; }
        public string LotRank6 { get; set; }
        public string ByPcs6 { get; set; }
        public string PcsRank6 { get; set; }

    }

    public class Sp_QCAduditSummaryReport
    {
        public string Customer { get; set; }
        public string CustStyle { get; set; }
        public int LotSizeQty { get; set; }
        public int SampleSize { get; set; }
        public string MarjorDefectQty1 { get; set; }
        public string MarjorDefectQty2 { get; set; }
        public string MarjorDefectQty3 { get; set; }
        public string MarjorDefectQty4 { get; set; }
        public string MarjorDefectQty5 { get; set; }
        public string MarjorDefectQty6 { get; set; }
        public string MarjorDefectQty7 { get; set; }
        public string MarjorDefectQty8 { get; set; }
        public string MarjorDefectQty9 { get; set; }
        public string MarjorDefectQty10 { get; set; }
        public string MarjorDefectQtyOther { get; set; }
        public int DefecttiveGatTotal { get; set; }
        public decimal DefecttiveGatPer { get; set; }
    }

    public class FullInSpectionPerTopDefectPoints
    {
        public int SeqNo { get; set; }
        public string DefectCode { get; set; }
        public int DefectSum { get; set; }
        public string DefectNameEN { get; set; }
        public string DefectNameCN { get; set; }
        public string DefectNameBD { get; set; }
    }


    public class FullInSpectionPerDefectPointsDetail
    {
        public string Factory { get; set; }
        public int SeqNo { get; set; }
        public string Line { get; set; }
        public string CustCode { get; set; }
        public string WorkShop { get; set; }
        public string LWO { get; set; }
        public string StyleNo { get; set; }
        public int QNQty { get; set; }
        public int DefectTotal { get; set; }
        public int DefectTypeCount { get; set; }
        public string StyleType { get; set; }
        public decimal DefectPer { get; set; }
        public decimal DefectTop1Per { get; set; }
        public int Year { get; set; }
        public int Month { get; set; }
        public int Week { get; set; }
        public int FullInspectionHeader { get; set; }
        public int ProductQty { get; set; }
        public int DefectiveGarmentQty { get; set; }
        public int MarjorDefectQty1 { get; set; }
        public int MarjorDefectQty2 { get; set; }
        public int MarjorDefectQty3 { get; set; }
        public int MarjorDefectQty4 { get; set; }
        public int MarjorDefectQty5 { get; set; }
        public int MarjorDefectQty6 { get; set; }
        public int MarjorDefectQty7 { get; set; }
        public int MarjorDefectQty8 { get; set; }
        public int MarjorDefectQty9 { get; set; }
        public int otherDefectQty { get; set; }
        public string PerGrade { get; set; }
    }

    public class FullInSpectionPerDefectPointsSummary
    {

        public string CustCodeOrWOrkShop { get; set; }
        public int SubCustCodeOrWOrkShopType { get; set; }
        public int SortType { get; set; }
        public decimal DefectTotal { get; set; }
        public decimal DefectTop1Per { get; set; }
        public decimal DefectiveGarmentQtyPer { get; set; }
        public int ProductQty { get; set; }
        public int DefectiveGarmentQty { get; set; }

        public int MarjorDefectQty1 { get; set; }
        public int MarjorDefectQty2 { get; set; }
        public int MarjorDefectQty3 { get; set; }
        public int MarjorDefectQty4 { get; set; }
        public int MarjorDefectQty5 { get; set; }
        public int MarjorDefectQty6 { get; set; }
        public int MarjorDefectQty7 { get; set; }
        public int MarjorDefectQty8 { get; set; }
        public int MarjorDefectQty9 { get; set; }
        public int otherDefectQty { get; set; }
        public string PerGrade { get; set; }
    }

    public class FullInspectionFourDefectClass
    {
        public string Factory { get; set; }
        public string WorkShop { get; set; }
        public int? ProductQty { get; set; }
        public string AYear { get; set; }
        public string TimeType { get; set; }
        public string Flag { get; set; }
        public int? TtlDefectPsc { get; set; }
        public int? DefectCodeQty1 { get; set; }
        public int? DefectCodeRank1 { get; set; }
        public int? DefectCodeQty2 { get; set; }
        public int? DefectCodeRank2 { get; set; }
        public int? DefectCodeQty3 { get; set; }
        public int? DefectCodeRank3 { get; set; }
        public int? DefectCodeQty4 { get; set; }
        public int? DefectCodeRank4 { get; set; }

        public decimal? DefectCodePer1
        {
            get
            {
                if (string.IsNullOrEmpty(ProductQty.ToString()) || string.IsNullOrEmpty(DefectCodeQty1.ToString())) { return null; }
                else
                {
                    return Math.Round(Convert.ToDecimal((DefectCodeQty1 ?? 0) * 100.00 / (ProductQty ?? 0)), 2);
                }

            }
        }

        public decimal? DefectCodePer2
        {
            get
            {
                if (string.IsNullOrEmpty(ProductQty.ToString()) || string.IsNullOrEmpty(DefectCodeQty2.ToString())) { return null; }
                else
                {
                    return Math.Round(Convert.ToDecimal((DefectCodeQty2 ?? 0) * 100.00 / (ProductQty ?? 0)), 2);
                }

            }
        }
        public decimal? DefectCodePer3
        {
            get
            {
                if (string.IsNullOrEmpty(ProductQty.ToString()) || string.IsNullOrEmpty(DefectCodeQty3.ToString())) { return null; }
                else
                {
                    return Math.Round(Convert.ToDecimal((DefectCodeQty3 ?? 0) * 100.00 / (ProductQty ?? 0)), 2);
                }

            }
        }

        public decimal? DefectCodePer4
        {
            get
            {
                if (string.IsNullOrEmpty(ProductQty.ToString()) || string.IsNullOrEmpty(DefectCodeQty4.ToString())) { return null; }
                else
                {
                    return Math.Round(Convert.ToDecimal((DefectCodeQty4 ?? 0) * 100.00 / (ProductQty ?? 0)), 2);
                }

            }
        }

    }

    public partial class FourDefectCode : BaseEntity
    {


    }


    public partial class FinalAuditPlanList : BaseEntity
    {
        public string QNNoShow
        {
            get
            {
                return string.Format("{0}-{1}-{2}-{3}", this.WO, this.WOc, this.RWO, this.QNNo);
            }
        }
    }

    public partial class AQLAuditor : BaseEntity
    {

    }

    public partial class AuditExamSetup : BaseEntity
    {

    }


    public class FtyWsLine
    {
        public string Fty { get; set; }
        public string Ws { get; set; }
        public string Line { get; set; }
    }
}

