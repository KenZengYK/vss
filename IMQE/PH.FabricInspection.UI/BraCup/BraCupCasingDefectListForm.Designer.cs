namespace PH.FabricInspection.UI.BraCup
{
    partial class BraCupCasingDefectListForm
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
            this.colDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemGridLookUpEdit_InputDefect = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit_InputDefect)).BeginInit();
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
            this.repositoryItemGridLookUpEdit_InputDefect});
            this.objListGridControl.Size = new System.Drawing.Size(1023, 400);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDefectCode,
            this.colDefectName,
            this.gridColumn1,
            this.gridColumn2,
            this.colDefectQty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.AccessoryCasingDefect);
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "Defect Code";
            this.colDefectCode.ColumnEdit = this.repositoryItemGridLookUpEdit_InputDefect;
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 0;
            this.colDefectCode.Width = 91;
            // 
            // colDefectQty
            // 
            this.colDefectQty.Caption = "Defect Qty";
            this.colDefectQty.FieldName = "DefectQty";
            this.colDefectQty.Name = "colDefectQty";
            this.colDefectQty.Visible = true;
            this.colDefectQty.VisibleIndex = 4;
            this.colDefectQty.Width = 83;
            // 
            // colDefectName
            // 
            this.colDefectName.Caption = "Defect Name (EN)";
            this.colDefectName.FieldName = "DefectNameEN";
            this.colDefectName.Name = "colDefectName";
            this.colDefectName.OptionsColumn.AllowEdit = false;
            this.colDefectName.OptionsColumn.AllowFocus = false;
            this.colDefectName.OptionsColumn.ReadOnly = true;
            this.colDefectName.Visible = true;
            this.colDefectName.VisibleIndex = 1;
            this.colDefectName.Width = 246;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Defect Name (CN)";
            this.gridColumn1.FieldName = "DefectNameCN";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.OptionsColumn.AllowFocus = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 2;
            this.gridColumn1.Width = 230;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.gridColumn2.AppearanceCell.Options.UseFont = true;
            this.gridColumn2.Caption = "Defect Name (BD)";
            this.gridColumn2.FieldName = "DefectNameBD";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.OptionsColumn.AllowFocus = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 3;
            this.gridColumn2.Width = 254;
            // 
            // repositoryItemGridLookUpEdit_InputDefect
            // 
            this.repositoryItemGridLookUpEdit_InputDefect.AutoHeight = false;
            this.repositoryItemGridLookUpEdit_InputDefect.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemGridLookUpEdit_InputDefect.Name = "repositoryItemGridLookUpEdit_InputDefect";
            this.repositoryItemGridLookUpEdit_InputDefect.NullText = "";
            this.repositoryItemGridLookUpEdit_InputDefect.PopupFormMinSize = new System.Drawing.Size(620, 0);
            this.repositoryItemGridLookUpEdit_InputDefect.View = this.repositoryItemGridLookUpEdit1View;
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // AccessoryCasingDefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AccessoryCasingDefectListForm";
            this.Size = new System.Drawing.Size(1023, 427);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit_InputDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit repositoryItemGridLookUpEdit_InputDefect;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
    }
}
