using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.AuthMgr.BO;
using PH.Platform.BO;

namespace PH.RWO.UI
{
    public partial class ChoiceUsers : Form
    {
        public ChoiceUsers()
        {
            InitializeComponent();
        }

        PH.RWO.BO.Right Right;
        public ChoiceUsers(PH.RWO.BO.Right right)
        {
            Right = right;
            InitializeComponent();
        }


        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            // PH.RWO.BO.Right right = (rightform.BindingSource.Current as PH.RWO.BO.Right);
            Right.Users = "";
            foreach (object o in this.Userlist.CheckedItems)
            {
                Auth_User u = o as Auth_User;
                Right.Users = Right.Users + u.UserID + ",";
            }
            this.Close();

        }


        private void ChoiceUsers_Load(object sender, EventArgs e)
        {
            //this.Userlist.DataSource =  (new DataListHelper ()).GetUserList();
            AuthMgrDataContext AuthContext = ContextBuilder.CreateContext<AuthMgrDataContext>();
            this.Userlist.DataSource = AuthContext.Auth_User.Where(p => !(p.Expired ?? false));

            this.Userlist.DisplayMember = "UserName";
            this.Userlist.ValueMember = "UserId";
        }
    }
}
