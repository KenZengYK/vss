using System;
using System.Collections.Generic;
using System.Text;

namespace PH.POPC.AutoUpdate.UI
{
    public static class UISetting
    {
        static UISetting()
        {
            GetSettings();
        }

        private static PhSys.AppSetting _appSettings;
        private static void GetSettings()
        {
            _appSettings = new PhSys.AppSetting("PH.Remoting");

            //===Menu Server===
            //_menuServerIP = (string)GetSettingValueDefault(_appSettings, "MenuServerIP", "10.2.1.242");
            //_menuServerName = (string)GetSettingValueDefault(_appSettings, "MenuServerName", "MenuServer");
            //_menuServerPort = (int)GetSettingValueDefault(_appSettings, "MenuServerPort", 15721);

            //===AS400===
            _AS400DBIP = (string)GetSettingValueDefault(_appSettings, "AS400DBIP", "10.1.1.8");//202.155.251.71:as400.hk.phgmt.com.hk:10.1.1.8
            _AS400ServerPort = (int)GetSettingValueDefault(_appSettings, "AS400ServerPort", 14100);
            _AS400ServerName = (string)GetSettingValueDefault(_appSettings, "AS400ServerName", "As400Server");
            _AS400ServerIP = (string)GetSettingValueDefault(_appSettings, "AS400ServerIP", "10.2.1.242");//202.173.254.125:10.2.1.242:10.2.1.242

            _AS400URL = string.Format("tcp://{0}:{1}/{2}",
                _AS400ServerIP,
                _AS400ServerPort,
                _AS400ServerName);

            //===SQL Server 2000===
            _SQL2KServerPort = (int)GetSettingValueDefault(_appSettings, "SQL2KServerPort", 15323);
            _SQL2KServerName = (string)GetSettingValueDefault(_appSettings, "SQL2KServerName", "PHSQLServer");
            _SQL2KServerIP = (string)GetSettingValueDefault(_appSettings, "SQL2KServerIP", "10.2.1.242");

            _SQL2KURL = string.Format("tcp://{0}:{1}/{2}",
                _SQL2KServerIP,
                _SQL2KServerPort,
                _SQL2KServerName);

            //===SQL Server 2005===
            _SQL2005ServerPort = (int)GetSettingValueDefault(_appSettings, "SQL2005ServerPort", 17323);
            _SQL2005ServerName = (string)GetSettingValueDefault(_appSettings, "SQL2005ServerName", "PHSQLServer2005");
            _SQL2005ServerIP = (string)GetSettingValueDefault(_appSettings, "SQL2005ServerIP", "10.2.1.242");

            _SQL2005URL = string.Format("tcp://{0}:{1}/{2}",
                _SQL2005ServerIP,
                _SQL2005ServerPort,
                _SQL2005ServerName);

            //===InterBase===
            //_IBDBIP = (string)GetSettingValueDefault(_appSettings, "IBDBIP", "sql2005.sl.phgmt.com.hk");//10.2.1.10:sql2005.sl.phgmt.com.hk
            //_IBServerPort = (int)GetSettingValueDefault(_appSettings, "IBServerPort", 14157);
            //_IBServerName = (string)GetSettingValueDefault(_appSettings, "IBServerName", "IBServer");
            //_IBServerIP = (string)GetSettingValueDefault(_appSettings, "IBServerIP", "10.2.1.242");

            //_IBURL = string.Format("tcp://{0}:{1}/{2}",
            //    _IBServerIP,
            //    _IBServerPort,
            //    _IBServerName);

            ////===Oracle===
            //_OracleServerPort = (int)GetSettingValueDefault(_appSettings, "OracleServerPort", 15717);
            //_OracleServerName = (string)GetSettingValueDefault(_appSettings, "OracleServerName", "OracleServer");
            //_OracleServerIP = (string)GetSettingValueDefault(_appSettings, "OracleServerIP", "10.2.1.242");

            //_OracleURL = string.Format("tcp://{0}:{1}/{2}",
            //    _OracleServerIP,
            //    _OracleServerPort,
            //    _OracleServerName);


            //_autoLogin = (bool)GetSettingValueDefault(_appSettings, "AutoLogin", false);
        }

