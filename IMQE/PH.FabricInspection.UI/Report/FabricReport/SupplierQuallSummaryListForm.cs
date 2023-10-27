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
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class SupplierQuallSummaryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string _ReportCaption;
        string _ReportType;
        DateTime _DateFrom;
        DateTime _DateTo;
        string _Warehouse;
        int _Category;
        bool _ConvertedFabric;

        public SupplierQuallSummaryListForm()
        {
            InitializeComponent();
        }

        public SupplierQuallSummaryListForm(string AReportCaption, string AReportType, int ACategory, bool AConvertedFabric, DateTime ADateFrom, DateTime ADateTo, string AWarehouse)
        {
            InitializeComponent();
            _ReportCaption = AReportCaption;
            _ReportType = AReportType;
            _DateFrom = ADateFrom;
            _DateTo = ADateTo;
            _Warehouse = AWarehouse;
            _Category = ACategory;
            _ConvertedFabric = AConvertedFabric;
        }

        public override void DataBind()
        {
            base.DataBind();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
            barBtnSave.Visibility = BarItemVisibility.Never;

            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            string SqlStr = "";
            if (_ReportType == "BySupp")
            {
                if (_Category == 0) //Fabric
                {
                    //exec sp_FabircSupplierQualSummaryReport改为：exec sp_SuppQualSummaryReport_Fabric

                    SqlStr = string.Format("exec sp_SuppQualSummaryReport_Fabric '{0}', '{1}', '{2}', {3}",
                        _DateFrom.ToString("yyMMdd"), _DateTo.ToString("yyMMdd"), _Warehouse, _ConvertedFabric);
                }
                else if (_Category == 1) //Band Lace
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReport_BandLace '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }
                else if (_Category == 2) // Elastic Tape
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReport_Elastic '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);

                }
                else if (_Category == 3) //Bra Cup
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReport_BraCup '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }
                else if (_Category == 4) //Accessory
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReport_Accessory 'Accessories', '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }

                colShowDate.Visible = false;
                //this.colYear.Visible = false;
                //this.colMonth.Visible = false;
            }
            else if (_ReportType == "ByMonthly")
            {
                //SqlStr = string.Format("exec sp_FabircSupplierQualSummaryReportByMonthly '{0}', '{1}', '{2}', {3}, {4}", _DateFrom, _DateTo, _Warehouse, _Category, _ConvertedFabric);

                if (_Category == 0) //Fabric
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReportByMonthly_Fabric '{0}', '{1}', '{2}', {3}",
                        _DateFrom.ToString("yyMMdd"), _DateTo.ToString("yyMMdd"), _Warehouse, _ConvertedFabric);
                }
                else if (_Category == 1) //Band Lace
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReportByMonthly_BandLace '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }
                else if (_Category == 2) // Elastic Tape
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReportByMonthly_Elastic '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }
                else if (_Category == 3) //Bra Cup
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReportByMonthly_BraCup '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }
                else if (_Category == 4) //Accessory
                {
                    SqlStr = string.Format("exec sp_SuppQualSummaryReportByMonthly_Accessory 'Accessories', '{0}', '{1}', '{2}'", _DateFrom, _DateTo, _Warehouse);
                }

                colShowDate.Visible = true;
                //this.colYear.Visible = true;
                //this.colMonth.Visible = true;
            }
            this.BindingSource.DataSource = (DataContext as FabricInspectionDataContext).ExecuteDataTable(SqlStr, "Opts");
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        private void barBtnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            DataTable dt = this.BindingSource.DataSource as DataTable;
            if (_ReportType == "BySupp")
            {
                SupplierQualPerfReportBySupplier rptSupplierQualPerfBySupplier = new SupplierQualPerfReportBySupplier(dt, _ReportCaption + " (by Supplier)", _DateFrom, _DateTo, _Warehouse);
                rptSupplierQualPerfBySupplier.ShowPreview();
            }
            else if (_ReportType == "ByMonthly")
            {
                
                SupplierQualPerfReport rtpSupplierQualPerf = new SupplierQualPerfReport(dt, _ReportCaption + " (by Monthly)", _DateFrom, _DateTo, _Warehouse);
                rtpSupplierQualPerf.ShowPreview();
            }

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

                case "PartII_Percent":
                    if (gridView1.GetRowCellValue(e.RowHandle, "PartII_Percent") == null) return;
                    string PartII_Percent = gridView1.GetRowCellValue(e.RowHandle, "PartII_Percent").ToString();
                    if (string.IsNullOrEmpty(PartII_Percent)) return;
                    decimal APartII_Percent = Convert.ToDecimal(PartII_Percent);
                    if (APartII_Percent < 90)
                    {
                        // e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "PartIII_Percent":
                    if (gridView1.GetRowCellValue(e.RowHandle, "PartIII_Percent") == null) return;
                    string PartIII_Percent = gridView1.GetRowCellValue(e.RowHandle, "PartIII_Percent").ToString();
                    if (string.IsNullOrEmpty(PartIII_Percent)) return;
                    decimal APartIII_Percent = Convert.ToDecimal(PartIII_Percent);
                    if (APartIII_Percent < 90)
                    {
                        // e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;
            }
        }
    }
}
