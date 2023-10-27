namespace PH.MobileQC.UI
{
    partial class StyleLineQCStatByWorkshopListForm
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
            this.cardView1 = new DevExpress.XtraGrid.Views.Card.CardView();
            this.BtnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colGXDH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGXM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkerID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkerName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cardView2 = new DevExpress.XtraGrid.Views.Card.CardView();
            this.colLastQC_Time = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFAE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGXH = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardView2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.BtnPrint});
            this.objbarManager.MaxItemId = 40;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.BtnPrint)});
            // 
            // barBtnFind
            // 
            this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.StyleLineQCStatByWorkshopResult);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1140, 478);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.cardView1,
            this.cardView2});
            this.objListGridControl.Click += new System.EventHandler(this.objListGridControl_Click);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFAE,
            this.colGXH,
            this.colLine,
            this.colStyle,
            this.colGXDH,
            this.colGXM,
            this.colWorkerID,
            this.colWorkerName,
            this.colLastQC_Time,
            this.colStatus});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            // 
            // cardView1
            // 
            this.cardView1.FocusedCardTopFieldIndex = 0;
            this.cardView1.GridControl = this.objListGridControl;
            this.cardView1.Name = "cardView1";
            // 
            // BtnPrint
            // 
            this.BtnPrint.Caption = "Print";
            this.BtnPrint.Id = 39;
            this.BtnPrint.Name = "BtnPrint";
            this.BtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.BtnPrint_ItemClick);
            // 
            // colGXDH
            // 
            this.colGXDH.Caption = "OPN Code";
            this.colGXDH.FieldName = "GXDH";
            this.colGXDH.Name = "colGXDH";
            this.colGXDH.Visible = true;
            this.colGXDH.VisibleIndex = 4;
            this.colGXDH.Width = 120;
            // 
            // colGXM
            // 
            this.colGXM.Caption = "OPN Name";
            this.colGXM.FieldName = "GXM";
            this.colGXM.Name = "colGXM";
            this.colGXM.Visible = true;
            this.colGXM.VisibleIndex = 5;
            this.colGXM.Width = 218;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "Quality Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 9;
            this.colStatus.Width = 181;
            // 
            // colWorkerID
            // 
            this.colWorkerID.Caption = "WFID";
            this.colWorkerID.FieldName = "WorkerID";
            this.colWorkerID.Name = "colWorkerID";
            this.colWorkerID.Visible = true;
            this.colWorkerID.VisibleIndex = 6;
            // 
            // colWorkerName
            // 
            this.colWorkerName.Caption = "WF Name";
            this.colWorkerName.FieldName = "WorkerName";
            this.colWorkerName.Name = "colWorkerName";
            this.colWorkerName.Visible = true;
            this.colWorkerName.VisibleIndex = 7;
            this.colWorkerName.Width = 100;
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 2;
            // 
            // colStyle
            // 
            this.colStyle.Caption = "Style";
            this.colStyle.FieldName = "Style";
            this.colStyle.Name = "colStyle";
            this.colStyle.Visible = true;
            this.colStyle.VisibleIndex = 3;
            // 
            // cardView2
            // 
            this.cardView2.FocusedCardTopFieldIndex = 0;
            this.cardView2.GridControl = this.objListGridControl;
            this.cardView2.Name = "cardView2";
            // 
            // colLastQC_Time
            // 
            this.colLastQC_Time.Caption = "Last Audit Time";
            this.colLastQC_Time.FieldName = "LastQC_Time_Disp";
            this.colLastQC_Time.Name = "colLastQC_Time";
            this.colLastQC_Time.Visible = true;
            this.colLastQC_Time.VisibleIndex = 8;
            this.colLastQC_Time.Width = 193;
            // 
            // colFAE
            // 
            this.colFAE.Caption = "FAE";
            this.colFAE.FieldName = "FAE";
            this.colFAE.Name = "colFAE";
            this.colFAE.Visible = true;
            this.colFAE.VisibleIndex = 0;
            this.colFAE.Width = 41;
            // 
            // colGXH
            // 
            this.colGXH.Caption = "GXH";
            this.colGXH.FieldName = "GXH";
            this.colGXH.Name = "colGXH";
            this.colGXH.Visible = true;
            this.colGXH.VisibleIndex = 1;
            this.colGXH.Width = 61;
            // 
            // StyleLineQCStatByWorkshopListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleLineQCStatByWorkshopListForm";
            this.Size = new System.Drawing.Size(1140, 505);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem BtnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colGXDH;
        private DevExpress.XtraGrid.Columns.GridColumn colGXM;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkerID;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkerName;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colStyle;
        private DevExpress.XtraGrid.Views.Card.CardView cardView1;
        private DevExpress.XtraGrid.Views.Card.CardView cardView2;
        private DevExpress.XtraGrid.Columns.GridColumn colLastQC_Time;
        private DevExpress.XtraGrid.Columns.GridColumn colFAE;
        private DevExpress.XtraGrid.Columns.GridColumn colGXH;
    }
}
