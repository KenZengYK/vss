using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.Platform.BO;

namespace PH.SPC.UI.Report
{
    public partial class SummaryReportConditionForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public SummaryReportConditionForm()
        {
            InitializeComponent();
            PrepareData();
        }

        void PrepareData()
        {
            txtFromDate.DateTime = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddMonths(-1);
            txtToDate.DateTime = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddDays(-1);

            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();
            string SqlStr = "select distinct left(ProductCategory, 1) as PrdnCategory from Style where isnull(ProductCategory, '') <> '' order by PrdnCategory";
            DataTable dt = db.ExecuteDataTable(SqlStr, "dt");

            txtProductCategory.Properties.Items.Clear();
            foreach (DataRow dr in dt.Rows)
            {
                txtProductCategory.Properties.Items.Add(dr[0].ToString());
            }

            //制作工场
            SqlStr = "select Code, ENDes as NameEN, CHDes as NameCN from [PH.DespatchSample]..Sample_WN";
            DataTable dtProductWs = db.ExecuteDataTable(SqlStr, "dtProductWs");
            dtProductWs.Rows.InsertAt(dtProductWs.NewRow(), 0);
            txtProductWs.Properties.DataSource = dtProductWs;
            txtProductWs.Properties.ValueMember = "Code";
            txtProductWs.Properties.DisplayMember = "Code";
        }

        bool CheckInputData()
        {
            if (txtFromDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please input start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                txtFromDate.Focus();
                return false;
            }
            if (txtToDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please input due date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                txtToDate.Focus();
                return false;
            }

            if (txtToDate.DateTime.Date < txtFromDate.DateTime.Date)
            {
                MessageBox.Show("The due date cannot be less than the start date", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return true;

        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (!CheckInputData()) return;

            try
            {
                this.Cursor = Cursors.WaitCursor;

                if (txtReportType.SelectedIndex == 0)
                {
                    SummaryReportBySampleType rptSummaryBySampleType = new SummaryReportBySampleType(txtFromDate.DateTime.Date, txtToDate.DateTime.Date, txtPrdnSite.Text, txtSeason.Text, txtProductCategory.Text, txtProductWs.Text);
                    rptSummaryBySampleType.ShowPreview();
                }
                else if (txtReportType.SelectedIndex == 3) //By Cust + DVP + PH Style#
                {
                    SummaryReportByStyle rptSummaryByPHStyle = new SummaryReportByStyle(txtFromDate.DateTime.Date, txtToDate.DateTime.Date, txtPrdnSite.Text, txtSeason.Text, txtProductCategory.Text, txtProductWs.Text);
                    rptSummaryByPHStyle.ShowPreview();
 
                }
                else
                {
                    bool ReportType = txtReportType.SelectedIndex == 1;
                    SummaryReport rptSummary = new SummaryReport(ReportType, txtFromDate.DateTime.Date, txtToDate.DateTime.Date, txtPrdnSite.Text, txtSeason.Text, txtProductCategory.Text, txtProductWs.Text);
                    rptSummary.ShowPreview();
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }
    }
}
