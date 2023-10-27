namespace PH.LWPM.UI.MC
{
    partial class Maintain
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
            this.Id = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Factory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Line = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Type = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Description = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(803, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Id,
            this.Factory,
            this.Line,
            this.Type,
            this.Description});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Id
            // 
            this.Id.Caption = "Id";
            this.Id.FieldName = "Id";
            this.Id.Name = "Id";
            // 
            // Factory
            // 
            this.Factory.Caption = "Factory";
            this.Factory.FieldName = "Factory";
            this.Factory.Name = "Factory";
            this.Factory.Visible = true;
            this.Factory.VisibleIndex = 0;
            // 
            // Line
            // 
            this.Line.Caption = "Line";
            this.Line.FieldName = "Line";
            this.Line.Name = "Line";
            this.Line.Visible = true;
            this.Line.VisibleIndex = 1;
            // 
            // Type
            // 
            this.Type.Caption = "Type";
            this.Type.FieldName = "Type";
            this.Type.Name = "Type";
            // 
            // Description
            // 
            this.Description.Caption = "Description";
            this.Description.FieldName = "Description";
            this.Description.Name = "Description";
            this.Description.Visible = true;
            this.Description.VisibleIndex = 2;
            // 
            // Maintain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "Maintain";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.Maintain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn Id;
        private DevExpress.XtraGrid.Columns.GridColumn Factory;
        private DevExpress.XtraGrid.Columns.GridColumn Line;
        private DevExpress.XtraGrid.Columns.GridColumn Type;
        private DevExpress.XtraGrid.Columns.GridColumn Description;


    }
}
