namespace PH.MobileQC.UI
{
    partial class AlertEmailListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colTO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBCC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlertSwitch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFac = new DevExpress.XtraGrid.Columns.GridColumn();
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
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(984, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colTO,
            this.colCC,
            this.colBCC,
            this.colAlertSwitch,
            this.gcFac});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colTO
            // 
            this.colTO.Caption = "TO";
            this.colTO.FieldName = "TO";
            this.colTO.Name = "colTO";
            this.colTO.Visible = true;
            this.colTO.VisibleIndex = 1;
            this.colTO.Width = 153;
            // 
            // colCC
            // 
            this.colCC.Caption = "CC";
            this.colCC.FieldName = "CC";
            this.colCC.Name = "colCC";
            this.colCC.Visible = true;
            this.colCC.VisibleIndex = 2;
            this.colCC.Width = 181;
            // 
            // colBCC
            // 
            this.colBCC.Caption = "BCC";
            this.colBCC.FieldName = "BCC";
            this.colBCC.Name = "colBCC";
            this.colBCC.Visible = true;
            this.colBCC.VisibleIndex = 3;
            this.colBCC.Width = 127;
            // 
            // colAlertSwitch
            // 
            this.colAlertSwitch.Caption = "Alert Threshold Values";
            this.colAlertSwitch.FieldName = "AlertSwitch";
            this.colAlertSwitch.Name = "colAlertSwitch";
            this.colAlertSwitch.Visible = true;
            this.colAlertSwitch.VisibleIndex = 4;
            this.colAlertSwitch.Width = 161;
            // 
            // gcFac
            // 
            this.gcFac.Caption = "Factory";
            this.gcFac.FieldName = "Factory";
            this.gcFac.Name = "gcFac";
            this.gcFac.Visible = true;
            this.gcFac.VisibleIndex = 0;
            // 
            // AlertEmailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AlertEmailListForm";
            this.Size = new System.Drawing.Size(984, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colTO;
        private DevExpress.XtraGrid.Columns.GridColumn colCC;
        private DevExpress.XtraGrid.Columns.GridColumn colBCC;
        private DevExpress.XtraGrid.Columns.GridColumn colAlertSwitch;
        private DevExpress.XtraGrid.Columns.GridColumn gcFac;
    }
}
