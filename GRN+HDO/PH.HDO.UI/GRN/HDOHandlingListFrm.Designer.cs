namespace PH.HDO.UI
{
    partial class HDOHandlingListFrm
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
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colHDONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPlannedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPlannedBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.icbUser = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colReleasedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReleasedBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransferredDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransferredBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustDeclarationNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.icbUser)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1,
            this.icbUser});
            this.objListGridControl.Size = new System.Drawing.Size(881, 321);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHDONo,
            this.colPlannedDate,
            this.colPlannedBy,
            this.colReleasedDate,
            this.colReleasedBy,
            this.colTransferredDate,
            this.colTransferredBy,
            this.colCustDeclarationNo});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1054, 355, 216, 530);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.HDOHandling);
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
            // colHDONo
            // 
            this.colHDONo.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colHDONo.AppearanceCell.Options.UseBackColor = true;
            this.colHDONo.Caption = "HDO No.";
            this.colHDONo.FieldName = "HDONo";
            this.colHDONo.Name = "colHDONo";
            this.colHDONo.OptionsColumn.AllowEdit = false;
            this.colHDONo.Visible = true;
            this.colHDONo.VisibleIndex = 0;
            this.colHDONo.Width = 112;
            // 
            // colPlannedDate
            // 
            this.colPlannedDate.Caption = "Planned Date";
            this.colPlannedDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colPlannedDate.FieldName = "PlannedDate";
            this.colPlannedDate.Name = "colPlannedDate";
            this.colPlannedDate.Width = 113;
            // 
            // colPlannedBy
            // 
            this.colPlannedBy.Caption = "Planned By";
            this.colPlannedBy.ColumnEdit = this.icbUser;
            this.colPlannedBy.FieldName = "PlannedBy";
            this.colPlannedBy.Name = "colPlannedBy";
            this.colPlannedBy.Width = 109;
            // 
            // icbUser
            // 
            this.icbUser.AutoHeight = false;
            this.icbUser.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.icbUser.Items.AddRange(new object[] {
            "Sam Li",
            "Fred Au"});
            this.icbUser.Name = "icbUser";
            // 
            // colReleasedDate
            // 
            this.colReleasedDate.Caption = "Released Date";
            this.colReleasedDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colReleasedDate.FieldName = "ReleasedDate";
            this.colReleasedDate.Name = "colReleasedDate";
            this.colReleasedDate.Visible = true;
            this.colReleasedDate.VisibleIndex = 1;
            this.colReleasedDate.Width = 130;
            // 
            // colReleasedBy
            // 
            this.colReleasedBy.Caption = "Released By";
            this.colReleasedBy.ColumnEdit = this.icbUser;
            this.colReleasedBy.FieldName = "ReleasedBy";
            this.colReleasedBy.Name = "colReleasedBy";
            this.colReleasedBy.Visible = true;
            this.colReleasedBy.VisibleIndex = 2;
            this.colReleasedBy.Width = 132;
            // 
            // colTransferredDate
            // 
            this.colTransferredDate.Caption = "Transferred Date";
            this.colTransferredDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colTransferredDate.FieldName = "TransferredDate";
            this.colTransferredDate.Name = "colTransferredDate";
            this.colTransferredDate.Visible = true;
            this.colTransferredDate.VisibleIndex = 3;
            this.colTransferredDate.Width = 124;
            // 
            // colTransferredBy
            // 
            this.colTransferredBy.Caption = "Transferred By";
            this.colTransferredBy.ColumnEdit = this.icbUser;
            this.colTransferredBy.FieldName = "TransferredBy";
            this.colTransferredBy.Name = "colTransferredBy";
            this.colTransferredBy.Visible = true;
            this.colTransferredBy.VisibleIndex = 4;
            this.colTransferredBy.Width = 136;
            // 
            // colCustDeclarationNo
            // 
            this.colCustDeclarationNo.Caption = "報關單號";
            this.colCustDeclarationNo.FieldName = "CustDeclarationNo";
            this.colCustDeclarationNo.Name = "colCustDeclarationNo";
            this.colCustDeclarationNo.Visible = true;
            this.colCustDeclarationNo.VisibleIndex = 5;
            this.colCustDeclarationNo.Width = 150;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Query Information ";
            this.barButtonItem1.Id = 60;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // HDOHandlingListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HDOHandlingListFrm";
            this.Size = new System.Drawing.Size(881, 348);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.icbUser)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox icbUser;
        private DevExpress.XtraGrid.Columns.GridColumn colHDONo;
        private DevExpress.XtraGrid.Columns.GridColumn colPlannedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPlannedBy;
        private DevExpress.XtraGrid.Columns.GridColumn colReleasedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colReleasedBy;
        private DevExpress.XtraGrid.Columns.GridColumn colTransferredDate;
        private DevExpress.XtraGrid.Columns.GridColumn colTransferredBy;
        private DevExpress.XtraGrid.Columns.GridColumn colCustDeclarationNo;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
    }
}
