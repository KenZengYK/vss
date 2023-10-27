namespace PH.MIDc.UI
{
    partial class SpecialLabelListForm
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
            this.gridColumn_SpecialLabel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Group = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_SpecialLabel,
            this.gridColumn_Group,
            this.gridColumn_Description});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // gridColumn_SpecialLabel
            // 
            this.gridColumn_SpecialLabel.Caption = "Special Label";
            this.gridColumn_SpecialLabel.FieldName = "SpecialLabel1";
            this.gridColumn_SpecialLabel.Name = "gridColumn_SpecialLabel";
            this.gridColumn_SpecialLabel.Visible = true;
            this.gridColumn_SpecialLabel.VisibleIndex = 0;
            this.gridColumn_SpecialLabel.Width = 138;
            // 
            // gridColumn_Group
            // 
            this.gridColumn_Group.Caption = "Group";
            this.gridColumn_Group.FieldName = "Group";
            this.gridColumn_Group.Name = "gridColumn_Group";
            this.gridColumn_Group.Visible = true;
            this.gridColumn_Group.VisibleIndex = 1;
            this.gridColumn_Group.Width = 128;
            // 
            // gridColumn_Description
            // 
            this.gridColumn_Description.Caption = "Description";
            this.gridColumn_Description.FieldName = "Description";
            this.gridColumn_Description.Name = "gridColumn_Description";
            this.gridColumn_Description.Visible = true;
            this.gridColumn_Description.VisibleIndex = 2;
            this.gridColumn_Description.Width = 584;
            // 
            // SpecialLabelListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "SpecialLabelListForm";
            //this.Load += new System.EventHandler(this.SpecialLabelListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_SpecialLabel;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Group;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Description;
    }
}
