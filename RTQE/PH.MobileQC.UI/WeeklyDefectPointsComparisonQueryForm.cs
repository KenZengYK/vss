using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Globalization;
using PH.Platform.ExtendLibrary;
using PH.MobileQC.UI.UserControllibrary;


namespace PH.MobileQC.UI
{
    public partial class WeeklyDefectPointsComparisonQueryForm : DevExpress.XtraEditors.XtraForm
    {
        object ParentObj;
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        public DateTime StartDt, EndDt;
        public int WeekOrDay;
        public WeeklyDefectPointsComparisonQueryForm(object parent)
        {
            InitializeComponent();
            ParentObj = parent;

            this.MaximizeBox = false;
            this.MinimizeBox = false;
            //獲取Factory選項
            //DataTable dt = db.GetFactoryType();
            //comFactory.Properties.Items.Clear();
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    comFactory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //}
            //comFactory.Properties.Items.Add("GX");
            //this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (checkText())
            {
                DatePeroidTypes DateType = ucDateChoice.DatePeroidType;

                if (!ucDateChoice.ProcessDate()) return;

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

                (ParentObj as WeeklyDefectPointsComparisonListForm).ReportSource = MobileQCDataContext.WeeklySource(FromDate, ToDate, this.comFactory.Text);
                string WeeklyStr = DateType == DatePeroidTypes.Weekly ? "" : " (Week " + (WeekOrDay == 53 ? 1 : WeekOrDay) + ")";
                (ParentObj as WeeklyDefectPointsComparisonListForm).DateReport = "Date : " + FromDate.ToString("yyyy-MM-dd") + " ~ " + ToDate.ToString("yyyy-MM-dd") + WeeklyStr;
                (ParentObj as WeeklyDefectPointsComparisonListForm).AFromDate = FromDate;
                (ParentObj as WeeklyDefectPointsComparisonListForm).AToDate = ToDate;
                (ParentObj as WeeklyDefectPointsComparisonListForm).AWeeklyOrMonthly = DateType == DatePeroidTypes.Weekly ? (WeeklyOrMonthly == "53" ?"1":WeeklyOrMonthly ) :  WeeklyOrMonthly;
                (ParentObj as WeeklyDefectPointsComparisonListForm).AReportDatePeroidType = DateType;

                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }

        //计算第几周
        public int WeekOfYear(DateTime dt)
        {
            GregorianCalendar gc = new GregorianCalendar();
            int weekOfYear = gc.GetWeekOfYear(dt, CalendarWeekRule.FirstDay, DayOfWeek.Monday);
            return weekOfYear;
            //ci.Calendar.GetWeekOfYear(dt, ci.DateTimeFormat.CalendarWeekRule, ci.DateTimeFormat.FirstDayOfWeek);
        }



        bool checkText()
        {
            if (string.IsNullOrEmpty(this.comFactory.Text))
            {
                MessageBox.Show("Please select the factory!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            //if (radioByWeekOrDay.SelectedIndex == 0)
            //{
            //    if ( this.dateEdit1.EditValue ==null || string.IsNullOrEmpty(this.dateEdit1.EditValue.ToString()))
            //    {
            //        MessageBox.Show("Please select the start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //        return false;
            //    }
            //    else
            //    {
            //        //int Week = (int)dateEdit1.DateTime.DayOfWeek; //获取当前日期为周几
            //        //this.StartDt = this.dateEdit1.DateTime.AddDays(1 - Week);     //本周一
            //        //this.EndDt = this.dateEdit1.DateTime.AddDays(1 - Week + 6);   //本周日，但取數時只取到周六的數據

            //        DateTime Date1 = DateTime.MinValue;
            //        DateTime Date2 = DateTime.MinValue;

            //        this.dateEdit1.GetDate(DateEditWorkMode.ByWeek, out Date1, out Date2);
            //        this.StartDt = Date1;
            //        this.EndDt = Date2;

            //        System.Globalization.GregorianCalendar gc = new System.Globalization.GregorianCalendar();
            //        this.WeekOrDay = gc.GetWeekOfYear(this.StartDt, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Monday);
            //        return true;
            //    }

            //}

            //if (radioByWeekOrDay.SelectedIndex == 1)
            //{
            //    if (dateEdit1.EditValue == null || dateEdit2.EditValue == null)
            //    {
            //        MessageBox.Show("Please select the start date and  the due date!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //        return false;
            //    }
            //    else if (dateEdit1.DateTime > dateEdit2.DateTime)
            //    {
            //        MessageBox.Show("The due date must be greater than start date!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //        return false;
            //    }
            //    else
            //    {
            //        this.StartDt = this.dateEdit1.DateTime;
            //        this.EndDt = this.dateEdit2.DateTime;
            //        return true;
            //    }
            //}
            else { return true; }



        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        //private void radioByWeekOrDay_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    this.dateEdit2.Enabled = radioByWeekOrDay.SelectedIndex == 1 ? true : false;
        //    this.dateEdit2.EditValue = this.dateEdit1.EditValue = "";

        //    if (this.radioByWeekOrDay.SelectedIndex == 0)
        //    {
        //        this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
        //    }
        //    else if (this.radioByWeekOrDay.SelectedIndex == 1)
        //    {
        //        //this.SetDateEditShowMode(DateEditWorkMode.ByMonth);


        //        dateEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
        //        dateEdit1.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
        //        dateEdit1.Properties.EditMask = "yyyy-MM-dd";
        //        dateEdit1.Properties.ShowWeekNumbers = false;
        //        //dateEdit2.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
        //        //dateEdit2.Properties.VistaEditTime = DevExpress.Utils.DefaultBoolean.False;
        //        //dateEdit1.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
        //    }

        //}


        //public void SetDateEditShowMode(DateEditWorkMode ADateEditWorkMode)
        //{
        //    this.dateEdit1.SetWorkMode(ADateEditWorkMode);
        //}

    }
}