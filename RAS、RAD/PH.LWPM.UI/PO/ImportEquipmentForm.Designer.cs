namespace PH.LWPM.UI.PO
{
    partial class ImportEquipmentForm
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
            this.gridEquipment = new DevExpress.XtraGrid.GridControl();
            this.gridSelect = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCodeVendor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSpec = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrand = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItem_CN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItem_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridEquipment)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridSelect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridEquipment
            // 
            this.gridEquipment.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.gridEquipment.EmbeddedNavigator.Name = "";
            this.gridEquipment.Location = new System.Drawing.Point(0, 0);
            this.gridEquipment.MainView = this.gridSelect;
            this.gridEquipment.Name = "gridEquipment";
            this.gridEquipment.Size = new System.Drawing.Size(1008, 377);
            this.gridEquipment.TabIndex = 0;
            this.gridEquipment.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridSelect});
            // 
            // gridSelect
            // 
            this.gridSelect.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCheckFlag,
            this.colItemCode,
            this.colItemCodeVendor,
            this.colSpec,
            this.colHSCode,
            this.colBrand,
            this.colItem_CN,
            this.colItem_EN,
            this.colPrice});
            this.gridSelect.GridControl = this.gridEquipment;
            this.gridSelect.Name = "gridSelect";
            this.gridSelect.OptionsView.ShowGroupPanel = false;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.VisibleIndex = 0;
            this.colCheckFlag.Width = 29;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 1;
            this.colItemCode.Width = 134;
            // 
            // colItemCodeVendor
            // 
            this.colItemCodeVendor.Caption = "Vendor Item Code";
            this.colItemCodeVendor.FieldName = "ItemCodeVendor";
            this.colItemCodeVendor.Name = "colItemCodeVendor";
            this.colItemCodeVendor.OptionsColumn.AllowEdit = false;
            this.colItemCodeVendor.Visible = true;
            this.colItemCodeVendor.VisibleIndex = 2;
            this.colItemCodeVendor.Width = 123;
            // 
            // colSpec
            // 
            this.colSpec.Caption = "Spec";
            this.colSpec.FieldName = "Spec";
            this.colSpec.Name = "colSpec";
            this.colSpec.OptionsColumn.AllowEdit = false;
            this.colSpec.Visible = true;
            this.colSpec.VisibleIndex = 3;
            this.colSpec.Width = 105;
            // 
            // colHSCode
            // 
            this.colHSCode.Caption = "H.S Code";
            this.colHSCode.FieldName = "HSCode";
            this.colHSCode.Name = "colHSCode";
            this.colHSCode.OptionsColumn.AllowEdit = false;
            this.colHSCode.Visible = true;
            this.colHSCode.VisibleIndex = 4;
            this.colHSCode.Width = 105;
            // 
            // colBrand
            // 
            this.colBrand.Caption = "Brand";
            this.colBrand.FieldName = "Brand";
            this.colBrand.Name = "colBrand";
            this.colBrand.OptionsColumn.AllowEdit = false;
            this.colBrand.Visible = true;
            this.colBrand.VisibleIndex = 5;
            this.colBrand.Width = 87;
            // 
            // colItem_CN
            // 
            this.colItem_CN.Caption = "Item_CN";
            this.colItem_CN.FieldName = "Item_CN";
            this.colItem_CN.Name = "colItem_CN";
            this.colItem_CN.OptionsColumn.AllowEdit = false;
            this.colItem_CN.Visible = true;
            this.colItem_CN.VisibleIndex = 6;
            this.colItem_CN.Width = 154;
            // 
            // colItem_EN
            // 
            this.colItem_EN.Caption = "Item_EN";
            this.colItem_EN.FieldName = "Item_EN";
            this.colItem_EN.Name = "colItem_EN";
            this.colItem_EN.OptionsColumn.AllowEdit = false;
            this.colItem_EN.Visible = true;
            this.colItem_EN.VisibleIndex = 7;
            this.colItem_EN.Width = 179;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.OptionsColumn.AllowEdit = false;
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 8;
            this.colPrice.Width = 71;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnCancel);
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 376);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1008, 56);
            this.panelControl1.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(793, 18);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(689, 18);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // ImportEquipmentForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 432);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.gridEquipment);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ImportEquipmentForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Import Equipment";
            ((System.ComponentModel.ISupportInitialize)(this.gridEquipment)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridSelect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridEquipment;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCodeVendor;
        private DevExpress.XtraGrid.Columns.GridColumn colSpec;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colBrand;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_CN;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        protected DevExpress.XtraGrid.Views.Grid.GridView gridSelect;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
    }
}