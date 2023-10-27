namespace PH.BasicInfo.UI.MasterDB
{
    partial class SupplierRegionListForm
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
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCountryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame_PHDG_D = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame_PYBD_D = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame_PHHK_C = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncotermsCode = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1060, 342);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNo,
            this.colCountryCode,
            this.colRegionCode,
            this.colRegionName,
            this.colRegionNameCN,
            this.colTransitMode,
            this.colTimeFrame_PHDG_D,
            this.colTimeFrame_PYBD_D,
            this.colTimeFrame_PHHK_C,
            this.colIncotermsCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.SupplierRegion);
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Seq No.";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.VisibleIndex = 0;
            this.colSeqNo.Width = 66;
            // 
            // colCountryCode
            // 
            this.colCountryCode.Caption = "Country Cde";
            this.colCountryCode.FieldName = "CountryCode";
            this.colCountryCode.Name = "colCountryCode";
            this.colCountryCode.Visible = true;
            this.colCountryCode.VisibleIndex = 2;
            this.colCountryCode.Width = 90;
            // 
            // colRegionCode
            // 
            this.colRegionCode.Caption = "Region Cde";
            this.colRegionCode.FieldName = "RegionCode";
            this.colRegionCode.Name = "colRegionCode";
            this.colRegionCode.Visible = true;
            this.colRegionCode.VisibleIndex = 3;
            this.colRegionCode.Width = 84;
            // 
            // colRegionName
            // 
            this.colRegionName.Caption = "Region Name (EN)";
            this.colRegionName.FieldName = "RegionNameEN";
            this.colRegionName.Name = "colRegionName";
            this.colRegionName.Visible = true;
            this.colRegionName.VisibleIndex = 4;
            this.colRegionName.Width = 214;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 6;
            this.colTransitMode.Width = 93;
            // 
            // colRegionNameCN
            // 
            this.colRegionNameCN.Caption = "Region Name (CN)";
            this.colRegionNameCN.FieldName = "RegionNameCN";
            this.colRegionNameCN.Name = "colRegionNameCN";
            this.colRegionNameCN.Visible = true;
            this.colRegionNameCN.VisibleIndex = 5;
            this.colRegionNameCN.Width = 185;
            // 
            // colTimeFrame_PHDG_D
            // 
            this.colTimeFrame_PHDG_D.Caption = "Time Frame PHDG (CRS)";
            this.colTimeFrame_PHDG_D.FieldName = "TimeFrame_PHDG_D";
            this.colTimeFrame_PHDG_D.Name = "colTimeFrame_PHDG_D";
            this.colTimeFrame_PHDG_D.Visible = true;
            this.colTimeFrame_PHDG_D.VisibleIndex = 7;
            this.colTimeFrame_PHDG_D.Width = 156;
            // 
            // colTimeFrame_PYBD_D
            // 
            this.colTimeFrame_PYBD_D.Caption = "Time Frame PYBD (CRS)";
            this.colTimeFrame_PYBD_D.FieldName = "TimeFrame_PYBD_D";
            this.colTimeFrame_PYBD_D.Name = "colTimeFrame_PYBD_D";
            this.colTimeFrame_PYBD_D.Visible = true;
            this.colTimeFrame_PYBD_D.VisibleIndex = 8;
            this.colTimeFrame_PYBD_D.Width = 155;
            // 
            // colTimeFrame_PHHK_C
            // 
            this.colTimeFrame_PHHK_C.Caption = "Time Frame PHHK (CCS)";
            this.colTimeFrame_PHHK_C.FieldName = "TimeFrame_PHHK_C";
            this.colTimeFrame_PHHK_C.Name = "colTimeFrame_PHHK_C";
            this.colTimeFrame_PHHK_C.Visible = true;
            this.colTimeFrame_PHHK_C.VisibleIndex = 9;
            this.colTimeFrame_PHHK_C.Width = 155;
            // 
            // colIncotermsCode
            // 
            this.colIncotermsCode.Caption = "Incoterms Cde";
            this.colIncotermsCode.FieldName = "IncotermsCode";
            this.colIncotermsCode.Name = "colIncotermsCode";
            this.colIncotermsCode.Visible = true;
            this.colIncotermsCode.VisibleIndex = 1;
            this.colIncotermsCode.Width = 102;
            // 
            // SupplierRegionListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SupplierRegionListForm";
            this.Size = new System.Drawing.Size(1060, 369);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCountryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionName;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame_PHDG_D;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame_PYBD_D;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame_PHHK_C;
        private DevExpress.XtraGrid.Columns.GridColumn colIncotermsCode;
    }
}
