using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI
{
    public partial class worker_Evaluate : Form
    {
        private MobileQC.BO.MobileQCDataContext context = Platform.BO.ContextBuilder.CreateContext<MobileQC.BO.MobileQCDataContext>();

        public worker_Evaluate()
        {
            InitializeComponent();

            this.edtQC_Timeform.EditValue  = DateTime.Now.AddMonths(-1);
            this.edtQC_TimeTo.EditValue = DateTime.Now;
            
        }

        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {

            this.Lue_workshop.Properties.DataSource = this.context.GetAllWorkshop(this.lue_Factory.Text.ToString());
            this.Lue_workshop.Properties.DisplayMember = "Workshop";
            this.Lue_workshop.Properties.ValueMember = "Workshop";

        }

        public string factory
        {
            get 
            {
                return this.lue_Factory.Text;
            }
        }

        public string workshop
        {
            get
            {
                return this.Lue_workshop.Text;
            }
        }

        public DateTime timefrom
        {
            get
            {
                return this.edtQC_Timeform.DateTime;
            }
        }

        public DateTime timeto
        {
            get
            {
                return this.edtQC_TimeTo.DateTime;
            }
        }

        public string line
        {
            get
            {
                return this.Lue_line.Text;

            }
        }

        private void Lue_line_Enter(object sender, EventArgs e)
        {
            //this.Lue_line.Properties.DataSource = this.context.GetAllLine();

            this.Lue_line.Properties.DataSource = this.context.getallline(this.lue_Factory.Text.ToString(),this.Lue_workshop.Text.ToString(), this.edtQC_Timeform.DateTime, this.edtQC_TimeTo.DateTime);
            this.Lue_line.Properties.DisplayMember = "Line";
            this.Lue_line.Properties.ValueMember = "Line";
        }


        private bool CheckPage()
        {
            if (this.factory == "")
            {

                MessageBox.Show("Please select factory!");
                return false;

            }
            else if (this.line == "")
            {
                MessageBox.Show("Please select line!");
                return false;

            }
            //else if (this.Project == "")
            //{
            //    MessageBox.Show("Please select project!");
            //    return false;
            //}
            else if (this.workshop == "")
            {
                MessageBox.Show("Please select workshop!");
                return false;
            }

            else if (this.timefrom == Convert.ToDateTime("1900-01-01") || this.timeto == Convert.ToDateTime("1900-01-01") || this.timefrom >this.timeto )
            {
                MessageBox.Show("Please select QC time OR time error!");
                return false;
            }

            return true;
        }

        private void sbut_OK_Click(object sender, EventArgs e)
        {
            if (!CheckPage())
            {
                this.DialogResult = DialogResult.None;
                return;
            }
            else
            {
                this.DialogResult = DialogResult.OK;
            }


        }

    }
}
