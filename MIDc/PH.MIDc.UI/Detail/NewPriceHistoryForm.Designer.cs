namespace PH.MIDc.UI
{
    partial class NewPriceHistoryForm
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
            this.components = new System.ComponentModel.Container();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gViewHistoryPrice = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colPriceType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEffectFromDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEffectEndDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsMultiPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gViewHistoryPrice)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gViewHistoryPrice;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(300, 551);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gViewHistoryPrice});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.MIDc.BO.MaterialPriceHeader);
            // 
            // gViewHistoryPrice
            // 
            this.gViewHistoryPrice.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPriceType,
            this.colCategory,
            this.colEffectFromDate,
            this.colEffectEndDate,
            this.colIsMultiPrice});
            this.gViewHistoryPrice.GridControl = this.gridControl1;
            this.gViewHistoryPrice.GroupCount = 2;
            this.gViewHistoryPrice.Name = "gViewHistoryPrice";
            this.gViewHistoryPrice.OptionsBehavior.Editable = false;
            this.gViewHistoryPrice.OptionsView.ShowDetailButtons = false;
            this.gViewHistoryPrice.OptionsView.ShowGroupPanel = false;
            this.gViewHistoryPrice.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colPriceType, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCategory, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gViewHistoryPrice.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gViewHistoryPrice_FocusedRowChanged);
            // 
            // colPriceType
            // 
            this.colPriceType.Caption = "PriceType";
            this.colPriceType.FieldName = "PriceType";
            this.colPriceType.Name = "colPriceType";
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 0;
            this.colCategory.Width = 79;
            // 
            // colEffectFromDate
            // 
            this.colEffectFromDate.Caption = "EffectFromDate";
            this.colEffectFromDate.FieldName = "EffectFromDate";
            this.colEffectFromDate.Name = "colEffectFromDate";
            this.colEffectFromDate.Visible = true;
            this.colEffectFromDate.VisibleIndex = 0;
            this.colEffectFromDate.Width = 104;
            // 
            // colEffectEndDate
            // 
            this.colEffectEndDate.Caption = "EffectEndDate";
            this.colEffectEndDate.FieldName = "EffectEndDate";
            this.colEffectEndDate.Name = "colEffectEndDate";
            this.colEffectEndDate.Visible = true;
            this.colEffectEndDate.VisibleIndex = 1;
            this.colEffectEndDate.Width = 99;
            // 
            // colIsMultiPrice
            // 
            this.colIsMultiPrice.Caption = "IsMultiPrice";
            this.colIsMultiPrice.FieldName = "IsMultiPrice";
            this.colIsMultiPrice.Name = "colIsMultiPrice";
            this.colIsMultiPrice.Visible = true;
            this.colIsMultiPrice.VisibleIndex = 2;
            this.colIsMultiPrice.Width = 96;
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.gridControl1);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(1073, 559);
            this.splitContainerControl1.SplitterPosition = 308;
            this.PlatetoolTipController.SetSuperTip(this.splitContainerControl1, null);
            this.splitContainerControl1.TabIndex = 1;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // NewPriceHistoryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainerControl1);
            this.Name = "NewPriceHistoryForm";
            this.Size = new System.Drawing.Size(1073, 559);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.NewPriceHistoryForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gViewHistoryPrice)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gViewHistoryPrice;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colPriceType;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
        private DevExpress.XtraGrid.Columns.GridColumn colIsMultiPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectFromDate;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectEndDate;
    }
}
