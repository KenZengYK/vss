namespace PH.POPC.UI.POPC
{
    partial class TestForm
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
            this.components = new System.ComponentModel.Container();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSKU = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIntelSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFitCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHOutstandingQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCompany1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendmentNo1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrderLine1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSKU1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSplitNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersionFlag1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRevisedDeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSplitQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitModeChanged = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChangedTimeFrame1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGRNDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGRNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceivedQty = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(23, 13);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(1320, 151);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colItemCode,
            this.colColorCode,
            this.colSizeCode,
            this.colIntelSize,
            this.colFitCode,
            this.colColorShade,
            this.colPrice,
            this.colQty,
            this.colPHOutstandingQty});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.Visible = true;
            this.colCompany.VisibleIndex = 0;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PONO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 1;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 2;
            // 
            // colAmendmentNo
            // 
            this.colAmendmentNo.Caption = "AmendmentNo";
            this.colAmendmentNo.FieldName = "AmendmentNo";
            this.colAmendmentNo.Name = "colAmendmentNo";
            this.colAmendmentNo.Visible = true;
            this.colAmendmentNo.VisibleIndex = 3;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "OrderLine";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.Visible = true;
            this.colOrderLine.VisibleIndex = 4;
            // 
            // colSKU
            // 
            this.colSKU.Caption = "SKU";
            this.colSKU.FieldName = "SKU";
            this.colSKU.Name = "colSKU";
            this.colSKU.Visible = true;
            this.colSKU.VisibleIndex = 5;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "ItemCode";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 6;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ColorCode";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 7;
            // 
            // colSizeCode
            // 
            this.colSizeCode.Caption = "SizeCode";
            this.colSizeCode.FieldName = "SizeCode";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.Visible = true;
            this.colSizeCode.VisibleIndex = 8;
            // 
            // colIntelSize
            // 
            this.colIntelSize.Caption = "IntelSize";
            this.colIntelSize.FieldName = "IntelSize";
            this.colIntelSize.Name = "colIntelSize";
            this.colIntelSize.Visible = true;
            this.colIntelSize.VisibleIndex = 9;
            // 
            // colFitCode
            // 
            this.colFitCode.Caption = "FitCode";
            this.colFitCode.FieldName = "FitCode";
            this.colFitCode.Name = "colFitCode";
            this.colFitCode.Visible = true;
            this.colFitCode.VisibleIndex = 10;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "ColorShade";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.Visible = true;
            this.colColorShade.VisibleIndex = 11;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 12;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 13;
            // 
            // colPHOutstandingQty
            // 
            this.colPHOutstandingQty.Caption = "PHOutstandingQty";
            this.colPHOutstandingQty.FieldName = "PHOutstandingQty";
            this.colPHOutstandingQty.Name = "colPHOutstandingQty";
            this.colPHOutstandingQty.Visible = true;
            this.colPHOutstandingQty.VisibleIndex = 14;
            // 
            // gridControl2
            // 
            this.gridControl2.DataSource = this.bindingSource2;
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(23, 184);
            this.gridControl2.MainView = this.gridView2;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(1320, 295);
            this.gridControl2.TabIndex = 1;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POChangesMonitor);
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany1,
            this.colPONO1,
            this.colVersion1,
            this.colAmendmentNo1,
            this.colOrderLine1,
            this.colSKU1,
            this.colSplitNo,
            this.colVersionFlag1,
            this.colRevisedDeliveryDate,
            this.colSplitQty,
            this.colTransitModeChanged,
            this.colChangedTimeFrame1,
            this.colGRNDate,
            this.colGRNQty,
            this.colReceivedQty});
            this.gridView2.GridControl = this.gridControl2;
            this.gridView2.Name = "gridView2";
            // 
            // colCompany1
            // 
            this.colCompany1.Caption = "Company";
            this.colCompany1.FieldName = "Company";
            this.colCompany1.Name = "colCompany1";
            this.colCompany1.Visible = true;
            this.colCompany1.VisibleIndex = 0;
            // 
            // colPONO1
            // 
            this.colPONO1.Caption = "PONO";
            this.colPONO1.FieldName = "PONO";
            this.colPONO1.Name = "colPONO1";
            this.colPONO1.Visible = true;
            this.colPONO1.VisibleIndex = 1;
            // 
            // colVersion1
            // 
            this.colVersion1.Caption = "Version";
            this.colVersion1.FieldName = "Version";
            this.colVersion1.Name = "colVersion1";
            this.colVersion1.Visible = true;
            this.colVersion1.VisibleIndex = 2;
            // 
            // colAmendmentNo1
            // 
            this.colAmendmentNo1.Caption = "AmendmentNo";
            this.colAmendmentNo1.FieldName = "AmendmentNo";
            this.colAmendmentNo1.Name = "colAmendmentNo1";
            this.colAmendmentNo1.Visible = true;
            this.colAmendmentNo1.VisibleIndex = 3;
            // 
            // colOrderLine1
            // 
            this.colOrderLine1.Caption = "OrderLine";
            this.colOrderLine1.FieldName = "OrderLine";
            this.colOrderLine1.Name = "colOrderLine1";
            this.colOrderLine1.Visible = true;
            this.colOrderLine1.VisibleIndex = 4;
            // 
            // colSKU1
            // 
            this.colSKU1.Caption = "SKU";
            this.colSKU1.FieldName = "SKU";
            this.colSKU1.Name = "colSKU1";
            this.colSKU1.Visible = true;
            this.colSKU1.VisibleIndex = 5;
            // 
            // colSplitNo
            // 
            this.colSplitNo.Caption = "SplitNo";
            this.colSplitNo.FieldName = "SplitNo";
            this.colSplitNo.Name = "colSplitNo";
            this.colSplitNo.Visible = true;
            this.colSplitNo.VisibleIndex = 6;
            // 
            // colVersionFlag1
            // 
            this.colVersionFlag1.Caption = "VersionFlag";
            this.colVersionFlag1.FieldName = "VersionFlag";
            this.colVersionFlag1.Name = "colVersionFlag1";
            this.colVersionFlag1.Visible = true;
            this.colVersionFlag1.VisibleIndex = 7;
            // 
            // colRevisedDeliveryDate
            // 
            this.colRevisedDeliveryDate.Caption = "RevisedDeliveryDate";
            this.colRevisedDeliveryDate.FieldName = "RevisedDeliveryDate";
            this.colRevisedDeliveryDate.Name = "colRevisedDeliveryDate";
            this.colRevisedDeliveryDate.Visible = true;
            this.colRevisedDeliveryDate.VisibleIndex = 8;
            // 
            // colSplitQty
            // 
            this.colSplitQty.Caption = "SplitQty";
            this.colSplitQty.FieldName = "SplitQty";
            this.colSplitQty.Name = "colSplitQty";
            this.colSplitQty.Visible = true;
            this.colSplitQty.VisibleIndex = 9;
            // 
            // colTransitModeChanged
            // 
            this.colTransitModeChanged.Caption = "TransitModeChanged";
            this.colTransitModeChanged.FieldName = "TransitModeChanged";
            this.colTransitModeChanged.Name = "colTransitModeChanged";
            this.colTransitModeChanged.Visible = true;
            this.colTransitModeChanged.VisibleIndex = 10;
            // 
            // colChangedTimeFrame1
            // 
            this.colChangedTimeFrame1.Caption = "ChangedTimeFrame1";
            this.colChangedTimeFrame1.FieldName = "ChangedTimeFrame1";
            this.colChangedTimeFrame1.Name = "colChangedTimeFrame1";
            this.colChangedTimeFrame1.Visible = true;
            this.colChangedTimeFrame1.VisibleIndex = 11;
            // 
            // colGRNDate
            // 
            this.colGRNDate.Caption = "GRNDate";
            this.colGRNDate.FieldName = "GRNDate";
            this.colGRNDate.Name = "colGRNDate";
            this.colGRNDate.Visible = true;
            this.colGRNDate.VisibleIndex = 12;
            // 
            // colGRNQty
            // 
            this.colGRNQty.Caption = "GRNQty";
            this.colGRNQty.FieldName = "GRNQty";
            this.colGRNQty.Name = "colGRNQty";
            this.colGRNQty.Visible = true;
            this.colGRNQty.VisibleIndex = 13;
            // 
            // colReceivedQty
            // 
            this.colReceivedQty.Caption = "ReceivedQty";
            this.colReceivedQty.FieldName = "ReceivedQty";
            this.colReceivedQty.Name = "colReceivedQty";
            this.colReceivedQty.Visible = true;
            this.colReceivedQty.VisibleIndex = 14;
            // 
            // TestForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1371, 491);
            this.Controls.Add(this.gridControl2);
            this.Controls.Add(this.gridControl1);
            this.Name = "TestForm";
            this.Text = "TestForm";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendmentNo;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colSKU;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colIntelSize;
        private DevExpress.XtraGrid.Columns.GridColumn colFitCode;
        private DevExpress.XtraGrid.Columns.GridColumn colColorShade;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraGrid.Columns.GridColumn colPHOutstandingQty;
        private System.Windows.Forms.BindingSource bindingSource2;
        private DevExpress.XtraGrid.Columns.GridColumn colCompany1;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO1;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion1;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendmentNo1;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine1;
        private DevExpress.XtraGrid.Columns.GridColumn colSKU1;
        private DevExpress.XtraGrid.Columns.GridColumn colSplitNo;
        private DevExpress.XtraGrid.Columns.GridColumn colVersionFlag1;
        private DevExpress.XtraGrid.Columns.GridColumn colRevisedDeliveryDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSplitQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitModeChanged;
        private DevExpress.XtraGrid.Columns.GridColumn colChangedTimeFrame1;
        private DevExpress.XtraGrid.Columns.GridColumn colGRNDate;
        private DevExpress.XtraGrid.Columns.GridColumn colGRNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colReceivedQty;
    }
}