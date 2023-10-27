namespace PH.LineBalanceII.UI.BondingSpect
{
    partial class OperListForm
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
            this.colOperNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1067, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOperNo,
            this.colName,
            this.colCreater,
            this.colCreateTime,
            this.colUpdater,
            this.colUpdateTime,
            this.colOperNameEN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colOperNo
            // 
            this.colOperNo.Caption = "工序代號";
            this.colOperNo.FieldName = "OperNo";
            this.colOperNo.Name = "colOperNo";
            this.colOperNo.Visible = true;
            this.colOperNo.VisibleIndex = 0;
            // 
            // colName
            // 
            this.colName.Caption = "工序名(中文)";
            this.colName.FieldName = "OperName";
            this.colName.Name = "colName";
            this.colName.Visible = true;
            this.colName.VisibleIndex = 1;
            this.colName.Width = 350;
            // 
            // colCreater
            // 
            this.colCreater.Caption = "建立者";
            this.colCreater.FieldName = "CreateBy";
            this.colCreater.Name = "colCreater";
            this.colCreater.Visible = true;
            this.colCreater.VisibleIndex = 3;
            this.colCreater.Width = 81;
            // 
            // colCreateTime
            // 
            this.colCreateTime.Caption = "建立時間";
            this.colCreateTime.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.colCreateTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCreateTime.FieldName = "CreateTime";
            this.colCreateTime.Name = "colCreateTime";
            this.colCreateTime.Visible = true;
            this.colCreateTime.VisibleIndex = 4;
            this.colCreateTime.Width = 114;
            // 
            // colUpdater
            // 
            this.colUpdater.Caption = "修改者";
            this.colUpdater.FieldName = "UpdateBy";
            this.colUpdater.Name = "colUpdater";
            this.colUpdater.Visible = true;
            this.colUpdater.VisibleIndex = 5;
            // 
            // colUpdateTime
            // 
            this.colUpdateTime.Caption = "修改時間";
            this.colUpdateTime.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.colUpdateTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colUpdateTime.FieldName = "UpdateTime";
            this.colUpdateTime.Name = "colUpdateTime";
            this.colUpdateTime.Visible = true;
            this.colUpdateTime.VisibleIndex = 6;
            this.colUpdateTime.Width = 152;
            // 
            // colOperNameEN
            // 
            this.colOperNameEN.Caption = "工序名(英文)";
            this.colOperNameEN.FieldName = "OperNameEN";
            this.colOperNameEN.Name = "colOperNameEN";
            this.colOperNameEN.Visible = true;
            this.colOperNameEN.VisibleIndex = 2;
            this.colOperNameEN.Width = 350;
            // 
            // OperListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "OperListForm";
            this.Size = new System.Drawing.Size(1067, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colOperNo;
        private DevExpress.XtraGrid.Columns.GridColumn colName;
        private DevExpress.XtraGrid.Columns.GridColumn colCreater;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateTime;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdater;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateTime;
        private DevExpress.XtraGrid.Columns.GridColumn colOperNameEN;
    }
}
