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
    public partial class FWOPNPerformanceEvaluateCondition : Form
    {
        private MobileQC.BO.MobileQCDataContext context = Platform.BO.ContextBuilder.CreateContext<MobileQC.BO.MobileQCDataContext>();

        public FWOPNPerformanceEvaluateCondition()
        {
            InitializeComponent();

            this.edtQC_Timeform.EditValue = DateTime.Now.AddMonths(-1).ToShortDateString();
            this.edtQC_TimeTo.EditValue = DateTime.Now.ToShortDateString();
            GetFactorys();

        }

        private void GetFactorys()
        {
            string sqlstr = @"select tplant  from openquery(INTERBASE, 'select distinct tplant from Mobile_QC ')";
            List<string> _factorys= context.ExecuteQuery<string>(sqlstr).ToList();
             lue_Factory.Properties.Items.Clear();
            foreach(string _fac in _factorys)
            {
                lue_Factory.Properties.Items.Add(_fac);            
            }
        
        }

        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {
            this.Lue_workshop.Properties.DataSource = this.context.GetAllWorkshop(this.lue_Factory.Text.ToString());
            this.Lue_workshop.Properties.DisplayMember = "Workshop";
            this.Lue_workshop.Properties.ValueMember = "Workshop";

        }

        private void Lue_workshop_EditValueChanged(object sender, EventArgs e)
        {
            this.GenerateLine();
        }

        void GenerateLine()
        {

            string d1 = this.edtQC_Timeform.DateTime.ToShortDateString();
            string d2 = this.edtQC_TimeTo.DateTime.ToShortDateString();

            this.Lue_line.Properties.DataSource = this.context.getallline(this.lue_Factory.Text.ToString(), this.Lue_workshop.Text.ToString(), d1, d2);
            this.Lue_line.Properties.DisplayMember = "Line";
            this.Lue_line.Properties.ValueMember = "Line";
        }

        private void edtQC_Timeform_EditValueChanged(object sender, EventArgs e)
        {
            this.GenerateLine();
        }

        private void edtQC_TimeTo_EditValueChanged(object sender, EventArgs e)
        {
            this.GenerateLine();
        }


        #region 属性
        public string Factory
        {
            get
            {
                return this.lue_Factory.Text;
            }
        }

        public string Workshop
        {
            get
            {
                return this.Lue_workshop.Text;
            }
        }

        public DateTime QC_TimeFrom
        {
            get
            {
                return this.edtQC_Timeform.DateTime;
            }
        }

        public DateTime QC_TimeTo
        {
            get
            {
                return this.edtQC_TimeTo.DateTime;
            }
        }

        public string Line
        {
            get
            {
                return this.Lue_line.Text;

            }
        }
        #endregion

        //private void Lue_line_Enter(object sender, EventArgs e)
        //{
        //    //this.Lue_line.Properties.DataSource = this.context.GetAllLine();

        //    this.Lue_line.Properties.DataSource = this.context.getallline(this.lue_Factory.Text.ToString(), this.Lue_workshop.Text.ToString(), this.edtQC_Timeform.DateTime, this.edtQC_TimeTo.DateTime);
        //    this.Lue_line.Properties.DisplayMember = "Line";
        //    this.Lue_line.Properties.ValueMember = "Line";
        //}


        private bool CheckPage()
        {
            if (this.Factory == "")
            {
                MessageBox.Show("Please choice factory!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.lue_Factory.Focus();
                return false;
            }
            else if (this.Workshop == "")
            {
                MessageBox.Show("Please choice Workshop!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.Lue_workshop.Focus();
                return false;
            }
            else if (string.IsNullOrEmpty(this.edtQC_Timeform.Text))
            {
                MessageBox.Show("Please input QC start date! ", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtQC_Timeform.Focus();
                return false;
            }
            else if (string.IsNullOrEmpty(this.edtQC_TimeTo.Text))
            {
                MessageBox.Show("Please input QC end date! ", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtQC_TimeTo.Focus();
                return false;
            }
            else if (this.edtQC_TimeTo.DateTime < this.edtQC_Timeform.DateTime)
            {
                MessageBox.Show("The QC Time end date must more then start time", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtQC_TimeTo.Focus();
                return false;
            }
            else if (this.Line == "")
            {
                MessageBox.Show("Please choice line!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.Lue_line.Focus();
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
