namespace PH.HDO.UI.HSCode
{
    partial class HSCodeAveragePriceListFrm
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
            this.colHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFGType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeEnd = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSMaterialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSMemo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalCost_RMB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalWeight_RMB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice_RMB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalCost_Other = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalWeight_Other = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice_Other = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodePrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtn_RefreshHSPrice = new DevExpress.XtraBars.BarButtonItem();
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
            this.barBtn_RefreshHSPrice});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_RefreshHSPrice)});
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1180, 391);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHSCode,
            this.colHSCodeSeq,
            this.colFGType,
            this.colTimeFrom,
            this.colTimeEnd,
            this.colHSMaterialName,
            this.colHSMemo,
            this.colHSUnit,
            this.colTotalCost_RMB,
            this.colTotalWeight_RMB,
            this.colPrice_RMB,
            this.colTotalCost_Other,
            this.colTotalWeight_Other,
            this.colPrice_Other,
            this.colHSCodePrice});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.HSCodeAveragePrice);
            // 
            // colHSCode
            // 
            this.colHSCode.Caption = "HSCode";
            this.colHSCode.FieldName = "HSCode";
            this.colHSCode.Name = "colHSCode";
            this.colHSCode.Visible = true;
            this.colHSCode.VisibleIndex = 0;
            this.colHSCode.Width = 100;
            // 
            // colHSCodeSeq
            // 
            this.colHSCodeSeq.Caption = "HSCodeSeq";
            this.colHSCodeSeq.FieldName = "HSCodeSeq";
            this.colHSCodeSeq.Name = "colHSCodeSeq";
            this.colHSCodeSeq.Visible = true;
            this.colHSCodeSeq.VisibleIndex = 1;
            this.colHSCodeSeq.Width = 86;
            // 
            // colFGType
            // 
            this.colFGType.Caption = "FGType";
            this.colFGType.FieldName = "FGType";
            this.colFGType.Name = "colFGType";
            this.colFGType.Visible = true;
            this.colFGType.VisibleIndex = 2;
            // 
            // colTimeFrom
            // 
            this.colTimeFrom.Caption = "TimeFrom";
            this.colTimeFrom.FieldName = "TimeFrom";
            this.colTimeFrom.Name = "colTimeFrom";
            this.colTimeFrom.Visible = true;
            this.colTimeFrom.VisibleIndex = 3;
            // 
            // colTimeEnd
            // 
            this.colTimeEnd.Caption = "TimeEnd";
            this.colTimeEnd.FieldName = "TimeEnd";
            this.colTimeEnd.Name = "colTimeEnd";
            this.colTimeEnd.Visible = true;
            this.colTimeEnd.VisibleIndex = 4;
            // 
            // colHSMaterialName
            // 
            this.colHSMaterialName.Caption = "HSMaterialName";
            this.colHSMaterialName.FieldName = "HSMaterialName";
            this.colHSMaterialName.Name = "colHSMaterialName";
            this.colHSMaterialName.Visible = true;
            this.colHSMaterialName.VisibleIndex = 5;
            this.colHSMaterialName.Width = 150;
            // 
            // colHSMemo
            // 
            this.colHSMemo.Caption = "HSMemo";
            this.colHSMemo.FieldName = "HSMemo";
            this.colHSMemo.Name = "colHSMemo";
            this.colHSMemo.Visible = true;
            this.colHSMemo.VisibleIndex = 6;
            this.colHSMemo.Width = 150;
            // 
            // colHSUnit
            // 
            this.colHSUnit.Caption = "HSUnit";
            this.colHSUnit.FieldName = "HSUnit";
            this.colHSUnit.Name = "colHSUnit";
            this.colHSUnit.Visible = true;
            this.colHSUnit.VisibleIndex = 7;
            // 
            // colTotalCost_RMB
            // 
            this.colTotalCost_RMB.Caption = "TotalCost_RMB (HKD)";
            this.colTotalCost_RMB.DisplayFormat.FormatString = "n1";
            this.colTotalCost_RMB.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalCost_RMB.FieldName = "TotalCost_RMB";
            this.colTotalCost_RMB.Name = "colTotalCost_RMB";
            this.colTotalCost_RMB.Visible = true;
            this.colTotalCost_RMB.VisibleIndex = 8;
            this.colTotalCost_RMB.Width = 150;
            // 
            // colTotalWeight_RMB
            // 
            this.colTotalWeight_RMB.Caption = "TotalWeight_RMB(KG)";
            this.colTotalWeight_RMB.DisplayFormat.FormatString = "n1";
            this.colTotalWeight_RMB.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalWeight_RMB.FieldName = "TotalWeight_RMB";
            this.colTotalWeight_RMB.Name = "colTotalWeight_RMB";
            this.colTotalWeight_RMB.Visible = true;
            this.colTotalWeight_RMB.VisibleIndex = 9;
            this.colTotalWeight_RMB.Width = 150;
            // 
            // colPrice_RMB
            // 
            this.colPrice_RMB.Caption = "Price_RMB (HKD)";
            this.colPrice_RMB.DisplayFormat.FormatString = "n1";
            this.colPrice_RMB.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice_RMB.FieldName = "Price_RMB";
            this.colPrice_RMB.Name = "colPrice_RMB";
            this.colPrice_RMB.Visible = true;
            this.colPrice_RMB.VisibleIndex = 10;
            this.colPrice_RMB.Width = 150;
            // 
            // colTotalCost_Other
            // 
            this.colTotalCost_Other.Caption = "TotalCost_Other(HK)";
            this.colTotalCost_Other.DisplayFormat.FormatString = "n1";
            this.colTotalCost_Other.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalCost_Other.FieldName = "TotalCost_Other";
            this.colTotalCost_Other.Name = "colTotalCost_Other";
            this.colTotalCost_Other.Visible = true;
            this.colTotalCost_Other.VisibleIndex = 11;
            this.colTotalCost_Other.Width = 150;
            // 
            // colTotalWeight_Other
            // 
            this.colTotalWeight_Other.Caption = "TotalWeight_Other (KG)";
            this.colTotalWeight_Other.DisplayFormat.FormatString = "n1";
            this.colTotalWeight_Other.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalWeight_Other.FieldName = "TotalWeight_Other";
            this.colTotalWeight_Other.Name = "colTotalWeight_Other";
            this.colTotalWeight_Other.Visible = true;
            this.colTotalWeight_Other.VisibleIndex = 12;
            this.colTotalWeight_Other.Width = 150;
            // 
            // colPrice_Other
            // 
            this.colPrice_Other.Caption = "Price_Other (HKD)";
            this.colPrice_Other.DisplayFormat.FormatString = "n1";
            this.colPrice_Other.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice_Other.FieldName = "Price_Other";
            this.colPrice_Other.Name = "colPrice_Other";
            this.colPrice_Other.Visible = true;
            this.colPrice_Other.VisibleIndex = 13;
            this.colPrice_Other.Width = 150;
            // 
            // colHSCodePrice
            // 
            this.colHSCodePrice.Caption = "HSCodePrice (HKD)";
            this.colHSCodePrice.DisplayFormat.FormatString = "n1";
            this.colHSCodePrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colHSCodePrice.FieldName = "HSCodePrice";
            this.colHSCodePrice.Name = "colHSCodePrice";
            this.colHSCodePrice.Visible = true;
            this.colHSCodePrice.VisibleIndex = 14;
            this.colHSCodePrice.Width = 150;
            // 
            // barBtn_RefreshHSPrice
            // 
            this.barBtn_RefreshHSPrice.Caption = "Refresh HS Price";
            this.barBtn_RefreshHSPrice.Id = 60;
            this.barBtn_RefreshHSPrice.Name = "barBtn_RefreshHSPrice";
            this.barBtn_RefreshHSPrice.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_RefreshHSPrice_ItemClick);
            // 
            // HSCodeAveragePriceListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HSCodeAveragePriceListFrm";
            this.Size = new System.Drawing.Size(1180, 418);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colFGType;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrom;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeEnd;
        private DevExpress.XtraGrid.Columns.GridColumn colHSMaterialName;
        private DevExpress.XtraGrid.Columns.GridColumn colHSMemo;
        private DevExpress.XtraGrid.Columns.GridColumn colHSUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalCost_RMB;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalWeight_RMB;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice_RMB;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalCost_Other;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalWeight_Other;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice_Other;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodePrice;
        private DevExpress.XtraBars.BarButtonItem barBtn_RefreshHSPrice;
    }
}
