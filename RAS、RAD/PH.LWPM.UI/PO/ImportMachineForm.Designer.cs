namespace PH.LWPM.UI.PO
{
    partial class ImportMachineForm
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
            this.gridMachine = new DevExpress.XtraGrid.GridControl();
            this.gridSelect = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendorName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colModel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrand = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTypeDesc_TW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTypeDesc_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridMachine)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridSelect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridMachine
            // 
            this.gridMachine.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.gridMachine.EmbeddedNavigator.Name = "";
            this.gridMachine.Location = new System.Drawing.Point(0, 0);
            this.gridMachine.MainView = this.gridSelect;
            this.gridMachine.Name = "gridMachine";
            this.gridMachine.Size = new System.Drawing.Size(1008, 376);
            this.gridMachine.TabIndex = 0;
            this.gridMachine.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridSelect});
            // 
            // gridSelect
            // 
            this.gridSelect.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCheckFlag,
            this.colVendorName,
            this.colTypeCode,
            this.colModel,
            this.colHSCode,
            this.colBrand,
            this.colTypeDesc_TW,
            this.colTypeDesc_EN,
            this.colCurrency,
            this.colPrice,
            this.colVendorCode});
            this.gridSelect.GridControl = this.gridMachine;
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
            this.colCheckFlag.Width = 28;
            // 
            // colVendorName
            // 
            this.colVendorName.Caption = "Vendor";
            this.colVendorName.FieldName = "VendorName";
            this.colVendorName.Name = "colVendorName";
            this.colVendorName.Visible = true;
            this.colVendorName.VisibleIndex = 1;
            this.colVendorName.Width = 126;
            // 
            // colTypeCode
            // 
            this.colTypeCode.Caption = "TypeCode";
            this.colTypeCode.FieldName = "TypeCode";
            this.colTypeCode.Name = "colTypeCode";
            this.colTypeCode.OptionsColumn.AllowEdit = false;
            this.colTypeCode.Visible = true;
            this.colTypeCode.VisibleIndex = 2;
            this.colTypeCode.Width = 72;
            // 
            // colModel
            // 
            this.colModel.Caption = "Model";
            this.colModel.FieldName = "Model";
            this.colModel.Name = "colModel";
            this.colModel.OptionsColumn.AllowEdit = false;
            this.colModel.Visible = true;
            this.colModel.VisibleIndex = 3;
            this.colModel.Width = 107;
            // 
            // colHSCode
            // 
            this.colHSCode.Caption = "H.S Code";
            this.colHSCode.FieldName = "HSCode";
            this.colHSCode.Name = "colHSCode";
            this.colHSCode.OptionsColumn.AllowEdit = false;
            this.colHSCode.Visible = true;
            this.colHSCode.VisibleIndex = 4;
            this.colHSCode.Width = 107;
            // 
            // colBrand
            // 
            this.colBrand.Caption = "Brand";
            this.colBrand.FieldName = "Brand";
            this.colBrand.Name = "colBrand";
            this.colBrand.OptionsColumn.AllowEdit = false;
            this.colBrand.Visible = true;
            this.colBrand.VisibleIndex = 5;
            this.colBrand.Width = 90;
            // 
            // colTypeDesc_TW
            // 
            this.colTypeDesc_TW.Caption = "TypeDesc_TW";
            this.colTypeDesc_TW.FieldName = "TypeDesc_TW";
            this.colTypeDesc_TW.Name = "colTypeDesc_TW";
            this.colTypeDesc_TW.OptionsColumn.AllowEdit = false;
            this.colTypeDesc_TW.Visible = true;
            this.colTypeDesc_TW.VisibleIndex = 6;
            this.colTypeDesc_TW.Width = 156;
            // 
            // colTypeDesc_EN
            // 
            this.colTypeDesc_EN.Caption = "TypeDesc_EN";
            this.colTypeDesc_EN.FieldName = "TypeDesc_EN";
            this.colTypeDesc_EN.Name = "colTypeDesc_EN";
            this.colTypeDesc_EN.OptionsColumn.AllowEdit = false;
            this.colTypeDesc_EN.Visible = true;
            this.colTypeDesc_EN.VisibleIndex = 7;
            this.colTypeDesc_EN.Width = 182;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.OptionsColumn.AllowEdit = false;
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 8;
            this.colCurrency.Width = 61;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.OptionsColumn.AllowEdit = false;
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 9;
            this.colPrice.Width = 58;
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "VendorCode";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
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
            // ImportMachineForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 432);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.gridMachine);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ImportMachineForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Import Machine";
            ((System.ComponentModel.ISupportInitialize)(this.gridMachine)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridSelect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridMachine;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.Columns.GridColumn colTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colModel;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colBrand;
        private DevExpress.XtraGrid.Columns.GridColumn colTypeDesc_TW;
        private DevExpress.XtraGrid.Columns.GridColumn colTypeDesc_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        protected DevExpress.XtraGrid.Views.Grid.GridView gridSelect;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorName;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorCode;
    }
}