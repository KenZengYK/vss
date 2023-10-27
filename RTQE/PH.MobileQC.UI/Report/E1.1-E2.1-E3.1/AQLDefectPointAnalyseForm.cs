using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.UI.AQL;
using PH.Platform.ExtendLibrary;
using System.Globalization;
using PH.MobileQC.BO;
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AQLDefectPointAnalyseForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public string ShowFlag = "";

        public AQLDefectPointAnalyseForm()
        {
            InitializeComponent();
            ucDateChoice.HideItem(DatePeroidTypes.PeroidRang);
        }

        public AQLDefectPointAnalyseForm(string AShowFlag)
        {
            InitializeComponent();
            ShowFlag = AShowFlag;
            if (AShowFlag == "N" && this.cmbType.SelectedIndex == 0)
            {
                ucDateChoice.radDateWorkMode.SelectedIndex = 0;
                ucDateChoice.radDateWorkMode.Enabled = false;
            }


        }

        //DateTime Date1 = DateTime.MinValue;
        //DateTime Date2 = DateTime.MinValue;
        //DateTime Date3 = DateTime.MinValue;
        //DateTime Date4 = DateTime.MinValue;
        //List<DateTime> DataTimeList = new List<DateTime>();
        //DateTime StartDate = DateTime.MinValue;
        //DateTime DueDate = DateTime.MinValue;

        private void simpleButton1_Click(object sender, EventArgs e)
        {

            string ChechComletedIs = "";
            if (checkCompleted.Checked) { ChechComletedIs = "Completed"; }
            if (checkIncompleted.Checked) { ChechComletedIs = "Incompleted"; }
            if (checkCompleted.Checked && checkIncompleted.Checked) { ChechComletedIs = "All"; }

            DatePeroidTypes DateType = ucDateChoice.DatePeroidType;

            if (cmbType.SelectedIndex != 1 && !ucDateChoice.ProcessDate()) return;

            DateTime FromDate = DateTime.MinValue;
            DateTime ToDate = DateTime.MinValue;
            string WeeklyOrMonthly = "";

            if (DateType == DatePeroidTypes.Daily)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = FromDate;
            }
            else if (DateType == DatePeroidTypes.Weekly)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
                WeeklyOrMonthly = ucDateChoice.Week.ToString();
            }
            else if (DateType == DatePeroidTypes.Monthly)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
                WeeklyOrMonthly = ucDateChoice.Month.ToString();
            }
            else if (DateType == DatePeroidTypes.PeroidRang)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
            }

            string IsChooseTop3 = comboBoxEdit1.SelectedIndex != 1 ? "Y" : "N";

            try
            {
                this.Cursor = Cursors.WaitCursor;
                if (cmbType.SelectedIndex == 0) //2.2a AQL Performance - Defect
                {
                    if (!CheckInformation()) return;
                    AQLDefectPointAnalyseReport rpt = new AQLDefectPointAnalyseReport(DateType, this.txFactory.Text, WeeklyOrMonthly, FromDate, ToDate, ChechComletedIs, IsChooseTop3);
                    //rpt.CreateDocument();
                    //AQLAuditFPYSupplementSheetOfRpt22a SubRpt2 = new AQLAuditFPYSupplementSheetOfRpt22a(DateType, this.txFactory.Text, WeeklyOrMonthly, FromDate, ToDate);
                    //SubRpt2.CreateDocument();
                    //rpt.Pages.AddRange(SubRpt2.Pages);

                    rpt.ShowPreview();
                }
                else if (cmbType.SelectedIndex == 1) //2.2ba AQL Audit Performance - Reject Record to be completed
                {
                    AQLAuditRejectRecordToBeCompleted rptAQLAuditRejectRecordToBeCompleted = new AQLAuditRejectRecordToBeCompleted(this.txFactory.Text);
                    rptAQLAuditRejectRecordToBeCompleted.ShowPreview();
                }
                else if (cmbType.SelectedIndex == 2) //2.2bb AQL Audit Performance - Reject Record
                {
                    if (!CheckInformation()) return;
                    AQLAuditRejectRecord rptAQLAuditRejectRecord = new AQLAuditRejectRecord(DateType, this.txFactory.Text, WeeklyOrMonthly, FromDate.ToString("yyyy-MM-dd"), ToDate.ToString("yyyy-MM-dd"));
                    rptAQLAuditRejectRecord.ShowPreview();
                }
                //else if (cmbType.SelectedIndex == 3) 
                //{
                //    if (!CheckInformation()) return;
                //    AQLAuditFPYSupplementSheetOfRpt22a Rpt = new AQLAuditFPYSupplementSheetOfRpt22a(this.txFactory.Text, FromDate.ToString("yyyy-MM-dd"), ToDate.ToString("yyyy-MM-dd"));
                //    Rpt.ShowPreview();
                //}
            }
            finally
            {
                this.Cursor = Cursors.Default;

            }


        }

        bool CheckInformation()
        {
            if (string.IsNullOrEmpty(this.txFactory.Text))
            {
                MessageBox.Show("請選擇工廠", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            //if (this.txDateFrom.EditValue == null)
            //{
            //    MessageBox.Show("請選擇開始日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}
            //if (this.txDateTo.EditValue == null)
            //{
            //    MessageBox.Show("請選擇結束日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}
            //if (this.txDateFrom.DateTime > this.txDateTo.DateTime)
            //{
            //    MessageBox.Show("開始日期不能大於結束日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}

            return true;
        }

        private void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            checkIncompleted.Visible = cmbType.SelectedIndex == 0;
            checkCompleted.Visible = checkIncompleted.Visible;

            this.ucDateChoice.Visible = this.cmbType.SelectedIndex != 1;

            ucDateChoice.radDateWorkMode.Enabled = this.cmbType.SelectedIndex != 0;

            if (ShowFlag == "N" && this.cmbType.SelectedIndex == 0)
            {
                ucDateChoice.radDateWorkMode.SelectedIndex = 0;
                ucDateChoice.radDateWorkMode.Enabled = false;
            }



            //txDateFrom.Enabled = cmbType.SelectedIndex != 1;
            //txDateTo.Enabled = txDateFrom.Enabled;

            //this.txDateFrom.Enabled = this.txDateTo.Enabled = this.DayOrPeroidRange.Enabled = this.cmbType.SelectedIndex != 1;

        }

        private void ucDateChoice_Load(object sender, EventArgs e)
        {

        }


        //private void radioGroup1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    this.xrTimeName.Text = this.radioGroup1.EditValue.ToString() == "Daily" || this.radioGroup1.EditValue.ToString() == "Period Range" ? "Date : " : this.radioGroup1.EditValue.ToString().Replace("ly", "") + " :";

        //    txDateTo.Visible = labelControl2.Visible = this.radioGroup1.SelectedIndex == 3;

        //    DayOrPeroidRange.Visible = this.radioGroup1.SelectedIndex == 0 || this.radioGroup1.SelectedIndex == 3;
        //    txDateFrom.Visible = !DayOrPeroidRange.Visible;

        //    DateType = (ReportDatePeroidTypes)this.radioGroup1.SelectedIndex;

        //    if (this.radioGroup1.SelectedIndex == 1)
        //    {
        //        this.txDateFrom.SetWorkMode(DateEditWorkMode.ByWeek);
        //    }
        //    else if (this.radioGroup1.SelectedIndex == 2)
        //    {
        //        this.txDateFrom.SetWorkMode(DateEditWorkMode.ByMonth);
        //    }



        //}

        //ReportDatePeroidTypes DateType = new ReportDatePeroidTypes();





    }
}
