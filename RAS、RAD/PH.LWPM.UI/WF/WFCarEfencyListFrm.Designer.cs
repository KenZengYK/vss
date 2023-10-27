namespace PH.LWPM.UI.WF
{
    partial class WFCarEfencyListFrm
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
            this.colId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_BT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_SN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_HD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_ZZ = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_OV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_DN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_CT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType_CS = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalEfiency = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1033, 279);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colId,
            this.colFactory,
            this.colNameCN,
            this.colType_BT,
            this.colType_SN,
            this.colType_HD,
            this.colType_ZZ,
            this.colType_OV,
            this.colType_DN,
            this.colType_CT,
            this.colType_CS,
            this.colTotalEfiency});
            this.objListGridView.GroupCount = 1;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colId
            // 
            this.colId.Caption = "Id";
            this.colId.FieldName = "Id";
            this.colId.Name = "colId";
            this.colId.Visible = true;
            this.colId.VisibleIndex = 0;
            this.colId.Width = 91;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 1;
            // 
            // colNameCN
            // 
            this.colNameCN.Caption = "NameCN";
            this.colNameCN.FieldName = "NameCN";
            this.colNameCN.Name = "colNameCN";
            this.colNameCN.Visible = true;
            this.colNameCN.VisibleIndex = 1;
            this.colNameCN.Width = 82;
            // 
            // colType_BT
            // 
            this.colType_BT.Caption = "Type_BT";
            this.colType_BT.FieldName = "Type_BT";
            this.colType_BT.Name = "colType_BT";
            this.colType_BT.Visible = true;
            this.colType_BT.VisibleIndex = 2;
            this.colType_BT.Width = 79;
            // 
            // colType_SN
            // 
            this.colType_SN.Caption = "Type_SN";
            this.colType_SN.FieldName = "Type_SN";
            this.colType_SN.Name = "colType_SN";
            this.colType_SN.Visible = true;
            this.colType_SN.VisibleIndex = 3;
            this.colType_SN.Width = 79;
            // 
            // colType_HD
            // 
            this.colType_HD.Caption = "Type_HD";
            this.colType_HD.FieldName = "Type_HD";
            this.colType_HD.Name = "colType_HD";
            this.colType_HD.Visible = true;
            this.colType_HD.VisibleIndex = 4;
            this.colType_HD.Width = 71;
            // 
            // colType_ZZ
            // 
            this.colType_ZZ.Caption = "Type_ZZ";
            this.colType_ZZ.FieldName = "Type_ZZ";
            this.colType_ZZ.Name = "colType_ZZ";
            this.colType_ZZ.Visible = true;
            this.colType_ZZ.VisibleIndex = 5;
            this.colType_ZZ.Width = 80;
            // 
            // colType_OV
            // 
            this.colType_OV.Caption = "Type_OV";
            this.colType_OV.FieldName = "Type_OV";
            this.colType_OV.Name = "colType_OV";
            this.colType_OV.Visible = true;
            this.colType_OV.VisibleIndex = 6;
            this.colType_OV.Width = 87;
            // 
            // colType_DN
            // 
            this.colType_DN.Caption = "Type_DN";
            this.colType_DN.FieldName = "Type_DN";
            this.colType_DN.Name = "colType_DN";
            this.colType_DN.Visible = true;
            this.colType_DN.VisibleIndex = 7;
            this.colType_DN.Width = 91;
            // 
            // colType_CT
            // 
            this.colType_CT.Caption = "Type_CT";
            this.colType_CT.FieldName = "Type_CT";
            this.colType_CT.Name = "colType_CT";
            this.colType_CT.Visible = true;
            this.colType_CT.VisibleIndex = 8;
            this.colType_CT.Width = 120;
            // 
            // colType_CS
            // 
            this.colType_CS.Caption = "Type_CS";
            this.colType_CS.FieldName = "Type_CS";
            this.colType_CS.Name = "colType_CS";
            this.colType_CS.Visible = true;
            this.colType_CS.VisibleIndex = 9;
            this.colType_CS.Width = 92;
            // 
            // colTotalEfiency
            // 
            this.colTotalEfiency.Caption = "Total Efiency";
            this.colTotalEfiency.FieldName = "TotalEfiency";
            this.colTotalEfiency.Name = "colTotalEfiency";
            this.colTotalEfiency.Visible = true;
            this.colTotalEfiency.VisibleIndex = 10;
            this.colTotalEfiency.Width = 98;
            // 
            // WFCarEfencyListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WFCarEfencyListFrm";
            this.Size = new System.Drawing.Size(1033, 306);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colId;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colType_BT;
        private DevExpress.XtraGrid.Columns.GridColumn colType_SN;
        private DevExpress.XtraGrid.Columns.GridColumn colType_HD;
        private DevExpress.XtraGrid.Columns.GridColumn colType_ZZ;
        private DevExpress.XtraGrid.Columns.GridColumn colType_OV;
        private DevExpress.XtraGrid.Columns.GridColumn colType_DN;
        private DevExpress.XtraGrid.Columns.GridColumn colType_CT;
        private DevExpress.XtraGrid.Columns.GridColumn colType_CS;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalEfiency;
    }
}
