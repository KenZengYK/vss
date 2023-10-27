///============================================================================
///Builder:Yunyi
///Build Date :2008-08-15
///Discription:
///============================================================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AS400Interface;
using PhSys;

namespace PH.FabricInspection.BO
{
    class AS400Connection
    {

        #region AS400DB connection

        private static AS400Interface.IDataAccess _AS400DB;
        public static AS400Interface.IDataAccess AS400DB
        {
            get
            {
                if (_AS400DB == null)
                {
                    ConnectAS400();

                }
                return _AS400DB;
            }
          
        }

        private static void ConnectAS400()
        {
            PhSys.AppSetting _appSettings = new PhSys.AppSetting("PH.Common.UI");


            //===AS400===
            string _AS400DBIP = (string)GetSettingValueDefault(_appSettings, "AS400DBIP", "10.1.1.8");//202.155.251.71:as400.hk.phgmt.com.hk:10.1.1.8
            int _AS400ServerPort = (int)GetSettingValueDefault(_appSettings, "AS400ServerPort", 14100);
            string _AS400ServerName = (string)GetSettingValueDefault(_appSettings, "AS400ServerName", "As400Server");
            string _AS400ServerIP = (string)GetSettingValueDefault(_appSettings, "AS400ServerIP", "vss2005.sl.phgmt.com.hk");//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242

            string as400url = string.Format("tcp://{0}:{1}/{2}",
                _AS400ServerIP,
                _AS400ServerPort,
                _AS400ServerName);

            _AS400DB = (AS400Interface.IDataAccess)Activator.GetObject(typeof(AS400Interface.IDataAccess), as400url);

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
        #endregion


    }
}
