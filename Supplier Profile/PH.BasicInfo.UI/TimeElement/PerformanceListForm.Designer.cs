namespace PH.BasicInfo.UI.TimeElement
{
    partial class PerformanceListForm
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
            this.advBandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDevelopmentCapability = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPDD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPDDDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQuality = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colShipment = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIQC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIQCDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFabricTec = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFabricTecDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPUR = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPURDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Performance);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.advBandedGridView1;
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.advBandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // advBandedGridView1
            // 
            this.advBandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4});
            this.advBandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colDevelopmentCapability,
            this.colQuality,
            this.colColor,
            this.colShipment,
            this.colPDD,
            this.colPDDDate,
            this.colIQC,
            this.colIQCDate,
            this.colFabricTec,
            this.colFabricTecDate,
            this.colPUR,
            this.colPURDate});
            this.advBandedGridView1.GridControl = this.objListGridControl;
            this.advBandedGridView1.Name = "advBandedGridView1";
            this.advBandedGridView1.OptionsBehavior.Editable = false;
            this.advBandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.advBandedGridView1.OptionsPrint.AutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.Caption = "Development Capability(%)";
            this.gridBand1.Columns.Add(this.colDevelopmentCapability);
            this.gridBand1.Columns.Add(this.colPDD);
            this.gridBand1.Columns.Add(this.colPDDDate);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 317;
            // 
            // colDevelopmentCapability
            // 
            this.colDevelopmentCapability.Caption = "DevelopmentCapability";
            this.colDevelopmentCapability.FieldName = "DevelopmentCapability";
            this.colDevelopmentCapability.Name = "colDevelopmentCapability";
            this.colDevelopmentCapability.Visible = true;
            this.colDevelopmentCapability.Width = 120;
            // 
            // colPDD
            // 
            this.colPDD.Caption = "PDD";
            this.colPDD.FieldName = "PDD";
            this.colPDD.Name = "colPDD";
            this.colPDD.Visible = true;
            this.colPDD.Width = 87;
            // 
            // colPDDDate
            // 
            this.colPDDDate.Caption = "PDDDate";
            this.colPDDDate.FieldName = "PDDDate";
            this.colPDDDate.Name = "colPDDDate";
            this.colPDDDate.Visible = true;
            this.colPDDDate.Width = 110;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.Caption = "Quality(%)";
            this.gridBand2.Columns.Add(this.colQuality);
            this.gridBand2.Columns.Add(this.colIQC);
            this.gridBand2.Columns.Add(this.colIQCDate);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 298;
            // 
            // colQuality
            // 
            this.colQuality.Caption = "Quality";
            this.colQuality.FieldName = "Quality";
            this.colQuality.Name = "colQuality";
            this.colQuality.Visible = true;
            this.colQuality.Width = 148;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.Caption = "Color(%)";
            this.gridBand3.Columns.Add(this.colColor);
            this.gridBand3.Columns.Add(this.colFabricTec);
            this.gridBand3.Columns.Add(this.colFabricTecDate);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 241;
            // 
            // colColor
            // 
            this.colColor.Caption = "Color";
            this.colColor.FieldName = "Color";
            this.colColor.Name = "colColor";
            this.colColor.Visible = true;
            this.colColor.Width = 91;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.Caption = "Shipment";
            this.gridBand4.Columns.Add(this.colShipment);
            this.gridBand4.Columns.Add(this.colPUR);
            this.gridBand4.Columns.Add(this.colPURDate);
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 225;
            // 
            // colShipment
            // 
            this.colShipment.Caption = "Shipment";
            this.colShipment.FieldName = "Shipment";
            this.colShipment.Name = "colShipment";
            this.colShipment.Visible = true;
            // 
            // colIQC
            // 
            this.colIQC.Caption = "IQC";
            this.colIQC.FieldName = "IQC";
            this.colIQC.Name = "colIQC";
            this.colIQC.Visible = true;
            // 
            // colIQCDate
            // 
            this.colIQCDate.Caption = "IQCDate";
            this.colIQCDate.FieldName = "IQCDate";
            this.colIQCDate.Name = "colIQCDate";
            this.colIQCDate.Visible = true;
            // 
            // colFabricTec
            // 
            this.colFabricTec.Caption = "FabricTec";
            this.colFabricTec.FieldName = "FabricTec";
            this.colFabricTec.Name = "colFabricTec";
            this.colFabricTec.Visible = true;
            // 
            // colFabricTecDate
            // 
            this.colFabricTecDate.Caption = "FabricTecDate";
            this.colFabricTecDate.FieldName = "FabricTecDate";
            this.colFabricTecDate.Name = "colFabricTecDate";
            this.colFabricTecDate.Visible = true;
            // 
            // colPUR
            // 
            this.colPUR.Caption = "PUR";
            this.colPUR.FieldName = "PUR";
            this.colPUR.Name = "colPUR";
            this.colPUR.Visible = true;
            // 
            // colPURDate
            // 
            this.colPURDate.Caption = "PURDate";
            this.colPURDate.FieldName = "PURDate";
            this.colPURDate.Name = "colPURDate";
            this.colPURDate.Visible = true;
            // 
            // PerformanceListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PerformanceListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView advBandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDevelopmentCapability;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQuality;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShipment;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPDD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPDDDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIQC;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIQCDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFabricTec;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFabricTecDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPUR;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPURDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
    }
}
