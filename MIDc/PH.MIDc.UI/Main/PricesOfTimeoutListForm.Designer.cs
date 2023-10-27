namespace PH.MIDc.UI
{
    partial class PricesOfTimeoutListForm
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
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPriceType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsMultiPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colEffectFromDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEffectEndDate = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
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
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.V_PricesOfTimeout);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemImageComboBox1});
            this.objListGridControl.Size = new System.Drawing.Size(882, 434);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSuppRef,
            this.colPriceType,
            this.colCategory,
            this.colIsMultiPrice,
            this.colEffectFromDate,
            this.colEffectEndDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "Supplier Item Reference";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 0;
            this.colSuppRef.Width = 152;
            // 
            // colPriceType
            // 
            this.colPriceType.Caption = "Price Type";
            this.colPriceType.FieldName = "PriceType";
            this.colPriceType.Name = "colPriceType";
            this.colPriceType.Visible = true;
            this.colPriceType.VisibleIndex = 1;
            this.colPriceType.Width = 205;
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 2;
            this.colCategory.Width = 128;
            // 
            // colIsMultiPrice
            // 
            this.colIsMultiPrice.Caption = "Is MultiPrice";
            this.colIsMultiPrice.ColumnEdit = this.repositoryItemImageComboBox1;
            this.colIsMultiPrice.FieldName = "IsMultiPrice";
            this.colIsMultiPrice.Name = "colIsMultiPrice";
            this.colIsMultiPrice.Visible = true;
            this.colIsMultiPrice.VisibleIndex = 3;
            this.colIsMultiPrice.Width = 91;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("", false, -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // colEffectFromDate
            // 
            this.colEffectFromDate.Caption = "Effect From Date";
            this.colEffectFromDate.FieldName = "EffectFromDate";
            this.colEffectFromDate.Name = "colEffectFromDate";
            this.colEffectFromDate.Visible = true;
            this.colEffectFromDate.VisibleIndex = 4;
            this.colEffectFromDate.Width = 118;
            // 
            // colEffectEndDate
            // 
            this.colEffectEndDate.Caption = "Effect End Date";
            this.colEffectEndDate.FieldName = "EffectEndDate";
            this.colEffectEndDate.Name = "colEffectEndDate";
            this.colEffectEndDate.Visible = true;
            this.colEffectEndDate.VisibleIndex = 5;
            this.colEffectEndDate.Width = 99;
            // 
            // PricesOfTimeoutListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PricesOfTimeoutListForm";
            this.Size = new System.Drawing.Size(882, 460);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colPriceType;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
        private DevExpress.XtraGrid.Columns.GridColumn colIsMultiPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectFromDate;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectEndDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
    }
}
