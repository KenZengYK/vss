namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    partial class sBandLaceSpotDefectListForm
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
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemGridLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colDefectPointQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectThaiName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectEnglishName = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemGridLookUpEdit1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDefectCode,
            this.colDefectEnglishName,
            this.colDefectChineseName,
            this.colDefectThaiName,
            this.colDefectPointQty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.BandLaceSpotDefect);
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "Defect Code";
            this.colDefectCode.ColumnEdit = this.repositoryItemGridLookUpEdit1;
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 0;
            this.colDefectCode.Width = 91;
            // 
            // repositoryItemGridLookUpEdit1
            // 
            this.repositoryItemGridLookUpEdit1.AutoHeight = false;
            this.repositoryItemGridLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemGridLookUpEdit1.Name = "repositoryItemGridLookUpEdit1";
            this.repositoryItemGridLookUpEdit1.NullText = "";
            this.repositoryItemGridLookUpEdit1.PopupFormMinSize = new System.Drawing.Size(620, 0);
            this.repositoryItemGridLookUpEdit1.View = this.repositoryItemGridLookUpEdit1View;
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // colDefectPointQty
            // 
            this.colDefectPointQty.Caption = "Defect Point Qty";
            this.colDefectPointQty.FieldName = "DefectPointQty";
            this.colDefectPointQty.Name = "colDefectPointQty";
            this.colDefectPointQty.Visible = true;
            this.colDefectPointQty.VisibleIndex = 4;
            this.colDefectPointQty.Width = 115;
            // 
            // colDefectChineseName
            // 
            this.colDefectChineseName.Caption = "Defect Name (CN)";
            this.colDefectChineseName.FieldName = "DefectNameCN";
            this.colDefectChineseName.Name = "colDefectChineseName";
            this.colDefectChineseName.OptionsColumn.AllowFocus = false;
            this.colDefectChineseName.Visible = true;
            this.colDefectChineseName.VisibleIndex = 2;
            this.colDefectChineseName.Width = 122;
            // 
            // colDefectThaiName
            // 
            this.colDefectThaiName.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.colDefectThaiName.AppearanceCell.Options.UseFont = true;
            this.colDefectThaiName.Caption = "Defect Name (BD)";
            this.colDefectThaiName.FieldName = "DefectNameBD";
            this.colDefectThaiName.Name = "colDefectThaiName";
            this.colDefectThaiName.OptionsColumn.AllowEdit = false;
            this.colDefectThaiName.Visible = true;
            this.colDefectThaiName.VisibleIndex = 3;
            this.colDefectThaiName.Width = 122;
            // 
            // colDefectEnglishName
            // 
            this.colDefectEnglishName.Caption = "Defect Name (EN)";
            this.colDefectEnglishName.FieldName = "DefectNameEN";
            this.colDefectEnglishName.Name = "colDefectEnglishName";
            this.colDefectEnglishName.OptionsColumn.AllowFocus = false;
            this.colDefectEnglishName.Visible = true;
            this.colDefectEnglishName.VisibleIndex = 1;
            this.colDefectEnglishName.Width = 122;
            // 
            // BandLaceSpotDefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BandLaceSpotDefectListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectPointQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectEnglishName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectThaiName;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit repositoryItemGridLookUpEdit1;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
    }
}
