namespace PH.POPC.UI.NewPO
{
    partial class SupplierCustomerSizeCupListForm
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
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCustomer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHSytleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSuppSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppCupDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCustSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustCupDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSuppSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCustSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFID = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.SupplierCustomerSizeCup);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "barButtonItem1";
            this.barButtonItem1.Id = 54;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colSuppSizeDesc,
            this.colSuppCupDesc,
            this.colCustSizeDesc,
            this.colCustCupDesc,
            this.colFID,
            this.colSuppSize,
            this.colSuppCup,
            this.colCustomer,
            this.colCustStyleNo,
            this.colCustSize,
            this.colCustCup,
            this.colPHSytleNo,
            this.colRemark});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(934, 521, 208, 184);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.GroupCount = 1;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCustomer, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Style";
            this.gridBand1.Columns.Add(this.colCustomer);
            this.gridBand1.Columns.Add(this.colPHSytleNo);
            this.gridBand1.Columns.Add(this.colCustStyleNo);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 366;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.Width = 118;
            // 
            // colPHSytleNo
            // 
            this.colPHSytleNo.Caption = "PH StyleNo";
            this.colPHSytleNo.FieldName = "PHStyleNo";
            this.colPHSytleNo.Name = "colPHSytleNo";
            this.colPHSytleNo.Visible = true;
            this.colPHSytleNo.Width = 122;
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "Cust StyleNo";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.Visible = true;
            this.colCustStyleNo.Width = 126;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Description";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand6});
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 450;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Supplier";
            this.gridBand5.Columns.Add(this.colSuppSizeDesc);
            this.gridBand5.Columns.Add(this.colSuppCupDesc);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 225;
            // 
            // colSuppSizeDesc
            // 
            this.colSuppSizeDesc.Caption = "Supp Size Desc";
            this.colSuppSizeDesc.FieldName = "SuppSizeDesc";
            this.colSuppSizeDesc.Name = "colSuppSizeDesc";
            this.colSuppSizeDesc.OptionsColumn.AllowEdit = false;
            this.colSuppSizeDesc.OptionsColumn.ReadOnly = true;
            this.colSuppSizeDesc.Visible = true;
            this.colSuppSizeDesc.Width = 108;
            // 
            // colSuppCupDesc
            // 
            this.colSuppCupDesc.Caption = "Supp Cup Desc";
            this.colSuppCupDesc.FieldName = "SuppCupDesc";
            this.colSuppCupDesc.Name = "colSuppCupDesc";
            this.colSuppCupDesc.OptionsColumn.AllowEdit = false;
            this.colSuppCupDesc.OptionsColumn.ReadOnly = true;
            this.colSuppCupDesc.Visible = true;
            this.colSuppCupDesc.Width = 117;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Customer";
            this.gridBand6.Columns.Add(this.colCustSizeDesc);
            this.gridBand6.Columns.Add(this.colCustCupDesc);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 225;
            // 
            // colCustSizeDesc
            // 
            this.colCustSizeDesc.Caption = "Cust Size Desc";
            this.colCustSizeDesc.FieldName = "CustSizeDesc";
            this.colCustSizeDesc.Name = "colCustSizeDesc";
            this.colCustSizeDesc.OptionsColumn.AllowEdit = false;
            this.colCustSizeDesc.OptionsColumn.ReadOnly = true;
            this.colCustSizeDesc.Visible = true;
            this.colCustSizeDesc.Width = 118;
            // 
            // colCustCupDesc
            // 
            this.colCustCupDesc.Caption = "Cust Cup Desc";
            this.colCustCupDesc.FieldName = "CustCupDesc";
            this.colCustCupDesc.Name = "colCustCupDesc";
            this.colCustCupDesc.OptionsColumn.AllowEdit = false;
            this.colCustCupDesc.OptionsColumn.ReadOnly = true;
            this.colCustCupDesc.Visible = true;
            this.colCustCupDesc.Width = 107;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Code";
            this.gridBand3.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand7,
            this.gridBand8});
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 359;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Supplier";
            this.gridBand7.Columns.Add(this.colSuppSize);
            this.gridBand7.Columns.Add(this.colSuppCup);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 193;
            // 
            // colSuppSize
            // 
            this.colSuppSize.Caption = "Supp Size";
            this.colSuppSize.FieldName = "SuppSize";
            this.colSuppSize.Name = "colSuppSize";
            this.colSuppSize.Visible = true;
            this.colSuppSize.Width = 101;
            // 
            // colSuppCup
            // 
            this.colSuppCup.Caption = "Supp Cup";
            this.colSuppCup.FieldName = "SuppCup";
            this.colSuppCup.Name = "colSuppCup";
            this.colSuppCup.Visible = true;
            this.colSuppCup.Width = 92;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "Customer";
            this.gridBand8.Columns.Add(this.colCustSize);
            this.gridBand8.Columns.Add(this.colCustCup);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 166;
            // 
            // colCustSize
            // 
            this.colCustSize.Caption = "Cust Size";
            this.colCustSize.FieldName = "CustSize";
            this.colCustSize.Name = "colCustSize";
            this.colCustSize.Visible = true;
            this.colCustSize.Width = 85;
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "Cust Cup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            this.colCustCup.Visible = true;
            this.colCustCup.Width = 81;
            // 
            // gridBand4
            // 
            this.gridBand4.Columns.Add(this.colFID);
            this.gridBand4.Columns.Add(this.colRemark);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 84;
            // 
            // colFID
            // 
            this.colFID.Caption = "FID";
            this.colFID.FieldName = "FID";
            this.colFID.Name = "colFID";
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.Width = 84;
            // 
            // SupplierCustomerSizeCupListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SupplierCustomerSizeCupListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppCupDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustCupDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppCup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustomer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustCup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHSytleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;


    }
}
