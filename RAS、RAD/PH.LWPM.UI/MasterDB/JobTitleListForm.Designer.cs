namespace PH.LWPM.UI.MasterDB
{
    partial class JobTitleListForm
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
            this.gcGradingSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGradeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.edtGrade = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTitleTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTitleTypeEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTitleTypeCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTitleTypeBd = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcJobTitleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcJobTitleEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcJobTitleCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcJobTitleBd = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWageCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDepartals = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSewingDirect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProductionIndirect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcNonProduction = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSalesSupportive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcIsStaffShowText = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox_IsStaff = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colIsStaff = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtGrade)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IsStaff)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.edtGrade,
            this.repositoryItemComboBox_IsStaff});
            this.objListGridControl.Size = new System.Drawing.Size(1443, 469);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 50;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcGradingSeq,
            this.gcGradeCode,
            this.gcSeqNo,
            this.gcTitleTypeCode,
            this.gcTitleTypeEn,
            this.gcTitleTypeCn,
            this.gcTitleTypeBd,
            this.gcJobTitleCode,
            this.gcJobTitleEn,
            this.gcJobTitleCn,
            this.gcJobTitleBd,
            this.gcWageCode,
            this.gcDepartals,
            this.gcIsStaffShowText,
            this.gcSewingDirect,
            this.gcProductionIndirect,
            this.gcNonProduction,
            this.gcSalesSupportive,
            this.colIsStaff});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceOddRow = true;
            this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.objListGridView.OptionsView.RowAutoHeight = true;
            this.objListGridView.OptionsView.ShowDetailButtons = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcGradingSeq, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcSeqNo, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcTitleTypeCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcJobTitleCode, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Master_data_For_Job_Title);
            // 
            // gcGradingSeq
            // 
            this.gcGradingSeq.Caption = "Grading\r\nSeq";
            this.gcGradingSeq.FieldName = "GradeSeq";
            this.gcGradingSeq.Name = "gcGradingSeq";
            this.gcGradingSeq.OptionsColumn.AllowEdit = false;
            this.gcGradingSeq.Visible = true;
            this.gcGradingSeq.VisibleIndex = 0;
            this.gcGradingSeq.Width = 73;
            // 
            // gcGradeCode
            // 
            this.gcGradeCode.Caption = "Grade\r\nCode";
            this.gcGradeCode.ColumnEdit = this.edtGrade;
            this.gcGradeCode.FieldName = "GradeCode";
            this.gcGradeCode.Name = "gcGradeCode";
            this.gcGradeCode.Visible = true;
            this.gcGradeCode.VisibleIndex = 1;
            this.gcGradeCode.Width = 55;
            // 
            // edtGrade
            // 
            this.edtGrade.AutoHeight = false;
            this.edtGrade.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtGrade.Name = "edtGrade";
            this.edtGrade.View = this.repositoryItemGridLookUpEdit1View;
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // gcSeqNo
            // 
            this.gcSeqNo.Caption = "Seq\r\nNo.";
            this.gcSeqNo.FieldName = "SeqNo";
            this.gcSeqNo.Name = "gcSeqNo";
            this.gcSeqNo.Visible = true;
            this.gcSeqNo.VisibleIndex = 2;
            this.gcSeqNo.Width = 53;
            // 
            // gcTitleTypeCode
            // 
            this.gcTitleTypeCode.Caption = "Job\r\nGroup\r\nCode";
            this.gcTitleTypeCode.FieldName = "Code";
            this.gcTitleTypeCode.Name = "gcTitleTypeCode";
            this.gcTitleTypeCode.Visible = true;
            this.gcTitleTypeCode.VisibleIndex = 3;
            this.gcTitleTypeCode.Width = 68;
            // 
            // gcTitleTypeEn
            // 
            this.gcTitleTypeEn.Caption = "Job Group";
            this.gcTitleTypeEn.FieldName = "TitleTypeEn";
            this.gcTitleTypeEn.Name = "gcTitleTypeEn";
            this.gcTitleTypeEn.Visible = true;
            this.gcTitleTypeEn.VisibleIndex = 4;
            this.gcTitleTypeEn.Width = 171;
            // 
            // gcTitleTypeCn
            // 
            this.gcTitleTypeCn.Caption = "Job Group (CN)";
            this.gcTitleTypeCn.FieldName = "TitleTypeCn";
            this.gcTitleTypeCn.Name = "gcTitleTypeCn";
            this.gcTitleTypeCn.Visible = true;
            this.gcTitleTypeCn.VisibleIndex = 5;
            this.gcTitleTypeCn.Width = 119;
            // 
            // gcTitleTypeBd
            // 
            this.gcTitleTypeBd.Caption = "Job Group (Bd)";
            this.gcTitleTypeBd.Name = "gcTitleTypeBd";
            this.gcTitleTypeBd.Width = 87;
            // 
            // gcJobTitleCode
            // 
            this.gcJobTitleCode.Caption = "Job\r\nTitle\r\nCode";
            this.gcJobTitleCode.FieldName = "JTCode";
            this.gcJobTitleCode.Name = "gcJobTitleCode";
            this.gcJobTitleCode.Visible = true;
            this.gcJobTitleCode.VisibleIndex = 6;
            this.gcJobTitleCode.Width = 61;
            // 
            // gcJobTitleEn
            // 
            this.gcJobTitleEn.Caption = "Job Title";
            this.gcJobTitleEn.FieldName = "JobTitleEn";
            this.gcJobTitleEn.Name = "gcJobTitleEn";
            this.gcJobTitleEn.Visible = true;
            this.gcJobTitleEn.VisibleIndex = 7;
            this.gcJobTitleEn.Width = 261;
            // 
            // gcJobTitleCn
            // 
            this.gcJobTitleCn.Caption = "Job Title (CN)";
            this.gcJobTitleCn.FieldName = "JobTitleCn";
            this.gcJobTitleCn.Name = "gcJobTitleCn";
            this.gcJobTitleCn.Visible = true;
            this.gcJobTitleCn.VisibleIndex = 8;
            this.gcJobTitleCn.Width = 231;
            // 
            // gcJobTitleBd
            // 
            this.gcJobTitleBd.Caption = "Job Title (Bd)";
            this.gcJobTitleBd.Name = "gcJobTitleBd";
            this.gcJobTitleBd.Width = 71;
            // 
            // gcWageCode
            // 
            this.gcWageCode.Caption = "Wage\r\nCode";
            this.gcWageCode.FieldName = "WageCode";
            this.gcWageCode.Name = "gcWageCode";
            this.gcWageCode.Visible = true;
            this.gcWageCode.VisibleIndex = 9;
            this.gcWageCode.Width = 54;
            // 
            // gcDepartals
            // 
            this.gcDepartals.Caption = "Related to\r\nDepartmental";
            this.gcDepartals.FieldName = "Departmentals";
            this.gcDepartals.Name = "gcDepartals";
            this.gcDepartals.Visible = true;
            this.gcDepartals.VisibleIndex = 10;
            this.gcDepartals.Width = 113;
            // 
            // gcSewingDirect
            // 
            this.gcSewingDirect.Caption = "Sewing Direct Labors";
            this.gcSewingDirect.Name = "gcSewingDirect";
            // 
            // gcProductionIndirect
            // 
            this.gcProductionIndirect.Caption = "Production Indirect Labors";
            this.gcProductionIndirect.Name = "gcProductionIndirect";
            // 
            // gcNonProduction
            // 
            this.gcNonProduction.Caption = "Non Production Labors";
            this.gcNonProduction.Name = "gcNonProduction";
            // 
            // gcSalesSupportive
            // 
            this.gcSalesSupportive.Caption = "Sales Supportive Labors";
            this.gcSalesSupportive.Name = "gcSalesSupportive";
            // 
            // gcIsStaffShowText
            // 
            this.gcIsStaffShowText.Caption = "Labor/\r\nStaff";
            this.gcIsStaffShowText.ColumnEdit = this.repositoryItemComboBox_IsStaff;
            this.gcIsStaffShowText.FieldName = "IsStaffShowText";
            this.gcIsStaffShowText.Name = "gcIsStaffShowText";
            this.gcIsStaffShowText.Visible = true;
            this.gcIsStaffShowText.VisibleIndex = 11;
            this.gcIsStaffShowText.Width = 60;
            // 
            // repositoryItemComboBox_IsStaff
            // 
            this.repositoryItemComboBox_IsStaff.AutoHeight = false;
            this.repositoryItemComboBox_IsStaff.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_IsStaff.Items.AddRange(new object[] {
            "Staff",
            "Labor"});
            this.repositoryItemComboBox_IsStaff.Name = "repositoryItemComboBox_IsStaff";
            // 
            // colIsStaff
            // 
            this.colIsStaff.Caption = "IsStaff";
            this.colIsStaff.FieldName = "IsStaff";
            this.colIsStaff.Name = "colIsStaff";
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 60;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // JobTitleListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "JobTitleListForm";
            this.Size = new System.Drawing.Size(1443, 496);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtGrade)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IsStaff)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcGradingSeq;
        private DevExpress.XtraGrid.Columns.GridColumn gcGradeCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcTitleTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcTitleTypeEn;
        private DevExpress.XtraGrid.Columns.GridColumn gcTitleTypeCn;
        private DevExpress.XtraGrid.Columns.GridColumn gcTitleTypeBd;
        private DevExpress.XtraGrid.Columns.GridColumn gcJobTitleCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcJobTitleEn;
        private DevExpress.XtraGrid.Columns.GridColumn gcJobTitleCn;
        private DevExpress.XtraGrid.Columns.GridColumn gcJobTitleBd;
        private DevExpress.XtraGrid.Columns.GridColumn gcWageCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcDepartals;
        private DevExpress.XtraGrid.Columns.GridColumn gcSewingDirect;
        private DevExpress.XtraGrid.Columns.GridColumn gcProductionIndirect;
        private DevExpress.XtraGrid.Columns.GridColumn gcNonProduction;
        private DevExpress.XtraGrid.Columns.GridColumn gcSalesSupportive;
        private DevExpress.XtraGrid.Columns.GridColumn gcIsStaffShowText;
        private DevExpress.XtraGrid.Columns.GridColumn colIsStaff;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit edtGrade;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_IsStaff;
    }
}
