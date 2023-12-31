using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using System.Data;
using System.IO;
using System.Windows.Forms;
using System.Diagnostics;
using DevExpress.XtraReports.UI;
using DevExpress.XtraReports.Native;
using DevExpress.XtraPrinting;


namespace PH.POPC.AutoUpdate.UI
{
    //PrepareData_Update
    //PrepareOtherData_Update
    public class UpdateHelper
    {

        public UpdateHelper()
        {
            _phReportAction = PHReportAction.None;
            _ftpIP = UISetting.AS400DBIP;
            //_AS400DB = as400ds;
            //_sql2000db = sql2000ds;
            //_IBDB = ibds;

            _generateFinish = false;
            _generateTips = "";
            _progressValue = 0;
            _progressValue_Insert = 0;
            _generateMax = 6;
            _generateInsertMax = 10000;
            TitleTips = "";
            ProcessingPO = "";
            CanRefreshTips = false;
            StopRun = false;

            InitAS400Value();
        }


        #region fields

        public bool StopRun { get; set; }


        #region generate POPC

        private bool _generateFinish;
        public bool GenerateFinish
        {
            get { return _generateFinish; }
            set { _generateFinish = value; }
        }

        public string TitleTips { get; set; }
        //public string ProcessingPO { get; set; }
        private string _processingPO;
        public string ProcessingPO
        {
            get
            {
                return _processingPO;
            }
            set
            {
                _processingPO = value;
                CanRefreshTips = true;
                string sdt = DateTime.Now.ToString("yyyyMMdd");
                string path1 = string.Format(@"c:\temp\POPC.Update-{0}.log", sdt);
                using (FileStream fs = File.Open(path1, FileMode.Append, FileAccess.Write))
                {
                    AddText(fs, string.Format("{0}\n", _processingPO));
                }
            }
        }

        public bool CanRefreshTips { get; set; }

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

        private PHReportAction _phReportAction;
        public PHReportAction phReportAction
        {
            get { return _phReportAction; }
            set { _phReportAction = value; }
        }

        private string _ftpIP;

