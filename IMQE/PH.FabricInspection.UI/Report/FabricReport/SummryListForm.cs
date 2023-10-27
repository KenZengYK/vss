using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class SummryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string _ReportType;
        string _ReportCaption;
        string _Whse;
        string _ReportShowDateFrom;
        string _ReportShowDateTo;
        public SummryListForm()
        {
            InitializeComponent();
        }

        public SummryListForm(string AReportCaption, string AReportType, int ACategory, DateTime AFromDate, DateTime AToDate,
            string AWarehouse, string AReportShowDateFrom, string AReportShowDateTo)
        {
            InitializeComponent();
            _ReportCaption = AReportCaption;
            _ReportType = AReportType;
            _Whse = AWarehouse;
            _ReportShowDateFrom = AReportShowDateFrom;
            _ReportShowDateTo = AReportShowDateTo;

            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();

            //colDate.Visible = AReportType == "Daily";
            //colYear.Visible = AReportType == "Monthly" || AReportType == "Weekly";
            //colMonth.Visible = AReportType == "Monthly";
            //colWeek.Visible = AReportType == "Weekly";

            colShowDate.Caption = "Date";
            if (AReportType == "Monthly") colShowDate.Caption = "Month";
            else if (AReportType == "Weekly") colShowDate.Caption = "Wk";

            string SqlStr = "";
            if (ACategory == 0) //Fabric
            {
                if (AReportType == "Daily")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByDaily_Fabric '{0}', '{1}'", AFromDate.ToString("yyMMdd"), AWarehouse);
                }
                else if (AReportType == "Monthly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByMonthly_Fabric '{0}', '{1}', '{2}'", AFromDate.ToString("yyMMdd"), AToDate.ToString("yyMMdd"), AWarehouse);
                }
                else if (AReportType == "Weekly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByWeekly_Fabric '{0}', '{1}', '{2}'", AFromDate.ToString("yyMMdd"), AToDate.ToString("yyMMdd"), AWarehouse);
                }
            }
            else if (ACategory == 1) //Band Lace
            {
                if (AReportType == "Daily")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByDaily_BandLace '{0}', '{1}'", AFromDate, AWarehouse);
                }
                else if (AReportType == "Monthly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByMonthly_BandLace '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
                else if (AReportType == "Weekly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByWeekly_BandLace '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
            }
            else if (ACategory == 2) //Elastic tape
            {
                if (AReportType == "Daily")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByDaily_Elastic '{0}', '{1}'", AFromDate, AWarehouse);
                }
                else if (AReportType == "Monthly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByMonthly_Elastic '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
                else if (AReportType == "Weekly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByWeekly_Elastic '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
            }
            else if (ACategory == 3) //Brap Cup
            {

                if (AReportType == "Daily")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByDaily_BraCup '{0}', '{1}'", AFromDate, AWarehouse);
                }
                else if (AReportType == "Monthly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByMonthly_BraCup '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
                else if (AReportType == "Weekly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByWeekly_BraCup '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
            }
            else if (ACategory == 4) //Accessory
            {
                if (AReportType == "Daily")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByDaily_Accessory 'Accessories', '{0}', '{1}'", AFromDate, AWarehouse);
                }
                else if (AReportType == "Monthly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByMonthly_Accessory 'Accessories', '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
                else if (AReportType == "Weekly")
                {
                    SqlStr = string.Format("exec sp_AuditSummaryReportByWeekly_Accessory 'Accessories', '{0}', '{1}', '{2}'", AFromDate, AToDate, AWarehouse);
                }
            }

            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).ExecuteDataTable(SqlStr, "Opts");
        }

        public override void DataBind()
        {
            base.DataBind();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
            barBtnSave.Visibility = BarItemVisibility.Never;
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        private void barBtnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            DataTable dt = this.BindingSource.DataSource as DataTable;
            SummaryListReport rptSummaryList = new SummaryListReport(dt, _ReportCaption, _ReportType, _Whse, _ReportShowDateFrom, _ReportShowDateTo);
            rptSummaryList.ShowPreview();

        }

        private void gridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            switch (e.Column.FieldName)
            {
                case "PartI_Percent":
                    if (gridView1.GetRowCellValue(e.RowHandle, "PartI_Percent") == null) return;
                    string PartI_Percent = gridView1.GetRowCellValue(e.RowHandle, "PartI_Percent").ToString();
                    if (string.IsNullOrEmpty(PartI_Percent)) return;
                    decimal APartI_Percent = Convert.ToDecimal(PartI_Percent);
                    if (APartI_Percent < 90)
                    {
                        // e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;               
            }
        }

    }
}
