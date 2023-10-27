using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class SupplierQualPerfReportForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public SupplierQualPerfReportForm()
        {
            InitializeComponent();

            this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByMonth);
            this.txtDateTo.SetWorkMode(DateEditWorkMode.ByMonth);
            //this.txtDateFrom.Properties.MaxValue = this.txtDateTo.Properties.MaxValue = DateTime.Now.Date;
            //this.txtDateFrom.Properties.MinValue = this.txtDateTo.Properties.MinValue = DateTime.Now.Date.AddDays(-150);

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var CategoryList = db.ActionLogSubjectCategories.Where(p => p.OID != 2).OrderBy(p => p.SeqNo).Select(p => p.ShortName).ToList();
            txtCategory.Properties.Items.Clear();
            txtCategory.Properties.Items.AddRange(CategoryList);
            txtCategory.SelectedIndex = 0;
        }

        DateTime OutDate1 = DateTime.MinValue;
        DateTime OutDate2 = DateTime.MinValue;
        DateTime OutDate3 = DateTime.MinValue;
        DateTime OutDate4 = DateTime.MinValue;
        private void btnMonthly_Click(object sender, EventArgs e)
        {
            if (!CheckQueryParam()) return;

            if (radType.SelectedIndex == 0) //Monthly
            {
                this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
                OutDate3 = OutDate1;
                OutDate4 = OutDate2;
            }
            else if (radType.SelectedIndex == 1) //Period Range 
            {
                this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
                this.txtDateTo.GetDate(DateEditWorkMode.ByMonth, out OutDate3, out OutDate4);
            }

            //this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
            //this.txtDateTo.GetDate(DateEditWorkMode.ByMonth, out OutDate3, out OutDate4);

            //if (OutDate1 < txtDateFrom.Properties.MinValue)
            //{
            //    OutDate1 = txtDateFrom.Properties.MinValue.Date;
            //}

            //if (OutDate4.Date > txtDateTo.Properties.MaxValue.Date)
            //{
            //    OutDate4 = txtDateTo.Properties.MaxValue.Date;
            //}
            this.Cursor = Cursors.WaitCursor;
            try
            {
                int Category = txtCategory.SelectedIndex;
                bool ConvertedFabric = (Category == 0 && chkConvertedFabric.Checked);

                //string FromDate = OutDate1.ToString("yyMMdd");
                //string ToDate = OutDate4.ToString("yyMMdd");

                DateTime FromDate = OutDate1.Date;
                DateTime ToDate = OutDate4.Date;

                string Warehouse = txtWhse.EditValue.ToString();
                string ReportType = "ByMonthly";
                string ReportCaption = "IMQE - Suppliers Qual Perf. Summary Monthly Report - " + txtCategory.Text;
                this.CreateProgramForm(typeof(SupplierQuallSummaryListForm), ReportCaption, true, new object[] { ReportCaption, ReportType, Category, ConvertedFabric, FromDate, ToDate, Warehouse }, null);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void btnSupplier_Click(object sender, EventArgs e)
        {
            if (!CheckQueryParam()) return;

            if (radType.SelectedIndex == 0) //Monthly
            {
                this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
                OutDate3 = OutDate1;
                OutDate4 = OutDate2;
            }
            else if (radType.SelectedIndex == 1) //Period Range 
            {
                this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
                this.txtDateTo.GetDate(DateEditWorkMode.ByMonth, out OutDate3, out OutDate4);
            }

            //this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
            //this.txtDateTo.GetDate(DateEditWorkMode.ByMonth, out OutDate3, out OutDate4);

            //if (OutDate1 < txtDateFrom.Properties.MinValue)
            //{
            //    OutDate1 = txtDateFrom.Properties.MinValue.Date;
            //}

            //if (OutDate4.Date > txtDateTo.Properties.MaxValue.Date)
            //{
            //    OutDate4 = txtDateTo.Properties.MaxValue.Date;
            //}

            this.Cursor = Cursors.WaitCursor;
            try
            {
                int Category = txtCategory.SelectedIndex;
                bool ConvertedFabric = (Category == 0 && chkConvertedFabric.Checked);

                //string FromDate = OutDate1.ToString("yyMMdd");
                //string ToDate = OutDate4.ToString("yyMMdd");

                DateTime FromDate = OutDate1.Date;
                DateTime ToDate = OutDate4.Date;

                string Warehouse = txtWhse.EditValue.ToString();
                string ReportType = "BySupp";
                string ReportCaption = "IMQE - Suppliers Qual Perf. Summary Report - " + txtCategory.Text;
                this.CreateProgramForm(typeof(SupplierQuallSummaryListForm), ReportCaption, true, new object[] { ReportCaption, ReportType, Category, ConvertedFabric, FromDate, ToDate, Warehouse }, null);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        bool CheckQueryParam()
        {
            if (radType.SelectedIndex == 0) //Monthly
            {
                if (txtDateFrom.DateTime == DateTime.MinValue)
                {

                    MessageBox.Show("Please input month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtDateFrom.Focus();
                    return false;
                }
            }
            else if (radType.SelectedIndex == 1) //Period Range 
            {
                if (txtDateFrom.DateTime == DateTime.MinValue)
                {
                    MessageBox.Show("Please input start month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtDateFrom.Focus();
                    return false;
                }

                if (txtDateTo.DateTime == DateTime.MinValue)
                {
                    txtDateTo.Focus();
                    MessageBox.Show("Please input end month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                DateTime FinalDateFrom = DateTime.Parse(txtDateFrom.DateTime.ToString("yyyy-MM-01"));
                DateTime FinalDateTo = DateTime.Parse(txtDateTo.DateTime.ToString("yyyy-MM-01"));

                //if (txtDateTo.DateTime < txtDateFrom.DateTime)
                if (FinalDateTo < FinalDateFrom)
                {
                    MessageBox.Show("The end month must be greater than start month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }
            }


            return true;
        }

        private void txtCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            chkConvertedFabric.Visible = txtCategory.SelectedIndex == 0;
        }

        void ControlDateShow()
        {
            if (radType.SelectedIndex == 0) //Monthly
            {
                lbTo.Visible = false;
                txtDateTo.Visible = false;
            }
            else if (radType.SelectedIndex == 1) //Period Range 
            {
                lbTo.Visible = true;
                txtDateTo.Visible = true;
            }
        }

        private void radType_SelectedIndexChanged(object sender, EventArgs e)
        {
            ControlDateShow();
        }

        private void SupplierQualPerfReportForm_Load(object sender, EventArgs e)
        {
            ControlDateShow();
        }

    }
}
