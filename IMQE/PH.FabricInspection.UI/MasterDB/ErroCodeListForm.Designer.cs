namespace PH.FabricInspection.UI.MasterDB
{
    partial class ErroCodeListForm
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
            this.colCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameBD = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCode,
            this.colNameEN,
            this.colNameCN,
            this.colNameBD});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ErrorCode);
            // 
            // colCode
            // 
            this.colCode.Caption = "Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.VisibleIndex = 0;
            this.colCode.Width = 81;
            // 
            // colNameEN
            // 
            this.colNameEN.Caption = "NameEN";
            this.colNameEN.FieldName = "NameEN";
            this.colNameEN.Name = "colNameEN";
            this.colNameEN.Visible = true;
            this.colNameEN.VisibleIndex = 1;
            this.colNameEN.Width = 194;
            // 
            // colNameCN
            // 
            this.colNameCN.Caption = "NameCN";
            this.colNameCN.FieldName = "NameCN";
            this.colNameCN.Name = "colNameCN";
            this.colNameCN.Visible = true;
            this.colNameCN.VisibleIndex = 2;
            this.colNameCN.Width = 246;
            // 
            // colNameBD
            // 
            this.colNameBD.Caption = "NameBD";
            this.colNameBD.FieldName = "NameBD";
            this.colNameBD.Name = "colNameBD";
            this.colNameBD.Visible = true;
            this.colNameBD.VisibleIndex = 3;
            this.colNameBD.Width = 265;
            // 
            // ErroCodeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ErroCodeListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCode;
        private DevExpress.XtraGrid.Columns.GridColumn colNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn colNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colNameBD;
    }
}
