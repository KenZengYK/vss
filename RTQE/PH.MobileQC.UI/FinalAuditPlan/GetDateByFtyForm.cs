using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI.FinalAuditPlan
{
    public partial class GetDateByFtyForm : Form
    {

        public string Fty { get { return this.cbbFac.Text; } }

        public string QN { get { return this.cbbQN.Text; } }

        public GetDateByFtyForm()
        {
            InitializeComponent();
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            cbbFac.Properties.Items.Clear();            
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cbbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

            PH.Platform.AuthMgr.BO.AuthMgrDataContext AuthDB = ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
            string UserName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            PH.Platform.AuthMgr.BO.Auth_User userData = AuthDB.Auth_User.FirstOrDefault(p => p.UserID == UserName);
            if (userData.Auth_UserRole.Any(p => p.RoleID == "00000000000451"))
            {
              cbbQN.Visible =  labelControl2.Visible = true;
            }
            else
            {
                cbbQN.Visible = labelControl2.Visible = false;
            }



        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }


    }
}