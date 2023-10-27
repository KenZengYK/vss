namespace PH.RWO.UI
{
    partial class MutiLangListForm
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
            this.colDocID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColumnName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLangID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colText = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnSave
            // 
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.Platform.Lang.BO.Lang_Record);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDocID,
            this.colColumnName,
            this.colLangID,
            this.colDescription,
            this.colText});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1062, 704, 208, 191);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colDocID
            // 
            this.colDocID.Caption = "Doc ID";
            this.colDocID.FieldName = "DocID";
            this.colDocID.Name = "colDocID";
            this.colDocID.Width = 117;
            // 
            // colColumnName
            // 
            this.colColumnName.Caption = "Column Name";
            this.colColumnName.FieldName = "ColumnName";
            this.colColumnName.Name = "colColumnName";
            this.colColumnName.Visible = true;
            this.colColumnName.VisibleIndex = 0;
            this.colColumnName.Width = 120;
            // 
            // colLangID
            // 
            this.colLangID.Caption = "Lang ID";
            this.colLangID.FieldName = "LangID";
            this.colLangID.Name = "colLangID";
            this.colLangID.Visible = true;
            this.colLangID.VisibleIndex = 2;
            this.colLangID.Width = 83;
            // 
            // colText
            // 
            this.colText.Caption = "Text";
            this.colText.FieldName = "Text";
            this.colText.Name = "colText";
            this.colText.Visible = true;
            this.colText.VisibleIndex = 3;
            this.colText.Width = 503;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Code";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 1;
            this.colDescription.Width = 191;
            // 
            // MutiLangListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MutiLangListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDocID;
        private DevExpress.XtraGrid.Columns.GridColumn colColumnName;
        private DevExpress.XtraGrid.Columns.GridColumn colLangID;
        private DevExpress.XtraGrid.Columns.GridColumn colText;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;

    }
}
