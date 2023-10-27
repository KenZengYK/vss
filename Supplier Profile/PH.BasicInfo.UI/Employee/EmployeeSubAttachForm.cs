using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI;
using PH.Platform.BO;
//using PH.Platform.Misc.BO;
//using PH.Platform.Common;
using PH.Platform.UI.CS.UI3;
using PH.Platform.AuthMgr.BO;

namespace PH.BasicInfo.UI.Employee
{
    public partial class EmployeeSubAttachForm : PH.Platform.UI.CS.UI3.SubAttachForm
    {
        AuthMgrDataContext _dc;
        public EmployeeSubAttachForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            _dc = ContextBuilder.CreateContext<AuthMgrDataContext>();
            this.DataContext = _dc; 

            DataContextFactory.RegisterDataContext(_dc);

            this.BindingSource.DataSource = this.GetNotAttachAuth_User(PH.BasicInfo.UI.Employee.UserListClass._lstUserID);
            base.DataBind();
        }

        /// <summary>
        /// 取得沒有被附加的用戶集合
        /// </summary>
        /// <param name="sArray">已經被選中附加了的用戶集</param>
        /// <returns>返回沒有被附加的用戶集合</returns>
        protected IEnumerable<Auth_User> GetNotAttachAuth_User(string[] sArray)
        {
            var rLists = from a in this._dc.Auth_User
                         where (!(sArray).Contains(a.UserID) && a.Expired == false)
                         select a;
            return rLists;
        }
    }
}
