namespace PH.MR.UI.Packing
{
    partial class StyleWeightListForm
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
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition2 = new DevExpress.XtraGrid.StyleFormatCondition();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition3 = new DevExpress.XtraGrid.StyleFormatCondition();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition4 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colWeightOverValue = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeight_MR = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeight_packing = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bBtn_GenerateStyle = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.CompareReport = new DevExpress.XtraBars.BarButtonItem();
            this.colWorkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleTotalWeight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNO = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.bBtn_GenerateStyle,
            this.barSubItem1,
            this.CompareReport});
            this.objbarManager.MaxItemId = 63;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.bBtn_GenerateStyle),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem1)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MR.BO.MRStyleWeightCompare_Packing);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemSpinEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1075, 438);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSalesOrder,
            this.colProjectNO,
            this.colStyleNO,
            this.colWorkOrderNO,
            this.colWorkQty,
            this.colStyleTotalWeight,
            this.colWeight_packing,
            this.colWeight_MR,
            this.colWeightOverValue,
            this.colRemark});
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Yellow;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.Column = this.colWeightOverValue;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Between;
            styleFormatCondition1.Value1 = 20;
            styleFormatCondition1.Value2 = new decimal(new int[] {
            50,
            0,
            0,
            0});
            styleFormatCondition2.Appearance.BackColor = System.Drawing.Color.Red;
            styleFormatCondition2.Appearance.Options.UseBackColor = true;
            styleFormatCondition2.Column = this.colWeightOverValue;
            styleFormatCondition2.Condition = DevExpress.XtraGrid.FormatConditionEnum.Greater;
            styleFormatCondition2.Value1 = new decimal(new int[] {
            50,
            0,
            0,
            0});
            styleFormatCondition3.Appearance.BackColor = System.Drawing.Color.Yellow;
            styleFormatCondition3.Appearance.Options.UseBackColor = true;
            styleFormatCondition3.Column = this.colWeightOverValue;
            styleFormatCondition3.Condition = DevExpress.XtraGrid.FormatConditionEnum.Between;
            styleFormatCondition3.Value1 = new decimal(new int[] {
            50,
            0,
            0,
            -2147483648});
            styleFormatCondition3.Value2 = new decimal(new int[] {
            20,
            0,
            0,
            -2147483648});
            styleFormatCondition4.Appearance.BackColor = System.Drawing.Color.Red;
            styleFormatCondition4.Appearance.Options.UseBackColor = true;
            styleFormatCondition4.Column = this.colWeightOverValue;
            styleFormatCondition4.Condition = DevExpress.XtraGrid.FormatConditionEnum.Less;
            styleFormatCondition4.Value1 = new decimal(new int[] {
            50,
            0,
            0,
            -2147483648});
            this.objListGridView.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1,
            styleFormatCondition2,
            styleFormatCondition3,
            styleFormatCondition4});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colWeightOverValue
            // 
            this.colWeightOverValue.Caption = "Weight Over Value";
            this.colWeightOverValue.DisplayFormat.FormatString = "{0:#,##0.0##}%";
            this.colWeightOverValue.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colWeightOverValue.FieldName = "WeightOverValue";
            this.colWeightOverValue.Name = "colWeightOverValue";
            this.colWeightOverValue.OptionsColumn.AllowEdit = false;
            this.colWeightOverValue.Visible = true;
            this.colWeightOverValue.VisibleIndex = 8;
            this.colWeightOverValue.Width = 132;
            // 
            // colSalesOrder
            // 
            this.colSalesOrder.Caption = "Sales Order";
            this.colSalesOrder.FieldName = "SalesOrder";
            this.colSalesOrder.Name = "colSalesOrder";
            this.colSalesOrder.OptionsColumn.AllowEdit = false;
            this.colSalesOrder.Visible = true;
            this.colSalesOrder.VisibleIndex = 0;
            this.colSalesOrder.Width = 86;
            // 
            // colProjectNO
            // 
            this.colProjectNO.Caption = "Project NO";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.OptionsColumn.AllowEdit = false;
            this.colProjectNO.Visible = true;
            this.colProjectNO.VisibleIndex = 1;
            this.colProjectNO.Width = 86;
            // 
            // colStyleNO
            // 
            this.colStyleNO.Caption = "Style NO";
            this.colStyleNO.FieldName = "StyleNO";
            this.colStyleNO.Name = "colStyleNO";
            this.colStyleNO.OptionsColumn.AllowEdit = false;
            this.colStyleNO.Visible = true;
            this.colStyleNO.VisibleIndex = 2;
            this.colStyleNO.Width = 86;
            // 
            // colWeight_MR
            // 
            this.colWeight_MR.Caption = "Weight (MR)";
            this.colWeight_MR.DisplayFormat.FormatString = "#,##0.0##";
            this.colWeight_MR.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colWeight_MR.FieldName = "Weight_MR";
            this.colWeight_MR.Name = "colWeight_MR";
            this.colWeight_MR.OptionsColumn.AllowEdit = false;
            this.colWeight_MR.Visible = true;
            this.colWeight_MR.VisibleIndex = 7;
            this.colWeight_MR.Width = 119;
            // 
            // colWeight_packing
            // 
            this.colWeight_packing.Caption = "Weight (packing)";
            this.colWeight_packing.DisplayFormat.FormatString = "#,##0.0##";
            this.colWeight_packing.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colWeight_packing.FieldName = "Weight_packing";
            this.colWeight_packing.Name = "colWeight_packing";
            this.colWeight_packing.OptionsColumn.AllowEdit = false;
            this.colWeight_packing.Visible = true;
            this.colWeight_packing.VisibleIndex = 6;
            this.colWeight_packing.Width = 112;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.DisplayFormat.FormatString = "#,##0.#########";
            this.repositoryItemSpinEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.EditFormat.FormatString = "#,##0.#########";
            this.repositoryItemSpinEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 9;
            this.colRemark.Width = 187;
            // 
            // bBtn_GenerateStyle
            // 
            this.bBtn_GenerateStyle.Caption = "Generate Style";
            this.bBtn_GenerateStyle.Id = 60;
            this.bBtn_GenerateStyle.Name = "bBtn_GenerateStyle";
            this.bBtn_GenerateStyle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bBtn_GenerateStyle_ItemClick);
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Report";
            this.barSubItem1.Id = 61;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.CompareReport)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // CompareReport
            // 
            this.CompareReport.Caption = "Compare Report";
            this.CompareReport.Id = 62;
            this.CompareReport.Name = "CompareReport";
            this.CompareReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.CompareReport_ItemClick);
            // 
            // colWorkQty
            // 
            this.colWorkQty.Caption = "Work Qty";
            this.colWorkQty.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colWorkQty.FieldName = "WorkQty";
            this.colWorkQty.Name = "colWorkQty";
            this.colWorkQty.Visible = true;
            this.colWorkQty.VisibleIndex = 4;
            this.colWorkQty.Width = 77;
            // 
            // colStyleTotalWeight
            // 
            this.colStyleTotalWeight.Caption = "Style Total Weight";
            this.colStyleTotalWeight.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colStyleTotalWeight.FieldName = "StyleTotalWeight";
            this.colStyleTotalWeight.Name = "colStyleTotalWeight";
            this.colStyleTotalWeight.Visible = true;
            this.colStyleTotalWeight.VisibleIndex = 5;
            this.colStyleTotalWeight.Width = 125;
            // 
            // colWorkOrderNO
            // 
            this.colWorkOrderNO.Caption = "Work Order NO";
            this.colWorkOrderNO.FieldName = "WorkOrderNO";
            this.colWorkOrderNO.Name = "colWorkOrderNO";
            this.colWorkOrderNO.Visible = true;
            this.colWorkOrderNO.VisibleIndex = 3;
            // 
            // StyleWeightListForm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleWeightListForm";
            this.Size = new System.Drawing.Size(1075, 465);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrder;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNO;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNO;
        private DevExpress.XtraGrid.Columns.GridColumn colWeight_MR;
        private DevExpress.XtraGrid.Columns.GridColumn colWeight_packing;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraBars.BarButtonItem bBtn_GenerateStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colWeightOverValue;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem CompareReport;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkQty;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleTotalWeight;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNO;
    }
}
