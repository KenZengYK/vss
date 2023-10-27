namespace PH.MIDc.UI
{
    partial class MaterialTypeListForm
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
            this.gridColumn_MaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_MaterialGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_HsCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn_DemensionDes = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_SuppSizeCupElementDes = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_YieldUsageDes = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Status = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_HSCodeRMB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_HSXRMB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeNameRMB_TW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeNameRMB_CN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeNameRMB_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeNameXRMB_TW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeNameXRMB_CN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeNameXRMB_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 14;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MaterialType);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(1576, 514);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_MaterialType,
            this.gridColumn_Description,
            this.gridColumn_HsCode,
            this.gridColumn_HSCodeRMB,
            this.gridColumn_HSXRMB,
            this.colHSCodeNameRMB_TW,
            this.colHSCodeNameRMB_CN,
            this.colHSCodeNameRMB_EN,
            this.colHSCodeNameXRMB_TW,
            this.colHSCodeNameXRMB_CN,
            this.colHSCodeNameXRMB_EN,
            this.gridColumn_DemensionDes,
            this.gridColumn_SuppSizeCupElementDes,
            this.gridColumn_YieldUsageDes,
            this.colCN,
            this.gridColumn_Status,
            this.gridColumn_MaterialGroup,
            this.colTH});
            this.objListGridView.GroupCount = 2;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn_Status, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn_MaterialGroup, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridColumn_MaterialType
            // 
            this.gridColumn_MaterialType.Caption = "Material Type";
            this.gridColumn_MaterialType.FieldName = "MaterialType1";
            this.gridColumn_MaterialType.Name = "gridColumn_MaterialType";
            this.gridColumn_MaterialType.Visible = true;
            this.gridColumn_MaterialType.VisibleIndex = 0;
            this.gridColumn_MaterialType.Width = 123;
            // 
            // gridColumn_Description
            // 
            this.gridColumn_Description.Caption = "English Desc";
            this.gridColumn_Description.FieldName = "Description";
            this.gridColumn_Description.Name = "gridColumn_Description";
            this.gridColumn_Description.Visible = true;
            this.gridColumn_Description.VisibleIndex = 1;
            this.gridColumn_Description.Width = 297;
            // 
            // gridColumn_MaterialGroup
            // 
            this.gridColumn_MaterialGroup.Caption = "Material Group";
            this.gridColumn_MaterialGroup.FieldName = "MaterialGroup";
            this.gridColumn_MaterialGroup.Name = "gridColumn_MaterialGroup";
            this.gridColumn_MaterialGroup.Width = 115;
            // 
            // gridColumn_HsCode
            // 
            this.gridColumn_HsCode.Caption = "H.S. Code (Default)";
            this.gridColumn_HsCode.FieldName = "HsCode";
            this.gridColumn_HsCode.Name = "gridColumn_HsCode";
            this.gridColumn_HsCode.Width = 132;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Print with Compositions";
            this.barButtonItem1.Id = 13;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // gridColumn_DemensionDes
            // 
            this.gridColumn_DemensionDes.Caption = "Demension";
            this.gridColumn_DemensionDes.FieldName = "DemensionDes";
            this.gridColumn_DemensionDes.Name = "gridColumn_DemensionDes";
            this.gridColumn_DemensionDes.Visible = true;
            this.gridColumn_DemensionDes.VisibleIndex = 11;
            this.gridColumn_DemensionDes.Width = 95;
            // 
            // gridColumn_SuppSizeCupElementDes
            // 
            this.gridColumn_SuppSizeCupElementDes.Caption = "Supp Size/Cup Element";
            this.gridColumn_SuppSizeCupElementDes.FieldName = "SuppSizeCupElementDes";
            this.gridColumn_SuppSizeCupElementDes.Name = "gridColumn_SuppSizeCupElementDes";
            this.gridColumn_SuppSizeCupElementDes.Visible = true;
            this.gridColumn_SuppSizeCupElementDes.VisibleIndex = 12;
            this.gridColumn_SuppSizeCupElementDes.Width = 219;
            // 
            // gridColumn_YieldUsageDes
            // 
            this.gridColumn_YieldUsageDes.Caption = "Yield Usage";
            this.gridColumn_YieldUsageDes.FieldName = "YieldUsageDes";
            this.gridColumn_YieldUsageDes.Name = "gridColumn_YieldUsageDes";
            this.gridColumn_YieldUsageDes.Visible = true;
            this.gridColumn_YieldUsageDes.VisibleIndex = 13;
            this.gridColumn_YieldUsageDes.Width = 149;
            // 
            // gridColumn_Status
            // 
            this.gridColumn_Status.Caption = "Status";
            this.gridColumn_Status.FieldName = "Status";
            this.gridColumn_Status.Name = "gridColumn_Status";
            this.gridColumn_Status.Width = 107;
            // 
            // colTH
            // 
            this.colTH.Caption = "Thai Desc";
            this.colTH.FieldName = "TH";
            this.colTH.Name = "colTH";
            // 
            // colCN
            // 
            this.colCN.Caption = "Chinese Desc";
            this.colCN.FieldName = "CN";
            this.colCN.Name = "colCN";
            this.colCN.Visible = true;
            this.colCN.VisibleIndex = 2;
            this.colCN.Width = 158;
            // 
            // gridColumn_HSCodeRMB
            // 
            this.gridColumn_HSCodeRMB.Caption = "HSCode RMB";
            this.gridColumn_HSCodeRMB.FieldName = "HSCodeRMB";
            this.gridColumn_HSCodeRMB.Name = "gridColumn_HSCodeRMB";
            this.gridColumn_HSCodeRMB.Visible = true;
            this.gridColumn_HSCodeRMB.VisibleIndex = 3;
            // 
            // gridColumn_HSXRMB
            // 
            this.gridColumn_HSXRMB.Caption = "HSCode XRMB";
            this.gridColumn_HSXRMB.FieldName = "HSCodeXRMB";
            this.gridColumn_HSXRMB.Name = "gridColumn_HSXRMB";
            this.gridColumn_HSXRMB.Visible = true;
            this.gridColumn_HSXRMB.VisibleIndex = 4;
            // 
            // colHSCodeNameRMB_TW
            // 
            this.colHSCodeNameRMB_TW.Caption = "H.S.Code Name RMB(TW)";
            this.colHSCodeNameRMB_TW.FieldName = "HSCodeNameRMB_TW";
            this.colHSCodeNameRMB_TW.Name = "colHSCodeNameRMB_TW";
            this.colHSCodeNameRMB_TW.Visible = true;
            this.colHSCodeNameRMB_TW.VisibleIndex = 5;
            this.colHSCodeNameRMB_TW.Width = 132;
            // 
            // colHSCodeNameRMB_CN
            // 
            this.colHSCodeNameRMB_CN.Caption = "H.S.Code Name RMB(CN)";
            this.colHSCodeNameRMB_CN.FieldName = "HSCodeNameRMB_CN";
            this.colHSCodeNameRMB_CN.Name = "colHSCodeNameRMB_CN";
            this.colHSCodeNameRMB_CN.Visible = true;
            this.colHSCodeNameRMB_CN.VisibleIndex = 6;
            this.colHSCodeNameRMB_CN.Width = 132;
            // 
            // colHSCodeNameRMB_EN
            // 
            this.colHSCodeNameRMB_EN.Caption = "H.S.Code Name RMB(EN)";
            this.colHSCodeNameRMB_EN.FieldName = "HSCodeNameRMB_EN";
            this.colHSCodeNameRMB_EN.Name = "colHSCodeNameRMB_EN";
            this.colHSCodeNameRMB_EN.Visible = true;
            this.colHSCodeNameRMB_EN.VisibleIndex = 7;
            this.colHSCodeNameRMB_EN.Width = 132;
            // 
            // colHSCodeNameXRMB_TW
            // 
            this.colHSCodeNameXRMB_TW.Caption = "H.S.Code Name XRMB(TW)";
            this.colHSCodeNameXRMB_TW.FieldName = "HSCodeNameXRMB_TW";
            this.colHSCodeNameXRMB_TW.Name = "colHSCodeNameXRMB_TW";
            this.colHSCodeNameXRMB_TW.Visible = true;
            this.colHSCodeNameXRMB_TW.VisibleIndex = 8;
            this.colHSCodeNameXRMB_TW.Width = 132;
            // 
            // colHSCodeNameXRMB_CN
            // 
            this.colHSCodeNameXRMB_CN.Caption = "H.S.Code Name XRMB(CN)";
            this.colHSCodeNameXRMB_CN.FieldName = "HSCodeNameXRMB_CN";
            this.colHSCodeNameXRMB_CN.Name = "colHSCodeNameXRMB_CN";
            this.colHSCodeNameXRMB_CN.Visible = true;
            this.colHSCodeNameXRMB_CN.VisibleIndex = 9;
            this.colHSCodeNameXRMB_CN.Width = 132;
            // 
            // colHSCodeNameXRMB_EN
            // 
            this.colHSCodeNameXRMB_EN.Caption = "H.S.Code Name XRMB(EN)";
            this.colHSCodeNameXRMB_EN.FieldName = "HSCodeNameXRMB_EN";
            this.colHSCodeNameXRMB_EN.Name = "colHSCodeNameXRMB_EN";
            this.colHSCodeNameXRMB_EN.Visible = true;
            this.colHSCodeNameXRMB_EN.VisibleIndex = 10;
            this.colHSCodeNameXRMB_EN.Width = 132;
            // 
            // MaterialTypeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "MaterialTypeListForm";
            this.Size = new System.Drawing.Size(1576, 541);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Description;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialGroup;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_HsCode;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_DemensionDes;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_SuppSizeCupElementDes;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_YieldUsageDes;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Status;
        private DevExpress.XtraGrid.Columns.GridColumn colTH;
        private DevExpress.XtraGrid.Columns.GridColumn colCN;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_HSCodeRMB;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_HSXRMB;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeNameRMB_TW;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeNameRMB_CN;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeNameRMB_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeNameXRMB_TW;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeNameXRMB_CN;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeNameXRMB_EN;
    }
}
