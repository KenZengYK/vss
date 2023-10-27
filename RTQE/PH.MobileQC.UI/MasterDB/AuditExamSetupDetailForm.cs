using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.MasterDB
{
    public partial class AuditExamSetupDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public AuditExamSetupDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

           
            //MobileQCDataContext db = DataContext as MobileQCDataContext;
            //txtAuditorID.Properties.DataSource = db.ExecuteQuery<AuditorUser>("exec sp_GetAQLUserList").ToList();
        }


        public override void EditCurrent()
        {
            base.EditCurrent();
            this.textEdit1.Properties.ReadOnly = true;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            MobileExaminerChooseForm frm = new MobileExaminerChooseForm();
            if (frm.ShowDialog() == DialogResult.OK) 
            {
                frm.GetCurrent();
                AuditExamSetup obj = this.BindingSource.Current as AuditExamSetup;
                obj.AuditorID = frm.UserCode;
                frm.Close();
            }



        }
    }

    public class AuditorUser
    {
        public string Factory { get; set; }
        public string UserCode { get; set; }
        public string UserName { get; set; }
    }
}
