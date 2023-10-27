namespace PH.LWPM.UI.LB4
{
    partial class LB4AuditFrm
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
            this.gcWkname = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMachineID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcLinecode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRwo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcQn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStart = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcEnd = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnFind
            // 
            this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcWkname,
            this.gcMachineID,
            this.gcLinecode,
            this.gcWO,
            this.gcStyle,
            this.gcRwo,
            this.gcColor,
            this.gcQn,
            this.gcStart,
            this.gcEnd});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            // 
            // gcWkname
            // 
            this.gcWkname.Caption = "Woker Name";
            this.gcWkname.FieldName = "WorkerName";
            this.gcWkname.Name = "gcWkname";
            this.gcWkname.Visible = true;
            this.gcWkname.VisibleIndex = 0;
            // 
            // gcMachineID
            // 
            this.gcMachineID.Caption = "Machine ID";
            this.gcMachineID.FieldName = "MachineId";
            this.gcMachineID.Name = "gcMachineID";
            this.gcMachineID.Visible = true;
            this.gcMachineID.VisibleIndex = 1;
            // 
            // gcLinecode
            // 
            this.gcLinecode.Caption = "Line Code";
            this.gcLinecode.FieldName = "LineCode";
            this.gcLinecode.Name = "gcLinecode";
            this.gcLinecode.Visible = true;
            this.gcLinecode.VisibleIndex = 2;
            // 
            // gcWO
            // 
            this.gcWO.Caption = "WO";
            this.gcWO.FieldName = "J2_job";
            this.gcWO.Name = "gcWO";
            this.gcWO.Visible = true;
            this.gcWO.VisibleIndex = 3;
            // 
            // gcStyle
            // 
            this.gcStyle.Caption = "Cust Style";
            this.gcStyle.FieldName = "CustStyleCode";
            this.gcStyle.Name = "gcStyle";
            this.gcStyle.Visible = true;
            this.gcStyle.VisibleIndex = 4;
            // 
            // gcRwo
            // 
            this.gcRwo.Caption = "Rwo";
            this.gcRwo.FieldName = "Rwo";
            this.gcRwo.Name = "gcRwo";
            this.gcRwo.Visible = true;
            this.gcRwo.VisibleIndex = 5;
            // 
            // gcColor
            // 
            this.gcColor.Caption = "Color";
            this.gcColor.FieldName = "Bcolor";
            this.gcColor.Name = "gcColor";
            this.gcColor.Visible = true;
            this.gcColor.VisibleIndex = 6;
            // 
            // gcQn
            // 
            this.gcQn.Caption = "Qn";
            this.gcQn.FieldName = "Qn";
            this.gcQn.Name = "gcQn";
            this.gcQn.Visible = true;
            this.gcQn.VisibleIndex = 7;
            // 
            // gcStart
            // 
            this.gcStart.Caption = "Start Date";
            this.gcStart.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcStart.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.gcStart.FieldName = "StartTime";
            this.gcStart.Name = "gcStart";
            this.gcStart.Visible = true;
            this.gcStart.VisibleIndex = 8;
            // 
            // gcEnd
            // 
            this.gcEnd.Caption = "End Date";
            this.gcEnd.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcEnd.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.gcEnd.FieldName = "StartTime";
            this.gcEnd.Name = "gcEnd";
            this.gcEnd.Visible = true;
            this.gcEnd.VisibleIndex = 9;
            // 
            // LB4AuditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LB4AuditFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcWkname;
        private DevExpress.XtraGrid.Columns.GridColumn gcMachineID;
        private DevExpress.XtraGrid.Columns.GridColumn gcLinecode;
        private DevExpress.XtraGrid.Columns.GridColumn gcWO;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcRwo;
        private DevExpress.XtraGrid.Columns.GridColumn gcColor;
        private DevExpress.XtraGrid.Columns.GridColumn gcQn;
        private DevExpress.XtraGrid.Columns.GridColumn gcStart;
        private DevExpress.XtraGrid.Columns.GridColumn gcEnd;
    }
}
