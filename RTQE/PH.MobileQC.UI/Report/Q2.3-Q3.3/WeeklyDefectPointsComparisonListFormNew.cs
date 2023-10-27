using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Globalization;
using PH.MobileQC.UI.RPT;
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class WeeklyDefectPointsComparisonListFormNew : PH.Platform.UI.CS.UI2.ListForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        DateTime startDate, lastDate;
        public DataSet ReportSource;
        public List<WeeklyDefectPointsComparison> ListSource;
        public string DateReport;
        public WeeklyDefectPointsComparisonListFormNew()
        {
            InitializeComponent();
            //WeeklySource();
            if (this.DataContext == null)
            {
                this.DataContext = db;
            }
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            this.objListGridView.BestFitColumns();
            //   DevExpress.repositoryItemRichTextEdit1.DocumentFormat.Html; 
            //repositoryItemRichTextEdit1.DocumentFormat.Html;
            //string a = startDate.ToString();
            //for (int a = 0; a <WeekOfYear(DateTime.Now); a++)
            //{
            //    CalcWeekDay(DateTime.Now.Year, a+1, out startDate, out lastDate);
            //    string WeeklyItems = string.Format("{0} 周{1} ~ {2}", a + 1, startDate.ToString("yyyy-MM-dd"), lastDate.ToString("MM-dd"));
            //    this.repositoryItemComboBox2.Items.Add(WeeklyItems);
            //}


            //DataTable dt = db.GetFactoryType();
            //repositoryItemComboBox5.Properties.Items.Clear();
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    repositoryItemComboBox5.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //}



        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }



        private void barQuery_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            WeeklyDefectPointsComparisonQueryFormNew frm = new WeeklyDefectPointsComparisonQueryFormNew(this);
            frm.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = frm.ShowDialog();
            if (dlg == DialogResult.OK)
            {
                //(this.DataContext as MobileQCDataContext).ByPiece_RCItems.AttachAll(ImportList);
                this.BindingSource.DataSource = null;
                ListSource = db.DetailSource(ReportSource);
                this.BindingSource.DataSource = ListSource;
                objListGridControl.DataSource = this.BindingSource;
                objListGridControl.Refresh();
                //this.bandedGridView1.BestFitColumns();

                // objListGridControl.RefreshDataSource();
                //this.DataSource = ImportList;
            }

            //if (this.BarSelectWeekly.EditValue!=null)
            //{
            //    int a = Convert.ToInt32(this.BarSelectWeekly.EditValue.ToString().Substring(0, 2));
            //    CalcWeekDay(DateTime.Now.Year, a, out startDate, out lastDate);
            //    WeeklySource(startDate, lastDate);
            //}
            //else { return; }
        }

        //计算第几周
        public int WeekOfYear(DateTime dt)
        {
            GregorianCalendar gc = new GregorianCalendar();
            int weekOfYear = gc.GetWeekOfYear(dt, CalendarWeekRule.FirstDay, DayOfWeek.Monday);
            return weekOfYear;
            //ci.Calendar.GetWeekOfYear(dt, ci.DateTimeFormat.CalendarWeekRule, ci.DateTimeFormat.FirstDayOfWeek);
        }

        ////计算周的起始日期范围
        //public static bool CalcWeekDay(int year, int week, out DateTime first, out DateTime last)
        //{
        //    first = DateTime.MinValue;
        //    last = DateTime.MinValue;
        //    //年份超限
        //    if (year < 1700 || year > 9999) return false;
        //    //周数错误
        //    if (week < 1 || week > 53) return false;
        //    //指定年范围
        //    DateTime start = new DateTime(year, 1, 1);
        //    DateTime end = new DateTime(year, 12, 31);
        //    int startWeekDay = (int)start.DayOfWeek;

        //    if (week == 1)
        //    {
        //        first = start;
        //        last = start.AddDays(6 - startWeekDay);
        //    }
        //    else
        //    {
        //        //周的起始日期
        //        first = start.AddDays((7 - startWeekDay) + (week - 2) * 7);
        //        last = first.AddDays(6);
        //        if (last > end)
        //        {
        //            last = end;
        //        }
        //    }
        //    return (first <= end);
        //}

        
        public   DateTime AFromDate = DateTime.MinValue;
        public   DateTime AToDate     = DateTime.MinValue;
        public   string AWeeklyOrMonthly = "";
        public DatePeroidTypes AReportDatePeroidType;

        private void barPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.ReportSource == null ? false : (this.ListSource.Count > 0))
            {
                WeeklyDefectPointsComparsionReportNew WDPCReport = new WeeklyDefectPointsComparsionReportNew(ReportSource, AReportDatePeroidType, AWeeklyOrMonthly, AFromDate, AToDate);
                //WDPCReport.CreateDocument();

                //DefectPoint18SymbolsReport rpt18Symbols = new DefectPoint18SymbolsReport();
                //rpt18Symbols.CreateDocument();
                //WDPCReport.PrintingSystem.Pages.AddRange(rpt18Symbols.Pages);

                WDPCReport.ShowPreview();
            }
        }

    }

}
