namespace PH.RWO.UI
{
    partial class WorkOrderColorListForm
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
            this.ColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFWOpt4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFWOpt2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnRWOEntranceKey = new DevExpress.XtraBars.BarButtonItem();
            this.colSampleQty_PPWs = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleQty_OtherWs = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.btnRWOEntranceKey});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWOEntranceKey, true)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(924, 321);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.ColorCode,
            this.Qty,
            this.SampleQty,
            this.colFWOpt2,
            this.colFWOpt4,
            this.colSampleQty_PPWs,
            this.colSampleQty_OtherWs});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.WorkOrderColor);
            // 
            // ColorCode
            // 
            this.ColorCode.Caption = "ERP Color Code";
            this.ColorCode.FieldName = "ColorCode";
            this.ColorCode.Name = "ColorCode";
            this.ColorCode.Visible = true;
            this.ColorCode.VisibleIndex = 0;
            this.ColorCode.Width = 106;
            // 
            // Qty
            // 
            this.Qty.Caption = "Bulk Qty";
            this.Qty.FieldName = "BulkQty";
            this.Qty.Name = "Qty";
            this.Qty.Visible = true;
            this.Qty.VisibleIndex = 1;
            this.Qty.Width = 82;
            // 
            // SampleQty
            // 
            this.SampleQty.Caption = "Ttl Sample Qty";
            this.SampleQty.FieldName = "SampleQty";
            this.SampleQty.Name = "SampleQty";
            this.SampleQty.Width = 104;
            // 
            // colFWOpt4
            // 
            this.colFWOpt4.Caption = "Opt 4\'s FW Start dd";
            this.colFWOpt4.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFWOpt4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFWOpt4.FieldName = "FWOpt4";
            this.colFWOpt4.Name = "colFWOpt4";
            this.colFWOpt4.Visible = true;
            this.colFWOpt4.VisibleIndex = 5;
            this.colFWOpt4.Width = 133;
            // 
            // colFWOpt2
            // 
            this.colFWOpt2.Caption = "Opt 2\'s FW Start dd";
            this.colFWOpt2.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFWOpt2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFWOpt2.FieldName = "FWOpt2";
            this.colFWOpt2.Name = "colFWOpt2";
            this.colFWOpt2.Visible = true;
            this.colFWOpt2.VisibleIndex = 4;
            this.colFWOpt2.Width = 133;
            // 
            // btnRWOEntranceKey
            // 
            this.btnRWOEntranceKey.Caption = "Cop WO Entrance Key";
            this.btnRWOEntranceKey.Id = 54;
            this.btnRWOEntranceKey.Name = "btnRWOEntranceKey";
            this.btnRWOEntranceKey.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnRWOEntranceKey.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWOEntranceKey_ItemClick);
            // 
            // colSampleQty_PPWs
            // 
            this.colSampleQty_PPWs.Caption = "Bulk Smpl Qty (PP Ws)";
            this.colSampleQty_PPWs.FieldName = "SampleQty_PPWs";
            this.colSampleQty_PPWs.Name = "colSampleQty_PPWs";
            this.colSampleQty_PPWs.Visible = true;
            this.colSampleQty_PPWs.VisibleIndex = 2;
            this.colSampleQty_PPWs.Width = 147;
            // 
            // colSampleQty_OtherWs
            // 
            this.colSampleQty_OtherWs.Caption = "Bulk Smpl Qty (Sewing Ws)";
            this.colSampleQty_OtherWs.FieldName = "SampleQty_OtherWs";
            this.colSampleQty_OtherWs.Name = "colSampleQty_OtherWs";
            this.colSampleQty_OtherWs.Visible = true;
            this.colSampleQty_OtherWs.VisibleIndex = 3;
            this.colSampleQty_OtherWs.Width = 173;
            // 
            // WorkOrderColorListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WorkOrderColorListForm";
            this.Size = new System.Drawing.Size(924, 348);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn ColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn Qty;
        private DevExpress.XtraGrid.Columns.GridColumn SampleQty;
        private DevExpress.XtraGrid.Columns.GridColumn colFWOpt2;
        private DevExpress.XtraGrid.Columns.GridColumn colFWOpt4;
        private DevExpress.XtraBars.BarButtonItem btnRWOEntranceKey;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleQty_PPWs;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleQty_OtherWs;
    }
}
