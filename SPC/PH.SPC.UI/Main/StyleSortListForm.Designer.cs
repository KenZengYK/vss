namespace PH.SPC.UI
{
    partial class StyleSortListForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPattern = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colSampleOrderNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChildSampleOrderSuffixShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.repositoryItemDateEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1183, 332);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSampleOrderNoShow,
            this.colChildSampleOrderSuffixShow,
            this.colPHStyleNoShow,
            this.gridColumn1,
            this.gridColumn9,
            this.colPattern,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn10,
            this.colMaterialStatus});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Smpl\r\nType";
            this.gridColumn1.FieldName = "SortID";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 3;
            // 
            // colPattern
            // 
            this.colPattern.Caption = "Pattern\r\nSource";
            this.colPattern.FieldName = "MarkSource";
            this.colPattern.Name = "colPattern";
            this.colPattern.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPattern.Visible = true;
            this.colPattern.VisibleIndex = 5;
            this.colPattern.Width = 108;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Produce Dept";
            this.gridColumn3.FieldName = "ProduceDepartment";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Width = 98;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Issue Date";
            this.gridColumn4.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn4.FieldName = "SortDate";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Width = 121;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Request Complete Date";
            this.gridColumn5.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn5.FieldName = "DueDate";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Width = 143;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Actual Date";
            this.gridColumn6.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn6.FieldName = "ActualDate";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Width = 106;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Produce Days";
            this.gridColumn7.FieldName = "ProduceDays";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Width = 69;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Type";
            this.gridColumn8.FieldName = "Type";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Width = 60;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Latest\r\nST Version";
            this.gridColumn9.FieldName = "EditionID";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 4;
            this.gridColumn9.Width = 81;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Complete Status";
            this.gridColumn10.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn10.FieldName = "CompleteStatus";
            this.gridColumn10.Name = "gridColumn10";
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colSampleOrderNoShow
            // 
            this.colSampleOrderNoShow.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(235)))), ((int)(((byte)(156)))));
            this.colSampleOrderNoShow.AppearanceCell.Options.UseBackColor = true;
            this.colSampleOrderNoShow.Caption = "SplO#";
            this.colSampleOrderNoShow.FieldName = "SampleOrderNoShow";
            this.colSampleOrderNoShow.Name = "colSampleOrderNoShow";
            this.colSampleOrderNoShow.OptionsColumn.AllowEdit = false;
            this.colSampleOrderNoShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSampleOrderNoShow.Visible = true;
            this.colSampleOrderNoShow.VisibleIndex = 0;
            this.colSampleOrderNoShow.Width = 90;
            // 
            // colChildSampleOrderSuffixShow
            // 
            this.colChildSampleOrderSuffixShow.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(235)))), ((int)(((byte)(156)))));
            this.colChildSampleOrderSuffixShow.AppearanceCell.Options.UseBackColor = true;
            this.colChildSampleOrderSuffixShow.Caption = "Suffix#";
            this.colChildSampleOrderSuffixShow.FieldName = "ChildSampleOrderSuffixShow";
            this.colChildSampleOrderSuffixShow.Name = "colChildSampleOrderSuffixShow";
            this.colChildSampleOrderSuffixShow.OptionsColumn.AllowEdit = false;
            this.colChildSampleOrderSuffixShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colChildSampleOrderSuffixShow.Visible = true;
            this.colChildSampleOrderSuffixShow.VisibleIndex = 1;
            this.colChildSampleOrderSuffixShow.Width = 77;
            // 
            // colPHStyleNoShow
            // 
            this.colPHStyleNoShow.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(235)))), ((int)(((byte)(156)))));
            this.colPHStyleNoShow.AppearanceCell.Options.UseBackColor = true;
            this.colPHStyleNoShow.Caption = "PH Style#";
            this.colPHStyleNoShow.FieldName = "PHStyleNoShow";
            this.colPHStyleNoShow.Name = "colPHStyleNoShow";
            this.colPHStyleNoShow.OptionsColumn.AllowEdit = false;
            this.colPHStyleNoShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPHStyleNoShow.Visible = true;
            this.colPHStyleNoShow.VisibleIndex = 2;
            this.colPHStyleNoShow.Width = 84;
            // 
            // colMaterialStatus
            // 
            this.colMaterialStatus.Caption = "Mat\'l Status";
            this.colMaterialStatus.FieldName = "MaterialStatus";
            this.colMaterialStatus.Name = "colMaterialStatus";
            this.colMaterialStatus.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialStatus.Visible = true;
            this.colMaterialStatus.VisibleIndex = 6;
            this.colMaterialStatus.Width = 108;
            // 
            // StyleSortListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleSortListForm";
            this.Size = new System.Drawing.Size(1183, 359);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.StyleSortListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn colPattern;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colChildSampleOrderSuffixShow;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialStatus;
    }
}
