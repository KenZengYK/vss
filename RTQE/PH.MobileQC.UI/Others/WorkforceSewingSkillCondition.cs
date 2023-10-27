using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class WorkforceSewingSkillCondition : Form
    {
        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

        public WorkforceSewingSkillCondition()
        {
            InitializeComponent();
        }

        private void WorkforceSewingSkillCondition_Load(object sender, EventArgs e)
        {

            this.edtQC_TimeFrom.EditValue = DateTime.Now.AddMonths(-1);
            this.edtQC_TimeTo.EditValue = DateTime.Now;
            this.edtLine.Properties.DataSource = context.GetAllLine();
           // this.edtLine.Properties.DataSource = context.GetAllLine(this.edtQC_TimeFrom.DateTime, this.edtQC_TimeTo.DateTime);

            this.edtLine.Properties.DisplayMember = "Line";
            this.edtLine.Properties.ValueMember = "Line";


        }


        private void edtLine_EditValueChanged(object sender, EventArgs e)
        {
           
            this.edtWorker.Properties.DataSource = context.GetWorker(this.edtQC_TimeFrom.DateTime.ToShortDateString() , this.edtQC_TimeTo.DateTime.ToShortDateString() , this.Line);
            this.edtWorker.Properties.DisplayMember = "Worker";
            this.edtWorker.Properties.ValueMember = "Worker";
        }

        private void edtWorker_EditValueChanged(object sender, EventArgs e)
        {
            //this.edtCustomer.Properties.DataSource = context.GetCustomer(this.edtLine.Text, this.edtWorker.Text);

            //this.edtCustomer.Properties.DataSource = context.GetCustomer(this.edtQC_TimeFrom.DateTime, this.edtQC_TimeTo.DateTime, this.edtLine.Text, this.edtWorker.Text);
            this.edtCustomer.Properties.DataSource = context.GetCustomer(this.edtQC_TimeFrom.DateTime.ToShortDateString(), this.edtQC_TimeTo.DateTime.ToShortDateString(), this.edtLine.Text, this.edtWorker.Text);
            this.edtCustomer.Properties.DisplayMember = "Customer";
            this.edtCustomer.Properties.ValueMember = "Customer";
        }

        public string Line
        {
            get
            {
                return this.edtLine.Text;
            }
        }

        public string Worker
        {
            get
            {
                return this.edtWorker.Text;
            }
        }

        public string Customer
        {
            get
            {
                return this.edtCustomer.Text;
            }
        }

        public DateTime QC_TimeFrom
        {
            get
            {
                return this.edtQC_TimeFrom.DateTime;
            }
        }

        public DateTime QC_TimeTo
        {
            get
            {
                return this.edtQC_TimeTo.DateTime;
            }
        }

        private void edtQC_TimeTo_Validated(object sender, EventArgs e)
        {
            if (this.edtQC_TimeTo.DateTime < this.edtQC_TimeFrom .DateTime )
            {

                MessageBox.Show("The end time can not be greater than start time");
               
            }
        }

        private void edtQC_TimeFrom_Validated(object sender, EventArgs e)
        {

            if (this.edtQC_TimeTo.DateTime < this.edtQC_TimeFrom.DateTime)
            {


                MessageBox.Show("The end time can not be greater than start time");

            }

        }



        private void edtLine_Enter(object sender, EventArgs e)
        {
            this.edtLine.Properties.DataSource = context.GetAllLine(this.edtQC_TimeFrom.DateTime, this.edtQC_TimeTo.DateTime);

            this.edtLine.Properties.DisplayMember = "Line";
            this.edtLine.Properties.ValueMember = "Line";
        }




    }
}
