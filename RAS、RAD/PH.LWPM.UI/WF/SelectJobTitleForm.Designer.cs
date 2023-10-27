namespace PH.LWPM.UI.WF
{
    partial class SelectJobTitleForm
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
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.gcJobTitle = new DevExpress.XtraGrid.GridControl();
            this.bsJobTitle = new System.Windows.Forms.BindingSource(this.components);
            this.gridJobTitle = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcGradingSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGradeCode = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.gcIsStaffShowText = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSewingDirect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProductionIndirect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcNonProduction = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSalesSupportive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsStaff = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcJobTitle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsJobTitle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridJobTitle)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 491);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(1340, 55);
            this.pnlBottom.TabIndex = 12;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(960, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(832, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // gcJobTitle
            // 
            this.gcJobTitle.DataSource = this.bsJobTitle;
            this.gcJobTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcJobTitle.EmbeddedNavigator.Name = "";
            this.gcJobTitle.Location = new System.Drawing.Point(0, 0);
            this.gcJobTitle.MainView = this.gridJobTitle;
            this.gcJobTitle.Name = "gcJobTitle";
            this.gcJobTitle.Size = new System.Drawing.Size(1340, 491);
            this.gcJobTitle.TabIndex = 13;
            this.gcJobTitle.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridJobTitle});
            // 
            // gridJobTitle
            // 
            this.gridJobTitle.ColumnPanelRowHeight = 50;
            this.gridJobTitle.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
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
            this.gridJobTitle.GridControl = this.gcJobTitle;
            this.gridJobTitle.Name = "gridJobTitle";
            this.gridJobTitle.OptionsBehavior.Editable = false;
            this.gridJobTitle.OptionsDetail.EnableMasterViewMode = false;
            this.gridJobTitle.OptionsPrint.AutoWidth = false;
            this.gridJobTitle.OptionsView.ColumnAutoWidth = false;
            this.gridJobTitle.OptionsView.EnableAppearanceOddRow = true;
            this.gridJobTitle.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.gridJobTitle.OptionsView.RowAutoHeight = true;
            this.gridJobTitle.OptionsView.ShowDetailButtons = false;
            this.gridJobTitle.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcGradingSeq, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcSeqNo, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcTitleTypeCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcJobTitleCode, DevExpress.Data.ColumnSortOrder.Ascending)});
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
            this.gcGradeCode.FieldName = "GradeCode";
            this.gcGradeCode.Name = "gcGradeCode";
            this.gcGradeCode.Visible = true;
            this.gcGradeCode.VisibleIndex = 1;
            this.gcGradeCode.Width = 55;
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
            this.gcJobTitleCode.Caption = "Job\r\nType\r\nCode";
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
            // gcIsStaffShowText
            // 
            this.gcIsStaffShowText.Caption = "Labor/\r\nStaff";
            this.gcIsStaffShowText.FieldName = "IsStaffShowText";
            this.gcIsStaffShowText.Name = "gcIsStaffShowText";
            this.gcIsStaffShowText.Visible = true;
            this.gcIsStaffShowText.VisibleIndex = 11;
            this.gcIsStaffShowText.Width = 57;
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
            // colIsStaff
            // 
            this.colIsStaff.Caption = "IsStaff";
            this.colIsStaff.FieldName = "IsStaff";
            this.colIsStaff.Name = "colIsStaff";
            // 
            // SelectJobTitleForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 546);
            this.Controls.Add(this.gcJobTitle);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectJobTitleForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Job Group && Job Title";
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcJobTitle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsJobTitle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridJobTitle)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pnlBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.GridControl gcJobTitle;
        private DevExpress.XtraGrid.Views.Grid.GridView gridJobTitle;
        private System.Windows.Forms.BindingSource bsJobTitle;
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
        private DevExpress.XtraGrid.Columns.GridColumn gcIsStaffShowText;
        private DevExpress.XtraGrid.Columns.GridColumn gcSewingDirect;
        private DevExpress.XtraGrid.Columns.GridColumn gcProductionIndirect;
        private DevExpress.XtraGrid.Columns.GridColumn gcNonProduction;
        private DevExpress.XtraGrid.Columns.GridColumn gcSalesSupportive;
        private DevExpress.XtraGrid.Columns.GridColumn colIsStaff;
    }
}