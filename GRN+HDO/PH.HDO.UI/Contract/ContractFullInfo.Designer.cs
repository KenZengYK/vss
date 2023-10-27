namespace PH.HDO.UI.Contract
{
    partial class ContractFullInfo
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
            this.gcReciveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPackNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPageNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMaterialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProdLoc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGrnQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeightHsCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTotalCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUnitPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBoxQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeight_J = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeight_M = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBoxNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcHSCodeSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcContractNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBG_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBG_Unit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBG_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBG_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreateBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreated = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUpdateBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUpdated = new DevExpress.XtraGrid.Columns.GridColumn();
            this.spbImport = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.sbtnUpdateItem = new DevExpress.XtraEditors.SimpleButton();
            this.spbPrint = new DevExpress.XtraEditors.SimpleButton();
            this.spbUpdate = new DevExpress.XtraEditors.SimpleButton();
            this.gcWeight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGrnNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcHdo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBG_Weight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcBG_Date = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 63;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 57);
            this.objListGridControl.Size = new System.Drawing.Size(803, 242);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcReciveDate,
            this.gcSupplier,
            this.gcPackNo,
            this.gcPO,
            this.gcSuppRef,
            this.gcPageNo,
            this.gcMaterialName,
            this.gcProdLoc,
            this.gcUnit,
            this.gcGrnQty,
            this.gcWeightHsCode,
            this.gcCurrency,
            this.gcPrice,
            this.gcTotalCost,
            this.gcUnitPrice,
            this.gcBoxQty,
            this.gcWeight_J,
            this.gcWeight_M,
            this.gcBoxNo,
            this.gcHSCodeSeq,
            this.gcContractNo,
            this.gcItem,
            this.gcBG_Name,
            this.gcBG_Unit,
            this.gcBG_Qty,
            this.gcBG_No,
            this.gcCreateBy,
            this.gcCreated,
            this.gcUpdateBy,
            this.gcUpdated,
            this.gcWeight,
            this.gcGrnNo,
            this.gcHdo,
            this.gcBG_Weight,
            this.gcBG_Date});
            this.objListGridView.GroupCount = 3;
            this.objListGridView.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "Weight", null, "         總重:{0:0.00}"),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "GrnQty", null, "總數量:{0:00}")});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcContractNo, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcItem, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcBG_Name, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // gcReciveDate
            // 
            this.gcReciveDate.Caption = "HK收貨日期";
            this.gcReciveDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcReciveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcReciveDate.FieldName = "ReciveDate_HK";
            this.gcReciveDate.Name = "gcReciveDate";
            this.gcReciveDate.Visible = true;
            this.gcReciveDate.VisibleIndex = 1;
            this.gcReciveDate.Width = 85;
            // 
            // gcSupplier
            // 
            this.gcSupplier.Caption = "供應商名稱 ";
            this.gcSupplier.FieldName = "ERPSupplier";
            this.gcSupplier.Name = "gcSupplier";
            this.gcSupplier.Width = 112;
            // 
            // gcPackNo
            // 
            this.gcPackNo.Caption = "Packing No.";
            this.gcPackNo.FieldName = "PackingNo";
            this.gcPackNo.Name = "gcPackNo";
            this.gcPackNo.Width = 96;
            // 
            // gcPO
            // 
            this.gcPO.Caption = "采購單號";
            this.gcPO.FieldName = "PO";
            this.gcPO.Name = "gcPO";
            this.gcPO.Visible = true;
            this.gcPO.VisibleIndex = 13;
            // 
            // gcSuppRef
            // 
            this.gcSuppRef.Caption = "供應商料號";
            this.gcSuppRef.FieldName = "SuppRef";
            this.gcSuppRef.Name = "gcSuppRef";
            this.gcSuppRef.Width = 103;
            // 
            // gcPageNo
            // 
            this.gcPageNo.Caption = "Page No.";
            this.gcPageNo.FieldName = "PageNo";
            this.gcPageNo.Name = "gcPageNo";
            this.gcPageNo.Width = 74;
            // 
            // gcMaterialName
            // 
            this.gcMaterialName.Caption = "貨物名稱";
            this.gcMaterialName.FieldName = "MaterialName";
            this.gcMaterialName.Name = "gcMaterialName";
            this.gcMaterialName.Width = 158;
            // 
            // gcProdLoc
            // 
            this.gcProdLoc.Caption = "產地";
            this.gcProdLoc.FieldName = "ProductLoc";
            this.gcProdLoc.Name = "gcProdLoc";
            this.gcProdLoc.Visible = true;
            this.gcProdLoc.VisibleIndex = 14;
            this.gcProdLoc.Width = 50;
            // 
            // gcUnit
            // 
            this.gcUnit.Caption = "單位";
            this.gcUnit.FieldName = "PHUnit";
            this.gcUnit.Name = "gcUnit";
            this.gcUnit.Visible = true;
            this.gcUnit.VisibleIndex = 5;
            this.gcUnit.Width = 46;
            // 
            // gcGrnQty
            // 
            this.gcGrnQty.Caption = "GRN數量";
            this.gcGrnQty.FieldName = "GrnQty";
            this.gcGrnQty.Name = "gcGrnQty";
            this.gcGrnQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcGrnQty.Visible = true;
            this.gcGrnQty.VisibleIndex = 4;
            this.gcGrnQty.Width = 68;
            // 
            // gcWeightHsCode
            // 
            this.gcWeightHsCode.Caption = "單重";
            this.gcWeightHsCode.FieldName = "WeightHsCode";
            this.gcWeightHsCode.Name = "gcWeightHsCode";
            this.gcWeightHsCode.Visible = true;
            this.gcWeightHsCode.VisibleIndex = 6;
            // 
            // gcCurrency
            // 
            this.gcCurrency.Caption = "幣別";
            this.gcCurrency.FieldName = "Currency";
            this.gcCurrency.Name = "gcCurrency";
            this.gcCurrency.Width = 53;
            // 
            // gcPrice
            // 
            this.gcPrice.Caption = "每公斤單價";
            this.gcPrice.FieldName = "Price";
            this.gcPrice.Name = "gcPrice";
            this.gcPrice.Width = 82;
            // 
            // gcTotalCost
            // 
            this.gcTotalCost.Caption = "總價值";
            this.gcTotalCost.FieldName = "TotalCost";
            this.gcTotalCost.Name = "gcTotalCost";
            // 
            // gcUnitPrice
            // 
            this.gcUnitPrice.Caption = "單價(PH Unit)";
            this.gcUnitPrice.FieldName = "UnitPrice";
            this.gcUnitPrice.Name = "gcUnitPrice";
            this.gcUnitPrice.Width = 81;
            // 
            // gcBoxQty
            // 
            this.gcBoxQty.Caption = "箱數";
            this.gcBoxQty.FieldName = "BoxQty";
            this.gcBoxQty.Name = "gcBoxQty";
            this.gcBoxQty.Visible = true;
            this.gcBoxQty.VisibleIndex = 15;
            this.gcBoxQty.Width = 50;
            // 
            // gcWeight_J
            // 
            this.gcWeight_J.Caption = "凈重";
            this.gcWeight_J.FieldName = "Weight_J";
            this.gcWeight_J.Name = "gcWeight_J";
            // 
            // gcWeight_M
            // 
            this.gcWeight_M.Caption = "毛重";
            this.gcWeight_M.FieldName = "Weight_M";
            this.gcWeight_M.Name = "gcWeight_M";
            // 
            // gcBoxNo
            // 
            this.gcBoxNo.Caption = "外箱號";
            this.gcBoxNo.FieldName = "BoxNo";
            this.gcBoxNo.Name = "gcBoxNo";
            this.gcBoxNo.Width = 68;
            // 
            // gcHSCodeSeq
            // 
            this.gcHSCodeSeq.Caption = "備案資料庫項號";
            this.gcHSCodeSeq.FieldName = "HSCodeSeq";
            this.gcHSCodeSeq.Name = "gcHSCodeSeq";
            this.gcHSCodeSeq.Visible = true;
            this.gcHSCodeSeq.VisibleIndex = 12;
            this.gcHSCodeSeq.Width = 106;
            // 
            // gcContractNo
            // 
            this.gcContractNo.Caption = "合同號";
            this.gcContractNo.FieldName = "ContractNo";
            this.gcContractNo.Name = "gcContractNo";
            this.gcContractNo.Width = 93;
            // 
            // gcItem
            // 
            this.gcItem.Caption = "項號";
            this.gcItem.FieldName = "ItemNo";
            this.gcItem.Name = "gcItem";
            this.gcItem.Width = 44;
            // 
            // gcBG_Name
            // 
            this.gcBG_Name.Caption = "報關名稱";
            this.gcBG_Name.FieldName = "BG_Name";
            this.gcBG_Name.Name = "gcBG_Name";
            this.gcBG_Name.Width = 99;
            // 
            // gcBG_Unit
            // 
            this.gcBG_Unit.Caption = "報關單位";
            this.gcBG_Unit.FieldName = "BG_Unit";
            this.gcBG_Unit.Name = "gcBG_Unit";
            this.gcBG_Unit.Visible = true;
            this.gcBG_Unit.VisibleIndex = 11;
            this.gcBG_Unit.Width = 69;
            // 
            // gcBG_Qty
            // 
            this.gcBG_Qty.Caption = "報關數量";
            this.gcBG_Qty.FieldName = "BG_Qty";
            this.gcBG_Qty.Name = "gcBG_Qty";
            this.gcBG_Qty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcBG_Qty.Visible = true;
            this.gcBG_Qty.VisibleIndex = 8;
            this.gcBG_Qty.Width = 68;
            // 
            // gcBG_No
            // 
            this.gcBG_No.Caption = "報關單號";
            this.gcBG_No.FieldName = "BG_No";
            this.gcBG_No.Name = "gcBG_No";
            this.gcBG_No.Visible = true;
            this.gcBG_No.VisibleIndex = 0;
            this.gcBG_No.Width = 80;
            // 
            // gcCreateBy
            // 
            this.gcCreateBy.Caption = "建立者";
            this.gcCreateBy.FieldName = "CreateBy";
            this.gcCreateBy.Name = "gcCreateBy";
            this.gcCreateBy.OptionsColumn.AllowEdit = false;
            this.gcCreateBy.Width = 61;
            // 
            // gcCreated
            // 
            this.gcCreated.Caption = "建立日期";
            this.gcCreated.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcCreated.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcCreated.FieldName = "Created";
            this.gcCreated.Name = "gcCreated";
            this.gcCreated.OptionsColumn.AllowEdit = false;
            // 
            // gcUpdateBy
            // 
            this.gcUpdateBy.Caption = "更新者";
            this.gcUpdateBy.FieldName = "UpdateBy";
            this.gcUpdateBy.Name = "gcUpdateBy";
            this.gcUpdateBy.OptionsColumn.AllowEdit = false;
            // 
            // gcUpdated
            // 
            this.gcUpdated.Caption = "更新日期";
            this.gcUpdated.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcUpdated.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcUpdated.FieldName = "Updated";
            this.gcUpdated.Name = "gcUpdated";
            this.gcUpdated.OptionsColumn.AllowEdit = false;
            // 
            // spbImport
            // 
            this.spbImport.Location = new System.Drawing.Point(5, 5);
            this.spbImport.Name = "spbImport";
            this.spbImport.Size = new System.Drawing.Size(98, 23);
            this.spbImport.TabIndex = 6;
            this.spbImport.Text = "獲取數據";
            this.spbImport.Click += new System.EventHandler(this.sbtnMiddle_Click);
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sbtnUpdateItem);
            this.panelControl1.Controls.Add(this.spbPrint);
            this.panelControl1.Controls.Add(this.spbUpdate);
            this.panelControl1.Controls.Add(this.spbImport);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(803, 30);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 7;
            // 
            // sbtnUpdateItem
            // 
            this.sbtnUpdateItem.Appearance.ForeColor = System.Drawing.Color.Black;
            this.sbtnUpdateItem.Appearance.Options.UseForeColor = true;
            this.sbtnUpdateItem.Location = new System.Drawing.Point(290, 7);
            this.sbtnUpdateItem.Name = "sbtnUpdateItem";
            this.sbtnUpdateItem.Size = new System.Drawing.Size(83, 23);
            this.sbtnUpdateItem.TabIndex = 9;
            this.sbtnUpdateItem.Text = "操作指引";
            this.sbtnUpdateItem.Visible = false;
            this.sbtnUpdateItem.Click += new System.EventHandler(this.GuideButton_Click);
            // 
            // spbPrint
            // 
            this.spbPrint.Location = new System.Drawing.Point(203, 7);
            this.spbPrint.Name = "spbPrint";
            this.spbPrint.Size = new System.Drawing.Size(75, 23);
            this.spbPrint.TabIndex = 8;
            this.spbPrint.Text = "打印";
            this.spbPrint.Click += new System.EventHandler(this.spbPrint_Click);
            // 
            // spbUpdate
            // 
            this.spbUpdate.Location = new System.Drawing.Point(106, 6);
            this.spbUpdate.Name = "spbUpdate";
            this.spbUpdate.Size = new System.Drawing.Size(93, 23);
            this.spbUpdate.TabIndex = 7;
            this.spbUpdate.Text = "更新合同資料";
            this.spbUpdate.Click += new System.EventHandler(this.spbUpdate_Click);
            // 
            // gcWeight
            // 
            this.gcWeight.Caption = "計算總重";
            this.gcWeight.DisplayFormat.FormatString = "{0:0.00}";
            this.gcWeight.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcWeight.FieldName = "BG_WeightCal";
            this.gcWeight.Name = "gcWeight";
            this.gcWeight.SummaryItem.DisplayFormat = "{0:0.00}";
            this.gcWeight.SummaryItem.FieldName = "Weight";
            this.gcWeight.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcWeight.Visible = true;
            this.gcWeight.VisibleIndex = 7;
            // 
            // gcGrnNo
            // 
            this.gcGrnNo.Caption = "Grn No.";
            this.gcGrnNo.FieldName = "GrnNo";
            this.gcGrnNo.Name = "gcGrnNo";
            this.gcGrnNo.Visible = true;
            this.gcGrnNo.VisibleIndex = 3;
            this.gcGrnNo.Width = 86;
            // 
            // gcHdo
            // 
            this.gcHdo.Caption = "HDO No.";
            this.gcHdo.FieldName = "HDONo";
            this.gcHdo.Name = "gcHdo";
            this.gcHdo.Visible = true;
            this.gcHdo.VisibleIndex = 2;
            // 
            // gcBG_Weight
            // 
            this.gcBG_Weight.Caption = "報關重量";
            this.gcBG_Weight.DisplayFormat.FormatString = "{0:0.00}";
            this.gcBG_Weight.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcBG_Weight.FieldName = "BG_WeightAct";
            this.gcBG_Weight.Name = "gcBG_Weight";
            this.gcBG_Weight.SummaryItem.DisplayFormat = "{0:0.00}";
            this.gcBG_Weight.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcBG_Weight.Visible = true;
            this.gcBG_Weight.VisibleIndex = 9;
            // 
            // gcBG_Date
            // 
            this.gcBG_Date.Caption = "報關日期";
            this.gcBG_Date.FieldName = "BG_Date";
            this.gcBG_Date.Name = "gcBG_Date";
            this.gcBG_Date.Visible = true;
            this.gcBG_Date.VisibleIndex = 10;
            this.gcBG_Date.Width = 81;
            // 
            // ContractFullInfo
            // 
            this.AllowAddRow = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "ContractFullInfo";
            this.ShowMultiCheck = true;
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcReciveDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn gcPackNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcPO;
        private DevExpress.XtraGrid.Columns.GridColumn gcSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn gcPageNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcMaterialName;
        private DevExpress.XtraGrid.Columns.GridColumn gcProdLoc;
        private DevExpress.XtraGrid.Columns.GridColumn gcUnit;
        private DevExpress.XtraGrid.Columns.GridColumn gcGrnQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeightHsCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn gcPrice;
        private DevExpress.XtraGrid.Columns.GridColumn gcTotalCost;
        private DevExpress.XtraGrid.Columns.GridColumn gcUnitPrice;
        private DevExpress.XtraGrid.Columns.GridColumn gcBoxQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeight_J;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeight_M;
        private DevExpress.XtraGrid.Columns.GridColumn gcBoxNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcHSCodeSeq;
        private DevExpress.XtraGrid.Columns.GridColumn gcContractNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcItem;
        private DevExpress.XtraGrid.Columns.GridColumn gcBG_Name;
        private DevExpress.XtraGrid.Columns.GridColumn gcBG_Unit;
        private DevExpress.XtraGrid.Columns.GridColumn gcBG_Qty;
        private DevExpress.XtraGrid.Columns.GridColumn gcBG_No;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreateBy;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreated;
        private DevExpress.XtraGrid.Columns.GridColumn gcUpdateBy;
        private DevExpress.XtraGrid.Columns.GridColumn gcUpdated;
        private DevExpress.XtraEditors.SimpleButton spbImport;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton spbPrint;
        private DevExpress.XtraEditors.SimpleButton spbUpdate;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeight;
        private DevExpress.XtraGrid.Columns.GridColumn gcGrnNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcHdo;
        private DevExpress.XtraEditors.SimpleButton sbtnUpdateItem;
        private DevExpress.XtraGrid.Columns.GridColumn gcBG_Weight;
        private DevExpress.XtraGrid.Columns.GridColumn gcBG_Date;
    }
}
