namespace PH.POPC.UI.MasterDB
{
    partial class MaterialTypeDropDeadDateListForm
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
            this.colMaterilaGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterilaType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBulkDDDDay = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOverseaAddDay = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.colMaterilaGroup,
            this.colMaterilaType,
            this.colBulkDDDDay,
            this.colOverseaAddDay,
            this.colFactory});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.MaterialTypeDropDeadDate);
            // 
            // colMaterilaGroup
            // 
            this.colMaterilaGroup.Caption = "Mat\'l Grp";
            this.colMaterilaGroup.FieldName = "MaterilaGroup";
            this.colMaterilaGroup.Name = "colMaterilaGroup";
            this.colMaterilaGroup.Visible = true;
            this.colMaterilaGroup.VisibleIndex = 0;
            this.colMaterilaGroup.Width = 89;
            // 
            // colMaterilaType
            // 
            this.colMaterilaType.Caption = "Mat\'l Type";
            this.colMaterilaType.FieldName = "MaterilaType";
            this.colMaterilaType.Name = "colMaterilaType";
            this.colMaterilaType.Visible = true;
            this.colMaterilaType.VisibleIndex = 1;
            this.colMaterilaType.Width = 79;
            // 
            // colBulkDDDDay
            // 
            this.colBulkDDDDay.Caption = "Bulk DDD (days)";
            this.colBulkDDDDay.FieldName = "BulkDDDDay";
            this.colBulkDDDDay.Name = "colBulkDDDDay";
            this.colBulkDDDDay.Visible = true;
            this.colBulkDDDDay.VisibleIndex = 2;
            this.colBulkDDDDay.Width = 121;
            // 
            // colOverseaAddDay
            // 
            this.colOverseaAddDay.Caption = "Oversea (days)";
            this.colOverseaAddDay.FieldName = "OverseaAddDay";
            this.colOverseaAddDay.Name = "colOverseaAddDay";
            this.colOverseaAddDay.Visible = true;
            this.colOverseaAddDay.VisibleIndex = 3;
            this.colOverseaAddDay.Width = 115;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 4;
            this.colFactory.Width = 74;
            // 
            // MaterialTypeDropDeadDateListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MaterialTypeDropDeadDateListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colMaterilaGroup;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterilaType;
        private DevExpress.XtraGrid.Columns.GridColumn colBulkDDDDay;
        private DevExpress.XtraGrid.Columns.GridColumn colOverseaAddDay;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
    }
}
