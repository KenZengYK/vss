namespace PH.RWO.UI
{
    partial class StyleListForm
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
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProductDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialContrastColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialVariousWidth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialOthers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialOthersRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingBackPart = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingCoverButton = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingMixStyles = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingNotch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingFabircRelax = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingFabircRelaxHours = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCutting1stLace = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCutting1stLaceClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCutting1stLaceWastage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCutting2ndLace = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCutting2ndLaceClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCutting2ndLaceWastage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingOthers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingOthersRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuttingConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestWashing = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestAZO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestShrinkage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestFusing = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestOEKO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestElongation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestOthers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestOthersRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTestConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.Style);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(20000, 475);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colStyleNo,
            this.colProductDescription,
            this.colMaterialContrastColor,
            this.colMaterialVariousWidth,
            this.colMaterialOthers,
            this.colMaterialOthersRemark,
            this.colMaterialDate,
            this.colMaterialConfirm,
            this.colCuttingBackPart,
            this.colCuttingCoverButton,
            this.colCuttingMixStyles,
            this.colCuttingNotch,
            this.colCuttingFabircRelax,
            this.colCuttingFabircRelaxHours,
            this.colCutting1stLace,
            this.colCutting1stLaceClass,
            this.colCutting1stLaceWastage,
            this.colCutting2ndLace,
            this.colCutting2ndLaceClass,
            this.colCutting2ndLaceWastage,
            this.colCuttingOthers,
            this.colCuttingOthersRemark,
            this.colCuttingDate,
            this.colCuttingConfirm,
            this.colTestWashing,
            this.colTestAZO,
            this.colTestShrinkage,
            this.colTestFusing,
            this.colTestOEKO,
            this.colTestElongation,
            this.colTestOthers,
            this.colTestOthersRemark,
            this.colTestDate,
            this.colTestConfirm,
            this.colCheckFlag});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCompany
            // 
            this.colCompany.AppearanceCell.Options.UseTextOptions = true;
            this.colCompany.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCompany.AppearanceHeader.Options.UseTextOptions = true;
            this.colCompany.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCompany.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.Visible = true;
            this.colCompany.VisibleIndex = 0;
            this.colCompany.Width = 65;
            // 
            // colStyleNo
            // 
            this.colStyleNo.AppearanceCell.Options.UseTextOptions = true;
            this.colStyleNo.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStyleNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colStyleNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStyleNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStyleNo.Caption = "StyleNo";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 1;
            this.colStyleNo.Width = 115;
            // 
            // colProductDescription
            // 
            this.colProductDescription.AppearanceCell.Options.UseTextOptions = true;
            this.colProductDescription.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colProductDescription.AppearanceHeader.Options.UseTextOptions = true;
            this.colProductDescription.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProductDescription.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colProductDescription.Caption = "ProductDescription";
            this.colProductDescription.FieldName = "ProductDescription";
            this.colProductDescription.Name = "colProductDescription";
            this.colProductDescription.Visible = true;
            this.colProductDescription.VisibleIndex = 2;
            this.colProductDescription.Width = 100;
            // 
            // colMaterialContrastColor
            // 
            this.colMaterialContrastColor.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialContrastColor.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialContrastColor.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialContrastColor.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialContrastColor.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialContrastColor.Caption = "MaterialContrastColor";
            this.colMaterialContrastColor.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colMaterialContrastColor.FieldName = "MaterialContrastColor";
            this.colMaterialContrastColor.Name = "colMaterialContrastColor";
            this.colMaterialContrastColor.Visible = true;
            this.colMaterialContrastColor.VisibleIndex = 3;
            this.colMaterialContrastColor.Width = 100;
            // 
            // colMaterialVariousWidth
            // 
            this.colMaterialVariousWidth.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialVariousWidth.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialVariousWidth.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialVariousWidth.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialVariousWidth.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialVariousWidth.Caption = "MaterialVariousWidth";
            this.colMaterialVariousWidth.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colMaterialVariousWidth.FieldName = "MaterialVariousWidth";
            this.colMaterialVariousWidth.Name = "colMaterialVariousWidth";
            this.colMaterialVariousWidth.Visible = true;
            this.colMaterialVariousWidth.VisibleIndex = 4;
            this.colMaterialVariousWidth.Width = 100;
            // 
            // colMaterialOthers
            // 
            this.colMaterialOthers.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialOthers.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialOthers.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialOthers.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialOthers.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialOthers.Caption = "MaterialOthers";
            this.colMaterialOthers.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colMaterialOthers.FieldName = "MaterialOthers";
            this.colMaterialOthers.Name = "colMaterialOthers";
            this.colMaterialOthers.Visible = true;
            this.colMaterialOthers.VisibleIndex = 5;
            this.colMaterialOthers.Width = 100;
            // 
            // colMaterialOthersRemark
            // 
            this.colMaterialOthersRemark.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialOthersRemark.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialOthersRemark.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialOthersRemark.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialOthersRemark.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialOthersRemark.Caption = "MaterialOthersRemark";
            this.colMaterialOthersRemark.FieldName = "MaterialOthersRemark";
            this.colMaterialOthersRemark.Name = "colMaterialOthersRemark";
            this.colMaterialOthersRemark.Visible = true;
            this.colMaterialOthersRemark.VisibleIndex = 6;
            this.colMaterialOthersRemark.Width = 100;
            // 
            // colMaterialDate
            // 
            this.colMaterialDate.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialDate.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialDate.Caption = "MaterialDate";
            this.colMaterialDate.FieldName = "MaterialDate";
            this.colMaterialDate.Name = "colMaterialDate";
            this.colMaterialDate.Visible = true;
            this.colMaterialDate.VisibleIndex = 7;
            this.colMaterialDate.Width = 100;
            // 
            // colMaterialConfirm
            // 
            this.colMaterialConfirm.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialConfirm.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialConfirm.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialConfirm.Caption = "MaterialConfirm";
            this.colMaterialConfirm.FieldName = "MaterialConfirm";
            this.colMaterialConfirm.Name = "colMaterialConfirm";
            this.colMaterialConfirm.Visible = true;
            this.colMaterialConfirm.VisibleIndex = 8;
            this.colMaterialConfirm.Width = 100;
            // 
            // colCuttingBackPart
            // 
            this.colCuttingBackPart.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingBackPart.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingBackPart.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingBackPart.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingBackPart.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingBackPart.Caption = "CuttingBackPart";
            this.colCuttingBackPart.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCuttingBackPart.FieldName = "CuttingBackPart";
            this.colCuttingBackPart.Name = "colCuttingBackPart";
            this.colCuttingBackPart.Visible = true;
            this.colCuttingBackPart.VisibleIndex = 9;
            this.colCuttingBackPart.Width = 100;
            // 
            // colCuttingCoverButton
            // 
            this.colCuttingCoverButton.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingCoverButton.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingCoverButton.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingCoverButton.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingCoverButton.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingCoverButton.Caption = "CuttingCoverButton";
            this.colCuttingCoverButton.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCuttingCoverButton.FieldName = "CuttingCoverButton";
            this.colCuttingCoverButton.Name = "colCuttingCoverButton";
            this.colCuttingCoverButton.Visible = true;
            this.colCuttingCoverButton.VisibleIndex = 10;
            this.colCuttingCoverButton.Width = 100;
            // 
            // colCuttingMixStyles
            // 
            this.colCuttingMixStyles.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingMixStyles.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingMixStyles.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingMixStyles.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingMixStyles.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingMixStyles.Caption = "CuttingMixStyles";
            this.colCuttingMixStyles.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCuttingMixStyles.FieldName = "CuttingMixStyles";
            this.colCuttingMixStyles.Name = "colCuttingMixStyles";
            this.colCuttingMixStyles.Visible = true;
            this.colCuttingMixStyles.VisibleIndex = 11;
            this.colCuttingMixStyles.Width = 100;
            // 
            // colCuttingNotch
            // 
            this.colCuttingNotch.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingNotch.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingNotch.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingNotch.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingNotch.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingNotch.Caption = "CuttingNotch";
            this.colCuttingNotch.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCuttingNotch.FieldName = "CuttingNotch";
            this.colCuttingNotch.Name = "colCuttingNotch";
            this.colCuttingNotch.Visible = true;
            this.colCuttingNotch.VisibleIndex = 12;
            this.colCuttingNotch.Width = 100;
            // 
            // colCuttingFabircRelax
            // 
            this.colCuttingFabircRelax.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingFabircRelax.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingFabircRelax.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingFabircRelax.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingFabircRelax.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingFabircRelax.Caption = "CuttingFabircRelax";
            this.colCuttingFabircRelax.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCuttingFabircRelax.FieldName = "CuttingFabircRelax";
            this.colCuttingFabircRelax.Name = "colCuttingFabircRelax";
            this.colCuttingFabircRelax.Visible = true;
            this.colCuttingFabircRelax.VisibleIndex = 13;
            this.colCuttingFabircRelax.Width = 100;
            // 
            // colCuttingFabircRelaxHours
            // 
            this.colCuttingFabircRelaxHours.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingFabircRelaxHours.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingFabircRelaxHours.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingFabircRelaxHours.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingFabircRelaxHours.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingFabircRelaxHours.Caption = "CuttingFabircRelaxHours";
            this.colCuttingFabircRelaxHours.FieldName = "CuttingFabircRelaxHours";
            this.colCuttingFabircRelaxHours.Name = "colCuttingFabircRelaxHours";
            this.colCuttingFabircRelaxHours.Visible = true;
            this.colCuttingFabircRelaxHours.VisibleIndex = 14;
            this.colCuttingFabircRelaxHours.Width = 100;
            // 
            // colCutting1stLace
            // 
            this.colCutting1stLace.AppearanceCell.Options.UseTextOptions = true;
            this.colCutting1stLace.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting1stLace.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutting1stLace.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCutting1stLace.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting1stLace.Caption = "Cutting1stLace";
            this.colCutting1stLace.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCutting1stLace.FieldName = "Cutting1stLace";
            this.colCutting1stLace.Name = "colCutting1stLace";
            this.colCutting1stLace.Visible = true;
            this.colCutting1stLace.VisibleIndex = 15;
            this.colCutting1stLace.Width = 100;
            // 
            // colCutting1stLaceClass
            // 
            this.colCutting1stLaceClass.AppearanceCell.Options.UseTextOptions = true;
            this.colCutting1stLaceClass.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting1stLaceClass.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutting1stLaceClass.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCutting1stLaceClass.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting1stLaceClass.Caption = "Cutting1stLaceClass";
            this.colCutting1stLaceClass.FieldName = "Cutting1stLaceClass";
            this.colCutting1stLaceClass.Name = "colCutting1stLaceClass";
            this.colCutting1stLaceClass.Visible = true;
            this.colCutting1stLaceClass.VisibleIndex = 16;
            this.colCutting1stLaceClass.Width = 100;
            // 
            // colCutting1stLaceWastage
            // 
            this.colCutting1stLaceWastage.AppearanceCell.Options.UseTextOptions = true;
            this.colCutting1stLaceWastage.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting1stLaceWastage.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutting1stLaceWastage.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCutting1stLaceWastage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting1stLaceWastage.Caption = "Cutting1stLaceWastage";
            this.colCutting1stLaceWastage.FieldName = "Cutting1stLaceWastage";
            this.colCutting1stLaceWastage.Name = "colCutting1stLaceWastage";
            this.colCutting1stLaceWastage.Visible = true;
            this.colCutting1stLaceWastage.VisibleIndex = 17;
            this.colCutting1stLaceWastage.Width = 100;
            // 
            // colCutting2ndLace
            // 
            this.colCutting2ndLace.AppearanceCell.Options.UseTextOptions = true;
            this.colCutting2ndLace.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting2ndLace.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutting2ndLace.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCutting2ndLace.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting2ndLace.Caption = "Cutting2ndLace";
            this.colCutting2ndLace.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCutting2ndLace.FieldName = "Cutting2ndLace";
            this.colCutting2ndLace.Name = "colCutting2ndLace";
            this.colCutting2ndLace.Visible = true;
            this.colCutting2ndLace.VisibleIndex = 18;
            this.colCutting2ndLace.Width = 100;
            // 
            // colCutting2ndLaceClass
            // 
            this.colCutting2ndLaceClass.AppearanceCell.Options.UseTextOptions = true;
            this.colCutting2ndLaceClass.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting2ndLaceClass.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutting2ndLaceClass.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCutting2ndLaceClass.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting2ndLaceClass.Caption = "Cutting2ndLaceClass";
            this.colCutting2ndLaceClass.FieldName = "Cutting2ndLaceClass";
            this.colCutting2ndLaceClass.Name = "colCutting2ndLaceClass";
            this.colCutting2ndLaceClass.Visible = true;
            this.colCutting2ndLaceClass.VisibleIndex = 19;
            this.colCutting2ndLaceClass.Width = 100;
            // 
            // colCutting2ndLaceWastage
            // 
            this.colCutting2ndLaceWastage.AppearanceCell.Options.UseTextOptions = true;
            this.colCutting2ndLaceWastage.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting2ndLaceWastage.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutting2ndLaceWastage.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCutting2ndLaceWastage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutting2ndLaceWastage.Caption = "Cutting2ndLaceWastage";
            this.colCutting2ndLaceWastage.FieldName = "Cutting2ndLaceWastage";
            this.colCutting2ndLaceWastage.Name = "colCutting2ndLaceWastage";
            this.colCutting2ndLaceWastage.Visible = true;
            this.colCutting2ndLaceWastage.VisibleIndex = 20;
            this.colCutting2ndLaceWastage.Width = 100;
            // 
            // colCuttingOthers
            // 
            this.colCuttingOthers.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingOthers.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingOthers.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingOthers.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingOthers.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingOthers.Caption = "CuttingOthers";
            this.colCuttingOthers.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCuttingOthers.FieldName = "CuttingOthers";
            this.colCuttingOthers.Name = "colCuttingOthers";
            this.colCuttingOthers.Visible = true;
            this.colCuttingOthers.VisibleIndex = 21;
            this.colCuttingOthers.Width = 100;
            // 
            // colCuttingOthersRemark
            // 
            this.colCuttingOthersRemark.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingOthersRemark.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingOthersRemark.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingOthersRemark.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingOthersRemark.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingOthersRemark.Caption = "CuttingOthersRemark";
            this.colCuttingOthersRemark.FieldName = "CuttingOthersRemark";
            this.colCuttingOthersRemark.Name = "colCuttingOthersRemark";
            this.colCuttingOthersRemark.Visible = true;
            this.colCuttingOthersRemark.VisibleIndex = 22;
            this.colCuttingOthersRemark.Width = 100;
            // 
            // colCuttingDate
            // 
            this.colCuttingDate.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingDate.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingDate.Caption = "CuttingDate";
            this.colCuttingDate.FieldName = "CuttingDate";
            this.colCuttingDate.Name = "colCuttingDate";
            this.colCuttingDate.Visible = true;
            this.colCuttingDate.VisibleIndex = 23;
            this.colCuttingDate.Width = 85;
            // 
            // colCuttingConfirm
            // 
            this.colCuttingConfirm.AppearanceCell.Options.UseTextOptions = true;
            this.colCuttingConfirm.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colCuttingConfirm.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCuttingConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCuttingConfirm.Caption = "CuttingConfirm";
            this.colCuttingConfirm.FieldName = "CuttingConfirm";
            this.colCuttingConfirm.Name = "colCuttingConfirm";
            this.colCuttingConfirm.Visible = true;
            this.colCuttingConfirm.VisibleIndex = 24;
            this.colCuttingConfirm.Width = 85;
            // 
            // colTestWashing
            // 
            this.colTestWashing.AppearanceCell.Options.UseTextOptions = true;
            this.colTestWashing.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestWashing.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestWashing.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestWashing.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestWashing.Caption = "TestWashing";
            this.colTestWashing.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestWashing.FieldName = "TestWashing";
            this.colTestWashing.Name = "colTestWashing";
            this.colTestWashing.Visible = true;
            this.colTestWashing.VisibleIndex = 25;
            this.colTestWashing.Width = 85;
            // 
            // colTestAZO
            // 
            this.colTestAZO.AppearanceCell.Options.UseTextOptions = true;
            this.colTestAZO.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestAZO.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestAZO.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestAZO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestAZO.Caption = "TestAZO";
            this.colTestAZO.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestAZO.FieldName = "TestAZO";
            this.colTestAZO.Name = "colTestAZO";
            this.colTestAZO.Visible = true;
            this.colTestAZO.VisibleIndex = 26;
            this.colTestAZO.Width = 85;
            // 
            // colTestShrinkage
            // 
            this.colTestShrinkage.AppearanceCell.Options.UseTextOptions = true;
            this.colTestShrinkage.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestShrinkage.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestShrinkage.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestShrinkage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestShrinkage.Caption = "TestShrinkage";
            this.colTestShrinkage.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestShrinkage.FieldName = "TestShrinkage";
            this.colTestShrinkage.Name = "colTestShrinkage";
            this.colTestShrinkage.Visible = true;
            this.colTestShrinkage.VisibleIndex = 27;
            this.colTestShrinkage.Width = 85;
            // 
            // colTestFusing
            // 
            this.colTestFusing.AppearanceCell.Options.UseTextOptions = true;
            this.colTestFusing.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestFusing.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestFusing.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestFusing.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestFusing.Caption = "TestFusing";
            this.colTestFusing.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestFusing.FieldName = "TestFusing";
            this.colTestFusing.Name = "colTestFusing";
            this.colTestFusing.Visible = true;
            this.colTestFusing.VisibleIndex = 28;
            this.colTestFusing.Width = 85;
            // 
            // colTestOEKO
            // 
            this.colTestOEKO.AppearanceCell.Options.UseTextOptions = true;
            this.colTestOEKO.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestOEKO.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestOEKO.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestOEKO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestOEKO.Caption = "TestOEKO";
            this.colTestOEKO.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestOEKO.FieldName = "TestOEKO";
            this.colTestOEKO.Name = "colTestOEKO";
            this.colTestOEKO.Visible = true;
            this.colTestOEKO.VisibleIndex = 29;
            this.colTestOEKO.Width = 85;
            // 
            // colTestElongation
            // 
            this.colTestElongation.AppearanceCell.Options.UseTextOptions = true;
            this.colTestElongation.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestElongation.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestElongation.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestElongation.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestElongation.Caption = "TestElongation";
            this.colTestElongation.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestElongation.FieldName = "TestElongation";
            this.colTestElongation.Name = "colTestElongation";
            this.colTestElongation.Visible = true;
            this.colTestElongation.VisibleIndex = 30;
            this.colTestElongation.Width = 85;
            // 
            // colTestOthers
            // 
            this.colTestOthers.AppearanceCell.Options.UseTextOptions = true;
            this.colTestOthers.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestOthers.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestOthers.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestOthers.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestOthers.Caption = "TestOthers";
            this.colTestOthers.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colTestOthers.FieldName = "TestOthers";
            this.colTestOthers.Name = "colTestOthers";
            this.colTestOthers.Visible = true;
            this.colTestOthers.VisibleIndex = 31;
            this.colTestOthers.Width = 85;
            // 
            // colTestOthersRemark
            // 
            this.colTestOthersRemark.AppearanceCell.Options.UseTextOptions = true;
            this.colTestOthersRemark.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestOthersRemark.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestOthersRemark.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestOthersRemark.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestOthersRemark.Caption = "TestOthersRemark";
            this.colTestOthersRemark.FieldName = "TestOthersRemark";
            this.colTestOthersRemark.Name = "colTestOthersRemark";
            this.colTestOthersRemark.Visible = true;
            this.colTestOthersRemark.VisibleIndex = 32;
            this.colTestOthersRemark.Width = 85;
            // 
            // colTestDate
            // 
            this.colTestDate.AppearanceCell.Options.UseTextOptions = true;
            this.colTestDate.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestDate.Caption = "TestDate";
            this.colTestDate.FieldName = "TestDate";
            this.colTestDate.Name = "colTestDate";
            this.colTestDate.Visible = true;
            this.colTestDate.VisibleIndex = 33;
            this.colTestDate.Width = 85;
            // 
            // colTestConfirm
            // 
            this.colTestConfirm.AppearanceCell.Options.UseTextOptions = true;
            this.colTestConfirm.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colTestConfirm.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTestConfirm.Caption = "TestConfirm";
            this.colTestConfirm.FieldName = "TestConfirm";
            this.colTestConfirm.Name = "colTestConfirm";
            this.colTestConfirm.Visible = true;
            this.colTestConfirm.VisibleIndex = 34;
            this.colTestConfirm.Width = 85;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.AppearanceCell.Options.UseTextOptions = true;
            this.colCheckFlag.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCheckFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colCheckFlag.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCheckFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCheckFlag.Caption = "CheckFlag";
            this.colCheckFlag.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.VisibleIndex = 35;
            this.colCheckFlag.Width = 85;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // StyleListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleListForm";
            this.Size = new System.Drawing.Size(20000, 500);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colProductDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialContrastColor;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialVariousWidth;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialOthers;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialOthersRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialDate;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingBackPart;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingCoverButton;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingMixStyles;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingNotch;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingFabircRelax;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingFabircRelaxHours;
        private DevExpress.XtraGrid.Columns.GridColumn colCutting1stLace;
        private DevExpress.XtraGrid.Columns.GridColumn colCutting1stLaceClass;
        private DevExpress.XtraGrid.Columns.GridColumn colCutting1stLaceWastage;
        private DevExpress.XtraGrid.Columns.GridColumn colCutting2ndLace;
        private DevExpress.XtraGrid.Columns.GridColumn colCutting2ndLaceClass;
        private DevExpress.XtraGrid.Columns.GridColumn colCutting2ndLaceWastage;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingOthers;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingOthersRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCuttingConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colTestWashing;
        private DevExpress.XtraGrid.Columns.GridColumn colTestAZO;
        private DevExpress.XtraGrid.Columns.GridColumn colTestShrinkage;
        private DevExpress.XtraGrid.Columns.GridColumn colTestFusing;
        private DevExpress.XtraGrid.Columns.GridColumn colTestOEKO;
        private DevExpress.XtraGrid.Columns.GridColumn colTestElongation;
        private DevExpress.XtraGrid.Columns.GridColumn colTestOthers;
        private DevExpress.XtraGrid.Columns.GridColumn colTestOthersRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colTestDate;
        private DevExpress.XtraGrid.Columns.GridColumn colTestConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
    }
}
