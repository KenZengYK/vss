using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;
using PH.MobileQC.BO;
using System.Globalization;
using DevExpress.XtraEditors.Controls;

namespace PH.MobileQC.UI.UserControllibrary
{
    public partial class MultipleDateChoiceUserControl : UserControl
    {
        public MultipleDateChoiceUserControl()
        {
            InitializeComponent();

           
            radDateWorkMode_SelectedIndexChanged(null, null);
        }

        public void HideItem(DatePeroidTypes ADatePeroidType)
        {
            string Str = "";
            if (ADatePeroidType == DatePeroidTypes.Daily) Str = "Daily";
            else if (ADatePeroidType == DatePeroidTypes.Weekly) Str = "Weekly";
            else if (ADatePeroidType == DatePeroidTypes.Monthly) Str = "Monthly";
            else if (ADatePeroidType == DatePeroidTypes.PeroidRang) Str = "Period Range";

            RadioGroupItem obj = radDateWorkMode.Properties.Items.GetItemByValue(Str);
            radDateWorkMode.Properties.Items.Remove(obj);
        }

        private void radDateWorkMode_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.radDateWorkMode.SelectedIndex == -1) return;

            this.lbDateTo.Visible = radDateWorkMode.EditValue.ToString() == "Period Range";
            this.txtDateTo.Visible = this.lbDateTo.Visible;

            if (radDateWorkMode.EditValue.ToString() == "Daily") //Daily
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByDay);
                this.lbDate.Text = "Time :";
            }
            else if (radDateWorkMode.EditValue.ToString() == "Weekly") //Weekly
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByWeek);
                this.lbDate.Text = "Time :";
            }
            else if (radDateWorkMode.EditValue.ToString() == "Monthly") //Monthly
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByMonth);
                this.lbDate.Text = "Time :";
            }
            else if (radDateWorkMode.EditValue.ToString() == "Period Range")//Period Range
            {
                this.txtDateFrom.SetWorkMode(DateEditWorkMode.ByDay);
                this.lbDate.Text = "Time :";
            }
        }

        public DatePeroidTypes DatePeroidType
        {
            get
            {
                if (radDateWorkMode.EditValue.ToString() == "Daily")
                    return DatePeroidTypes.Daily;
                else if (radDateWorkMode.EditValue.ToString() == "Weekly")
                    return DatePeroidTypes.Weekly;
                else if (radDateWorkMode.EditValue.ToString() == "Monthly")
                    return DatePeroidTypes.Monthly;
                else
                    return DatePeroidTypes.PeroidRang;
            }
        }

        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public int Month { get; set; }
        public int Week { get; set; }

        public bool ProcessDate()
        {
            if (!CheckInputDate()) return false;
            if (this.radDateWorkMode.SelectedIndex == -1) return false;

            if (radDateWorkMode.EditValue.ToString() == "Daily") //Daily
            {
                this.ToDate = this.FromDate = this.txtDateTo.DateTime = this.txtDateFrom.DateTime;
            }
            else if (radDateWorkMode.EditValue.ToString() == "Weekly") //Weekly
            {
                DateTimeFormatInfo formatInfo = DateTimeFormatInfo.CurrentInfo;
                //this.Week = formatInfo.Calendar.GetWeekOfYear(txtDateFrom.DateTime, formatInfo.CalendarWeekRule, formatInfo.FirstDayOfWeek);

                this.Week = formatInfo.Calendar.GetWeekOfYear(txtDateFrom.DateTime, CalendarWeekRule.FirstDay, DayOfWeek.Monday);
                DateTime Date1 = DateTime.MinValue;
                DateTime Date2 = DateTime.MinValue;
                this.txtDateFrom.GetDate(DateEditWorkMode.ByWeek, out Date1, out Date2);
                this.FromDate = Date1;
                this.ToDate = Date2;
               
            }
            else if (radDateWorkMode.EditValue.ToString() == "Monthly") //Monthly
            {
                DateTime Date1 = DateTime.MinValue;
                DateTime Date2 = DateTime.MinValue;
                this.txtDateFrom.GetDate(DateEditWorkMode.ByMonth, out Date1, out Date2);

                this.FromDate = Date1;
                this.ToDate = Date2;
                this.Month = txtDateFrom.DateTime.Month;
            }
            else if (radDateWorkMode.EditValue.ToString() == "Period Range")//Period Range
            {
                this.FromDate = this.txtDateFrom.DateTime.Date;
                this.ToDate = this.txtDateTo.DateTime.Date;
            }

            return true;
        }

        bool CheckInputDate()
        {
            if (this.radDateWorkMode.EditValue.ToString() == "Daily") //Daily
            {
                if (this.txtDateFrom.EditValue == null)
                {
                    MessageBox.Show("Please chosen a date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
            }
            else if (this.radDateWorkMode.EditValue.ToString() == "Weekly") //Weekly
            {
                if (this.txtDateFrom.EditValue == null)
                {
                    MessageBox.Show("Please choice a week", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
            }
            else if (this.radDateWorkMode.EditValue.ToString() == "Monthly") //Monthly
            {
                if (this.txtDateFrom.EditValue == null)
                {
                    MessageBox.Show("Please choice a month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
            }
            else if (this.radDateWorkMode.EditValue.ToString() == "Period Range") //Period Range
            {
                if (this.txtDateFrom.EditValue == null)
                {
                    MessageBox.Show("Please choice start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
                if (this.txtDateTo.EditValue == null)
                {
                    MessageBox.Show("Please chosen due date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
                if (this.txtDateTo.DateTime < this.txtDateFrom.DateTime)
                {
                    MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
            }
            return true;
        }
    }

    /// <summary>
    /// 選擇日期的類型
    /// </summary>
    public enum DatePeroidTypes
    {
        Daily,
        Weekly,
        Monthly,
        PeroidRang
    }
}
