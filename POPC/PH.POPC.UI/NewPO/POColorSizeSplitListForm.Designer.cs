namespace PH.POPC.UI.NewPO
{
    partial class POColorSizeSplitListForm
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
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCustSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustCupDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompany = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSKU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersionFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POWireBoneMatrix);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
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
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3,
            this.gridBand1});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colSeq,
            this.colSize,
            this.colCup,
            this.colQty,
            this.colVersionFlag,
            this.colRemark,
            this.colCustSizeDesc,
            this.colCustCupDesc});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCustSizeDesc, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Description";
            this.gridBand2.Columns.Add(this.colCustSizeDesc);
            this.gridBand2.Columns.Add(this.colCustCupDesc);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 251;
            // 
            // colCustSizeDesc
            // 
            this.colCustSizeDesc.Caption = "Our Size Desc";
            this.colCustSizeDesc.FieldName = "CustSizeDesc";
            this.colCustSizeDesc.Name = "colCustSizeDesc";
            this.colCustSizeDesc.Visible = true;
            this.colCustSizeDesc.Width = 130;
            // 
            // colCustCupDesc
            // 
            this.colCustCupDesc.Caption = "Our Cup Desc";
            this.colCustCupDesc.FieldName = "CustCupDesc";
            this.colCustCupDesc.Name = "colCustCupDesc";
            this.colCustCupDesc.Visible = true;
            this.colCustCupDesc.Width = 121;
            // 
            // gridBand3
            // 
            this.gridBand3.Columns.Add(this.colQty);
            this.gridBand3.Columns.Add(this.colRemark);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 281;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colQty.Visible = true;
            this.colQty.Width = 129;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.Width = 152;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Code";
            this.gridBand1.Columns.Add(this.colCompany);
            this.gridBand1.Columns.Add(this.colPONO);
            this.gridBand1.Columns.Add(this.colVersion);
            this.gridBand1.Columns.Add(this.colAmendmentNo);
            this.gridBand1.Columns.Add(this.colOrderLine);
            this.gridBand1.Columns.Add(this.colSKU);
            this.gridBand1.Columns.Add(this.colSeq);
            this.gridBand1.Columns.Add(this.colSize);
            this.gridBand1.Columns.Add(this.colCup);
            this.gridBand1.Columns.Add(this.colVersionFlag);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 242;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PONO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            // 
            // colAmendmentNo
            // 
            this.colAmendmentNo.Caption = "AmendmentNo";
            this.colAmendmentNo.FieldName = "AmendmentNo";
            this.colAmendmentNo.Name = "colAmendmentNo";
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "OrderLine";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            // 
            // colSKU
            // 
            this.colSKU.Caption = "SKU";
            this.colSKU.FieldName = "SKU";
            this.colSKU.Name = "colSKU";
            this.colSKU.Width = 166;
            // 
            // colSeq
            // 
            this.colSeq.Caption = "Seq";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            this.colSeq.Width = 63;
            // 
            // colSize
            // 
            this.colSize.Caption = "Our Size Code";
            this.colSize.ColumnEdit = this.repositoryItemTextEdit1;
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.OptionsColumn.AllowEdit = false;
            this.colSize.OptionsColumn.ReadOnly = true;
            this.colSize.Visible = true;
            this.colSize.Width = 119;
            // 
            // colCup
            // 
            this.colCup.Caption = "Our Cup Code";
            this.colCup.ColumnEdit = this.repositoryItemTextEdit1;
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.OptionsColumn.AllowEdit = false;
            this.colCup.OptionsColumn.ReadOnly = true;
            this.colCup.Visible = true;
            this.colCup.Width = 123;
            // 
            // colVersionFlag
            // 
            this.colVersionFlag.Caption = "VersionFlag";
            this.colVersionFlag.FieldName = "VersionFlag";
            this.colVersionFlag.Name = "colVersionFlag";
            // 
            // POColorSizeSplitListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POColorSizeSplitListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCompany;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmendmentNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSKU;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersionFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustCupDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
    }
}
