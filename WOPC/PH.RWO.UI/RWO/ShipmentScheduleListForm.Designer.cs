namespace PH.RWO.UI.RWO
{
    partial class ShipmentScheduleListForm
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
            this.SelectList = new DevExpress.XtraBars.BarButtonItem();
            this.advBandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colItem = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ColItemNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProduct = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.ColCustomerPO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colClient = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colETD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQuantity = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colClientPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ColCurr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colClientPriceTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colToPYHKPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colToPYHKPriceTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCMTPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCMTPriceTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMaterialPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialPriceTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.SelectList});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.SelectList)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.ShipmentSchedule);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.advBandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1289, 272);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.advBandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // SelectList
            // 
            this.SelectList.Caption = "SelectList";
            this.SelectList.Enabled = false;
            this.SelectList.Id = 60;
            this.SelectList.Name = "SelectList";
            this.SelectList.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.SelectList_ItemClick);
            // 
            // advBandedGridView1
            // 
            this.advBandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand5,
            this.gridBand4,
            this.gridBand6,
            this.gridBand7,
            this.gridBand8,
            this.gridBand9,
            this.gridBand10,
            this.gridBand11});
            this.advBandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colItem,
            this.colStyle,
            this.colProduct,
            this.colProjectNo,
            this.ColCustomerPO,
            this.colETD,
            this.colClient,
            this.colQuantity,
            this.colClientPrice,
            this.colClientPriceTotal,
            this.colToPYHKPrice,
            this.colToPYHKPriceTotal,
            this.colCMTPrice,
            this.colCMTPriceTotal,
            this.colMaterialPrice,
            this.colMaterialPriceTotal,
            this.colStatus,
            this.ColCurr,
            this.ColItemNO});
            this.advBandedGridView1.GridControl = this.objListGridControl;
            this.advBandedGridView1.Name = "advBandedGridView1";
            this.advBandedGridView1.OptionsBehavior.Editable = false;
            this.advBandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.advBandedGridView1.OptionsPrint.AutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Columns.Add(this.colItem);
            this.gridBand1.Columns.Add(this.ColItemNO);
            this.gridBand1.Columns.Add(this.colStyle);
            this.gridBand1.Columns.Add(this.colProduct);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 197;
            // 
            // colItem
            // 
            this.colItem.Caption = "Item";
            this.colItem.FieldName = "Item";
            this.colItem.Name = "colItem";
            this.colItem.OptionsColumn.AllowEdit = false;
            // 
            // ColItemNO
            // 
            this.ColItemNO.AppearanceHeader.Options.UseTextOptions = true;
            this.ColItemNO.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ColItemNO.Caption = "Item";
            this.ColItemNO.FieldName = "ItemNo";
            this.ColItemNO.Name = "ColItemNO";
            this.ColItemNO.OptionsColumn.AllowEdit = false;
            this.ColItemNO.Visible = true;
            this.ColItemNO.Width = 65;
            // 
            // colStyle
            // 
            this.colStyle.Caption = "Style";
            this.colStyle.FieldName = "Style";
            this.colStyle.Name = "colStyle";
            this.colStyle.OptionsColumn.AllowEdit = false;
            this.colStyle.Visible = true;
            this.colStyle.Width = 57;
            // 
            // colProduct
            // 
            this.colProduct.Caption = "Product";
            this.colProduct.FieldName = "Product";
            this.colProduct.Name = "colProduct";
            this.colProduct.OptionsColumn.AllowEdit = false;
            this.colProduct.Visible = true;
            // 
            // gridBand2
            // 
            this.gridBand2.Columns.Add(this.colProjectNo);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 88;
            // 
            // colProjectNo
            // 
            this.colProjectNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colProjectNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProjectNo.Caption = "Project #";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 88;
            // 
            // gridBand3
            // 
            this.gridBand3.Columns.Add(this.ColCustomerPO);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 93;
            // 
            // ColCustomerPO
            // 
            this.ColCustomerPO.Caption = "Customer PO";
            this.ColCustomerPO.FieldName = "CustomerPO";
            this.ColCustomerPO.Name = "ColCustomerPO";
            this.ColCustomerPO.OptionsColumn.AllowEdit = false;
            this.ColCustomerPO.Visible = true;
            this.ColCustomerPO.Width = 93;
            // 
            // gridBand5
            // 
            this.gridBand5.Columns.Add(this.colClient);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 75;
            // 
            // colClient
            // 
            this.colClient.Caption = "Client";
            this.colClient.FieldName = "Client";
            this.colClient.Name = "colClient";
            this.colClient.OptionsColumn.AllowEdit = false;
            this.colClient.Visible = true;
            // 
            // gridBand4
            // 
            this.gridBand4.Columns.Add(this.colETD);
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 75;
            // 
            // colETD
            // 
            this.colETD.Caption = "ETD";
            this.colETD.FieldName = "ETD";
            this.colETD.Name = "colETD";
            this.colETD.OptionsColumn.AllowEdit = false;
            this.colETD.Visible = true;
            // 
            // gridBand6
            // 
            this.gridBand6.Columns.Add(this.colQuantity);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 75;
            // 
            // colQuantity
            // 
            this.colQuantity.Caption = "Quantity";
            this.colQuantity.FieldName = "Quantity";
            this.colQuantity.Name = "colQuantity";
            this.colQuantity.OptionsColumn.AllowEdit = false;
            this.colQuantity.Visible = true;
            // 
            // gridBand7
            // 
            this.gridBand7.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand7.Caption = "Client Price";
            this.gridBand7.Columns.Add(this.colClientPrice);
            this.gridBand7.Columns.Add(this.ColCurr);
            this.gridBand7.Columns.Add(this.colClientPriceTotal);
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 225;
            // 
            // colClientPrice
            // 
            this.colClientPrice.AppearanceHeader.Options.UseTextOptions = true;
            this.colClientPrice.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colClientPrice.Caption = "By Pc";
            this.colClientPrice.DisplayFormat.FormatString = "N4";
            this.colClientPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colClientPrice.FieldName = "ClientPrice";
            this.colClientPrice.Name = "colClientPrice";
            this.colClientPrice.OptionsColumn.AllowEdit = false;
            this.colClientPrice.Visible = true;
            // 
            // ColCurr
            // 
            this.ColCurr.AppearanceHeader.Options.UseTextOptions = true;
            this.ColCurr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ColCurr.Caption = "Curr";
            this.ColCurr.FieldName = "Curr";
            this.ColCurr.Name = "ColCurr";
            this.ColCurr.OptionsColumn.AllowEdit = false;
            this.ColCurr.Visible = true;
            // 
            // colClientPriceTotal
            // 
            this.colClientPriceTotal.AppearanceHeader.Options.UseTextOptions = true;
            this.colClientPriceTotal.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colClientPriceTotal.Caption = "Total";
            this.colClientPriceTotal.DisplayFormat.FormatString = "N2";
            this.colClientPriceTotal.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colClientPriceTotal.FieldName = "ClientPriceTotal";
            this.colClientPriceTotal.Name = "colClientPriceTotal";
            this.colClientPriceTotal.OptionsColumn.AllowEdit = false;
            this.colClientPriceTotal.OptionsColumn.ReadOnly = true;
            this.colClientPriceTotal.Visible = true;
            // 
            // gridBand8
            // 
            this.gridBand8.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand8.Caption = "To PYHK";
            this.gridBand8.Columns.Add(this.colToPYHKPrice);
            this.gridBand8.Columns.Add(this.colToPYHKPriceTotal);
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 150;
            // 
            // colToPYHKPrice
            // 
            this.colToPYHKPrice.AppearanceHeader.Options.UseTextOptions = true;
            this.colToPYHKPrice.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colToPYHKPrice.Caption = "By Pc";
            this.colToPYHKPrice.DisplayFormat.FormatString = "N4";
            this.colToPYHKPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colToPYHKPrice.FieldName = "ToPYHKPrice";
            this.colToPYHKPrice.Name = "colToPYHKPrice";
            this.colToPYHKPrice.OptionsColumn.AllowEdit = false;
            this.colToPYHKPrice.OptionsColumn.ReadOnly = true;
            this.colToPYHKPrice.Visible = true;
            // 
            // colToPYHKPriceTotal
            // 
            this.colToPYHKPriceTotal.AppearanceHeader.Options.UseTextOptions = true;
            this.colToPYHKPriceTotal.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colToPYHKPriceTotal.Caption = "Total";
            this.colToPYHKPriceTotal.DisplayFormat.FormatString = "N2";
            this.colToPYHKPriceTotal.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colToPYHKPriceTotal.FieldName = "ToPYHKPriceTotal";
            this.colToPYHKPriceTotal.Name = "colToPYHKPriceTotal";
            this.colToPYHKPriceTotal.OptionsColumn.AllowEdit = false;
            this.colToPYHKPriceTotal.OptionsColumn.ReadOnly = true;
            this.colToPYHKPriceTotal.Visible = true;
            // 
            // gridBand9
            // 
            this.gridBand9.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand9.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand9.Caption = "CMT price to BD";
            this.gridBand9.Columns.Add(this.colCMTPrice);
            this.gridBand9.Columns.Add(this.colCMTPriceTotal);
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Width = 150;
            // 
            // colCMTPrice
            // 
            this.colCMTPrice.AppearanceHeader.Options.UseTextOptions = true;
            this.colCMTPrice.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCMTPrice.Caption = "By Pc";
            this.colCMTPrice.DisplayFormat.FormatString = "N4";
            this.colCMTPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCMTPrice.FieldName = "CMTPrice";
            this.colCMTPrice.Name = "colCMTPrice";
            this.colCMTPrice.OptionsColumn.AllowEdit = false;
            this.colCMTPrice.Visible = true;
            // 
            // colCMTPriceTotal
            // 
            this.colCMTPriceTotal.AppearanceHeader.Options.UseTextOptions = true;
            this.colCMTPriceTotal.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCMTPriceTotal.Caption = "Total";
            this.colCMTPriceTotal.DisplayFormat.FormatString = "N2";
            this.colCMTPriceTotal.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCMTPriceTotal.FieldName = "CMTPriceTotal";
            this.colCMTPriceTotal.Name = "colCMTPriceTotal";
            this.colCMTPriceTotal.OptionsColumn.AllowEdit = false;
            this.colCMTPriceTotal.OptionsColumn.ReadOnly = true;
            this.colCMTPriceTotal.Visible = true;
            // 
            // gridBand10
            // 
            this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand10.Caption = "Standard Material Cost";
            this.gridBand10.Columns.Add(this.colMaterialPrice);
            this.gridBand10.Columns.Add(this.colMaterialPriceTotal);
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Width = 150;
            // 
            // colMaterialPrice
            // 
            this.colMaterialPrice.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialPrice.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialPrice.Caption = "By Pc";
            this.colMaterialPrice.DisplayFormat.FormatString = "N4";
            this.colMaterialPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMaterialPrice.FieldName = "MaterialPrice";
            this.colMaterialPrice.Name = "colMaterialPrice";
            this.colMaterialPrice.OptionsColumn.AllowEdit = false;
            this.colMaterialPrice.Visible = true;
            // 
            // colMaterialPriceTotal
            // 
            this.colMaterialPriceTotal.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialPriceTotal.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialPriceTotal.Caption = "Total";
            this.colMaterialPriceTotal.DisplayFormat.FormatString = "N2";
            this.colMaterialPriceTotal.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMaterialPriceTotal.FieldName = "MaterialPriceTotal";
            this.colMaterialPriceTotal.Name = "colMaterialPriceTotal";
            this.colMaterialPriceTotal.OptionsColumn.AllowEdit = false;
            this.colMaterialPriceTotal.OptionsColumn.ReadOnly = true;
            this.colMaterialPriceTotal.Visible = true;
            // 
            // gridBand11
            // 
            this.gridBand11.Columns.Add(this.colStatus);
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Width = 75;
            // 
            // colStatus
            // 
            this.colStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.colStatus.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.OptionsColumn.AllowEdit = false;
            this.colStatus.Visible = true;
            // 
            // ShipmentScheduleListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ShipmentScheduleListForm";
            this.Size = new System.Drawing.Size(1289, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem SelectList;
        private DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView advBandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItem;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStyle;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProduct;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn ColCustomerPO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colETD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClient;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQuantity;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClientPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClientPriceTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colToPYHKPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colToPYHKPriceTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCMTPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCMTPriceTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialPriceTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn ColCurr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn ColItemNO;
    }
}
