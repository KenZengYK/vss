﻿namespace PH.FabricInspection.UI.BandLace
{
    partial class BandLaceChainDefectListForm
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
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colLength = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectFrom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectTo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectEnglishName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectThaiName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsCutOut = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
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
            this.repositoryItemLookUpEdit1,
            this.repositoryItemGridLookUpEdit1,
            this.repositoryItemCheckEdit1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDefectCode,
            this.colDefectEnglishName,
            this.colDefectChineseName,
            this.colDefectThaiName,
            this.colIsCutOut,
            this.colLength,
            this.colDefectFrom,
            this.colDefectTo});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.BandLaceChainDefect);
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
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AllowNullInput = DevExpress.Utils.DefaultBoolean.True;
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Defect Code", 90),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "Defect Name (En)", 120),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Defect Name (Cn)", 120),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectThaiName", "Defect Name (Bd)", 120)});
            this.repositoryItemLookUpEdit1.DisplayMember = "PHDefectCode";
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            this.repositoryItemLookUpEdit1.NullText = "";
            this.repositoryItemLookUpEdit1.PopupWidth = 550;
            this.repositoryItemLookUpEdit1.ValueMember = "PHDefectCode";
            // 
            // colLength
            // 
            this.colLength.Caption = "Length";
            this.colLength.DisplayFormat.FormatString = "N2";
            this.colLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colLength.FieldName = "Length";
            this.colLength.Name = "colLength";
            this.colLength.Visible = true;
            this.colLength.VisibleIndex = 5;
            this.colLength.Width = 61;
            // 
            // colDefectFrom
            // 
            this.colDefectFrom.Caption = "From";
            this.colDefectFrom.DisplayFormat.FormatString = "N2";
            this.colDefectFrom.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDefectFrom.FieldName = "DefectFrom";
            this.colDefectFrom.Name = "colDefectFrom";
            this.colDefectFrom.Visible = true;
            this.colDefectFrom.VisibleIndex = 6;
            this.colDefectFrom.Width = 60;
            // 
            // colDefectTo
            // 
            this.colDefectTo.Caption = "To";
            this.colDefectTo.DisplayFormat.FormatString = "N2";
            this.colDefectTo.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDefectTo.FieldName = "DefectTo";
            this.colDefectTo.Name = "colDefectTo";
            this.colDefectTo.Visible = true;
            this.colDefectTo.VisibleIndex = 7;
            this.colDefectTo.Width = 61;
            // 
            // colDefectEnglishName
            // 
            this.colDefectEnglishName.Caption = "Defect Name (EN)";
            this.colDefectEnglishName.FieldName = "DefectNameEN";
            this.colDefectEnglishName.Name = "colDefectEnglishName";
            this.colDefectEnglishName.OptionsColumn.AllowEdit = false;
            this.colDefectEnglishName.Visible = true;
            this.colDefectEnglishName.VisibleIndex = 1;
            this.colDefectEnglishName.Width = 122;
            // 
            // colDefectChineseName
            // 
            this.colDefectChineseName.Caption = "Defect Name (CN)";
            this.colDefectChineseName.FieldName = "DefectNameCN";
            this.colDefectChineseName.Name = "colDefectChineseName";
            this.colDefectChineseName.OptionsColumn.AllowEdit = false;
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
            // colIsCutOut
            // 
            this.colIsCutOut.Caption = "Is Cut Out";
            this.colIsCutOut.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsCutOut.FieldName = "IsCutOut";
            this.colIsCutOut.Name = "colIsCutOut";
            this.colIsCutOut.Visible = true;
            this.colIsCutOut.VisibleIndex = 4;
            this.colIsCutOut.Width = 81;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // BandLaceChainDefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BandLaceChainDefectListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colLength;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectFrom;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectTo;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectEnglishName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectChineseName;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectThaiName;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit repositoryItemGridLookUpEdit1;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colIsCutOut;
    }
}