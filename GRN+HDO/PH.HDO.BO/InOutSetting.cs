using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.HDO.BO
{
    [Serializable]
    public class InOutSetting
    {
        static InOutSetting()
        {
            GetSettings();
        }

        private static PhSys.AppSetting _appSettings;

        private static string _AS400ServerIP;
        public static string AS400ServerIP
        {
            get { return _AS400ServerIP; }
            set { _AS400ServerIP = value; }
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


        public static void GetSettings()
        {
            _appSettings = new PhSys.AppSetting("StockInOut");

            if (_appSettings.Items.Count == 0)
            {

                _appSettings.SetSettingValue("AS400ServerIP", "10.2.1.242");
                _appSettings.SetSettingValue("AS400ServerName", "As400Server");
                _appSettings.SetSettingValue("AS400ServerPort", (int)14100);
                _appSettings.SaveSettings();
            }

            _AS400ServerPort = (int)_appSettings.GetSettingValue("AS400ServerPort");
            _AS400ServerName = (string)_appSettings.GetSettingValue("AS400ServerName");
            _AS400ServerIP = (string)_appSettings.GetSettingValue("AS400ServerIP");

            _URL = string.Format("tcp://{0}:{1}/{2}",
                _AS400ServerIP,
                _AS400ServerPort,
                _AS400ServerName);
        }

        private static string _URL;
        public static string URL
        {
            get
            {
                return _URL;
            }
            set { _URL = value; }
        }


    }
}
