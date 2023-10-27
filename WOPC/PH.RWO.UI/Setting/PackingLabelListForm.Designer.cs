namespace PH.RWO.UI.Setting
{
    partial class PackingLabelListForm
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
            this.colLabelDescEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLabelDescCH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLabelDescTH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colID = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.CustomerLabeling);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.Size = new System.Drawing.Size(803, 273);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colID,
            this.colLabelDescEN,
            this.colLabelDescCH,
            this.colLabelDescTH});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colLabelDescEN
            // 
            this.colLabelDescEN.Caption = "English";
            this.colLabelDescEN.FieldName = "LabelDescEN";
            this.colLabelDescEN.Name = "colLabelDescEN";
            this.colLabelDescEN.Visible = true;
            this.colLabelDescEN.VisibleIndex = 1;
            this.colLabelDescEN.Width = 187;
            // 
            // colLabelDescCH
            // 
            this.colLabelDescCH.Caption = "Chinese";
            this.colLabelDescCH.FieldName = "LabelDescCH";
            this.colLabelDescCH.Name = "colLabelDescCH";
            this.colLabelDescCH.Visible = true;
            this.colLabelDescCH.VisibleIndex = 2;
            this.colLabelDescCH.Width = 212;
            // 
            // colLabelDescTH
            // 
            this.colLabelDescTH.Caption = "Thai";
            this.colLabelDescTH.FieldName = "LabelDescTH";
            this.colLabelDescTH.Name = "colLabelDescTH";
            this.colLabelDescTH.Visible = true;
            this.colLabelDescTH.VisibleIndex = 3;
            this.colLabelDescTH.Width = 245;
            // 
            // colID
            // 
            this.colID.Caption = "序號";
            this.colID.FieldName = "ID";
            this.colID.Name = "colID";
            this.colID.Visible = true;
            this.colID.VisibleIndex = 0;
            this.colID.Width = 68;
            // 
            // PackingLabelListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PackingLabelListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colLabelDescEN;
        private DevExpress.XtraGrid.Columns.GridColumn colLabelDescCH;
        private DevExpress.XtraGrid.Columns.GridColumn colLabelDescTH;
        private DevExpress.XtraGrid.Columns.GridColumn colID;
    }
}
