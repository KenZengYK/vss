namespace PH.FabricInspection.UI.MasterDB
{
    partial class S21QCResultActionListForm
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
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colS21QCResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colS21QCAction = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDesc_EN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDesc_CN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
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
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1307, 532);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.S21QCResultAction);
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
            this.gridBand2,
            this.gridBand1});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colSeqNo,
            this.colS21QCResult,
            this.colS21QCAction,
            this.colDesc_EN,
            this.colDesc_CN});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.RowAutoHeight = true;
            // 
            // gridBand2
            // 
            this.gridBand2.Columns.Add(this.colSeqNo);
            this.gridBand2.Columns.Add(this.colS21QCResult);
            this.gridBand2.Columns.Add(this.colS21QCAction);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 237;
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Seq#";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.Width = 52;
            // 
            // colS21QCResult
            // 
            this.colS21QCResult.Caption = "S21 QC\r\nResult";
            this.colS21QCResult.FieldName = "S21QCResult";
            this.colS21QCResult.Name = "colS21QCResult";
            this.colS21QCResult.Visible = true;
            this.colS21QCResult.Width = 63;
            // 
            // colS21QCAction
            // 
            this.colS21QCAction.Caption = "S21 QC Action\r\n(who execute it?)";
            this.colS21QCAction.FieldName = "S21QCAction";
            this.colS21QCAction.Name = "colS21QCAction";
            this.colS21QCAction.Visible = true;
            this.colS21QCAction.Width = 122;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Cde Explanation";
            this.gridBand1.Columns.Add(this.colDesc_EN);
            this.gridBand1.Columns.Add(this.colDesc_CN);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 904;
            // 
            // colDesc_EN
            // 
            this.colDesc_EN.Caption = "EN";
            this.colDesc_EN.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colDesc_EN.FieldName = "Desc_EN";
            this.colDesc_EN.Name = "colDesc_EN";
            this.colDesc_EN.Visible = true;
            this.colDesc_EN.Width = 478;
            // 
            // colDesc_CN
            // 
            this.colDesc_CN.Caption = "CN";
            this.colDesc_CN.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colDesc_CN.FieldName = "Desc_CN";
            this.colDesc_CN.Name = "colDesc_CN";
            this.colDesc_CN.Visible = true;
            this.colDesc_CN.Width = 426;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // S21QCResultActionListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "S21QCResultActionListForm";
            this.Size = new System.Drawing.Size(1307, 559);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colS21QCResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colS21QCAction;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDesc_EN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDesc_CN;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;

    }
}
