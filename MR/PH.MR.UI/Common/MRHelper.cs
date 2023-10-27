using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using System.Data;
using System.Windows.Forms;
using System.Diagnostics;
using System.Reflection;
using DevExpress.XtraReports.UI;
using DevExpress.XtraReports.Native;
using System.IO;
using DevExpress.XtraPrinting;
using PH.MR.BO;
using System.Data.SqlClient;
using System.Linq;


namespace PH.MR.UI
{
    public class MRHelper
    {
        public MRHelper()
        {
            this._phReportAction = PHReportAction.None;
            //MessageBox.Show("MRHelper1");
            this._ftpIP = PH.MR.BO.Config.AS400IP;
            //MessageBox.Show("MRHelper2");

            InitValue();

        }
        private MRDataContext MRContext;
        private string MRContextConnectString;
        private void InitValue()
        {
            MRContext = PH.Platform.BO.ContextBuilder.CreateContext<MRDataContext>();
            MRContextConnectString = MRContext.Connection.ConnectionString;

            this._selectRWOQN = false;
            this._generateDataStatus = GenerateDataStatus.Progressing;
            this._generateTips = "";
            this._Draft = false;
            this._printAgain = PrintAgainOption.None;
            this._hasPrintedReport = HasPrintedReport.None;
            this._maxVersion = -1;
            this._compareOption = PHCompareOption.None;
            this._hasSaveTempTable = false;

            _progressValue = 0;
            _progressValue_Insert = 0;
            _generateMax = 22;//save version
            _generateInsertMax = 10000;
        }

        #region fields

        public XtraReport _report = null;

        /// <summary>
        /// 已经打印的报表
        /// </summary>
        private HasPrintedReport _hasPrintedReport;
        public HasPrintedReport hasPrintedReport
        {
            get { return _hasPrintedReport; }
            set { _hasPrintedReport = value; }
        }

        /// <summary>
        /// RWO use
        /// </summary>
        private PrintAgainOption _printAgain;
        public PrintAgainOption PrintAgain
        {
            get { return _printAgain; }
            set { _printAgain = value; }
        }

        private bool _selectRWOQN;
        public bool SelectRWOQN
        {
            get { return _selectRWOQN; }
            set { _selectRWOQN = value; }
        }

        #region generate or save data
        private GenerateDataStatus _generateDataStatus;
        public GenerateDataStatus GenerateDataStatus
        {
            get { return _generateDataStatus; }
            set { _generateDataStatus = value; }
        }

        private string _generateTips;
        public string GenerateTips
        {
            get { return _generateTips; }
        }

        private int _progressValue;
        public int ProgressValue
        {
            get { return _progressValue; }
        }

        private int _progressValue_Insert;
        public int ProgressValue_Insert
        {
            get { return _progressValue_Insert; }
        }

        private int _generateMax;
        public int GenerateMax
        {
            get { return _generateMax; }
        }

        private int _generateInsertMax;
        public int GenerateInsertMax
        {
            get { return _generateInsertMax; }
        }

        #endregion

        private int _dt;
        public int DT
        {
            get { return _dt; }
            set { _dt = value; }
        }

        private string _tm;
        public string TM
        {
            get { return _tm; }
            set { _tm = value; }
        }

        private string _jobn;
        public string JOBN
        {
            get { return _jobn; }
            set { _jobn = value; }
        }

        private string _jobnNew;
        public string JOBNNew
        {
            get { return _jobnNew; }
            set { _jobnNew = value; }
        }

        private string _FilteCondition;
        public string FilteCondition
        {
            get { return this._FilteCondition; }
            set { this._FilteCondition = value; }
        }

        private PHPrintReportOption _ReportOption;
        public PHPrintReportOption ReportOption
        {
            get { return this._ReportOption; }
            set
            {
                this._ReportOption = value;
            }
        }

        private DataTable _WorkDataTable;
        public DataTable WorkDataTable
        {
            get { return this._WorkDataTable; }
            //set { this._WorkDataTable = value; }
        }

        private DataSet _workDataSet;
        public DataSet WorkDataSet
        {
            get { return _workDataSet; }
        }

        private DataAction _dataAction;
        public DataAction dataAction
        {
            get { return _dataAction; }
            set { _dataAction = value; }
        }

        private PHReportAction _phReportAction;
        public PHReportAction phReportAction
        {
            get { return _phReportAction; }
            set { _phReportAction = value; }
        }

        private PHCompareOption _compareOption;
        public PHCompareOption CompareOption
        {
            get { return _compareOption; }
            set { _compareOption = value; }
        }


        #region version
        private string _dept;
        public string Dept
        {
            get { return _dept; }
            set { _dept = value; }
        }

        private bool _pringMRHistory = false;
        private int _printVersion;
        public int PrintVersion
        {
            get { return _printVersion; }
            set
            {
                _printVersion = value;
                this._pringMRHistory = _printVersion != -1;
            }
        }

        private int _maxVersion;
        public int MaxVersion
        {
            get { return _maxVersion; }
            set { _maxVersion = value; }
        }

        private int _deptVersion;
        public int DeptVersion
        {
            get { return _deptVersion; }
            set { _deptVersion = value; }
        }

        //table MR_MaxVersionNo.FID
        private int _FID_Version;
        public int FID_Version
        {
            get { return _FID_Version; }
            set { _FID_Version = value; }
        }

        private string _VersionDescription;
        public string VersionDescription
        {
            get { return _VersionDescription; }
            set { _VersionDescription = value; }
        }

        private List<MR_Version> _versions;
        public List<MR_Version> Versions
        {
            get { return _versions; }
            set { _versions = value; }
        }

        private string _tempVersionJOBN;
        public string TempVersionJOBN
        {
            get { return _tempVersionJOBN; }
            set { _tempVersionJOBN = value; }
        }

        private bool _hasSaveTempTable;
        #endregion

        private int _exportIndex;
        public int exportIndex
        {
            get { return _exportIndex; }
            set { _exportIndex = value; }
        }

        private string _cono;
        public string CONO
        {
            get { return _cono; }
            set { _cono = value; }
        }

        private string _ordn;
        public string Ordn
        {
            get { return _ordn; }
            set { _ordn = value; }
        }
        private string _project;
        public string Project
        {
            get { return _project; }
            set { _project = value; }
        }
        private string _ftpIP;

        private string _WorkOrders;

        private string _Preparedby;
        private string _Confirmedby;
        private string _Approvedby;
        private bool _Draft = false;

        static readonly PrintingSystemCommand[] exportCommands = new PrintingSystemCommand[] {
                PrintingSystemCommand.ExportPdf,
                PrintingSystemCommand.ExportHtm,
                PrintingSystemCommand.ExportTxt,
                PrintingSystemCommand.ExportCsv,
                PrintingSystemCommand.ExportMht,
                PrintingSystemCommand.ExportXls,
                PrintingSystemCommand.ExportRtf,
                PrintingSystemCommand.ExportGraphic

            };
        #endregion

        #region Get Data

        public virtual void PrepareData()
        {
            InitValue();

            //this._generateTips = "Clear History Data";
            this._generateTips = "Generate MR Data...";
            ClearHistoryData();
            //this._generateTips = "Generate MR Data";
            ActionFTP();
        }

        private void ClearHistoryData()
        {
            string sSQL = string.Format("CALL ZPHLIB_AUL.SP_MR_Clear({0})", this._jobn);
            PH.MR.BO.DB.AS400DB.Execute(sSQL);
        }

        private void GetReportData()
        {
            //20061128 09:12:18-> 2006112809.1218
            if (this._hasPrintedReport == HasPrintedReport.None)
                this._jobnNew = DateTime.Now.ToString("yyyyMMddHH.mmss");

            if (this._pringMRHistory)
            {
                //RunSumStoreProcedure_MRHistory();
                GetMRReportData_MRHistory();
            }
            else
            {
                RunSumStoreProcedure();
                GetMRReportData();
            }
            this.GetSOSSData();
        }

        private void RunSumStoreProcedure()
        {
            _Draft = CheckIsDraft();
            string sSQL;
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    if ((this._hasPrintedReport & HasPrintedReport.MR_SumListing) == HasPrintedReport.MR_SumListing) return;

                    sSQL = string.Format("CALL ZPHLIB_AUL.SP_MRSUM1_NET('{0}','{1}',{2},{3})",
                           this._cono,
                           this._project,
                           this._jobn,
                           this._jobnNew);

                    PH.MR.BO.DB.AS400DB.Execute(sSQL);
                    this._hasPrintedReport |= HasPrintedReport.MR_SumListing;
                    break;
                case PHPrintReportOption.SumListingCMT:
                    goto case PHPrintReportOption.SumListing;

                case PHPrintReportOption.SumBreakDownListing:
                    if ((this._hasPrintedReport & HasPrintedReport.MR_SumBreakDownListing) == HasPrintedReport.MR_SumBreakDownListing) return;

                    //string cono = this._cono;
                    //sSQL = string.Format("select distinct cono72 from ault4f1.php72t where cono72='{0}' and cuso72='{1}' and jobn72={2} and word72>''",
                    //    this._cono, this.Project, this.JOBN);
                    //object obj = PH.MR.BO.DB.AS400DB.GetScalar(sSQL);
                    //_Draft = obj == null;

                    sSQL = string.Format("CALL ZPHLIB_AUL.SP_MRSUM2_NET('{0}','{1}',{2},{3})",
                           this._cono,
                           this._project,
                           this._jobn,
                           this._jobnNew);

                    PH.MR.BO.DB.AS400DB.Execute(sSQL);
                    this._hasPrintedReport |= HasPrintedReport.MR_SumBreakDownListing;
                    break;
                case PHPrintReportOption.SumBreakDownListingCMT:
                    goto case PHPrintReportOption.SumBreakDownListing;
                case PHPrintReportOption.DetailListing:
                    if (((this._hasPrintedReport & HasPrintedReport.MR_DetailListing) == HasPrintedReport.MR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.RMR_DetailListing) == HasPrintedReport.RMR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) == HasPrintedReport.QN_DetailListing)
                       ) return;

                    sSQL = string.Format("CALL ZPHLIB_AUL.SP_MRSUM3_NET('{0}','{1}',{2},{3})",
                           this._cono,
                           this._project,
                           this._jobn,
                           this._jobnNew);

