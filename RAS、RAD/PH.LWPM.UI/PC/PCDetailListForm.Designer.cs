namespace PH.LWPM.UI.PC
{
    partial class PCDetailListForm
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
            this.colAmendNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSortID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnImportPO = new DevExpress.XtraBars.BarButtonItem();
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
            this.barBtnImportPO});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImportPO)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PCDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortID,
            this.colPONO,
            this.colAmendNo});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PONO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 1;
            this.colPONO.Width = 150;
            // 
            // colAmendNo
            // 
            this.colAmendNo.Caption = "AmendNo";
            this.colAmendNo.FieldName = "AmendNo";
            this.colAmendNo.Name = "colAmendNo";
            this.colAmendNo.Visible = true;
            this.colAmendNo.VisibleIndex = 2;
            this.colAmendNo.Width = 90;
            // 
            // colSortID
            // 
            this.colSortID.Caption = "SortID";
            this.colSortID.FieldName = "SortID";
            this.colSortID.Name = "colSortID";
            this.colSortID.Visible = true;
            this.colSortID.VisibleIndex = 0;
            // 
            // barBtnImportPO
            // 
            this.barBtnImportPO.Caption = "Import";
            this.barBtnImportPO.Id = 60;
            this.barBtnImportPO.Name = "barBtnImportPO";
            this.barBtnImportPO.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImportPO_ItemClick);
            // 
            // PCDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PCDetailListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSortID;
        private DevExpress.XtraBars.BarButtonItem barBtnImportPO;
    }
}
