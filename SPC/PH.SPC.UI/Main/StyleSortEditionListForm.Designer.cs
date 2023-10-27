namespace PH.SPC.UI
{
    partial class StyleSortEditionListForm
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
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colEditionDueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEditionActualDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDiffDaysShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleOrderNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChildSampleOrderSuffixShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleTypeShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefaultProduceDueDaysShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProduceDueDaysShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleEditionDespatchQtyShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleEditionKeepQtyShow = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
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
            this.repositoryItemDateEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1298, 413);
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
            this.colSampleTypeShow,
            this.colPHStyleNoShow,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.colEditionDueDate,
            this.colEditionActualDate,
            this.gridColumn8,
            this.gridColumn10,
            this.colDefaultProduceDueDaysShow,
            this.colProduceDueDaysShow,
            this.colDiffDaysShow,
            this.colSampleEditionDespatchQtyShow,
            this.colSampleEditionKeepQtyShow});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Sample Type";
            this.gridColumn1.FieldName = "SortID";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "ST\r\nVersion";
            this.gridColumn2.FieldName = "ShowEditionID";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 4;
            this.gridColumn2.Width = 73;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Issue Date";
            this.gridColumn3.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn3.FieldName = "EditionDate";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 5;
            this.gridColumn3.Width = 80;
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
            // colEditionDueDate
            // 
            this.colEditionDueDate.Caption = "Request\r\nDespatch Date";
            this.colEditionDueDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colEditionDueDate.FieldName = "EditionDueDate";
            this.colEditionDueDate.Name = "colEditionDueDate";
            this.colEditionDueDate.Visible = true;
            this.colEditionDueDate.VisibleIndex = 6;
            this.colEditionDueDate.Width = 103;
            // 
            // colEditionActualDate
            // 
            this.colEditionActualDate.Caption = "Despatch Date";
            this.colEditionActualDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colEditionActualDate.FieldName = "EditionActualDate";
            this.colEditionActualDate.Name = "colEditionActualDate";
            this.colEditionActualDate.Visible = true;
            this.colEditionActualDate.VisibleIndex = 7;
            this.colEditionActualDate.Width = 103;
            // 
            // colDiffDaysShow
            // 
            this.colDiffDaysShow.Caption = "Diff.";
            this.colDiffDaysShow.FieldName = "DiffDaysShow";
            this.colDiffDaysShow.Name = "colDiffDaysShow";
            this.colDiffDaysShow.Visible = true;
            this.colDiffDaysShow.VisibleIndex = 10;
            this.colDiffDaysShow.Width = 44;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Produce Days";
            this.gridColumn8.FieldName = "ProduceDays";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Width = 80;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Beforehand Data";
            this.gridColumn10.FieldName = "BeforehandData";
            this.gridColumn10.Name = "gridColumn10";
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
            this.colChildSampleOrderSuffixShow.Width = 54;
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
            // 
            // colSampleTypeShow
            // 
            this.colSampleTypeShow.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(235)))), ((int)(((byte)(156)))));
            this.colSampleTypeShow.AppearanceCell.Options.UseBackColor = true;
            this.colSampleTypeShow.Caption = "Smpl\r\nType";
            this.colSampleTypeShow.FieldName = "SampleTypeShow";
            this.colSampleTypeShow.Name = "colSampleTypeShow";
            this.colSampleTypeShow.OptionsColumn.AllowEdit = false;
            this.colSampleTypeShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSampleTypeShow.Visible = true;
            this.colSampleTypeShow.VisibleIndex = 3;
            this.colSampleTypeShow.Width = 50;
            // 
            // colDefaultProduceDueDaysShow
            // 
            this.colDefaultProduceDueDaysShow.Caption = "Def. Produce\r\nDue Days";
            this.colDefaultProduceDueDaysShow.FieldName = "DefaultProduceDueDaysShow";
            this.colDefaultProduceDueDaysShow.Name = "colDefaultProduceDueDaysShow";
            this.colDefaultProduceDueDaysShow.Visible = true;
            this.colDefaultProduceDueDaysShow.VisibleIndex = 8;
            this.colDefaultProduceDueDaysShow.Width = 94;
            // 
            // colProduceDueDaysShow
            // 
            this.colProduceDueDaysShow.Caption = "Produce\r\nDue Days";
            this.colProduceDueDaysShow.FieldName = "ProduceDueDaysShow";
            this.colProduceDueDaysShow.Name = "colProduceDueDaysShow";
            this.colProduceDueDaysShow.Visible = true;
            this.colProduceDueDaysShow.VisibleIndex = 9;
            this.colProduceDueDaysShow.Width = 73;
            // 
            // colSampleEditionDespatchQtyShow
            // 
            this.colSampleEditionDespatchQtyShow.Caption = "STV\'s\r\nDespatch Qty";
            this.colSampleEditionDespatchQtyShow.FieldName = "SampleEditionDespatchQtyShow";
            this.colSampleEditionDespatchQtyShow.Name = "colSampleEditionDespatchQtyShow";
            this.colSampleEditionDespatchQtyShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSampleEditionDespatchQtyShow.Visible = true;
            this.colSampleEditionDespatchQtyShow.VisibleIndex = 11;
            this.colSampleEditionDespatchQtyShow.Width = 97;
            // 
            // colSampleEditionKeepQtyShow
            // 
            this.colSampleEditionKeepQtyShow.Caption = "STV\'s\r\nKeep Qty";
            this.colSampleEditionKeepQtyShow.FieldName = "SampleEditionKeepQtyShow";
            this.colSampleEditionKeepQtyShow.Name = "colSampleEditionKeepQtyShow";
            this.colSampleEditionKeepQtyShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSampleEditionKeepQtyShow.Visible = true;
            this.colSampleEditionKeepQtyShow.VisibleIndex = 12;
            this.colSampleEditionKeepQtyShow.Width = 74;
            // 
            // StyleSortEditionListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleSortEditionListForm";
            this.Size = new System.Drawing.Size(1298, 440);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn colEditionDueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colEditionActualDate;
        private DevExpress.XtraGrid.Columns.GridColumn colDiffDaysShow;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colChildSampleOrderSuffixShow;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleTypeShow;
        private DevExpress.XtraGrid.Columns.GridColumn colDefaultProduceDueDaysShow;
        private DevExpress.XtraGrid.Columns.GridColumn colProduceDueDaysShow;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleEditionDespatchQtyShow;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleEditionKeepQtyShow;
    }
}
