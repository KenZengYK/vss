namespace PH.POPC.UI
{
    partial class POClassCodeForm
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
            this.components = new System.ComponentModel.Container();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colClassCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbClassCode = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colClassCodeENDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colClassCodeCNDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndCustCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitModePO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnCopy = new DevExpress.XtraBars.BarButtonItem();
            this.colSupplierReference = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbClassCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCopy});
            this.objbarManager.MaxItemId = 38;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.PODetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ricbClassCode});
            this.objListGridControl.Size = new System.Drawing.Size(1525, 465);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colItemCode,
            this.colPONO,
            this.colOrderLine,
            this.colProjectNo,
            this.colClassCode,
            this.colClassCodeENDesc,
            this.colClassCodeCNDesc,
            this.colPurchaseOfficer,
            this.colEndCustCode,
            this.colTeam,
            this.colIncoterms,
            this.colTransitModePO,
            this.colSupplier,
            this.colSupplierReference});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(870, 274, 208, 380);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsSelection.MultiSelect = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 1;
            this.colItemCode.Width = 115;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 0;
            this.colPONO.Width = 87;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "Order Line";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.Width = 80;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 3;
            this.colProjectNo.Width = 110;
            // 
            // colClassCode
            // 
            this.colClassCode.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.colClassCode.AppearanceCell.Options.UseBackColor = true;
            this.colClassCode.AppearanceCell.Options.UseTextOptions = true;
            this.colClassCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colClassCode.Caption = "Class Code";
            this.colClassCode.ColumnEdit = this.ricbClassCode;
            this.colClassCode.FieldName = "ClassCode";
            this.colClassCode.Name = "colClassCode";
            this.colClassCode.Visible = true;
            this.colClassCode.VisibleIndex = 4;
            this.colClassCode.Width = 90;
            // 
            // ricbClassCode
            // 
            this.ricbClassCode.AutoHeight = false;
            this.ricbClassCode.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbClassCode.DropDownRows = 8;
            this.ricbClassCode.Name = "ricbClassCode";
            this.ricbClassCode.NullText = "--";
            // 
            // colClassCodeENDesc
            // 
            this.colClassCodeENDesc.Caption = "ClassCodeENDesc";
            this.colClassCodeENDesc.FieldName = "ClassCodeENDesc";
            this.colClassCodeENDesc.Name = "colClassCodeENDesc";
            this.colClassCodeENDesc.OptionsColumn.AllowEdit = false;
            this.colClassCodeENDesc.Width = 182;
            // 
            // colClassCodeCNDesc
            // 
            this.colClassCodeCNDesc.AppearanceHeader.Options.UseTextOptions = true;
            this.colClassCodeCNDesc.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colClassCodeCNDesc.Caption = "Class Code Desc.";
            this.colClassCodeCNDesc.FieldName = "ClassCodeCNDesc";
            this.colClassCodeCNDesc.Name = "colClassCodeCNDesc";
            this.colClassCodeCNDesc.OptionsColumn.AllowEdit = false;
            this.colClassCodeCNDesc.Visible = true;
            this.colClassCodeCNDesc.VisibleIndex = 5;
            this.colClassCodeCNDesc.Width = 429;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = "Coordinator";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.colPurchaseOfficer.Visible = true;
            this.colPurchaseOfficer.VisibleIndex = 11;
            this.colPurchaseOfficer.Width = 106;
            // 
            // colEndCustCode
            // 
            this.colEndCustCode.Caption = "End Cust Code";
            this.colEndCustCode.FieldName = "EndCustCode";
            this.colEndCustCode.Name = "colEndCustCode";
            this.colEndCustCode.OptionsColumn.AllowEdit = false;
            this.colEndCustCode.Visible = true;
            this.colEndCustCode.VisibleIndex = 7;
            this.colEndCustCode.Width = 115;
            // 
            // colTeam
            // 
            this.colTeam.Caption = "Division";
            this.colTeam.FieldName = "Team";
            this.colTeam.Name = "colTeam";
            this.colTeam.OptionsColumn.AllowEdit = false;
            this.colTeam.Visible = true;
            this.colTeam.VisibleIndex = 10;
            this.colTeam.Width = 68;
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.OptionsColumn.AllowEdit = false;
            this.colIncoterms.Visible = true;
            this.colIncoterms.VisibleIndex = 9;
            // 
            // colTransitModePO
            // 
            this.colTransitModePO.Caption = "Transit Mode";
            this.colTransitModePO.FieldName = "TransitModePO";
            this.colTransitModePO.Name = "colTransitModePO";
            this.colTransitModePO.OptionsColumn.AllowEdit = false;
            this.colTransitModePO.Visible = true;
            this.colTransitModePO.VisibleIndex = 8;
            this.colTransitModePO.Width = 98;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supplier";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.OptionsColumn.AllowEdit = false;
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 6;
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopy)});
            this.popupMenu1.Manager = this.objbarManager;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // btnCopy
            // 
            this.btnCopy.Caption = "Copy";
            this.btnCopy.Id = 37;
            this.btnCopy.Name = "btnCopy";
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item Ref.";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.VisibleIndex = 2;
            this.colSupplierReference.Width = 139;
            // 
            // POClassCodeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POClassCodeForm";
            this.Size = new System.Drawing.Size(1525, 492);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbClassCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCode;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCodeENDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colClassCodeCNDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colPurchaseOfficer;
        private DevExpress.XtraGrid.Columns.GridColumn colEndCustCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTeam;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitModePO;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit ricbClassCode;
        private DevExpress.XtraBars.BarButtonItem btnCopy;
        private DevExpress.XtraBars.PopupMenu popupMenu1;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierReference;
    }
}
