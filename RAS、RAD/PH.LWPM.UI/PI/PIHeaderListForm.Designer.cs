namespace PH.LWPM.UI.PI
{
    partial class PIHeaderListForm
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
            this.colPINO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPIDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBuyerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPortOfLoading = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPortOfDischarge = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVesselFlight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSailingDeparture = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colETA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMarks = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPrint_EnternaltoPY = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_SheentoPY = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_PHtoEnternal = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_VendortoPH = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPrint_EnternaltoPY_C = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_SheentoPY_C = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_PHtoEnternal_C = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_VendortoPH_C = new DevExpress.XtraBars.BarButtonItem();
            this.btnItemPrintPI = new DevExpress.XtraBars.BarButtonItem();
            this.btnItemPrintCI = new DevExpress.XtraBars.BarButtonItem();
            this.colSeller = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.barSubItem1,
            this.barBtnPrint_EnternaltoPY,
            this.barBtnPrint_PHtoEnternal,
            this.barBtnPrint_VendortoPH,
            this.barSubItem2,
            this.barBtnPrint_EnternaltoPY_C,
            this.barBtnPrint_PHtoEnternal_C,
            this.barBtnPrint_VendortoPH_C,
            this.barBtnPrint_SheentoPY,
            this.barBtnPrint_SheentoPY_C,
            this.btnItemPrintPI,
            this.btnItemPrintCI});
            this.objbarManager.MaxItemId = 73;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnItemPrintPI, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnItemPrintCI)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1224, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPINO,
            this.colPIDate,
            this.colVendorCode,
            this.colBuyerCode,
            this.colProjectNO,
            this.colShipMode,
            this.colPortOfLoading,
            this.colPortOfDischarge,
            this.colVesselFlight,
            this.colSailingDeparture,
            this.colETA,
            this.colMarks,
            this.colReference,
            this.colSeller});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PIHeader);
            // 
            // colPINO
            // 
            this.colPINO.Caption = "PF Invoice No.";
            this.colPINO.FieldName = "PINO";
            this.colPINO.Name = "colPINO";
            this.colPINO.Visible = true;
            this.colPINO.VisibleIndex = 0;
            this.colPINO.Width = 110;
            // 
            // colPIDate
            // 
            this.colPIDate.Caption = "PF Invoice Date";
            this.colPIDate.FieldName = "PIDate";
            this.colPIDate.Name = "colPIDate";
            this.colPIDate.Visible = true;
            this.colPIDate.VisibleIndex = 1;
            this.colPIDate.Width = 111;
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "Vendor Code";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
            this.colVendorCode.Visible = true;
            this.colVendorCode.VisibleIndex = 2;
            this.colVendorCode.Width = 134;
            // 
            // colBuyerCode
            // 
            this.colBuyerCode.Caption = "Buyer Code";
            this.colBuyerCode.FieldName = "BuyerCode";
            this.colBuyerCode.Name = "colBuyerCode";
            this.colBuyerCode.Visible = true;
            this.colBuyerCode.VisibleIndex = 4;
            this.colBuyerCode.Width = 116;
            // 
            // colProjectNO
            // 
            this.colProjectNO.Caption = "Our Project No.";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.Visible = true;
            this.colProjectNO.VisibleIndex = 5;
            this.colProjectNO.Width = 117;
            // 
            // colShipMode
            // 
            this.colShipMode.Caption = "Transit Mode";
            this.colShipMode.FieldName = "ShipMode";
            this.colShipMode.Name = "colShipMode";
            this.colShipMode.Visible = true;
            this.colShipMode.VisibleIndex = 6;
            this.colShipMode.Width = 101;
            // 
            // colPortOfLoading
            // 
            this.colPortOfLoading.Caption = "Port Of Loading";
            this.colPortOfLoading.FieldName = "PortOfLoading";
            this.colPortOfLoading.Name = "colPortOfLoading";
            this.colPortOfLoading.Visible = true;
            this.colPortOfLoading.VisibleIndex = 7;
            this.colPortOfLoading.Width = 112;
            // 
            // colPortOfDischarge
            // 
            this.colPortOfDischarge.Caption = "Port Of Discharge";
            this.colPortOfDischarge.FieldName = "PortOfDischarge";
            this.colPortOfDischarge.Name = "colPortOfDischarge";
            this.colPortOfDischarge.Visible = true;
            this.colPortOfDischarge.VisibleIndex = 8;
            this.colPortOfDischarge.Width = 116;
            // 
            // colVesselFlight
            // 
            this.colVesselFlight.Caption = "Vessel Flight";
            this.colVesselFlight.FieldName = "VesselFlight";
            this.colVesselFlight.Name = "colVesselFlight";
            this.colVesselFlight.Visible = true;
            this.colVesselFlight.VisibleIndex = 9;
            this.colVesselFlight.Width = 108;
            // 
            // colSailingDeparture
            // 
            this.colSailingDeparture.Caption = "Sailing Departure";
            this.colSailingDeparture.FieldName = "SailingDeparture";
            this.colSailingDeparture.Name = "colSailingDeparture";
            this.colSailingDeparture.Visible = true;
            this.colSailingDeparture.VisibleIndex = 10;
            this.colSailingDeparture.Width = 113;
            // 
            // colETA
            // 
            this.colETA.Caption = "ETA";
            this.colETA.FieldName = "ETA";
            this.colETA.Name = "colETA";
            this.colETA.Visible = true;
            this.colETA.VisibleIndex = 11;
            // 
            // colMarks
            // 
            this.colMarks.Caption = "Marks";
            this.colMarks.FieldName = "Marks";
            this.colMarks.Name = "colMarks";
            this.colMarks.Visible = true;
            this.colMarks.VisibleIndex = 12;
            // 
            // colReference
            // 
            this.colReference.Caption = "Reference";
            this.colReference.FieldName = "Reference";
            this.colReference.Name = "colReference";
            this.colReference.Visible = true;
            this.colReference.VisibleIndex = 13;
            this.colReference.Width = 141;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "PI Print";
            this.barSubItem1.Id = 61;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_EnternaltoPY),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_SheentoPY),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_PHtoEnternal),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_VendortoPH)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnPrint_EnternaltoPY
            // 
            this.barBtnPrint_EnternaltoPY.Caption = "Eternal-->PY";
            this.barBtnPrint_EnternaltoPY.Id = 62;
            this.barBtnPrint_EnternaltoPY.Name = "barBtnPrint_EnternaltoPY";
            // 
            // barBtnPrint_SheentoPY
            // 
            this.barBtnPrint_SheentoPY.Caption = "Sheen-->PY";
            this.barBtnPrint_SheentoPY.Id = 69;
            this.barBtnPrint_SheentoPY.Name = "barBtnPrint_SheentoPY";
            // 
            // barBtnPrint_PHtoEnternal
            // 
            this.barBtnPrint_PHtoEnternal.Caption = "PHHK-->Eternal";
            this.barBtnPrint_PHtoEnternal.Id = 63;
            this.barBtnPrint_PHtoEnternal.Name = "barBtnPrint_PHtoEnternal";
            // 
            // barBtnPrint_VendortoPH
            // 
            this.barBtnPrint_VendortoPH.Caption = "Vendor-->PHHK";
            this.barBtnPrint_VendortoPH.Id = 64;
            this.barBtnPrint_VendortoPH.Name = "barBtnPrint_VendortoPH";
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "CI Print";
            this.barSubItem2.Id = 65;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_EnternaltoPY_C),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_SheentoPY_C),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_PHtoEnternal_C),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_VendortoPH_C)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // barBtnPrint_EnternaltoPY_C
            // 
            this.barBtnPrint_EnternaltoPY_C.Caption = "Eternal-->PY";
            this.barBtnPrint_EnternaltoPY_C.Id = 66;
            this.barBtnPrint_EnternaltoPY_C.Name = "barBtnPrint_EnternaltoPY_C";
            // 
            // barBtnPrint_SheentoPY_C
            // 
            this.barBtnPrint_SheentoPY_C.Caption = "Sheen-->PY";
            this.barBtnPrint_SheentoPY_C.Id = 70;
            this.barBtnPrint_SheentoPY_C.Name = "barBtnPrint_SheentoPY_C";
            // 
            // barBtnPrint_PHtoEnternal_C
            // 
            this.barBtnPrint_PHtoEnternal_C.Caption = "PHHK-->Eternal";
            this.barBtnPrint_PHtoEnternal_C.Id = 67;
            this.barBtnPrint_PHtoEnternal_C.Name = "barBtnPrint_PHtoEnternal_C";
            // 
            // barBtnPrint_VendortoPH_C
            // 
            this.barBtnPrint_VendortoPH_C.Caption = "Vendor-->PHHK";
            this.barBtnPrint_VendortoPH_C.Id = 68;
            this.barBtnPrint_VendortoPH_C.Name = "barBtnPrint_VendortoPH_C";
            // 
            // btnItemPrintPI
            // 
            this.btnItemPrintPI.Caption = "Print PI";
            this.btnItemPrintPI.Id = 71;
            this.btnItemPrintPI.Name = "btnItemPrintPI";
            this.btnItemPrintPI.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnItemPrintPI_ItemClick);
            // 
            // btnItemPrintCI
            // 
            this.btnItemPrintCI.Caption = "Print CI";
            this.btnItemPrintCI.Id = 72;
            this.btnItemPrintCI.Name = "btnItemPrintCI";
            this.btnItemPrintCI.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnItemPrintCI_ItemClick);
            // 
            // colSeller
            // 
            this.colSeller.Caption = "Seller (investor)";
            this.colSeller.FieldName = "SellerCode";
            this.colSeller.Name = "colSeller";
            this.colSeller.Visible = true;
            this.colSeller.VisibleIndex = 3;
            this.colSeller.Width = 125;
            // 
            // PIHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PIHeaderListForm";
            this.Size = new System.Drawing.Size(1224, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPINO;
        private DevExpress.XtraGrid.Columns.GridColumn colPIDate;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colBuyerCode;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNO;
        private DevExpress.XtraGrid.Columns.GridColumn colShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn colPortOfLoading;
        private DevExpress.XtraGrid.Columns.GridColumn colPortOfDischarge;
        private DevExpress.XtraGrid.Columns.GridColumn colVesselFlight;
        private DevExpress.XtraGrid.Columns.GridColumn colSailingDeparture;
        private DevExpress.XtraGrid.Columns.GridColumn colETA;
        private DevExpress.XtraGrid.Columns.GridColumn colMarks;
        private DevExpress.XtraGrid.Columns.GridColumn colReference;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_EnternaltoPY;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_PHtoEnternal;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_VendortoPH;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_EnternaltoPY_C;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_PHtoEnternal_C;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_VendortoPH_C;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_SheentoPY;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_SheentoPY_C;
        private DevExpress.XtraBars.BarButtonItem btnItemPrintPI;
        private DevExpress.XtraBars.BarButtonItem btnItemPrintCI;
        private DevExpress.XtraGrid.Columns.GridColumn colSeller;

    }
}