        private bool _showProcessForm;
        public bool ShowProcessForm
        {
            get
            {
                return _showProcessForm;
            }
            set
            {
                _showProcessForm = value;
            }
        }

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
        private string ConvertDBString(string fieldName, DataRow row)
        {
            string s = Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]);
            s = s.Replace("'", "''");
            return s;
        }
        #endregion
        
        #region Auto updated PO List from ERP

        private bool _isLive;
        private string _as400TableLib;
        private string _as400Param;
        private string _as400RPGLib;

        private void InitAS400Value()
        {
            PhSys.AppSetting appSettings = new PhSys.AppSetting("PH.Remoting");
            _isLive = (bool)UISetting.GetSettingValueDefault(appSettings, "GoLive", false);

            _as400TableLib = _isLive ? "AULT" : "TSTT";
            _as400Param = _isLive ? "PHG" : "TST";
            _as400RPGLib = _isLive ? "AULPHGMODS" : "AULPHGTST";
        }
        public void PrepareData_Update()
        {
            CanRefreshTips = false;
            _progressValue = 0;
            TitleTips = "get PO list...";
            _generateTips = "";

            //sql = "select CONO99 as CONO,ORDN99 as PONO,EVENT,UPDATETIME,PCDATETIME,FLAG  from TSTT4F1.PHP99 where ORDN99<>'' and FLAG='0'";
            //sql = string.Format("select distinct CONO96A as CONO,ORDN96A as PONO,FLAG  from {0}4F1.PHP96A where ORDN96A<>'' and FLAG='0'", _as400TableLib);
            //string sql = string.Format("select CONO96A as CONO,ORDN96A as PONO,FLAG,EVENT,UPDATETIME,PCDATETIME,tabl96a as TableName  from {0}4F1.PHP96A where ORDN96A<>'' and FLAG='0' order by UPDATETIME", _as400TableLib);
            string sql = string.Format("select CONO96A as CONO,ORDN96A as PONO,FLAG,max(UPDATETIME) as UPDATETIME  from {0}4F1.PHP96A where  CONO96A='P1' and ORDN96A<>'' and FLAG='0' group by CONO96A,ORDN96A,FLAG", _as400TableLib);
            DataTable tb;
            try
            {
                tb = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:   [Get PHP96A]  [Time:{0:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{1}", DateTime.Now, e.Message);
                return;
            }
            List<POList> list = TableORM.GetObjects<POList>(tb, true);

            string sSuccess = string.Format("\r\n--->PO list  [count:{0}] [Time:{1:yyyy'-'MM'-'dd HH:mm:ss}] ...\r\n", list.Count, DateTime.Now);

            int i = 0;
            foreach (POList p in list)
            {
                i++;
                try
                {
                    TitleTips = string.Format("doing {0}:{1} [{2}/{3}]-{4:yyyy'-'MM'-'dd HH:mm:ss.fff}...", p.CONO, p.PONO, i, list.Count, p.UPDATETIME);
                    ProcessingPO = string.Format("{0}[{1}/{2}]{3}:{4}-ERP update time:{6:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{5:yyyy'-'MM'-'dd HH:mm:ss}] doing...", sSuccess, i, list.Count, p.CONO, p.PONO, DateTime.Now, p.UPDATETIME);
                    //ProcessingPO = string.Format("[{1}/{2}]{3}:{4}  [Time:{5:yyyy'-'MM'-'dd hh:mm:ss}] doing...", sSuccess, i, list.Count, p.CONO, p.PONO, DateTime.Now);
                    //CanRefreshTips = true;
                    sSuccess = "";

                    DateTime nowDateTime = DateTime.Now;
                    this.DT = Convert.ToInt32(nowDateTime.ToString("yyyyMMdd"));
                    this.TM = nowDateTime.ToString("HHmmssfff");
                    this.JOBN = nowDateTime.ToString("yyyyMMddHHmm.ssfff");

                    _progressValue = 1;
                    if (!ActionFTP_Update(p))
                        continue;

                    _progressValue = 2;
                    InsertIntoPOTemp_RPG_Update(p);//po detail

                    _progressValue = 3;
                    if (!_isLive)
                        UpdatePOPCfromTemp_RPG_Update(p.CONO, p.PONO);//參考代碼

                    UpdatePOPCfromTemp_RPG_Update_2005(p.CONO, p.PONO);//參考代碼

                    _progressValue = 4;
                    SetUpdatedFlagToAS400(p);
                    ProcessingPO = string.Format("       >>>{0}:{1}-ERP update time:{3:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] -- Success.", p.CONO, p.PONO, DateTime.Now, p.UPDATETIME);
                    //CanRefreshTips = true;

                    //if (hasData)
                    {
                        _progressValue = 5;
                        ClearSQLServerHistoryTempData_Update();
                        _progressValue = 6;
                    }
                    //CanRefreshTips = false;
                    _progressValue = 0;
                    _generateTips = "";
                }
                catch (Exception e)
                {
                    ProcessingPO = string.Format("       ===> ERROR:   {0}:{1}-ERP update time:{4:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", p.CONO, p.PONO, DateTime.Now, e.Message, p.UPDATETIME);
                }
            }
            //CanRefreshTips = false;
        }

        private bool ActionFTP_Update(POList p)
        {
            _generateTips = "FTP...";
            try
            {
                #region 用ftp向As400取数据
                int adt1 = 20000101 - 19000000;
                int adt2 = 20301231 - 19000000;

                //string Str = "quote rcmd CALL PGM(AULPHGMODS/PH980CLP) PARM('{0}' '{1}' '{2}' '{3}' '{4}' '{5}' '{6}' '{7}' '{8}' '{9}' '{10}' '{11}' '{12}' '{13}' '{14}')";
                string Str = "quote rcmd CALL PGM({15}/PH980CLP) PARM('{0}' '{1}' '{2}' '{3}' '{4}' '{5}' '{6}' '{7}' '{8}' '{9}' '{10}' '{11}' '{12}' '{13}' '{14}')";
                string ftp = string.Format(Str,
                    _as400Param,
                    p.CONO,
                    p.PONO,
                    "",
                    "",
                    "",
                    0,
                    "",
                    adt1,
                    adt2,
                    "",
                    "ODBC",
                    this._dt.ToString().Substring(0, 4),//"yyyy"
                    this._dt.ToString().Substring(4, 4),//"MMdd"
                    this._tm, _as400RPGLib);

                string sdt = DateTime.Now.ToString("yyyyMMdd-HHmmssfff");//8.3
                string path1 = string.Format(@"c:\temp\POPC-{0}.txt", sdt);
                string path2 = string.Format(@"c:\temp\POPC-{0}.bat", sdt);

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

                //Create the file.
                using (FileStream fs = File.Create(path2))
                {
                    AddText(fs, string.Format(@"ftp -s:{0} {1}", path1, this._ftpIP));
                }
                //run bat
                ProcessStartInfo psi = new ProcessStartInfo(path2);
                psi.WindowStyle = ProcessWindowStyle.Hidden;
                Process currentProcess = Process.Start(psi);
                #endregion

                #region 检查数据是否已经取完
                bool bDone = false;
                int i = 0;
                while (!bDone)
                {
                    bDone = CheckHasDone_Update(p.CONO);
                    i += 1;
                    _generateTips = string.Format("FTP {0}", i);
                    if (i > 30) return false;
                }
                #endregion

                #region delete temp file
                DeleteTempFile(@"c:\temp\", "POPC-200?????-*");
                DeleteTempFile(path1);
                DeleteTempFile(path2);
                #endregion
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:  [FTP:{0}-ERP update time:{3:yyyy'-'MM'-'dd HH:mm:ss.fff}]  [Time:{1:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{2}", p.PONO, DateTime.Now, e.Message, p.UPDATETIME);
                return false;
            }
            return true;
        }

        #region PO header/detail
        //PHP98
        private bool InsertIntoPOTemp_RPG_Update(POList p)
        {
            _generateTips = "get PO detail Data";

            #region Get data by Page
            string ASQL = "select * from  {1}4F1.php98 where jobn98={0}";
            ASQL = string.Format(ASQL, _jobn, _as400TableLib);

            //string ASQL = "select a.*,b.TotalReceivedQty,b.RECD59 as GoodsInwardsDate,c.ETASL as HDOETA from {2}4F1.php98 a " +  //' where cono98=' + QuotedStr(FCONO) + ' and jobn98=' + sJOBN;
            //      " left join (select Sum(trnq59) as TotalReceivedQty,max(RECD59) AS RECD59,cono59,ordn59,Line59,item59 " +
            //      "    from {2}4f1.pmp59 " +
            //      "    where  trnq59 <> 0 " +  // expd59=9999999
            //      "    Group by cono59,ordn59,Line59,item59) b " +
            //      "  on (cono98=cono59 and ordn98=ordn59 and line98=line59 and item98=item59) " +
            //      " left join (select cono65,date64 as ETASL,ordn65,line65,item65 from {2}4f1.qtp64 a,{2}4f1.qtp65 b where cono64=cono65 and pakl64=pakl65) c" +
            //      "  on (cono98=cono65 and ordn98=ordn65 and line98=line65 and item98=item65) " +
            //      " where jobn98={1}";
            //string ASQL = "select a.*,b.TotalReceivedQty,b.RECD59 as GoodsInwardsDate from {2}4F1.php98 a " +  //' where cono98=' + QuotedStr(FCONO) + ' and jobn98=' + sJOBN;
            //      " left join (select Sum(trnq59) as TotalReceivedQty,max(RECD59) AS RECD59,cono59,ordn59,Line59,item59 " +
            //      "    from {2}4f1.pmp59 " +
            //      "    where  trnq59 <> 0 " +  // expd59=9999999
            //      "    Group by cono59,ordn59,Line59,item59) b " +
            //      "  on (cono98=cono59 and ordn98=ordn59 and line98=line59 and item98=item59) " +
            //      " where jobn98={1}";
            //ASQL = string.Format(ASQL, p.CONO, this._jobn, _as400TableLib);

            DataTable pdt;
            try
            {
                pdt = DB.GetDataByPage_AS400(ASQL);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return false;
            }
            if (pdt.Rows.Count == 0)
            {
                TitleTips = "Check PO Status...";
                ASQL = string.Format("select ACRC02 from {0}4F1.PMP02 where cono02='{1}' and ordn02='{2}' and dtlc02=9999999", _as400TableLib, p.CONO, p.PONO);
                object b = DB.AS400DB.GetScalar(ASQL);
                string scrc = (b == null) ? "X" : (Convert.IsDBNull(b) ? "" : Convert.ToString(b));
                if (scrc.ToUpper() == "C" || scrc == "X")
                {
                    ProcessingPO = string.Format("       ===> PHP98T:  [{3}-{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}]", (scrc.ToUpper() == "C" ? "Cancelled" : "Deleted"), this._jobn, DateTime.Now, p.PONO);
                    SetPODeleteCancel(p);
                    SetUpdatedFlagToAS400(p);
                    return false;
                }

                ProcessingPO = string.Format("       ===> PHP98T:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}]", "Count=0:", this._jobn, DateTime.Now);
                return false;
            }
            #endregion

            #region Insert data
            _generateTips = "Insert into Local PO...";
            _generateInsertMax = pdt.Rows.Count + 1;
            _progressValue_Insert = 0;
            //foreach (DataRow row in pdt.Rows)
            for (int i = 0; i < pdt.Rows.Count; i++)
            {
                DataRow row = pdt.Rows[i];
                //ConvertDBString("",row) 
                _progressValue_Insert += 1;
                //string sDate = PHIntToDateStr(ConvertDBInt("dued98", row) + 19000000);
                //string sETASL = ConvertDBString("HDOETA", row) == "" ? "" : PHIntToDateStr(ConvertDBInt("HDOETA", row) + 19000000);
                //string s1 = ConvertDBString("dsiz98", row) + "     ";
                //string dsiz98 = s1.Substring(0, 5) + ProcessStr(ConvertDBString("dsizX98", row), 0, 10).Trim();
                ////----------leadtime------
                int iLeadtime = 0;
                //                string supplier, materialType, shipmode, factory;
                //                supplier = ProcessStr(ConvertDBString("vndr98", row), 0, 8);
                //                materialType = ProcessStr(ConvertDBString("item98", row), 0, 3);
                //                shipmode = ProcessStr(ConvertDBString("ROUC98", row), 0, 30);
                //                factory = ProcessStr(GetFactoryString(ConvertDBString("WHSE98", row)), 0, 2);
                //                //20080625 deng chang hua 修改Leadtime 取法
                //                if (!(supplier == "" || materialType == "" || shipmode == "" || factory == ""))
                //                {
                //                    try
                //                    {
                //                        string sql = @"
                //select LeadTime from [PH.BasicInfo]..ShipmentLeadtime 
                //where Supplier ='{0}'
                //and   MaterialGroup='{1}'
                //and   ShipMode='{2}'
                //and   Factory='{3}' ";
                //                        sql = string.Format(sql, supplier, materialType, shipmode, factory);
                //                        object obj = DB.SQL2000DB.GetScalar(sql);

                //                        iLeadtime = Convert.IsDBNull(obj) ? 0 : Convert.ToInt32(obj);

                //                    }
                //                    catch { }
                //                    //SaveLeadtime(p);
                //                }
                //------------------>>>>

                //将ASQL中的数据插入到表erp_popanel_temp中

                string SqlStr = @"INSERT INTO [PH.POPC]..PO_Temp ([DT] ,[TM] ,[CONO98] ,[ORDN98] ,[VNDR98] ,[ODAT98] ,[CURR98] ,[OCLS98] ,[ITEM98] ,[DUED98] ,[CUSO98] ,[LINE98] ,[PRIC98] ,[OQTY98] ,[QTOS98] ,[CNVF98] ,[OUOM98] ,[SUOM98] ,[PLAN98] ,[VCAT98] ,[DEPT98] ,[DTDR98] ,[ROUC98] ,[PLNN98] ,[CRRT98] ,[DESC98] ,[COL98] ,[DCOL98] ,[COLS98] ,[SIZ98] ,[PSIZ98] ,[PSIZX98] ,[DSIZ98] ,[WSTA98] ,[TXLN98] ,[TXLNX98] ,[WHSE98] ,[TOLP98] ,[SNAM98] ,[SAD198] ,[SAD298] ,[SAD398] ,[SAD498] ,[SAD598] ,[PYCT98] ,[FAXN98] ,[PTTD98] ,[PTTP98] ,[PMTH98] ,[RECC98] ,[SHPM98] ,[COUN98] ,[PIND98] ,[ISP98],  [HSTA98],[DSTA98],[ADDR98],[Leadtime] ,[TXCD98],[COMD98],[FITS98],[SIZS98]  ,[GoodsInwardsDate],[TotalReceivedQty],[HDOETA],[Completed] )  VALUES
                                                       ({0},'{1}','{2}','{3}','{4}','{5}','{6}',{7},'{8}',{9},'{10}',{11},{12},{13},{14},{15},'{16}','{17}',{18},'{19}','{20}','{21}','{22}','{23}',{24},'{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}',{37},'{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}',{46},'{47}','{48}','{49}','{50}','{51}','{52}','{53}', '{54}','{55}','{56}',{57} ,'{58}','{59}',{60},{61} ,{62},{63},{64},'{65}')";


                SqlStr = string.Format(SqlStr, this._dt, this._tm, p.CONO,
                    ProcessStr(ConvertDBString("ORDN98", row), 0, 7),
                    ProcessStr(ConvertDBString("VNDR98", row), 0, 8),
                    ConvertDBString("ODAT98", row),
                    //'CURR98',OCLS98,'ITEM98',DUED98,'CUSO98',
                    ProcessStr(ConvertDBString("CURR98", row), 0, 3),
                    ConvertDBString("OCLS98", row),
                    ProcessStr(ConvertDBString("ITEM98", row), 0, 15),
                    ConvertDBString("DUED98", row),
                    ProcessStr(ConvertDBString("CUSO98", row), 0, 20),
                    // LINE98,PRIC98,OQTY98,QTOS98,CNVF98,
                    ConvertDBString("LINE98", row),
                    ConvertDBString("PRIC98", row),
                    ConvertDBString("OQTY98", row),
                    ConvertDBString("QTOS98", row),
                    ConvertDBString("CNVF98", row),
                    // 'OUOM98','SUOM98',PLAN98,'VCAT98',
                    ProcessStr(ConvertDBString("OUOM98", row), 0, 2),
                    ProcessStr(ConvertDBString("SUOM98", row), 0, 2),
                    // ProcessStr(ConvertDBString("OQTY98", row), 9, 3),
                    ConvertDBString("PLAN98", row),
                    ProcessStr(ConvertDBString("VCAT98", row), 0, 20),
                    // 'DEPT98','DTDR98', 'ROUC98','PLNN98',CRRT98,
                    ProcessStr(ConvertDBString("DEPT98", row), 0, 13),
                    ProcessStr(ConvertDBString("DTDR98", row), 0, 36),//wo start date
                    ProcessStr(ConvertDBString("ROUC98", row), 0, 8),
                    //ProcessStr(ConvertDBString("PLNN98", row), 0, 25),
                    ProcessStr(ConvertDBString("plnn98", row), 0, 15),
                    ConvertDBString("CRRT98", row),
                    // 'DESC98','COL98','DCOL98','COLS98','SIZ98',
                    ProcessStr(ConvertDBString("DESC98", row), 0, 30),
                    ProcessStr(ConvertDBString("COL98", row), 0, 3),
                    ProcessStr(ConvertDBString("DCOL98", row), 0, 14),
                    ProcessStr(ConvertDBString("COLS98", row), 0, 30),
                    ProcessStr(ConvertDBString("SIZ98", row), 0, 3),
                    // 'PSIZ98','PSIZX98','DSIZ98','WSTA98','TXLN98',
                    ProcessStr(ConvertDBString("PSIZ98", row), 0, 3),
                    ProcessStr(ConvertDBString("PSIZX98", row), 0, 3),
                    ProcessStr(ConvertDBString("DSIZ98", row), 0, 5),
                    ProcessStr(ConvertDBString("WSTA98", row), 0, 1),
                    ProcessStr(ConvertDBString("TXLN98", row), 0, 65),
                    //  'TXLNX98','WHSE98',TOLP98,'SNAM98','SAD198',
                    ProcessStr(ConvertDBString("TXLNX98", row), 0, 65),
                    ProcessStr(ConvertDBString("WHSE98", row), 0, 2),
                    ConvertDBString("TOLP98", row),
                    ProcessStr(ConvertDBString("SNAM98", row), 0, 35),
                    ProcessStr(ConvertDBString("SAD198", row), 0, 35),
                    // 'SAD298','SAD398','SAD498','SAD598','PYCT98',
                    ProcessStr(ConvertDBString("SAD298", row), 0, 35),
                    ProcessStr(ConvertDBString("SAD398", row), 0, 35),
                    ProcessStr(ConvertDBString("SAD498", row), 0, 35),
                    ProcessStr(ConvertDBString("SAD598", row), 0, 35),
                    ProcessStr(ConvertDBString("PYCT98", row), 0, 35),
                    //  'FAXN98',PTTD98,'PTTP98','PMTH98','RECC98',
                    ProcessStr(ConvertDBString("FAXN98", row), 0, 20),
                    ConvertDBString("PTTD98", row),
                    ProcessStr(ConvertDBString("PTTP98", row), 0, 1),
                    ProcessStr(ConvertDBString("PMTH98", row), 0, 30),
                    ProcessStr(ConvertDBString("RECC98", row), 0, 3),
                    //'SHPM98','COUN98','PIND98','ISP98','JOBN98')
                    ProcessStr(ConvertDBString("SHPM98", row), 0, 30),
                    ProcessStr(ConvertDBString("COUN98", row), 0, 20),
                    ProcessStr(ConvertDBString("PIND98", row), 0, 1),
                    ConvertDBString("ISP98", row),//53
                    //ProcessStr(ConvertDBString("JOBN98", row), 0, 2)
                    //[HSTA98],[DSTA98],[ADDR98],[Leadtime]
                    ConvertDBString("HSTA98", row),
                    ConvertDBString("DSTA98", row),
                    ConvertDBString("ADDR98", row),
                    iLeadtime,
                    //[TXCD98],[COMD98],[FITS98],[SIZS98]
                    ConvertDBString("TXCD98", row),
                    ConvertDBString("COMD98", row),
                    ConvertDBInt("FITS98", row),
                    ConvertDBInt("SIZS98", row),
                    //,[GoodsInwardsDate],[TotalReceivedQty],[HDOETA]
                    //ConvertDBString("GOODSINWARDSDATE", row),
                    ConvertDBString("RECD98", row).Trim() == "" || ConvertDBInt("RECD98", row) == 0 ? "null" : Convert.ToString(ConvertDBInt("RECD98", row)),
                    ConvertDBString("TRNQ98", row) == "" ? 0 : ConvertDBDouble("TRNQ98", row),
                    //ConvertDBString("HDOETA", row).Trim() == "" || ConvertDBInt("HDOETA", row) == 0 ? "null" : Convert.ToString(ConvertDBInt("HDOETA", row)),
                    ConvertDBString("ETAS98", row),
                    ConvertDBString("STAT98", row)
                    //(sETASL == "") ? "null" : ("'" + sETASL + "'")
                    );
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(SqlStr);
                    DB.SQL2005DB.Execute(SqlStr);
                }

                catch (Exception e)
                {
                    ProcessingPO = string.Format("       ===> ERROR:  [{0}:DT={1}:TM={2}]  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{4}", "Insert Into POTemp from AS400", this._dt, this._tm, DateTime.Now, e.Message);
                }

            }
            _progressValue_Insert = 0;
            #endregion
            return true;
        }


        #endregion

        #region POPC
        private void UpdatePOPCfromTemp_RPG_Update(string cono, string pono)
        {
            // 2008-05-29  deng chang hua 修改存储过程sp_ERPPOPC_Update_RPG_Auto 
            // 在原来的参数上增加2个参数   @Version,@AmendmentNo

            //每次重新取得最新最大@Version,@AmendmentNo
            string sql = @"
declare @Version int ,@AmendmentNo int
select  @Version=isnull(max(Version),1)         from [PH.POPC]..POHeader where Company='" + cono + "' and PONo='" + pono + @"'
select  @AmendmentNo=isnull(max(AmendmentNo),-1)+1  from [PH.POPC]..POHeader where Company='" + cono + "' and PONo='" + pono + @"' and Version=@Version
select  @Version,@AmendmentNo";
            DataTable dt = DB.SQL2000DB.GetTable(sql);
            string Version = dt.Rows[0][0].ToString();
            string AmendmentNo = dt.Rows[0][1].ToString();

            _generateTips = " Update POPC";
            //string SqlStr = " Exec sp_ERPPOPC_Update_RPG_Auto '{0}',{1},{2},'{3}','{4}',{5},'{6}','{7}','{8}','{9}',{10},'{11}',{12},{13}";
            //SqlStr = string.Format(SqlStr,
            //    cono,
            //    20000101,
            //    20201231,
            //    "",
            //    "",
            //    0,
            //    pono,
            //    "",
            //    "",
            //    "",
            //    this._dt, this._tm,Version,AmendmentNo);



            string SqlStr = " Exec [PH.POPC]..sp_ERPPOPC_Update_RPG_Auto {0},'{1}','{2}','{3}',{4},{5}";
            SqlStr = string.Format(SqlStr, this._dt, this._tm, cono, pono, Version, AmendmentNo);
            try
            {
                DB.SQL2000DB.Execute(SqlStr);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:  [{0}]  [Time:{1:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{2}", "Exec sp_ERPPOPC_Update_RPG_Auto", DateTime.Now, e.Message);
            }
        }
        private void UpdatePOPCfromTemp_RPG_Update_2005(string cono, string pono)
        {
            // 2008-05-29  deng chang hua 修改存储过程sp_ERPPOPC_Update_RPG_Auto 
            // 在原来的参数上增加2个参数   @Version,@AmendmentNo

            //每次重新取得最新最大@Version,@AmendmentNo
            string sql = @"
declare @Version int ,@AmendmentNo int
select  @Version=isnull(max(Version),1)         from [PH.POPC]..POHeader where Company='" + cono + "' and PONo='" + pono + @"'
select  @AmendmentNo=isnull(max(AmendmentNo),-1)+1  from [PH.POPC]..POHeader where Company='" + cono + "' and PONo='" + pono + @"' and Version=@Version
select  @Version,@AmendmentNo";
            DataTable dt = DB.SQL2005DB.GetTable(sql);
            string Version = dt.Rows[0][0].ToString();
            string AmendmentNo = dt.Rows[0][1].ToString();

            _generateTips = " Update POPC";
            //string SqlStr = " Exec sp_ERPPOPC_Update_RPG_Auto '{0}',{1},{2},'{3}','{4}',{5},'{6}','{7}','{8}','{9}',{10},'{11}',{12},{13}";
            //SqlStr = string.Format(SqlStr,
            //    cono,
            //    20000101,
            //    20201231,
            //    "",
            //    "",
            //    0,
            //    pono,
            //    "",
            //    "",
            //    "",
            //    this._dt, this._tm,Version,AmendmentNo);



            string SqlStr = " Exec [PH.POPC]..sp_ERPPOPC_Update_RPG_Auto {0},'{1}','{2}','{3}',{4},{5}";
            SqlStr = string.Format(SqlStr, this._dt, this._tm, cono, pono, Version, AmendmentNo);
            try
            {
                DB.SQL2005DB.Execute(SqlStr);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:  [{0}]  [Time:{1:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{2}", "Exec sp_ERPPOPC_Update_RPG_Auto", DateTime.Now, e.Message);
            }
        }
        #endregion

        private void SetUpdatedFlagToAS400(POList p)
        {
            _generateTips = "update Flag...";
            //yyyy-mm-dd-hh.mm.ss.nnnnnn//TIMESTAMP(updatetime)<='2008-5-28-12.39.32.226000'
            string sql = string.Format("update {2}4F1.PHP96A set FLAG='1',PCDATETIME=now() where cono96A='{0}' and ordn96A='{1}' and FLAG='0' and TIMESTAMP(updatetime)<='{3:yyyy-MM-dd-HH.mm.ss.ffffff}'",
                p.CONO, p.PONO, _as400TableLib, p.UPDATETIME);
            try
            {
                DB.AS400DB.Execute(sql);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:   PHP96A:[update Flag:{0}:{1}-ERP update time:{4:yyyy'-'MM'-'dd HH:mm:ss.fff}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", p.CONO, p.PONO, DateTime.Now, e.Message, p.UPDATETIME);
            }

            //sql = string.Format("update POUpdateLog set FLAG=1,UpdateTime=getdate() where guid='{0}'", p.GUID);
            //try
            //{
            //    DB.SQL2000DB.Execute(sql);
            //}
            //catch (Exception e)
            //{
            //    ProcessingPO = string.Format("       ===> ERROR:   POUpdateLog:[update Flag:{0}:{1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", p.CONO, p.PONO, DateTime.Now, e.Message);
            //}
        }
        private void SetPODeleteCancel(POList p)
        {
            string sql = string.Format("update [PH.POPC]..poheader set flag='1' where company='{0}' and pono='{1}'", p.CONO, p.PONO);
            if (!_isLive)
                DB.SQL2000DB.Execute(sql);
            DB.SQL2005DB.Execute(sql);
        }
        private void ClearSQLServerHistoryTempData_Update()
        {
            _generateTips = "Clear History Temp Data(SQLServer).";
            //string ASQL = string.Format("delete from erp_popanel_TempAuto where (dt={0} and tm='{1}') or dt<{0}",
            //     this._dt, this._tm);
            //string ASQL = string.Format("delete from erp_popanel_TempAuto where dt<{0}", this._dt);
            //try
            //{
            //    DB.SQL2000DB.Execute(ASQL);
            //}
            //catch (Exception e)
            //{
            //    ProcessingPO = string.Format("       ===> ERROR:   [Clear POPC History Temp Data(SQLServer):DT={0}:TM={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", this._dt, this._tm, DateTime.Now, e.Message);
            //}

            string ASQL = string.Format("delete from [PH.POPC]..PO_Temp where dt<{0}", this._dt);
            try
            {
                if (!_isLive)
                    DB.SQL2000DB.Execute(ASQL);
                DB.SQL2005DB.Execute(ASQL);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:   [Clear PO History Temp Data(SQLServer):DT={0}:TM={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", this._dt, this._tm, DateTime.Now, e.Message);
            }
        }
        private void ClearAS400HistoryTempData_Update()
        {
            _generateTips = "Clear History Temp Data(AS400).";
            //string ASQL = string.Format("delete from {1}4f1.php98t  where  INT(jobn98/10000)<INT({0}/10000) or (jobn98={0})",
            //     this._jobn,_as400TableLib);
            string ASQL = string.Format("delete from {1}4f1.php98t  where  INT(jobn98/10000)<INT({0}/10000)",
                 this._jobn, _as400TableLib);
            try
            {
                DB.AS400DB.Execute(ASQL);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:   [Clear History Temp Data(AS400):DT={0}:TM={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", this._dt, this._tm, DateTime.Now, e.Message);
            }

            ASQL = string.Format("delete from {1}4f1.php98  where  INT(jobn98/10000)<INT({0}/10000)",
              this._jobn, _as400TableLib);
            try
            {
                DB.AS400DB.Execute(ASQL);
            }
            catch (Exception e)
            {
                ProcessingPO = string.Format("       ===> ERROR:   [Clear History Temp Data(AS400):DT={0}:TM={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", this._dt, this._tm, DateTime.Now, e.Message);
            }
        }
        private bool CheckHasDone_Update(string cono)
        {
            string sSQL = string.Format("select cono96 from {2}4f1.php96t where cono96 = '{0}' and jobn96 = {1}",
                cono, this._jobn, _as400TableLib);
            object obj;
            try
            {
                obj = DB.AS400DB.GetScalar(sSQL);
            }
            catch
            {
                return false;
            }
            return (!(Convert.IsDBNull(obj) || obj == null));
        }

        #endregion

        #region Update POPC Other
        private int _iProgress;
        private int _iProgressTotal;

        public void PrepareOtherData_Update()
        {
            CanRefreshTips = false;
            _progressValue = 0;
            TitleTips = "get PO list...";
            _generateTips = "";
            _iProgress = 0;
            _iProgressTotal = 8;
            //this._generateMax = 0;
            this._progressValue = 0;
            UpdatePOPCOther();
        }

        private void UpdatePOPCOther()
        {
            UpdateDictionary();
            UpdateCurrencyRate();
            UpdateSupplier();
            UpdateWOStartDate();
            UpdateCommodity();

            //UpdateColor(string.Format("{0}2F1.INP35DL1", _as400TableLib), "PNUM35", "PDES35");
            this._progressValue = 0;
        }
        /// <summary>
        /// 需要從FLP081中取Currency Rate,  對應的PHP98的字段是CRRT98		
        /// ERP 會通過WORK FILE (TSTT1F1/FLP081DL1)來通知PC currency rate發生變化了.
        /// </summary>
        private void UpdateCurrencyRate()
        {
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "CurrencyRate", ++_iProgress, _iProgressTotal);
            this._progressValue = 0;
            string sql = string.Format("select * from {0}1F1.FLP081DL1 where Status='0' order by TRGDATE", _as400TableLib);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing CurrencyRate:Currency={0},Rate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["CRRT81"].ToString().Trim(), item["SRCR81"].ToString().Trim(), item["TRGDATE"], DateTime.Now);

                sql1 = string.Format(@"
                                        update [PH.POPC].dbo.POheader
                                        set    Rate={0}
                                        where  Currency='{1}'
                                        and    POType=1
                                        and    PHOutstandingQty>0" + "\n", item["CRRT81"], Change2SQLStr(item["SRCR81"].ToString().Trim()));

                sql2 = string.Format(@"
                                        update {0}1F1.FLP081DL1
                                        set    Status='1'
                                        where  Status='0'
                                        and    SRCR81='{1}'
                                        and    timestamp(TRGDATE)<='{2:yyyy-MM-dd-HH.mm.ss.fffff}'
                                        " + "\n", _as400TableLib, Change2SQLStr(item["SRCR81"].ToString()), item["TRGDATE"]);

                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    ProcessingPO = string.Format("====>Successed CurrencyRate:Currency={0},Rate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["CRRT81"].ToString().Trim(), item["SRCR81"].ToString().Trim(), item["TRGDATE"], DateTime.Now);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR CurrencyRate:Currency={0},Rate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item["CRRT81"].ToString().Trim(), item["SRCR81"].ToString().Trim(), item["TRGDATE"], DateTime.Now);
                }
            }

        }
        /// <summary>
        /// 需要從PLP05中取Supplier Name,Address , Fax Number , Primary contact , 對應的PHP98的字段分別是:SNAM98,(SAD198/SAD298/SAD398/SAD498/SAD598),FAXN98,PYCT98		
        /// ERP 會通過WORK FILE (TSTT1F1/PLP05DL1)來通知PC Supplier Name,Address , FaxNumber , Payment Method , Primary contact發生變化了. 		
        /// </summary>
        private void UpdateSupplier()
        {
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Supplier Infor", ++_iProgress, _iProgressTotal);
            this._progressValue = 0;
            string sql = string.Format("select * from {0}1F1.PLP05DL1 where Status='0' order by TRGDATE", _as400TableLib);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }

            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing Supplier:Supplier={0},SupplierName={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["SUPN05"].ToString().Trim(), item["SNAM05"].ToString().Trim(), item["TRGDATE"], DateTime.Now);

                sql1 = string.Format(@"
update [PH.POPC].dbo.POheader
set SupplierName='{0}',
    SupplierAddress='{1}'+'{2}'+'{3}'+'{4}'+'{5}',
    FaxNumber='{6}',
    PaymentMethod='{7}'
where Supplier='{8}'
and   POType=1
and   PHOutstandingQty>0" + "\n", Change2SQLStr(item["SNAM05"].ToString().Trim()), Change2SQLStr(item["SAD105"].ToString().Trim()),
Change2SQLStr(item["SAD205"].ToString().Trim()), Change2SQLStr(item["SAD305"].ToString().Trim()), Change2SQLStr(item["SAD405"].ToString().Trim()), Change2SQLStr(item["SAD505"].ToString().Trim())
, Change2SQLStr(item["FAXN05"].ToString().Trim()), Change2SQLStr(item["PYCT05"].ToString().Trim()), Change2SQLStr(item["SUPN05"].ToString().Trim()));

                sql2 = string.Format(@"
update {0}1F1.PLP05DL1
set    Status='1'
where  Status='0'
and    SUPN05='{1}'
and    timestamp(TRGDATE)<='{2:yyyy-MM-dd-HH.mm.ss.fffff}'
" + "\n", _as400TableLib, Change2SQLStr(item["SUPN05"].ToString()), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);

                    ProcessingPO = string.Format("====>Successed Supplier:Supplier={0},SupplierName={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["SUPN05"].ToString().Trim(), item["SNAM05"].ToString().Trim(), item["TRGDATE"], DateTime.Now);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR Supplier:Supplier={0},SupplierName={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item["SUPN05"].ToString().Trim(), item["SNAM05"].ToString().Trim(), item["TRGDATE"], DateTime.Now);

                }
            }

        }
        /// <summary>
        /// 需要從INP35中取Color 的description , 對應的PHP98的字段是DCOL98		
        /// ERP 會通過WORK FILE (TSTT2F1/INP35DL1)來通知PC Color 的description  發生變化了.  4F1.APP10DL1
        /// </summary>
        private void UpdateColor(string as400TableName, string code, string desc)
        {
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Color", ++_iProgress, _iProgressTotal);
            this._progressValue = 0;

            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //更新數據字典的數據
                sql1 = string.Format(@"
if exists(select * from [PH.MIDC].dbo.Color  where  Color='{1}'  )
begin
    update [PH.MIDC].dbo.Color  
    set    Description='{0}' 
    where  Color='{1}'
end 
else
begin
   insert into [PH.MIDC].dbo.Color  (Color,Description)
   values('{1}','{0}')
end
" + "\n", Change2SQLStr(item[desc].ToString().Substring(17, 14)), Change2SQLStr(item[code].ToString().Substring(9, 3)));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, code, Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);

                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("       ===> ERROR:{0}", ex.Message);
                }

            }

        }
        private void UpdateWOStartDate()
        {
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "WOStartDate", ++_iProgress, _iProgressTotal);
            this._progressValue = 0;
            string as400TableName = string.Format("{0}2f1.inp40dl1", _as400TableLib);
            string Company = "CONO40";
            string ProjectNo = "CUSO40";
            //string ItemCode = "ITEM40";
            string WOStartDate = "DTDR40";
            //string Commodity = "COMD40";
            string sql = string.Format(@"
select a.*
from {0} a
inner join  
(
select CONO40,CUSO40, Max(TRGDATE) as TRGDATE
from {0}
where Status='0' 
and    CUSO40<>''
and    DTDR40<>''
group by  CONO40,CUSO40
) b on a.CONO40=b.CONO40
and a.CUSO40=b.CUSO40
and a.TRGDATE=b.TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;
            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing WOStartDate:ProjectNo={0},WOStartDate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ProjectNo].ToString().Trim(), item[WOStartDate].ToString().Trim(), item["TRGDATE"], DateTime.Now);

                sql1 = string.Format(@"
update  a
set    WOStartDate= (case when isdate('{0}')=1 then convert(datetime,'{0}') else a.WOStartDate end) 
from   [PH.POPC].dbo.PODetail a
inner  join [PH.POPC].dbo.POHeader b on a.company=b.company and a.pono=b.pono and a.Version=b.Version  and a.AmendmentNo=b.AmendmentNo
where  a.Company='{1}'
and    a.ProjectNo='{2}'
and    b.POtype=1
and    b.PHOutstandingQty>0  
" + "\n", Change2SQLStr(item[WOStartDate].ToString().Trim()), item[Company].ToString(), item[ProjectNo].ToString().Trim());

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Company, item[Company].ToString(), ProjectNo, item[ProjectNo].ToString(), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);

                    ProcessingPO = string.Format("====>Successed WOStartDate:ProjectNo={0},WOStartDate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ProjectNo].ToString().Trim(), item[WOStartDate].ToString().Trim(), item["TRGDATE"], DateTime.Now);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR WOStartDate:ProjectNo={0},WOStartDate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[ProjectNo].ToString().Trim(), item[WOStartDate].ToString().Trim(), item["TRGDATE"], DateTime.Now);

                }

            }

            //更新無傚數據
            sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and   ( CUSO40=''
or      DTDR40='')
 " + "\n", as400TableName);
            try
            {
                DB.AS400DB.Execute(sql2);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }

        }

        private void UpdateCommodity()
        {
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Commodity", ++_iProgress, _iProgressTotal);
            this._progressValue = 0;
            string as400TableName = string.Format("{0}2f1.inp40dl1", _as400TableLib);
            string Company = "CONO40";
            //string ProjectNo = "CUSO40";
            string ItemCode = "ITEM40";
            //string WOStartDate = "DTDR40";
            string Commodity = "COMD40";
            string sql = string.Format(@"
select *
from {0} a
inner join  
(
select CONO40,ITEM40, Max(TRGDATE) as TRGDATE
from {0}
where Status='0' 
and    ITEM40<>''
and    COMD40<>''
group by  CONO40,ITEM40
) b on a.CONO40=b.CONO40
and a.ITEM40=b.ITEM40
and a.TRGDATE=b.TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing Commodity:ItemCode={0},Commodity={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ItemCode].ToString().Trim(), item[Commodity].ToString().Trim(), item["TRGDATE"], DateTime.Now);

                sql1 = string.Format(@"
update  a
set    Commodity='{0}'
from   [PH.POPC].dbo.PODetail a
inner  join [PH.POPC].dbo.POHeader b on a.company=b.company and a.pono=b.pono and a.Version=b.Version  and a.AmendmentNo=b.AmendmentNo
where  a.Company='{1}'
and    a.ItemCode='{2}'
and    b.POtype=1
and    b.PHOutstandingQty>0  
" + "\n", Change2SQLStr(item[Commodity].ToString().Trim()), item[Company].ToString().Trim(), Change2SQLStr(item[ItemCode].ToString().Trim()));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Company, item[Company].ToString(), ItemCode, item[ItemCode].ToString(), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    ProcessingPO = string.Format("====>Successed Commodity:ItemCode={0},Commodity={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ItemCode].ToString().Trim(), item[Commodity].ToString().Trim(), item["TRGDATE"], DateTime.Now);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR Commodity:ItemCode={0},Commodity={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[ItemCode].ToString().Trim(), item[Commodity].ToString().Trim(), item["TRGDATE"], DateTime.Now);
                }

            }

            //更新無傚數據
            sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and   ( ITEM40=''
or      COMD40='')
 " + "\n", as400TableName);
            try
            {
                DB.AS400DB.Execute(sql2);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
        }


        /// <summary>
        /// 數據字典的更新
        /// </summary>
        private void UpdateDictionary()
        {
            // 需要從CSP45中取Payment Method 的description , 對應的PHP98的字段是PMTH98
            // ERP 會通過WORK FILE (TSTT1F1/CSP45DL1)來通知PC payment Method 的description發生變化了.
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Payment Method", ++_iProgress, _iProgressTotal);
            UpdatePaymentMethod(string.Format("{0}1F1.CSP45DL1", _as400TableLib), "PH.POPC.PaymentMethod", "PAYM45", "DESC45");


            // 需要從INP15中取DeliveryTerm 的description ,對應的PHP98的字段是SHPM98		
            // ERP 會通過WORK FILE (TSTT4F1/INP15DL1)來通知PC DeliveryTerm 的description 發生變化了. 
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "DeliveryTerm", ++_iProgress, _iProgressTotal);
            UpdateDictionary(string.Format("{0}4F1.INP15DL1", _as400TableLib), "PH.MIDc.DeliveryTerms", "PSAR15", "PRMD15");

            //需要從PMP06中取PurchaseOfficer的名稱, 對應的PHP98的字段是PLNN98		
            //ERP 會通過WORK FILE (TSTT4F1/PMP06DL1)來通知PC PurchaseOfficer的名稱 發生變化了. 
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "PurchaseOfficer", ++_iProgress, _iProgressTotal);
            UpdatePurchaseOfficer(string.Format("{0}4F1.PMP06DL1", _as400TableLib), "PH.PO.PurchaseOfficer", "PLAN06", "PLNN06", new string[] { "15" });

            //需要從APP15中取Size 的description ,  對應的PHP98的字段是DSIZ98		
            //ERP 會通過WORK FILE (TSTT4F1/APP15DL1)來通知PC  Size 的description   發生變化了. 
            TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Size", ++_iProgress, _iProgressTotal);
            UpdateDictionary(string.Format("{0}4F1.APP15DL1", _as400TableLib), "PH.MIDc.Size", "PSIZ15", "DSIZ15");

        }
        private void UpdateDictionary(string as400TableName, string DataType, string code, string desc, params string[] sub)
        {
            this._progressValue = 0;
            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);

                //更新數據字典的數據
                sql1 = string.Format(@"
if exists(select * from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' )
begin
    update [PH.Platform.Misc].dbo.Misc_DataDictionary  
    set    DataName='{0}',Description='{0}' 
    where  DataCode='{1}'
    and    DataType='{2}' 
end 
else
begin
   insert into [PH.Platform.Misc].dbo.Misc_DataDictionary (DataType,DataCode,DataName,Description)
   values('{2}','{1}','{0}','{0}')
end
" + "\n", sub.Length != 1 ? Change2SQLStr(item[desc].ToString().Trim()) : Change2SQLStr(item[desc].ToString().Substring(0, Convert.ToInt16(sub[0])).Trim()), Change2SQLStr(item[code].ToString().Trim()), Change2SQLStr(DataType));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Change2SQLStr(code), Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    ProcessingPO = string.Format("====>Dictionary {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);


                }
            }

        }
        private void UpdatePurchaseOfficer(string as400TableName, string DataType, string code, string desc, params string[] sub)
        {
            this._progressValue = 0;
            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);

                //更新數據字典的數據
                sql1 = string.Format(@"
update [PH.POPC].dbo.POHeader
set    PurchaseOfficer='{0}'
where  PurchaseOfficerCode='{1}'
and    POtype=1
and    PHOutstandingQty>0  


if exists(select * from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' )
begin
    update [PH.Platform.Misc].dbo.Misc_DataDictionary  
    set    DataName='{0}',Description='{0}' 
    where  DataCode='{1}'
    and    DataType='{2}' 
end 
else
begin
   insert into [PH.Platform.Misc].dbo.Misc_DataDictionary (DataType,DataCode,DataName,Description)
   values('{2}','{1}','{0}','{0}')
end
" + "\n", sub.Length != 1 ? Change2SQLStr(item[desc].ToString().Trim()) : Change2SQLStr(item[desc].ToString().Substring(0, Convert.ToInt16(sub[0])).Trim()), Change2SQLStr(item[code].ToString().Trim()), Change2SQLStr(DataType));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Change2SQLStr(code), Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    ProcessingPO = string.Format("====>Dictionary {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);


                }

            }

        }
        private void UpdatePaymentMethod(string as400TableName, string DataType, string code, string desc, params string[] sub)
        {
            this._progressValue = 0;
            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //ProcessingPO = string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                this._progressValue = ++i;
                ProcessingPO = string.Format("====>doing {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);



                //更新數據字典的數據
                sql1 = string.Format(@"
if exists(select * from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' )
begin

    declare @OldDescription varchar(50)
    select  @OldDescription =Description from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' 
    update  [PH.POPC].dbo.poheader set PaymentMethod='{0}' 
    where   potype=1 
    and     PHOutstandingQty>0 
    and     PaymentMethod=@OldDescription 
         

    update [PH.Platform.Misc].dbo.Misc_DataDictionary  
    set    DataName='{0}',Description='{0}' 
    where  DataCode='{1}'
    and    DataType='{2}' 
end 
else
begin
   insert into [PH.Platform.Misc].dbo.Misc_DataDictionary (DataType,DataCode,DataName,Description)
   values('{2}','{1}','{0}','{0}')
end
" + "\n", sub.Length != 1 ? Change2SQLStr(item[desc].ToString().Trim()) : Change2SQLStr(item[desc].ToString().Substring(0, Convert.ToInt16(sub[0])).Trim()), Change2SQLStr(item[code].ToString().Trim()), Change2SQLStr(DataType));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Change2SQLStr(code), Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    if (!_isLive)
                        DB.SQL2000DB.Execute(sql1);
                    DB.SQL2005DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    ProcessingPO = string.Format("====>Dictionary {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);
                }
                catch (Exception ex)
                {
                    ProcessingPO = string.Format("====>ERROR {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType);


                }

            }

        }

        private string Change2SQLStr(string Source)
        {
            return Source.Replace("'", "''");
        }

        private string Change2SQLStr(object Source)
        {
            if (Source != null)
            {
                return Source.ToString().Replace("'", "''");
            }
            else
            {
                return string.Empty;
            }
        }
        #endregion

        #region functions
        private string PHIntToDateStr(int AInt)
        {
            string S1, yy, mm, dd, temp;
            //DateTime ADate;
            S1 = AInt.ToString();
            if (S1.Length == 8)
            {
                yy = S1.Substring(0, 4);
                mm = S1.Substring(4, 2);
                dd = S1.Substring(6, 2);

                try
                {
                    //temp = Convert.ToDateTime(yy + "/" + mm + "/" + dd).ToString();
                    temp = yy + "/" + mm + "/" + dd;
                }
                catch
                {
                    return DateTime.Now.ToString("yyyy/MM/dd");
                }
                return temp;
            }
            else
            {
                return DateTime.Now.ToString("yyyy/MM/dd");
            }

        }
        private string ProcessStr(string AStr, int AStartIndex, int ALength)
        {
            return AStr.Substring(AStartIndex, AStr.Length >= ALength ? ALength : AStr.Length);
        }
        private string GetFactoryString(string stockRoom)
        {
            stockRoom = stockRoom.Trim().ToUpper();
            if (stockRoom == "" || stockRoom == "RM")
            {
                return "SL";
            }
            else if (stockRoom == "RT")
            {
                return "KB";
            }
            else
            {
                return stockRoom;
            }
        }

        public static void AddText(FileStream fs, string value)
        {
            byte[] info = new UTF8Encoding(true).GetBytes(value);
            fs.Write(info, 0, info.Length);
        }
        private void DeleteTempFile(string path, string searchPattern)
        {
            //"POPC-20070315-102755288.bat"            
            FileInfo fi;
            try
            {
                string[] root = Directory.GetFiles(path, searchPattern);
                foreach (string s in root)
                {
                    fi = new FileInfo(s);
                    string ddd = fi.Name.Substring(5, 8);
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
        private void DeleteTempFile(string file)
        {
            try
            {

                if (File.Exists(file))
                    File.Delete(file);
            }
            catch { }

        }
        #endregion
    }
    public enum PHReportAction
    {
        None, ShowReport, DesignReport, ExportReport, GeneratePOPC, SavePOPC
    }
    static class Language
    {
        public static readonly string[] LRight = new string[4] { "You do not have the Right to Use this Function.", "你没有权限使用这个功能.", "你沒有權限使用這個功能.", "You do not have the Right to Use this Function." };
        public static readonly string[] LHint = new string[4] { "Hint", "提示", "提示", "Hint" };

        public static readonly string[] LSaveTips = new string[4] { "Data has been modified, save it now?", "数据已经修改过,是否要保存?", "數據已經修改過,是否要保存?", "Data has been modified, save it now?" };
        public static readonly string[] LCurrentConfirmDate = new string[4] { "Current\r\nConfirm Date", "现况日期", "現況日期", "Current\r\nConfirm Date" };
        public static readonly string[] LDifferenceDate = new string[4] { "Difference date", "达标指引", "達標指引", "Difference date" };// Difference date (Confirm date & Goods inwards date)
        public static readonly string[] LMoveup = new string[4] { "Move up", "提前", "提前", "Move up" };
        public static readonly string[] LDelay = new string[4] { "Delay", "迟期", "遲期", "Delay" };
        public static readonly string[] LOnTime = new string[4] { "On time", "达标如期返料", "達標如期返料", "On time" };
        public static readonly string[] LWeek = new string[4] { "Week", "星期", "星期", "Week" };
        public static readonly string[] LOverOneMonth = new string[4] { "Over 1 month", "1个月以上", "1個月以上", "Over 1 month" };
    }
}
