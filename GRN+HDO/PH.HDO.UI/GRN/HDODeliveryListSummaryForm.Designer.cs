namespace PH.HDO.UI.GRN
{
    partial class HDODeliveryListSummaryForm
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
            this.colTransitPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalGRN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalHDO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSubTotalGRN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSubTotalHDO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
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
            this.panelBottom.Location = new System.Drawing.Point(0, 638);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(507, 47);
            this.panelBottom.TabIndex = 0;
            // 
            // btnExit
            // 
            this.btnExit.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnExit.Location = new System.Drawing.Point(347, 14);
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
            this.panelClient.Size = new System.Drawing.Size(507, 638);
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
            this.gridControl1.Size = new System.Drawing.Size(507, 638);
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
            this.bandedGridView1.ColumnPanelRowHeight = 36;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colHDOStageCode,
            this.colTransitPoint,
            this.colDate,
            this.colTotalGRN,
            this.colTotalHDO,
            this.colSubTotalGRN,
            this.colSubTotalHDO});
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
            this.gridBand3});
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 474;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Basic Information";
            this.gridBand2.Columns.Add(this.colHDOStageCode);
            this.gridBand2.Columns.Add(this.colTransitPoint);
            this.gridBand2.Columns.Add(this.colDate);
            this.gridBand2.Columns.Add(this.colTotalGRN);
            this.gridBand2.Columns.Add(this.colTotalHDO);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 369;
            // 
            // colHDOStageCode
            // 
            this.colHDOStageCode.AppearanceCell.Options.UseTextOptions = true;
            this.colHDOStageCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHDOStageCode.Caption = "HDO Stage\r\nCde";
            this.colHDOStageCode.FieldName = "HDOStageCode";
            this.colHDOStageCode.Name = "colHDOStageCode";
            this.colHDOStageCode.Visible = true;
            this.colHDOStageCode.Width = 60;
            // 
            // colTransitPoint
            // 
            this.colTransitPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitPoint.Caption = "Transit\r\nPoint";
            this.colTransitPoint.FieldName = "TransitPoint";
            this.colTransitPoint.Name = "colTransitPoint";
            this.colTransitPoint.Visible = true;
            this.colTransitPoint.Width = 68;
            // 
            // colDate
            // 
            this.colDate.AppearanceCell.Options.UseTextOptions = true;
            this.colDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDate.Caption = "Date";
            this.colDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDate.FieldName = "Date";
            this.colDate.Name = "colDate";
            this.colDate.Visible = true;
            this.colDate.Width = 74;
            // 
            // colTotalGRN
            // 
            this.colTotalGRN.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalGRN.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotalGRN.Caption = "GRN\r\nRecords";
            this.colTotalGRN.FieldName = "TotalGRN";
            this.colTotalGRN.Name = "colTotalGRN";
            this.colTotalGRN.Visible = true;
            this.colTotalGRN.Width = 88;
            // 
            // colTotalHDO
            // 
            this.colTotalHDO.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalHDO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotalHDO.Caption = "HDO\r\nTtl";
            this.colTotalHDO.FieldName = "TotalHDO";
            this.colTotalHDO.Name = "colTotalHDO";
            this.colTotalHDO.Visible = true;
            this.colTotalHDO.Width = 79;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Sub-Ttl";
            this.gridBand3.Columns.Add(this.colSubTotalGRN);
            this.gridBand3.Columns.Add(this.colSubTotalHDO);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 105;
            // 
            // colSubTotalGRN
            // 
            this.colSubTotalGRN.AppearanceCell.Options.UseTextOptions = true;
            this.colSubTotalGRN.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colSubTotalGRN.Caption = "GRN";
            this.colSubTotalGRN.FieldName = "SubTotalGRN";
            this.colSubTotalGRN.Name = "colSubTotalGRN";
            this.colSubTotalGRN.Visible = true;
            this.colSubTotalGRN.Width = 53;
            // 
            // colSubTotalHDO
            // 
            this.colSubTotalHDO.AppearanceCell.Options.UseTextOptions = true;
            this.colSubTotalHDO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colSubTotalHDO.Caption = "HDO";
            this.colSubTotalHDO.FieldName = "SubTotalHDO";
            this.colSubTotalHDO.Name = "colSubTotalHDO";
            this.colSubTotalHDO.Visible = true;
            this.colSubTotalHDO.Width = 52;
            // 
            // HDODeliveryListSummaryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(507, 685);
            this.Controls.Add(this.panelClient);
            this.Controls.Add(this.panelBottom);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "HDODeliveryListSummaryForm";
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
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDOStageCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalGRN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalHDO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSubTotalGRN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSubTotalHDO;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
    }
}