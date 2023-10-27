using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;

namespace PH.MR.UI.FRN
{
    public partial class FrmProjectSelect : DevExpress.XtraEditors.XtraForm
    {
        public FrmProjectSelect()
        {
            InitializeComponent();
        }

        //public ProjectListForm ParentObj;

        public string ProjectNo { get { return this.edtProject.Text.Trim(); } }

        private void FrmProjectSelect_Load(object sender, EventArgs e)
        {

        }

        private void btnOK_Click(object sender, EventArgs e)
        {

            //if (ParentObj.IsExist(this.edtProject.Text.Trim()))
            //{

            //    DialogResult dgr = MessageBox.Show("此Project己存在,重新導入將覆蓋原有數據,是否繼續?", "Project資料己存在!", MessageBoxButtons.YesNo);
            //    if (dgr == DialogResult.No)
            //    { }
            //    else
            //    {
            //        ParentObj.Dgr = DialogResult.OK;
            //        ParentObj.ProjNo = this.edtProject.Text.Trim().ToUpper();
            //    }
            //}

            //else
            //{
            //    ParentObj.ProjNo = this.edtProject.Text.Trim().ToUpper();
            //    ParentObj.Dgr = DialogResult.OK;
            //}

            if (string.IsNullOrEmpty(this.ProjectNo))
            {
                MessageBox.Show("Please input Project No.","Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtProject.Focus();
                return;
            }
            this.DialogResult = DialogResult.OK;
        }

        private void edtProject_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.Close();
        }


    }
}
