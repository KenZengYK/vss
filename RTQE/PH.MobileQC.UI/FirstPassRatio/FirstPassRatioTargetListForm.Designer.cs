namespace PH.MobileQC.UI.FirstPassRatio
{
    partial class FirstPassRatioTargetListForm
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
            this.colTargetValue = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEffectFromDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_FirstPassRatioTarget);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colTargetValue,
            this.colEffectFromDate,
            this.colCreateUser,
            this.colCreateDate,
            this.colAlterUser,
            this.colAlterDate,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colTargetValue
            // 
            this.colTargetValue.Caption = "TargetValue";
            this.colTargetValue.FieldName = "TargetValue";
            this.colTargetValue.Name = "colTargetValue";
            this.colTargetValue.Visible = true;
            this.colTargetValue.VisibleIndex = 1;
            this.colTargetValue.Width = 129;
            // 
            // colEffectFromDate
            // 
            this.colEffectFromDate.Caption = "EffectFromDate";
            this.colEffectFromDate.FieldName = "EffectFromDate";
            this.colEffectFromDate.Name = "colEffectFromDate";
            this.colEffectFromDate.Visible = true;
            this.colEffectFromDate.VisibleIndex = 1;
            this.colEffectFromDate.Width = 134;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 3;
            this.colCreateUser.Width = 125;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 4;
            this.colCreateDate.Width = 128;
            // 
            // colAlterUser
            // 
            this.colAlterUser.Caption = "AlterUser";
            this.colAlterUser.FieldName = "AlterUser";
            this.colAlterUser.Name = "colAlterUser";
            this.colAlterUser.Visible = true;
            this.colAlterUser.VisibleIndex = 5;
            this.colAlterUser.Width = 103;
            // 
            // colAlterDate
            // 
            this.colAlterDate.Caption = "AlterDate";
            this.colAlterDate.FieldName = "AlterDate";
            this.colAlterDate.Name = "colAlterDate";
            this.colAlterDate.Visible = true;
            this.colAlterDate.VisibleIndex = 6;
            this.colAlterDate.Width = 138;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 7;
            this.colRemark.Width = 177;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            // 
            // FirstPassRatioTargetListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FirstPassRatioTargetListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colTargetValue;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectFromDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
    }
}
