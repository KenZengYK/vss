namespace PH.RWO.UI.Setting
{
    partial class PackingMethodListForm
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
            this.colPackDescEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackDescCH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackDescTH = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.RWO.BO.CustomerPacking);
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
            this.colPackDescEN,
            this.colPackDescCH,
            this.colPackDescTH});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colPackDescEN
            // 
            this.colPackDescEN.Caption = "English";
            this.colPackDescEN.FieldName = "PackDescEN";
            this.colPackDescEN.Name = "colPackDescEN";
            this.colPackDescEN.Visible = true;
            this.colPackDescEN.VisibleIndex = 1;
            this.colPackDescEN.Width = 212;
            // 
            // colPackDescCH
            // 
            this.colPackDescCH.Caption = "Chinese";
            this.colPackDescCH.FieldName = "PackDescCH";
            this.colPackDescCH.Name = "colPackDescCH";
            this.colPackDescCH.Visible = true;
            this.colPackDescCH.VisibleIndex = 2;
            this.colPackDescCH.Width = 208;
            // 
            // colPackDescTH
            // 
            this.colPackDescTH.Caption = "Thai";
            this.colPackDescTH.FieldName = "PackDescTH";
            this.colPackDescTH.Name = "colPackDescTH";
            this.colPackDescTH.Visible = true;
            this.colPackDescTH.VisibleIndex = 3;
            this.colPackDescTH.Width = 249;
            // 
            // colID
            // 
            this.colID.Caption = "序號";
            this.colID.FieldName = "ID";
            this.colID.Name = "colID";
            this.colID.Visible = true;
            this.colID.VisibleIndex = 0;
            this.colID.Width = 87;
            // 
            // PackingMethodListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PackingMethodListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPackDescEN;
        private DevExpress.XtraGrid.Columns.GridColumn colPackDescCH;
        private DevExpress.XtraGrid.Columns.GridColumn colPackDescTH;
        private DevExpress.XtraGrid.Columns.GridColumn colID;
    }
}
