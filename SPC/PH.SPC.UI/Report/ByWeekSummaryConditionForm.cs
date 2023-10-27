using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;

namespace PH.SPC.UI.Report
{
    public partial class ByWeekSummaryConditionForm : Form
    {
        PH.SPC.BO.SPCDataContext db;
        public ByWeekSummaryConditionForm(PH.SPC.BO.SPCDataContext Adb)
        {
            InitializeComponent();
            db = Adb;
            PrepareData();
        }

        public void PrepareData()
        {
            this.cbCustomer.Properties.Items.Clear();
            string SqlStr = "select distinct CustomerID from SampleOrder order by CustomerID";
            this.cbCustomer.Properties.Items.AddRange(db.ExecuteDataTable(SqlStr, "dtCustomer").AsEnumerable().Select(p=>p.Field<string>("CustomerID")).ToArray());

            //this.cbCustomer.Properties.Items.AddRange(db.ExecuteDataTable(SqlStr, "dtCustomer").AsEnumerable().Select(p => new { CustomerID = p.Field<string>("CustomerID") }).ToArray<string>());
            this.cbCustomer.Properties.Items.Insert(0, "");
        }

        public bool CheckInputData()
        {
            if (this.deStartDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please chosen start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deStartDate.Focus();
                return false;
            }

            if (this.deDueDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please chosen due date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deDueDate.Focus();
                return false;
            }

            if (this.deDueDate.DateTime < this.deStartDate.DateTime)
            {
                MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deDueDate.Focus();
                return false;
            }
            return true;
        }

        public DateTime StartDate
        {
            get { return this.deStartDate.DateTime.Date; }
        }

        public DateTime DueDate
        {
            get { return this.deDueDate.DateTime.Date; }
        }

        public string Customer
        {
            get { return this.cbCustomer.Text; }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            this.DialogResult = this.CheckInputData() ? DialogResult.OK : DialogResult.None;
        }
    }
}
