using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class CheckWareHousePriceReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public CheckWareHousePriceReport()
        {
            InitializeComponent();

            if (this.DataContext == null)
            {
                this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            PHGDB2DataContext db = this.DataContext as PHGDB2DataContext;

            List<ByPiece_Employee> empList = db.ByPiece_Employees.ToList();
            empList.Insert(0, new ByPiece_Employee() { EmpId = "", EmpName = "" });
            this.bsEmp.DataSource = empList;
        }

        public int Flag;
        public CheckWareHousePriceReport(string Flag)
        {
            InitializeComponent();

            this.Flag = Convert.ToInt32(Flag);

            if (this.DataContext == null)
            {
                this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            PHGDB2DataContext db = this.DataContext as PHGDB2DataContext;

            List<ByPiece_Employee> empList = db.ByPiece_Employees.ToList();
            empList.Insert(0, new ByPiece_Employee() { EmpId = "", EmpName = "" });
            this.bsEmp.DataSource = empList.Where(p=>p.Flag==this.Flag);
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
                    //WareHousePriceReport rpt1 = new WareHousePriceReport(txtStartDate.DateTime, txtDueDate.DateTime, txtID.Text, txtName.Text);
                    WareHousePriceReport rpt1 = new WareHousePriceReport(txtStartDate.DateTime, txtDueDate.DateTime, lookUpEdit1.EditValue.ToString(), lookUpEdit1.Text, radioGroup1.SelectedIndex, this.Flag);
                    rpt1.ShowPreview();
                }
                else
                {
                    WareHousePriceReport_Summary rpt2 = new WareHousePriceReport_Summary(txtStartDate.DateTime, txtDueDate.DateTime, lookUpEdit1.EditValue.ToString(), lookUpEdit1.Text, this.Flag);
                    rpt2.ShowPreview();
                }
            }

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            txtStartDate.Text = "";
            txtDueDate.Text = "";
            lookUpEdit1.ItemIndex = 0;
            
            //if (CheckInputCondition())
            //{
            //    //WareHousePriceReport rpt1 = new WareHousePriceReport(txtStartDate.DateTime, txtDueDate.DateTime, txtID.Text, txtName.Text);
            //    WareHousePriceReport_Sub rpt1 = new WareHousePriceReport_Sub(txtStartDate.DateTime, txtDueDate.DateTime, lookUpEdit1.EditValue.ToString(), lookUpEdit1.Text);
            //    rpt1.ShowPreview();
            //}
        }



    }


}
