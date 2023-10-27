namespace PH.HDO.UI.GRN
{
    partial class HDOHandlingDataForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.colHDONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReleasedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReleasedBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransferredDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransferredBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustDeclarationNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barQueryInfomation = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barQueryInfomation});
            this.objbarManager.MaxItemId = 61;
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
            this.objListGridControl.Size = new System.Drawing.Size(841, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHDONo,
            this.colReleasedDate,
            this.colReleasedBy,
            this.colTransferredDate,
            this.colTransferredBy,
            this.colCustDeclarationNo});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.HDOHandling);
            // 
            // colHDONo
            // 
            this.colHDONo.Caption = "HDO No.";
            this.colHDONo.FieldName = "HDONo";
            this.colHDONo.Name = "colHDONo";
            this.colHDONo.OptionsColumn.AllowEdit = false;
            this.colHDONo.Visible = true;
            this.colHDONo.VisibleIndex = 0;
            this.colHDONo.Width = 83;
            // 
            // colReleasedDate
            // 
            this.colReleasedDate.Caption = "Released Date";
            this.colReleasedDate.FieldName = "ReleasedDate";
            this.colReleasedDate.Name = "colReleasedDate";
            this.colReleasedDate.OptionsColumn.AllowEdit = false;
            this.colReleasedDate.Width = 100;
            // 
            // colReleasedBy
            // 
            this.colReleasedBy.Caption = "Released By";
            this.colReleasedBy.FieldName = "ReleasedBy";
            this.colReleasedBy.Name = "colReleasedBy";
            this.colReleasedBy.OptionsColumn.AllowEdit = false;
            this.colReleasedBy.Width = 87;
            // 
            // colTransferredDate
            // 
            this.colTransferredDate.Caption = "Transferred Date";
            this.colTransferredDate.FieldName = "TransferredDate";
            this.colTransferredDate.Name = "colTransferredDate";
            this.colTransferredDate.OptionsColumn.AllowEdit = false;
            this.colTransferredDate.Width = 115;
            // 
            // colTransferredBy
            // 
            this.colTransferredBy.Caption = "Transferred By";
            this.colTransferredBy.FieldName = "TransferredBy";
            this.colTransferredBy.Name = "colTransferredBy";
            this.colTransferredBy.OptionsColumn.AllowEdit = false;
            this.colTransferredBy.Width = 102;
            // 
            // colCustDeclarationNo
            // 
            this.colCustDeclarationNo.Caption = "ˆóêP†ÎÌ–";
            this.colCustDeclarationNo.FieldName = "CustDeclarationNo";
            this.colCustDeclarationNo.Name = "colCustDeclarationNo";
            this.colCustDeclarationNo.OptionsColumn.AllowEdit = false;
            this.colCustDeclarationNo.Visible = true;
            this.colCustDeclarationNo.VisibleIndex = 1;
            this.colCustDeclarationNo.Width = 322;
            // 
            // barQueryInfomation
            // 
            this.barQueryInfomation.Caption = "Query Infomation";
            this.barQueryInfomation.Id = 60;
            this.barQueryInfomation.Name = "barQueryInfomation";
            // 
            // HDOHandlingDataForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HDOHandlingDataForm";
            this.Size = new System.Drawing.Size(841, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHDONo;
        private DevExpress.XtraGrid.Columns.GridColumn colReleasedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colReleasedBy;
        private DevExpress.XtraGrid.Columns.GridColumn colTransferredDate;
        private DevExpress.XtraGrid.Columns.GridColumn colTransferredBy;
        private DevExpress.XtraGrid.Columns.GridColumn colCustDeclarationNo;
        private DevExpress.XtraBars.BarButtonItem barQueryInfomation;
    }
}