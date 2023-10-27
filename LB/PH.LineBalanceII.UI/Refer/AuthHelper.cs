using System;
using System.Collections.Generic;
using System.Text;
//using PH.AuthManage.Utils;

namespace PH.LineBalanceII.UI
{
    /// <summary>
    /// 許可權幫助者
    /// </summary>
    public class AuthHelper
    {
        /// <summary>
        /// 有編輯許可權
        /// </summary>
    	public static bool HasEditAuth
	    {
    		get 
            {
                return true;//zrtag  AuthController.Validate(AuthController.User, "LineBalance", "Edit", true);
            }
	    }

        /// <summary>
        /// 有審批許可權
        /// </summary>
        public static bool HasAuditAuth
        {
            get
            {
                return true;//zrtag AuthController.Validate(AuthController.User, "LineBalance", "Audit", true);
            }
        }

        /// <summary>
        /// 有刪除許可權
        /// </summary>
        public static bool HasDeleteAuth
        {
            get
            {
                return true;//zrtag AuthController.Validate(AuthController.User, "LineBalance", "Delete", true);
            }
        }

    }
}
