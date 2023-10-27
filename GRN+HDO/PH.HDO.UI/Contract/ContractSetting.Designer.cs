namespace PH.HDO.UI.Contract
{
    partial class ContractSetting
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
            this.gcContractNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreated = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUpdater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUpdated = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
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
            this.gcContractNo,
            this.gcRemark,
            this.gcCreater,
            this.gcCreated,
            this.gcUpdater,
            this.gcUpdated});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcContractNo
            // 
            this.gcContractNo.Caption = "合同號";
            this.gcContractNo.FieldName = "ContractNo";
            this.gcContractNo.Name = "gcContractNo";
            this.gcContractNo.Visible = true;
            this.gcContractNo.VisibleIndex = 0;
            this.gcContractNo.Width = 113;
            // 
            // gcRemark
            // 
            this.gcRemark.Caption = "備注";
            this.gcRemark.FieldName = "Remark";
            this.gcRemark.Name = "gcRemark";
            this.gcRemark.Width = 325;
            // 
            // gcCreater
            // 
            this.gcCreater.Caption = "建立者";
            this.gcCreater.FieldName = "CreateBy";
            this.gcCreater.Name = "gcCreater";
            this.gcCreater.Visible = true;
            this.gcCreater.VisibleIndex = 1;
            // 
            // gcCreated
            // 
            this.gcCreated.Caption = "建立時間";
            this.gcCreated.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcCreated.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcCreated.FieldName = "Created";
            this.gcCreated.Name = "gcCreated";
            this.gcCreated.Visible = true;
            this.gcCreated.VisibleIndex = 2;
            this.gcCreated.Width = 128;
            // 
            // gcUpdater
            // 
            this.gcUpdater.Caption = "更新者";
            this.gcUpdater.FieldName = "UpdateBy";
            this.gcUpdater.Name = "gcUpdater";
            this.gcUpdater.Visible = true;
            this.gcUpdater.VisibleIndex = 3;
            // 
            // gcUpdated
            // 
            this.gcUpdated.Caption = "更新時間";
            this.gcUpdated.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcUpdated.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcUpdated.FieldName = "Updated";
            this.gcUpdated.Name = "gcUpdated";
            this.gcUpdated.Visible = true;
            this.gcUpdated.VisibleIndex = 4;
            this.gcUpdated.Width = 201;
            // 
            // ContractSetting
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ContractSetting";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcContractNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcRemark;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreater;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreated;
        private DevExpress.XtraGrid.Columns.GridColumn gcUpdater;
        private DevExpress.XtraGrid.Columns.GridColumn gcUpdated;
    }
}
