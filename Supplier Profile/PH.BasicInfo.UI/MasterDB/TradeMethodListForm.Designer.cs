namespace PH.BasicInfo.UI.MasterDB
{
    partial class TradeMethodListForm
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
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeMethodEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeMethodCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPurchaseMethodEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPurchaseMethodCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentMethodEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentMethodCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrdnSite = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFtyBusinessModel = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1352, 410);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNo,
            this.colPrdnSite,
            this.colFtyBusinessModel,
            this.colTradeCode,
            this.colTradeMethodEN,
            this.colTradeMethodCN,
            this.colPurchaseMethodEN,
            this.colPurchaseMethodCN,
            this.colPaymentMethodEN,
            this.colPaymentMethodCN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TradeMethod);
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Seq#";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.VisibleIndex = 0;
            this.colSeqNo.Width = 52;
            // 
            // colTradeCode
            // 
            this.colTradeCode.Caption = "Trade Cde";
            this.colTradeCode.FieldName = "TradeCode";
            this.colTradeCode.Name = "colTradeCode";
            this.colTradeCode.Visible = true;
            this.colTradeCode.VisibleIndex = 3;
            this.colTradeCode.Width = 79;
            // 
            // colTradeMethodEN
            // 
            this.colTradeMethodEN.Caption = "Trade Method (EN)";
            this.colTradeMethodEN.FieldName = "TradeMethodEN";
            this.colTradeMethodEN.Name = "colTradeMethodEN";
            this.colTradeMethodEN.Visible = true;
            this.colTradeMethodEN.VisibleIndex = 4;
            this.colTradeMethodEN.Width = 160;
            // 
            // colTradeMethodCN
            // 
            this.colTradeMethodCN.Caption = "Trade Method (CN)";
            this.colTradeMethodCN.FieldName = "TradeMethodCN";
            this.colTradeMethodCN.Name = "colTradeMethodCN";
            this.colTradeMethodCN.Visible = true;
            this.colTradeMethodCN.VisibleIndex = 5;
            this.colTradeMethodCN.Width = 144;
            // 
            // colPurchaseMethodEN
            // 
            this.colPurchaseMethodEN.Caption = "Purchasing of raw materials method (EN)";
            this.colPurchaseMethodEN.FieldName = "PurchaseMethodEN";
            this.colPurchaseMethodEN.Name = "colPurchaseMethodEN";
            this.colPurchaseMethodEN.Visible = true;
            this.colPurchaseMethodEN.VisibleIndex = 6;
            this.colPurchaseMethodEN.Width = 308;
            // 
            // colPurchaseMethodCN
            // 
            this.colPurchaseMethodCN.Caption = "Purchasing of raw materials method (CN)";
            this.colPurchaseMethodCN.FieldName = "PurchaseMethodCN";
            this.colPurchaseMethodCN.Name = "colPurchaseMethodCN";
            this.colPurchaseMethodCN.Visible = true;
            this.colPurchaseMethodCN.VisibleIndex = 7;
            this.colPurchaseMethodCN.Width = 292;
            // 
            // colPaymentMethodEN
            // 
            this.colPaymentMethodEN.Caption = "Payment Method (EN)";
            this.colPaymentMethodEN.FieldName = "PaymentMethodEN";
            this.colPaymentMethodEN.Name = "colPaymentMethodEN";
            this.colPaymentMethodEN.Visible = true;
            this.colPaymentMethodEN.VisibleIndex = 8;
            this.colPaymentMethodEN.Width = 157;
            // 
            // colPaymentMethodCN
            // 
            this.colPaymentMethodCN.Caption = "Payment Method (CN)";
            this.colPaymentMethodCN.FieldName = "PaymentMethodCN";
            this.colPaymentMethodCN.Name = "colPaymentMethodCN";
            this.colPaymentMethodCN.Visible = true;
            this.colPaymentMethodCN.VisibleIndex = 9;
            this.colPaymentMethodCN.Width = 145;
            // 
            // colPrdnSite
            // 
            this.colPrdnSite.Caption = "Prdn Site";
            this.colPrdnSite.FieldName = "PrdnSite";
            this.colPrdnSite.Name = "colPrdnSite";
            this.colPrdnSite.Visible = true;
            this.colPrdnSite.VisibleIndex = 1;
            this.colPrdnSite.Width = 72;
            // 
            // colFtyBusinessModel
            // 
            this.colFtyBusinessModel.Caption = "Business Model";
            this.colFtyBusinessModel.FieldName = "FtyBusinessModel";
            this.colFtyBusinessModel.Name = "colFtyBusinessModel";
            this.colFtyBusinessModel.Visible = true;
            this.colFtyBusinessModel.VisibleIndex = 2;
            this.colFtyBusinessModel.Width = 103;
            // 
            // TradeMethodListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TradeMethodListForm";
            this.Size = new System.Drawing.Size(1352, 437);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeMethodEN;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeMethodCN;
        private DevExpress.XtraGrid.Columns.GridColumn colPurchaseMethodEN;
        private DevExpress.XtraGrid.Columns.GridColumn colPurchaseMethodCN;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentMethodEN;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentMethodCN;
        private DevExpress.XtraGrid.Columns.GridColumn colPrdnSite;
        private DevExpress.XtraGrid.Columns.GridColumn colFtyBusinessModel;
    }
}
