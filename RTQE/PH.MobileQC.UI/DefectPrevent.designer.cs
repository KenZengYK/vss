namespace PH.MobileQC.UI
{
    partial class DefectPrevent
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
            this.Defect_Type = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Defect_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Defect_Spec = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Defect_Type,
            this.Defect_Spec,
            this.Defect_Code});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(626, 507);
            // 
            // Defect_Type
            // 
            this.Defect_Type.Caption = "Defect Type";
            this.Defect_Type.FieldName = "Defect_Type_Zh";
            this.Defect_Type.Name = "Defect_Type";
            this.Defect_Type.Width = 77;
            // 
            // Defect_Code
            // 
            this.Defect_Code.Caption = "Defect Code";
            this.Defect_Code.FieldName = "Defect_Code";
            this.Defect_Code.Name = "Defect_Code";
            this.Defect_Code.Visible = true;
            this.Defect_Code.VisibleIndex = 1;
            this.Defect_Code.Width = 129;
            // 
            // Defect_Spec
            // 
            this.Defect_Spec.Caption = "Defect Prevent";
            this.Defect_Spec.FieldName = "Defect_Spec";
            this.Defect_Spec.Name = "Defect_Spec";
            this.Defect_Spec.Visible = true;
            this.Defect_Spec.VisibleIndex = 0;
            this.Defect_Spec.Width = 240;
            // 
            // DefectPrevent
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DefectPrevent";
            this.Size = new System.Drawing.Size(626, 533);
            //this.Load += new System.EventHandler(this.DefectPrevent_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn Defect_Type;
        private DevExpress.XtraGrid.Columns.GridColumn Defect_Code;
        private DevExpress.XtraGrid.Columns.GridColumn Defect_Spec;
    }
}
