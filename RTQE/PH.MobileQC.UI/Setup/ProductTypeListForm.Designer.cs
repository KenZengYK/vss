﻿namespace PH.MobileQC.UI.Setup
{
    partial class ProductTypeListForm
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
            this.gcCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcEditer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_ProductTypeInfo);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcCode,
            this.gcName,
            this.gcCreater,
            this.gcCreateDate,
            this.gcEditer,
            this.gcAlterDate,
            this.gcRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcCode
            // 
            this.gcCode.Caption = "類型代碼";
            this.gcCode.FieldName = "ProductTypeCode";
            this.gcCode.Name = "gcCode";
            this.gcCode.Visible = true;
            this.gcCode.VisibleIndex = 0;
            // 
            // gcName
            // 
            this.gcName.Caption = "類型描述";
            this.gcName.FieldName = "ProductTypeName";
            this.gcName.Name = "gcName";
            this.gcName.Visible = true;
            this.gcName.VisibleIndex = 1;
            this.gcName.Width = 89;
            // 
            // gcCreater
            // 
            this.gcCreater.Caption = "建立者";
            this.gcCreater.FieldName = "CreateUser";
            this.gcCreater.Name = "gcCreater";
            this.gcCreater.Visible = true;
            this.gcCreater.VisibleIndex = 3;
            this.gcCreater.Width = 97;
            // 
            // gcCreateDate
            // 
            this.gcCreateDate.Caption = "建立時間";
            this.gcCreateDate.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcCreateDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcCreateDate.FieldName = "CreateDate";
            this.gcCreateDate.Name = "gcCreateDate";
            this.gcCreateDate.Visible = true;
            this.gcCreateDate.VisibleIndex = 4;
            this.gcCreateDate.Width = 169;
            // 
            // gcRemark
            // 
            this.gcRemark.Caption = "備注";
            this.gcRemark.FieldName = "Remark";
            this.gcRemark.Name = "gcRemark";
            this.gcRemark.Visible = true;
            this.gcRemark.VisibleIndex = 2;
            this.gcRemark.Width = 106;
            // 
            // gcEditer
            // 
            this.gcEditer.Caption = "修改者";
            this.gcEditer.FieldName = "AlterUser";
            this.gcEditer.Name = "gcEditer";
            this.gcEditer.Visible = true;
            this.gcEditer.VisibleIndex = 5;
            this.gcEditer.Width = 71;
            // 
            // gcAlterDate
            // 
            this.gcAlterDate.Caption = "修改時間";
            this.gcAlterDate.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcAlterDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcAlterDate.FieldName = "AlterDate";
            this.gcAlterDate.Name = "gcAlterDate";
            this.gcAlterDate.Visible = true;
            this.gcAlterDate.VisibleIndex = 6;
            this.gcAlterDate.Width = 166;
            // 
            // ProductTypeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProductTypeListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcName;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreater;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcRemark;
        private DevExpress.XtraGrid.Columns.GridColumn gcEditer;
        private DevExpress.XtraGrid.Columns.GridColumn gcAlterDate;
    }
}