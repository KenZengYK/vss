namespace PH.HDO.UI.ByPiece
{
    partial class ReturnItemList
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
            this.barBtnImport = new DevExpress.XtraBars.BarButtonItem();
            this.colRecId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMatType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReturnNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDT_Return = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIdNum = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.HandMovement = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.HandMovement)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(873, 303);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colRecId,
            this.colMatType,
            this.colReturnNo,
            this.gridColumn8,
            this.colDT_Return,
            this.colIdNum,
            this.gridColumn7,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // barBtnImport
            // 
            this.barBtnImport.Caption = "Import";
            this.barBtnImport.Id = 60;
            this.barBtnImport.Name = "barBtnImport";
            this.barBtnImport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImport_ItemClick);
            // 
            // colRecId
            // 
            this.colRecId.AppearanceCell.Options.UseTextOptions = true;
            this.colRecId.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colRecId.Caption = "記錄ID";
            this.colRecId.FieldName = "ReturnItemId";
            this.colRecId.Name = "colRecId";
            this.colRecId.Visible = true;
            this.colRecId.VisibleIndex = 0;
            this.colRecId.Width = 59;
            // 
            // colMatType
            // 
            this.colMatType.Caption = "物料類型";
            this.colMatType.FieldName = "MaterialType";
            this.colMatType.Name = "colMatType";
            this.colMatType.Visible = true;
            this.colMatType.VisibleIndex = 1;
            this.colMatType.Width = 69;
            // 
            // colReturnNo
            // 
            this.colReturnNo.Caption = "退料單號";
            this.colReturnNo.FieldName = "ReturnNo";
            this.colReturnNo.Name = "colReturnNo";
            this.colReturnNo.Visible = true;
            this.colReturnNo.VisibleIndex = 2;
            this.colReturnNo.Width = 68;
            // 
            // colDT_Return
            // 
            this.colDT_Return.Caption = "退料日期";
            this.colDT_Return.FieldName = "DT_Return";
            this.colDT_Return.Name = "colDT_Return";
            this.colDT_Return.Visible = true;
            this.colDT_Return.VisibleIndex = 4;
            this.colDT_Return.Width = 98;
            // 
            // colIdNum
            // 
            this.colIdNum.Caption = "數量";
            this.colIdNum.FieldName = "IDNUM";
            this.colIdNum.Name = "colIdNum";
            this.colIdNum.Visible = true;
            this.colIdNum.VisibleIndex = 5;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "是否手工錄入";
            this.gridColumn1.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn1.FieldName = "IsManualInput";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 11;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "操作人";
            this.gridColumn2.FieldName = "OpMan";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 9;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "操作日期";
            this.gridColumn3.FieldName = "OpDate";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 10;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "SAH";
            this.gridColumn4.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn4.FieldName = "SAH";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 7;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Price";
            this.gridColumn5.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn5.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn5.FieldName = "Price";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 8;
            // 
            // HandMovement
            // 
            this.HandMovement.Caption = "手動輸入";
            this.HandMovement.Id = 61;
            this.HandMovement.Name = "HandMovement";
            this.HandMovement.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.HandMovement_ItemClick);
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Sum";
            this.gridColumn6.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn6.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn6.FieldName = "SumAll";
            this.gridColumn6.Name = "gridColumn6";
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "退料人工號";
            this.gridColumn7.FieldName = "ReturnMan";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 6;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "ID標籤號";
            this.gridColumn8.FieldName = "lot_id";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 3;
            this.gridColumn8.Width = 126;
            // 
            // ReturnItemList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ReturnItemList";
            this.ShowMultiCheck = true;
            this.Size = new System.Drawing.Size(873, 330);
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

        private DevExpress.XtraBars.BarButtonItem barBtnImport;
        private DevExpress.XtraGrid.Columns.GridColumn colRecId;
        private DevExpress.XtraGrid.Columns.GridColumn colMatType;
        private DevExpress.XtraGrid.Columns.GridColumn colReturnNo;
        private DevExpress.XtraGrid.Columns.GridColumn colDT_Return;
        private DevExpress.XtraGrid.Columns.GridColumn colIdNum;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraBars.BarButtonItem HandMovement;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
    }
}
