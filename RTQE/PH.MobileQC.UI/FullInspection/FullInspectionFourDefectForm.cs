using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.ExtendLibrary;
using System.Linq;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FullInspectionFourDefectForm : PH.Platform.UI.CS.UI0.BlankForm
    {

        DateTime Date1 = DateTime.MinValue;
        DateTime Date2 = DateTime.MinValue;
        DateTime Date3 = DateTime.MinValue;
        DateTime Date4 = DateTime.MinValue;
        List<DateTime> DataTimeList = new List<DateTime>();
        DateTime StartDate = DateTime.MinValue;
        DateTime DueDate = DateTime.MinValue;

        public FullInspectionFourDefectForm()
        {
            InitializeComponent();

            this.SetDateEditShowMode(DateEditWorkMode.ByWeek);

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (this.CheckInputData())
            {
                DateTime StartDate = DataTimeList.Min();
                DateTime DueDate = DataTimeList.Max();

                string DateType = rgByWeekOrMonth.SelectedIndex == 0 ? "Weekly" : (rgByWeekOrMonth.SelectedIndex == 1 ? "Monthly" : "Daily");
                
                FullInspectionFourDefectReport Rpt = new FullInspectionFourDefectReport(StartDate.ToString("yyyy-MM-dd"), DueDate.ToString("yyyy-MM-dd"), DateType, cbCustomer.Text);
                Rpt.ShowPreview();


            }
        

        }

        private void rgByWeekOrMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.rgByWeekOrMonth.SelectedIndex == 0)
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
                GetDataTime();
            }
            else if (this.rgByWeekOrMonth.SelectedIndex == 1)
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByMonth);
                GetDataTime();
            }
            else 
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByDay);
                GetDataTime();
            }
        }

        public void SetDateEditShowMode(DateEditWorkMode ADateEditWorkMode)
        {
            this.deStartDate.SetWorkMode(ADateEditWorkMode);
            this.deDueDate.SetWorkMode(ADateEditWorkMode);
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

            if (Date1 > Date3)
            {
                MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deDueDate.Focus();
                return false;
            }
            else
            {
                if (deDueDate.DateTime.Year == deStartDate.DateTime.Year)
                {
                    if (this.rgByWeekOrMonth.SelectedIndex == 1)
                    {
                        if (this.deDueDate.DateTime.Month < this.deStartDate.DateTime.Month)
                        {
                            MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            this.deDueDate.Focus();
                            return false;
                        }
                    }

                    if (this.rgByWeekOrMonth.SelectedIndex == 0)
                    {
                        if ((deDueDate.EditValue != null && !string.IsNullOrEmpty(deDueDate.EditValue.ToString())) || (deStartDate.EditValue != null && !string.IsNullOrEmpty(deStartDate.EditValue.ToString())))
                        {
                            if (DayfWeek(deDueDate.DateTime) < DayfWeek(deStartDate.DateTime))
                            {
                                MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                                this.deDueDate.Focus();
                                return false;
                            }
                        }
                    }
                }
            }

            return true;

        }

        public int DayfWeek(DateTime StartDt)
        {
            System.Globalization.GregorianCalendar gc = new System.Globalization.GregorianCalendar();
            return gc.GetWeekOfYear(StartDt, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Monday);
        }

        public void GetDataTime()
        {
            if (this.rgByWeekOrMonth.SelectedIndex == 0)
            {
                DataTimeList.Clear();

                this.deStartDate.GetDate(DateEditWorkMode.ByWeek, out Date1, out Date2);
                this.deDueDate.GetDate(DateEditWorkMode.ByWeek, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);
                DataTimeList.Add(Date3);
                DataTimeList.Add(Date4);
            }
            else if (this.rgByWeekOrMonth.SelectedIndex == 1)
            {
                DataTimeList.Clear();

                this.deStartDate.GetDate(DateEditWorkMode.ByMonth, out Date1, out Date2);
                this.deDueDate.GetDate(DateEditWorkMode.ByMonth, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);
                DataTimeList.Add(Date3);
                DataTimeList.Add(Date4);
            }
            else 
            {
                DataTimeList.Clear();

                this.deStartDate.GetDate(DateEditWorkMode.ByDay, out Date1, out Date2);
                this.deDueDate.GetDate(DateEditWorkMode.ByDay, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);
                DataTimeList.Add(Date3);
                DataTimeList.Add(Date4);
            }
        }

        private void deStartDate_EditValueChanged(object sender, EventArgs e)
        {
            GetDataTime();
        }

        private void deDueDate_EditValueChanged(object sender, EventArgs e)
        {
            GetDataTime();
        }



    }
}