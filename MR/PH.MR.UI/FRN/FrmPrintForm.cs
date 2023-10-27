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
    public partial class FrmPrintForm : Form
    {


        public MRDataContext MRDC;
        public ProjectListForm ParenttObj;
       // public string CurProject;

        public FrmPrintForm()
        {
            InitializeComponent();
           

        }


        private bool IsExist()
        {
            
           bool IsProjExist = false;

            if (MRDC!=null&&MRDC.FRN_MasterInfos != null)
            {
                FRN_MasterInfo mas = (from cc in MRDC.FRN_MasterInfos where cc.ProjectNo == this.edtProject.Text.Trim() select cc).FirstOrDefault();

                if (mas != null)
                    IsProjExist = true;
            }
            return IsProjExist;

        }

        private void btPrint_Click(object sender, EventArgs e)
        {
            if (!IsExist())
            { MessageBox.Show("The project not exists,please select others!"); }
            else
            {
                this.DialogResult = DialogResult.OK;
                ParenttObj.CurrentProject = edtProject.Text.Trim();
                this.Close();
            }
        }

        private void FrmPrintForm_Load(object sender, EventArgs e)
        {
            this.edtProject.Text = ParenttObj.SelectProj;
        }
    }
}
