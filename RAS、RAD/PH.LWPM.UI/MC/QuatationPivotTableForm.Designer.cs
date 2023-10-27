namespace PH.LWPM.UI.MC
{
    partial class QuatationPivotTableForm
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
            this.pivotGridControl1 = new DevExpress.XtraPivotGrid.PivotGridControl();
            this.fieldBeneficiary = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldTypeCode = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldMachineTypeNameEN = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldVendor = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldPrice = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldModel = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldTermPayment = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldTermDelivery = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldMachineTypeNameTW = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldHSCode = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldDTQuatation = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldDTEffective = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldCurrency = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldManufacturer = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldDeptUsing = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldQuaNo = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldTargetQty = new DevExpress.XtraPivotGrid.PivotGridField();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // pivotGridControl1
            // 
            this.pivotGridControl1.Cursor = System.Windows.Forms.Cursors.Default;
            this.pivotGridControl1.DataSource = this.bindingSource;
            this.pivotGridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pivotGridControl1.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.fieldVendor,
            this.fieldManufacturer,
            this.fieldBeneficiary,
            this.fieldDeptUsing,
            this.fieldTypeCode,
            this.fieldModel,
            this.fieldHSCode,
            this.fieldMachineTypeNameEN,
            this.fieldMachineTypeNameTW,
            this.fieldTargetQty,
            this.fieldCurrency,
            this.fieldPrice,
            this.fieldDTQuatation,
            this.fieldQuaNo,
            this.fieldDTEffective,
            this.fieldTermPayment,
            this.fieldTermDelivery});
            this.pivotGridControl1.Location = new System.Drawing.Point(0, 0);
            this.pivotGridControl1.Name = "pivotGridControl1";
            this.pivotGridControl1.OptionsBehavior.HorizontalScrolling = DevExpress.XtraPivotGrid.PivotGridScrolling.Control;
            this.pivotGridControl1.OptionsCustomization.AllowExpand = false;
            this.pivotGridControl1.OptionsView.ShowColumnGrandTotals = false;
            this.pivotGridControl1.OptionsView.ShowColumnTotals = false;
            this.pivotGridControl1.OptionsView.ShowRowGrandTotals = false;
            this.pivotGridControl1.OptionsView.ShowRowTotals = false;
            this.pivotGridControl1.Size = new System.Drawing.Size(1201, 373);
            this.pivotGridControl1.TabIndex = 0;
            // 
            // fieldBeneficiary
            // 
            this.fieldBeneficiary.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldBeneficiary.AreaIndex = 2;
            this.fieldBeneficiary.Caption = "LC Beneficiary";
            this.fieldBeneficiary.FieldName = "Beneficiary";
            this.fieldBeneficiary.Name = "fieldBeneficiary";
            // 
            // fieldTypeCode
            // 
            this.fieldTypeCode.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTypeCode.AreaIndex = 4;
            this.fieldTypeCode.Caption = "M/C Type";
            this.fieldTypeCode.FieldName = "TypeCode";
            this.fieldTypeCode.Name = "fieldTypeCode";
            // 
            // fieldMachineTypeNameEN
            // 
            this.fieldMachineTypeNameEN.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldMachineTypeNameEN.AreaIndex = 7;
            this.fieldMachineTypeNameEN.Caption = "Type Description (Eng)";
            this.fieldMachineTypeNameEN.FieldName = "MachineTypeNameEN";
            this.fieldMachineTypeNameEN.Name = "fieldMachineTypeNameEN";
            // 
            // fieldVendor
            // 
            this.fieldVendor.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldVendor.AreaIndex = 0;
            this.fieldVendor.Caption = "Vendor";
            this.fieldVendor.FieldName = "VendorNameTW";
            this.fieldVendor.Name = "fieldVendor";
            // 
            // fieldPrice
            // 
            this.fieldPrice.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldPrice.AreaIndex = 11;
            this.fieldPrice.Caption = "Unit Px (US$)";
            this.fieldPrice.FieldName = "Price";
            this.fieldPrice.Name = "fieldPrice";
            // 
            // fieldModel
            // 
            this.fieldModel.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldModel.AreaIndex = 5;
            this.fieldModel.Caption = "Model No.";
            this.fieldModel.FieldName = "Model";
            this.fieldModel.Name = "fieldModel";
            // 
            // fieldTermPayment
            // 
            this.fieldTermPayment.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTermPayment.AreaIndex = 15;
            this.fieldTermPayment.Caption = "Payment Term";
            this.fieldTermPayment.FieldName = "Term_Payment";
            this.fieldTermPayment.Name = "fieldTermPayment";
            // 
            // fieldTermDelivery
            // 
            this.fieldTermDelivery.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTermDelivery.AreaIndex = 16;
            this.fieldTermDelivery.Caption = "Incoterms";
            this.fieldTermDelivery.FieldName = "Term_Delivery";
            this.fieldTermDelivery.Name = "fieldTermDelivery";
            // 
            // fieldMachineTypeNameTW
            // 
            this.fieldMachineTypeNameTW.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldMachineTypeNameTW.AreaIndex = 8;
            this.fieldMachineTypeNameTW.Caption = "Type Description (Local)";
            this.fieldMachineTypeNameTW.FieldName = "MachineTypeNameTW";
            this.fieldMachineTypeNameTW.Name = "fieldMachineTypeNameTW";
            // 
            // fieldHSCode
            // 
            this.fieldHSCode.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldHSCode.AreaIndex = 6;
            this.fieldHSCode.Caption = "H.S. Code";
            this.fieldHSCode.FieldName = "HSCode";
            this.fieldHSCode.Name = "fieldHSCode";
            // 
            // fieldDTQuatation
            // 
            this.fieldDTQuatation.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldDTQuatation.AreaIndex = 12;
            this.fieldDTQuatation.Caption = "Issued Date";
            this.fieldDTQuatation.FieldName = "DT_Quatation";
            this.fieldDTQuatation.Name = "fieldDTQuatation";
            this.fieldDTQuatation.ValueFormat.FormatString = "d";
            this.fieldDTQuatation.ValueFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            // 
            // fieldDTEffective
            // 
            this.fieldDTEffective.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldDTEffective.AreaIndex = 14;
            this.fieldDTEffective.Caption = "Effective Date";
            this.fieldDTEffective.FieldName = "DT_Effective";
            this.fieldDTEffective.Name = "fieldDTEffective";
            this.fieldDTEffective.UnboundFieldName = "fieldDTEffective";
            this.fieldDTEffective.ValueFormat.FormatString = "d";
            this.fieldDTEffective.ValueFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            // 
            // fieldCurrency
            // 
            this.fieldCurrency.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldCurrency.AreaIndex = 10;
            this.fieldCurrency.Caption = "Curr";
            this.fieldCurrency.FieldName = "Currency";
            this.fieldCurrency.Name = "fieldCurrency";
            // 
            // fieldManufacturer
            // 
            this.fieldManufacturer.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldManufacturer.AreaIndex = 1;
            this.fieldManufacturer.Caption = "MFR";
            this.fieldManufacturer.FieldName = "Manufacturer";
            this.fieldManufacturer.Name = "fieldManufacturer";
            // 
            // fieldDeptUsing
            // 
            this.fieldDeptUsing.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldDeptUsing.AreaIndex = 3;
            this.fieldDeptUsing.Caption = "M/C Loc.";
            this.fieldDeptUsing.FieldName = "DeptUsing";
            this.fieldDeptUsing.Name = "fieldDeptUsing";
            // 
            // fieldQuaNo
            // 
            this.fieldQuaNo.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldQuaNo.AreaIndex = 13;
            this.fieldQuaNo.Caption = "Quotation No.";
            this.fieldQuaNo.FieldName = "QuaNo";
            this.fieldQuaNo.Name = "fieldQuaNo";
            // 
            // fieldTargetQty
            // 
            this.fieldTargetQty.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTargetQty.AreaIndex = 9;
            this.fieldTargetQty.Caption = "Proposed Qty";
            this.fieldTargetQty.FieldName = "TargetQty";
            this.fieldTargetQty.Name = "fieldTargetQty";
            // 
            // bindingSource
            // 
            this.bindingSource.DataSource = typeof(PH.LWPM.BO.QuatationInfo);
            // 
            // QuatationPivotTableForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pivotGridControl1);
            this.Name = "QuatationPivotTableForm";
            this.Size = new System.Drawing.Size(1201, 373);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraPivotGrid.PivotGridControl pivotGridControl1;
        private System.Windows.Forms.BindingSource bindingSource;
        private DevExpress.XtraPivotGrid.PivotGridField fieldBeneficiary;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTypeCode;
        private DevExpress.XtraPivotGrid.PivotGridField fieldMachineTypeNameEN;
        private DevExpress.XtraPivotGrid.PivotGridField fieldVendor;
        private DevExpress.XtraPivotGrid.PivotGridField fieldPrice;
        private DevExpress.XtraPivotGrid.PivotGridField fieldModel;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTermPayment;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTermDelivery;
        private DevExpress.XtraPivotGrid.PivotGridField fieldMachineTypeNameTW;
        private DevExpress.XtraPivotGrid.PivotGridField fieldHSCode;
        private DevExpress.XtraPivotGrid.PivotGridField fieldDTQuatation;
        private DevExpress.XtraPivotGrid.PivotGridField fieldCurrency;
        private DevExpress.XtraPivotGrid.PivotGridField fieldManufacturer;
        private DevExpress.XtraPivotGrid.PivotGridField fieldDeptUsing;
        private DevExpress.XtraPivotGrid.PivotGridField fieldQuaNo;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTargetQty;
        private DevExpress.XtraPivotGrid.PivotGridField fieldDTEffective;
    }
}
