namespace PH.BasicInfo.UI.MasterDB
{
    partial class PaymentTermsListForm
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
            this.colDataCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDataName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDataNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStringField1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStringField2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSortID = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1343, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 38;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortID,
            this.colDataCode,
            this.colDataName,
            this.colDescription,
            this.colDataNameCN,
            this.colStringField1,
            this.colStringField2});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.Platform.Misc.BO.Misc_DataDictionary);
            // 
            // colDataCode
            // 
            this.colDataCode.Caption = "Code";
            this.colDataCode.FieldName = "DataCode";
            this.colDataCode.Name = "colDataCode";
            this.colDataCode.Visible = true;
            this.colDataCode.VisibleIndex = 1;
            this.colDataCode.Width = 109;
            // 
            // colDataName
            // 
            this.colDataName.Caption = "Short Name";
            this.colDataName.FieldName = "DataName";
            this.colDataName.Name = "colDataName";
            this.colDataName.Visible = true;
            this.colDataName.VisibleIndex = 2;
            this.colDataName.Width = 150;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Desc. (EN)";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 3;
            this.colDescription.Width = 281;
            // 
            // colDataNameCN
            // 
            this.colDataNameCN.Caption = "Desc. (CN)";
            this.colDataNameCN.FieldName = "DataNameCN";
            this.colDataNameCN.Name = "colDataNameCN";
            this.colDataNameCN.Visible = true;
            this.colDataNameCN.VisibleIndex = 4;
            this.colDataNameCN.Width = 311;
            // 
            // colStringField1
            // 
            this.colStringField1.Caption = "Days diff -\r\nInv. Matching DDD vs GRN dd\r\n";
            this.colStringField1.FieldName = "StringField1";
            this.colStringField1.Name = "colStringField1";
            this.colStringField1.Visible = true;
            this.colStringField1.VisibleIndex = 5;
            this.colStringField1.Width = 184;
            // 
            // colStringField2
            // 
            this.colStringField2.Caption = "Day diff -\r\nPymt Term DDD vs GRN dd";
            this.colStringField2.FieldName = "StringField2";
            this.colStringField2.Name = "colStringField2";
            this.colStringField2.Visible = true;
            this.colStringField2.VisibleIndex = 6;
            this.colStringField2.Width = 171;
            // 
            // colSortID
            // 
            this.colSortID.Caption = "Seq.";
            this.colSortID.FieldName = "SortID";
            this.colSortID.Name = "colSortID";
            this.colSortID.Visible = true;
            this.colSortID.VisibleIndex = 0;
            this.colSortID.Width = 47;
            // 
            // PaymentTermsListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PaymentTermsListForm";
            this.Size = new System.Drawing.Size(1343, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDataCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDataName;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colDataNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colStringField1;
        private DevExpress.XtraGrid.Columns.GridColumn colStringField2;
        private DevExpress.XtraGrid.Columns.GridColumn colSortID;
    }
}
