namespace PH.RWO.UI
{
    partial class WorkOrderSampleQueryListForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.colSizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cbSampleOrderType = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cbWorkShop = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleDespatchDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAddressTo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbAddressTo = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemRadioGroup1 = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.colSymbol = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSalesOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnReport = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSampleOrderType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkShop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbAddressTo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.btnReport});
            this.objbarManager.MaxItemId = 20;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnReport, true)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.cbSampleOrderType,
            this.cbWorkShop,
            this.repositoryItemRadioGroup1,
            this.ricbAddressTo,
            this.repositoryItemComboBox2});
            this.objListGridControl.Size = new System.Drawing.Size(1206, 465);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colColorCode,
            this.colSizeDesc,
            this.colCup,
            this.colSize,
            this.colCustSize,
            this.colCustCup,
            this.colWorkShop,
            this.colSampleDespatchDate,
            this.colSampleType,
            this.colSampleQty,
            this.colAddressTo,
            this.colSymbol,
            this.colSalesOrderNo,
            this.colWorkOrderNo,
            this.colProjectNo});
            this.objListGridView.GroupCount = 1;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWorkOrderNo, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.WorkOrderSample);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Id = 15;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Id = 16;
            this.barButtonItem2.Name = "barButtonItem2";
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Id = 17;
            this.barButtonItem3.Name = "barButtonItem3";
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Id = 18;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.Caption = "Size";
            this.colSizeDesc.FieldName = "Size";
            this.colSizeDesc.Name = "colSizeDesc";
            this.colSizeDesc.OptionsColumn.ReadOnly = true;
            this.colSizeDesc.Visible = true;
            this.colSizeDesc.VisibleIndex = 9;
            this.colSizeDesc.Width = 53;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ERP Color Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 7;
            this.colColorCode.Width = 106;
            // 
            // colCup
            // 
            this.colCup.Caption = "Cup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.OptionsColumn.ReadOnly = true;
            this.colCup.Width = 42;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            // 
            // colCustSize
            // 
            this.colCustSize.Caption = "Cust Size";
            this.colCustSize.FieldName = "CustSize";
            this.colCustSize.Name = "colCustSize";
            this.colCustSize.OptionsColumn.ReadOnly = true;
            this.colCustSize.Width = 81;
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "Cust Cup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            this.colCustCup.OptionsColumn.ReadOnly = true;
            this.colCustCup.Visible = true;
            this.colCustCup.VisibleIndex = 8;
            this.colCustCup.Width = 76;
            // 
            // colSampleType
            // 
            this.colSampleType.Caption = "Sample Type";
            this.colSampleType.ColumnEdit = this.cbSampleOrderType;
            this.colSampleType.FieldName = "SampleType";
            this.colSampleType.Name = "colSampleType";
            this.colSampleType.Visible = true;
            this.colSampleType.VisibleIndex = 3;
            this.colSampleType.Width = 100;
            // 
            // cbSampleOrderType
            // 
            this.cbSampleOrderType.AutoHeight = false;
            this.cbSampleOrderType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSampleOrderType.DropDownRows = 12;
            this.cbSampleOrderType.Name = "cbSampleOrderType";
            this.cbSampleOrderType.Sorted = true;
            this.cbSampleOrderType.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbSampleOrderType.EditValueChanged += new System.EventHandler(this.cbSampleOrderType_EditValueChanged);
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "Work Shop";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 4;
            this.colWorkShop.Width = 95;
            // 
            // cbWorkShop
            // 
            this.cbWorkShop.AutoHeight = false;
            this.cbWorkShop.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWorkShop.DropDownRows = 12;
            this.cbWorkShop.Name = "cbWorkShop";
            // 
            // colSampleQty
            // 
            this.colSampleQty.Caption = "Sample Qty";
            this.colSampleQty.FieldName = "SampleQty";
            this.colSampleQty.Name = "colSampleQty";
            this.colSampleQty.Visible = true;
            this.colSampleQty.VisibleIndex = 10;
            this.colSampleQty.Width = 91;
            // 
            // colSampleDespatchDate
            // 
            this.colSampleDespatchDate.Caption = "Sample Despatch Date";
            this.colSampleDespatchDate.FieldName = "SampleDespatchDate";
            this.colSampleDespatchDate.Name = "colSampleDespatchDate";
            this.colSampleDespatchDate.Visible = true;
            this.colSampleDespatchDate.VisibleIndex = 5;
            this.colSampleDespatchDate.Width = 154;
            // 
            // colAddressTo
            // 
            this.colAddressTo.Caption = "Address To";
            this.colAddressTo.ColumnEdit = this.ricbAddressTo;
            this.colAddressTo.FieldName = "AddressTo";
            this.colAddressTo.Name = "colAddressTo";
            this.colAddressTo.Visible = true;
            this.colAddressTo.VisibleIndex = 6;
            this.colAddressTo.Width = 109;
            // 
            // ricbAddressTo
            // 
            this.ricbAddressTo.AutoHeight = false;
            this.ricbAddressTo.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbAddressTo.Name = "ricbAddressTo";
            // 
            // repositoryItemRadioGroup1
            // 
            this.repositoryItemRadioGroup1.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Customer"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Internat use")});
            this.repositoryItemRadioGroup1.Name = "repositoryItemRadioGroup1";
            // 
            // colSymbol
            // 
            this.colSymbol.Caption = "Symbol";
            this.colSymbol.ColumnEdit = this.repositoryItemComboBox2;
            this.colSymbol.FieldName = "Symbol";
            this.colSymbol.Name = "colSymbol";
            this.colSymbol.Visible = true;
            this.colSymbol.VisibleIndex = 2;
            this.colSymbol.Width = 63;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "*",
            "**"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // colSalesOrderNo
            // 
            this.colSalesOrderNo.Caption = "Sales Order No";
            this.colSalesOrderNo.FieldName = "SalesOrderNo";
            this.colSalesOrderNo.Name = "colSalesOrderNo";
            this.colSalesOrderNo.Visible = true;
            this.colSalesOrderNo.VisibleIndex = 0;
            this.colSalesOrderNo.Width = 114;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO#";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 2;
            this.colWorkOrderNo.Width = 103;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project No";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 1;
            this.colProjectNo.Width = 114;
            // 
            // btnReport
            // 
            this.btnReport.Caption = "Report";
            this.btnReport.Id = 19;
            this.btnReport.Name = "btnReport";
            this.btnReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReport_ItemClick);
            // 
            // WorkOrderSampleQueryListForm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WorkOrderSampleQueryListForm";
            this.Size = new System.Drawing.Size(1206, 492);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSampleOrderType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkShop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbAddressTo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colCup;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCustSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCustCup;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleQty;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleType;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleDespatchDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbSampleOrderType;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colAddressTo;
        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroup1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbAddressTo;
        private DevExpress.XtraGrid.Columns.GridColumn colSymbol;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraBars.BarButtonItem btnReport;

    }
}
