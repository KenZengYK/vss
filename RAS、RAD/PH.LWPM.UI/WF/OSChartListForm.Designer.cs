namespace PH.LWPM.UI.WF
{
    partial class OSChartListForm
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
            this.colID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUploader = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUploadTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFileName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnOSChart = new DevExpress.XtraBars.BarButtonItem();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.barBtnOSChart});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnOSChart, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1108, 384);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colID,
            this.colUploader,
            this.colUploadTime,
            this.colFileName,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.OSChart);
            // 
            // colID
            // 
            this.colID.Caption = "ID";
            this.colID.FieldName = "ID";
            this.colID.Name = "colID";
            // 
            // colUploader
            // 
            this.colUploader.Caption = "Uploader";
            this.colUploader.FieldName = "Uploader";
            this.colUploader.Name = "colUploader";
            this.colUploader.Visible = true;
            this.colUploader.VisibleIndex = 0;
            this.colUploader.Width = 84;
            // 
            // colUploadTime
            // 
            this.colUploadTime.Caption = "Upload Time";
            this.colUploadTime.FieldName = "UploadTime";
            this.colUploadTime.Name = "colUploadTime";
            this.colUploadTime.Visible = true;
            this.colUploadTime.VisibleIndex = 1;
            this.colUploadTime.Width = 125;
            // 
            // colFileName
            // 
            this.colFileName.Caption = "File Name";
            this.colFileName.FieldName = "FileName";
            this.colFileName.Name = "colFileName";
            this.colFileName.Visible = true;
            this.colFileName.VisibleIndex = 2;
            this.colFileName.Width = 227;
            // 
            // barBtnOSChart
            // 
            this.barBtnOSChart.Caption = "Review";
            this.barBtnOSChart.Id = 60;
            this.barBtnOSChart.Name = "barBtnOSChart";
            this.barBtnOSChart.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnOSChart_ItemClick);
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 3;
            this.colRemark.Width = 360;
            // 
            // OSChartListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "OSChartListForm";
            this.Size = new System.Drawing.Size(1108, 411);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colID;
        private DevExpress.XtraGrid.Columns.GridColumn colUploader;
        private DevExpress.XtraGrid.Columns.GridColumn colUploadTime;
        private DevExpress.XtraGrid.Columns.GridColumn colFileName;
        private DevExpress.XtraBars.BarButtonItem barBtnOSChart;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;


    }
}