        public static object GetSettingValueDefault(PhSys.AppSetting appSettings, string name, object defValue)
        {
            object item = appSettings.GetSettingValue(name);
            if (item == null)
            {
                appSettings.SetSettingValue(name, defValue);
                appSettings.SaveSettings();
                item = defValue;
            }
            return item;
        }


        #region AS400
        private static string _AS400ServerIP;
        public static string AS400ServerIP
        {
            get { return _AS400ServerIP; }
            set { _AS400ServerIP = value; }
        }

        private static string _AS400DBIP;
        public static string AS400DBIP
        {
            get { return _AS400DBIP; }
            set { _AS400DBIP = value; }
        }

        private static string _AS400ServerName;
        public static string AS400ServerName
        {
            get { return _AS400ServerName; }
            set { _AS400ServerName = value; }
        }

        private static int _AS400ServerPort;
        public static int AS400ServerPort
        {
            get { return _AS400ServerPort; }
            set { _AS400ServerPort = value; }
        }

        private static string _AS400URL;
        public static string AS400URL
        {
            get
            {
                return _AS400URL;
            }
            set { _AS400URL = value; }
        }
        #endregion

        #region SQL Server 2000
        private static string _SQL2KServerIP;
        public static string SQL2KServerIP
        {
            get { return _SQL2KServerIP; }
            set { _SQL2KServerIP = value; }
        }

        private static string _SQL2KServerName;
        public static string SQL2KServerName
        {
            get { return _SQL2KServerName; }
            set { _SQL2KServerName = value; }
        }

        private static int _SQL2KServerPort;
        public static int SQL2KServerPort
        {
            get { return _SQL2KServerPort; }
            set { _SQL2KServerPort = value; }
        }

        private static string _SQL2KURL;
        public static string SQL2KURL
        {
            get
            {
                return _SQL2KURL;
            }
            set { _SQL2KURL = value; }
        }
        #endregion

        #region SQL Server 2005
        private static string _SQL2005ServerIP;
        public static string SQL2005ServerIP
        {
            get { return _SQL2005ServerIP; }
            set { _SQL2005ServerIP = value; }
        }

        private static string _SQL2005ServerName;
        public static string SQL2005ServerName
        {
            get { return _SQL2005ServerName; }
            set { _SQL2005ServerName = value; }
        }

        private static int _SQL2005ServerPort;
        public static int SQL2005ServerPort
        {
            get { return _SQL2005ServerPort; }
            set { _SQL2005ServerPort = value; }
        }

        private static string _SQL2005URL;
        public static string SQL2005URL
        {
            get
            {
                return _SQL2005URL;
            }
            set { _SQL2005URL = value; }
        }
        #endregion


        #region InterBase
        //private static string _IBServerIP;
        //public static string IBServerIP
        //{
        //    get { return _IBServerIP; }
        //    set { _IBServerIP = value; }
        //}

        //private static string _IBDBIP;
        //public static string IBDBIP
        //{
        //    get { return _IBDBIP; }
        //    set { _IBDBIP = value; }
        //}

        //private static string _IBServerName;
        //public static string IBServerName
        //{
        //    get { return _IBServerName; }
        //    set { _IBServerName = value; }
        //}

        //private static int _IBServerPort;
        //public static int IBServerPort
        //{
        //    get { return _IBServerPort; }
        //    set { _IBServerPort = value; }
        //}

        //private static string _IBURL;
        //public static string IBURL
        //{
        //    get
        //    {
        //        return _IBURL;
        //    }
        //    set { _IBURL = value; }
        //}
        #endregion

        #region Oracle
        //private static string _OracleServerIP;
        //public static string OracleServerIP
        //{
        //    get { return _OracleServerIP; }
        //    set { _OracleServerIP = value; }
        //}

        //private static string _OracleServerName;
        //public static string OracleServerName
        //{
        //    get { return _OracleServerName; }
        //    set { _OracleServerName = value; }
        //}

        //private static int _OracleServerPort;
        //public static int OracleServerPort
        //{
        //    get { return _OracleServerPort; }
        //    set { _OracleServerPort = value; }
        //}

        //private static string _OracleURL;
        //public static string OracleURL
        //{
        //    get
        //    {
        //        return _OracleURL;
        //    }
        //    set { _OracleURL = value; }
        //}
        #endregion


    }
}


