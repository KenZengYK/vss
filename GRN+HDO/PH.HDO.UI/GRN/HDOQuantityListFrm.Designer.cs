namespace PH.HDO.UI
{
    partial class HDOQuantityListFrm
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
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colGRNNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.deETA = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.repositoryItemTimeEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTimeEdit();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPOLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGRNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConversationFactor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQtyCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colSuppPOQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBalanceQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalReceivedQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPastTtlGRNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deETA)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deETA.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTimeEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.HDOQuantity);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1,
            this.repositoryItemDateEdit1,
            this.deETA,
            this.repositoryItemTimeEdit1,
            this.repositoryItemImageComboBox1});
            this.objListGridControl.Size = new System.Drawing.Size(847, 309);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.objListGridView.ColumnPanelRowHeight = 70;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colGRNNO,
            this.colPONO,
            this.colPOLine,
            this.colGRNQty,
            this.colConversationFactor,
            this.colSuppUom,
            this.colPHUom,
            this.colQtyCompleted,
            this.colSuppPOQty,
            this.colBalanceQty,
            this.colTotalReceivedQty,
            this.colPHQty,
            this.colPastTtlGRNQty,
            this.colProjectNo});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1054, 355, 216, 530);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsCustomization.AllowSort = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.AllowCellMerge = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colGRNNO, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colPONO, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.objListGridView_CellMerge);
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // colGRNNO
            // 
            this.colGRNNO.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colGRNNO.AppearanceCell.Options.UseBackColor = true;
            this.colGRNNO.AppearanceCell.Options.UseTextOptions = true;
            this.colGRNNO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colGRNNO.Caption = "GRN No.";
            this.colGRNNO.ColumnEdit = this.repositoryItemTextEdit1;
            this.colGRNNO.FieldName = "GRNNO";
            this.colGRNNO.Name = "colGRNNO";
            this.colGRNNO.OptionsColumn.AllowEdit = false;
            this.colGRNNO.Visible = true;
            this.colGRNNO.VisibleIndex = 0;
            this.colGRNNO.Width = 83;
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
            // deETA
            // 
            this.deETA.AutoHeight = false;
            this.deETA.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deETA.Name = "deETA";
            this.deETA.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // repositoryItemTimeEdit1
            // 
            this.repositoryItemTimeEdit1.AutoHeight = false;
            this.repositoryItemTimeEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemTimeEdit1.DisplayFormat.FormatString = "HH";
            this.repositoryItemTimeEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemTimeEdit1.EditFormat.FormatString = "HH";
            this.repositoryItemTimeEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemTimeEdit1.Mask.EditMask = "HH";
            this.repositoryItemTimeEdit1.Name = "repositoryItemTimeEdit1";
            // 
            // colPONO
            // 
            this.colPONO.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colPONO.AppearanceCell.Options.UseBackColor = true;
            this.colPONO.AppearanceCell.Options.UseTextOptions = true;
            this.colPONO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 1;
            this.colPONO.Width = 90;
            // 
            // colPOLine
            // 
            this.colPOLine.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colPOLine.AppearanceCell.Options.UseBackColor = true;
            this.colPOLine.AppearanceCell.Options.UseTextOptions = true;
            this.colPOLine.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPOLine.Caption = "PO\r\nLine#";
            this.colPOLine.FieldName = "POLine";
            this.colPOLine.Name = "colPOLine";
            this.colPOLine.OptionsColumn.AllowEdit = false;
            this.colPOLine.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOLine.Visible = true;
            this.colPOLine.VisibleIndex = 2;
            this.colPOLine.Width = 55;
            // 
            // colGRNQty
            // 
            this.colGRNQty.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colGRNQty.AppearanceCell.Options.UseBackColor = true;
            this.colGRNQty.AppearanceCell.Options.UseTextOptions = true;
            this.colGRNQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGRNQty.Caption = "This\r\nGRN\r\nQty";
            this.colGRNQty.DisplayFormat.FormatString = "#,0.##";
            this.colGRNQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colGRNQty.FieldName = "GRNQty";
            this.colGRNQty.Name = "colGRNQty";
            this.colGRNQty.OptionsColumn.AllowEdit = false;
            this.colGRNQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGRNQty.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colGRNQty.Visible = true;
            this.colGRNQty.VisibleIndex = 6;
            this.colGRNQty.Width = 72;
            // 
            // colConversationFactor
            // 
            this.colConversationFactor.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colConversationFactor.AppearanceCell.Options.UseBackColor = true;
            this.colConversationFactor.AppearanceCell.Options.UseTextOptions = true;
            this.colConversationFactor.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colConversationFactor.Caption = "Conver\r\n-sion\r\nFactor";
            this.colConversationFactor.DisplayFormat.FormatString = "0.####";
            this.colConversationFactor.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colConversationFactor.FieldName = "ConversationFactor";
            this.colConversationFactor.Name = "colConversationFactor";
            this.colConversationFactor.OptionsColumn.AllowEdit = false;
            this.colConversationFactor.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colConversationFactor.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colConversationFactor.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colConversationFactor.OptionsFilter.AllowFilter = false;
            this.colConversationFactor.Visible = true;
            this.colConversationFactor.VisibleIndex = 8;
            this.colConversationFactor.Width = 76;
            // 
            // colSuppUom
            // 
            this.colSuppUom.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colSuppUom.AppearanceCell.Options.UseBackColor = true;
            this.colSuppUom.AppearanceCell.Options.UseTextOptions = true;
            this.colSuppUom.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSuppUom.Caption = "PO\r\nu/m";
            this.colSuppUom.FieldName = "SuppUom";
            this.colSuppUom.Name = "colSuppUom";
            this.colSuppUom.OptionsColumn.AllowEdit = false;
            this.colSuppUom.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppUom.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppUom.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppUom.OptionsFilter.AllowFilter = false;
            this.colSuppUom.Visible = true;
            this.colSuppUom.VisibleIndex = 4;
            this.colSuppUom.Width = 47;
            // 
            // colPHUom
            // 
            this.colPHUom.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colPHUom.AppearanceCell.Options.UseBackColor = true;
            this.colPHUom.AppearanceCell.Options.UseTextOptions = true;
            this.colPHUom.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPHUom.Caption = "ERP\r\nStock\r\nu/m";
            this.colPHUom.FieldName = "PHUom";
            this.colPHUom.Name = "colPHUom";
            this.colPHUom.OptionsColumn.AllowEdit = false;
            this.colPHUom.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colPHUom.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHUom.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colPHUom.OptionsFilter.AllowFilter = false;
            this.colPHUom.Visible = true;
            this.colPHUom.VisibleIndex = 7;
            this.colPHUom.Width = 54;
            // 
            // colQtyCompleted
            // 
            this.colQtyCompleted.AppearanceCell.Options.UseTextOptions = true;
            this.colQtyCompleted.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colQtyCompleted.Caption = "Line\r\nQty\r\nComp.\r\n(Y?)";
            this.colQtyCompleted.ColumnEdit = this.repositoryItemImageComboBox1;
            this.colQtyCompleted.FieldName = "QtyCompleted";
            this.colQtyCompleted.Name = "colQtyCompleted";
            this.colQtyCompleted.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colQtyCompleted.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colQtyCompleted.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colQtyCompleted.Visible = true;
            this.colQtyCompleted.VisibleIndex = 10;
            this.colQtyCompleted.Width = 80;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem(" ", null, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Yes", true, -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // colSuppPOQty
            // 
            this.colSuppPOQty.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colSuppPOQty.AppearanceCell.Options.UseBackColor = true;
            this.colSuppPOQty.AppearanceCell.Options.UseTextOptions = true;
            this.colSuppPOQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colSuppPOQty.Caption = "PO\r\nQty\r\nin line";
            this.colSuppPOQty.DisplayFormat.FormatString = "#,0.##";
            this.colSuppPOQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSuppPOQty.FieldName = "SuppPOQty";
            this.colSuppPOQty.Name = "colSuppPOQty";
            this.colSuppPOQty.OptionsColumn.AllowEdit = false;
            this.colSuppPOQty.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppPOQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppPOQty.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppPOQty.OptionsFilter.AllowFilter = false;
            this.colSuppPOQty.Visible = true;
            this.colSuppPOQty.VisibleIndex = 3;
            this.colSuppPOQty.Width = 81;
            // 
            // colBalanceQty
            // 
            this.colBalanceQty.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colBalanceQty.AppearanceCell.Options.UseBackColor = true;
            this.colBalanceQty.Caption = "Bal Qty\r\nin line\r\n(Stk u/m)";
            this.colBalanceQty.DisplayFormat.FormatString = "#,0.##";
            this.colBalanceQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colBalanceQty.FieldName = "BalanceQty";
            this.colBalanceQty.Name = "colBalanceQty";
            this.colBalanceQty.OptionsColumn.AllowEdit = false;
            this.colBalanceQty.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colBalanceQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBalanceQty.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colBalanceQty.OptionsFilter.AllowFilter = false;
            this.colBalanceQty.Visible = true;
            this.colBalanceQty.VisibleIndex = 9;
            this.colBalanceQty.Width = 109;
            // 
            // colTotalReceivedQty
            // 
            this.colTotalReceivedQty.Caption = "Total\r\nReceived\r\nQty";
            this.colTotalReceivedQty.FieldName = "TotalReceivedQty";
            this.colTotalReceivedQty.Name = "colTotalReceivedQty";
            this.colTotalReceivedQty.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalReceivedQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalReceivedQty.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalReceivedQty.OptionsFilter.AllowFilter = false;
            // 
            // colPHQty
            // 
            this.colPHQty.Caption = "PH\r\nQty";
            this.colPHQty.FieldName = "PHQty";
            this.colPHQty.Name = "colPHQty";
            this.colPHQty.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colPHQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHQty.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colPHQty.OptionsFilter.AllowFilter = false;
            // 
            // colPastTtlGRNQty
            // 
            this.colPastTtlGRNQty.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colPastTtlGRNQty.AppearanceCell.Options.UseBackColor = true;
            this.colPastTtlGRNQty.Caption = "Past GRN\r\nRec\'d\r\nTtl Qty";
            this.colPastTtlGRNQty.DisplayFormat.FormatString = "#,0.##";
            this.colPastTtlGRNQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPastTtlGRNQty.FieldName = "PastTtlGRNQty";
            this.colPastTtlGRNQty.Name = "colPastTtlGRNQty";
            this.colPastTtlGRNQty.OptionsColumn.AllowEdit = false;
            this.colPastTtlGRNQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPastTtlGRNQty.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colPastTtlGRNQty.OptionsFilter.AllowFilter = false;
            this.colPastTtlGRNQty.Visible = true;
            this.colPastTtlGRNQty.VisibleIndex = 5;
            // 
            // colProjectNo
            // 
            this.colProjectNo.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.colProjectNo.AppearanceCell.Options.UseBackColor = true;
            this.colProjectNo.Caption = "Project\r\nNo";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colProjectNo.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colProjectNo.Width = 108;
            // 
            // HDOQuantityListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HDOQuantityListFrm";
            this.Size = new System.Drawing.Size(847, 336);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deETA.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deETA)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTimeEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit deETA;
        private DevExpress.XtraGrid.Columns.GridColumn colGRNNO;
        private DevExpress.XtraEditors.Repository.RepositoryItemTimeEdit repositoryItemTimeEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colPOLine;
        private DevExpress.XtraGrid.Columns.GridColumn colGRNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colConversationFactor;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppUom;
        private DevExpress.XtraGrid.Columns.GridColumn colPHUom;
        private DevExpress.XtraGrid.Columns.GridColumn colQtyCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppPOQty;
        private DevExpress.XtraGrid.Columns.GridColumn colBalanceQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalReceivedQty;
        private DevExpress.XtraGrid.Columns.GridColumn colPHQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
        private DevExpress.XtraGrid.Columns.GridColumn colPastTtlGRNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
    }
}
