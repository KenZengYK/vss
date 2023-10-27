using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCQueryForm : Form
    {
        public CustQCQueryForm()
        {
            InitializeComponent();
            this.deFromDate.SetWorkMode(DateEditWorkMode.ByWeek);

            rgByWeekOrDay.SelectedIndex = 0;
            rgByWeekOrDay.Visible = true;
        }

        /// <summary>
        /// 報表計算匯總方式 
        /// </summary>
        public CustQCReportCalulateType CalulateType
        {
            get
            {
                //return this.rgByWeekOrDay.SelectedIndex == 0 ? CustQCReportCalulateType.ByWeek : CustQCReportCalulateType.ByDay;
                return CustQCReportCalulateType.ByWeek;
            }
        }

        /// <summary>
        /// 開始日期
        /// </summary>
        public DateTime StartDate { get; set; }

        /// <summary>
        /// 截止日期
        /// </summary>
        public DateTime DueDate { get; set; }

        /// <summary>
        /// Exam Week
        /// </summary>
        public int WeekOfYear { get; set; }

        /// <summary>
        /// QC Location
        /// </summary>
        public string QCLocation
        {
            get
            {
                return this.cbQCLocation.Text;
            }
        }

        public bool CheckInputData()
        {
            if (string.IsNullOrEmpty(this.cbQCLocation.Text))
            {
                MessageBox.Show("Please input QC.Loc.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.cbQCLocation.Focus();
                return false;
            }

            //this.StartDate = this.deFromDate.DateTime.Date;
            //this.DueDate = this.deToDate.DateTime.Date.AddDays(1);

            if (this.deFromDate.DateTime == null || this.deFromDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please chosen " + label1.Text.Replace(":", "") + "  date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deFromDate.Focus();
                return false;
            }

            if (CalulateType == CustQCReportCalulateType.ByDay)
            {
                if (deToDate.DateTime == null || deToDate.DateTime == DateTime.MinValue)
                {
                    MessageBox.Show("Please chosen due date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.deToDate.Focus();
                    return false;
                }

                if (this.deToDate.DateTime < this.deFromDate.DateTime)
                {
                    MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.deToDate.Focus();
                    return false;
                }
            }
            //else if (CalulateType == CustQCReportCalulateType.ByWeek)
            //{
            //    int Week = (int)deFromDate.DateTime.DayOfWeek; //获取当前日期为周几
            //    this.StartDate = this.deFromDate.DateTime.AddDays(1 - Week);     //本周一
            //    this.DueDate = this.deFromDate.DateTime.AddDays(1 - Week + 6);   //本周日，但取數時只取到周六的數據

            //    System.Globalization.GregorianCalendar gc = new System.Globalization.GregorianCalendar();
            //    this.WeekOfYear = gc.GetWeekOfYear(this.StartDate, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Monday);
            //}

            return true;
        }

        private void rgByWeekOrDay_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.deFromDate.Enabled = true;
            this.deToDate.Enabled = true;
            this.deToDate.Enabled = this.rgByWeekOrDay.SelectedIndex == 1;
            this.deToDate.Visible = this.label2.Visible = this.rgByWeekOrDay.SelectedIndex == 1;

            if (this.rgByWeekOrDay.SelectedIndex == 0)
            {
                this.deFromDate.SetWorkMode(DateEditWorkMode.ByWeek);
                this.label1.Text = "Week:";
            }
            else
            {
                this.deFromDate.SetWorkMode(DateEditWorkMode.ByDay);
                this.label1.Text = "Start Date:";
            }
        }
        DateTime Date1 = DateTime.MinValue;
        DateTime Date2 = DateTime.MinValue;

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.CheckInputData())
            {
                if (this.rgByWeekOrDay.SelectedIndex == 0)
                {
                    this.deFromDate.GetDate(DateEditWorkMode.ByWeek, out Date1, out Date2);

                    this.StartDate = Date1;
                    this.DueDate = Date2;
                    System.Globalization.GregorianCalendar gc = new System.Globalization.GregorianCalendar();
                    this.WeekOfYear = gc.GetWeekOfYear(this.StartDate, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Monday);

                }
                else
                {
                    this.StartDate = this.deFromDate.DateTime;
                    this.DueDate = this.deToDate.DateTime;
                }
                this.DialogResult = DialogResult.OK;
            }
            else
            {
                this.DialogResult = DialogResult.None;
            }
        }

    }

    /// <summary>
    /// 代客QC Report計算方式
    /// </summary>
    public enum CustQCReportCalulateType
    {
        /// <summary>
        /// 按周計算匯總
        /// </summary>
        ByWeek,
        /// <summary>
        /// 按日期段計算匯總
        /// </summary>
        ByDay
    }
}
