namespace PH.LWPM.UI.WF
{
    partial class WFWorkHistory
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
            this.colOptCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOptName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMachineId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFAE = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.vw_workhistory);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOptCode,
            this.colOptName,
            this.colMachineId,
            this.colMcName,
            this.colMcType,
            this.colFAE});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colOptCode
            // 
            this.colOptCode.Caption = "Operation Code";
            this.colOptCode.FieldName = "operationcode";
            this.colOptCode.Name = "colOptCode";
            this.colOptCode.Visible = true;
            this.colOptCode.VisibleIndex = 0;
            this.colOptCode.Width = 107;
            // 
            // colOptName
            // 
            this.colOptName.Caption = "Operation Name";
            this.colOptName.FieldName = "operationname";
            this.colOptName.Name = "colOptName";
            this.colOptName.Visible = true;
            this.colOptName.VisibleIndex = 1;
            this.colOptName.Width = 246;
            // 
            // colMachineId
            // 
            this.colMachineId.Caption = "Machine Id";
            this.colMachineId.FieldName = "machineid";
            this.colMachineId.Name = "colMachineId";
            this.colMachineId.Visible = true;
            this.colMachineId.VisibleIndex = 2;
            this.colMachineId.Width = 80;
            // 
            // colMcName
            // 
            this.colMcName.Caption = "Machine Name";
            this.colMcName.FieldName = "machinename";
            this.colMcName.Name = "colMcName";
            this.colMcName.Visible = true;
            this.colMcName.VisibleIndex = 3;
            this.colMcName.Width = 224;
            // 
            // colMcType
            // 
            this.colMcType.Caption = "Machine Type";
            this.colMcType.FieldName = "machinetype";
            this.colMcType.Name = "colMcType";
            this.colMcType.Visible = true;
            this.colMcType.VisibleIndex = 4;
            this.colMcType.Width = 135;
            // 
            // colFAE
            // 
            this.colFAE.Caption = "FAE";
            this.colFAE.FieldName = "fae";
            this.colFAE.Name = "colFAE";
            this.colFAE.Visible = true;
            this.colFAE.VisibleIndex = 5;
            // 
            // WFWorkHistory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WFWorkHistory";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colOptCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOptName;
        private DevExpress.XtraGrid.Columns.GridColumn colMachineId;
        private DevExpress.XtraGrid.Columns.GridColumn colMcName;
        private DevExpress.XtraGrid.Columns.GridColumn colMcType;
        private DevExpress.XtraGrid.Columns.GridColumn colFAE;
    }
}
