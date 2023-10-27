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
using PH.FabricInspection.UI.BandLace;
using PH.FabricInspection.UI.Elastic;
using PH.FabricInspection.UI.Accessory;
using PH.FabricInspection.UI.BraCup;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class SummaryReportForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        DateTime RangeMin = DateTime.MinValue;
        DateTime RangeMax = DateTime.MinValue;

        public SummaryReportForm()
        {
            InitializeComponent();

            //RangeMax = DateTime.Now.Date;
            //RangeMin = DateTime.Now.Date.AddDays(-150);


            //txtDateFrom.Properties.MaxValue = RangeMax;
            //txtDateFrom.Properties.MinValue = RangeMin;


            //txtDateTo.Properties.MaxValue = RangeMax;
            //txtDateTo.Properties.MinValue = RangeMin;

            this.radioGroupOption.SelectedIndex = 2;

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var CategoryList = db.ActionLogSubjectCategories.Where(p => p.OID != 2).OrderBy(p => p.SeqNo).Select(p => p.ShortName).ToList();
            txtCategory.Properties.Items.Clear();
            txtCategory.Properties.Items.AddRange(CategoryList);
            txtCategory.SelectedIndex = 0;
        }

        private void radioGroupOption_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbTo.Visible = txtDateTo.Visible = this.radioGroupOption.SelectedIndex != 0;

            //this.lbDateTo.Visible = this.radDateWorkMode.SelectedIndex == 3;
            //this.txtDateTo.Visible = this.lbDateTo.Visible;

            if (this.radioGroupOption.SelectedIndex == 0) //Daily
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByDay);
                this.txtDateTo.SetWorkMode(DateEditWorkMode.ByDay);
                this.lbDate.Text = "Date:";
            }
            else if (this.radioGroupOption.SelectedIndex == 1) //Weekly
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByWeek);
                this.txtDateTo.SetWorkMode(DateEditWorkMode.ByWeek);
                this.lbDate.Text = "Week:";
            }
            else if (this.radioGroupOption.SelectedIndex == 2) //Monthly
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByMonth);
                this.txtDateTo.SetWorkMode(DateEditWorkMode.ByMonth);
                this.lbDate.Text = "Month:";
            }
        }

        private void btnDetail_Click(object sender, EventArgs e)
        {
            //if (txtCategory.SelectedIndex == 3 || txtCategory.SelectedIndex == 4)
            //{
            //    MessageBox.Show("此功能正在開發中 (This function is under development)", "提示(Hint)", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}

            if (!CheckQueryParam()) return;

            ProcessDate();
            this.Cursor = Cursors.WaitCursor;
            try
            {
                int Category = txtCategory.SelectedIndex;
                DateTime FromDate = MintDate.Date;
                DateTime ToDate = MaxDate.Date;
                string Whse = txtWhse.EditValue.ToString();
                string ReportCaption = "IMQE - " + radioGroupOption.EditValue.ToString() + " Detail Report - " + txtCategory.Text;

                if (Category == 0) //Fabric
                {
                    if (radioGroupOption.SelectedIndex == 0)
                    {
                        this.CreateProgramForm(typeof(MasterListForm), ReportCaption, true, new object[] { FromDate.ToString("yyMMdd"), Whse }, null);
                    }
                    else
                    {
                        this.CreateProgramForm(typeof(MasterListForm), ReportCaption, true, new object[] { FromDate.ToString("yyMMdd"), ToDate.ToString("yyMMdd"), Whse }, null);
                    }
                }
                else if (Category == 1) //Band Lance
                {
                    this.CreateProgramForm(typeof(BandLaceHeaderListForm), ReportCaption, true, new object[] { true, Whse, FromDate, ToDate }, null);
                }
                else if (Category == 2) //Elastic tape
                {
                    this.CreateProgramForm(typeof(ElasticHeaderListForm), ReportCaption, true, new object[] { true, Whse, FromDate, ToDate }, null);
                }
                else if (Category == 3) //Bra Cup
                {
                    this.CreateProgramForm(typeof(BraCupHeaderListForm), ReportCaption, true, new object[] { true, Whse, FromDate, ToDate }, null);
                }
                else if (Category == 4) //Accessory
                {
                    this.CreateProgramForm(typeof(AccessoryHeaderListForm), ReportCaption, true, new object[] { true, Whse, FromDate, ToDate }, null);
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void btnSummary_Click(object sender, EventArgs e)
        {
            if (!CheckQueryParam()) return;

            ProcessDate();
            this.Cursor = Cursors.WaitCursor;
            try
            {
                int Category = txtCategory.SelectedIndex;
                DateTime FromDate = MintDate.Date;
                DateTime ToDate = MaxDate.Date;
                string Warehouse = txtWhse.EditValue == null ? "" : txtWhse.EditValue.ToString();

                string ReportType = "Daily";
                if (radioGroupOption.SelectedIndex == 0)
                {
                    ReportType = "Daily";
                    FromDate = txtDateFrom.DateTime.Date;
                    ToDate = DateTime.MinValue;
                }
                else if (radioGroupOption.SelectedIndex == 1)
                {
                    ReportType = "Weekly";
                }
                else if (radioGroupOption.SelectedIndex == 2)
                {
                    ReportType = "Monthly";
                }

                string ReportCaption = "IMQE - " + ReportType + " Summary Report - " + txtCategory.Text;
                this.CreateProgramForm(typeof(SummryListForm), ReportCaption, true,
                    new object[] { ReportCaption, ReportType, Category, FromDate, ToDate, Warehouse, txtDateFrom.Text, txtDateTo.Text }, null);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        bool CheckQueryParam()
        {
            if (radioGroupOption.SelectedIndex == 0) //Daily
            {
                if (txtDateFrom.DateTime == DateTime.MinValue)
                {
                    MessageBox.Show("Please input query date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtDateFrom.Focus();
                    return false;
                }
            }

            if (radioGroupOption.SelectedIndex == 1) //Weekly
            {
                if (txtDateFrom.DateTime == DateTime.MinValue)
                {
                    MessageBox.Show("Please input start week", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtDateFrom.Focus();
                    return false;
                }

                if (txtDateTo.DateTime == DateTime.MinValue)
                {
                    txtDateTo.Focus();
                    MessageBox.Show("Please input end week", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }


                int FinalWeekFrom = Convert.ToInt32(txtDateFrom.Text.Length == 7 ? txtDateFrom.Text.Replace("-", "") : txtDateFrom.Text.Replace("-", "0"));
                int FinalWeekTo = Convert.ToInt32(txtDateTo.Text.Length == 7 ? txtDateTo.Text.Replace("-", "") : txtDateTo.Text.Replace("-", "0"));

                //if (txtDateTo.DateTime < txtDateFrom.DateTime)
                if (FinalWeekTo < FinalWeekFrom)
                {
                    MessageBox.Show("The end week must be greater than start week", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }
            }

            if (radioGroupOption.SelectedIndex == 2) //Monthly
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

        List<DateTime> DataTimeList = new List<DateTime>();
        DateTime MintDate = DateTime.MinValue;
        DateTime MaxDate = DateTime.MinValue;
        DateTime OutDate1 = DateTime.MinValue;
        DateTime OutDate2 = DateTime.MinValue;
        void ProcessDate()
        {
            if (this.radioGroupOption.SelectedIndex == 0) //Daily
            {
                DataTimeList.Clear();
                DataTimeList.Add(this.txtDateFrom.DateTime);
            }
            else if (this.radioGroupOption.SelectedIndex == 1) //Weekly
            {
                DataTimeList.Clear();
                this.txtDateFrom.GetDate(DateEditWorkMode.ByWeek, out OutDate1, out OutDate2);
                DataTimeList.Add(OutDate1);
                DataTimeList.Add(OutDate2);
                this.txtDateTo.GetDate(DateEditWorkMode.ByWeek, out OutDate1, out OutDate2);
                DataTimeList.Add(OutDate1);
                DataTimeList.Add(OutDate2);

            }
            else if (this.radioGroupOption.SelectedIndex == 2) //Monthly
            {
                DataTimeList.Clear();
                this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
                DataTimeList.Add(OutDate1);
                DataTimeList.Add(OutDate2);
                this.txtDateTo.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
                DataTimeList.Add(OutDate1);
                DataTimeList.Add(OutDate2);
            }

            MintDate = DataTimeList.Min();
            MaxDate = DataTimeList.Max();

            //if (this.radioGroupOption.SelectedIndex == 0) //Daily
            //{
            //    DataTimeList.Clear();
            //    DataTimeList.Add(this.txtDateFrom.DateTime);
            //}
            //else if (this.radioGroupOption.SelectedIndex == 1) //Weekly
            //{
            //    DataTimeList.Clear();
            //    this.txtDateFrom.GetDate(DateEditWorkMode.ByWeek, out OutDate1, out OutDate2);
            //    DataTimeList.Add(OutDate1 >= RangeMin ? OutDate1 : RangeMin);
            //    DataTimeList.Add(OutDate2 <= RangeMax ? OutDate2 : RangeMax);
            //    this.txtDateTo.GetDate(DateEditWorkMode.ByWeek, out OutDate1, out OutDate2);
            //    DataTimeList.Add(OutDate1 >= RangeMin ? OutDate1 : RangeMin);
            //    DataTimeList.Add(OutDate2 <= RangeMax ? OutDate2 : RangeMax);

            //}
            //else if (this.radioGroupOption.SelectedIndex == 2) //Monthly
            //{
            //    DataTimeList.Clear();
            //    this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
            //    DataTimeList.Add(OutDate1 >= RangeMin ? OutDate1 : RangeMin);
            //    DataTimeList.Add(OutDate2 <= RangeMax ? OutDate2 : RangeMax);
            //    this.txtDateTo.GetDate(DateEditWorkMode.ByMonth, out OutDate1, out OutDate2);
            //    DataTimeList.Add(OutDate1 >= RangeMin ? OutDate1 : RangeMin);
            //    DataTimeList.Add(OutDate2 <= RangeMax ? OutDate2 : RangeMax);
            //}

            //MintDate = DataTimeList.Min();
            //MaxDate = DataTimeList.Max();
        }

    }
}
