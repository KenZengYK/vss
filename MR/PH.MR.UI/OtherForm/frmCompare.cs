using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Columns;
using PH.Common.Report;
using PH.MR.BO;

namespace PH.MR.UI
{
    public partial class frmCompare : DevExpress.XtraEditors.XtraForm
    {
        public frmCompare(MRHelper mrHelper)
        {
            InitializeComponent();
            this._mrHelper = mrHelper;

            InitValues();
        }

        private MRHelper _mrHelper;
        private int _visibleIndex;

        private List<CompareMRPOCAC> _compareList;

        private void InitValues()
        {
            this.btnExport.Properties.Items.Clear();
            this.btnExport.Properties.Items.AddRange(PH.Common.Report.PHReport.ExportStrings);
            this.btnExport.SelectedIndex = 0;

            string str = this._mrHelper.CompareOption == PHCompareOption.MR ? "YY" : this._mrHelper.CompareOption.ToString();
            this.Text = string.Format("Compare {0} for {1}", str, this._mrHelper.Project);

            this._compareList = TableORM.GetObjects<CompareMRPOCAC>(this._mrHelper.WorkDataTable, true);
            this.gridControl1.DataSource = this._compareList;
 
            int v1 = this._mrHelper.Versions[0].VERSION;
            int v2 = this._mrHelper.Versions[1].VERSION;

            string reportName = string.Format("{0} ({1}-{2})", this.Text, THNumber(v1), THNumber(v2));
            //PH.MR.UI.Grid.ExportFileName = reportName;
            //PH.MR.UI.Grid.ReportTitle = reportName;

            //PH.MR.UI.Grid.PageKind = System.Drawing.Printing.PaperKind.A4;
            //PH.MR.UI.Grid.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);

            InitColumns(); 
        }
        private void InitColumns()
        {
            int v1 = this._mrHelper.Versions[0].DEPTVERSION;
            int v2 = this._mrHelper.Versions[1].DEPTVERSION;
            string vs1 = string.Format("{0} {1}", this._mrHelper.Versions[0].DEPT, THNumber(v1));
            string vs2 = string.Format("{0} {1}", this._mrHelper.Versions[1].DEPT, THNumber(v2));
            this.gridBand_frist.Caption = vs1;
            this.gridBand_second.Caption = vs2;

            //GridColumn col;
            switch (this._mrHelper.CompareOption)
            {
                case PHCompareOption.None:
                    break;
                case PHCompareOption.MR:
                    //SetColumnVisible("CORQ1");
                    //SetColumnVisible("CORQ2");
                    SetColumnVisible("ResPO1");
                    SetColumnVisible("ResPO2");
                    SetColumnVisible("OpenPO1");
                    SetColumnVisible("OpenPO2");
                    SetColumnVisible("IssueQty_IDO1");
                    SetColumnVisible("IssueQty_IDO2");
                    SetColumnVisible("IssueQty_UPI1");
                    SetColumnVisible("IssueQty_UPI2");
                    SetColumnVisible("ReturnMatQty1");
                    SetColumnVisible("ReturnMatQty2");
                    //SetColumnVisible("MR_DIFF");
                    SetColumnVisible("PO_DIFF");
                    SetColumnVisible("MU_DIFF");
                    //SetColumnVisible("UOM");
                    SetColumnVisible("POMU");
                    //SetColumnVisible("NOTEPAD");                    
                    break;
                case PHCompareOption.MU:
                    //SetColumnVisible("CORQ1");
                    //SetColumnVisible("CORQ2");
                    SetColumnVisible("ResPO1");
                    SetColumnVisible("ResPO2");
                    SetColumnVisible("OpenPO1");
                    SetColumnVisible("OpenPO2");
                    //SetColumnVisible("IssueQty_IDO1");
                    //SetColumnVisible("IssueQty_IDO2");
                    //SetColumnVisible("IssueQty_UPI1");
                    //SetColumnVisible("IssueQty_UPI2");
                    //SetColumnVisible("ReturnMatQty1");
                    //SetColumnVisible("ReturnMatQty2");
                    SetColumnVisible("MR_DIFF");
                    SetColumnVisible("PO_DIFF");
                    //SetColumnVisible("MU_DIFF");
                    //SetColumnVisible("UOM");
                    SetColumnVisible("POMU");
                    //SetColumnVisible("NOTEPAD");                    
                    break;
                case PHCompareOption.PO:
                    //SetColumnVisible("CORQ1");
                    //SetColumnVisible("CORQ2");
                    //SetColumnVisible("ResPO1");
                    //SetColumnVisible("ResPO2");
                    //SetColumnVisible("OpenPO1");
                    //SetColumnVisible("OpenPO2");
                    SetColumnVisible("IssueQty_IDO1");
                    SetColumnVisible("IssueQty_IDO2");
                    SetColumnVisible("IssueQty_UPI1");
                    SetColumnVisible("IssueQty_UPI2");
                    SetColumnVisible("ReturnMatQty1");
                    SetColumnVisible("ReturnMatQty2");
                    SetColumnVisible("MR_DIFF");
                    //SetColumnVisible("PO_DIFF");
                    SetColumnVisible("MU_DIFF");
                    //SetColumnVisible("UOM");
                    //SetColumnVisible("POMU");
                    //SetColumnVisible("NOTEPAD");                    
                    break;
                default:
                    break;
            }

        }
        private GridColumn SetColumnVisible(string fieldName)
        {
            return SetColumnVisible(fieldName, false);
        }
        private GridColumn SetColumnVisible(string fieldName, bool visible)
        {
            GridColumn col = Commons.GetGridColumnByFieldName(fieldName, this.gridView1);//z..r PH.MR.UI.Grid.GetGridColumnByFieldName(fieldName, this.gridView1);
            if (col == null) return col;
            col.Visible = visible;
            return col;
        }

