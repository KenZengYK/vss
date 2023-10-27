namespace PH.MR.UI.HSContract
{
    partial class HSContractReciveListForm
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
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject1 = new DevExpress.Utils.SerializableAppearanceObject();
            this.gcFac = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcContractNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMaterialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRecQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.btnDetail = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnDetail)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.btnDetail});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcFac,
            this.gcSeqNo,
            this.gcContractNo,
            this.gcHSCode,
            this.gcMaterialName,
            this.gcRecQty});
            this.objListGridView.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "RECIVEQTY", this.gcRecQty, "")});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
            // 
            // gcFac
            // 
            this.gcFac.Caption = "工廠";
            this.gcFac.FieldName = "FTY";
            this.gcFac.Name = "gcFac";
            this.gcFac.Visible = true;
            this.gcFac.VisibleIndex = 0;
            // 
            // gcSeqNo
            // 
            this.gcSeqNo.Caption = "合同序號";
            this.gcSeqNo.FieldName = "HSCodeSeq";
            this.gcSeqNo.Name = "gcSeqNo";
            this.gcSeqNo.Visible = true;
            this.gcSeqNo.VisibleIndex = 1;
            this.gcSeqNo.Width = 86;
            // 
            // gcContractNo
            // 
            this.gcContractNo.Caption = "合同編號";
            this.gcContractNo.FieldName = "HScontractNO";
            this.gcContractNo.Name = "gcContractNo";
            this.gcContractNo.Visible = true;
            this.gcContractNo.VisibleIndex = 2;
            this.gcContractNo.Width = 124;
            // 
            // gcHSCode
            // 
            this.gcHSCode.Caption = "海關編碼";
            this.gcHSCode.FieldName = "HSCode";
            this.gcHSCode.Name = "gcHSCode";
            this.gcHSCode.Visible = true;
            this.gcHSCode.VisibleIndex = 3;
            this.gcHSCode.Width = 134;
            // 
            // gcMaterialName
            // 
            this.gcMaterialName.Caption = "海關物料名稱";
            this.gcMaterialName.FieldName = "HSName";
            this.gcMaterialName.Name = "gcMaterialName";
            this.gcMaterialName.Visible = true;
            this.gcMaterialName.VisibleIndex = 4;
            this.gcMaterialName.Width = 299;
            // 
            // gcRecQty
            // 
            this.gcRecQty.Caption = "收貨件數";
            this.gcRecQty.FieldName = "RECIVEQTY";
            this.gcRecQty.Name = "gcRecQty";
            this.gcRecQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcRecQty.Visible = true;
            this.gcRecQty.VisibleIndex = 5;
            // 
            // barBtnPrint
            // 
            this.barBtnPrint.Caption = "Print";
            this.barBtnPrint.Id = 60;
            this.barBtnPrint.Name = "barBtnPrint";
            this.barBtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrint_ItemClick);
            // 
            // btnDetail
            // 
            this.btnDetail.AutoHeight = false;
            serializableAppearanceObject1.Options.UseTextOptions = true;
            serializableAppearanceObject1.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.btnDetail.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Detail", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject1)});
            this.btnDetail.Name = "btnDetail";
            this.btnDetail.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.btnDetail.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.btnDetail_ButtonClick);
            // 
            // HSContractReciveListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HSContractReciveListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnDetail)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcFac;
        private DevExpress.XtraGrid.Columns.GridColumn gcSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcContractNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcMaterialName;
        private DevExpress.XtraGrid.Columns.GridColumn gcRecQty;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit btnDetail;
    }
}
