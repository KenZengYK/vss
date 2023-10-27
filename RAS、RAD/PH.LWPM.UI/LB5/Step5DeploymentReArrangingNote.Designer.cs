namespace PH.LWPM.UI.LB5
{
    partial class Step5DeploymentReArrangingNote
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
            this.bsProcessedStage = new System.Windows.Forms.BindingSource(this.components);
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colExtraField1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNameEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.bsRearrangingType = new System.Windows.Forms.BindingSource(this.components);
            this.bandedGridView2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colName1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colExtraField11 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNameEN1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsProcessedStage)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsRearrangingType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsProcessedStage;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(12, 12);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(458, 333);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bsProcessedStage
            // 
            this.bsProcessedStage.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.Row.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1});
            this.bandedGridView1.ColumnPanelRowHeight = 40;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colName,
            this.colExtraField1,
            this.colNameEN});
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsView.ShowDetailButtons = false;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Re-arrangement processed stage:- 重整階段";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3});
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 437;
            // 
            // gridBand2
            // 
            this.gridBand2.Columns.Add(this.colName);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 51;
            // 
            // colName
            // 
            this.colName.Caption = "Code\r\n編號";
            this.colName.FieldName = "Name";
            this.colName.Name = "colName";
            this.colName.Visible = true;
            this.colName.Width = 51;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Desc 描述";
            this.gridBand3.Columns.Add(this.colExtraField1);
            this.gridBand3.Columns.Add(this.colNameEN);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 386;
            // 
            // colExtraField1
            // 
            this.colExtraField1.Caption = "Chinese\r\n中文";
            this.colExtraField1.FieldName = "ExtraField1";
            this.colExtraField1.Name = "colExtraField1";
            this.colExtraField1.Visible = true;
            this.colExtraField1.Width = 120;
            // 
            // colNameEN
            // 
            this.colNameEN.Caption = "English\r\n英文";
            this.colNameEN.FieldName = "NameEN";
            this.colNameEN.Name = "colNameEN";
            this.colNameEN.Visible = true;
            this.colNameEN.Width = 266;
            // 
            // gridControl2
            // 
            this.gridControl2.DataSource = this.bsRearrangingType;
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(476, 13);
            this.gridControl2.MainView = this.bandedGridView2;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(456, 332);
            this.gridControl2.TabIndex = 1;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView2});
            // 
            // bsRearrangingType
            // 
            this.bsRearrangingType.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // bandedGridView2
            // 
            this.bandedGridView2.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView2.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView2.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView2.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView2.Appearance.Row.Options.UseTextOptions = true;
            this.bandedGridView2.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView2.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand4});
            this.bandedGridView2.ColumnPanelRowHeight = 40;
            this.bandedGridView2.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colName1,
            this.colExtraField11,
            this.colNameEN1});
            this.bandedGridView2.GridControl = this.gridControl2;
            this.bandedGridView2.Name = "bandedGridView2";
            this.bandedGridView2.OptionsBehavior.Editable = false;
            this.bandedGridView2.OptionsView.ShowDetailButtons = false;
            this.bandedGridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Re-arrangement type:- 重整種類";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand6});
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 415;
            // 
            // gridBand5
            // 
            this.gridBand5.Columns.Add(this.colName1);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 76;
            // 
            // colName1
            // 
            this.colName1.Caption = "Type\r\n種類";
            this.colName1.FieldName = "Name";
            this.colName1.Name = "colName1";
            this.colName1.Visible = true;
            this.colName1.Width = 76;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Desc 描述";
            this.gridBand6.Columns.Add(this.colExtraField11);
            this.gridBand6.Columns.Add(this.colNameEN1);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 339;
            // 
            // colExtraField11
            // 
            this.colExtraField11.Caption = "Chinese\r\n中文";
            this.colExtraField11.FieldName = "ExtraField1";
            this.colExtraField11.Name = "colExtraField11";
            this.colExtraField11.Visible = true;
            this.colExtraField11.Width = 129;
            // 
            // colNameEN1
            // 
            this.colNameEN1.Caption = "English\r\n英文";
            this.colNameEN1.FieldName = "NameEN";
            this.colNameEN1.Name = "colNameEN1";
            this.colNameEN1.Visible = true;
            this.colNameEN1.Width = 210;
            // 
            // Step5DeploymentReArrangingNote
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(944, 357);
            this.Controls.Add(this.gridControl2);
            this.Controls.Add(this.gridControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Step5DeploymentReArrangingNote";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Step5 deployment re-arranging notes";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsProcessedStage)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsRearrangingType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private System.Windows.Forms.BindingSource bsProcessedStage;
        private System.Windows.Forms.BindingSource bsRearrangingType;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colName;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colExtraField1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNameEN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colName1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colExtraField11;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNameEN1;
    }
}