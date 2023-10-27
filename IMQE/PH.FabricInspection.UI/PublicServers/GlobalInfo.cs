using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    public class GlobalInfo
    {        
        public static String GetCurrentUserId()
        {
            //return PH.AuthManage.Utils.AuthController.UserName;
            return PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
		//return PH.Environment.Instance.CurrentUser.UserID;
        }

    }
}
