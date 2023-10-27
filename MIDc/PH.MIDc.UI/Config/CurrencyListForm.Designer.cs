namespace PH.MIDc.UI
{
    partial class CurrencyListForm
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
            this.gridColumn_Currency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_StdBuyRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_CurrBuyRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_StdSellRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_CurrSellRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_Currency,
            this.gridColumn_StdBuyRate,
            this.gridColumn_CurrBuyRate,
            this.gridColumn_StdSellRate,
            this.gridColumn_CurrSellRate,
            this.gridColumn_Description});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // gridColumn_Currency
            // 
            this.gridColumn_Currency.Caption = "Currency";
            this.gridColumn_Currency.FieldName = "Currency";
            this.gridColumn_Currency.Name = "gridColumn_Currency";
            this.gridColumn_Currency.Visible = true;
            this.gridColumn_Currency.VisibleIndex = 0;
            this.gridColumn_Currency.Width = 88;
            // 
            // gridColumn_StdBuyRate
            // 
            this.gridColumn_StdBuyRate.Caption = "Standard Buy Rate";
            this.gridColumn_StdBuyRate.FieldName = "StdBuyRate";
            this.gridColumn_StdBuyRate.Name = "gridColumn_StdBuyRate";
            this.gridColumn_StdBuyRate.Visible = true;
            this.gridColumn_StdBuyRate.VisibleIndex = 2;
            this.gridColumn_StdBuyRate.Width = 126;
            // 
            // gridColumn_CurrBuyRate
            // 
            this.gridColumn_CurrBuyRate.Caption = "Current Buy Rate";
            this.gridColumn_CurrBuyRate.FieldName = "CurrBuyRate";
            this.gridColumn_CurrBuyRate.Name = "gridColumn_CurrBuyRate";
            this.gridColumn_CurrBuyRate.Visible = true;
            this.gridColumn_CurrBuyRate.VisibleIndex = 3;
            this.gridColumn_CurrBuyRate.Width = 126;
            // 
            // gridColumn_StdSellRate
            // 
            this.gridColumn_StdSellRate.Caption = "Standard Sell Rate";
            this.gridColumn_StdSellRate.FieldName = "StdSellRate";
            this.gridColumn_StdSellRate.Name = "gridColumn_StdSellRate";
            this.gridColumn_StdSellRate.Visible = true;
            this.gridColumn_StdSellRate.VisibleIndex = 4;
            this.gridColumn_StdSellRate.Width = 133;
            // 
            // gridColumn_CurrSellRate
            // 
            this.gridColumn_CurrSellRate.Caption = "Current Sell Rate";
            this.gridColumn_CurrSellRate.FieldName = "CurrSellRate";
            this.gridColumn_CurrSellRate.Name = "gridColumn_CurrSellRate";
            this.gridColumn_CurrSellRate.Visible = true;
            this.gridColumn_CurrSellRate.VisibleIndex = 5;
            this.gridColumn_CurrSellRate.Width = 126;
            // 
            // gridColumn_Description
            // 
            this.gridColumn_Description.Caption = "Description";
            this.gridColumn_Description.FieldName = "Description";
            this.gridColumn_Description.Name = "gridColumn_Description";
            this.gridColumn_Description.Visible = true;
            this.gridColumn_Description.VisibleIndex = 1;
            this.gridColumn_Description.Width = 186;
            // 
            // CurrencyListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "CurrencyListForm";
            this.Load += new System.EventHandler(this.CurrencyListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Currency;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_StdBuyRate;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_CurrBuyRate;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_StdSellRate;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_CurrSellRate;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Description;
    }
}
