namespace PH.BasicInfo.UI.TimeElement
{
    partial class DimensionDetailListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.colMaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.MaterialTypeLookUpEdit = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colDimension = new DevExpress.XtraGrid.Columns.GridColumn();
            this.DimensionLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colHaveSupplementSheet = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDimensionNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColEndCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPOUM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWidthSpec = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipmentTolerant = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeimensionCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppSize_2D = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppSize_3D4D = new DevExpress.XtraGrid.Columns.GridColumn();
            this.YieldUsage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHaveVAT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVAT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.repositoryItemImageComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MaterialTypeLookUpEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DimensionLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.MaterialTypeDimension);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode2.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2});
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.MaterialTypeLookUpEdit,
            this.DimensionLookUpEdit1,
            this.repositoryItemCheckEdit1,
            this.repositoryItemImageComboBox1,
            this.repositoryItemImageComboBox2});
            this.objListGridControl.Size = new System.Drawing.Size(1276, 521);
            this.objListGridControl.Click += new System.EventHandler(this.objListGridControl_Click);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaterialType,
            this.colDeimensionCode,
            this.colSuppSize_2D,
            this.colSuppSize_3D4D,
            this.YieldUsage,
            this.ColEndCustomer,
            this.colDimension,
            this.colDimensionNo,
            this.colItemColor,
            this.colHaveSupplementSheet,
            this.colPOUM,
            this.colRemark,
            this.colWidthSpec,
            this.colShipmentTolerant,
            this.colHaveVAT,
            this.colVAT});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(849, 550, 208, 191);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.InitNewRow += new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(this.objListGridView_InitNewRow);
            // 
            // colMaterialType
            // 
            this.colMaterialType.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialType.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialType.Caption = "Material Type";
            this.colMaterialType.ColumnEdit = this.MaterialTypeLookUpEdit;
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.Visible = true;
            this.colMaterialType.VisibleIndex = 0;
            this.colMaterialType.Width = 99;
            // 
            // MaterialTypeLookUpEdit
            // 
            this.MaterialTypeLookUpEdit.AutoHeight = false;
            this.MaterialTypeLookUpEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.MaterialTypeLookUpEdit.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterialType1", "MaterialType", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.MaterialTypeLookUpEdit.DisplayMember = "MaterialType1";
            this.MaterialTypeLookUpEdit.Name = "MaterialTypeLookUpEdit";
            this.MaterialTypeLookUpEdit.NullText = "";
            this.MaterialTypeLookUpEdit.ValueMember = "MaterialType1";
            // 
            // colDimension
            // 
            this.colDimension.Caption = "Dimension";
            this.colDimension.ColumnEdit = this.DimensionLookUpEdit1;
            this.colDimension.FieldName = "Dimension";
            this.colDimension.Name = "colDimension";
            this.colDimension.Width = 83;
            // 
            // DimensionLookUpEdit1
            // 
            this.DimensionLookUpEdit1.AutoHeight = false;
            this.DimensionLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DimensionLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Seq", "Seq", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DimensionNo", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemColor", "Item Color", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.DimensionLookUpEdit1.DisplayMember = "Seq";
            this.DimensionLookUpEdit1.Name = "DimensionLookUpEdit1";
            this.DimensionLookUpEdit1.NullText = "";
            this.DimensionLookUpEdit1.ValueMember = "Seq";
            // 
            // colHaveSupplementSheet
            // 
            this.colHaveSupplementSheet.Caption = "Have Supplement Sheet";
            this.colHaveSupplementSheet.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colHaveSupplementSheet.FieldName = "HaveSupplementSheet";
            this.colHaveSupplementSheet.Name = "colHaveSupplementSheet";
            this.colHaveSupplementSheet.Visible = true;
            this.colHaveSupplementSheet.VisibleIndex = 6;
            this.colHaveSupplementSheet.Width = 161;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 11;
            this.colRemark.Width = 166;
            // 
            // colDimensionNo
            // 
            this.colDimensionNo.Caption = "Dimension No";
            this.colDimensionNo.FieldName = "DimensionNo";
            this.colDimensionNo.Name = "colDimensionNo";
            this.colDimensionNo.OptionsColumn.ReadOnly = true;
            this.colDimensionNo.Width = 106;
            // 
            // colItemColor
            // 
            this.colItemColor.Caption = "Item Color";
            this.colItemColor.FieldName = "ItemColor";
            this.colItemColor.Name = "colItemColor";
            this.colItemColor.OptionsColumn.ReadOnly = true;
            this.colItemColor.Width = 98;
            // 
            // ColEndCustomer
            // 
            this.ColEndCustomer.Caption = "End Customer";
            this.ColEndCustomer.FieldName = "EndCustomer";
            this.ColEndCustomer.Name = "ColEndCustomer";
            this.ColEndCustomer.Width = 101;
            // 
            // colPOUM
            // 
            this.colPOUM.Caption = "PO\'S U/M";
            this.colPOUM.FieldName = "POUM";
            this.colPOUM.Name = "colPOUM";
            this.colPOUM.Visible = true;
            this.colPOUM.VisibleIndex = 8;
            // 
            // colWidthSpec
            // 
            this.colWidthSpec.Caption = "Special width/size/meas.";
            this.colWidthSpec.FieldName = "WidthSpecDesc";
            this.colWidthSpec.Name = "colWidthSpec";
            this.colWidthSpec.Visible = true;
            this.colWidthSpec.VisibleIndex = 5;
            this.colWidthSpec.Width = 169;
            // 
            // colShipmentTolerant
            // 
            this.colShipmentTolerant.Caption = "Shipment Tolerant (%)";
            this.colShipmentTolerant.FieldName = "ShipmentTolerant";
            this.colShipmentTolerant.Name = "colShipmentTolerant";
            this.colShipmentTolerant.Visible = true;
            this.colShipmentTolerant.VisibleIndex = 7;
            this.colShipmentTolerant.Width = 165;
            // 
            // colDeimensionCode
            // 
            this.colDeimensionCode.Caption = "DeimensionCode";
            this.colDeimensionCode.FieldName = "dimensionMaterial";
            this.colDeimensionCode.Name = "colDeimensionCode";
            this.colDeimensionCode.Visible = true;
            this.colDeimensionCode.VisibleIndex = 1;
            // 
            // colSuppSize_2D
            // 
            this.colSuppSize_2D.Caption = "Supp Size (Single) \r\n (apply to 2D)";
            this.colSuppSize_2D.FieldName = "suppSize_2D";
            this.colSuppSize_2D.Name = "colSuppSize_2D";
            this.colSuppSize_2D.Visible = true;
            this.colSuppSize_2D.VisibleIndex = 2;
            // 
            // colSuppSize_3D4D
            // 
            this.colSuppSize_3D4D.Caption = "Supp Size (Single/Range) /Cup \r\n (Element of 3D / 4D)";
            this.colSuppSize_3D4D.FieldName = "suppSize_3D4D";
            this.colSuppSize_3D4D.Name = "colSuppSize_3D4D";
            this.colSuppSize_3D4D.Visible = true;
            this.colSuppSize_3D4D.VisibleIndex = 3;
            // 
            // YieldUsage
            // 
            this.YieldUsage.Caption = "Yield Usage";
            this.YieldUsage.FieldName = "yieldUsageMaterial";
            this.YieldUsage.Name = "YieldUsage";
            this.YieldUsage.Visible = true;
            this.YieldUsage.VisibleIndex = 4;
            // 
            // colHaveVAT
            // 
            this.colHaveVAT.Caption = "Have VAT?";
            this.colHaveVAT.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colHaveVAT.FieldName = "HaveVAT";
            this.colHaveVAT.Name = "colHaveVAT";
            this.colHaveVAT.Visible = true;
            this.colHaveVAT.VisibleIndex = 9;
            this.colHaveVAT.Width = 82;
            // 
            // colVAT
            // 
            this.colVAT.Caption = "VAT (%)";
            this.colVAT.ColumnEdit = this.repositoryItemImageComboBox2;
            this.colVAT.FieldName = "VAT";
            this.colVAT.Name = "colVAT";
            this.colVAT.Visible = true;
            this.colVAT.VisibleIndex = 10;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // repositoryItemImageComboBox2
            // 
            this.repositoryItemImageComboBox2.AutoHeight = false;
            this.repositoryItemImageComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox2.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("0", new decimal(new int[] {
                            0,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("5", new decimal(new int[] {
                            5,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("6", new decimal(new int[] {
                            6,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("7", new decimal(new int[] {
                            7,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("8", new decimal(new int[] {
                            8,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("9", new decimal(new int[] {
                            9,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("10", new decimal(new int[] {
                            10,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("11", new decimal(new int[] {
                            11,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("12", new decimal(new int[] {
                            12,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("13", new decimal(new int[] {
                            13,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("14", new decimal(new int[] {
                            14,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("15", new decimal(new int[] {
                            15,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("16", new decimal(new int[] {
                            16,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("17", new decimal(new int[] {
                            17,
                            0,
                            0,
                            0}), -1)});
            this.repositoryItemImageComboBox2.Name = "repositoryItemImageComboBox2";
            // 
            // DimensionDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DimensionDetailListForm";
            this.Size = new System.Drawing.Size(1276, 548);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DimensionDetailListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MaterialTypeLookUpEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DimensionLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colMaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn colDimension;
        private DevExpress.XtraGrid.Columns.GridColumn colDimensionNo;
        private DevExpress.XtraGrid.Columns.GridColumn colItemColor;
        private DevExpress.XtraGrid.Columns.GridColumn colHaveSupplementSheet;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit MaterialTypeLookUpEdit;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit DimensionLookUpEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn ColEndCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colPOUM;
        private DevExpress.XtraGrid.Columns.GridColumn colWidthSpec;
        private DevExpress.XtraGrid.Columns.GridColumn colShipmentTolerant;
        private DevExpress.XtraGrid.Columns.GridColumn colDeimensionCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppSize_2D;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppSize_3D4D;
        private DevExpress.XtraGrid.Columns.GridColumn YieldUsage;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
        private DevExpress.XtraGrid.Columns.GridColumn colHaveVAT;
        private DevExpress.XtraGrid.Columns.GridColumn colVAT;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox2;

    }
}
