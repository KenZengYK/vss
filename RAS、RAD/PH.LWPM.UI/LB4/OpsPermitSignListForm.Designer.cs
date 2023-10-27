namespace PH.LWPM.UI.LB4
{
    partial class OpsPermitSignListForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colInlineInspector = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndlineInspector = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.QA_P = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.QA_F = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMobileAuditor_P = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMobileAuditor_F = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Me_P = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Me_F = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Line_P = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Line_B = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Line_AL = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Line_E = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Suor_P = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Suor_F = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Sudent_P = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Sudent_F = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Margin = new System.Windows.Forms.Padding(1);
            this.objListGridControl.Size = new System.Drawing.Size(1397, 475);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.OpsPermitSign);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3,
            this.gridBand9,
            this.gridBand4,
            this.gridBand8,
            this.gridBand5,
            this.gridBand6,
            this.gridBand1,
            this.gridBand7});
            this.bandedGridView1.ColumnPanelRowHeight = 45;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colFactory,
            this.colLine,
            this.QA_P,
            this.QA_F,
            this.Me_P,
            this.Me_F,
            this.Line_P,
            this.Line_B,
            this.Line_AL,
            this.Line_E,
            this.Suor_P,
            this.Suor_F,
            this.Sudent_P,
            this.Sudent_F,
            this.colMobileAuditor_P,
            this.colMobileAuditor_F,
            this.colInlineInspector,
            this.colEndlineInspector});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1205, 375, 225, 386);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            // 
            // gridBand2
            // 
            this.gridBand2.Columns.Add(this.colFactory);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 60;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceHeader.Options.UseTextOptions = true;
            this.colFactory.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colFactory.Visible = true;
            this.colFactory.Width = 60;
            // 
            // gridBand3
            // 
            this.gridBand3.Columns.Add(this.colLine);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 48;
            // 
            // colLine
            // 
            this.colLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colLine.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colLine.Visible = true;
            this.colLine.Width = 48;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Inspector";
            this.gridBand9.Columns.Add(this.colInlineInspector);
            this.gridBand9.Columns.Add(this.colEndlineInspector);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Width = 192;
            // 
            // colInlineInspector
            // 
            this.colInlineInspector.Caption = "In line";
            this.colInlineInspector.FieldName = "InlineInspector";
            this.colInlineInspector.Name = "colInlineInspector";
            this.colInlineInspector.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colInlineInspector.Visible = true;
            this.colInlineInspector.Width = 101;
            // 
            // colEndlineInspector
            // 
            this.colEndlineInspector.Caption = "End line";
            this.colEndlineInspector.FieldName = "EndlineInspector";
            this.colEndlineInspector.Name = "colEndlineInspector";
            this.colEndlineInspector.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colEndlineInspector.Visible = true;
            this.colEndlineInspector.Width = 91;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.Caption = "Qual Auditor";
            this.gridBand4.Columns.Add(this.QA_P);
            this.gridBand4.Columns.Add(this.QA_F);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 195;
            // 
            // QA_P
            // 
            this.QA_P.AppearanceHeader.Options.UseTextOptions = true;
            this.QA_P.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QA_P.Caption = "(PM / Bonding)";
            this.QA_P.FieldName = "QualAuditor_P";
            this.QA_P.Name = "QA_P";
            this.QA_P.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.QA_P.Visible = true;
            this.QA_P.Width = 106;
            // 
            // QA_F
            // 
            this.QA_F.AppearanceHeader.Options.UseTextOptions = true;
            this.QA_F.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.QA_F.Caption = "(AL / E)";
            this.QA_F.FieldName = "QualAuditor_F";
            this.QA_F.Name = "QA_F";
            this.QA_F.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.QA_F.Visible = true;
            this.QA_F.Width = 89;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "Mobile Auditor";
            this.gridBand8.Columns.Add(this.colMobileAuditor_P);
            this.gridBand8.Columns.Add(this.colMobileAuditor_F);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 190;
            // 
            // colMobileAuditor_P
            // 
            this.colMobileAuditor_P.Caption = "(PM / Bonding)";
            this.colMobileAuditor_P.FieldName = "MobileAuditor_P";
            this.colMobileAuditor_P.Name = "colMobileAuditor_P";
            this.colMobileAuditor_P.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMobileAuditor_P.Visible = true;
            this.colMobileAuditor_P.Width = 105;
            // 
            // colMobileAuditor_F
            // 
            this.colMobileAuditor_F.Caption = "(AL / E)";
            this.colMobileAuditor_F.FieldName = "MobileAuditor_F";
            this.colMobileAuditor_F.Name = "colMobileAuditor_F";
            this.colMobileAuditor_F.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMobileAuditor_F.Visible = true;
            this.colMobileAuditor_F.Width = 85;
            // 
            // gridBand5
            // 
            this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand5.Caption = "Mechanic";
            this.gridBand5.Columns.Add(this.Me_P);
            this.gridBand5.Columns.Add(this.Me_F);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 195;
            // 
            // Me_P
            // 
            this.Me_P.AppearanceHeader.Options.UseTextOptions = true;
            this.Me_P.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Me_P.Caption = "(PM / Bonding)";
            this.Me_P.FieldName = "Mechanic_P";
            this.Me_P.Name = "Me_P";
            this.Me_P.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Me_P.Visible = true;
            this.Me_P.Width = 106;
            // 
            // Me_F
            // 
            this.Me_F.AppearanceHeader.Options.UseTextOptions = true;
            this.Me_F.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Me_F.Caption = "(AL / E)";
            this.Me_F.FieldName = "Mechanic_F";
            this.Me_F.Name = "Me_F";
            this.Me_F.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Me_F.Visible = true;
            this.Me_F.Width = 89;
            // 
            // gridBand6
            // 
            this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand6.Caption = "Line Leader";
            this.gridBand6.Columns.Add(this.Line_P);
            this.gridBand6.Columns.Add(this.Line_B);
            this.gridBand6.Columns.Add(this.Line_AL);
            this.gridBand6.Columns.Add(this.Line_E);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 296;
            // 
            // Line_P
            // 
            this.Line_P.AppearanceHeader.Options.UseTextOptions = true;
            this.Line_P.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Line_P.Caption = "(PM)";
            this.Line_P.FieldName = "LineLeader_P";
            this.Line_P.Name = "Line_P";
            this.Line_P.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Line_P.Visible = true;
            this.Line_P.Width = 74;
            // 
            // Line_B
            // 
            this.Line_B.AppearanceHeader.Options.UseTextOptions = true;
            this.Line_B.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Line_B.Caption = "(Bonding)";
            this.Line_B.FieldName = "LineLeader_B";
            this.Line_B.Name = "Line_B";
            this.Line_B.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Line_B.Visible = true;
            this.Line_B.Width = 74;
            // 
            // Line_AL
            // 
            this.Line_AL.AppearanceHeader.Options.UseTextOptions = true;
            this.Line_AL.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Line_AL.Caption = "(AL)";
            this.Line_AL.FieldName = "LineLeader_A";
            this.Line_AL.Name = "Line_AL";
            this.Line_AL.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Line_AL.Visible = true;
            this.Line_AL.Width = 74;
            // 
            // Line_E
            // 
            this.Line_E.AppearanceHeader.Options.UseTextOptions = true;
            this.Line_E.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Line_E.Caption = "(E)";
            this.Line_E.FieldName = "LineLeader_E";
            this.Line_E.Name = "Line_E";
            this.Line_E.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Line_E.Visible = true;
            this.Line_E.Width = 74;
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.Caption = "Supervisor";
            this.gridBand1.Columns.Add(this.Suor_P);
            this.gridBand1.Columns.Add(this.Suor_F);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 195;
            // 
            // Suor_P
            // 
            this.Suor_P.AppearanceHeader.Options.UseTextOptions = true;
            this.Suor_P.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Suor_P.Caption = "(PM / Bonding)";
            this.Suor_P.FieldName = "Supervisor_P";
            this.Suor_P.Name = "Suor_P";
            this.Suor_P.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Suor_P.Visible = true;
            this.Suor_P.Width = 106;
            // 
            // Suor_F
            // 
            this.Suor_F.AppearanceHeader.Options.UseTextOptions = true;
            this.Suor_F.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Suor_F.Caption = "(AL / E)";
            this.Suor_F.FieldName = "Supervisor_F";
            this.Suor_F.Name = "Suor_F";
            this.Suor_F.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Suor_F.Visible = true;
            this.Suor_F.Width = 89;
            // 
            // gridBand7
            // 
            this.gridBand7.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand7.Caption = "Technical Supervisor / Superintendent";
            this.gridBand7.Columns.Add(this.Sudent_P);
            this.gridBand7.Columns.Add(this.Sudent_F);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 233;
            // 
            // Sudent_P
            // 
            this.Sudent_P.AppearanceHeader.Options.UseTextOptions = true;
            this.Sudent_P.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Sudent_P.Caption = "(PM / Bonding)";
            this.Sudent_P.FieldName = "Superintendent_P";
            this.Sudent_P.Name = "Sudent_P";
            this.Sudent_P.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Sudent_P.Visible = true;
            this.Sudent_P.Width = 133;
            // 
            // Sudent_F
            // 
            this.Sudent_F.AppearanceHeader.Options.UseTextOptions = true;
            this.Sudent_F.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Sudent_F.Caption = "(AL / E)";
            this.Sudent_F.FieldName = "Superintendent_F";
            this.Sudent_F.Name = "Sudent_F";
            this.Sudent_F.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Sudent_F.Visible = true;
            this.Sudent_F.Width = 100;
            // 
            // OpsPermitSignListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "OpsPermitSignListForm";
            this.Size = new System.Drawing.Size(1397, 502);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn QA_P;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn QA_F;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Me_P;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Me_F;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Line_P;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Line_B;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Line_AL;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Line_E;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Suor_P;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Sudent_P;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Suor_F;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Sudent_F;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMobileAuditor_P;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMobileAuditor_F;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInlineInspector;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndlineInspector;

    }
}
