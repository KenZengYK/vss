namespace PH.LineBalanceII.UI.BondingSpect
{
    partial class McStyleListForm
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
            this.colMcStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateTime = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.colMcStyleNo,
            this.colMcName,
            this.colCreater,
            this.colCreateTime,
            this.colUpdater,
            this.colUpdateTime});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colMcStyleNo
            // 
            this.colMcStyleNo.Caption = "型號";
            this.colMcStyleNo.FieldName = "McStyleNo";
            this.colMcStyleNo.Name = "colMcStyleNo";
            this.colMcStyleNo.Visible = true;
            this.colMcStyleNo.VisibleIndex = 0;
            // 
            // colMcName
            // 
            this.colMcName.Caption = "名稱";
            this.colMcName.FieldName = "McName";
            this.colMcName.Name = "colMcName";
            this.colMcName.Visible = true;
            this.colMcName.VisibleIndex = 1;
            this.colMcName.Width = 271;
            // 
            // colCreater
            // 
            this.colCreater.Caption = "Creater";
            this.colCreater.FieldName = "CreateBy";
            this.colCreater.Name = "colCreater";
            this.colCreater.Visible = true;
            this.colCreater.VisibleIndex = 2;
            // 
            // colCreateTime
            // 
            this.colCreateTime.Caption = "Create Time";
            this.colCreateTime.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.colCreateTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCreateTime.FieldName = "CreateTime";
            this.colCreateTime.Name = "colCreateTime";
            this.colCreateTime.Visible = true;
            this.colCreateTime.VisibleIndex = 3;
            this.colCreateTime.Width = 141;
            // 
            // colUpdater
            // 
            this.colUpdater.Caption = "Updater";
            this.colUpdater.FieldName = "UpdateBy";
            this.colUpdater.Name = "colUpdater";
            this.colUpdater.Visible = true;
            this.colUpdater.VisibleIndex = 4;
            // 
            // colUpdateTime
            // 
            this.colUpdateTime.Caption = "Update Time";
            this.colUpdateTime.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.colUpdateTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colUpdateTime.FieldName = "UpdateTime";
            this.colUpdateTime.Name = "colUpdateTime";
            this.colUpdateTime.Visible = true;
            this.colUpdateTime.VisibleIndex = 5;
            this.colUpdateTime.Width = 152;
            // 
            // McStyleListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "McStyleListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colMcStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colMcName;
        private DevExpress.XtraGrid.Columns.GridColumn colCreater;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateTime;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdater;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateTime;
    }
}
