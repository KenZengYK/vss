namespace PH.HDO.UI.ByPiece
{
    partial class IsuueItemList
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
            this.colRecId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrjCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDT_Issue = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnImport = new DevExpress.XtraBars.BarButtonItem();
            this.colIsManualInput = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colOpMan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.HandMovement = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.lot_id = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnImport,
            this.HandMovement});
            this.objbarManager.MaxItemId = 64;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImport),
            new DevExpress.XtraBars.LinkPersistInfo(this.HandMovement)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(965, 385);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colRecId,
            this.gridColumn6,
            this.lot_id,
            this.colType,
            this.colPrjCode,
            this.colDT_Issue,
            this.gridColumn4,
            this.gridColumn3,
            this.gridColumn2,
            this.gridColumn7,
            this.gridColumn1,
            this.colIsManualInput,
            this.colOpMan,
            this.colOpDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colRecId
            // 
            this.colRecId.AppearanceCell.Options.UseTextOptions = true;
            this.colRecId.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colRecId.Caption = "記錄ID";
            this.colRecId.FieldName = "IssueItemId";
            this.colRecId.Name = "colRecId";
            this.colRecId.Visible = true;
            this.colRecId.VisibleIndex = 0;
            this.colRecId.Width = 68;
            // 
            // colType
            // 
            this.colType.AppearanceCell.Options.UseTextOptions = true;
            this.colType.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colType.Caption = "類型編碼";
            this.colType.FieldName = "MaterialType";
            this.colType.Name = "colType";
            this.colType.Visible = true;
            this.colType.VisibleIndex = 2;
            this.colType.Width = 70;
            // 
            // colPrjCode
            // 
            this.colPrjCode.Caption = "客戶編號";
            this.colPrjCode.FieldName = "ProjCode";
            this.colPrjCode.Name = "colPrjCode";
            this.colPrjCode.Visible = true;
            this.colPrjCode.VisibleIndex = 4;
            this.colPrjCode.Width = 70;
            // 
            // colDT_Issue
            // 
            this.colDT_Issue.AppearanceCell.Options.UseTextOptions = true;
            this.colDT_Issue.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colDT_Issue.Caption = "發料日期";
            this.colDT_Issue.FieldName = "DT_Issue";
            this.colDT_Issue.Name = "colDT_Issue";
            this.colDT_Issue.Visible = true;
            this.colDT_Issue.VisibleIndex = 5;
            this.colDT_Issue.Width = 90;
            // 
            // barBtnImport
            // 
            this.barBtnImport.Caption = "Import";
            this.barBtnImport.Id = 60;
            this.barBtnImport.Name = "barBtnImport";
            this.barBtnImport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImport_ItemClick);
            // 
            // colIsManualInput
            // 
            this.colIsManualInput.Caption = "是否手工錄入";
            this.colIsManualInput.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsManualInput.FieldName = "IsManualInput";
            this.colIsManualInput.Name = "colIsManualInput";
            this.colIsManualInput.Visible = true;
            this.colIsManualInput.VisibleIndex = 11;
            this.colIsManualInput.Width = 101;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colOpMan
            // 
            this.colOpMan.Caption = "操作人";
            this.colOpMan.FieldName = "OpMan";
            this.colOpMan.Name = "colOpMan";
            this.colOpMan.Visible = true;
            this.colOpMan.VisibleIndex = 12;
            this.colOpMan.Width = 72;
            // 
            // colOpDate
            // 
            this.colOpDate.Caption = "操作日期";
            this.colOpDate.FieldName = "OpDate";
            this.colOpDate.Name = "colOpDate";
            this.colOpDate.Visible = true;
            this.colOpDate.VisibleIndex = 13;
            this.colOpDate.Width = 82;
            // 
            // HandMovement
            // 
            this.HandMovement.Caption = "手動輸入";
            this.HandMovement.Id = 63;
            this.HandMovement.Name = "HandMovement";
            this.HandMovement.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.HandMovement_ItemClick);
            // 
            // gridColumn3
            // 
            this.gridColumn3.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridColumn3.Caption = "SAH類別";
            this.gridColumn3.FieldName = "SAH_Type";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 7;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridColumn2.Caption = "發料數量";
            this.gridColumn2.FieldName = "ISSUE_QTY";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 8;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "IDO";
            this.gridColumn6.FieldName = "IDO";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 1;
            this.gridColumn6.Width = 79;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "SAH";
            this.gridColumn7.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn7.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn7.FieldName = "SAH1";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 9;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Price";
            this.gridColumn1.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn1.FieldName = "Price";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 10;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "發料人工號";
            this.gridColumn4.FieldName = "IssueMan";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 6;
            this.gridColumn4.Width = 89;
            // 
            // lot_id
            // 
            this.lot_id.Caption = "ID標籤號";
            this.lot_id.FieldName = "lot_id";
            this.lot_id.Name = "lot_id";
            this.lot_id.Visible = true;
            this.lot_id.VisibleIndex = 3;
            this.lot_id.Width = 122;
            // 
            // IsuueItemList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "IsuueItemList";
            this.ShowMultiCheck = true;
            this.Size = new System.Drawing.Size(965, 412);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colRecId;
        private DevExpress.XtraGrid.Columns.GridColumn colType;
        private DevExpress.XtraGrid.Columns.GridColumn colPrjCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDT_Issue;
        private DevExpress.XtraBars.BarButtonItem barBtnImport;
        private DevExpress.XtraGrid.Columns.GridColumn colIsManualInput;
        private DevExpress.XtraGrid.Columns.GridColumn colOpMan;
        private DevExpress.XtraGrid.Columns.GridColumn colOpDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraBars.BarButtonItem HandMovement;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn lot_id;
    }
}
