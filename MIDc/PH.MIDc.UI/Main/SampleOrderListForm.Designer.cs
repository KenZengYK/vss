namespace PH.MIDc.UI
{
    partial class SampleOrderListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition2 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colSupplierStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SampleOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Supplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SeasonNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEditCreateDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.lbl_MIDStatus = new DevExpress.XtraEditors.LabelControl();
            this.lbl_Condition = new DevExpress.XtraEditors.LabelControl();
            this.sBtn_Done = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_WIP = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_ALL = new DevExpress.XtraEditors.SimpleButton();
            this.colSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem5 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.barButtonItem5});
            this.objbarManager.MaxItemId = 22;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 59);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEditCreateDate});
            this.objListGridControl.Size = new System.Drawing.Size(957, 240);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.objListGridView.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
            this.objListGridView.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.objListGridView.Appearance.EvenRow.Options.UseBackColor = true;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.SampleOrderNo,
            this.Supplier,
            this.gridColumn1,
            this.SeasonNo,
            this.CreateDate,
            this.colSupplierStatus,
            this.colSeq});
            styleFormatCondition1.Appearance.ForeColor = System.Drawing.Color.Black;
            styleFormatCondition1.Appearance.Options.UseForeColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.colSupplierStatus;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "To be Drop";
            styleFormatCondition2.Appearance.ForeColor = System.Drawing.Color.Black;
            styleFormatCondition2.Appearance.Options.UseForeColor = true;
            styleFormatCondition2.ApplyToRow = true;
            styleFormatCondition2.Column = this.colSupplierStatus;
            styleFormatCondition2.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition2.Value1 = "Inactive";
            this.objListGridView.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1,
            styleFormatCondition2});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.SampleOrderNo, DevExpress.Data.ColumnSortOrder.Descending)});
            this.objListGridView.CustomColumnSort += new DevExpress.XtraGrid.Views.Base.CustomColumnSortEventHandler(this.objListGridView_CustomColumnSort);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.SampleOrder);
            // 
            // colSupplierStatus
            // 
            this.colSupplierStatus.Caption = "SupplierStatus";
            this.colSupplierStatus.FieldName = "SupplierStatus";
            this.colSupplierStatus.Name = "colSupplierStatus";
            // 
            // SampleOrderNo
            // 
            this.SampleOrderNo.Caption = "Dvp Proj No.";
            this.SampleOrderNo.FieldName = "SampleOrderNo";
            this.SampleOrderNo.Name = "SampleOrderNo";
            this.SampleOrderNo.SortMode = DevExpress.XtraGrid.ColumnSortMode.Custom;
            this.SampleOrderNo.Visible = true;
            this.SampleOrderNo.VisibleIndex = 0;
            this.SampleOrderNo.Width = 129;
            // 
            // Supplier
            // 
            this.Supplier.Caption = "MIDc\'s Supplier Code";
            this.Supplier.FieldName = "Supplier";
            this.Supplier.Name = "Supplier";
            this.Supplier.Visible = true;
            this.Supplier.VisibleIndex = 1;
            this.Supplier.Width = 137;
            // 
            // SeasonNo
            // 
            this.SeasonNo.Caption = "Season No";
            this.SeasonNo.FieldName = "SeasonNo";
            this.SeasonNo.Name = "SeasonNo";
            this.SeasonNo.Visible = true;
            this.SeasonNo.VisibleIndex = 3;
            this.SeasonNo.Width = 127;
            // 
            // CreateDate
            // 
            this.CreateDate.Caption = "Create Date";
            this.CreateDate.ColumnEdit = this.repositoryItemDateEditCreateDate;
            this.CreateDate.FieldName = "CreateDate";
            this.CreateDate.Name = "CreateDate";
            this.CreateDate.Visible = true;
            this.CreateDate.VisibleIndex = 4;
            this.CreateDate.Width = 128;
            // 
            // repositoryItemDateEditCreateDate
            // 
            this.repositoryItemDateEditCreateDate.AutoHeight = false;
            this.repositoryItemDateEditCreateDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEditCreateDate.Name = "repositoryItemDateEditCreateDate";
            this.repositoryItemDateEditCreateDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "UpdatePrice";
            this.barButtonItem1.Id = 17;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "ERP\'s Supplier Code";
            this.gridColumn1.FieldName = "ERPSupplier";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 2;
            this.gridColumn1.Width = 138;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.lbl_MIDStatus);
            this.panelControl1.Controls.Add(this.lbl_Condition);
            this.panelControl1.Controls.Add(this.sBtn_Done);
            this.panelControl1.Controls.Add(this.sBtn_WIP);
            this.panelControl1.Controls.Add(this.sBtn_ALL);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(957, 32);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 6;
            // 
            // lbl_MIDStatus
            // 
            this.lbl_MIDStatus.Location = new System.Drawing.Point(348, 11);
            this.lbl_MIDStatus.Name = "lbl_MIDStatus";
            this.lbl_MIDStatus.Size = new System.Drawing.Size(28, 14);
            this.lbl_MIDStatus.TabIndex = 1;
            this.lbl_MIDStatus.Text = "       ";
            // 
            // lbl_Condition
            // 
            this.lbl_Condition.Location = new System.Drawing.Point(282, 11);
            this.lbl_Condition.Name = "lbl_Condition";
            this.lbl_Condition.Size = new System.Drawing.Size(60, 14);
            this.lbl_Condition.TabIndex = 1;
            this.lbl_Condition.Text = "過濾條件：";
            this.lbl_Condition.DoubleClick += new System.EventHandler(this.lbl_Condition_DoubleClick);
            // 
            // sBtn_Done
            // 
            this.sBtn_Done.Location = new System.Drawing.Point(164, 5);
            this.sBtn_Done.Name = "sBtn_Done";
            this.sBtn_Done.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Done.TabIndex = 0;
            this.sBtn_Done.Tag = "Done";
            this.sBtn_Done.Text = "Finished";
            this.sBtn_Done.Click += new System.EventHandler(this.sBtn_Filter_Click);
            // 
            // sBtn_WIP
            // 
            this.sBtn_WIP.Location = new System.Drawing.Point(81, 5);
            this.sBtn_WIP.Name = "sBtn_WIP";
            this.sBtn_WIP.Size = new System.Drawing.Size(84, 23);
            this.sBtn_WIP.TabIndex = 0;
            this.sBtn_WIP.Tag = "WIP";
            this.sBtn_WIP.Text = "Outstanding";
            this.sBtn_WIP.Click += new System.EventHandler(this.sBtn_Filter_Click);
            // 
            // sBtn_ALL
            // 
            this.sBtn_ALL.Location = new System.Drawing.Point(7, 5);
            this.sBtn_ALL.Name = "sBtn_ALL";
            this.sBtn_ALL.Size = new System.Drawing.Size(75, 23);
            this.sBtn_ALL.TabIndex = 0;
            this.sBtn_ALL.Tag = "ALL";
            this.sBtn_ALL.Text = "ALL";
            this.sBtn_ALL.Click += new System.EventHandler(this.sBtn_Filter_Click);
            // 
            // colSeq
            // 
            this.colSeq.Caption = "Seq";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "Fabric";
            this.barButtonItem2.Id = 18;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "胸圍杯";
            this.barButtonItem3.Id = 19;
            this.barButtonItem3.Name = "barButtonItem3";
            this.barButtonItem3.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Caption = "圈勾";
            this.barButtonItem4.Id = 20;
            this.barButtonItem4.Name = "barButtonItem4";
            this.barButtonItem4.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barButtonItem5
            // 
            this.barButtonItem5.Caption = "布5";
            this.barButtonItem5.Id = 21;
            this.barButtonItem5.Name = "barButtonItem5";
            this.barButtonItem5.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // SampleOrderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.panelControl1);
            this.Name = "SampleOrderListForm";
            this.Size = new System.Drawing.Size(957, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn SampleOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn Supplier;
        private DevExpress.XtraGrid.Columns.GridColumn SeasonNo;
        private DevExpress.XtraGrid.Columns.GridColumn CreateDate;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        public DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEditCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierStatus;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.LabelControl lbl_Condition;
        private DevExpress.XtraEditors.SimpleButton sBtn_Done;
        private DevExpress.XtraEditors.SimpleButton sBtn_WIP;
        private DevExpress.XtraEditors.SimpleButton sBtn_ALL;
        private DevExpress.XtraEditors.LabelControl lbl_MIDStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colSeq;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraBars.BarButtonItem barButtonItem5;
    }
}
