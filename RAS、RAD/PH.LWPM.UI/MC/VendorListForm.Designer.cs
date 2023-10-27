namespace PH.LWPM.UI.MC
{
    partial class VendorListForm
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
            this.colCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName_TW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBeneficiary = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colManufacturer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentTerm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShortName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCoordinator = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1228, 404);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCode,
            this.colName_TW,
            this.colName_EN,
            this.colBeneficiary,
            this.colManufacturer,
            this.colPaymentTerm,
            this.colIncoterms,
            this.colRemark,
            this.colFlag,
            this.colShortName,
            this.colCoordinator});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Vendor);
            // 
            // colCode
            // 
            this.colCode.Caption = "Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.VisibleIndex = 0;
            // 
            // colName_TW
            // 
            this.colName_TW.Caption = "Name(TW)";
            this.colName_TW.FieldName = "Name_TW";
            this.colName_TW.Name = "colName_TW";
            this.colName_TW.Visible = true;
            this.colName_TW.VisibleIndex = 2;
            this.colName_TW.Width = 191;
            // 
            // colBeneficiary
            // 
            this.colBeneficiary.Caption = "Beneficiary";
            this.colBeneficiary.FieldName = "Beneficiary";
            this.colBeneficiary.Name = "colBeneficiary";
            this.colBeneficiary.Visible = true;
            this.colBeneficiary.VisibleIndex = 4;
            this.colBeneficiary.Width = 150;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 8;
            this.colRemark.Width = 150;
            // 
            // colManufacturer
            // 
            this.colManufacturer.Caption = "Manufacturer";
            this.colManufacturer.FieldName = "Manufacturer";
            this.colManufacturer.Name = "colManufacturer";
            this.colManufacturer.Visible = true;
            this.colManufacturer.VisibleIndex = 5;
            this.colManufacturer.Width = 150;
            // 
            // colName_EN
            // 
            this.colName_EN.Caption = "Name(EN)";
            this.colName_EN.FieldName = "Name_EN";
            this.colName_EN.Name = "colName_EN";
            this.colName_EN.Visible = true;
            this.colName_EN.VisibleIndex = 3;
            this.colName_EN.Width = 164;
            // 
            // colPaymentTerm
            // 
            this.colPaymentTerm.Caption = "Payment Term";
            this.colPaymentTerm.FieldName = "PaymentTerm";
            this.colPaymentTerm.Name = "colPaymentTerm";
            this.colPaymentTerm.Visible = true;
            this.colPaymentTerm.VisibleIndex = 6;
            this.colPaymentTerm.Width = 120;
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.Visible = true;
            this.colIncoterms.VisibleIndex = 7;
            this.colIncoterms.Width = 120;
            // 
            // colFlag
            // 
            this.colFlag.Caption = "Vendor Type";
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 10;
            this.colFlag.Width = 120;
            // 
            // colShortName
            // 
            this.colShortName.Caption = "Short Name";
            this.colShortName.FieldName = "ShortName";
            this.colShortName.Name = "colShortName";
            this.colShortName.Visible = true;
            this.colShortName.VisibleIndex = 1;
            this.colShortName.Width = 146;
            // 
            // colCoordinator
            // 
            this.colCoordinator.Caption = "Coordinator";
            this.colCoordinator.FieldName = "Coordinator";
            this.colCoordinator.Name = "colCoordinator";
            this.colCoordinator.Visible = true;
            this.colCoordinator.VisibleIndex = 9;
            this.colCoordinator.Width = 85;
            // 
            // VendorListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "VendorListForm";
            this.Size = new System.Drawing.Size(1228, 431);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCode;
        private DevExpress.XtraGrid.Columns.GridColumn colName_TW;
        private DevExpress.XtraGrid.Columns.GridColumn colName_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colBeneficiary;
        private DevExpress.XtraGrid.Columns.GridColumn colManufacturer;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentTerm;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colShortName;
        private DevExpress.XtraGrid.Columns.GridColumn colCoordinator;



    }
}
