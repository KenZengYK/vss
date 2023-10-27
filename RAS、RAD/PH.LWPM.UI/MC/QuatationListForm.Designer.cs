namespace PH.LWPM.UI.MC
{
    partial class QuatationListForm
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
            this.colQuaNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPayment = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDelivery = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDT_Delivery = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colETA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQuaDT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcModel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTypeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTarget = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRecNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcEffective = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMFT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTarPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFinalDelivery = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFinalETA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcAgreePrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTargetDelivery = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTargetETA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeptUsing = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(939, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colQuaNo,
            this.colTypeCode,
            this.colVendor,
            this.colPrice,
            this.colPayment,
            this.colDelivery,
            this.colQuaDT,
            this.colDT_Delivery,
            this.colETA,
            this.gcModel,
            this.gcTypeDesc,
            this.gcActive,
            this.gcTarget,
            this.gcRecNo,
            this.gcEffective,
            this.gcMFT,
            this.gcCurrency,
            this.gcTarPrice,
            this.gcFinalDelivery,
            this.gcFinalETA,
            this.gcAgreePrice,
            this.gcTargetDelivery,
            this.gcTargetETA,
            this.colDeptUsing});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colQuaNo
            // 
            this.colQuaNo.Caption = "Quotation No.";
            this.colQuaNo.FieldName = "QuaNo";
            this.colQuaNo.Name = "colQuaNo";
            this.colQuaNo.Visible = true;
            this.colQuaNo.VisibleIndex = 1;
            this.colQuaNo.Width = 99;
            // 
            // colTypeCode
            // 
            this.colTypeCode.Caption = "M/C Type";
            this.colTypeCode.FieldName = "TypeCode";
            this.colTypeCode.Name = "colTypeCode";
            this.colTypeCode.Visible = true;
            this.colTypeCode.VisibleIndex = 4;
            this.colTypeCode.Width = 77;
            // 
            // colVendor
            // 
            this.colVendor.Caption = "Vendor";
            this.colVendor.FieldName = "Vendor";
            this.colVendor.Name = "colVendor";
            this.colVendor.Visible = true;
            this.colVendor.VisibleIndex = 7;
            this.colVendor.Width = 114;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Qtn Px";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 12;
            this.colPrice.Width = 64;
            // 
            // colPayment
            // 
            this.colPayment.Caption = "Payment term";
            this.colPayment.FieldName = "Term_Payment";
            this.colPayment.Name = "colPayment";
            this.colPayment.Visible = true;
            this.colPayment.VisibleIndex = 14;
            this.colPayment.Width = 123;
            // 
            // colDelivery
            // 
            this.colDelivery.Caption = "Delivery Term";
            this.colDelivery.FieldName = "Term_Delivery";
            this.colDelivery.Name = "colDelivery";
            this.colDelivery.Visible = true;
            this.colDelivery.VisibleIndex = 15;
            this.colDelivery.Width = 104;
            // 
            // colDT_Delivery
            // 
            this.colDT_Delivery.Caption = "Proposed Del Date";
            this.colDT_Delivery.FieldName = "DT_Delivery";
            this.colDT_Delivery.Name = "colDT_Delivery";
            this.colDT_Delivery.Visible = true;
            this.colDT_Delivery.VisibleIndex = 17;
            this.colDT_Delivery.Width = 122;
            // 
            // colETA
            // 
            this.colETA.Caption = "Proposed Stock In Date";
            this.colETA.FieldName = "DT_ETA";
            this.colETA.Name = "colETA";
            this.colETA.Visible = true;
            this.colETA.VisibleIndex = 20;
            this.colETA.Width = 121;
            // 
            // colQuaDT
            // 
            this.colQuaDT.Caption = "Quotation Date";
            this.colQuaDT.FieldName = "DT_Quatation";
            this.colQuaDT.Name = "colQuaDT";
            this.colQuaDT.Visible = true;
            this.colQuaDT.VisibleIndex = 0;
            this.colQuaDT.Width = 112;
            // 
            // gcModel
            // 
            this.gcModel.Caption = "Model";
            this.gcModel.FieldName = "Model";
            this.gcModel.Name = "gcModel";
            this.gcModel.Visible = true;
            this.gcModel.VisibleIndex = 9;
            this.gcModel.Width = 76;
            // 
            // gcTypeDesc
            // 
            this.gcTypeDesc.Caption = "Description";
            this.gcTypeDesc.FieldName = "TypeDesc";
            this.gcTypeDesc.Name = "gcTypeDesc";
            this.gcTypeDesc.Visible = true;
            this.gcTypeDesc.VisibleIndex = 5;
            this.gcTypeDesc.Width = 182;
            // 
            // gcActive
            // 
            this.gcActive.Caption = "Active";
            this.gcActive.FieldName = "Active";
            this.gcActive.Name = "gcActive";
            this.gcActive.Visible = true;
            this.gcActive.VisibleIndex = 23;
            // 
            // gcTarget
            // 
            this.gcTarget.Caption = "Target Qty";
            this.gcTarget.FieldName = "TargetQty";
            this.gcTarget.Name = "gcTarget";
            this.gcTarget.Visible = true;
            this.gcTarget.VisibleIndex = 6;
            this.gcTarget.Width = 82;
            // 
            // gcRecNo
            // 
            this.gcRecNo.Caption = "Rev No.";
            this.gcRecNo.FieldName = "RevNo";
            this.gcRecNo.Name = "gcRecNo";
            this.gcRecNo.Visible = true;
            this.gcRecNo.VisibleIndex = 2;
            // 
            // gcEffective
            // 
            this.gcEffective.Caption = "Effective Date";
            this.gcEffective.FieldName = "DT_Effective";
            this.gcEffective.Name = "gcEffective";
            this.gcEffective.Visible = true;
            this.gcEffective.VisibleIndex = 3;
            this.gcEffective.Width = 108;
            // 
            // gcMFT
            // 
            this.gcMFT.Caption = "Manufacturer";
            this.gcMFT.FieldName = "Manufacturer";
            this.gcMFT.Name = "gcMFT";
            this.gcMFT.Visible = true;
            this.gcMFT.VisibleIndex = 8;
            this.gcMFT.Width = 95;
            // 
            // gcCurrency
            // 
            this.gcCurrency.Caption = "Curr";
            this.gcCurrency.FieldName = "Currency";
            this.gcCurrency.Name = "gcCurrency";
            this.gcCurrency.Visible = true;
            this.gcCurrency.VisibleIndex = 10;
            this.gcCurrency.Width = 45;
            // 
            // gcTarPrice
            // 
            this.gcTarPrice.Caption = "Target Px";
            this.gcTarPrice.FieldName = "TargetPrice";
            this.gcTarPrice.Name = "gcTarPrice";
            this.gcTarPrice.Visible = true;
            this.gcTarPrice.VisibleIndex = 11;
            this.gcTarPrice.Width = 91;
            // 
            // gcFinalDelivery
            // 
            this.gcFinalDelivery.Caption = "Agreed Del Date";
            this.gcFinalDelivery.FieldName = "DT_FinalDelivery";
            this.gcFinalDelivery.Name = "gcFinalDelivery";
            this.gcFinalDelivery.Visible = true;
            this.gcFinalDelivery.VisibleIndex = 18;
            this.gcFinalDelivery.Width = 111;
            // 
            // gcFinalETA
            // 
            this.gcFinalETA.Caption = "Agreed Stock In Date";
            this.gcFinalETA.FieldName = "DT_FinalETA";
            this.gcFinalETA.Name = "gcFinalETA";
            this.gcFinalETA.Visible = true;
            this.gcFinalETA.VisibleIndex = 21;
            this.gcFinalETA.Width = 111;
            // 
            // gcAgreePrice
            // 
            this.gcAgreePrice.Caption = "Agreed Px";
            this.gcAgreePrice.FieldName = "AgreePrice";
            this.gcAgreePrice.Name = "gcAgreePrice";
            this.gcAgreePrice.Visible = true;
            this.gcAgreePrice.VisibleIndex = 13;
            this.gcAgreePrice.Width = 78;
            // 
            // gcTargetDelivery
            // 
            this.gcTargetDelivery.Caption = "Target Del Date";
            this.gcTargetDelivery.FieldName = "DT_TargetDelivery";
            this.gcTargetDelivery.Name = "gcTargetDelivery";
            this.gcTargetDelivery.Visible = true;
            this.gcTargetDelivery.VisibleIndex = 16;
            this.gcTargetDelivery.Width = 116;
            // 
            // gcTargetETA
            // 
            this.gcTargetETA.Caption = "Target Stock In  Date";
            this.gcTargetETA.FieldName = "DT_TargetETA";
            this.gcTargetETA.Name = "gcTargetETA";
            this.gcTargetETA.Visible = true;
            this.gcTargetETA.VisibleIndex = 19;
            this.gcTargetETA.Width = 141;
            // 
            // colDeptUsing
            // 
            this.colDeptUsing.Caption = "Using Departal";
            this.colDeptUsing.FieldName = "DeptUsing";
            this.colDeptUsing.Name = "colDeptUsing";
            this.colDeptUsing.Visible = true;
            this.colDeptUsing.VisibleIndex = 22;
            this.colDeptUsing.Width = 100;
            // 
            // QuatationListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QuatationListForm";
            this.Size = new System.Drawing.Size(939, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colQuaNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colVendor;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colPayment;
        private DevExpress.XtraGrid.Columns.GridColumn colDelivery;
        private DevExpress.XtraGrid.Columns.GridColumn colDT_Delivery;
        private DevExpress.XtraGrid.Columns.GridColumn colETA;
        private DevExpress.XtraGrid.Columns.GridColumn colQuaDT;
        private DevExpress.XtraGrid.Columns.GridColumn gcModel;
        private DevExpress.XtraGrid.Columns.GridColumn gcTypeDesc;
        private DevExpress.XtraGrid.Columns.GridColumn gcActive;
        private DevExpress.XtraGrid.Columns.GridColumn gcTarget;
        private DevExpress.XtraGrid.Columns.GridColumn gcRecNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcEffective;
        private DevExpress.XtraGrid.Columns.GridColumn gcMFT;
        private DevExpress.XtraGrid.Columns.GridColumn gcCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn gcTarPrice;
        private DevExpress.XtraGrid.Columns.GridColumn gcFinalDelivery;
        private DevExpress.XtraGrid.Columns.GridColumn gcFinalETA;
        private DevExpress.XtraGrid.Columns.GridColumn gcAgreePrice;
        private DevExpress.XtraGrid.Columns.GridColumn gcTargetDelivery;
        private DevExpress.XtraGrid.Columns.GridColumn gcTargetETA;
        private DevExpress.XtraGrid.Columns.GridColumn colDeptUsing;
    }
}