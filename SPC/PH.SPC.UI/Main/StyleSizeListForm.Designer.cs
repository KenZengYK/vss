namespace PH.SPC.UI
{
    partial class StyleSizeListForm
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
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleOrderNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChildSampleOrderSuffixShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleTypeShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSTVersionShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKeepQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorName = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
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
            this.repositoryItemTextEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(924, 456);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.colSampleOrderNoShow,
            this.colChildSampleOrderSuffixShow,
            this.colPHStyleNoShow,
            this.colSampleTypeShow,
            this.colSTVersionShow,
            this.colKeepQty,
            this.colColorName});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Color\r\nCode";
            this.gridColumn1.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn1.FieldName = "ColorID";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 5;
            this.gridColumn1.Width = 70;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Cup";
            this.gridColumn2.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn2.FieldName = "Cup";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 7;
            this.gridColumn2.Width = 52;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Cust Sz";
            this.gridColumn3.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn3.FieldName = "SizeID";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 8;
            this.gridColumn3.Width = 70;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Intel. Size";
            this.gridColumn4.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn4.FieldName = "SizeWorld";
            this.gridColumn4.Name = "gridColumn4";
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "SKU\'s\r\nDespatch Qty";
            this.gridColumn5.FieldName = "Qty";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 9;
            this.gridColumn5.Width = 97;
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
            this.colChildSampleOrderSuffixShow.Width = 61;
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
            this.colPHStyleNoShow.Width = 89;
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
            this.colSampleTypeShow.Width = 67;
            // 
            // colSTVersionShow
            // 
            this.colSTVersionShow.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(235)))), ((int)(((byte)(156)))));
            this.colSTVersionShow.AppearanceCell.Options.UseBackColor = true;
            this.colSTVersionShow.Caption = "ST\r\nVersion";
            this.colSTVersionShow.FieldName = "STVersionShow";
            this.colSTVersionShow.Name = "colSTVersionShow";
            this.colSTVersionShow.OptionsColumn.AllowEdit = false;
            this.colSTVersionShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSTVersionShow.Visible = true;
            this.colSTVersionShow.VisibleIndex = 4;
            // 
            // colKeepQty
            // 
            this.colKeepQty.Caption = "SKU\'s\r\nKeep Qty";
            this.colKeepQty.FieldName = "KeepQty";
            this.colKeepQty.Name = "colKeepQty";
            this.colKeepQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colKeepQty.Visible = true;
            this.colKeepQty.VisibleIndex = 10;
            this.colKeepQty.Width = 74;
            // 
            // colColorName
            // 
            this.colColorName.Caption = "Color";
            this.colColorName.FieldName = "ColorName";
            this.colColorName.Name = "colColorName";
            this.colColorName.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorName.Visible = true;
            this.colColorName.VisibleIndex = 6;
            this.colColorName.Width = 110;
            // 
            // StyleSizeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleSizeListForm";
            this.Size = new System.Drawing.Size(924, 483);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colChildSampleOrderSuffixShow;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleTypeShow;
        private DevExpress.XtraGrid.Columns.GridColumn colSTVersionShow;
        private DevExpress.XtraGrid.Columns.GridColumn colKeepQty;
        private DevExpress.XtraGrid.Columns.GridColumn colColorName;
    }
}
