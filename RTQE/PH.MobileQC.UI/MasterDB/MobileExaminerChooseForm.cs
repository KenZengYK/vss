using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using System.Linq;
using PH.Platform.BO;

namespace PH.MobileQC.UI.MasterDB
{
    public partial class MobileExaminerChooseForm : DevExpress.XtraEditors.XtraForm
    {
        public MobileExaminerChooseForm()
        {
            InitializeComponent();


            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            bindingSource1.DataSource = db.ExecuteQuery<AuditorUser>("exec sp_GetAQLUserList").ToList();
            
            this.gridView1.OptionsBehavior.Editable = false;


        }

        public void GetCurrent() 
        {
            AuditorUser obj = bindingSource1.Current as AuditorUser;
            if (obj == null) return;
            this.UserCode = obj.UserCode;

        }


        public string UserCode { get; set; }

        public class AuditorUser
        {
            public string Factory { get; set; }
            public string UserCode { get; set; }
            public string UserName { get; set; }
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
           // this.Close();
        }
    }
}