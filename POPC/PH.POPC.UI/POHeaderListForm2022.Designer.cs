namespace PH.POPC.UI
{
    partial class POHeaderListForm2022
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
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHAmount = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSupplier,
            this.colPONO,
            this.colCurrency,
            this.colPHAmount,
            this.colSuppAmount});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PONO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 1;
            this.colPONO.Width = 100;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supplier";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 0;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 2;
            // 
            // colSuppAmount
            // 
            this.colSuppAmount.Caption = "SuppAmount";
            this.colSuppAmount.DisplayFormat.FormatString = "n2";
            this.colSuppAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSuppAmount.FieldName = "SuppAmount";
            this.colSuppAmount.Name = "colSuppAmount";
            this.colSuppAmount.Visible = true;
            this.colSuppAmount.VisibleIndex = 4;
            this.colSuppAmount.Width = 132;
            // 
            // colPHAmount
            // 
            this.colPHAmount.Caption = "PHAmount";
            this.colPHAmount.DisplayFormat.FormatString = "n2";
            this.colPHAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHAmount.FieldName = "PHAmount";
            this.colPHAmount.Name = "colPHAmount";
            this.colPHAmount.Visible = true;
            this.colPHAmount.VisibleIndex = 3;
            this.colPHAmount.Width = 123;
            // 
            // POHeaderListForm2022
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderListForm2022";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colPHAmount;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppAmount;
    }
}