        private void InitColumns1()
        {
            foreach (GridColumn gcol in this.gridView1.Columns)
            {
                gcol.Visible = false;
                if (gcol.FieldName != "NOTEPAD")
                    gcol.OptionsColumn.AllowEdit = false;
            }
            _visibleIndex = 0;

            //int v1 = this._mrHelper.Versions[0].VERSION;
            //int v2 = this._mrHelper.Versions[1].VERSION;
            int v1 = this._mrHelper.Versions[0].DEPTVERSION;
            int v2 = this._mrHelper.Versions[1].DEPTVERSION;
            string vs1 = string.Format("{0} {1}", this._mrHelper.Versions[0].DEPT, THNumber(v1));
            string vs2 = string.Format("{0} {1}", this._mrHelper.Versions[1].DEPT, THNumber(v2));
            GridColumn col;

            col = SetupColumn("MATD", "MATD", 120, 0);
            col = SetupColumn("CSTL", "Mat. Code", 120, 1);
            //col.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);

            switch (this._mrHelper.CompareOption)
            {
                case PHCompareOption.None:
                    break;
                case PHCompareOption.MR:
                    //PH.MR.UI.Grid.Landscape = true;

                    col = SetupColumn("PCOL", "Color", 85, -1);
                    col = SetupColumn("STYLE", "Style", 90, -1);
                    col = SetupColumn("PSIZ", "Size", 55, -1);
                    SetupColumn("CORQ1", string.Format("{0}\r\nMR", vs1), 100, -1);
                    SetupColumn("CORQ2", string.Format("{0}\r\nMR", vs2), 100, -1);
                    SetupColumn("MR_DIFF", "MR Diff", 100, -1);

                    col = SetupColumn("UOM", "Uom", 45, -1);
                    col.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

                    //col = SetupColumn("NOTEPAD", "Notepad", 480, -1);
                    //col.ColumnEdit = repositoryItemMemoExEdit1;
                    //PH.MR.UI.Grid.SetGridColumnMemoEdit(col).LinesCount = 0;

                    break;
                case PHCompareOption.MU:
                    //PH.MR.UI.Grid.Landscape = true;

                    col = SetupColumn("PCOL", "Color", 85, -1);
                    col = SetupColumn("STYLE", "Style", 90, -1);
                    col = SetupColumn("PSIZ", "Size", 55, -1);

                    SetupColumn("CORQ1", string.Format("{0}\r\nMR", vs1), 100, -1);
                    SetupColumn("CORQ2", string.Format("{0}\r\nMR", vs2), 100, -1);

                    SetupColumn("IssueQty_IDO1", string.Format("{0}\r\nIDO", vs1), 100, -1);
                    SetupColumn("IssueQty_IDO2", string.Format("{0}\r\nIDO", vs2), 100, -1);

                    SetupColumn("IssueQty_UPI1", string.Format("{0}\r\nUPI", vs1), 100, -1);
                    SetupColumn("IssueQty_UPI2", string.Format("{0}\r\nUPI", vs2), 100, -1);

                    SetupColumn("ReturnMatQty1", string.Format("{0}\r\nReturn", vs1), 100, -1);
                    SetupColumn("ReturnMatQty2", string.Format("{0}\r\nReturn", vs2), 100, -1);

                    SetupColumn("MU_DIFF", "MU Diff", 100, -1);

                    col = SetupColumn("UOM", "Uom", 45, -1);
                    col.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

                    break;
                //case PHCompareOption.MU:
                //    this.gridView1.OptionsView.ShowFooter = true;
                //    PH.MR.UI.Grid.Landscape = true;

                //    col = SetupColumn("STYLE", "Style", 110, -1);
                //    col.SummaryItem.FieldName = "STYLE";
                //    col.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
                //    col.SummaryItem.DisplayFormat = "Total(HKD/PC):";

                //    col = SetupColumn("PCOL", "Color", 50, -1);
                //    col = SetupColumn("PSIZ", "Size", 45, -1);
                //    SetupColumn("MarkerWidth", "Width", 55, -1);
                //    SetupColumn("QPER1", string.Format("{0}\r\nCAC", vs1), 85, -1);
                //    SetupColumn("QPER2", string.Format("{0}\r\nCAC", vs2), 85, -1);
                //    SetupColumn("CAC_DIFF", "CAC Diff", 70, -1);

                //    col = SetupColumn("UOM", "Uom", 45, -1);
                //    col.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

                //    col = SetupColumn("PERCENTAGE", "Percent\n\rage", 60, -1);
                //    col.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
                //    col.DisplayFormat.FormatString = "p";

                //    SetupColumn("UPRC2", "All in Cost\r\n(HKD)", 75, -1);
                //    col = SetupColumn("AMENTHDIFF", "Amenth Diff", 140, -1);
                //    col.Visible = false;

                //    col = SetupColumn("AMENTHDIFF_STR", "Amenth Diff", 90, -1);
                //    //col.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                //    PH.MR.UI.Grid.SetGridColumnMemoEdit(col).LinesCount = 0;
                //    col.SummaryItem.FieldName = "AMENTHDIFF";
                //    col.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
                //    col.SummaryItem.DisplayFormat = "{0:#,0.00}";

                //    //col = SetupColumn("NOTEPAD", "Notepad", 330, -1);
                //    //col.ColumnEdit = repositoryItemMemoExEdit1;
                //    //PH.MR.UI.Grid.SetGridColumnMemoEdit(col).LinesCount = 0;

                //    //col = SetupColumn("ATTACHMENT", "Attachment", 100, -1);
                //    break;
                case PHCompareOption.PO:
                    //PH.MR.UI.Grid.Landscape = true;

                    col = SetupColumn("PCOL", "Color", 80, -1);
                    col = SetupColumn("STYLE", "Style", 80, -1);
                    col = SetupColumn("PSIZ", "Size", 45, -1);
                    SetupColumn("CORQ1", string.Format("{0}\r\nMR", vs1), 70, -1);
                    SetupColumn("CORQ2", string.Format("{0}\r\nMR", vs2), 70, -1);

                    SetupColumn("PHYSICALSTOCK", "Physical\r\nStock", 70, -1);
                    SetupColumn("ResPO1", string.Format("{0}\r\nRes.PO", vs1), 70, -1);
                    SetupColumn("ResPO2", string.Format("{0}\r\nRes.PO", vs2), 70, -1);
                    SetupColumn("PO_DIFF", "ResPO\r\nDiff", 70, -1);
                    SetupColumn("OpenPO1", string.Format("{0}\r\nOpenPO", vs1), 70, -1);
                    SetupColumn("OpenPO2", string.Format("{0}\r\nOpenPO", vs2), 70, -1);

                    col = SetupColumn("UOM", "Uom", 45, -1);
                    col.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

                    col = SetupColumn("POMU", "PO MU", 70, -1);
                    col.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
                    col.DisplayFormat.FormatString = "p";

                    //col = SetupColumn("NOTEPAD", "Notepad", 390, -1);
                    //col.ColumnEdit = repositoryItemMemoExEdit1;
                    //PH.MR.UI.Grid.SetGridColumnMemoEdit(col).LinesCount = 0;

                    break;
                default:
                    break;
            }
            col = SetupColumn("NOTEPAD", "Notepad", 85, -1);
            col.ColumnEdit = repositoryItemMemoExEdit1;
        }
        private void InitColumns(DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            if (this._mrHelper.CompareOption != PHCompareOption.MU) return;

            foreach (GridColumn gcol in view.Columns)
            {
                gcol.Visible = false;
            }
            _visibleIndex = 0;

            GridColumn col;

            col = SetupColumn("Attachment", "", 120, 0, view, 0);
 

            col = SetupColumn("NOTEPAD", "Attachment", 1000, -1, view, 1);
             
            DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit rime = Commons.SetGridColumnMemoEdit(col);
            rime.LinesCount = 0;
            rime.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
           
        }
        private GridColumn SetupColumn(string fieldName, string caption, int width, int groupIndex)
        {
            GridColumn col = Commons.GetGridColumnByFieldName(fieldName, this.gridView1);//z..r PH.MR.UI.Grid.GetGridColumnByFieldName(fieldName, this.gridView1);
            if (col == null) return col;

            col.GroupIndex = groupIndex;
            col.Caption = caption;
            col.Width = width;
            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            col.Visible = true;
            col.VisibleIndex = _visibleIndex;
            col.OptionsColumn.ReadOnly = true;
            _visibleIndex++;

            return col;
        }
        private GridColumn SetupColumn(string fieldName, string caption, int width, int groupIndex, int visibleIndex)
        {
            GridColumn col =  Commons.GetGridColumnByFieldName(fieldName, this.gridView1);//z..r PH.MR.UI.Grid.GetGridColumnByFieldName(fieldName, this.gridView1);
            if (col == null) return col;

            col.GroupIndex = groupIndex;
            col.Caption = caption;
            col.Width = width;
            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            col.Visible = true;
            col.VisibleIndex = visibleIndex;
            col.OptionsColumn.ReadOnly = true;

            return col;
        }
        private GridColumn SetupColumn(string fieldName, string caption, int width, int groupIndex, DevExpress.XtraGrid.Views.Grid.GridView view, int visibleIndex)
        {
            GridColumn col = Commons.GetGridColumnByFieldName(fieldName, this.gridView1); ;//z..r PH.MR.UI.Grid.GetGridColumnByFieldName(fieldName, view);
            if (col == null) return col;

            col.GroupIndex = groupIndex;
            col.Caption = caption;
            col.Width = width;
            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            col.Visible = true;
            col.VisibleIndex = visibleIndex;
            col.OptionsColumn.ReadOnly = true;

            return col;
        }
        private string THNumber(int n)
        {
            switch (n)
            {
                case -1: return "Curr";
                case 1: return "1st";
                case 2: return "2nd";
                case 3: return "3rd";
                default:
                    return string.Format("{0}th", n);
            }
        }

