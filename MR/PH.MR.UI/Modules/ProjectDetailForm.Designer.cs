namespace PH.MR.UI
{
    partial class ProjectDetailForm
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
        
        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProjectDetailForm));
            this.tedCompany = new DevExpress.XtraEditors.TextEdit();
            this.tedProjectNO = new DevExpress.XtraEditors.TextEdit();
            this.tedVersion1 = new DevExpress.XtraEditors.TextEdit();
            this.lbVS = new DevExpress.XtraEditors.LabelControl();
            this.lbCompanyVersion = new DevExpress.XtraEditors.LabelControl();
            this.lbProjectNO = new DevExpress.XtraEditors.LabelControl();
            this.lbCompany = new DevExpress.XtraEditors.LabelControl();
            this.tedFinalVersion = new DevExpress.XtraEditors.TextEdit();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMaterialCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMarkerWidth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMultiColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFirstVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFinalVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUnite = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAllPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCost1st = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCostLast = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCOLOR = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMATD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCostDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNotepad = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.Actions = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoExEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btn_ExpandAll = new DevExpress.XtraBars.BarButtonItem();
            this.bti_ExpandAll = new DevExpress.XtraBars.BarButtonItem();
            this.bti_CollapseAll = new DevExpress.XtraBars.BarButtonItem();
            this.bti_print = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedCompany.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedProjectNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedVersion1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedFinalVersion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btn_ExpandAll,
            this.bti_ExpandAll,
            this.bti_CollapseAll,
            this.bti_print});
            this.objEdtbarManager.MaxItemId = 24;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.bti_ExpandAll, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.bti_CollapseAll, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.bti_print, true)});
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // tedCompany
            // 
            this.tedCompany.EditValue = "";
            this.tedCompany.Location = new System.Drawing.Point(82, 7);
            this.tedCompany.Name = "tedCompany";
            this.tedCompany.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tedCompany.Properties.ReadOnly = true;
            this.tedCompany.Size = new System.Drawing.Size(39, 21);
            this.tedCompany.TabIndex = 20;
            // 
            // tedProjectNO
            // 
            this.tedProjectNO.Location = new System.Drawing.Point(233, 6);
            this.tedProjectNO.Name = "tedProjectNO";
            this.tedProjectNO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tedProjectNO.Properties.ReadOnly = true;
            this.tedProjectNO.Size = new System.Drawing.Size(108, 21);
            this.tedProjectNO.TabIndex = 21;
            // 
            // tedVersion1
            // 
            this.tedVersion1.EditValue = "1";
            this.tedVersion1.Location = new System.Drawing.Point(500, 7);
            this.tedVersion1.Name = "tedVersion1";
            this.tedVersion1.Properties.ReadOnly = true;
            this.tedVersion1.Size = new System.Drawing.Size(21, 21);
            this.tedVersion1.TabIndex = 29;
            // 
            // lbVS
            // 
            this.lbVS.Appearance.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbVS.Appearance.Options.UseFont = true;
            this.lbVS.Location = new System.Drawing.Point(529, 9);
            this.lbVS.Name = "lbVS";
            this.lbVS.Size = new System.Drawing.Size(16, 16);
            this.lbVS.TabIndex = 28;
            this.lbVS.Text = "VS";
            // 
            // lbCompanyVersion
            // 
            this.lbCompanyVersion.Appearance.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbCompanyVersion.Appearance.Options.UseFont = true;
            this.lbCompanyVersion.Location = new System.Drawing.Point(358, 9);
            this.lbCompanyVersion.Name = "lbCompanyVersion";
            this.lbCompanyVersion.Size = new System.Drawing.Size(128, 16);
            this.lbCompanyVersion.TabIndex = 27;
            this.lbCompanyVersion.Text = "Company Version:";
            // 
            // lbProjectNO
            // 
            this.lbProjectNO.Appearance.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbProjectNO.Appearance.Options.UseFont = true;
            this.lbProjectNO.Location = new System.Drawing.Point(147, 8);
            this.lbProjectNO.Name = "lbProjectNO";
            this.lbProjectNO.Size = new System.Drawing.Size(80, 16);
            this.lbProjectNO.TabIndex = 26;
            this.lbProjectNO.Text = "ProjectNO:";
            // 
            // lbCompany
            // 
            this.lbCompany.Appearance.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbCompany.Appearance.Options.UseFont = true;
            this.lbCompany.Location = new System.Drawing.Point(12, 8);
            this.lbCompany.Name = "lbCompany";
            this.lbCompany.Size = new System.Drawing.Size(64, 16);
            this.lbCompany.TabIndex = 25;
            this.lbCompany.Text = "Company:";
            // 
            // tedFinalVersion
            // 
            this.tedFinalVersion.Location = new System.Drawing.Point(551, 7);
            this.tedFinalVersion.Name = "tedFinalVersion";
            this.tedFinalVersion.Properties.ReadOnly = true;
            this.tedFinalVersion.Size = new System.Drawing.Size(31, 21);
            this.tedFinalVersion.TabIndex = 31;
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Fuchsia;
            this.imageList1.Images.SetKeyName(0, "");
            this.imageList1.Images.SetKeyName(1, "");
            this.imageList1.Images.SetKeyName(2, "");
            this.imageList1.Images.SetKeyName(3, "");
            this.imageList1.Images.SetKeyName(4, "");
            this.imageList1.Images.SetKeyName(5, "");
            this.imageList1.Images.SetKeyName(6, "");
            this.imageList1.Images.SetKeyName(7, "");
            this.imageList1.Images.SetKeyName(8, "");
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 68);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoExEdit1,
            this.repositoryItemMemoExEdit2});
            this.gridControl1.Size = new System.Drawing.Size(1022, 310);
            this.gridControl1.TabIndex = 33;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand1});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCOLOR,
            this.colMATD,
            this.colMaterialCode,
            this.colSupplierReference,
            this.colMarkerWidth,
            this.colSupplierCode,
            this.colMultiColor,
            this.colPSize,
            this.colFirstVersion,
            this.colFinalVersion,
            this.colDiff,
            this.colUnite,
            this.colAllPrice,
            this.colCost1st,
            this.colCostLast,
            this.colCostDiff,
            this.colNotepad,
            this.Actions});
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.GroupCount = 2;
            this.bandedGridView1.HorzScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Always;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCOLOR, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colMATD, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.bandedGridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.bandedGridView1_CustomDrawCell);
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.Caption = "Code";
            this.gridBand2.Columns.Add(this.colMaterialCode);
            this.gridBand2.Columns.Add(this.colSupplierReference);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 256;
            // 
            // colMaterialCode
            // 
            this.colMaterialCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialCode.Caption = "Material";
            this.colMaterialCode.FieldName = "CSTL";
            this.colMaterialCode.Name = "colMaterialCode";
            this.colMaterialCode.OptionsColumn.AllowEdit = false;
            this.colMaterialCode.Visible = true;
            this.colMaterialCode.Width = 136;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.AppearanceHeader.Options.UseTextOptions = true;
            this.colSupplierReference.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierReference.Caption = "Supplier\r\nReference";
            this.colSupplierReference.FieldName = "Supplier";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.Width = 120;
            // 
            // gridBand3
            // 
            this.gridBand3.Columns.Add(this.colMarkerWidth);
            this.gridBand3.Columns.Add(this.colSupplierCode);
            this.gridBand3.Columns.Add(this.colMultiColor);
            this.gridBand3.Columns.Add(this.colPSize);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 221;
            // 
            // colMarkerWidth
            // 
            this.colMarkerWidth.AppearanceHeader.Options.UseTextOptions = true;
            this.colMarkerWidth.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMarkerWidth.Caption = "Marker\r\nWidth";
            this.colMarkerWidth.DisplayFormat.FormatString = "0.00";
            this.colMarkerWidth.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMarkerWidth.FieldName = "MWTH";
            this.colMarkerWidth.Name = "colMarkerWidth";
            this.colMarkerWidth.OptionsColumn.AllowEdit = false;
            this.colMarkerWidth.Visible = true;
            this.colMarkerWidth.Width = 71;
            // 
            // colSupplierCode
            // 
            this.colSupplierCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colSupplierCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierCode.Caption = "Supplier";
            this.colSupplierCode.FieldName = "SupplierCode";
            this.colSupplierCode.Name = "colSupplierCode";
            this.colSupplierCode.OptionsColumn.AllowEdit = false;
            this.colSupplierCode.Visible = true;
            this.colSupplierCode.Width = 60;
            // 
            // colMultiColor
            // 
            this.colMultiColor.AppearanceHeader.Options.UseTextOptions = true;
            this.colMultiColor.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMultiColor.Caption = "Multi\r\nColor";
            this.colMultiColor.FieldName = "PCOL";
            this.colMultiColor.Name = "colMultiColor";
            this.colMultiColor.OptionsColumn.AllowEdit = false;
            this.colMultiColor.Visible = true;
            this.colMultiColor.Width = 47;
            // 
            // colPSize
            // 
            this.colPSize.AppearanceHeader.Options.UseTextOptions = true;
            this.colPSize.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPSize.Caption = "Size";
            this.colPSize.FieldName = "PSIZ";
            this.colPSize.Name = "colPSize";
            this.colPSize.OptionsColumn.AllowEdit = false;
            this.colPSize.Visible = true;
            this.colPSize.Width = 43;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "YY";
            this.gridBand4.Columns.Add(this.colFirstVersion);
            this.gridBand4.Columns.Add(this.colFinalVersion);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 134;
            // 
            // colFirstVersion
            // 
            this.colFirstVersion.AppearanceHeader.Options.UseTextOptions = true;
            this.colFirstVersion.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFirstVersion.Caption = "1st";
            this.colFirstVersion.DisplayFormat.FormatString = "0.00";
            this.colFirstVersion.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colFirstVersion.FieldName = "FistVersion";
            this.colFirstVersion.Name = "colFirstVersion";
            this.colFirstVersion.OptionsColumn.AllowEdit = false;
            this.colFirstVersion.Visible = true;
            this.colFirstVersion.Width = 67;
            // 
            // colFinalVersion
            // 
            this.colFinalVersion.AppearanceHeader.Options.UseTextOptions = true;
            this.colFinalVersion.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFinalVersion.Caption = "last";
            this.colFinalVersion.DisplayFormat.FormatString = "0.00";
            this.colFinalVersion.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colFinalVersion.FieldName = "FinalVersion";
            this.colFinalVersion.Name = "colFinalVersion";
            this.colFinalVersion.OptionsColumn.AllowEdit = false;
            this.colFinalVersion.Visible = true;
            this.colFinalVersion.Width = 67;
            // 
            // gridBand5
            // 
            this.gridBand5.Columns.Add(this.colDiff);
            this.gridBand5.Columns.Add(this.colUnite);
            this.gridBand5.Columns.Add(this.colAllPrice);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 193;
            // 
            // colDiff
            // 
            this.colDiff.AppearanceHeader.Options.UseTextOptions = true;
            this.colDiff.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDiff.Caption = "Diff";
            this.colDiff.DisplayFormat.FormatString = "0.00";
            this.colDiff.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDiff.FieldName = "Diff";
            this.colDiff.Name = "colDiff";
            this.colDiff.OptionsColumn.AllowEdit = false;
            this.colDiff.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colDiff.Visible = true;
            this.colDiff.Width = 70;
            // 
            // colUnite
            // 
            this.colUnite.AppearanceHeader.Options.UseTextOptions = true;
            this.colUnite.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colUnite.Caption = "UOM";
            this.colUnite.FieldName = "IUNT";
            this.colUnite.Name = "colUnite";
            this.colUnite.OptionsColumn.AllowEdit = false;
            this.colUnite.Visible = true;
            this.colUnite.Width = 48;
            // 
            // colAllPrice
            // 
            this.colAllPrice.AppearanceHeader.Options.UseTextOptions = true;
            this.colAllPrice.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAllPrice.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colAllPrice.Caption = "All in Price";
            this.colAllPrice.DisplayFormat.FormatString = "0.00";
            this.colAllPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAllPrice.FieldName = "AllPrice";
            this.colAllPrice.Name = "colAllPrice";
            this.colAllPrice.OptionsColumn.AllowEdit = false;
            this.colAllPrice.Visible = true;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "COST";
            this.gridBand6.Columns.Add(this.colCost1st);
            this.gridBand6.Columns.Add(this.colCostLast);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 150;
            // 
            // colCost1st
            // 
            this.colCost1st.AppearanceHeader.Options.UseTextOptions = true;
            this.colCost1st.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCost1st.Caption = "1st";
            this.colCost1st.DisplayFormat.FormatString = "0.00";
            this.colCost1st.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCost1st.FieldName = "Cost1st";
            this.colCost1st.Name = "colCost1st";
            this.colCost1st.OptionsColumn.AllowEdit = false;
            this.colCost1st.Visible = true;
            // 
            // colCostLast
            // 
            this.colCostLast.AppearanceHeader.Options.UseTextOptions = true;
            this.colCostLast.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCostLast.Caption = "LAST";
            this.colCostLast.DisplayFormat.FormatString = "0.00";
            this.colCostLast.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCostLast.FieldName = "CostLast";
            this.colCostLast.Name = "colCostLast";
            this.colCostLast.OptionsColumn.AllowEdit = false;
            this.colCostLast.Visible = true;
            // 
            // gridBand1
            // 
            this.gridBand1.Columns.Add(this.colCOLOR);
            this.gridBand1.Columns.Add(this.colMATD);
            this.gridBand1.Columns.Add(this.colCostDiff);
            this.gridBand1.Columns.Add(this.colNotepad);
            this.gridBand1.Columns.Add(this.Actions);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 269;
            // 
            // colCOLOR
            // 
            this.colCOLOR.Caption = "COLOR";
            this.colCOLOR.FieldName = "Color";
            this.colCOLOR.Name = "colCOLOR";
            this.colCOLOR.OptionsColumn.AllowEdit = false;
            // 
            // colMATD
            // 
            this.colMATD.Caption = "MATD";
            this.colMATD.FieldName = "MATD";
            this.colMATD.Name = "colMATD";
            this.colMATD.OptionsColumn.AllowEdit = false;
            // 
            // colCostDiff
            // 
            this.colCostDiff.AppearanceHeader.Options.UseTextOptions = true;
            this.colCostDiff.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCostDiff.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colCostDiff.Caption = "CostDiff";
            this.colCostDiff.DisplayFormat.FormatString = "0.00";
            this.colCostDiff.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCostDiff.FieldName = "CostDiff";
            this.colCostDiff.Name = "colCostDiff";
            this.colCostDiff.OptionsColumn.AllowEdit = false;
            this.colCostDiff.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colCostDiff.Visible = true;
            this.colCostDiff.Width = 103;
            // 
            // colNotepad
            // 
            this.colNotepad.AppearanceHeader.Options.UseTextOptions = true;
            this.colNotepad.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNotepad.Caption = "Notepad";
            this.colNotepad.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colNotepad.FieldName = "Notepad";
            this.colNotepad.Name = "colNotepad";
            this.colNotepad.OptionsColumn.ReadOnly = true;
            this.colNotepad.Visible = true;
            this.colNotepad.Width = 77;
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            // 
            // Actions
            // 
            this.Actions.AppearanceHeader.Options.UseTextOptions = true;
            this.Actions.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Actions.Caption = "Action";
            this.Actions.ColumnEdit = this.repositoryItemMemoExEdit2;
            this.Actions.FieldName = "Actions";
            this.Actions.Name = "Actions";
            this.Actions.Visible = true;
            this.Actions.Width = 89;
            // 
            // repositoryItemMemoExEdit2
            // 
            this.repositoryItemMemoExEdit2.AutoHeight = false;
            this.repositoryItemMemoExEdit2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit2.Name = "repositoryItemMemoExEdit2";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.tedCompany);
            this.panelControl1.Controls.Add(this.tedFinalVersion);
            this.panelControl1.Controls.Add(this.lbCompany);
            this.panelControl1.Controls.Add(this.tedProjectNO);
            this.panelControl1.Controls.Add(this.lbProjectNO);
            this.panelControl1.Controls.Add(this.tedVersion1);
            this.panelControl1.Controls.Add(this.lbCompanyVersion);
            this.panelControl1.Controls.Add(this.lbVS);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 26);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1022, 42);
            this.panelControl1.TabIndex = 34;
            // 
            // btn_ExpandAll
            // 
            this.btn_ExpandAll.Caption = "ExpandAll";
            this.btn_ExpandAll.Id = 19;
            this.btn_ExpandAll.Name = "btn_ExpandAll";
            // 
            // bti_ExpandAll
            // 
            this.bti_ExpandAll.Caption = "ExpandAll";
            this.bti_ExpandAll.Id = 20;
            this.bti_ExpandAll.Name = "bti_ExpandAll";
            this.bti_ExpandAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bti_ExpandAll_ItemClick);
            // 
            // bti_CollapseAll
            // 
            this.bti_CollapseAll.Caption = "CollapseAll";
            this.bti_CollapseAll.Id = 21;
            this.bti_CollapseAll.Name = "bti_CollapseAll";
            this.bti_CollapseAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bti_CollapseAll_ItemClick);
            // 
            // bti_print
            // 
            this.bti_print.Caption = "PintPreView";
            this.bti_print.Id = 22;
            this.bti_print.Name = "bti_print";
            this.bti_print.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bti_print_ItemClick);
            // 
            // ProjectDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.panelControl1);
            this.Name = "ProjectDetailForm";
            this.Size = new System.Drawing.Size(1022, 378);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.gridControl1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedCompany.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedProjectNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedVersion1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tedFinalVersion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit tedCompany;
        private DevExpress.XtraEditors.TextEdit tedProjectNO;
        private DevExpress.XtraEditors.TextEdit tedVersion1;
        private DevExpress.XtraEditors.LabelControl lbVS;
        private DevExpress.XtraEditors.LabelControl lbCompanyVersion;
        private DevExpress.XtraEditors.LabelControl lbProjectNO;
        private DevExpress.XtraEditors.LabelControl lbCompany;
        private DevExpress.XtraEditors.TextEdit tedFinalVersion;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn MaterialCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn SupplierReference;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn COLOR;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn MATD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn MarkerWidth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn SupplierCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn MultiColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn PSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn FirstVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn FinalVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Diff;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Unite;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Notepad;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Actions;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit2;
        private System.Windows.Forms.ImageList imageList1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierReference;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMarkerWidth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMultiColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFirstVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFinalVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCOLOR;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMATD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUnite;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNotepad;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAllPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCostDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCost1st;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCostLast;
        private DevExpress.XtraBars.BarButtonItem btn_ExpandAll;
        private DevExpress.XtraBars.BarButtonItem bti_ExpandAll;
        private DevExpress.XtraBars.BarButtonItem bti_CollapseAll;
        private DevExpress.XtraBars.BarButtonItem bti_print;


    }
}
