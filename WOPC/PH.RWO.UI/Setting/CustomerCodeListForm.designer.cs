namespace PH.RWO.UI
{
    partial class CustomerCodeListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.sOPC_CustomerGridControl = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Customer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Team = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnSizeSystem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sOPC_CustomerGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode2.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2});
            this.objListGridControl.Size = new System.Drawing.Size(653, 293);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Customer,
            this.CustomerCode,
            this.Team,
            this.gridColumnSizeSystem,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // sOPC_CustomerGridControl
            // 
            this.sOPC_CustomerGridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.sOPC_CustomerGridControl.EmbeddedNavigator.Name = "";
            this.sOPC_CustomerGridControl.Location = new System.Drawing.Point(0, 27);
            this.sOPC_CustomerGridControl.MainView = this.gridView1;
            this.sOPC_CustomerGridControl.Name = "sOPC_CustomerGridControl";
            this.sOPC_CustomerGridControl.Size = new System.Drawing.Size(653, 293);
            this.sOPC_CustomerGridControl.TabIndex = 1;
            this.sOPC_CustomerGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustomerCode,
            this.colCustomerName,
            this.colTeam});
            this.gridView1.GridControl = this.sOPC_CustomerGridControl;
            this.gridView1.Name = "gridView1";
            // 
            // colCustomerCode
            // 
            this.colCustomerCode.Caption = "CustomerCode";
            this.colCustomerCode.FieldName = "CustomerCode";
            this.colCustomerCode.Name = "colCustomerCode";
            this.colCustomerCode.Visible = true;
            this.colCustomerCode.VisibleIndex = 0;
            // 
            // colCustomerName
            // 
            this.colCustomerName.Caption = "CustomerName";
            this.colCustomerName.FieldName = "CustomerName";
            this.colCustomerName.Name = "colCustomerName";
            this.colCustomerName.Visible = true;
            this.colCustomerName.VisibleIndex = 1;
            // 
            // colTeam
            // 
            this.colTeam.Caption = "Team";
            this.colTeam.FieldName = "Team";
            this.colTeam.Name = "colTeam";
            this.colTeam.Visible = true;
            this.colTeam.VisibleIndex = 2;
            // 
            // Customer
            // 
            this.Customer.Caption = "Customer";
            this.Customer.FieldName = "Customer";
            this.Customer.Name = "Customer";
            this.Customer.Visible = true;
            this.Customer.VisibleIndex = 0;
            this.Customer.Width = 107;
            // 
            // CustomerCode
            // 
            this.CustomerCode.Caption = "Customer Code";
            this.CustomerCode.FieldName = "CustomerCode1";
            this.CustomerCode.Name = "CustomerCode";
            this.CustomerCode.Visible = true;
            this.CustomerCode.VisibleIndex = 1;
            this.CustomerCode.Width = 127;
            // 
            // Team
            // 
            this.Team.Caption = "Team";
            this.Team.FieldName = "Team";
            this.Team.Name = "Team";
            this.Team.Visible = true;
            this.Team.VisibleIndex = 2;
            this.Team.Width = 103;
            // 
            // gridColumnSizeSystem
            // 
            this.gridColumnSizeSystem.Caption = "Size System";
            this.gridColumnSizeSystem.FieldName = "SizeSystem";
            this.gridColumnSizeSystem.Name = "gridColumnSizeSystem";
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 4;
            // 
            // CustomerCodeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.sOPC_CustomerGridControl);
            this.Name = "CustomerCodeListForm";
            this.Size = new System.Drawing.Size(653, 320);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sOPC_CustomerGridControl, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sOPC_CustomerGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl sOPC_CustomerGridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerName;
        private DevExpress.XtraGrid.Columns.GridColumn colTeam;
        private DevExpress.XtraGrid.Columns.GridColumn Customer;
        private DevExpress.XtraGrid.Columns.GridColumn CustomerCode;
        private DevExpress.XtraGrid.Columns.GridColumn Team;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnSizeSystem;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
    }
}
