using System;
using System.Collections.Generic;
using System.Text;
//using PH.Common.DataAccess.OoDb;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    /// <summary>
    /// OODB Controller
    /// </summary>
    public static class OODBController
    {
        //private static PH.Common.DataAccess.OoDb.IOoDb _DB;
        ///// <summary>
        ///// 得到當前連接到的OODB
        ///// </summary>
        //public static PH.Common.DataAccess.OoDb.IOoDb DB
        //{
        //    get
        //    {
        //        if (_DB == null)
        //        {
        //            ConnectionOODB();
        //            _DB = (DataStore.Db as DbClient).DbServer;
        //        }
        //        return _DB;
        //    }
        //}
	
        //private static void ConnectionOODB()
        //{
        //    PhSys.AppSetting appSettings = new PhSys.AppSetting("PH.Common.UI");
        //    string oodbServerName = (string)PH.Common.UI.UISetting.GetSettingValueDefault(appSettings, "OODBServerName", "PH.LWPM.SkillMatch.Server");
        //    string oodbServerIP = (string)PH.Common.UI.UISetting.GetSettingValueDefault(appSettings, "OODBServerIP", "10.2.1.240");//vss2005.sl.phgmt.com.hk
        //    int oodbServerPort = (int)PH.Common.UI.UISetting.GetSettingValueDefault(appSettings, "OODBServerPort", 12501);
        //    PH.Common.DataAccess.OoDb.DataStore.Connect(oodbServerIP, oodbServerPort, oodbServerName);
        //}

        //public static List<PH.LWPM.SkillMatch.BO.Workforce> GetWorkforce(string ALine)
        //{
        //    PH.Common.DataAccess.OoDb.DataStore.Connect("10.2.1.240", 12501, "PH.LWPM.SkillMatch.Server");
        //    return PH.LWPM.SkillMatch.BO.OOAccess.OO_Workforce.GetWorkforces(ALine);
        //}

    }
}