        #region Print and Export

        private void btnInExport_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.Button == cbe.Properties.Buttons[0])
                DoExport(cbe.SelectedIndex);
        }
        private void btnInExport_SelectedIndexChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (cbe.SelectedItem != null)
                cbe.Properties.Buttons[0].Caption = cbe.SelectedItem.ToString();
        }
        private void btnInExport_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.CloseMode != DevExpress.XtraEditors.PopupCloseMode.Normal) return;
            int index = cbe.Properties.Items.IndexOf(e.Value);
            if (index != -1)
                DoExport(index);
        }
        private void DoExport(int index)
        {
            PrintPreviewAndExportFile(true, index);
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            PrintPreviewAndExportFile(false, -1);
        }
        private void PrintPreviewAndExportFile(bool isExport, int index)
        {
            GridColumn col;
            DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit rime;
            switch (this._mrHelper.CompareOption)
            {
                case PHCompareOption.MR:
                    col = SetupColumn("NOTEPAD", "Notepad", 480, -1);
                    rime =Commons.SetGridColumnMemoEdit(col); 
                    rime.LinesCount = 0;
                    rime.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
                    break;
                case PHCompareOption.MU:
                    goto case PHCompareOption.PO;
                case PHCompareOption.PO:
                    col = SetupColumn("NOTEPAD", "Notepad", 390, -1);
                    rime = Commons.SetGridColumnMemoEdit(col); 
                    rime.LinesCount = 0;
                    rime.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
                    break;
                default:
                    col = Commons.GetGridColumnByFieldName("NOTEPAD", this.gridView1);
                    break;
            }

            PHReport report = new PHReport();
            //report.ReportTitle = PH.MR.UI.Grid.ReportTitle;
            report.Landscape = true;
           report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating);
            if (isExport)
                report.ExportByIndex(index);
            else
                report.ShowPreviewDialog();

           

            col = SetupColumn("NOTEPAD", "Notepad", 85, -1, 99);
            col.ColumnEdit = repositoryItemMemoExEdit1;
        }

        private void report_DetailBandCreating(object sender, ReportBandEventArgs e)
        {     
           
            int iClientWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            PHReport.AddWinControlToReport(this.gridControl1, new Point(0, 0), new Size(iClientWidth, 400), e.ReportBand);
            e.Y = 400;           

        }
        #endregion

        private void gridView1_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            switch (e.Column.FieldName.ToUpper())
            {
                case "CORQ1":
                    if (Convert.IsDBNull(e.Value))
                        e.DisplayText = "";
                    else
                    {
                        if (this._mrHelper.CompareOption == PHCompareOption.PO)
                            e.DisplayText = string.Format("{0}", Convert.ToDecimal(e.Value).ToString("#,0"));
                        else
                            e.DisplayText = string.Format("{0}", Convert.ToDecimal(e.Value).ToString("#,0.0000"));
                    }
                    break;
                case "CORQ2":
                    goto case "CORQ1";
                case "MR_DIFF":
                    goto case "CORQ1";
                case "QPER1":
                    goto case "CORQ1";
                case "QPER2":
                    goto case "CORQ1";
                case "CAC_DIFF":
                    goto case "CORQ1";
                case "UPRC2":
                    goto case "CORQ1";
                case "AMENTHDIFF_STR":
                    decimal CAC_DIFF = Convert.ToDecimal(view.GetRowCellValue(e.RowHandle, "CAC_DIFF"));
                    decimal amenthDiff = Convert.ToDecimal(view.GetRowCellValue(e.RowHandle, "AMENTHDIFF"));
                    e.DisplayText = CAC_DIFF == 0 ? "" :
                        string.Format(" {0} HKD/pc\r\n ({1} HKD/{2})",
                        amenthDiff.ToString("#,0"),
                        Convert.ToDecimal(view.GetRowCellValue(e.RowHandle, "UPRC")).ToString("#,0"),
                        view.GetRowCellValue(e.RowHandle, "IUNT").ToString().ToLower());
                    break;
                case "PO_CORQ1":
                    e.DisplayText = string.Format("{0}", Convert.ToDecimal(e.Value).ToString("#,0"));
                    break;
                case "PO_CORQ2":
                    goto case "PO_CORQ1";
                case "MU_DIFF":
                    goto case "CORQ1";
                case "PHYSICALSTOCK2":
                    goto case "PO_CORQ1";
                case "RESPO1":
                    goto case "PO_CORQ1";
                case "OPENPO1":
                    goto case "PO_CORQ1";
                case "RESPO2":
                    goto case "PO_CORQ1";
                case "OPENPO2":
                    goto case "PO_CORQ1";
                case "MARKERWIDTH":
                    goto case "PO_CORQ1";
                default:
                    break;
            }
        }

        private void btnCollapse_Click(object sender, EventArgs e)
        {
            this.gridView1.CollapseAllGroups();
        }
        private void btnExpand_Click(object sender, EventArgs e)
        {
            this.gridView1.ExpandAllGroups();
        }

        private void gridView1_RowStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowStyleEventArgs e)
        {
            //if (this._mrHelper.CompareOption == PHCompareOption.CAC) return;
            if (e.RowHandle < 0) return;

            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            //DataRow row = (DataRow)view.GetDataRow(e.RowHandle);
            CompareMRPOCAC row = view.GetRow(e.RowHandle) as CompareMRPOCAC;
            if (row == null) return;

            string notepad = row.NOTEPAD;
            notepad = notepad.Trim();

            decimal diff = 0;
            switch (this._mrHelper.CompareOption)
            {
                case PHCompareOption.None:
                    break;
                case PHCompareOption.MR:
                    diff = row.MR_DIFF;
                    if (diff == 0 || notepad != string.Empty) return;

                    e.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
                    e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
                    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
                    break;
                case PHCompareOption.MU:
                    diff = row.MU_DIFF;
                    if (diff == 0 || notepad != string.Empty) return;

                    e.Appearance.BackColor = System.Drawing.Color.LightSkyBlue;
                    e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
                    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;

                    break;
                case PHCompareOption.PO:
                    diff = row.PO_DIFF;
                    if (diff == 0 || notepad != string.Empty) return;

                    e.Appearance.BackColor = System.Drawing.Color.Lime;
                    e.Appearance.BackColor2 = System.Drawing.Color.SpringGreen;
                    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;

                    break;
                default:
                    break;
            }
            //if (diff != 0 && notepad == string.Empty)
            //{
            //    e.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
            //    e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            //    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            //    //e.Appearance.Options.UseBackColor = true;
            //}

        }

    }
}