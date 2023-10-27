namespace PH.BasicInfo.UI.DestinationPHKey
{
    partial class PHKeyParentListFrm
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
            this.colEngDes = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCHIDes = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colENGAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCHIAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThaiDes = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThaiAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnReport = new DevExpress.XtraBars.BarButtonItem();
            this.colStartPointCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartPointNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnReport});
            this.objbarManager.MaxItemId = 40;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnReport)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1532, 319);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCode,
            this.colName,
            this.colEngDes,
            this.colCHIDes,
            this.colENGAddress,
            this.colCHIAddress,
            this.colTel,
            this.colThaiDes,
            this.colThaiAddress,
            this.colStartPointCode,
            this.colStartPointNameEN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey);
            // 
            // colCode
            // 
            this.colCode.Caption = "Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Width = 81;
            // 
            // colEngDes
            // 
            this.colEngDes.Caption = "EngDes";
            this.colEngDes.FieldName = "EngDes";
            this.colEngDes.Name = "colEngDes";
            this.colEngDes.Visible = true;
            this.colEngDes.VisibleIndex = 3;
            this.colEngDes.Width = 160;
            // 
            // colCHIDes
            // 
            this.colCHIDes.Caption = "CHIDes";
            this.colCHIDes.FieldName = "CHIDes";
            this.colCHIDes.Name = "colCHIDes";
            this.colCHIDes.Visible = true;
            this.colCHIDes.VisibleIndex = 5;
            this.colCHIDes.Width = 144;
            // 
            // colENGAddress
            // 
            this.colENGAddress.Caption = "ENGAddress";
            this.colENGAddress.FieldName = "ENGAddress";
            this.colENGAddress.Name = "colENGAddress";
            this.colENGAddress.Visible = true;
            this.colENGAddress.VisibleIndex = 4;
            this.colENGAddress.Width = 167;
            // 
            // colCHIAddress
            // 
            this.colCHIAddress.Caption = "CHIAddress";
            this.colCHIAddress.FieldName = "CHIAddress";
            this.colCHIAddress.Name = "colCHIAddress";
            this.colCHIAddress.Visible = true;
            this.colCHIAddress.VisibleIndex = 6;
            this.colCHIAddress.Width = 273;
            // 
            // colTel
            // 
            this.colTel.Caption = "Tel";
            this.colTel.FieldName = "Tel";
            this.colTel.Name = "colTel";
            this.colTel.Visible = true;
            this.colTel.VisibleIndex = 7;
            this.colTel.Width = 137;
            // 
            // colThaiDes
            // 
            this.colThaiDes.Caption = "ThaiDes";
            this.colThaiDes.FieldName = "ThaiDes";
            this.colThaiDes.Name = "colThaiDes";
            this.colThaiDes.Visible = true;
            this.colThaiDes.VisibleIndex = 8;
            this.colThaiDes.Width = 137;
            // 
            // colThaiAddress
            // 
            this.colThaiAddress.Caption = "ThaiAddress";
            this.colThaiAddress.FieldName = "ThaiAddress";
            this.colThaiAddress.Name = "colThaiAddress";
            this.colThaiAddress.Visible = true;
            this.colThaiAddress.VisibleIndex = 9;
            this.colThaiAddress.Width = 97;
            // 
            // colName
            // 
            this.colName.Caption = "Code";
            this.colName.FieldName = "Name";
            this.colName.Name = "colName";
            this.colName.Visible = true;
            this.colName.VisibleIndex = 2;
            this.colName.Width = 82;
            // 
            // barBtnReport
            // 
            this.barBtnReport.Caption = "Report";
            this.barBtnReport.Id = 39;
            this.barBtnReport.Name = "barBtnReport";
            this.barBtnReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnReport_ItemClick);
            // 
            // colStartPointCode
            // 
            this.colStartPointCode.Caption = "Start Point";
            this.colStartPointCode.FieldName = "StartPointCode";
            this.colStartPointCode.Name = "colStartPointCode";
            this.colStartPointCode.Visible = true;
            this.colStartPointCode.VisibleIndex = 0;
            this.colStartPointCode.Width = 81;
            // 
            // colStartPointNameEN
            // 
            this.colStartPointNameEN.Caption = "Start Point Full Name";
            this.colStartPointNameEN.FieldName = "StartPointNameEN";
            this.colStartPointNameEN.Name = "colStartPointNameEN";
            this.colStartPointNameEN.Visible = true;
            this.colStartPointNameEN.VisibleIndex = 1;
            this.colStartPointNameEN.Width = 187;
            // 
            // PHKeyParentListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PHKeyParentListFrm";
            this.Size = new System.Drawing.Size(1532, 346);
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
        private DevExpress.XtraGrid.Columns.GridColumn colEngDes;
        private DevExpress.XtraGrid.Columns.GridColumn colCHIDes;
        private DevExpress.XtraGrid.Columns.GridColumn colENGAddress;
        private DevExpress.XtraGrid.Columns.GridColumn colCHIAddress;
        private DevExpress.XtraGrid.Columns.GridColumn colTel;
        private DevExpress.XtraGrid.Columns.GridColumn colThaiDes;
        private DevExpress.XtraGrid.Columns.GridColumn colThaiAddress;
        private DevExpress.XtraGrid.Columns.GridColumn colName;
        private DevExpress.XtraBars.BarButtonItem barBtnReport;
        private DevExpress.XtraGrid.Columns.GridColumn colStartPointCode;
        private DevExpress.XtraGrid.Columns.GridColumn colStartPointNameEN;


    }
}
