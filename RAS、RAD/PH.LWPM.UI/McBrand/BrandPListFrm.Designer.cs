namespace PH.LWPM.UI.McBrand
{
	partial class BrandPListFrm
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
            this.colBrandName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaxSpeed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colASpeed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaxNeedle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaxFeed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStitch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBNeedle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTNeedle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPfLift = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCategoryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWGroupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCodeNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCodeNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1467, 437);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colBrandName,
            this.colMaxSpeed,
            this.colASpeed,
            this.colMaxNeedle,
            this.colMaxFeed,
            this.colStitch,
            this.colBNeedle,
            this.colTNeedle,
            this.colPfLift,
            this.colHWCategoryCode,
            this.colHWGroupCode,
            this.colHWTypeCode,
            this.colHWTypeCodeNameCN,
            this.colHWTypeCodeNameEN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.McBrand);
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Brand/Model No.\r\n品牌/型號";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.Visible = true;
            this.colBrandName.VisibleIndex = 5;
            this.colBrandName.Width = 126;
            // 
            // colMaxSpeed
            // 
            this.colMaxSpeed.Caption = "Max RPM\r\n最大轉速";
            this.colMaxSpeed.FieldName = "MaxSpeed";
            this.colMaxSpeed.Name = "colMaxSpeed";
            this.colMaxSpeed.Visible = true;
            this.colMaxSpeed.VisibleIndex = 6;
            this.colMaxSpeed.Width = 119;
            // 
            // colASpeed
            // 
            this.colASpeed.Caption = "Adjustable RPM\r\n可選擇轉速";
            this.colASpeed.FieldName = "ASpeed";
            this.colASpeed.Name = "colASpeed";
            this.colASpeed.Visible = true;
            this.colASpeed.VisibleIndex = 7;
            this.colASpeed.Width = 130;
            // 
            // colMaxNeedle
            // 
            this.colMaxNeedle.Caption = "Max Needle Throw\r\n最大針步移動距離";
            this.colMaxNeedle.FieldName = "MaxNeedle";
            this.colMaxNeedle.Name = "colMaxNeedle";
            this.colMaxNeedle.Visible = true;
            this.colMaxNeedle.VisibleIndex = 8;
            this.colMaxNeedle.Width = 144;
            // 
            // colMaxFeed
            // 
            this.colMaxFeed.Caption = "Max Feed Pitch\r\n最大供應振幅";
            this.colMaxFeed.FieldName = "MaxFeed";
            this.colMaxFeed.Name = "colMaxFeed";
            this.colMaxFeed.Visible = true;
            this.colMaxFeed.VisibleIndex = 9;
            this.colMaxFeed.Width = 121;
            // 
            // colStitch
            // 
            this.colStitch.Caption = "Stitch\r\n線步";
            this.colStitch.FieldName = "Stitch";
            this.colStitch.Name = "colStitch";
            this.colStitch.Visible = true;
            this.colStitch.VisibleIndex = 10;
            this.colStitch.Width = 89;
            // 
            // colBNeedle
            // 
            this.colBNeedle.Caption = "Brand of Needle / Film\r\n針或膠膜品牌";
            this.colBNeedle.FieldName = "BNeedle";
            this.colBNeedle.Name = "colBNeedle";
            this.colBNeedle.Visible = true;
            this.colBNeedle.VisibleIndex = 11;
            this.colBNeedle.Width = 114;
            // 
            // colTNeedle
            // 
            this.colTNeedle.Caption = "Type of Needle / Film\r\n針或膠膜組別";
            this.colTNeedle.FieldName = "TNeedle";
            this.colTNeedle.Name = "colTNeedle";
            this.colTNeedle.Visible = true;
            this.colTNeedle.VisibleIndex = 12;
            this.colTNeedle.Width = 119;
            // 
            // colPfLift
            // 
            this.colPfLift.Caption = "Presser foot lift\r\n腳踏板";
            this.colPfLift.FieldName = "PfLift";
            this.colPfLift.Name = "colPfLift";
            this.colPfLift.Width = 115;
            // 
            // colHWCategoryCode
            // 
            this.colHWCategoryCode.Caption = "HW Cat. Code\r\n大類";
            this.colHWCategoryCode.FieldName = "HWCategoryCode";
            this.colHWCategoryCode.Name = "colHWCategoryCode";
            this.colHWCategoryCode.Visible = true;
            this.colHWCategoryCode.VisibleIndex = 0;
            this.colHWCategoryCode.Width = 100;
            // 
            // colHWGroupCode
            // 
            this.colHWGroupCode.Caption = "HW Grp Code\r\n類別";
            this.colHWGroupCode.FieldName = "HWGroupCode";
            this.colHWGroupCode.Name = "colHWGroupCode";
            this.colHWGroupCode.Visible = true;
            this.colHWGroupCode.VisibleIndex = 1;
            this.colHWGroupCode.Width = 97;
            // 
            // colHWTypeCode
            // 
            this.colHWTypeCode.Caption = "HW Type Code\r\n組別";
            this.colHWTypeCode.FieldName = "HWTypeCode";
            this.colHWTypeCode.Name = "colHWTypeCode";
            this.colHWTypeCode.Visible = true;
            this.colHWTypeCode.VisibleIndex = 2;
            this.colHWTypeCode.Width = 106;
            // 
            // colHWTypeCodeNameCN
            // 
            this.colHWTypeCodeNameCN.Caption = "HW Type Description (CN)\r\n組別描述 (中文)";
            this.colHWTypeCodeNameCN.FieldName = "HWTypeCodeNameCN";
            this.colHWTypeCodeNameCN.Name = "colHWTypeCodeNameCN";
            this.colHWTypeCodeNameCN.Visible = true;
            this.colHWTypeCodeNameCN.VisibleIndex = 4;
            this.colHWTypeCodeNameCN.Width = 169;
            // 
            // colHWTypeCodeNameEN
            // 
            this.colHWTypeCodeNameEN.Caption = "HW Type Description\r\n組別描述 (英文)";
            this.colHWTypeCodeNameEN.FieldName = "HWTypeCodeNameEN";
            this.colHWTypeCodeNameEN.Name = "colHWTypeCodeNameEN";
            this.colHWTypeCodeNameEN.Visible = true;
            this.colHWTypeCodeNameEN.VisibleIndex = 3;
            this.colHWTypeCodeNameEN.Width = 143;
            // 
            // BrandPListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BrandPListFrm";
            this.Size = new System.Drawing.Size(1467, 464);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

		}

		#endregion

        private DevExpress.XtraGrid.Columns.GridColumn colBrandName;
        private DevExpress.XtraGrid.Columns.GridColumn colMaxSpeed;
        private DevExpress.XtraGrid.Columns.GridColumn colASpeed;
        private DevExpress.XtraGrid.Columns.GridColumn colMaxNeedle;
        private DevExpress.XtraGrid.Columns.GridColumn colMaxFeed;
        private DevExpress.XtraGrid.Columns.GridColumn colStitch;
        private DevExpress.XtraGrid.Columns.GridColumn colBNeedle;
        private DevExpress.XtraGrid.Columns.GridColumn colTNeedle;
        private DevExpress.XtraGrid.Columns.GridColumn colPfLift;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWGroupCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCodeNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCodeNameEN;
	}
}
