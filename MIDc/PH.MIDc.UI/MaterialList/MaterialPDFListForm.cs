
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;//.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class MaterialPDFListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gcolDependent;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit repositoryItemHyperLinkEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraBars.BarButtonItem btnGetPDF;

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemHyperLinkEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit();
            this.btnGetPDF = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcolDependent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemHyperLinkEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnGetPDF});
            this.objbarManager.MaxItemId = 40;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemHyperLinkEdit1,
            this.repositoryItemDateEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(851, 323);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gcolDependent,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn3});
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.gridColumn3;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = true;
            this.objListGridView.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.objListGridView.GroupCount = 1;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn1, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn2, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "gridColumn3";
            this.gridColumn3.FieldName = "HaveData";
            this.gridColumn3.Name = "gridColumn3";
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Report";
            this.gridColumn6.ColumnEdit = this.repositoryItemHyperLinkEdit1;
            this.gridColumn6.FieldName = "ShowReport";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 4;
            this.gridColumn6.Width = 149;
            // 
            // repositoryItemHyperLinkEdit1
            // 
            this.repositoryItemHyperLinkEdit1.AutoHeight = false;
            this.repositoryItemHyperLinkEdit1.Image = global::PH.MIDc.UI.Properties.Resources.page_white_acrobat;
            this.repositoryItemHyperLinkEdit1.Name = "repositoryItemHyperLinkEdit1";
            this.repositoryItemHyperLinkEdit1.SingleClick = true;
            this.repositoryItemHyperLinkEdit1.OpenLink += new DevExpress.XtraEditors.Controls.OpenLinkEventHandler(this.repositoryItemHyperLinkEdit1_OpenLink);
            // 
            // btnGetPDF
            // 
            this.btnGetPDF.Caption = "Get PDF";
            this.btnGetPDF.Id = 39;
            this.btnGetPDF.Name = "btnGetPDF";
            this.btnGetPDF.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnGetPDF_ItemClick);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Calc Date";
            this.gridColumn1.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn1.FieldName = "CalcDateTime";
            this.gridColumn1.GroupFormat.FormatString = "yyyy\'/\'MM\'/\'dd";
            this.gridColumn1.GroupFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Width = 117;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.DisplayFormat.FormatString = "yyyy\'/\'MM\'/\'dd";
            this.repositoryItemDateEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn2.Caption = "Mat.Type / Supp";
            this.gridColumn2.FieldName = "MatTypeSupp";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            this.gridColumn2.Width = 136;
            // 
            // gcolDependent
            // 
            this.gcolDependent.Caption = "Dependent";
            this.gcolDependent.FieldName = "IsMatTypeDesc";
            this.gcolDependent.Name = "gcolDependent";
            this.gcolDependent.OptionsColumn.AllowEdit = false;
            this.gcolDependent.Visible = true;
            this.gcolDependent.VisibleIndex = 0;
            this.gcolDependent.Width = 134;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Status";
            this.gridColumn4.FieldName = "IsStudyRunDesc";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 2;
            this.gridColumn4.Width = 138;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "FileName";
            this.gridColumn5.FieldName = "FileName";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.OptionsColumn.AllowEdit = false;
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 3;
            this.gridColumn5.Width = 337;
            // 
            // MaterialPDFListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MaterialPDFListForm";
            this.Size = new System.Drawing.Size(851, 349);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemHyperLinkEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        public MaterialPDFListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

        }
        public MaterialPDFListForm(string matTypeSupp)
            : this()
        {
            _matTypeSupp = matTypeSupp;
            if (!string.IsNullOrEmpty(_matTypeSupp)) gridColumn2.Caption = _matTypeSupp;
        }

        string _matTypeSupp;
        DetailList _detailList;

        public override void DataBind()
        {
            _detailList = new DetailList();
            _detailList.CurrentDataContext.CommandTimeout = 1000;
            this.DataContext = _detailList.CurrentDataContext;
            this.BindingSource.DataSource = _detailList.GetMaterialListPDFs(_matTypeSupp == "MaterialType");
            base.DataBind();
            this.objListGridView.OptionsBehavior.Editable = true;
            this.gcolDependent.Visible = string.IsNullOrEmpty(_matTypeSupp);
        }
        private void GetReport(MaterialListReport midc)
        {
            // list = new DetailList();
            MaterialListReport midc1 = _detailList.GetMaterialListPDF(midc);
            if (midc1 != null)
                midc.Report = midc1.Report;
        }
        private void ShowMIDReport()
        {
            MaterialListReport midc = this.BindingSource.Current as MaterialListReport;
            if (midc == null) return;

            if (!(midc.HaveData??false)) return;
            //SaveFileDialog dlg = new SaveFileDialog();
            //dlg.FileName = pdf.FileName;
            //dlg.Filter = "PDF document|*.pdf";
            //dlg.DefaultExt = "pdf";
            //string fileName = string.Empty;
            //if (dlg.ShowDialog() != DialogResult.OK) return;
            //fileName = dlg.FileName;

            //var pdf = this.GetPDF();
            //if (pdf == null) return;
            this.Cursor = Cursors.WaitCursor;
            //if (pdf.PDF == null)
            GetReport(midc);

            using (System.IO.MemoryStream ms = new System.IO.MemoryStream(midc.Report))
            {
                DevExpress.XtraReports.UI.XtraReport report = new DevExpress.XtraReports.UI.XtraReport();
                report.PrintingSystem.LoadDocument(ms);
                report.PrintingSystem.ExportOptions.PrintPreview.DefaultFileName = midc.FileName;
                report.ShowPreviewDialog();
                //using (System.IO.FileStream fs = new System.IO.FileStream(fileName, System.IO.FileMode.OpenOrCreate))
                //{
                //    fs.Write(pdf.PDF, 0, pdf.PDF.Length);
                //}
            }
            this.Cursor = Cursors.Default;
        }

        private void btnGetPDF_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ShowMIDReport();
        }

        private void repositoryItemHyperLinkEdit1_OpenLink(object sender, DevExpress.XtraEditors.Controls.OpenLinkEventArgs e)
        {
            ShowMIDReport();
            e.Handled = true;
        }

    }
}
