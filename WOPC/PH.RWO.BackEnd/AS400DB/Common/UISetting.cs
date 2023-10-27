using System;
using System.Collections.Generic;
using System.Text;

namespace PH.RWO.BackEnd
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
            _appSettings = new PhSys.AppSetting("PH.Common.UI");

            //===AS400===
            _AS400DBIP = (string)GetSettingValueDefault(_appSettings, "AS400DBIP", "10.1.1.8");//202.155.251.71:as400.hk.phgmt.com.hk:10.1.1.8
            _AS400ServerPort = (int)GetSettingValueDefault(_appSettings, "AS400ServerPort", 14100);
            _AS400ServerName = (string)GetSettingValueDefault(_appSettings, "AS400ServerName", "As400Server");
            _AS400ServerIP = (string)GetSettingValueDefault(_appSettings, "AS400ServerIP", "vss2005.sl.phgmt.com.hk");//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242

            _AS400URL = string.Format("tcp://{0}:{1}/{2}",
                _AS400ServerIP,
                _AS400ServerPort,
                _AS400ServerName);

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

   

    }
}

