namespace PH.MobileQC.UI
{
    partial class DetailList
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
            this.QC_Light = new DevExpress.XtraGrid.Columns.GridColumn();
            this.LightCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Action_Taken = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SolutionCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.OnOffLine = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(891, 271);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.QC_Light,
            this.LightCount,
            this.Action_Taken,
            this.SolutionCode,
            this.OnOffLine});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            // 
            // QC_Light
            // 
            this.QC_Light.Caption = "QC Result";
            this.QC_Light.FieldName = "QC_Light";
            this.QC_Light.Name = "QC_Light";
            this.QC_Light.Visible = true;
            this.QC_Light.VisibleIndex = 0;
            // 
            // LightCount
            // 
            this.LightCount.Caption = "QC Qty";
            this.LightCount.FieldName = "LightCount";
            this.LightCount.Name = "LightCount";
            this.LightCount.Visible = true;
            this.LightCount.VisibleIndex = 1;
            // 
            // Action_Taken
            // 
            this.Action_Taken.Caption = "Defect Correct";
            this.Action_Taken.FieldName = "Action_Taken";
            this.Action_Taken.Name = "Action_Taken";
            this.Action_Taken.Visible = true;
            this.Action_Taken.VisibleIndex = 2;
            this.Action_Taken.Width = 107;
            // 
            // SolutionCode
            // 
            this.SolutionCode.Caption = "Defect Prevent";
            this.SolutionCode.FieldName = "SolutionCode";
            this.SolutionCode.Name = "SolutionCode";
            this.SolutionCode.Visible = true;
            this.SolutionCode.VisibleIndex = 3;
            this.SolutionCode.Width = 122;
            // 
            // OnOffLine
            // 
            this.OnOffLine.Caption = "ON/OFF Line";
            this.OnOffLine.FieldName = "OnOffLine";
            this.OnOffLine.Name = "OnOffLine";
            this.OnOffLine.Visible = true;
            this.OnOffLine.VisibleIndex = 4;
            this.OnOffLine.Width = 102;
            // 
            // DetailList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DetailList";
            this.Size = new System.Drawing.Size(891, 298);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn QC_Light;
        private DevExpress.XtraGrid.Columns.GridColumn LightCount;
        private DevExpress.XtraGrid.Columns.GridColumn Action_Taken;
        private DevExpress.XtraGrid.Columns.GridColumn SolutionCode;
        private DevExpress.XtraGrid.Columns.GridColumn OnOffLine;
    }
}
