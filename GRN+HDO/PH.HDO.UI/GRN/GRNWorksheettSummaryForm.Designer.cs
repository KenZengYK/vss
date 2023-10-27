namespace PH.HDO.UI.GRN
{
    partial class GRNWorksheettSummaryForm
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
            this.panelBottom = new System.Windows.Forms.Panel();
            this.btnExit = new DevExpress.XtraEditors.SimpleButton();
            this.panelClient = new System.Windows.Forms.Panel();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHDOStageCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGRN_TransitPoint_HKCCS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGRN_TransitPoint_SLCRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGRN_TransitPoint_BDCRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGRN_SubTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGRN_Total = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHDO_TransitPoint_HKCCS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHDO_TransitPoint_SLCRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHDO_TransitPoint_BDCRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHDOSubTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHDO_Total = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.panelBottom.SuspendLayout();
            this.panelClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelBottom
            // 
            this.panelBottom.Controls.Add(this.btnExit);
            this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelBottom.Location = new System.Drawing.Point(0, 650);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(708, 47);
            this.panelBottom.TabIndex = 0;
            // 
            // btnExit
            // 
            this.btnExit.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnExit.Location = new System.Drawing.Point(509, 12);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 1;
            this.btnExit.Text = "Exit";
            // 
            // panelClient
            // 
            this.panelClient.Controls.Add(this.gridControl1);
            this.panelClient.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelClient.Location = new System.Drawing.Point(0, 0);
            this.panelClient.Name = "panelClient";
            this.panelClient.Size = new System.Drawing.Size(708, 650);
            this.panelClient.TabIndex = 1;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(708, 650);
            this.gridControl1.TabIndex = 1;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bindingSource
            // 
            this.bindingSource.DataSource = typeof(PH.HDO.UI.GRN.GRNWorksheetSummary);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1});
            this.bandedGridView1.ColumnPanelRowHeight = 50;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colHDOStageCode,
            this.colDate,
            this.colGRN_TransitPoint_HKCCS,
            this.colGRN_TransitPoint_SLCRS,
            this.colGRN_TransitPoint_BDCRS,
            this.colGRN_SubTotal,
            this.colGRN_Total,
            this.colHDO_TransitPoint_HKCCS,
            this.colHDO_TransitPoint_SLCRS,
            this.colHDO_TransitPoint_BDCRS,
            this.colHDOSubTotal,
            this.colHDO_Total});
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsView.AllowCellMerge = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.bandedGridView1_CellMerge);
            this.bandedGridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.bandedGridView1_CustomDrawCell);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "GRN Worksheet Summary";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand8});
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 687;
            // 
            // gridBand2
            // 
            this.gridBand2.Columns.Add(this.colHDOStageCode);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 72;
            // 
            // colHDOStageCode
            // 
            this.colHDOStageCode.AppearanceCell.Options.UseTextOptions = true;
            this.colHDOStageCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHDOStageCode.Caption = "HDO Status\r\nCde";
            this.colHDOStageCode.FieldName = "HDOStageCode";
            this.colHDOStageCode.Name = "colHDOStageCode";
            this.colHDOStageCode.Visible = true;
            this.colHDOStageCode.Width = 72;
            // 
            // gridBand3
            // 
            this.gridBand3.Columns.Add(this.colDate);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 83;
            // 
            // colDate
            // 
            this.colDate.Caption = "Date";
            this.colDate.FieldName = "Date";
            this.colDate.Name = "colDate";
            this.colDate.Visible = true;
            this.colDate.Width = 83;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "GRN Ttl";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand6,
            this.gridBand7});
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 265;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Transit Point";
            this.gridBand5.Columns.Add(this.colGRN_TransitPoint_HKCCS);
            this.gridBand5.Columns.Add(this.colGRN_TransitPoint_SLCRS);
            this.gridBand5.Columns.Add(this.colGRN_TransitPoint_BDCRS);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 168;
            // 
            // colGRN_TransitPoint_HKCCS
            // 
            this.colGRN_TransitPoint_HKCCS.AppearanceCell.Options.UseTextOptions = true;
            this.colGRN_TransitPoint_HKCCS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGRN_TransitPoint_HKCCS.Caption = "HKCCS";
            this.colGRN_TransitPoint_HKCCS.FieldName = "GRN_TransitPoint_HKCCS";
            this.colGRN_TransitPoint_HKCCS.Name = "colGRN_TransitPoint_HKCCS";
            this.colGRN_TransitPoint_HKCCS.Visible = true;
            this.colGRN_TransitPoint_HKCCS.Width = 56;
            // 
            // colGRN_TransitPoint_SLCRS
            // 
            this.colGRN_TransitPoint_SLCRS.AppearanceCell.Options.UseTextOptions = true;
            this.colGRN_TransitPoint_SLCRS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGRN_TransitPoint_SLCRS.Caption = "SLCRS";
            this.colGRN_TransitPoint_SLCRS.FieldName = "GRN_TransitPoint_SLCRS";
            this.colGRN_TransitPoint_SLCRS.Name = "colGRN_TransitPoint_SLCRS";
            this.colGRN_TransitPoint_SLCRS.Visible = true;
            this.colGRN_TransitPoint_SLCRS.Width = 54;
            // 
            // colGRN_TransitPoint_BDCRS
            // 
            this.colGRN_TransitPoint_BDCRS.AppearanceCell.Options.UseTextOptions = true;
            this.colGRN_TransitPoint_BDCRS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGRN_TransitPoint_BDCRS.Caption = "BDCRS";
            this.colGRN_TransitPoint_BDCRS.FieldName = "GRN_TransitPoint_BDCRS";
            this.colGRN_TransitPoint_BDCRS.Name = "colGRN_TransitPoint_BDCRS";
            this.colGRN_TransitPoint_BDCRS.Visible = true;
            this.colGRN_TransitPoint_BDCRS.Width = 58;
            // 
            // gridBand6
            // 
            this.gridBand6.Columns.Add(this.colGRN_SubTotal);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 48;
            // 
            // colGRN_SubTotal
            // 
            this.colGRN_SubTotal.AppearanceCell.Options.UseTextOptions = true;
            this.colGRN_SubTotal.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGRN_SubTotal.Caption = "Sub-\r\nTtl";
            this.colGRN_SubTotal.FieldName = "GRN_SubTotal";
            this.colGRN_SubTotal.Name = "colGRN_SubTotal";
            this.colGRN_SubTotal.Visible = true;
            this.colGRN_SubTotal.Width = 48;
            // 
            // gridBand7
            // 
            this.gridBand7.Columns.Add(this.colGRN_Total);
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 49;
            // 
            // colGRN_Total
            // 
            this.colGRN_Total.AppearanceCell.Options.UseTextOptions = true;
            this.colGRN_Total.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGRN_Total.Caption = "Ttl";
            this.colGRN_Total.FieldName = "GRN_Total";
            this.colGRN_Total.Name = "colGRN_Total";
            this.colGRN_Total.Visible = true;
            this.colGRN_Total.Width = 49;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "HDO Ttl";
            this.gridBand8.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand9,
            this.gridBand10,
            this.gridBand11});
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 267;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Transit Point";
            this.gridBand9.Columns.Add(this.colHDO_TransitPoint_HKCCS);
            this.gridBand9.Columns.Add(this.colHDO_TransitPoint_SLCRS);
            this.gridBand9.Columns.Add(this.colHDO_TransitPoint_BDCRS);
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Width = 169;
            // 
            // colHDO_TransitPoint_HKCCS
            // 
            this.colHDO_TransitPoint_HKCCS.AppearanceCell.Options.UseTextOptions = true;
            this.colHDO_TransitPoint_HKCCS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colHDO_TransitPoint_HKCCS.Caption = "HKCCS";
            this.colHDO_TransitPoint_HKCCS.FieldName = "HDO_TransitPoint_HKCCS";
            this.colHDO_TransitPoint_HKCCS.Name = "colHDO_TransitPoint_HKCCS";
            this.colHDO_TransitPoint_HKCCS.Visible = true;
            this.colHDO_TransitPoint_HKCCS.Width = 56;
            // 
            // colHDO_TransitPoint_SLCRS
            // 
            this.colHDO_TransitPoint_SLCRS.AppearanceCell.Options.UseTextOptions = true;
            this.colHDO_TransitPoint_SLCRS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colHDO_TransitPoint_SLCRS.Caption = "SLCRS";
            this.colHDO_TransitPoint_SLCRS.FieldName = "HDO_TransitPoint_SLCRS";
            this.colHDO_TransitPoint_SLCRS.Name = "colHDO_TransitPoint_SLCRS";
            this.colHDO_TransitPoint_SLCRS.Visible = true;
            this.colHDO_TransitPoint_SLCRS.Width = 54;
            // 
            // colHDO_TransitPoint_BDCRS
            // 
            this.colHDO_TransitPoint_BDCRS.AppearanceCell.Options.UseTextOptions = true;
            this.colHDO_TransitPoint_BDCRS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colHDO_TransitPoint_BDCRS.Caption = "BDCRS";
            this.colHDO_TransitPoint_BDCRS.FieldName = "HDO_TransitPoint_BDCRS";
            this.colHDO_TransitPoint_BDCRS.Name = "colHDO_TransitPoint_BDCRS";
            this.colHDO_TransitPoint_BDCRS.Visible = true;
            this.colHDO_TransitPoint_BDCRS.Width = 59;
            // 
            // gridBand10
            // 
            this.gridBand10.Columns.Add(this.colHDOSubTotal);
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Width = 49;
            // 
            // colHDOSubTotal
            // 
            this.colHDOSubTotal.AppearanceCell.Options.UseTextOptions = true;
            this.colHDOSubTotal.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colHDOSubTotal.Caption = "Sub-\r\nTtl";
            this.colHDOSubTotal.FieldName = "HDO_SubTotal";
            this.colHDOSubTotal.Name = "colHDOSubTotal";
            this.colHDOSubTotal.Visible = true;
            this.colHDOSubTotal.Width = 49;
            // 
            // gridBand11
            // 
            this.gridBand11.Columns.Add(this.colHDO_Total);
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Width = 49;
            // 
            // colHDO_Total
            // 
            this.colHDO_Total.AppearanceCell.Options.UseTextOptions = true;
            this.colHDO_Total.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colHDO_Total.Caption = "Ttl";
            this.colHDO_Total.FieldName = "HDO_Total";
            this.colHDO_Total.Name = "colHDO_Total";
            this.colHDO_Total.Visible = true;
            this.colHDO_Total.Width = 49;
            // 
            // GRNWorksheettSummaryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(708, 697);
            this.Controls.Add(this.panelClient);
            this.Controls.Add(this.panelBottom);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "GRNWorksheettSummaryForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.panelBottom.ResumeLayout(false);
            this.panelClient.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelBottom;
        private System.Windows.Forms.Panel panelClient;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraEditors.SimpleButton btnExit;
        private System.Windows.Forms.BindingSource bindingSource;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDOStageCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRN_TransitPoint_HKCCS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRN_TransitPoint_SLCRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRN_TransitPoint_BDCRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRN_SubTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRN_Total;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDO_TransitPoint_HKCCS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDO_TransitPoint_SLCRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDO_TransitPoint_BDCRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDOSubTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDO_Total;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
    }
}