                    PH.MR.BO.DB.AS400DB.Execute(sSQL);
                    //this._hasPrintedReport |= HasPrintedReport.MR_DetailListing;
                    break;
                case PHPrintReportOption.DetailListingCMT:
                    goto case PHPrintReportOption.DetailListing;
                case PHPrintReportOption.HSCodeDetailListing:
                case PHPrintReportOption.HSCodeSummaryListing:
                    goto case PHPrintReportOption.SumBreakDownListing;
                default:
                    sSQL = "";
                    break;
            }
        }

        private void RunSumStoreProcedure_MRHistory()
        {
            string sSQL;
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    if ((this._hasPrintedReport & HasPrintedReport.MR_SumListing) == HasPrintedReport.MR_SumListing) return;

                    sSQL = string.Format("exec [PHGDB2].dbo.SP_MRSUM1_Net_History '{0}','{1}',{2}",
                           this._cono,
                           this._project,
                           this._printVersion);

                    PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
                    this._hasPrintedReport |= HasPrintedReport.MR_SumListing;
                    break;
                case PHPrintReportOption.SumListingCMT:
                    goto case PHPrintReportOption.SumListing;

                case PHPrintReportOption.SumBreakDownListing:
                    if ((this._hasPrintedReport & HasPrintedReport.MR_SumBreakDownListing) == HasPrintedReport.MR_SumBreakDownListing) return;

                    //string cono = this._cono.ToString();
                    sSQL = string.Format("select distinct cono72 from [PHGDB2].dbo.MR_PHP72T where cono72='{0}' and cuso72='{1}' and Version={2} and word72>''",
                        this._cono, this._project, this._printVersion);
                    object obj = PH.MR.BO.DB.SQL2000DB.GetScalar(sSQL);
                    _Draft = obj == null;

                    sSQL = string.Format("exec [PHGDB2].dbo.SP_MRSUM2_Net_History '{0}','{1}',{2}",
                           this._cono,
                           this._project,
                           this._printVersion);

                    PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
                    this._hasPrintedReport |= HasPrintedReport.MR_SumBreakDownListing;
                    break;
                case PHPrintReportOption.DetailListing:
                    if (((this._hasPrintedReport & HasPrintedReport.MR_DetailListing) == HasPrintedReport.MR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.RMR_DetailListing) == HasPrintedReport.RMR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) == HasPrintedReport.QN_DetailListing)
                       ) return;

                    sSQL = string.Format("CALL ZPHLIB_AUL.SP_MRSUM3_NET('{0}','{1}',{2},{3})",
                           this._cono,
                           this._project,
                           this._jobn,
                           this._jobnNew);

                    PH.MR.BO.DB.AS400DB.Execute(sSQL);
                    //this._hasPrintedReport |= HasPrintedReport.MR_DetailListing;
                    break;
                case PHPrintReportOption.HSCodeDetailListing:
                case PHPrintReportOption.HSCodeSummaryListing:
                    goto case PHPrintReportOption.SumBreakDownListing;
                default:
                    sSQL = "";
                    break;
            }
        }

        #region MR Do report data
        private void GetMRReportData()
        {
            GetMRReportData_sum();
            GetMRReportData_Detail();
        }
        private void GetMRReportData_sum()
        {
            //if (_printAgain == PrintAgainOption.Yes) return;

            #region Get SQL
          string ASQL = "";
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    ASQL = string.Format("select * from zphlib_aul.mrsum1 where jobn={0} order by pcol,matd,pstl,levl,cstl", this._jobnNew);
                    break;
                case PHPrintReportOption.SumListingCMT:
                    ASQL = string.Format(@"
select a.* ,b.VCAT01 as VCAT
from zphlib_aul.mrsum1 a 
LEFT JOIN AULT4F1.PMP01 b ON (CONO=CONO01 AND SUPC=VNDR01 
   AND ITEM01= CSTL||CCOL||CSIZ)
where a.jobn={0} 
order by a.pcol,a.matd,a.pstl,a.levl,a.cstl"
                                       , this._jobnNew);
                    break;

                case PHPrintReportOption.SumBreakDownListing:
                    ASQL = string.Format("select * from zphlib_aul.mrsum2 where jobn={0} order by pcol,matd,pstl,levl,cstl", this._jobnNew);
                    break;
                //case PHPrintReportOption.SumBreakDownListingCMT:

                case PHPrintReportOption.DetailListing:
                case PHPrintReportOption.DetailListingCMT:
                    if (((this._hasPrintedReport & HasPrintedReport.MR_DetailListing) == HasPrintedReport.MR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.RMR_DetailListing) == HasPrintedReport.RMR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) == HasPrintedReport.QN_DetailListing)
                       )
                        return;

                    // ASQL = string.Format("select * from zphlib_aul.MRSUM3_NET where  jobn={0} order by pcol,matd,pstl,levl,cstl,word", this._jobnNew);
                    break;

                case PHPrintReportOption.HSCodeDetailListing:
                case PHPrintReportOption.HSCodeSummaryListing:
                    //ASQL = string.Format("exec [10.2.1.10\\SQLSERVER2005].[PH.MIDc].dbo.GetSummaryList_BK1 '{0}'", this._jobnNew);
                    ASQL = string.Format("exec [PH.MIDc].dbo.GetSummaryList_BK1 '{0}'", this._jobnNew);
                    this._WorkDataTable = PH.MR.BO.DB.GetDataByPage_SQL2000(ASQL);//zrtag
                    return;
                default:
                    ASQL = "";
                    break;
            }
            if (ASQL == "") return;
            #endregion

            this._WorkDataTable = GetDataByPage_AS400(ASQL);

            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //this._WorkDataTable = PH.MR.BO.DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        this._WorkDataTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.AS400DB.EndGetTable(gkey);
            //this._WorkDataTable.AcceptChanges();
            #endregion

        }
        private void GetMRReportData_Detail()
        {
            if (ReportOption != PHPrintReportOption.DetailListing && ReportOption != PHPrintReportOption.DetailListingCMT) return;

            bool hasPrintedDetailListing = (((this._hasPrintedReport & HasPrintedReport.MR_DetailListing) == HasPrintedReport.MR_DetailListing)
              || ((this._hasPrintedReport & HasPrintedReport.RMR_DetailListing) == HasPrintedReport.RMR_DetailListing)
              || ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) == HasPrintedReport.QN_DetailListing));

            string ASQL;

            //if (_printAgain == PrintAgainOption.None && !hasPrintedDetailListing)
            if (!hasPrintedDetailListing)
            {
                //if (this._WorkDataTable.Rows.Count == 0)
                //{
                //    this._hasPrintedReport |= HasPrintedReport.MR_DetailListing;
                //    this._hasPrintedReport |= HasPrintedReport.RMR_DetailListing;
                //    this._hasPrintedReport |= HasPrintedReport.QN_DetailListing;
                //    return;
                //}

                #region Insert data to SQL2000 from ERP
                //delete it first
                ASQL = string.Format("delete from [PHGDB2].dbo.ERP_MRSUM3_1 where jobn={0}", this._jobnNew);
                PH.MR.BO.DB.SQL2000DB.Execute(ASQL);

                //then insert it
                string AS400SQL = string.Format(@"select 
jobn,cono,cuso,PCOL ,MATD ,PSTL ,CSTL ,MWTH ,SUPC ,CCOL ,CSIZ ,CORQ ,MINQ ,MLTQ ,UPRC ,LEVL ,IUNT ,ORDN ,STYLNO ,WORD ,QPER ,QTOR ,COOS ,PSIZ ,VCAT ,DSIZ ,PSIZ1 ,PFIT1 ,DSIZ1 ,DFIT1 
,parentCol ,parentSiz ,OrderLine ,ItemSizeCupDesc ,ItemSize ,ItemCup ,ItemSizeDesc ,ItemCupDesc
                from zphlib_aul.MRSUM3_NET where  jobn={0} order by pcol,matd,pstl,levl,cstl,word", this._jobnNew);
                AS400SQL = GetSQLByLinkserver(AS400SQL, "AS400");

                ASQL = string.Format("INSERT INTO [PHGDB2].dbo.ERP_MRSUM3_1(jobn,cono,cuso,pcol,matd,pstl,cstl,mwth,supc,ccol,csiz,"
                    + " corq,minq,mltq,uprc,levl,iunt,ordn,stylno,word,qper,qtor,coos,psiz,vcat,DSIZ,PSIZ1,PFIT1,DSIZ1,DFIT1,parentCol,parentSiz,"
                    + " OrderLine,ItemSizeCupDesc,ItemSize,ItemCup,ItemSizeDesc,ItemCupDesc) "
                    + "\r\n" + AS400SQL);
                PH.MR.BO.DB.SQL2000DB.Execute(ASQL);


                //foreach (DataRow row in this._WorkDataTable.Rows)
                //{
                //    ASQL = string.Format("INSERT INTO ERP_MRSUM3_1(jobn,cono,cuso,pcol,matd,pstl,cstl,mwth,supc,ccol,csiz,"
                //        + " corq,minq,mltq,uprc,levl,iunt,ordn,stylno,word,qper,qtor,coos,psiz,vcat,DSIZ,PSIZ1,PFIT1,DSIZ1,DFIT1,parentCol,parentSiz,"
                //        + " OrderLine,ItemSizeCupDesc,ItemSize,ItemCup,ItemSizeDesc,ItemCupDesc) "
                //        + " values({0},'{1}','{2}','{3}','{4}','{5}','{6}',{7},'{8}','{9}','{10}',"
                //        + " {11},{12},{13},{14},{15},'{16}','{17}','{18}','{19}',{20},{21},{22},'{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}',"
                //        + " {32},'{33}','{34}','{35}','{36}','{37}') ",
                //           this._jobnNew,
                //           this._cono,
                //           this._project,
                //           ConvertDBString("PCOL", row),
                //           ConvertDBString("MATD", row),
                //           ConvertDBString("PSTL", row),
                //           ConvertDBString("CSTL", row),
                //           ConvertDBDouble("MWTH", row),
                //           ConvertDBString("SUPC", row),
                //           ConvertDBString("CCOL", row),
                //           ConvertDBString("CSIZ", row),
                //           ConvertDBDouble("CORQ", row),
                //           ConvertDBDouble("MINQ", row),
                //           ConvertDBDouble("MLTQ", row),
                //           ConvertDBDouble("UPRC", row),
                //           ConvertDBInt("LEVL", row),
                //           ConvertDBString("IUNT", row),
                //           ConvertDBString("ORDN", row),
                //           ConvertDBString("STYLNO", row),
                //           ConvertDBString("WORD", row),
                //           ConvertDBDouble("QPER", row),
                //           ConvertDBDouble("QTOR", row),
                //           ConvertDBDouble("COOS", row),
                //           ConvertDBString("PSIZ", row),
                //           ConvertDBString("VCAT", row),
                //           ConvertDBString("DSIZ", row),
                //           ConvertDBString("PSIZ1", row),
                //           ConvertDBString("PFIT1", row),
                //           ConvertDBString("DSIZ1", row),
                //           ConvertDBString("DFIT1", row),
                //           ConvertDBString("parentCol", row),
                //           ConvertDBString("parentSiz", row),
                //           ConvertDBInt("OrderLine", row),
                //           ConvertDBString("ItemSizeCupDesc", row),
                //           ConvertDBString("ItemSize", row),
                //           ConvertDBString("ItemCup", row),
                //           ConvertDBString("ItemSizeDesc", row),
                //           ConvertDBString("ItemCupDesc", row)
                //           );

                //    PH.MR.BO.DB.SQL2000DB.Execute(ASQL);
                //}
                #endregion
            }

            #region execute in SQL2000 ===
            DataTable tb;
            bool selectAll;
            switch (this.dataAction)
            {
                #region MR

                case DataAction.MR:
                case DataAction.CMT:
                    this._hasPrintedReport |= HasPrintedReport.MR_DetailListing;

                    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder from [PHGDB2].dbo.erp_mrsum3_1 a"
                         + " where a.jobn={0} order by  a.WORD", this._jobnNew);
                    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                    //=================show dialog form to select wo=============
                    selectAll = true;
                    if (tb.Rows.Count > 0)
                    {
                        frmSelectWONO frm = new frmSelectWONO(this, tb);
                        if (frm.ShowDialog() == DialogResult.Cancel) return;
                        selectAll = frm.SelectAll;
                        _WorkOrders = "";
                        if (!selectAll)
                        {
                            foreach (string wo in frm.WorkOrders.Values)
                            {
                                _WorkOrders += wo + ", ";
                            }
                            _WorkOrders = _WorkOrders.Trim();
                            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                        }
                        frm.Dispose();
                    }
                    //======================================================>>>>>

                    //====get data from SQL2000===
                    if (selectAll)
                        ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_MR '{0}','{1}',{2},'{3}'", this._cono, this._project, this._jobnNew, "");
                    else
                        //ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_MR_Check123 '{0}','{1}',{2}", this._cono, this._project, this._jobnNew);
                        ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_MR_Check '{0}','{1}',{2}", this._cono, this._project, this._jobnNew);

                    break;
                #endregion
                #region RoundMR new
                case DataAction.RoundMR:
                    this._hasPrintedReport |= HasPrintedReport.RMR_DetailListing;

                    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder from [PHGDB2].dbo.erp_mrsum3_1 a"
                         + " where a.jobn={0} and exists (select * from [PH.RWO1].dbo.WorkOrder b where a.cono=b.Company and a.WORD=b.WorkOrderNo) "
                         + " order by  a.WORD", this._jobnNew);
                    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                    //=================show dialog form to select wo=============
                    selectAll = true;
                    if (tb.Rows.Count > 0)
                    {
                        frmSelectWONO frm = new frmSelectWONO(this, tb);
                        if (frm.ShowDialog() == DialogResult.Cancel) return;
                        selectAll = frm.SelectAll;
                        _WorkOrders = "";
                        if (!selectAll)
                        {
                            foreach (string wo in frm.WorkOrders.Values)
                            {
                                _WorkOrders += wo + ", ";
                            }
                            _WorkOrders = _WorkOrders.Trim();
                            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                        }
                        frm.Dispose();
                    }
                    //======================================================>>>>>

                    //====get data from SQL2000===

                    ASQL = string.Format("execute [PHGDB2].dbo.{0} '{1}',{2}",
                        //(tb.Rows.Count == 0) || selectAll ? "sp_mrsum3_WO123" : "sp_mrsum3_WO_Check123", --David调试用的
                        (tb.Rows.Count == 0) || selectAll ? "sp_mrsum3_WO" : "sp_mrsum3_WO_Check",
                        this._cono, this._jobnNew);

                    break;
                #endregion
                #region RoundMR old

                //case DataAction.RoundMR:
                //    this._hasPrintedReport |= HasPrintedReport.RMR_DetailListing;

                //    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder,b.SWONO,b.SWOID from erp_mrsum3_1 a"
                //         + " left join (select a2.WorkOrderNo,a1.company,a1.SWONO,a1.SWOID,a1.salesOrderNo from opc_swom a1,opc_workorder a2"
                //         + " where a1.Company=a2.Company and a1.salesorderno=a2.salesorderno and a1.OrderLine=a2.OrderLine) b"
                //         + " ON (b.company=a.cono and b.salesOrderNo=a.ordn and b.WorkOrderNo=a.word)"
                //         + " where a.jobn={0} and b.SWONO is not null and b.SWONO<>'' order by  a.WORD,b.SWOID", this._jobnNew);
                //    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                //    //=================show dialog form to select rwo=============
                //    selectAll = true;
                //    if (tb.Rows.Count > 0)
                //    {
                //        frmSelectRWONO frm = new frmSelectRWONO(this, tb);
                //        if (frm.ShowDialog() == DialogResult.Cancel) return;
                //        selectAll = frm.SelectAll;
                //        _WorkOrders = "";
                //        if (!selectAll)
                //        {
                //            foreach (string wo in frm.WorkOrders.Values)
                //            {
                //                _WorkOrders += wo + ", ";
                //            }
                //            _WorkOrders = _WorkOrders.Trim();
                //            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                //        }
                //        frm.Dispose();
                //    }
                //    //======================================================>>>>>

                //    ASQL = string.Format("execute {0} '{1}','{2}',{3},'{4}'",
                //        (tb.Rows.Count == 0) || selectAll ? "sp_mrsum3_RMR" : "sp_mrsum3_RMR_Check",
                //        this._cono, this._project, this._jobnNew, "");
                //    break;
                #endregion
                #region QN

                case DataAction.QN:
                    if ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) != HasPrintedReport.QN_DetailListing)
                        GetQNDataFromIB();

                    this._hasPrintedReport |= HasPrintedReport.QN_DetailListing;

                    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder,b.SWONO,b.QN from erp_mrsum3_1 a"
                         + " left join ERP_MRSUM3_QN b ON (b.JOBN=a.JOBN and b.CONO=a.cono and a.CUSO=b.CUSO and b.WORD=a.word)"
                         + " where a.jobn={0} and b.SWONO is not null and b.SWONO<>'' and b.QN is not null and b.QN<>'' order by  a.WORD,b.SWONO,b.QN", this._jobnNew);
                    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                    //=================show dialog form to select qn=============
                    selectAll = true;
                    if (tb.Rows.Count > 0)
                    {
                        frmSelectQNNO frm = new frmSelectQNNO(this, tb);
                        if (frm.ShowDialog() == DialogResult.Cancel) return;
                        selectAll = frm.SelectAll;
                        _WorkOrders = "";
                        if (!selectAll)
                        {
                            foreach (string wo in frm.WorkOrders.Values)
                            {
                                _WorkOrders += wo + ", ";
                            }
                            _WorkOrders = _WorkOrders.Trim();
                            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                        }
                        frm.Dispose();
                    }
                    //======================================================>>>>>
                    if (selectAll)
                        ASQL = string.Format("execute sp_mrsum3_QN '{0}','{1}',{2},'{3}'", this._cono, this._project, this._jobnNew, "");
                    else
                        ASQL = string.Format("execute sp_mrsum3_QN_Check '{0}','{1}',{2}", this._cono, this._project, this._jobnNew);
                    break;
                #endregion
                default:
                    ASQL = "";
                    break;
            }
            #endregion

            this._WorkDataTable = GetDataByPage_SQL2000(ASQL);

            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //this._WorkDataTable = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        this._WorkDataTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.SQL2000DB.EndGetTable(gkey);
            //this._WorkDataTable.AcceptChanges();
            #endregion

        }

        private void GetQNDataFromIB()
        {
            DateTime dtime = DateTime.Now;
            string ASQL = string.Format("execute PROCEDURE SP_GENQNMR ('{0}','{1}','{2}')", this._project, "", dtime.ToString("yyyy'/'MM'/'dd HH':'mm':'ss"));
            PH.MR.BO.DB.IBDB.Execute(ASQL);

            ASQL = string.Format("select J_NO,J2_JOB,RWO,QN,ACOL,SIZ,CUP,QTY,PSIZ from tmp_QNMR where tm='{0}'",
                dtime.ToString("yyyy'/'MM'/'dd HH':'mm':'ss"));

            this._WorkDataTable = GetDataByPage_INTERBASE(ASQL);


            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //this._WorkDataTable = PH.MR.BO.DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        this._WorkDataTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.IBDB.EndGetTable(gkey);
            //this._WorkDataTable.AcceptChanges();
            #endregion

            #region Insert data to SQL2000 from InterBase

            //delete it first when the same jobn exists
            ASQL = string.Format("delete from [PHGDB2].dbo.ERP_MRSUM3_QN where JOBN={0}", this._jobnNew);
            PH.MR.BO.DB.SQL2000DB.Execute(ASQL);

            //then insert
            foreach (DataRow row in this._WorkDataTable.Rows)
            {
                ASQL = string.Format("INSERT INTO [PHGDB2].dbo.ERP_MRSUM3_QN(JOBN,CONO,CUSO,PCOL,QTOR,PSIZ,WORD,SWONO,QN,SIZ,CUP) "
                    + " VALUES({0},'{1}','{2}','{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}')",
                       this._jobnNew,
                       this._cono,
                       this._project,
                       ConvertDBString("ACOL", row),
                       ConvertDBDouble("QTY", row),
                       ConvertDBString("PSIZ", row),
                       ConvertDBString("J2_JOB", row),
                       ConvertDBString("RWO", row),
                       ConvertDBString("QN", row),
                       ConvertDBString("SIZ", row),
                       ConvertDBString("CUP", row)
                       );

                PH.MR.BO.DB.SQL2000DB.Execute(ASQL);
            }
            #endregion
        }
        #endregion

        #region MR Do report data -- MR History
        private void GetMRReportData_MRHistory()
        {
            GetMRReportDate_sum_MRHistory();
            GetMRReportDate_Detail_MRHistory();
        }
        private void GetMRReportDate_sum_MRHistory()
        {
            //if (_printAgain == PrintAgainOption.Yes) return;

            #region Get SQL
            string ASQL;
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    ASQL = string.Format("exec [PHGDB2].dbo.SP_MRSUM1_Net_History '{0}','{1}',{2}",
                           this._cono,
                           this._project,
                           this._printVersion);
                    break;
                case PHPrintReportOption.SumListingCMT:
                    goto case PHPrintReportOption.SumListing;

                case PHPrintReportOption.SumBreakDownListing:
                case PHPrintReportOption.SumBreakDownListingCMT:
                    //string cono = this._cono.ToString();
                    ASQL = string.Format("select distinct cono72 from [PHGDB2].dbo.MR_PHP72T where cono72='{0}' and cuso72='{1}' and Version={2} and word72>''",
                        this._cono, this._project, this._printVersion);
                    object obj = PH.MR.BO.DB.SQL2000DB.GetScalar(ASQL);
                    _Draft = obj == null;

                    ASQL = string.Format("exec [PHGDB2].dbo.SP_MRSUM2_Net_History '{0}','{1}',{2}",
                           this._cono,
                           this._project,
                           this._printVersion);
                    break;

                case PHPrintReportOption.DetailListing:
                case PHPrintReportOption.DetailListingCMT:
                    if (((this._hasPrintedReport & HasPrintedReport.MR_DetailListing) == HasPrintedReport.MR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.RMR_DetailListing) == HasPrintedReport.RMR_DetailListing)
                        || ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) == HasPrintedReport.QN_DetailListing)
                       ) return;

                    ASQL = string.Format("exec [PHGDB2].dbo.SP_MRSUM3_Net_History '{0}','{1}',{2},{3}",
                           this._cono,
                           this._project,
                           this._printVersion,
                           this._jobnNew);
                    PH.MR.BO.DB.SQL2000DB.Execute(ASQL);
                    ASQL = "";
                    break;
                case PHPrintReportOption.HSCodeDetailListing:
                case PHPrintReportOption.HSCodeSummaryListing:
                    //ASQL = string.Format("select * from openquery( [10.2.1.10\\SQLSERVER2005],'exec [PH.MIDc].dbo.GetSummaryList ''{0}''')   ", this._jobnNew);
                    ASQL = string.Format("exec [PHGDB2].dbo.SP_MRSUM2_HSCode_Net_History '{0}','{1}',{2}",
                     this._cono,
                     this._project,
                     this._printVersion);
                    //this._WorkDataTable = PH.MR.BO.DB.GetDataByPage_SQL2000(ASQL);
                    //return;
                    break;
                //    goto case PHPrintReportOption.SumBreakDownListing;
                ////to do Peter
                default:
                    ASQL = "";
                    break;
            }
            if (ASQL == "") return;
            #endregion

            this._WorkDataTable = GetDataByPage_SQL2000(ASQL);


            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //this._WorkDataTable = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        this._WorkDataTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.SQL2000DB.EndGetTable(gkey);
            //this._WorkDataTable.AcceptChanges();
            #endregion

        }
        private void GetMRReportDate_Detail_MRHistory()
        {
            if (ReportOption != PHPrintReportOption.DetailListing && ReportOption != PHPrintReportOption.DetailListingCMT) return;

            bool hasPrintedDetailListing = (((this._hasPrintedReport & HasPrintedReport.MR_DetailListing) == HasPrintedReport.MR_DetailListing)
              || ((this._hasPrintedReport & HasPrintedReport.RMR_DetailListing) == HasPrintedReport.RMR_DetailListing)
              || ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) == HasPrintedReport.QN_DetailListing));

            string ASQL;

            //if (_printAgain == PrintAgainOption.None && !hasPrintedDetailListing)

            #region execute in SQL2000 ===
            DataTable tb;
            bool selectAll;
            switch (this.dataAction)
            {
                case DataAction.MR:
                case DataAction.CMT:
                    this._hasPrintedReport |= HasPrintedReport.MR_DetailListing;

                    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder from [PHGDB2].dbo.erp_mrsum3_1 a"
                         + " where a.jobn={0} order by  a.WORD", this._jobnNew);
                    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                    //=================show dialog form to select wo=============
                    selectAll = true;
                    if (tb.Rows.Count > 0)
                    {
                        frmSelectWONO frm = new frmSelectWONO(this, tb);
                        if (frm.ShowDialog() == DialogResult.Cancel) return;
                        selectAll = frm.SelectAll;
                        _WorkOrders = "";
                        if (!selectAll)
                        {
                            foreach (string wo in frm.WorkOrders.Values)
                            {
                                _WorkOrders += wo + ", ";
                            }
                            _WorkOrders = _WorkOrders.Trim();
                            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                        }
                        frm.Dispose();
                    }
                    //======================================================>>>>>

                    //====get data from SQL2000===
                    if (selectAll)
                        ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_MR '{0}','{1}',{2},'{3}'", this._cono, this._project, this._jobnNew, "");
                    else
                        ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_MR_Check '{0}','{1}',{2}", this._cono, this._project, this._jobnNew);

                    break;
                case DataAction.RoundMR:
                    this._hasPrintedReport |= HasPrintedReport.RMR_DetailListing;

                    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder,b.SWONO,b.SWOID from [PHGDB2].dbo.erp_mrsum3_1 a"
                         + " left join opc_swom b ON (b.company=a.cono and b.salesOrderNo=a.ordn and b.WorOrderNo=a.word)"
                         + " where a.jobn={0} and b.SWONO is not null and b.SWONO<>'' order by  a.WORD,b.SWOID", this._jobnNew);
                    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                    //=================show dialog form to select rwo=============
                    selectAll = true;
                    if (tb.Rows.Count > 0)
                    {
                        frmSelectRWONO frm = new frmSelectRWONO(this, tb);
                        if (frm.ShowDialog() == DialogResult.Cancel) return;
                        selectAll = frm.SelectAll;
                        _WorkOrders = "";
                        if (!selectAll)
                        {
                            foreach (string wo in frm.WorkOrders.Values)
                            {
                                _WorkOrders += wo + ", ";
                            }
                            _WorkOrders = _WorkOrders.Trim();
                            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                        }
                        frm.Dispose();
                    }
                    //======================================================>>>>>

                    ASQL = string.Format("execute [PHGDB2].dbo.{0} '{1}','{2}',{3},'{4}'",
                        (tb.Rows.Count == 0) || selectAll ? "sp_mrsum3_RMR" : "sp_mrsum3_RMR_Check",
                        this._cono, this._project, this._jobnNew, "");
                    break;
                case DataAction.QN:
                    if ((this._hasPrintedReport & HasPrintedReport.QN_DetailListing) != HasPrintedReport.QN_DetailListing)
                        GetQNDataFromIB_MRHistory();

                    this._hasPrintedReport |= HasPrintedReport.QN_DetailListing;

                    ASQL = string.Format("select distinct cast(0 as bit) as IsCheck,a.WORD as WorkOrder,b.SWONO,b.QN from [PHGDB2].dbo.erp_mrsum3_1 a"
                         + " left join [PHGDB2].dbo.ERP_MRSUM3_QN b ON (b.JOBN=a.JOBN and b.CONO=a.cono and a.CUSO=b.CUSO and b.WORD=a.word)"
                         + " where a.jobn={0} and b.SWONO is not null and b.SWONO<>'' and b.QN is not null and b.QN<>'' order by  a.WORD,b.SWONO,b.QN", this._jobnNew);
                    tb = PH.MR.BO.DB.SQL2000DB.GetTable(ASQL);

                    //=================show dialog form to select qn=============
                    selectAll = true;
                    if (tb.Rows.Count > 0)
                    {
                        frmSelectQNNO frm = new frmSelectQNNO(this, tb);
                        if (frm.ShowDialog() == DialogResult.Cancel) return;
                        selectAll = frm.SelectAll;
                        _WorkOrders = "";
                        if (!selectAll)
                        {
                            foreach (string wo in frm.WorkOrders.Values)
                            {
                                _WorkOrders += wo + ", ";
                            }
                            _WorkOrders = _WorkOrders.Trim();
                            _WorkOrders = _WorkOrders.Substring(0, _WorkOrders.Length - 1);
                        }
                        frm.Dispose();
                    }
                    //======================================================>>>>>
                    if (selectAll)
                        ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_QN '{0}','{1}',{2},'{3}'", this._cono, this._project, this._jobnNew, "");
                    else
                        ASQL = string.Format("execute [PHGDB2].dbo.sp_mrsum3_QN_Check '{0}','{1}',{2}", this._cono, this._project, this._jobnNew);
                    break;
                default:
                    ASQL = "";
                    break;
            }
            #endregion

            this._WorkDataTable = GetDataByPage_SQL2000(ASQL);

            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //this._WorkDataTable = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        this._WorkDataTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.SQL2000DB.EndGetTable(gkey);
            //this._WorkDataTable.AcceptChanges();
            #endregion

        }

        private void GetQNDataFromIB_MRHistory()
        {
            DateTime dtime = DateTime.Now;
            string ASQL = string.Format("execute PROCEDURE SP_GENQNMR ('{0}','{1}','{2}')", this._project, "", dtime.ToString("yyyy'/'MM'/'dd HH':'mm':'ss"));
            PH.MR.BO.DB.IBDB.Execute(ASQL);

            ASQL = string.Format("select J_NO,J2_JOB,RWO,QN,ACOL,SIZ,CUP,QTY,PSIZ from tmp_QNMR where tm='{0}'",
                dtime.ToString("yyyy'/'MM'/'dd HH':'mm':'ss"));

            this._WorkDataTable = GetDataByPage_INTERBASE(ASQL);

            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //this._WorkDataTable = PH.MR.BO.DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        this._WorkDataTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.IBDB.EndGetTable(gkey);
            //this._WorkDataTable.AcceptChanges();
            #endregion

            #region Insert data to SQL2000 from InterBase

            //delete it first when the same jobn exists
            ASQL = string.Format("delete from [PHGDB2].dbo.ERP_MRSUM3_QN where JOBN={0}", this._jobnNew);
            PH.MR.BO.DB.SQL2000DB.Execute(ASQL);

            //then insert
            foreach (DataRow row in this._WorkDataTable.Rows)
            {
                ASQL = string.Format("INSERT INTO [PHGDB2].dbo.ERP_MRSUM3_QN(JOBN,CONO,CUSO,PCOL,QTOR,PSIZ,WORD,SWONO,QN,SIZ,CUP) "
                    + " VALUES({0},'{1}','{2}','{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}')",
                       this._jobnNew,
                       this._cono,
                       this._project,
                       ConvertDBString("ACOL", row),
                       ConvertDBDouble("QTY", row),
                       ConvertDBString("PSIZ", row),
                       ConvertDBString("J2_JOB", row),
                       ConvertDBString("RWO", row),
                       ConvertDBString("QN", row),
                       ConvertDBString("SIZ", row),
                       ConvertDBString("CUP", row)
                       );

                PH.MR.BO.DB.SQL2000DB.Execute(ASQL);
            }
            #endregion
        }
        #endregion

        private bool CheckIsDraft()
        {
            string sSQL = string.Format("select distinct cono72 from ault4f1.php72t where cono72='{0}' and cuso72='{1}' and jobn72={2} and word72>''",
          this._cono, this.Project, this.JOBN);
            object obj = PH.MR.BO.DB.AS400DB.GetScalar(sSQL);
            return obj == null;
        }
        private void GetSOSSData()
        {
            //string cono = this._cono.ToString();
            string sSQL = string.Format("select PREPARED_BY,CONFIRMED_BY,APPROVED_BY from [phgdb2].dbo.oes_report where cono='{0}' and sopno='{1}'", this._cono, this.Ordn);
            DataTable tb = PH.MR.BO.DB.SQL2000DB.GetTable(sSQL);

            _Preparedby = (tb.Rows.Count == 0) ? "" : (Convert.IsDBNull(tb.Rows[0]["PREPARED_BY"]) ? "" : Convert.ToString(tb.Rows[0]["PREPARED_BY"]));
            _Confirmedby = (tb.Rows.Count == 0) ? "" : (Convert.IsDBNull(tb.Rows[0]["CONFIRMED_BY"]) ? "" : Convert.ToString(tb.Rows[0]["CONFIRMED_BY"]));
            _Approvedby = (tb.Rows.Count == 0) ? "" : (Convert.IsDBNull(tb.Rows[0]["APPROVED_BY"]) ? "" : Convert.ToString(tb.Rows[0]["APPROVED_BY"]));
            //_Preparedby = string.Format("Prepared by    {0}", (tb.Rows.Count == 0) ? "" : (Convert.IsDBNull(tb.Rows[0]["PREPARED_BY"]) ? "" : Convert.ToString(tb.Rows[0]["PREPARED_BY"])));
            //_Confirmedby = string.Format("Confirmed by   {0}", (tb.Rows.Count == 0) ? "" : (Convert.IsDBNull(tb.Rows[0]["CONFIRMED_BY"]) ? "" : Convert.ToString(tb.Rows[0]["CONFIRMED_BY"])));
            //_Approvedby = string.Format("Approved by    {0}", (tb.Rows.Count == 0) ? "" : (Convert.IsDBNull(tb.Rows[0]["APPROVED_BY"]) ? "" : Convert.ToString(tb.Rows[0]["APPROVED_BY"])));
        }

        #region Sort data
        private int SortMRData(MRReport x, MRReport y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.PCOL.CompareTo(y.PCOL);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.MATD.CompareTo(y.MATD);
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else
                        {
                            i = x.LEVL - y.LEVL;
                            if (i < 0) return -1;
                            else if (i > 0) return 1;
                            else
                            {
                                i = x.PSTL.CompareTo(y.PSTL);
                                if (i < 0) return -1;
                                else if (i > 0) return 1;
                                else
                                {
                                    i = x.CCOL.CompareTo(y.CCOL);
                                    if (i < 0) return -1;
                                    else if (i > 0) return 1;
                                    else
                                    {
                                        i = x.CSIZ.Trim().CompareTo(y.CSIZ.Trim());
                                        //i = x.ItemSizeCupDesc.Trim().CompareTo(y.ItemSizeCupDesc.Trim());
                                        if (i < 0) return -1;
                                        else if (i > 0) return 1;
                                        else
                                        {
                                            i = x.OrderLine - y.OrderLine;
                                            if (i < 0) return -1;
                                            else if (i > 0) return 1;
                                            else return 0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }
        private MRReport FindParentNode(List<MRReport> list, MRReport mrReport)
        {
            return list.Find(delegate(MRReport r)
            {
                return r.MATD == mrReport.MATD && r.PCOL == mrReport.PCOL && r.CSTL == mrReport.PSTL && r.ParentCOL == mrReport.ParentCOL && r.ParentSIZ == mrReport.ParentSIZ && r.OrderLine == mrReport.OrderLine;
            }
            );
        }
        private bool NodeExists(List<MRReport> list, string PCOL, string CSTL)
        {
            MRReport mr = list.Find(delegate(MRReport r)
            {
                return r.PCOL == PCOL && r.CSTL == CSTL;
            }
            );
            return mr != null;
        }
        private List<MRReport> CorrectToTreeData(List<MRReport> sourceList)
        {
            sourceList.Sort(SortMRData);
            List<MRReport> list = new List<MRReport>();
            MRReport rParent;
            //string PSTL;//Parent Material
            //string CSTL;//Material
            //string MATD;
            //string PCOL;
            //string ParentCOL;
            //string ParentSIZ;
            foreach (MRReport r in sourceList)
            {
                //MATD = r.MATD;
                //PCOL = r.PCOL;
                //PSTL = r.PSTL;
                //CSTL = r.CSTL;
                //ParentCOL = r.ParentCOL;
                //ParentSIZ = r.ParentSIZ;
                //root node
                if (r.PSTL == "" || r.PSTL == r.CSTL)
                {
                    list.Add(r);
                    continue;
                }
                rParent = FindParentNode(list, r);
                if (rParent == null) list.Add(r);
                else
                {
                    int index = list.IndexOf(rParent) + 1;
                    list.Insert(index, r);
                }
            }

            return list;
        }
        private List<MRReport> CorrectSeeMaterial(List<MRReport> sourceList)
        {
            List<MRReport> list_noCMT = sourceList.FindAll(delegate(MRReport mr)
            {
                return !mr.MATD.Trim().StartsWith("CMT");
            }
            );

            string CSTL;//Material
            string PCOL;
            foreach (MRReport r in sourceList)
            {
                if (!r.MATD.Trim().StartsWith("CMT")) continue;

                PCOL = r.PCOL;
                CSTL = r.CSTL;

                if (NodeExists(list_noCMT, PCOL, CSTL))
                {
                    r.SeeMaterial = true;
                }
            }

            return sourceList;
        }
        private List<MRReport> CorrectYYBomQty(List<MRReport> sourceList)
        {
            SortedList<int, int> sl = new SortedList<int, int>();
            int level;
            foreach (MRReport mrr in sourceList)
            {
                level = mrr.LEVL;
                if (level == 1 || sl.ContainsKey(level)) continue;
                sl.Add(level, level);
            }
            foreach (int lvl in sl.Keys)
            {
                CorrectYYBomQty_Level(sourceList, lvl);
            }
            return sourceList;
        }
        private void CorrectYYBomQty_Level(List<MRReport> sourceList, int level)
        {
            //List<MRReport> list_Level = sourceList.FindAll(delegate(MRReport mr)
            // {
            //     return mr.LEVL == level;
            // }
            //);

            MRReport rParent;
            //string PSTL;//Parent Material
            //string CSTL;//Material
            //string MATD;
            //string PCOL;
            //string ParentCOL;
            //string ParentSIZ;
            foreach (MRReport r in sourceList)
            {
                if (r.LEVL != level) continue;

                //MATD = r.MATD;
                //PCOL = r.PCOL;
                //PSTL = r.PSTL;
                //CSTL = r.CSTL;
                //ParentCOL = r.ParentCOL;
                //ParentSIZ = r.ParentSIZ;

                rParent = FindParentNode(sourceList, r);
                if (rParent != null)
                {
                    r.QTOR = rParent.QTOR;
                    r.PSIZ = rParent.PSIZ;
                }
            }

            //return list;
        }
        #endregion

        #endregion

        #region Convert
        private int ConvertDBInt(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]);
        }
        private double ConvertDBDouble(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]);
        }
        private decimal ConvertDBDecimal(string fieldName, DataRow row)
        {
            return Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]);
        }
        private string ConvertDBString(string fieldName, DataRow row)
        {
            string s = Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]).Trim();
            s = s.Replace("'", "''");
            return s;
        }
        #endregion

        public List<MRReport> Alist = new List<MRReport>();
        public bool IsGetRptSource;
        #region Show / Design Report
        public XtraReport CreateReport(DevExpress.XtraPrinting.PrintingSystem printingSystem)
        {

            //_report = new XtraReport();
            //string rptFile = System.Windows.Forms.Application.StartupPath + @"\Reports\" + GetReportFile();
            //if (!System.IO.File.Exists(rptFile))
            //{
            //    MessageBox.Show("Report file not found!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //    return null;
            //}
            //_report.LoadLayout(rptFile);

            _report = GetReportFile();

            this.GetReportData();

            List<MRReport> list;
            if (this._ReportOption != PHPrintReportOption.HSCodeDetailListing && this._ReportOption != PHPrintReportOption.HSCodeSummaryListing)
            {
                //_report.DataSource = this.WorkDataTable;
                list = CorrectToTreeData(TableORM.GetObjects<MRReport>(this.WorkDataTable, true));
                list = CorrectSeeMaterial(list);
                list = CorrectYYBomQty(list);

                //--------add hscode-------zrtag
                //MessageBox.Show(WorkDataTable.Columns.Count.ToString());

                //---------------

                //if (this.dataAction == DataAction.MR)
                //{
                //    Report1 report1 = new Report1(this._jobn);
                //    report1.ShowPreview();
                //    return null;


                //}
                if (this._ReportOption == PHPrintReportOption.SumListingCMT || this._ReportOption == PHPrintReportOption.SumBreakDownListingCMT || this._ReportOption == PHPrintReportOption.DetailListingCMT)
                {
                    //filtering
                    List<MRReport> listCMT = list.FindAll(delegate(MRReport mr)
                    {
                        return mr.MATD.Trim().StartsWith("CMT");
                    });
                    list = listCMT;

                    SetCMTReportCaption(_report);
                }

            }
            else
            {
                list = TableORM.GetObjects<MRReport>(this.WorkDataTable, true);
            }
            _report.DataSource = list;
            Alist = list;

            BandingReport(_report);
            SetReportHeaderBand(_report);

            printingSystem.ClearContent();
            printingSystem.PageSettings.Landscape = _report.Landscape;

            printingSystem.PageSettings.Assign(_report.Margins, _report.PaperKind, _report.Landscape);

            _report.PrintingSystem = printingSystem;

            _report.ExportOptions.PrintPreview.SaveMode = SaveMode.UsingSaveFileDialog;
            _report.ExportOptions.PrintPreview.ShowOptionsBeforeExport = false;

            return _report;

        }

        public void ShowReport()
        {
            if (_report != null)
            {
                // _report.PrintingSystem.PreviewFormEx.ShowInTaskbar = false;
                // _report.CreateDocument();
                //_report.ShowDesignerDialog(); 
                _report.ShowPreviewDialog();
                this._generateDataStatus = GenerateDataStatus.Finished;
            }
        }
        public void DesignReport()
        {
            if (_report != null)
            {
                //_report.PrintingSystem.PreviewFormEx.ShowInTaskbar = false;
                _report.ShowDesignerDialog();
                this._generateDataStatus = GenerateDataStatus.Finished;
            }
        }

        private void BandingReport(XtraReport report)
        {
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    break;
                case PHPrintReportOption.SumBreakDownListing:
                    break;
                case PHPrintReportOption.DetailListing:
                    break;
                case PHPrintReportOption.HSCodeDetailListing:
                    break;
                default:
                    break;
            }
        }

        private string GetReportFile1()
        {
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    return "SumListing.repx";
                case PHPrintReportOption.SumListingCMT:
                    goto case PHPrintReportOption.SumListing;
                case PHPrintReportOption.SumBreakDownListing:
                    return "SumBreakDownListing.repx";
                case PHPrintReportOption.DetailListing:
                    switch (this.dataAction)
                    {
                        case DataAction.MR:
                            return "DetailListingMR.repx";
                        case DataAction.RoundMR:
                            return "DetailListingRMR.repx";
                        case DataAction.QN:
                            return "DetailListingQN.repx";
                        default:
                            return "DetailListingMR.repx";
                    }
                case PHPrintReportOption.HSCodeDetailListing:
                    return "HSCodeDetail.repx";
                case PHPrintReportOption.HSCodeSummaryListing:
                    return "HSCodeSummary.repx";
                default:
                    return "";
            }
        }
        private XtraReport GetReportFile()
        {
            switch (ReportOption)
            {
                case PHPrintReportOption.SumListing:
                    return new PH.MR.BackEnd.SumListing();
                case PHPrintReportOption.SumListingCMT:
                    return new PH.MR.BackEnd.SumListingCMT();
                case PHPrintReportOption.SumBreakDownListing:
                    return new PH.MR.BackEnd.SumBreakDownListing();
                //case PHPrintReportOption.SumBreakDownListingCMT:
                //    return new PH.MR.BackEnd.SumBreakDownListingCMT();
                case PHPrintReportOption.DetailListingCMT:
                    return new PH.MR.BackEnd.DetailListingCMT();
                case PHPrintReportOption.DetailListing:
                    switch (this.dataAction)
                    {
                        case DataAction.MR:
                            return new PH.MR.BackEnd.DetailListingMR();
                        case DataAction.RoundMR:
                            return new PH.MR.BackEnd.DetailListingRMR();
                        case DataAction.QN:
                            return new PH.MR.BackEnd.DetailListingQN();
                        default:
                            return new PH.MR.BackEnd.DetailListingMR();
                    }
                //case PHPrintReportOption.HSCodeDetailListing:
                //    return "HSCodeDetail.repx";
                //case PHPrintReportOption.HSCodeSummaryListing:
                //    return "HSCodeSummary.repx";
                default:
                    return new XtraReport();
            }
        }
        #endregion

        #region Banding DataField
        #region share
        private void BandingReportControl(XtraReport report, string controlName, string fieldName)
        {
            BandingReportControl(report, controlName, fieldName, "");
        }
        private void BandingReportControl(XtraReport report, string controlName, string fieldName, string formatString)
        {
            XRBinding banding = null;
            XRControl control = report.FindControl(controlName, false);
            if (control == null) return;

            if (formatString == null || formatString == "")
                banding = new XRBinding("Text", this.WorkDataTable, fieldName);
            else
                banding = new XRBinding("Text", this.WorkDataTable, fieldName, formatString);

            if (control is XRTableCell)
                ((XRTableCell)control).DataBindings.Add(banding);
            else if (control is XRLabel)
                ((XRLabel)control).DataBindings.Add(banding);
        }
        private void SetReportControlText(XtraReport report, string controlName, string text)
        {
            XRControl control = report.FindControl(controlName, false);
            if (control == null) return;
            control.Text = text;
        }
        private void SetReportHeaderBand(XtraReport report)
        {
           

            SetReportControlText(report, "lbVersion", this._pringMRHistory ? string.Format("Verson : {0} {1}", this._dept, this._deptVersion) : "");
            //SetReportControlText(report, "lbPreparedby", string.Format("{0}\r\n{1}\r\n{2}", _Preparedby, _Confirmedby, _Approvedby));
            SetReportControlText(report, "lbPreparedby", string.Format("Prepared by    {0}\r\nConfirmed by   {1}\r\nApproved by    {2}", _Preparedby, _Confirmedby, _Approvedby));

            //SetReportControlText(report, "lbApprovedby", _Approvedby);
            SetReportControlText(report, "lbWorkOrder", this._WorkOrders);
            if (this.ReportOption != PHPrintReportOption.HSCodeDetailListing && this.ReportOption != PHPrintReportOption.HSCodeSummaryListing)
                SetReportControlText(report, "lbReportTitle", string.Format("Final M.R. Against Project ({0}Summary Breakdown Listing)", this._Draft ? "Draft " : ""));
            else
                SetReportControlText(report, "lbReportTitle", string.Format("Final M.R.-H.S Code by Project"));

            //Add by shulin,爲了ProjectNo屬於CL時，DetailListingMR的中文標題改成英文
            if (this.ReportOption == PHPrintReportOption.DetailListing) 
            {
                string Str = "select distinct Factory from  [PH.RWO1]..Project where ProjectNo ='{0}'";
                Str = string.Format(Str, Project);
                PH.MR.BO.MRDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MRDataContext>();
                List<string> SLTitleList = db.ExecuteQuery<string>(Str).ToList<string>();
                string SLTitleText = SLTitleList.FirstOrDefault();

                string TitleText=SLTitleText =="CL"?"P.Y. Garments Mfg. (Bangladesh) Co. Ltd":"沛恒製衣（東莞）有限公司";
                SetReportControlText(report, "xrLabel8", TitleText);              
            }

        }
        private void SetCMTReportCaption(XtraReport report)
        {
            SetReportControlText(report, "tcPrepared", _Preparedby);
            SetReportControlText(report, "tcConfirm", _Confirmedby);
            SetReportControlText(report, "tcApprove", _Approvedby);
        }
        #endregion

        #region Banding Report
        private void DoGroupHeaderBand(XtraReport report, string field, string caption)
        {
            GroupHeaderBand pGroupHeaderBand = report.Report.Bands["GroupHeader1"] as DevExpress.XtraReports.UI.GroupHeaderBand;
            if (pGroupHeaderBand == null) return;

            SetReportControlText(report, "lblGroupHead", string.Format("{0} : [{1}]", caption, field));
            pGroupHeaderBand.GroupFields.Clear();
            pGroupHeaderBand.GroupFields.Add(new GroupField(field, XRColumnSortOrder.Ascending));

        }
        private void BandingProjectSummaryReport(XtraReport report)
        {
            BandingReportControl(report, "tcProject", "Project", "{0:#,#.00}");
            BandingReportControl(report, "txAmount", "Amount", "{0:#,#.00}");
        }
        private void BandingSummaryAmountReport(XtraReport report)
        {
            BandingReportControl(report, "tcMonth", "FMonth_DESC");
            BandingReportControl(report, "tcM", "M", "{0:#,#.00}");
            BandingReportControl(report, "tcL", "L", "{0:#,#.00}");
            BandingReportControl(report, "tcE", "E", "{0:#,#.00}");
            BandingReportControl(report, "tcA", "A", "{0:#,#.00}");
            BandingReportControl(report, "tcC", "C", "{0:#,#.00}");
            BandingReportControl(report, "tcTotal", "TOTAL", "{0:#,#.00}");

            BandingReportControl(report, "lblSumM", "M", "{0:#,#.00}");
            BandingReportControl(report, "lblSumL", "L", "{0:#,#.00}");
            BandingReportControl(report, "lblSumE", "E", "{0:#,#.00}");
            BandingReportControl(report, "lblSumA", "A", "{0:#,#.00}");
            BandingReportControl(report, "lblSumC", "C", "{0:#,#.00}");
            BandingReportControl(report, "lblSumTotal", "TOTAL", "{0:#,#.00}");
        }
        #endregion

        #endregion

        #region Export
        public void StartProcess(string path)
        {
            Process process = new Process();
            try
            {
                process.StartInfo.FileName = path;
                process.Start();
                process.WaitForInputIdle();
            }
            catch { }
        }

        private string ShowSaveFileDialog(string title, string filter)
        {
            SaveFileDialog sdlg = new SaveFileDialog();
            string name = this._dataAction.ToString() + "-" + this._ReportOption.ToString() + " Report";
            // PHReportHelper.PHReportConditionDescript[(int)this.ReportOption];
            sdlg.Title = "Save as " + title;
            sdlg.FileName = name;
            sdlg.Filter = filter;
            if (sdlg.ShowDialog() == DialogResult.OK) return sdlg.FileName;
            return "";
        }
        public void ExportByIndex()
        {
            this.ExportByIndex(this.exportIndex);
        }
        public void ExportByIndex(int index)
        {
            if (_report == null)
                return;

            switch (index)
            {
                case 0:
                    StartPdfProcess();
                    break;
                case 1:
                    StartHtmlProcess();
                    break;
                case 2:
                    StartTxtProcess();
                    break;
                case 3:
                    StartCsvProcess();
                    break;
                case 4:
                    StartMhtProcess();
                    break;
                case 5:
                    StartXlsProcess();
                    break;
                case 6:
                    StartRtfProcess();
                    break;
                case 7:
                    StartImageProcess();
                    break;
                default:
                    break;
            }
            //_report.ExportOptions.PrintPreview.SaveMode = SaveMode.UsingSaveFileDialog;
            //_report.ExportOptions.PrintPreview.ShowOptionsBeforeExport=true;
            //_report.PrintingSystem.ExecCommand(exportCommands[index]);;
            this._generateDataStatus = GenerateDataStatus.Finished;
        }

        private void StartHtmlProcess()
        {
            string filePath = ShowSaveFileDialog("Html document", "Html document|*.html");
            if (filePath == "") return;
            //if (processXls != null)
            //    NativeMethods.CloseProcess(processXls);
            // Get its HTML export options.
            HtmlExportOptions htmlOptions = _report.ExportOptions.Html;

            // Set HTML-specific export options.
            htmlOptions.CharacterSet = "UTF-8";
            htmlOptions.RemoveSecondarySymbols = false;
            htmlOptions.Title = this._ReportOption.ToString();

            // Set the pages to be exported, and page-by-page options.
            htmlOptions.ExportMode = HtmlExportMode.SingleFilePageByPage;
            //htmlOptions.PageRange = "1, 3-5";
            htmlOptions.PageBorderColor = System.Drawing.Color.Blue;
            htmlOptions.PageBorderWidth = 3;

            _report.ExportToHtml(filePath, htmlOptions);
            //processHtml = NativeMethods.StartProcess(filePath);
        }
        private void StartXlsProcess()
        {
            string filePath = ShowSaveFileDialog("Excel document", "Excel document|*.xls");
            if (filePath == "") return;
            //if (processXls != null)
            //    NativeMethods.CloseProcess(processXls);
            // Get its XLS export options.
            XlsExportOptions xlsOptions = _report.ExportOptions.Xls;

            // Set XLS-specific export options.
            xlsOptions.ShowGridLines = false;
            xlsOptions.UseNativeFormat = true;

            _report.ExportToXls(filePath, xlsOptions);
            StartProcess(filePath);
        }
        private void StartRtfProcess()
        {
            string filePath = ShowSaveFileDialog("rtf document", "rtf document|*.rtf");
            if (filePath == "") return;
            //if (processRtf != null)
            //    NativeMethods.CloseProcess(processRtf);
            _report.ExportToRtf(filePath);
            StartProcess(filePath);
        }
        private void StartPdfProcess()
        {
            string filePath = ShowSaveFileDialog("pdf document", "pdf document|*.pdf");
            if (filePath == "") return;
            //if (processPdf != null)
            //    NativeMethods.CloseProcess(processPdf);
            // Get its PDF export options.
            PdfExportOptions pdfOptions = _report.ExportOptions.Pdf;

            // Set PDF-specific export options.
            pdfOptions.Compressed = true;
            pdfOptions.ImageQuality = PdfJpegImageQuality.Low;
            //pdfOptions.NeverEmbeddedFonts = "Tahoma;Courier New";
            pdfOptions.DocumentOptions.Application = "RoundMR";
            pdfOptions.DocumentOptions.Author = "PH.PeterZhou";
            pdfOptions.DocumentOptions.Keywords = "XtraReports, XtraPrinting";
            //pdfOptions.DocumentOptions.Subject = "Test Subject";
            pdfOptions.DocumentOptions.Title = this._ReportOption.ToString();
            // Set the pages to be exported.
            //pdfOptions.PageRange = "1, 3-5";

            _report.ExportToPdf(filePath);
            StartProcess(filePath);
        }
        private void StartMhtProcess()
        {
            string filePath = ShowSaveFileDialog("mht document", "mht document|*.mht");
            if (filePath == "") return;
            //if (processMht != null)
            //    NativeMethods.CloseProcess(processMht);
            // Get its MHT export options.
            MhtExportOptions mhtOptions = _report.ExportOptions.Mht;

            // Set MHT-specific export options.
            mhtOptions.CharacterSet = "UTF-8";
            mhtOptions.RemoveSecondarySymbols = false;
            mhtOptions.Title = this._ReportOption.ToString();

            // Set the pages to be exported, and page-by-page options.
            mhtOptions.ExportMode = HtmlExportMode.SingleFilePageByPage;
            //mhtOptions.PageRange = "1, 3-5";
            mhtOptions.PageBorderColor = System.Drawing.Color.Blue;
            mhtOptions.PageBorderWidth = 3;

            _report.ExportToMht(filePath);
            StartProcess(filePath);
        }
        private void StartTxtProcess()
        {
            string filePath = ShowSaveFileDialog("txt document", "txt document|*.txt");
            if (filePath == "") return;
            //if (processTxt != null)
            //    NativeMethods.CloseProcess(processTxt);
            // Get its Text export options.
            TextExportOptions txtOptions = _report.ExportOptions.Text;

            // Set Text-specific export options.
            txtOptions.Encoding = Encoding.Unicode;
            txtOptions.Separator = System.Globalization.CultureInfo.CurrentCulture.TextInfo.ListSeparator.ToString();

            _report.ExportToText(filePath, txtOptions);
            StartProcess(filePath);
        }
        private void StartCsvProcess()
        {
            string filePath = ShowSaveFileDialog("csv document", "csv document|*.csv");
            if (filePath == "") return;
            //if (processCsv != null)
            //    NativeMethods.CloseProcess(processCsv);
            //string listSeparator = System.Globalization.CultureInfo.CurrentCulture.TextInfo.ListSeparator.ToString();
            CsvExportOptions csvOptions = _report.ExportOptions.Csv;
            // Set CSV-specific export options.
            csvOptions.Encoding = Encoding.Unicode;
            csvOptions.Separator = System.Globalization.CultureInfo.CurrentCulture.TextInfo.ListSeparator.ToString();

            _report.ExportToCsv(filePath, csvOptions);
            StartProcess(filePath);
        }
        private void StartImageProcess()
        {
            string filePath = ShowSaveFileDialog("bmp document", "bmp document|*.bmp");
            if (filePath == "") return;
            //if (processImage != null)
            //    NativeMethods.CloseProcess(processImage);
            // Get its Image export options.
            ImageExportOptions imageOptions = _report.ExportOptions.Image;

            // Set Image-specific export options.
            imageOptions.Format = System.Drawing.Imaging.ImageFormat.Bmp;

            _report.ExportToImage(filePath, System.Drawing.Imaging.ImageFormat.Bmp);
            StartProcess(filePath);
        }

        #endregion

        #region FTP
        private void getProjectByWO(string cono, string wo)
        {
            _ordn = "";
            string sSQL = string.Format("select distinct ORDN40,CUSO40 from ault4f1.oep40 a,ault5f1.msp40 b"
                + " where a.cono40=b.cono40 and a.ordn40=substr(b.w1rf40,1,7) and a.cono40='{0}' and b.word40='{1}' and a.dtlc40=0 and a.stat40<>'X'", cono, wo);
            DataTable tb = PH.MR.BO.DB.AS400DB.GetTable(sSQL);
            if (tb.Rows.Count == 1)
            {
                this._ordn = Convert.IsDBNull(tb.Rows[0]["ORDN40"]) ? "" : Convert.ToString(tb.Rows[0]["ORDN40"]);
                this._project = Convert.IsDBNull(tb.Rows[0]["CUSO40"]) ? "" : Convert.ToString(tb.Rows[0]["CUSO40"]);
            }
        }
        private void getOrdnByProject(string cono, string Project)
        {
            _ordn = "";
            string sSQL = string.Format("select distinct ORDN40 from ault4f1.oep40"
                + "  where cono40='{0}' and dtlc40=0 and stat40<>'X' and cuso40='{1}'", cono, Project);
            DataTable tb = PH.MR.BO.DB.AS400DB.GetTable(sSQL);
            if (tb.Rows.Count == 1)
            {
                this._ordn = Convert.IsDBNull(tb.Rows[0]["ORDN40"]) ? "" : Convert.ToString(tb.Rows[0]["ORDN40"]);
            }
        }
        private static void AddText(FileStream fs, string value)
        {
            byte[] info = new UTF8Encoding(true).GetBytes(value);
            fs.Write(info, 0, info.Length);
        }

        private void ActionFTP()
        {
            //string cono = this._cono.ToString();
            //this._project = this._QueryCondition["I_PROJECT"].ToString();
            //this._workOrder = this._QueryCondition["I_WORDER"].ToString();

            //if (this._workOrder != "") { this.getProjectByWO(this._cono, this._workOrder); }
            //else 
            getOrdnByProject(this._cono, this._project);

            //quote rcmd CALL PGM(aulphgtst/PH955CLP) PARM('PHG' 'P1' '0001346' 'ODBC' '2006' '1127' '230847')

            string ftp = "";
            //---------test--------
            //ftp += string.Format("quote rcmd CALL PGM(AULPHGTST/PH955CLP) PARM('PHG' '{0}' '{1}' 'ODBC' '{2}' '{3}' '{4}')",
            //    this._cono, this._ordn, this.DT / 10000, this.DT.ToString().Substring(4, 4), this.TM.Substring(0, 6));

            //---------Chris test--------
            //ftp += string.Format("quote rcmd CALL PGM(CT/PH955CLP) PARM('PHG' '{0}' '{1}' 'ODBC' '{2}' '{3}' '{4}')",
            //    this._cono, this._ordn, this.DT / 10000, this.DT.ToString().Substring(4, 4), this.TM.Substring(0, 6));

            //----------go live------------
            ftp += string.Format("quote rcmd CALL PGM(AULPHGMODS/PH955CLP) PARM('PHG' '{0}' '{1}' 'ODBC' '{2}' '{3}' '{4}')",
                this._cono, this._ordn, this.DT / 10000, this.DT.ToString().Substring(4, 4), this.TM.Substring(0, 6));

            string sdt = DateTime.Now.ToString("yyyyMMdd-HHmmssfff");//8.3
            string path1 = string.Format(@"c:\temp\RMR-{0}.txt", sdt);
            string path2 = string.Format(@"c:\temp\RMR-{0}.bat", sdt);

            //string path1 = @"c:\temp\ftpMRcall.txt";
            //string path2 = @"c:\temp\runftpMRcall.bat";

            bool dirExists = Directory.Exists(@"c:\temp");
            if (!dirExists)
            {
                Directory.CreateDirectory(@"c:\temp");
            }
            // Delete the file if it exists.
            //if (File.Exists(path1))
            //{
            //    File.Delete(path1);
            //}
            //Create the file.
            using (FileStream fs = File.Create(path1))
            {
                AddText(fs, "ODBC\n");
                AddText(fs, "mq3hx6gc3t\n");
                AddText(fs, ftp);
                AddText(fs, "\n");
                AddText(fs, "quote quit\n");
                AddText(fs, "quit");
            }


            // Delete the file if it exists.
            //if (File.Exists(path2))
            //{
            //    File.Delete(path2);
            //}
            //Create the file.
            using (FileStream fs = File.Create(path2))
            {
                AddText(fs, string.Format(@"ftp -s:{0} {1}", path1, this._ftpIP));
            }
            //run bat
            ProcessStartInfo psi = new ProcessStartInfo(path2);
            psi.WindowStyle = ProcessWindowStyle.Hidden;
            Process currentProcess = Process.Start(psi);


            //check RPG run finish
            bool bDone = false;
            while (!bDone)
            {
                bDone = CheckHasDone(this._cono, this._jobn);
            }
            #region delete temp file
            DeleteTempFile(@"c:\temp\", "RMR-200?????-*");
            DeleteTempFile(path1);
            DeleteTempFile(path2);
            #endregion

        }

        private void ActionFTP1()
        {
            //string cono = this._cono.ToString();
            //this._project = this._QueryCondition["I_PROJECT"].ToString();

            getOrdnByProject(this._cono, this._project);

            //quote rcmd CALL PGM(AULPHGTST/PH955CLP) PARM('PHG' 'P1' '0001346' 'ODBC' '2006' '1127' '230847')

            string sSQL = "";
            //---------test--------
            sSQL += string.Format("CALL AULPHGTST.SP_MREnquiries(?,?,?,?,?,?,?)");

            System.Data.Odbc.OdbcParameter[] ps = new System.Data.Odbc.OdbcParameter[7];
            System.Data.Odbc.OdbcParameter param;

            param = new System.Data.Odbc.OdbcParameter("I_PHG", System.Data.Odbc.OdbcType.Char, 3);
            param.Direction = ParameterDirection.Input;
            param.Value = "PHG";
            ps[0] = param;

            param = new System.Data.Odbc.OdbcParameter("I_CONO", System.Data.Odbc.OdbcType.Char, 2);
            param.Direction = ParameterDirection.Input;
            param.Value = this._cono;
            ps[1] = param;

            param = new System.Data.Odbc.OdbcParameter("I_ORDN", System.Data.Odbc.OdbcType.Char, 7);
            param.Direction = ParameterDirection.Input;
            param.Value = this._ordn;
            ps[2] = param;

            param = new System.Data.Odbc.OdbcParameter("I_USER", System.Data.Odbc.OdbcType.Char, 10);
            param.Direction = ParameterDirection.Input;
            param.Value = "ODBC";
            ps[3] = param;

            param = new System.Data.Odbc.OdbcParameter("I_YEAR", System.Data.Odbc.OdbcType.Char, 4);
            param.Direction = ParameterDirection.Input;
            param.Value = Convert.ToString(this.DT / 10000);
            ps[4] = param;

            param = new System.Data.Odbc.OdbcParameter("I_DATE", System.Data.Odbc.OdbcType.Char, 4);
            param.Direction = ParameterDirection.Input;
            param.Value = this.DT.ToString().Substring(4, 4);
            ps[5] = param;

            param = new System.Data.Odbc.OdbcParameter("I_TIME", System.Data.Odbc.OdbcType.Char, 6);
            param.Direction = ParameterDirection.Input;
            param.Value = this.TM.Substring(0, 6);
            ps[6] = param;

            //INOUT I_PHG CHAR (3 ), --'PHG'
            //INOUT I_CONO CHAR (2 ), --'P1'
            //INOUT I_ORDN CHAR (7 ), --'0001346'
            //INOUT I_USER CHAR (10 ), --'ODBC'
            //INOUT I_YEAR CHAR (4 ), --'2006' year
            //INOUT I_DATE CHAR (4 ), --'1127' month day
            //INOUT I_TIME CHAR (6 )  --'230847' hhnnss
            //PH.MR.BO.DB.AS400DB.Execute2(sSQL, ps);

        }
        private bool CheckHasDone(string cono, string jobn)
        {
            string sSQL = string.Format("select cono73 from ault4f1.php73t where cono73='{0}' and ordn73='{1}' and jobn73={2}", cono, this._ordn, jobn);
            object obj = PH.MR.BO.DB.AS400DB.GetScalar(sSQL);
            return (!(Convert.IsDBNull(obj) || obj == null));
        }
        private void DeleteTempFile(string file)
        {
            //"POPC-20070315-102755288.bat"
            //int adt = this._dt - 1;
            try
            {
                if (File.Exists(file))
                {
                    File.Delete(file);
                }
            }
            catch
            { }
        }
        private void DeleteTempFile(string path, string searchPattern)
        {
            //"RMR-20070404-200238680.txt"            
            FileInfo fi;
            try
            {
                string[] root = Directory.GetFiles(path, searchPattern);
                foreach (string s in root)
                {
                    fi = new FileInfo(s);
                    string ddd = fi.Name.Substring(4, 8);
                    int dtTemp = 0;
                    try
                    {
                        dtTemp = Convert.ToInt32(ddd);
                        if (dtTemp < this._dt)
                            File.Delete(s);
                    }
                    catch { }
                }
            }
            catch { }
        }

        #endregion

        #region action
        public void DoPHReportAction(XtraReport xtraReport)
        {
            this._report = xtraReport;
            DoPHReportAction();
        }
        public void DoPHReportAction()
        {
            switch (this.phReportAction)
            {
                case PHReportAction.None:
                    break;
                case PHReportAction.ShowReport:
                    this.ShowReport();
                    break;
                case PHReportAction.DesignReport:
                    this.DesignReport();
                    break;
                case PHReportAction.ExportReport:
                    this.ExportByIndex();
                    break;
                default:
                    break;
            }
        }
        #endregion

        #region MR History Enquiries
        public void MRHistoryEnquiries()
        {
            this._generateTips = string.Format("MR History Enquiries for {0}.  Please wait...", this._project);
            //this._workDataSet = new DataSet();

            //string usr = AuthManageClient.AuthController.UserID;

            GetMRHistoryEnquiriesData();
            //GetMRHistoryEnquiriesData(usr, MREnquiriesRight.MREnquiries_MR, "MR");
            //GetMRHistoryEnquiriesData(usr, MREnquiriesRight.MREnquiries_PO, "PO");

            //if (AuthManageClient.AuthController.Validate(usr, MREnquiriesRight.MREnquiries_MC)
            //    || AuthManageClient.AuthController.Validate(usr, MREnquiriesRight.MREnquiries_MU))
            //    GetMRHistoryEnquiriesData(usr, MREnquiriesRight.MREnquiries_MC, "MU");

            //GetMRHistoryEnquiriesData(usr, MREnquiriesRight.MREnquiries_CAC, "CAC");

            //MRHistoryEnquiriesList();
        }
        private void GetMRHistoryEnquiriesData()
        {
            //if (AuthManageClient.AuthController.Validate(usr, rightID))
            {
                string sSQL = string.Format("exec [PHGDB2].dbo.SP_MR_HistoryEnquiries '{0}','{1}',{2}",
                     this._cono, this._project, this._printVersion);

                this._WorkDataTable = PH.MR.BO.DB.GetDataByPage_SQL2000(sSQL);
                //this._WorkDataTable.TableName = "mr" + type;
                //this._workDataSet.Tables.Add(tb);
            }
        }

        #endregion

        #region Save Version
        public void SaveVersion()
        {
            this._progressValue = 0;
            this._generateTips = "Starting save MR...";
            //this._maxVersion = GetMaxVersion();

            try
            {
                Update_MR_LEVL_2();
                SavePHP71T();
                SavePHP72T();
                //SaveWorkOrders();
                SavePHP74T();
                SavePHP75T();
                SavePHP77T();
                SavePHP78T();
                SavePHP79T();
                SavePHP80T();
                SavePHP81T();
                SaveBOMText();
                SaveMRVERSION();
            }
            catch
            {
                CancelSaveVersion(this.FID_Version);
            }
        }
        public static void GetMaxVersion(string cono, string project, string dept, ref int versionNo, ref int fID, ref int deptVersion)
        {
            versionNo = fID = deptVersion = -1;
            DataTable tb = PH.MR.BO.DB.SQL2000DB.GetTable(string.Format("exec sp_GetMRMaxVersion '{0}','{1}','{2}'", cono, project, dept));
            if (tb.Rows.Count > 0)
            {
                DataRow row;
                row = tb.Rows[0];
                versionNo = Convert.IsDBNull(row[0]) ? -1 : Convert.ToInt32(row[0]);
                fID = Convert.IsDBNull(row[1]) ? -1 : Convert.ToInt32(row[1]);
                deptVersion = Convert.IsDBNull(row[2]) ? -1 : Convert.ToInt32(row[2]);
            }
        }
        public static void CancelSaveVersion(int id)
        {
            string sSQL = string.Format("DELETE FROM MR_MaxVersionNo WHERE  FID={0}", id);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
        }

        private void Update_MR_LEVL_2()
        {
            this._progressValue++;
            this._generateTips = "Handling LEVL7x > 1 ...";

            string sSQL;
            sSQL = string.Format("call ZPHLIB_AUL.SP_MR_LEVL_Net ({0})", this._jobn);
            PH.MR.BO.DB.AS400DB.Execute(sSQL);

        }
        private void SavePHP71T()
        {
            this._progressValue++;
            this._generateTips = "Get -> MR Extract (summary)...";//PHP71T

            string sSQL;
            //sSQL = string.Format("SELECT a.*, VCAT01, SPCF35, PUNT35 FROM AULT4F1.PHP71T a"
            //  + " LEFT JOIN AULT4F1.PMP01 ON (CONO71=CONO01 AND SUC171=VNDR01 AND ITEM01=case when LEVL71=1 then CSTL71||CCOL71||CSIZ71 else SSTL71||SCOL71||SSIZ71 end),"
            //  + "AULT2F1.INP35"
            //  + " WHERE CONO35=CONO71 AND PNUM35=case when LEVL71=1 then CSTL71||CCOL71||CSIZ71 else SSTL71||SCOL71||SSIZ71 end AND JOBN71={0}",
            //    this._jobn);
            sSQL = string.Format("SELECT a.*, SPCF35, PUNT35,case when LEVL71=1 then substring(CMPD71,1,18) else substring(SCMD71,1,18) end as VCAT01"
              + " FROM AULT4F1.PHP71T a,AULT2F1.INP35"
              + " WHERE CONO35=CONO71 AND PNUM35=case when LEVL71=1 then CSTL71||CCOL71||CSIZ71 else SSTL71||SCOL71||SSIZ71 end AND JOBN71={0}",
               this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP71T "
                + "(CONO71,VERSION,ORDN71,CUSN71,DSEQ71, CUSO71, DTDR71, PCOL71, MATP71, PITP71, MATD71, CSTL71, CCOL71, CSIZ71,"
                + "CMPD71, LEVL71, CFLG71, SSTL71, SCOL71, SSIZ71, SCMD71, MWTH71, CCGC71, SHDF71, PRJF71, SUC171, CORQ71, ISTR71,"
                + "IUNT71, COIS71, COOS71, RSVP71, RSVS71, RSRS71, ALOC71, PRPQ71, EXSP71, EXSS71, EXRS71, BALQ71, DESM71, MINQ71,"
                + "MLTQ71, UPRC71, DIFP71, DIFA71, OSMP71, OKOC71, RSKI71, LTID71, MATS71, ROUC71, VCAT01, SPCF35, PUNT35)"
                + " Values"
                + "('{0}',{1},'{2}','{3}','{4}', '{5}', {6}, '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}',"
                + "'{14}', {15}, '{16}', '{17}', '{18}', '{19}', '{20}', {21}, '{22}', '{23}', '{24}', '{25}', {26}, '{27}',"
                + "'{28}', {29}, {30}, {31}, {32}, {33}, {34}, {35}, {36}, {37}, {38}, {39}, '{40}', {41},"
                + "{42}, {43}, {44}, {45}, {46}, '{47}', '{48}', {49}, '{50}', '{51}', '{52}', {53}, '{54}')";


            sSQL = string.Format("DELETE FROM MR_PHP71T WHERE CONO71='{0}' AND CUSO71='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> MR Extract (summary)...";//PHP71T

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO71", row),
                    this._maxVersion,
                    ConvertDBString("ORDN71", row),
                    ConvertDBString("CUSN71", row),
                    ConvertDBString("DSEQ71", row),
                    ConvertDBString("CUSO71", row),
                    ConvertDBInt("DTDR71", row),
                    ConvertDBString("PCOL71", row),
                    ConvertDBString("MATP71", row),
                    ConvertDBString("PITP71", row),
                    ConvertDBString("MATD71", row),
                    ConvertDBString("CSTL71", row),
                    ConvertDBString("CCOL71", row),
                    ConvertDBString("CSIZ71", row),
                    ConvertDBString("CMPD71", row),
                    ConvertDBInt("LEVL71", row),
                    ConvertDBString("CFLG71", row),
                    ConvertDBString("SSTL71", row),
                    ConvertDBString("SCOL71", row),
                    ConvertDBString("SSIZ71", row),
                    ConvertDBString("SCMD71", row),
                    ConvertDBDecimal("MWTH71", row),
                    ConvertDBString("CCGC71", row),
                    ConvertDBString("SHDF71", row),
                    ConvertDBString("PRJF71", row),
                    ConvertDBString("SUC171", row),
                    ConvertDBDecimal("CORQ71", row),
                    ConvertDBString("ISTR71", row),
                    ConvertDBString("IUNT71", row),
                    ConvertDBDecimal("COIS71", row),
                    ConvertDBDecimal("COOS71", row),
                    ConvertDBDecimal("RSVP71", row),
                    ConvertDBDecimal("RSVS71", row),
                    ConvertDBDecimal("RSRS71", row),
                    ConvertDBDecimal("ALOC71", row),
                    ConvertDBDecimal("PRPQ71", row),
                    ConvertDBDecimal("EXSP71", row),
                    ConvertDBDecimal("EXSS71", row),
                    ConvertDBDecimal("EXRS71", row),
                    ConvertDBDecimal("BALQ71", row),
                    ConvertDBString("DESM71", row),
                    ConvertDBDecimal("MINQ71", row),
                    ConvertDBDecimal("MLTQ71", row),
                    ConvertDBDecimal("UPRC71", row),
                    ConvertDBDecimal("DIFP71", row),
                    ConvertDBDecimal("DIFA71", row),
                    ConvertDBDecimal("OSMP71", row),
                    ConvertDBString("OKOC71", row),
                    ConvertDBString("RSKI71", row),
                    ConvertDBInt("LTID71", row),
                    ConvertDBString("MATS71", row),
                    ConvertDBString("ROUC71", row),
                    ConvertDBString("VCAT01", row),
                    ConvertDBDecimal("SPCF35", row),
                    ConvertDBString("PUNT35", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP72T()
        {
            this._progressValue++;
            this._generateTips = "Get -> MR Extract (detail)...";//PHP72T

            string sSQL;
            //sSQL = string.Format("SELECT a.*,VCAT01 FROM AULT4F1.PHP72T a"
            //  + " LEFT JOIN AULT4F1.PMP01 ON ( CONO72 = CONO01 AND SUC172 = VNDR01 AND ITEM01=case when LEVL72=1 then CSTL72||CCOL72||CSIZ72 else SSTL72||SCOL72||SSIZ72 end )"
            //  + " WHERE JOBN72={0}",
            //    this._jobn);
            sSQL = string.Format("SELECT a.*,case when LEVL72=1 then substring(CMPD72,1,18) else substring(SCMD72,1,18) end as VCAT01"
              + " FROM AULT4F1.PHP72T a"
              + " WHERE JOBN72={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP72T "
                + " (CONO72, VERSION, ORDN72, CUSO72, DTDR72, PSTL72, PSIZ72, PCOL72, RTCD72, MATP72, PITP72, MATD72,"
                + " CSTL72, CCOL72, CSIZ72, CMPD72, LEVL72, CFLG72, SSTL72, SCOL72, SSIZ72, SCMD72, MWTH72, CCGC72,"
                + " SHDF72, PRJF72, SUC172, QPER72, CORQ72, ISTR72, IUNT72, COIS72, COOS72, RSVP72, RSVS72, RSRS72,"
                + " ALOC72, WORD72, OPSQ72, DESM72, DSTL72, QTOR72, EUOM72, MINQ72, MLTQ72, UPRC72, VCAT01)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}',"
                + " '{12}', '{13}', '{14}', '{15}', {16}, '{17}', '{18}', '{19}', '{20}', '{21}', {22}, '{23}',"
                + " '{24}', '{25}', '{26}', {27}, {28}, '{29}', '{30}', {31}, {32}, {33}, {34}, {35},"
                + " {36}, '{37}', {38}, '{39}', {40}, {41}, '{42}', {43}, {44}, {45}, '{46}')";


            sSQL = string.Format("DELETE FROM MR_PHP72T WHERE CONO72='{0}' AND CUSO72='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> MR Extract (detail)...";

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;
            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO72", row),
                    this._maxVersion,
                    ConvertDBString("ORDN72", row),
                    ConvertDBString("CUSO72", row),
                    ConvertDBInt("DTDR72", row),
                    ConvertDBString("PSTL72", row),
                    ConvertDBString("PSIZ72", row),
                    ConvertDBString("PCOL72", row),
                    ConvertDBString("RTCD72", row),
                    ConvertDBString("MATP72", row),
                    ConvertDBString("PITP72", row),
                    ConvertDBString("MATD72", row),
                    ConvertDBString("CSTL72", row),
                    ConvertDBString("CCOL72", row),
                    ConvertDBString("CSIZ72", row),
                    ConvertDBString("CMPD72", row),
                    ConvertDBInt("LEVL72", row),
                    ConvertDBString("CFLG72", row),
                    ConvertDBString("SSTL72", row),
                    ConvertDBString("SCOL72", row),
                    ConvertDBString("SSIZ72", row),
                    ConvertDBString("SCMD72", row),
                    ConvertDBDecimal("MWTH72", row),
                    ConvertDBString("CCGC72", row),
                    ConvertDBString("SHDF72", row),
                    ConvertDBString("PRJF72", row),
                    ConvertDBString("SUC172", row),
                    ConvertDBDecimal("QPER72", row),
                    ConvertDBDecimal("CORQ72", row),
                    ConvertDBString("ISTR72", row),
                    ConvertDBString("IUNT72", row),
                    ConvertDBDecimal("COIS72", row),
                    ConvertDBDecimal("COOS72", row),
                    ConvertDBDecimal("RSVP72", row),
                    ConvertDBDecimal("RSVS72", row),
                    ConvertDBDecimal("RSRS72", row),
                    ConvertDBDecimal("ALOC72", row),
                    ConvertDBString("WORD72", row),
                    ConvertDBInt("OPSQ72", row),
                    ConvertDBString("DESM72", row),
                    ConvertDBDecimal("DSTL72", row),
                    ConvertDBDecimal("QTOR72", row),
                    ConvertDBString("EUOM72", row),
                    ConvertDBDecimal("MINQ72", row),
                    ConvertDBDecimal("MLTQ72", row),
                    ConvertDBDecimal("UPRC72", row),
                    ConvertDBString("VCAT01", row)
             );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP74T()
        {
            this._progressValue++;
            this._generateTips = "Get -> Sales Order SKU quantities...";//PHP74T 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP74T "
              + " WHERE JOBN74={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP74T "
                + " (CONO74, VERSION, PROJ74, ORDN74, LINE74, PSTL74, PCOL74, PSIZ74, PFT374, QTOR74)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', '{6}', '{7}', '{8}', {9})";


            sSQL = string.Format("DELETE FROM MR_PHP74T WHERE CONO74='{0}' AND PROJ74='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> Sales Order SKU quantities...";//PHP74T 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO74", row),
                    this._maxVersion,
                    ConvertDBString("PROJ74", row),
                    ConvertDBString("ORDN74", row),
                    ConvertDBInt("LINE74", row),
                    ConvertDBString("PSTL74", row),
                    ConvertDBString("PCOL74", row),
                    ConvertDBString("PSIZ74", row),
                    ConvertDBString("PFT374", row),
                    ConvertDBDecimal("QTOR74", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP75T()
        {
            this._progressValue++;
            this._generateTips = "Get -> Works Order Output Quantities...";//PHP75T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP75T "
              + " WHERE JOBN75={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP75T "
                + " (CONO75, VERSION, PROJ75, ORDN75, LINE75, WORD75, PSTL75, PCOL75, PSIZ75, PFT375, QTOR75)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', '{6}', '{7}', '{8}', '{9}', {10})";


            sSQL = string.Format("DELETE FROM MR_PHP75T WHERE CONO75='{0}' AND PROJ75='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> Works Order Output Quantities...";//PHP75T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO75", row),
                    this._maxVersion,
                    ConvertDBString("PROJ75", row),
                    ConvertDBString("ORDN75", row),
                    ConvertDBInt("LINE75", row),
                    ConvertDBString("WORD75", row),
                    ConvertDBString("PSTL75", row),
                    ConvertDBString("PCOL75", row),
                    ConvertDBString("PSIZ75", row),
                    ConvertDBString("PFT375", row),
                    ConvertDBDecimal("QTOR75", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP77T()
        {
            this._progressValue++;
            this._generateTips = "Get -> Material Requirements...";//PHP77T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP77T "
              + " WHERE JOBN77={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP77T "
                + " (CONO77, VERSION, PROJ77, ORDN77, LINE77, WORD77, PSTL77, PCOL77, PSIZ77, PFT377, OPSQ77,"
                + " CPSQ77, COMP77, QPER77, ISTR77, CORQ77, COIS77, ALOC77, ISSQ77, UISQ77, RETQ77)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', '{6}', '{7}', '{8}', '{9}', {10},"
                + " {11}, '{12}', {13}, '{14}', {15}, {16}, {17}, {18}, {19}, {20})";


            sSQL = string.Format("DELETE FROM MR_PHP77T WHERE CONO77='{0}' AND PROJ77='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> Material Requirements...";//PHP77T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO77", row),
                    this._maxVersion,
                    ConvertDBString("PROJ77", row),
                    ConvertDBString("ORDN77", row),
                    ConvertDBInt("LINE77", row),
                    ConvertDBString("WORD77", row),
                    ConvertDBString("PSTL77", row),
                    ConvertDBString("PCOL77", row),
                    ConvertDBString("PSIZ77", row),
                    ConvertDBString("PFT377", row),
                    ConvertDBInt("OPSQ77", row),
                    ConvertDBInt("CPSQ77", row),
                    ConvertDBString("COMP77", row),
                    ConvertDBDecimal("QPER77", row),
                    ConvertDBString("ISTR77", row),
                    ConvertDBDecimal("CORQ77", row),
                    ConvertDBDecimal("COIS77", row),
                    ConvertDBDecimal("ALOC77", row),
                    ConvertDBDecimal("ISSQ77", row),
                    ConvertDBDecimal("UISQ77", row),
                    ConvertDBDecimal("RETQ77", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP78T()
        {
            this._progressValue++;
            this._generateTips = "Get -> Purchase Order details...";//PHP78T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP78T "
              + " WHERE JOBN78={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP78T "
                + " (CONO78, VERSION, PROJ78, ORDN78, LINE78, PSTL78, PCOL78, PSIZ78, PFT378, OQTY78, QREC78)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', '{6}', '{7}', '{8}', {9}, {10})";


            sSQL = string.Format("DELETE FROM MR_PHP78T WHERE CONO78='{0}' AND PROJ78='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> Purchase Order details...";//PHP78T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO78", row),
                    this._maxVersion,
                    ConvertDBString("PROJ78", row),
                    ConvertDBString("ORDN78", row),
                    ConvertDBInt("LINE78", row),
                    ConvertDBString("PSTL78", row),
                    ConvertDBString("PCOL78", row),
                    ConvertDBString("PSIZ78", row),
                    ConvertDBString("PFT378", row),
                    ConvertDBDecimal("OQTY78", row),
                    ConvertDBDecimal("QREC78", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP79T()
        {
            this._progressValue++;
            this._generateTips = "Get -> Stock Reservation && Locking details...";//PHP79T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP79T "
              + " WHERE JOBN79={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP79T "
                + " (CONO79, VERSION, PROJ79, IDNO79, PSTL79, PCOL79, PSIZ79, PFT379, RDCL79, STRC79, LOCN79, RQTY79, LQTY79)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', {11}, {12})";


            sSQL = string.Format("DELETE FROM MR_PHP79T WHERE CONO79='{0}' AND PROJ79='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> Stock Reservation && Locking details...";//PHP79T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO79", row),
                    this._maxVersion,
                    ConvertDBString("PROJ79", row),
                    ConvertDBString("IDNO79", row),
                    ConvertDBString("PSTL79", row),
                    ConvertDBString("PCOL79", row),
                    ConvertDBString("PSIZ79", row),
                    ConvertDBString("PFT379", row),
                    ConvertDBString("RDCL79", row),
                    ConvertDBString("STRC79", row),
                    ConvertDBString("LOCN79", row),
                    ConvertDBDecimal("RQTY79", row),
                    ConvertDBDecimal("LQTY79", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP80T()
        {
            this._progressValue++;
            this._generateTips = "Get -> CAC (BOM) Material YY...";//PHP80T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP80T "
              + " WHERE JOBN80={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP80T "
                + " (CONO80, VERSION, PROJ80, ORDN80, LINE80, PSTL80, LEVL80, PRNT80, PCOL80, PSIZ80, PFT380, COMP80, QPER80, MUOM80, UPRC80, MWTH80)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', {6}, '{7}', '{8}', '{9}', '{10}', '{11}', {12}, '{13}', {14}, {15})";


            sSQL = string.Format("DELETE FROM MR_PHP80T WHERE CONO80='{0}' AND PROJ80='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> CAC (BOM) Material YY...";//PHP80T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO80", row),
                    this._maxVersion,
                    ConvertDBString("PROJ80", row),
                    ConvertDBString("ORDN80", row),
                    ConvertDBInt("LINE80", row),
                    ConvertDBString("PSTL80", row),
                    ConvertDBInt("LEVL80", row),
                    ConvertDBString("PRNT80", row),
                    ConvertDBString("PCOL80", row),
                    ConvertDBString("PSIZ80", row),
                    ConvertDBString("PFT380", row),
                    ConvertDBString("COMP80", row),
                    ConvertDBDecimal("QPER80", row),
                    ConvertDBString("MUOM80", row),
                    ConvertDBDecimal("UPRC80", row),
                    ConvertDBDecimal("MWTH80", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP81T()
        {
            this._progressValue++;
            this._generateTips = "Get -> Works Order Material YY...";//PHP81T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP81T "
              + " WHERE JOBN81={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP81T "
                + " (CONO81, VERSION, PROJ81, ORDN81, LINE81, WORD81, LEVL81, PRNT81, PSTL81, PCOL81, PSIZ81, PFT381, COMP81, QPER81, MUOM81, UPRC81, MWTH81)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', {6}, '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', {13}, '{14}', {15}, {16})";


            sSQL = string.Format("DELETE FROM MR_PHP81T WHERE CONO81='{0}' AND PROJ81='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            this._progressValue++;
            this._generateTips = "Save -> Works Order Material YY...";//PHP81T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO81", row),
                    this._maxVersion,
                    ConvertDBString("PROJ81", row),
                    ConvertDBString("ORDN81", row),
                    ConvertDBInt("LINE81", row),
                    ConvertDBString("WORD81", row),
                    ConvertDBInt("LEVL81", row),
                    ConvertDBString("PRNT81", row),
                    ConvertDBString("PSTL81", row),
                    ConvertDBString("PCOL81", row),
                    ConvertDBString("PSIZ81", row),
                    ConvertDBString("PFT381", row),
                    ConvertDBString("COMP81", row),
                    ConvertDBDecimal("QPER81", row),
                    ConvertDBString("MUOM81", row),
                    ConvertDBDecimal("UPRC81", row),
                    ConvertDBDecimal("MWTH81", row)
                 );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SaveBOMText()
        {
            //string cono = this._cono.ToString();
            this._progressValue++;
            this._generateTips = "Get -> BOM Text...";//AULT5F1.MSP02CH1 – 

            string sSQL;
            //sSQL = string.Format("SELECT PSTL74,LOCD55,TXLN02,TEXT02"
            //    + " FROM AULT5F1.MSP02CH1 a, AULT4F1.PHP74T b, AULT4F1.OEP55 c "
            //    + " WHERE JOBN74={0} and CONO02=cono74 AND TTYP02='BILL' AND TSTP02='RT1' and substring(TKEY02,1,9)=PSTL74"
            //    + " and cono55=cono74 and ordn55=ordn74 and ordl55=LINE74 and catn55=PSTL74"
            //    +" and substring(TKEY02,16,1)=case when LOCD55 = 'FG' then '1' when LOCD55 = 'FT' then '2' else '0' end"
            //    + " Order by PSTL74,LOCD55,TXLN02",
            //    this._jobn);
            sSQL = string.Format("SELECT distinct CATN55,LOCD55,TXLN02,TEXT02"
                + " FROM AULT5F1.MSP02CH1 a, AULT4F1.OEP55 c "
                + " WHERE CONO02=cono55 AND TTYP02='BILL' AND TSTP02='RT1' and substring(TKEY02,1,9)=catn55"
                + " and cono55='{0}' and ordn55='{1}'"
                + " and substring(TKEY02,16,1)=case when LOCD55 = 'FG' then '1' when LOCD55 = 'FT' then '2' else '0' end"
                + " Order by CATN55,LOCD55,TXLN02",
                this._cono, this._ordn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "EXEC SP_MR_BOMText '{0}', '{1}', '{2}', {3}, '{4}' ";
            //COMPANY, STYLE, STOCKROOM, LINE, NOTEPAD

            this._progressValue++;
            this._generateTips = "Save -> BOM Text...";//AULT5F1.MSP02CH1 – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    this._cono,
                    ConvertDBString("CATN55", row),
                    ConvertDBString("LOCD55", row),
                    ConvertDBInt("TXLN02", row),
                    ConvertDBString("TEXT02", row)

                 );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SaveMRVERSION()
        {
            this._progressValue++;
            this._generateTips = "Save -> MR VERSION Information...";

            string customer = GetCustomerFromAS400(this._jobn);
            string sSQL;

            string insertSQL = "INSERT INTO MR_VERSION "
                + " (COMPANY,PROJECT,VERSION,REMARK,FUSER,DEPT,FDATE,ORDN,DeptVersion,CUSTOMER)"
                + " Values"
                + " ('{0}','{1}',{2},'{3}','{4}','{5}',getDate(),'{6}',{7},'{8}')";


            sSQL = string.Format("DELETE FROM MR_VERSION WHERE COMPANY='{0}' AND PROJECT='{1}' AND VERSION={2}",
                   this._cono, this._project, this._maxVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            sSQL = string.Format(insertSQL,
                this._cono,
                this._project,
                this._maxVersion,
                this._VersionDescription,
                PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID,//z..r PH.AuthManage.Utils.AuthController.UserID,
                this._dept,
                this._ordn,
                this._deptVersion,
                customer
            );
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
        }

        private void SavePHP71T_TEMP(string tempVersion)
        {
            //this._progressValue++;
            this._generateTips = "Get -> MR Extract (summary)...";//PHP71T_TEMP

            string sSQL;
            //sSQL = string.Format("SELECT a.*, VCAT01, SPCF35, PUNT35 FROM AULT4F1.PHP71T a"
            //  + " LEFT JOIN AULT4F1.PMP01 ON (CONO71=CONO01 AND SUC171=VNDR01 AND ITEM01=case when LEVL71=1 then CSTL71||CCOL71||CSIZ71 else SSTL71||SCOL71||SSIZ71 end),AULT2F1.INP35"
            //  + " WHERE CONO35=CONO71 AND PNUM35=case when LEVL71=1 then CSTL71||CCOL71||CSIZ71 else SSTL71||SCOL71||SSIZ71 end AND JOBN71={0}",
            //    this._jobn);
            sSQL = string.Format("SELECT a.*, SPCF35, PUNT35,case when LEVL71=1 then substring(CMPD71,1,18) else substring(SCMD71,1,18) end as VCAT01"
              + " FROM AULT4F1.PHP71T a,AULT2F1.INP35"
              + " WHERE CONO35=CONO71 AND PNUM35=case when LEVL71=1 then CSTL71||CCOL71||CSIZ71 else SSTL71||SCOL71||SSIZ71 end AND JOBN71={0}",
                 this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP71T_TEMP "
                + "(CONO71,VERSION,ORDN71,CUSN71,DSEQ71, CUSO71, DTDR71, PCOL71, MATP71, PITP71, MATD71, CSTL71, CCOL71, CSIZ71,"
                + "CMPD71, LEVL71, CFLG71, SSTL71, SCOL71, SSIZ71, SCMD71, MWTH71, CCGC71, SHDF71, PRJF71, SUC171, CORQ71, ISTR71,"
                + "IUNT71, COIS71, COOS71, RSVP71, RSVS71, RSRS71, ALOC71, PRPQ71, EXSP71, EXSS71, EXRS71, BALQ71, DESM71, MINQ71,"
                + "MLTQ71, UPRC71, DIFP71, DIFA71, OSMP71, OKOC71, RSKI71, LTID71, MATS71, ROUC71, VCAT01, SPCF35, PUNT35)"
                + " Values"
                + "('{0}',{1},'{2}','{3}','{4}', '{5}', {6}, '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}',"
                + "'{14}', {15}, '{16}', '{17}', '{18}', '{19}', '{20}', {21}, '{22}', '{23}', '{24}', '{25}', {26}, '{27}',"
                + "'{28}', {29}, {30}, {31}, {32}, {33}, {34}, {35}, {36}, {37}, {38}, {39}, '{40}', {41},"
                + "{42}, {43}, {44}, {45}, {46}, '{47}', '{48}', {49}, '{50}', '{51}', '{52}', {53}, '{54}')";

            sSQL = string.Format("DELETE FROM MR_PHP71T_TEMP WHERE FLOOR(VERSION/100)<FLOOR({0}/100)", tempVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            //this._progressValue++;
            this._generateTips = "Save TEMP -> MR Extract (summary)...";//PHP71T_TEMP

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO71", row),
                    tempVersion,
                    ConvertDBString("ORDN71", row),
                    ConvertDBString("CUSN71", row),
                    ConvertDBString("DSEQ71", row),
                    ConvertDBString("CUSO71", row),
                    ConvertDBInt("DTDR71", row),
                    ConvertDBString("PCOL71", row),
                    ConvertDBString("MATP71", row),
                    ConvertDBString("PITP71", row),
                    ConvertDBString("MATD71", row),
                    ConvertDBString("CSTL71", row),
                    ConvertDBString("CCOL71", row),
                    ConvertDBString("CSIZ71", row),
                    ConvertDBString("CMPD71", row),
                    ConvertDBInt("LEVL71", row),
                    ConvertDBString("CFLG71", row),
                    ConvertDBString("SSTL71", row),
                    ConvertDBString("SCOL71", row),
                    ConvertDBString("SSIZ71", row),
                    ConvertDBString("SCMD71", row),
                    ConvertDBDecimal("MWTH71", row),
                    ConvertDBString("CCGC71", row),
                    ConvertDBString("SHDF71", row),
                    ConvertDBString("PRJF71", row),
                    ConvertDBString("SUC171", row),
                    ConvertDBDecimal("CORQ71", row),
                    ConvertDBString("ISTR71", row),
                    ConvertDBString("IUNT71", row),
                    ConvertDBDecimal("COIS71", row),
                    ConvertDBDecimal("COOS71", row),
                    ConvertDBDecimal("RSVP71", row),
                    ConvertDBDecimal("RSVS71", row),
                    ConvertDBDecimal("RSRS71", row),
                    ConvertDBDecimal("ALOC71", row),
                    ConvertDBDecimal("PRPQ71", row),
                    ConvertDBDecimal("EXSP71", row),
                    ConvertDBDecimal("EXSS71", row),
                    ConvertDBDecimal("EXRS71", row),
                    ConvertDBDecimal("BALQ71", row),
                    ConvertDBString("DESM71", row),
                    ConvertDBDecimal("MINQ71", row),
                    ConvertDBDecimal("MLTQ71", row),
                    ConvertDBDecimal("UPRC71", row),
                    ConvertDBDecimal("DIFP71", row),
                    ConvertDBDecimal("DIFA71", row),
                    ConvertDBDecimal("OSMP71", row),
                    ConvertDBString("OKOC71", row),
                    ConvertDBString("RSKI71", row),
                    ConvertDBInt("LTID71", row),
                    ConvertDBString("MATS71", row),
                    ConvertDBString("ROUC71", row),
                    ConvertDBString("VCAT01", row),
                    ConvertDBDecimal("SPCF35", row),
                    ConvertDBString("PUNT35", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP77T_TEMP(string tempVersion)
        {
            //this._progressValue++;
            this._generateTips = "Get -> Material Requirements...";//PHP77T – 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP77T "
              + " WHERE JOBN77={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP77T_TEMP "
                + " (CONO77, VERSION, PROJ77, ORDN77, LINE77, WORD77, PSTL77, PCOL77, PSIZ77, PFT377, OPSQ77,"
                + " CPSQ77, COMP77, QPER77, ISTR77, CORQ77, COIS77, ALOC77, ISSQ77, UISQ77, RETQ77)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', '{6}', '{7}', '{8}', '{9}', {10},"
                + " {11}, '{12}', {13}, '{14}', {15}, {16}, {17}, {18}, {19}, {20})";


            sSQL = string.Format("DELETE FROM MR_PHP77T_TEMP WHERE FLOOR(VERSION/100)<FLOOR({0}/100)", tempVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            //this._progressValue++;
            this._generateTips = "Save TEMP-> Material Requirements...";//PHP77T – 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO77", row),
                    tempVersion,
                    ConvertDBString("PROJ77", row),
                    ConvertDBString("ORDN77", row),
                    ConvertDBInt("LINE77", row),
                    ConvertDBString("WORD77", row),
                    ConvertDBString("PSTL77", row),
                    ConvertDBString("PCOL77", row),
                    ConvertDBString("PSIZ77", row),
                    ConvertDBString("PFT377", row),
                    ConvertDBInt("OPSQ77", row),
                    ConvertDBInt("CPSQ77", row),
                    ConvertDBString("COMP77", row),
                    ConvertDBDecimal("QPER77", row),
                    ConvertDBString("ISTR77", row),
                    ConvertDBDecimal("CORQ77", row),
                    ConvertDBDecimal("COIS77", row),
                    ConvertDBDecimal("ALOC77", row),
                    ConvertDBDecimal("ISSQ77", row),
                    ConvertDBDecimal("UISQ77", row),
                    ConvertDBDecimal("RETQ77", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }
        private void SavePHP80T_TEMP(string tempVersion)
        {
            //this._progressValue++;
            this._generateTips = "Get -> CAC (BOM) Material YY...";//PHP80T_TEMP 

            string sSQL;
            sSQL = string.Format("SELECT * FROM AULT4F1.PHP80T "
              + " WHERE JOBN80={0}",
                this._jobn);
            DataTable tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);

            string insertSQL = "INSERT INTO MR_PHP80T_TEMP "
                + " (CONO80, VERSION, PROJ80, ORDN80, LINE80, PSTL80, LEVL80, PRNT80, PCOL80, PSIZ80, PFT380, COMP80, QPER80, MUOM80, UPRC80, MWTH80)"
                + " Values"
                + " ('{0}', {1}, '{2}', '{3}', {4}, '{5}', {6}, '{7}', '{8}', '{9}', '{10}', '{11}', {12}, '{13}', {14}, {15})";


            sSQL = string.Format("DELETE FROM MR_PHP80T_TEMP WHERE FLOOR(VERSION/100)<FLOOR({0}/100)", tempVersion);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

            //this._progressValue++;
            this._generateTips = "Save TEMP -> CAC (BOM) Material YY...";//PHP80T_TEMP 

            _generateInsertMax = tb.Rows.Count;
            _progressValue_Insert = 0;

            foreach (DataRow row in tb.Rows)
            {
                _progressValue_Insert++;
                sSQL = string.Format(insertSQL,
                    ConvertDBString("CONO80", row),
                    tempVersion,
                    ConvertDBString("PROJ80", row),
                    ConvertDBString("ORDN80", row),
                    ConvertDBInt("LINE80", row),
                    ConvertDBString("PSTL80", row),
                    ConvertDBInt("LEVL80", row),
                    ConvertDBString("PRNT80", row),
                    ConvertDBString("PCOL80", row),
                    ConvertDBString("PSIZ80", row),
                    ConvertDBString("PFT380", row),
                    ConvertDBString("COMP80", row),
                    ConvertDBDecimal("QPER80", row),
                    ConvertDBString("MUOM80", row),
                    ConvertDBDecimal("UPRC80", row),
                    ConvertDBDecimal("MWTH80", row)
                );
                PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            }
            _progressValue_Insert = 0;
        }

        public static string GetCustomerFromAS400(string jobn)
        {
            string sSQL = string.Format("SELECT distinct CUSN71 FROM AULT4F1.PHP71T "
               + " WHERE JOBN71={0}", jobn);
            object obj = PH.MR.BO.DB.AS400DB.GetScalar(sSQL);
            return Convert.IsDBNull(obj) ? "" : Convert.ToString(obj);
        }
        #endregion


        /// <summary>
        /// Assign some mrHelper values to this
        /// </summary>
        /// <param name="mrHelper"></param>
        public void Assign(MRHelper mrHelper)
        {
            if (mrHelper == null) return;

            this._dt = mrHelper._dt;
            this._tm = mrHelper._tm;
            this._jobn = mrHelper._jobn;
            this._jobnNew = mrHelper._jobnNew;
            this._cono = mrHelper._cono;
            this._project = mrHelper._project;
            this._dept = mrHelper.Dept;
            this._ordn = mrHelper._ordn;
            //this._workOrder = mrHelper._workOrder;
            this._Draft = mrHelper._Draft;
            this._hasPrintedReport = mrHelper._hasPrintedReport;
            //this._QueryCondition = mrHelper._QueryCondition;

            this._tempVersionJOBN = mrHelper._tempVersionJOBN;
            this._hasSaveTempTable = mrHelper._hasSaveTempTable;
        }

        /// <summary>
        /// MR to Compiere
        /// </summary>
        public void MR2Compiere()
        {
            string sSQL;
            string jobnNew_Compiere;
            bool hasPrintedSumBreakDownListing = ((this._hasPrintedReport & HasPrintedReport.MR_SumBreakDownListing) == HasPrintedReport.MR_SumBreakDownListing);

            this._generateTips = "get MR data";
            if (!hasPrintedSumBreakDownListing)
            {
                jobnNew_Compiere = DateTime.Now.ToString("yyyyMMddHH.mmss");
                //sSQL = string.Format("CALL ZPHLIB_AUL.SP_MRSUM3_NET('{0}','{1}',{2},{3})",
                //      this.QueryCondition["I_CONO"],
                //      this.Project,
                //      this.JOBN,
                //      jobnNew_Compiere);

                sSQL = string.Format("CALL ZPHLIB_AUL.SP_MRSUM2_NET('{0}','{1}',{2},{3})",
                       this._cono,
                       this._project,
                       this._jobn,
                       jobnNew_Compiere);

                PH.MR.BO.DB.AS400DB.Execute(sSQL);
            }
            else
                jobnNew_Compiere = this._jobnNew;

            sSQL = string.Format("select * from ZPHLIB_AUL.mrsum2 where JOBN={0}", jobnNew_Compiere);
            DataTable tbMR;

            tbMR = GetDataByPage_AS400(sSQL);

            #region Get data by Page
            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.AS400DB.GetTablePrepare(sSQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //tbMR = PH.MR.BO.DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        tbMR.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.AS400DB.EndGetTable(gkey);
            //tbMR.AcceptChanges();
            #endregion

            //if (tbMR.Rows.Count == 0)
            //{
            //    MessageBox.Show("No data to translate!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}

            this._generateTips = "Insert MR data to Compiere";
            //delete the exists data in oracle of project
            sSQL = string.Format("delete from I_ErpMR where CONO='{0}' and trim(PROJECTNO)='{1}'",
                this._cono,
                this._project.Trim());

            PH.MR.BO.DB.OracleDB.Execute(sSQL);

            //then insert
            foreach (DataRow row in tbMR.Rows)
            {
                sSQL = string.Format("insert into I_ErpMR"
                  + " (PROJECTNO,CODE,SUPPLIERREF,MARKERWIDTH,SUPPLIERCODE,MULTICOLOR,MATSIZE,PLANNEDYYQTY,SALESORDER,CONO,MATD,RESERVEDPOQTY,RESERVEDSTOCKQTY,STOCKOUTQTY,BALANCEQTY,AVALIABLEPOQTY,AVALIABLESTOCKQTY,WORKORDER)"
                  + " values('{0}','{1}','{2}','{3}','{4}','{5}','{6}',{7},'{8}','{9}','{10}',{11},{12},{13},{14},{15},{16},' ')",
                      ConvertDBString("CUSO", row).Trim(),//PROJECTNO
                      ConvertDBString("CSTL", row),//CODE
                      ConvertDBString("VCAT", row),//SUPLIERREF
                      ConvertDBString("MWTH", row),//MARKERWIDTH
                      ConvertDBString("SUPC", row),//SUPLIERCODE
                      ConvertDBString("CCOL", row),//MULTICOLOR
                      ConvertDBString("CSIZ", row),//MATSIZE
                      ConvertDBDouble("CORQ", row),//PLANNEDYYQTY
                      ConvertDBString("ORDN", row),//SALESORDER
                      ConvertDBString("CONO", row),//CONO              
                      ConvertDBString("MATD", row),//MATD Material Code Type             
                      ConvertDBDouble("RSVP", row),//RESERVEDPOQTY
                      ConvertDBDouble("RSVS", row),//RESERVEDSTOCKQTY
                      ConvertDBDouble("COIS", row),//STOCKOUTQTY
                      ConvertDBDouble("BALQ", row),//BALANCEQTY
                      ConvertDBDouble("EXSP", row),//AVALIABLEPOQTY
                      ConvertDBDouble("EXSS", row) //AVALIABLESTOCKQTY
               );
                PH.MR.BO.DB.OracleDB.Execute(sSQL);
            }
        }

        /// <summary>
        /// DesignReport 
        /// </summary>
        public void DesignReport1()
        {
            this.GetReportData();

            XtraReport report = new XtraReport();
            string rptFile = System.Windows.Forms.Application.StartupPath + @"\Reports\" + GetReportFile();
            if (!System.IO.File.Exists(rptFile)) return;
            report.LoadLayout(rptFile);

            report.DataSource = this.WorkDataTable;
            BandingReport(report);
            SetReportHeaderBand(report);

            report.ShowDesignerDialog();
        }

        /// <summary>
        /// Compare version
        /// </summary>
        public void CompareVersion()
        {
            this._generateTips = string.Format("Compare {0} for {1}.  Please wait...", this._compareOption, this._project);

            int fromVersion = this.Versions[0].VERSION;// Convert.ToInt32(this.Versions[0]);
            int toVersion = this.Versions[1].VERSION;//Convert.ToInt32(this.Versions[1]);
            string tempVersion = toVersion.ToString();

            this._WorkDataTable = null;
            string sStoreProcedure = "SP_MR_Compare";

            //switch (this._compareOption)
            //{
            //    case PHCompareOption.MR:
            //        sStoreProcedure = "SP_MR_CompareMR";
            //        break;
            //    case PHCompareOption.CAC:
            //        sStoreProcedure = "SP_MR_CompareCAC";
            //        break;
            //    case PHCompareOption.PO:
            //        sStoreProcedure = "SP_MR_ComparePO";
            //        break;
            //    default:
            //        sStoreProcedure = "";
            //        break;
            //}
            //if (sStoreProcedure == "") return;
            if (toVersion == -1)
            {
                sStoreProcedure += "_TEMP";

                if (!this._hasSaveTempTable)
                {
                    this._tempVersionJOBN = DateTime.Now.ToString("yyyyMMddHH.mmss");
                    tempVersion = this._tempVersionJOBN;

                    Update_MR_LEVL_2();
                    SavePHP71T_TEMP(tempVersion);
                    SavePHP77T_TEMP(tempVersion);
                    //SavePHP80T_TEMP(tempVersion);
                    //SaveBOMText();

                    this._hasSaveTempTable = true;
                }
                else
                    tempVersion = this._tempVersionJOBN;

            }

            this._generateTips = string.Format("Compare {0} for {1}.  Please wait...", this._compareOption, this._project);

            string sSQL = string.Format("exec {0} '{1}','{2}','{3}',{4},{5}",
                   sStoreProcedure,
                   this.Versions[0].COMPANY,
                   this.Versions[0].PROJECT,
                   this._compareOption,
                   fromVersion, tempVersion);

            this._WorkDataTable = PH.MR.BO.DB.GetDataByPage_SQL2000(sSQL);
        }


        #region Get Data to DataTable
        public string GetSQLByLinkserver(string ASQL, string linkServer)
        {
            //INTERBASE, AS400
            string sql = string.Format("select * from openquery({0},'{1}')", linkServer, ASQL.Replace("'", "''"));
            return sql;
        }
        public DataTable GetDataTableByLinkserver(string as400Sql, string linkServer)
        {
            string sqlstr = MRContextConnectString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            string sql = GetSQLByLinkserver(as400Sql, linkServer);

            da.SelectCommand = new SqlCommand(sql, cn);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public DataTable GetDataByPage_AS400(string ASQL)
        {
            return GetDataTableByLinkserver(ASQL, "AS400");

            //Guid gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.AS400DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //DataTable returnTable = PH.MR.BO.DB.AS400DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        returnTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.AS400DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.AS400DB.EndGetTable(gkey);
            //returnTable.AcceptChanges();
            //return returnTable;
        }
        public DataTable GetDataByPage_INTERBASE(string ASQL)
        {
            return GetDataTableByLinkserver(ASQL, "INTERBASE");

            //Guid gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.IBDB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //DataTable returnTable = PH.MR.BO.DB.IBDB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        returnTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.IBDB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.IBDB.EndGetTable(gkey);
            //returnTable.AcceptChanges();
            //return returnTable;
        }
        public DataTable GetDataByPage_SQL2000(string ASQL)
        {
            //CACReportDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<CACReportDataContext>();
            string sqlstr = MRContextConnectString;// context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand(ASQL, cn);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

            //Guid gkey;
            //gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            //// 预处理SQL语句
            //PH.MR.BO.DB.SQL2000DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            //// 取出第一页数据
            //DataTable returnTable = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            //DataTable table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);// 取下一页数据
            ////if (table == null)// 已经无新的数据
            //while (table != null)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        returnTable.Rows.Add(row.ItemArray);
            //    }
            //    // 取下一页数据
            //    table = PH.MR.BO.DB.SQL2000DB.GetNextTable(gkey);
            //}
            ////关闭上次未取完的数据连接
            //PH.MR.BO.DB.SQL2000DB.EndGetTable(gkey);
            //returnTable.AcceptChanges();
            //return returnTable;
        }


        #endregion

    }
}
