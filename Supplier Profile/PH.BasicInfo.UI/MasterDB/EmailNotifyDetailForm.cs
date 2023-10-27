using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class EmailNotifyDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public EmailNotifyDetailForm()
        {
            InitializeComponent();
        }

        private void EmailNotifyDetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.AuthMgr.BO.AuthMgrDataContext authContext = ContextBuilder.CreateContext<AuthMgrDataContext>();
            List<string> userList = (from val in authContext.Auth_User
                                     where val.UserName != null
                                     orderby val.UserName
                                     select val.UserName).ToList();
            this.txtCcUser.Properties.Items.Clear();
            this.txtToUser.Properties.Items.Clear();
            this.txtBccUser.Properties.Items.Clear();
            foreach (string item in userList)
            {
                this.txtCcUser.Properties.Items.Add(item, false);
                this.txtToUser.Properties.Items.Add(item, false);
                this.txtBccUser.Properties.Items.Add(item, false);
            }
        }

    }
}
