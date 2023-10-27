namespace PH.HDO.UI
{
    partial class IDInvoiceListFrm
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
            this.colHDO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colInvoice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppliers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonImport = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonImport,
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonImport, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(988, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHDO,
            this.colID,
            this.colInvoice,
            this.colMaterial,
            this.colProjectNo,
            this.colSuppliers,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colHDO
            // 
            this.colHDO.AppearanceCell.Options.UseTextOptions = true;
            this.colHDO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colHDO.Caption = "HDO#";
            this.colHDO.FieldName = "HDO";
            this.colHDO.Name = "colHDO";
            this.colHDO.Visible = true;
            this.colHDO.VisibleIndex = 0;
            this.colHDO.Width = 96;
            // 
            // colID
            // 
            this.colID.Caption = "ID#";
            this.colID.FieldName = "ID";
            this.colID.Name = "colID";
            this.colID.Visible = true;
            this.colID.VisibleIndex = 1;
            this.colID.Width = 104;
            // 
            // colInvoice
            // 
            this.colInvoice.Caption = "Invoice#";
            this.colInvoice.FieldName = "Invoice";
            this.colInvoice.Name = "colInvoice";
            this.colInvoice.Visible = true;
            this.colInvoice.VisibleIndex = 2;
            this.colInvoice.Width = 122;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 6;
            this.colRemark.Width = 161;
            // 
            // colMaterial
            // 
            this.colMaterial.Caption = "Material";
            this.colMaterial.FieldName = "Material";
            this.colMaterial.Name = "colMaterial";
            this.colMaterial.Visible = true;
            this.colMaterial.VisibleIndex = 3;
            this.colMaterial.Width = 99;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "ProjectNo";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 4;
            this.colProjectNo.Width = 110;
            // 
            // colSuppliers
            // 
            this.colSuppliers.Caption = "Suppliers";
            this.colSuppliers.FieldName = "Suppliers";
            this.colSuppliers.Name = "colSuppliers";
            this.colSuppliers.Visible = true;
            this.colSuppliers.VisibleIndex = 5;
            this.colSuppliers.Width = 119;
            // 
            // barButtonImport
            // 
            this.barButtonImport.Caption = "ImportIdInvoice";
            this.barButtonImport.Glyph = global::PH.HDO.UI.Properties.Resources.plugin_add;
            this.barButtonImport.Id = 60;
            this.barButtonImport.Name = "barButtonImport";
            this.barButtonImport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonImport_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Input From Excel";
            this.barButtonItem1.Id = 61;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // IDInvoiceListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "IDInvoiceListFrm";
            this.Size = new System.Drawing.Size(988, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHDO;
        private DevExpress.XtraGrid.Columns.GridColumn colID;
        private DevExpress.XtraGrid.Columns.GridColumn colInvoice;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterial;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppliers;
        private DevExpress.XtraBars.BarButtonItem barButtonImport;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
    }
}
