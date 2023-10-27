using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class CheckWorkTimeApplicationReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public CheckWorkTimeApplicationReport()
        {
            InitializeComponent();

        }

        public int Flag;
        public CheckWorkTimeApplicationReport(string Flag)
        {
            InitializeComponent();
            this.Flag= Convert.ToInt32(Flag);
        }



        bool CheckInputCondition()
        {
            if (string.IsNullOrEmpty(this.txtStartDate.Text))
            {
                this.txtStartDate.Focus();
                MessageBox.Show("請選擇開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;

            }
            else if (string.IsNullOrEmpty(this.txtDueDate.Text))
            {
                this.txtDueDate.Focus();
                MessageBox.Show("請選擇結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.txtDueDate.DateTime < this.txtStartDate.DateTime) 
            {
                this.txtDueDate.Focus();
                MessageBox.Show("結束日期需大於開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            return true;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (CheckInputCondition())
            {
                if (EdReportType.SelectedIndex == 0)
                {
                    WorkTimeApplicationReport_Detail rpt1 = new WorkTimeApplicationReport_Detail(txtStartDate.DateTime, txtDueDate.DateTime, lookUpEdit1.EditValue.ToString(), lookUpEdit1.Text, checkedComboBoxEdit1.Text, this.Flag);
                    rpt1.ShowPreview();
                }
                else 
                {
                    WorkTimeReport rpt1 = new WorkTimeReport(txtStartDate.DateTime, txtDueDate.DateTime, lookUpEdit1.EditValue.ToString(), lookUpEdit1.Text, checkedComboBoxEdit1.Text, this.Flag);
                    rpt1.ShowPreview();
                }

            } 
        }


        public override void DataBind()
        {
            if (this.DataContext == null)
            {
                this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            PHGDB2DataContext db = this.DataContext as PHGDB2DataContext;

            List<ByPiece_Employee> empList = db.ByPiece_Employees.ToList();
            empList.Insert(0, new ByPiece_Employee() { EmpId = "", EmpName = "" });
            this.BsEmp.DataSource = empList.Where(p => p.Flag == this.Flag); 

            base.DataBind();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            txtStartDate.Text = "";
            txtDueDate.Text = "";
            lookUpEdit1.ItemIndex = 0;
            checkedComboBoxEdit1.Text = "";
        }     

    }
}
