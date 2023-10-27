namespace PH.FabricInspection.UI.DebitNote
{
    partial class DebitNoteListForm
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
            this.colDNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentTerm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colAuditTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnitConvertRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppCode = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.btnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1190, 399);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDNNo,
            this.colRNNo,
            this.colAuditTeam,
            this.colIssueDate,
            this.colDueDate,
            this.colCreater,
            this.colCreateDate,
            this.colPaymentTerm,
            this.colCurrency,
            this.colPrice,
            this.colSupplierUnit,
            this.colUnitConvertRate,
            this.colSuppRef,
            this.colSuppCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.DebitNote);
            // 
            // colDNNo
            // 
            this.colDNNo.Caption = "DN#";
            this.colDNNo.FieldName = "DNNo";
            this.colDNNo.Name = "colDNNo";
            this.colDNNo.Visible = true;
            this.colDNNo.VisibleIndex = 0;
            this.colDNNo.Width = 72;
            // 
            // colRNNo
            // 
            this.colRNNo.Caption = "Audit#";
            this.colRNNo.FieldName = "AuditNo1";
            this.colRNNo.Name = "colRNNo";
            this.colRNNo.Visible = true;
            this.colRNNo.VisibleIndex = 1;
            this.colRNNo.Width = 108;
            // 
            // colIssueDate
            // 
            this.colIssueDate.Caption = "Issue Date";
            this.colIssueDate.FieldName = "IssueDate";
            this.colIssueDate.Name = "colIssueDate";
            this.colIssueDate.Visible = true;
            this.colIssueDate.VisibleIndex = 3;
            this.colIssueDate.Width = 98;
            // 
            // colDueDate
            // 
            this.colDueDate.Caption = "Due Date";
            this.colDueDate.FieldName = "DueDate";
            this.colDueDate.Name = "colDueDate";
            this.colDueDate.Visible = true;
            this.colDueDate.VisibleIndex = 4;
            this.colDueDate.Width = 74;
            // 
            // colCreater
            // 
            this.colCreater.Caption = "Creater";
            this.colCreater.FieldName = "Creater";
            this.colCreater.Name = "colCreater";
            this.colCreater.Visible = true;
            this.colCreater.VisibleIndex = 12;
            this.colCreater.Width = 62;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "Create Date";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 13;
            this.colCreateDate.Width = 88;
            // 
            // colPaymentTerm
            // 
            this.colPaymentTerm.Caption = "Payment Term";
            this.colPaymentTerm.FieldName = "PaymentTerm";
            this.colPaymentTerm.Name = "colPaymentTerm";
            this.colPaymentTerm.Visible = true;
            this.colPaymentTerm.VisibleIndex = 5;
            this.colPaymentTerm.Width = 103;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 6;
            this.colCurrency.Width = 70;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.DisplayFormat.FormatString = "n6";
            this.colPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 7;
            this.colPrice.Width = 90;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 60;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // colAuditTeam
            // 
            this.colAuditTeam.Caption = "Audit Team";
            this.colAuditTeam.FieldName = "AuditTeam";
            this.colAuditTeam.Name = "colAuditTeam";
            this.colAuditTeam.Visible = true;
            this.colAuditTeam.VisibleIndex = 2;
            this.colAuditTeam.Width = 86;
            // 
            // colSupplierUnit
            // 
            this.colSupplierUnit.Caption = "Supplier Unit";
            this.colSupplierUnit.FieldName = "SupplierUnit";
            this.colSupplierUnit.Name = "colSupplierUnit";
            this.colSupplierUnit.Visible = true;
            this.colSupplierUnit.VisibleIndex = 10;
            this.colSupplierUnit.Width = 91;
            // 
            // colUnitConvertRate
            // 
            this.colUnitConvertRate.Caption = "Convert Rate";
            this.colUnitConvertRate.FieldName = "UnitConvertRate";
            this.colUnitConvertRate.Name = "colUnitConvertRate";
            this.colUnitConvertRate.Visible = true;
            this.colUnitConvertRate.VisibleIndex = 11;
            this.colUnitConvertRate.Width = 94;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "SuppRef";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 9;
            this.colSuppRef.Width = 117;
            // 
            // colSuppCode
            // 
            this.colSuppCode.Caption = "Supp Code";
            this.colSuppCode.FieldName = "SuppCode";
            this.colSuppCode.Name = "colSuppCode";
            this.colSuppCode.Visible = true;
            this.colSuppCode.VisibleIndex = 8;
            this.colSuppCode.Width = 87;
            // 
            // DebitNoteListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DebitNoteListForm";
            this.Size = new System.Drawing.Size(1190, 426);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDNNo;
        private DevExpress.XtraGrid.Columns.GridColumn colRNNo;
        private DevExpress.XtraGrid.Columns.GridColumn colIssueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colDueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCreater;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentTerm;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditTeam;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colUnitConvertRate;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppCode;
    }
}
