namespace PH.MR.UI.HSContract
{
    partial class HSContractDetailListForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.colProjectNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleHSName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleHSCodeSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSeqNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.GridContextMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.autoFillSeqNOToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.autoFillPriceToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.autoFillCustomSeqNoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.autoFillWeightToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.colDeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOExtQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOBalanceQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnitPX = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.colCustomSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProdCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            this.GridContextMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.ContextMenuStrip = this.GridContextMenu;
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemImageComboBox1,
            this.repositoryItemSpinEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1155, 382);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.SelectedRow.BackColor = System.Drawing.Color.Blue;
            this.objListGridView.Appearance.SelectedRow.BackColor2 = System.Drawing.Color.Blue;
            this.objListGridView.Appearance.SelectedRow.ForeColor = System.Drawing.Color.Black;
            this.objListGridView.Appearance.SelectedRow.Options.UseBackColor = true;
            this.objListGridView.Appearance.SelectedRow.Options.UseForeColor = true;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNO,
            this.colProjectNO,
            this.colWorkNO,
            this.colDeliveryDate,
            this.colWOQty,
            this.colWOExtQty,
            this.colWOBalanceQty,
            this.colStyleHSName,
            this.colWeight,
            this.colUnitPX,
            this.colFactory,
            this.colStyleHSCodeSeq,
            this.colStyleHSCode,
            this.colCreateUser,
            this.colCreateDate,
            this.colAlterUser,
            this.colAlterDate,
            this.colRemark,
            this.colCustomSeqNo,
            this.colStyleNo,
            this.colProdCode});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1214, 560, 216, 201);
            this.objListGridView.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "WOQty", null, "")});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsSelection.MultiSelect = true;
            this.objListGridView.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MR.BO.HSContractDetail);
            // 
            // colProjectNO
            // 
            this.colProjectNO.Caption = "Project#";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.Visible = true;
            this.colProjectNO.VisibleIndex = 2;
            this.colProjectNO.Width = 113;
            // 
            // colWorkNO
            // 
            this.colWorkNO.Caption = "WO#";
            this.colWorkNO.FieldName = "WorkNO";
            this.colWorkNO.Name = "colWorkNO";
            this.colWorkNO.Visible = true;
            this.colWorkNO.VisibleIndex = 3;
            this.colWorkNO.Width = 101;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.ColumnEdit = this.repositoryItemImageComboBox1;
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 13;
            this.colFactory.Width = 106;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("SL", "SL", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("GG", "GG", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("RX", "RX", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("CL", "CL", -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 16;
            this.colCreateUser.Width = 102;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 17;
            this.colCreateDate.Width = 114;
            // 
            // colAlterUser
            // 
            this.colAlterUser.Caption = "AlterUser";
            this.colAlterUser.FieldName = "AlterUser";
            this.colAlterUser.Name = "colAlterUser";
            this.colAlterUser.Visible = true;
            this.colAlterUser.VisibleIndex = 18;
            this.colAlterUser.Width = 135;
            // 
            // colAlterDate
            // 
            this.colAlterDate.Caption = "AlterDate";
            this.colAlterDate.FieldName = "AlterDate";
            this.colAlterDate.Name = "colAlterDate";
            this.colAlterDate.Visible = true;
            this.colAlterDate.VisibleIndex = 19;
            this.colAlterDate.Width = 100;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 20;
            this.colRemark.Width = 132;
            // 
            // colStyleHSCode
            // 
            this.colStyleHSCode.Caption = "StyleHSCode";
            this.colStyleHSCode.FieldName = "StyleHSCode";
            this.colStyleHSCode.Name = "colStyleHSCode";
            this.colStyleHSCode.Visible = true;
            this.colStyleHSCode.VisibleIndex = 15;
            this.colStyleHSCode.Width = 123;
            // 
            // colStyleHSName
            // 
            this.colStyleHSName.Caption = "Style HS Name";
            this.colStyleHSName.FieldName = "StyleHSName";
            this.colStyleHSName.Name = "colStyleHSName";
            this.colStyleHSName.Visible = true;
            this.colStyleHSName.VisibleIndex = 10;
            this.colStyleHSName.Width = 127;
            // 
            // colStyleHSCodeSeq
            // 
            this.colStyleHSCodeSeq.Caption = "StyleHSCodeSeq";
            this.colStyleHSCodeSeq.FieldName = "StyleHSCodeSeq";
            this.colStyleHSCodeSeq.Name = "colStyleHSCodeSeq";
            this.colStyleHSCodeSeq.Visible = true;
            this.colStyleHSCodeSeq.VisibleIndex = 14;
            this.colStyleHSCodeSeq.Width = 125;
            // 
            // colSeqNO
            // 
            this.colSeqNO.Caption = "SeqNO";
            this.colSeqNO.FieldName = "SeqNO";
            this.colSeqNO.Name = "colSeqNO";
            this.colSeqNO.Visible = true;
            this.colSeqNO.VisibleIndex = 0;
            this.colSeqNO.Width = 79;
            // 
            // GridContextMenu
            // 
            this.GridContextMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.autoFillSeqNOToolStripMenuItem,
            this.autoFillPriceToolStripMenuItem,
            this.autoFillCustomSeqNoToolStripMenuItem,
            this.toolStripSeparator1,
            this.autoFillWeightToolStripMenuItem});
            this.GridContextMenu.Name = "GridContextMenu";
            this.GridContextMenu.Size = new System.Drawing.Size(169, 98);
            this.PlatetoolTipController.SetSuperTip(this.GridContextMenu, null);
            this.GridContextMenu.Text = "填充SeqNO";
            // 
            // autoFillSeqNOToolStripMenuItem
            // 
            this.autoFillSeqNOToolStripMenuItem.Name = "autoFillSeqNOToolStripMenuItem";
            this.autoFillSeqNOToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.autoFillSeqNOToolStripMenuItem.Text = "Auto Fill SeqNO";
            this.autoFillSeqNOToolStripMenuItem.Click += new System.EventHandler(this.autoFillSeqNOToolStripMenuItem_Click);
            // 
            // autoFillPriceToolStripMenuItem
            // 
            this.autoFillPriceToolStripMenuItem.Name = "autoFillPriceToolStripMenuItem";
            this.autoFillPriceToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.autoFillPriceToolStripMenuItem.Text = "Auto Fill Price";
            this.autoFillPriceToolStripMenuItem.Click += new System.EventHandler(this.autoFillPriceToolStripMenuItem_Click);
            // 
            // autoFillCustomSeqNoToolStripMenuItem
            // 
            this.autoFillCustomSeqNoToolStripMenuItem.Name = "autoFillCustomSeqNoToolStripMenuItem";
            this.autoFillCustomSeqNoToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.autoFillCustomSeqNoToolStripMenuItem.Text = "Auto Fill 歸併號";
            this.autoFillCustomSeqNoToolStripMenuItem.Click += new System.EventHandler(this.autoFillCustomSeqNoToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(165, 6);
            // 
            // autoFillWeightToolStripMenuItem
            // 
            this.autoFillWeightToolStripMenuItem.Name = "autoFillWeightToolStripMenuItem";
            this.autoFillWeightToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.autoFillWeightToolStripMenuItem.Text = "Auto Fill Weight";
            this.autoFillWeightToolStripMenuItem.Click += new System.EventHandler(this.autoFillWeightToolStripMenuItem_Click);
            // 
            // colDeliveryDate
            // 
            this.colDeliveryDate.Caption = "Delivery Date";
            this.colDeliveryDate.FieldName = "DeliveryDate";
            this.colDeliveryDate.Name = "colDeliveryDate";
            this.colDeliveryDate.Visible = true;
            this.colDeliveryDate.VisibleIndex = 6;
            this.colDeliveryDate.Width = 93;
            // 
            // colWOQty
            // 
            this.colWOQty.Caption = "WO Qty";
            this.colWOQty.FieldName = "WOQty";
            this.colWOQty.Name = "colWOQty";
            this.colWOQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colWOQty.Visible = true;
            this.colWOQty.VisibleIndex = 7;
            this.colWOQty.Width = 79;
            // 
            // colWOExtQty
            // 
            this.colWOExtQty.Caption = "WO ExtQty";
            this.colWOExtQty.FieldName = "WOExtQty";
            this.colWOExtQty.Name = "colWOExtQty";
            this.colWOExtQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colWOExtQty.Visible = true;
            this.colWOExtQty.VisibleIndex = 8;
            this.colWOExtQty.Width = 92;
            // 
            // colWOBalanceQty
            // 
            this.colWOBalanceQty.Caption = "WO Balance Qty";
            this.colWOBalanceQty.FieldName = "WOBalanceQty";
            this.colWOBalanceQty.Name = "colWOBalanceQty";
            this.colWOBalanceQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colWOBalanceQty.Visible = true;
            this.colWOBalanceQty.VisibleIndex = 9;
            this.colWOBalanceQty.Width = 107;
            // 
            // colUnitPX
            // 
            this.colUnitPX.Caption = "UnitPX";
            this.colUnitPX.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colUnitPX.FieldName = "UnitPX";
            this.colUnitPX.Name = "colUnitPX";
            this.colUnitPX.Visible = true;
            this.colUnitPX.VisibleIndex = 11;
            this.colUnitPX.Width = 83;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // colCustomSeqNo
            // 
            this.colCustomSeqNo.Caption = "歸併號";
            this.colCustomSeqNo.FieldName = "CustomSeqNo";
            this.colCustomSeqNo.Name = "colCustomSeqNo";
            this.colCustomSeqNo.Visible = true;
            this.colCustomSeqNo.VisibleIndex = 1;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "Style#";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 4;
            this.colStyleNo.Width = 91;
            // 
            // colWeight
            // 
            this.colWeight.Caption = "Weight";
            this.colWeight.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colWeight.FieldName = "Weight";
            this.colWeight.Name = "colWeight";
            this.colWeight.Visible = true;
            this.colWeight.VisibleIndex = 12;
            // 
            // colProdCode
            // 
            this.colProdCode.Caption = "Cat.";
            this.colProdCode.FieldName = "ProdCode";
            this.colProdCode.Name = "colProdCode";
            this.colProdCode.OptionsColumn.AllowEdit = false;
            this.colProdCode.Visible = true;
            this.colProdCode.VisibleIndex = 5;
            this.colProdCode.Width = 44;
            // 
            // HSContractDetailListForm
            // 
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HSContractDetailListForm";
            this.Size = new System.Drawing.Size(1155, 409);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.HSContractDetailListForm_Load);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            this.GridContextMenu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colProjectNO;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkNO;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleHSName;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleHSCodeSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colSeqNO;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
        private System.Windows.Forms.ContextMenuStrip GridContextMenu;
        private System.Windows.Forms.ToolStripMenuItem autoFillSeqNOToolStripMenuItem;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryDate;
        private DevExpress.XtraGrid.Columns.GridColumn colWOQty;
        private DevExpress.XtraGrid.Columns.GridColumn colWOExtQty;
        private DevExpress.XtraGrid.Columns.GridColumn colWOBalanceQty;
        private DevExpress.XtraGrid.Columns.GridColumn colUnitPX;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private System.Windows.Forms.ToolStripMenuItem autoFillPriceToolStripMenuItem;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomSeqNo;
        private System.Windows.Forms.ToolStripMenuItem autoFillCustomSeqNoToolStripMenuItem;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWeight;
        private System.Windows.Forms.ToolStripMenuItem autoFillWeightToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private DevExpress.XtraGrid.Columns.GridColumn colProdCode;
    }
}
