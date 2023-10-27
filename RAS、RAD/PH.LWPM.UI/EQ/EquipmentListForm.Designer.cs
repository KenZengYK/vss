namespace PH.LWPM.UI.EQ
{
    partial class EquipmentListForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEQGroupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemLevelCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colToolsContainerCode = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1331, 358);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.colEQGroupCode,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn7,
            this.colItemLevelCode,
            this.gridColumn10,
            this.gridColumn11,
            this.gridColumn12,
            this.gridColumn4,
            this.colToolsContainerCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.ItemTool);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Seq NO.";
            this.gridColumn1.FieldName = "ItemCode";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            this.gridColumn1.Width = 68;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "EQ Grp";
            this.gridColumn2.FieldName = "EQGroupNameShow";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 2;
            this.gridColumn2.Width = 200;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Users\' Dept Code";
            this.gridColumn3.FieldName = "UserDept";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 3;
            this.gridColumn3.Width = 150;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Item desc. CN";
            this.gridColumn5.FieldName = "Item_CN";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 4;
            this.gridColumn5.Width = 150;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Item desc. EN";
            this.gridColumn6.FieldName = "Item_EN";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 5;
            this.gridColumn6.Width = 150;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Spec.";
            this.gridColumn7.FieldName = "Spec";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 6;
            this.gridColumn7.Width = 100;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Item Code (From Vendor)";
            this.gridColumn10.FieldName = "ItemCodeVendor";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.Visible = true;
            this.gridColumn10.VisibleIndex = 8;
            this.gridColumn10.Width = 163;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "Item Brand";
            this.gridColumn11.FieldName = "Brand";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.Visible = true;
            this.gridColumn11.VisibleIndex = 9;
            this.gridColumn11.Width = 100;
            // 
            // gridColumn12
            // 
            this.gridColumn12.Caption = "HS Code";
            this.gridColumn12.FieldName = "HSCode";
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.Visible = true;
            this.gridColumn12.VisibleIndex = 10;
            this.gridColumn12.Width = 100;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Unit Price";
            this.gridColumn4.FieldName = "Price";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 11;
            // 
            // colEQGroupCode
            // 
            this.colEQGroupCode.Caption = "EQ Grp Code";
            this.colEQGroupCode.FieldName = "EQGroupCode";
            this.colEQGroupCode.Name = "colEQGroupCode";
            this.colEQGroupCode.Visible = true;
            this.colEQGroupCode.VisibleIndex = 1;
            this.colEQGroupCode.Width = 93;
            // 
            // colItemLevelCode
            // 
            this.colItemLevelCode.Caption = "Item Level";
            this.colItemLevelCode.FieldName = "ItemLevelNameShow";
            this.colItemLevelCode.Name = "colItemLevelCode";
            this.colItemLevelCode.Visible = true;
            this.colItemLevelCode.VisibleIndex = 7;
            this.colItemLevelCode.Width = 85;
            // 
            // colToolsContainerCode
            // 
            this.colToolsContainerCode.Caption = "Tools Container";
            this.colToolsContainerCode.FieldName = "ToolsContainerCode";
            this.colToolsContainerCode.Name = "colToolsContainerCode";
            this.colToolsContainerCode.Visible = true;
            this.colToolsContainerCode.VisibleIndex = 12;
            // 
            // EquipmentListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "EquipmentListForm";
            this.Size = new System.Drawing.Size(1331, 385);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn12;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn colEQGroupCode;
        private DevExpress.XtraGrid.Columns.GridColumn colItemLevelCode;
        private DevExpress.XtraGrid.Columns.GridColumn colToolsContainerCode;
    }
}