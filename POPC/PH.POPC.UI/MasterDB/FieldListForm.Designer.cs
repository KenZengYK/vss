namespace PH.POPC.UI.MasterDB
{
    partial class FieldListForm
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
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMembers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPresenter = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSortID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1106, 459);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortID,
            this.colCode,
            this.colDescription,
            this.colCustomer,
            this.colMembers,
            this.colPresenter});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.Field);
            // 
            // colCode
            // 
            this.colCode.Caption = "Field (Dept.) Cde";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.VisibleIndex = 1;
            this.colCode.Width = 116;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Field Name";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 2;
            this.colDescription.Width = 110;
            // 
            // colMembers
            // 
            this.colMembers.Caption = "Field Members";
            this.colMembers.FieldName = "Members";
            this.colMembers.Name = "colMembers";
            this.colMembers.Visible = true;
            this.colMembers.VisibleIndex = 5;
            this.colMembers.Width = 342;
            // 
            // colPresenter
            // 
            this.colPresenter.Caption = "Facilitor";
            this.colPresenter.FieldName = "Presenter";
            this.colPresenter.Name = "colPresenter";
            this.colPresenter.Visible = true;
            this.colPresenter.VisibleIndex = 4;
            this.colPresenter.Width = 140;
            // 
            // colSortID
            // 
            this.colSortID.Caption = "Seq#";
            this.colSortID.FieldName = "SortID";
            this.colSortID.Name = "colSortID";
            this.colSortID.Visible = true;
            this.colSortID.VisibleIndex = 0;
            this.colSortID.Width = 52;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer Involve";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 3;
            this.colCustomer.Width = 139;
            // 
            // FieldListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FieldListForm";
            this.Size = new System.Drawing.Size(1106, 486);
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
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colMembers;
        private DevExpress.XtraGrid.Columns.GridColumn colPresenter;
        private DevExpress.XtraGrid.Columns.GridColumn colSortID;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
    }
}
