namespace PH.RWO.UI.Amend
{
    partial class AmendItemList
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
            this.gcWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFac = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProj = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPhStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcExitDate = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.AmendDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcWO,
            this.gcFac,
            this.gcProj,
            this.gcPhStyle,
            this.gcCustStyle,
            this.gcExitDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcWO
            // 
            this.gcWO.Caption = "制單號";
            this.gcWO.FieldName = "WorkOrderNo";
            this.gcWO.Name = "gcWO";
            this.gcWO.Visible = true;
            this.gcWO.VisibleIndex = 0;
            this.gcWO.Width = 109;
            // 
            // gcFac
            // 
            this.gcFac.Caption = "工廠";
            this.gcFac.FieldName = "Factory";
            this.gcFac.Name = "gcFac";
            this.gcFac.Visible = true;
            this.gcFac.VisibleIndex = 1;
            this.gcFac.Width = 53;
            // 
            // gcProj
            // 
            this.gcProj.Caption = "工程號";
            this.gcProj.FieldName = "Project";
            this.gcProj.Name = "gcProj";
            this.gcProj.Visible = true;
            this.gcProj.VisibleIndex = 2;
            // 
            // gcPhStyle
            // 
            this.gcPhStyle.Caption = "PH款號";
            this.gcPhStyle.FieldName = "PhStyleNo";
            this.gcPhStyle.Name = "gcPhStyle";
            this.gcPhStyle.Visible = true;
            this.gcPhStyle.VisibleIndex = 3;
            this.gcPhStyle.Width = 110;
            // 
            // gcCustStyle
            // 
            this.gcCustStyle.Caption = "客款號";
            this.gcCustStyle.FieldName = "CustStyle";
            this.gcCustStyle.Name = "gcCustStyle";
            this.gcCustStyle.Visible = true;
            this.gcCustStyle.VisibleIndex = 4;
            this.gcCustStyle.Width = 141;
            // 
            // gcExitDate
            // 
            this.gcExitDate.Caption = "離廠日期";
            this.gcExitDate.FieldName = "ExitDate";
            this.gcExitDate.Name = "gcExitDate";
            this.gcExitDate.Visible = true;
            this.gcExitDate.VisibleIndex = 5;
            this.gcExitDate.Width = 142;
            // 
            // AmendItemList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AmendItemList";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcWO;
        private DevExpress.XtraGrid.Columns.GridColumn gcFac;
        private DevExpress.XtraGrid.Columns.GridColumn gcProj;
        private DevExpress.XtraGrid.Columns.GridColumn gcPhStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcExitDate;
    }
}
