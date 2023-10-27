using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Data.Linq;                                 
using System.Xml.Linq;
using PH.Platform.AuthMgr.BO;
using PH.RWO.BO;



namespace PH.RWO.UI
{
    public  class Users
    {
        static AuthMgrDataContext context = ContextBuilder.CreateContext<AuthMgrDataContext>();
        /// <summary>
        /// 獲取用戶列表
        /// </summary>
        public static IEnumerable<Auth_User> GetUsers()
        {
            DataListHelper listhelper = new DataListHelper();
            return listhelper.GetUserList();
        }

        /// <summary>
        /// 通過用戶名獲取用戶名對象
        /// </summary>
        /// <param name="username">用戶名</param>
        /// <returns>用戶的實體對象</returns>
        public static Auth_User GetUsersByUserName(string username)
        {
            Auth_User user = context.Auth_User.Where(p=>p.UserName==username).FirstOrDefault();
            return user;
        }


        /// <summary>
        /// 根據用戶名列表,獲取對應的郵件列表
        /// </summary>
        /// <param name="usernamelist">用戶名字符串</param>
        /// <returns>用戶郵件LIST</returns>
        public static IList<string> GetUserEmailList(string usernamelist)
        {
            String[] list = usernamelist.Split(',');
            return GetUserEmailList(list);
        }
        /// <summary>
        /// 根據用戶名列表,獲取對應的郵件列表
        /// </summary>
        /// <param name="usernamelist">用戶名數組</param>
        /// <returns>用戶郵件LIST</returns>
        /// 
        public static IList<string> GetUserEmailList(String[] usernamelist)
        {
            IList<string> list = new List<string>();
            foreach (string username in usernamelist)
            {
                try
                {
                    Auth_User user = GetUsersByUserName(username);
                    if(user.Email==null||user.Email==string.Empty)
                    {
                        continue;
                    }
                    if (!list.Contains(user.Email))
                    {
                        list.Add(GetUsersByUserName(username).Email);
                    }
                }
                catch
                {}

            }
            return list;
        }
        /// <summary>
        /// 配對在用戶名數組中,是否存在指定的用戶名
        /// </summary>
        /// <param name="userlist">用戶名數組</param>
        /// <param name="username">用戶名</param>
        /// <returns></returns>
        public static bool FindUser(string[] userlist, string username)
        {
            var t1 = from i in userlist where i == username select i;
            if (t1.Count() == 0)
                return false;
            return true;
        }

        /// <summary>
        /// 配對在多個用戶名的字符串中,是否存在指定的用戶名.
        /// </summary>
        /// <param name="userlist">有多個用戶名的字符串,形式如:ray,angle,abc</param>
        /// <param name="username"></param>
        /// <returns></returns>
        public static bool FindUser(string userlist, string username)
        {
            string[] list = userlist.Split(',');
            return FindUser(list, username);
        }



        /// <summary>
        /// 通過多個用戶名字符串獲得用戶實體列表
        /// </summary>
        /// <param name="usernamelist">用戶字符串</param>
        /// <returns>用戶實體列表</returns>
        public static IList<Auth_User> GetUsersByUserNameList(string usernamelist)
        {
            string[] list = usernamelist.Split(',');
            IList<Auth_User> userlist = new List<Auth_User>();
            foreach (string u in list)
            {
                Auth_User user = GetUsersByUserName(u);
                if (user != null)
                {
                    userlist.Add(user);
                }
            }
            return userlist;

        }


        /// <summary>
        /// 設置人員的權限
        /// </summary>
        /// <param name="username">用戶名</param>
        /// <param name="r">權限實體</param>
        /// <returns>添加新人員後的權限實體</returns>
        public static Right SetUserRight(string username,Right r)
        {
            if (FindUser(r.Users, username))
            {
                return r;
            }
            r.Users = r.Users + "," + username;
            return r;
        }


        /// <summary>
        /// 檢測當前的用戶,是否有權限進行當前操作的Comfire
        /// </summary>
        /// <param name="u">當前操作用戶</param>
        /// <param name="r">權限實體</param>
        /// <returns>如果當前的用戶在當前操作的權限的列表中,則返回真值,否則,返回假值</returns>
        public static bool Comfired(Auth_User u, Right r)
        {
            return FindUser(r.Users, u.UserName);
        }
        
    }
}
