namespace PH.RWO.UI.WO
{
    partial class WOProductPriceList
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
            this.colWo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProdPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcOAConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcConfirmDt = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTopConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDeliveryDt = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barUpdatePrice = new DevExpress.XtraBars.BarButtonItem();
            this.gcCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProject = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.barUpdatePrice});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barUpdatePrice, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(991, 384);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcProject,
            this.colWo,
            this.colSOrder,
            this.colStyle,
            this.colCustyle,
            this.colProdPrice,
            this.gcOAConfirm,
            this.gcConfirmDt,
            this.gcTopConfirm,
            this.gcDeliveryDt,
            this.gcCurrency});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colWo
            // 
            this.colWo.Caption = "WO.";
            this.colWo.FieldName = "WorkOrderNo";
            this.colWo.Name = "colWo";
            this.colWo.OptionsColumn.AllowEdit = false;
            this.colWo.Visible = true;
            this.colWo.VisibleIndex = 1;
            // 
            // colSOrder
            // 
            this.colSOrder.Caption = "Sale Order.";
            this.colSOrder.FieldName = "SalesOrderNo";
            this.colSOrder.Name = "colSOrder";
            this.colSOrder.OptionsColumn.AllowEdit = false;
            this.colSOrder.Visible = true;
            this.colSOrder.VisibleIndex = 2;
            this.colSOrder.Width = 92;
            // 
            // colStyle
            // 
            this.colStyle.Caption = "Style";
            this.colStyle.FieldName = "StyleNo";
            this.colStyle.Name = "colStyle";
            this.colStyle.OptionsColumn.AllowEdit = false;
            this.colStyle.Visible = true;
            this.colStyle.VisibleIndex = 3;
            this.colStyle.Width = 121;
            // 
            // colCustyle
            // 
            this.colCustyle.Caption = "Cust Style";
            this.colCustyle.FieldName = "CustomerStyleNo";
            this.colCustyle.Name = "colCustyle";
            this.colCustyle.OptionsColumn.AllowEdit = false;
            this.colCustyle.Visible = true;
            this.colCustyle.VisibleIndex = 4;
            this.colCustyle.Width = 123;
            // 
            // colProdPrice
            // 
            this.colProdPrice.Caption = "Product Price";
            this.colProdPrice.FieldName = "ProductPrice";
            this.colProdPrice.Name = "colProdPrice";
            this.colProdPrice.Visible = true;
            this.colProdPrice.VisibleIndex = 8;
            this.colProdPrice.Width = 102;
            // 
            // gcOAConfirm
            // 
            this.gcOAConfirm.Caption = "OA Confirm";
            this.gcOAConfirm.FieldName = "OAConfirm";
            this.gcOAConfirm.Name = "gcOAConfirm";
            this.gcOAConfirm.OptionsColumn.AllowEdit = false;
            this.gcOAConfirm.Visible = true;
            this.gcOAConfirm.VisibleIndex = 5;
            this.gcOAConfirm.Width = 83;
            // 
            // gcConfirmDt
            // 
            this.gcConfirmDt.Caption = "OA Confirm Date";
            this.gcConfirmDt.FieldName = "OAConfirmDate";
            this.gcConfirmDt.Name = "gcConfirmDt";
            this.gcConfirmDt.OptionsColumn.AllowEdit = false;
            this.gcConfirmDt.Visible = true;
            this.gcConfirmDt.VisibleIndex = 6;
            this.gcConfirmDt.Width = 119;
            // 
            // gcTopConfirm
            // 
            this.gcTopConfirm.Caption = "Top Confirm";
            this.gcTopConfirm.FieldName = "TopConfirm";
            this.gcTopConfirm.Name = "gcTopConfirm";
            this.gcTopConfirm.OptionsColumn.AllowEdit = false;
            this.gcTopConfirm.Width = 92;
            // 
            // gcDeliveryDt
            // 
            this.gcDeliveryDt.Caption = "Delivery Completed";
            this.gcDeliveryDt.FieldName = "DeliveryShipCompleted";
            this.gcDeliveryDt.Name = "gcDeliveryDt";
            this.gcDeliveryDt.OptionsColumn.AllowEdit = false;
            this.gcDeliveryDt.Visible = true;
            this.gcDeliveryDt.VisibleIndex = 7;
            this.gcDeliveryDt.Width = 153;
            // 
            // barUpdatePrice
            // 
            this.barUpdatePrice.Caption = "Price Update";
            this.barUpdatePrice.Id = 60;
            this.barUpdatePrice.Name = "barUpdatePrice";
            this.barUpdatePrice.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barUpdatePrice_ItemClick);
            // 
            // gcCurrency
            // 
            this.gcCurrency.Caption = "Currency";
            this.gcCurrency.FieldName = "Currency";
            this.gcCurrency.Name = "gcCurrency";
            this.gcCurrency.Visible = true;
            this.gcCurrency.VisibleIndex = 9;
            // 
            // gcProject
            // 
            this.gcProject.Caption = "Project";
            this.gcProject.FieldName = "ProjectNo";
            this.gcProject.Name = "gcProject";
            this.gcProject.Visible = true;
            this.gcProject.VisibleIndex = 0;
            this.gcProject.Width = 94;
            // 
            // WOProductPriceList
            // 
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WOProductPriceList";
            this.RowChangeAutoSave = false;
            this.Size = new System.Drawing.Size(991, 411);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colWo;
        private DevExpress.XtraGrid.Columns.GridColumn colSOrder;
        private DevExpress.XtraGrid.Columns.GridColumn colStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colCustyle;
        private DevExpress.XtraGrid.Columns.GridColumn colProdPrice;
        private DevExpress.XtraGrid.Columns.GridColumn gcOAConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn gcConfirmDt;
        private DevExpress.XtraGrid.Columns.GridColumn gcTopConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn gcDeliveryDt;
        private DevExpress.XtraBars.BarButtonItem barUpdatePrice;
        private DevExpress.XtraGrid.Columns.GridColumn gcCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn gcProject;
    }
}
