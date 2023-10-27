namespace PH.MobileQC.UI.QCExamPlan
{
    partial class QC_ExamPlanDetailListForm
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
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOptSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOptCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOptName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFAE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMQACheck = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colMQCCheck = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnImportCustOpt = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnImportLineOpt = new DevExpress.XtraBars.BarButtonItem();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkshop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsAgree = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAgreeMan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAgreeDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnAgree = new DevExpress.XtraBars.BarButtonItem();
            this.btnQIConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.btnQAConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.colWFCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkDesk = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirmQI = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmerQI = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmDateQI = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirmQA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmerQA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmDateQA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOptNameEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQICheckStep1Show = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQACheckStep1Show = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSelect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CheckEditSelect = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CheckEditSelect)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnImportCustOpt,
            this.barBtnImportLineOpt,
            this.barBtnAgree,
            this.btnQIConfirm,
            this.btnQAConfirm});
            this.objbarManager.MaxItemId = 65;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImportCustOpt, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImportLineOpt, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnAgree, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnQIConfirm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnQAConfirm, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.CheckEditSelect});
            this.objListGridControl.Size = new System.Drawing.Size(1445, 342);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSelect,
            this.colFactory,
            this.colWorkshop,
            this.colLine,
            this.colOptSeq,
            this.colOptCode,
            this.colOptName,
            this.colOptNameEn,
            this.colFAE,
            this.colMQACheck,
            this.colMQCCheck,
            this.colIsAgree,
            this.colAgreeMan,
            this.colAgreeDate,
            this.colWFCode,
            this.colWorkDesk,
            this.colIsConfirmQI,
            this.colConfirmerQI,
            this.colConfirmDateQI,
            this.colIsConfirmQA,
            this.colConfirmerQA,
            this.colConfirmDateQA,
            this.colQICheckStep1Show,
            this.colQACheckStep1Show});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_ExamPlanDetail);
            // 
            // colLine
            // 
            this.colLine.Caption = "Line#";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.OptionsColumn.AllowEdit = false;
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 3;
            this.colLine.Width = 53;
            // 
            // colOptSeq
            // 
            this.colOptSeq.Caption = "Opt Seq";
            this.colOptSeq.FieldName = "OptSeq";
            this.colOptSeq.Name = "colOptSeq";
            this.colOptSeq.OptionsColumn.AllowEdit = false;
            this.colOptSeq.Visible = true;
            this.colOptSeq.VisibleIndex = 4;
            this.colOptSeq.Width = 68;
            // 
            // colOptCode
            // 
            this.colOptCode.Caption = "Opt Code";
            this.colOptCode.FieldName = "OptCode";
            this.colOptCode.Name = "colOptCode";
            this.colOptCode.OptionsColumn.AllowEdit = false;
            this.colOptCode.Visible = true;
            this.colOptCode.VisibleIndex = 5;
            // 
            // colOptName
            // 
            this.colOptName.Caption = "Opt Name (CN)";
            this.colOptName.FieldName = "OptName";
            this.colOptName.Name = "colOptName";
            this.colOptName.OptionsColumn.AllowEdit = false;
            this.colOptName.Visible = true;
            this.colOptName.VisibleIndex = 8;
            this.colOptName.Width = 212;
            // 
            // colFAE
            // 
            this.colFAE.Caption = "FAE";
            this.colFAE.FieldName = "FAE";
            this.colFAE.Name = "colFAE";
            this.colFAE.OptionsColumn.AllowEdit = false;
            this.colFAE.Visible = true;
            this.colFAE.VisibleIndex = 10;
            this.colFAE.Width = 44;
            // 
            // colMQACheck
            // 
            this.colMQACheck.Caption = "QA Check";
            this.colMQACheck.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colMQACheck.FieldName = "MQACheck";
            this.colMQACheck.Name = "colMQACheck";
            this.colMQACheck.Visible = true;
            this.colMQACheck.VisibleIndex = 13;
            this.colMQACheck.Width = 127;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit1.ValueGrayed = false;
            // 
            // colMQCCheck
            // 
            this.colMQCCheck.Caption = "QI Check";
            this.colMQCCheck.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colMQCCheck.FieldName = "MQCCheck";
            this.colMQCCheck.Name = "colMQCCheck";
            this.colMQCCheck.Visible = true;
            this.colMQCCheck.VisibleIndex = 14;
            this.colMQCCheck.Width = 123;
            // 
            // barBtnImportCustOpt
            // 
            this.barBtnImportCustOpt.Caption = "Import Style Opt";
            this.barBtnImportCustOpt.Id = 60;
            this.barBtnImportCustOpt.Name = "barBtnImportCustOpt";
            this.barBtnImportCustOpt.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImportCustOpt_ItemClick);
            // 
            // barBtnImportLineOpt
            // 
            this.barBtnImportLineOpt.Caption = "Import Line Opt";
            this.barBtnImportLineOpt.Id = 61;
            this.barBtnImportLineOpt.Name = "barBtnImportLineOpt";
            this.barBtnImportLineOpt.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImportLineOpt_ItemClick);
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 1;
            this.colFactory.Width = 52;
            // 
            // colWorkshop
            // 
            this.colWorkshop.Caption = "Ws";
            this.colWorkshop.FieldName = "Workshop";
            this.colWorkshop.Name = "colWorkshop";
            this.colWorkshop.Visible = true;
            this.colWorkshop.VisibleIndex = 2;
            this.colWorkshop.Width = 69;
            // 
            // colIsAgree
            // 
            this.colIsAgree.Caption = "Agreed";
            this.colIsAgree.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsAgree.FieldName = "IsAgree";
            this.colIsAgree.Name = "colIsAgree";
            this.colIsAgree.OptionsColumn.AllowEdit = false;
            // 
            // colAgreeMan
            // 
            this.colAgreeMan.Caption = "Agree Person";
            this.colAgreeMan.FieldName = "AgreeMan";
            this.colAgreeMan.Name = "colAgreeMan";
            this.colAgreeMan.OptionsColumn.AllowEdit = false;
            this.colAgreeMan.Width = 103;
            // 
            // colAgreeDate
            // 
            this.colAgreeDate.Caption = "Agree Date";
            this.colAgreeDate.FieldName = "AgreeDate";
            this.colAgreeDate.Name = "colAgreeDate";
            this.colAgreeDate.OptionsColumn.AllowEdit = false;
            this.colAgreeDate.Width = 106;
            // 
            // barBtnAgree
            // 
            this.barBtnAgree.Caption = "Agree";
            this.barBtnAgree.Id = 62;
            this.barBtnAgree.Name = "barBtnAgree";
            this.barBtnAgree.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnAgree_ItemClick);
            // 
            // btnQIConfirm
            // 
            this.btnQIConfirm.Caption = "QI Confirm";
            this.btnQIConfirm.Id = 63;
            this.btnQIConfirm.Name = "btnQIConfirm";
            this.btnQIConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnQIConfirm_ItemClick);
            // 
            // btnQAConfirm
            // 
            this.btnQAConfirm.Caption = "QA Confirm";
            this.btnQAConfirm.Id = 64;
            this.btnQAConfirm.Name = "btnQAConfirm";
            this.btnQAConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnQAConfirm_ItemClick);
            // 
            // colWFCode
            // 
            this.colWFCode.Caption = "WF Code";
            this.colWFCode.FieldName = "WFCode";
            this.colWFCode.Name = "colWFCode";
            this.colWFCode.Visible = true;
            this.colWFCode.VisibleIndex = 6;
            this.colWFCode.Width = 70;
            // 
            // colWorkDesk
            // 
            this.colWorkDesk.Caption = "Work Desk";
            this.colWorkDesk.FieldName = "WorkDesk";
            this.colWorkDesk.Name = "colWorkDesk";
            this.colWorkDesk.Visible = true;
            this.colWorkDesk.VisibleIndex = 7;
            this.colWorkDesk.Width = 81;
            // 
            // colIsConfirmQI
            // 
            this.colIsConfirmQI.Caption = "QI Confirmed";
            this.colIsConfirmQI.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsConfirmQI.FieldName = "IsConfirmQI";
            this.colIsConfirmQI.Name = "colIsConfirmQI";
            this.colIsConfirmQI.OptionsColumn.AllowEdit = false;
            this.colIsConfirmQI.Visible = true;
            this.colIsConfirmQI.VisibleIndex = 15;
            this.colIsConfirmQI.Width = 100;
            // 
            // colConfirmerQI
            // 
            this.colConfirmerQI.Caption = "QI Confirmer";
            this.colConfirmerQI.FieldName = "ConfirmerQI";
            this.colConfirmerQI.Name = "colConfirmerQI";
            this.colConfirmerQI.OptionsColumn.AllowEdit = false;
            this.colConfirmerQI.Visible = true;
            this.colConfirmerQI.VisibleIndex = 16;
            this.colConfirmerQI.Width = 93;
            // 
            // colConfirmDateQI
            // 
            this.colConfirmDateQI.Caption = "QI Confirm Date";
            this.colConfirmDateQI.FieldName = "ConfirmDateQI";
            this.colConfirmDateQI.Name = "colConfirmDateQI";
            this.colConfirmDateQI.OptionsColumn.AllowEdit = false;
            this.colConfirmDateQI.Visible = true;
            this.colConfirmDateQI.VisibleIndex = 17;
            this.colConfirmDateQI.Width = 110;
            // 
            // colIsConfirmQA
            // 
            this.colIsConfirmQA.Caption = "QA Confirmed";
            this.colIsConfirmQA.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsConfirmQA.FieldName = "IsConfirmQA";
            this.colIsConfirmQA.Name = "colIsConfirmQA";
            this.colIsConfirmQA.OptionsColumn.AllowEdit = false;
            this.colIsConfirmQA.Visible = true;
            this.colIsConfirmQA.VisibleIndex = 18;
            this.colIsConfirmQA.Width = 98;
            // 
            // colConfirmerQA
            // 
            this.colConfirmerQA.Caption = "QA Confirmer";
            this.colConfirmerQA.FieldName = "ConfirmerQA";
            this.colConfirmerQA.Name = "colConfirmerQA";
            this.colConfirmerQA.OptionsColumn.AllowEdit = false;
            this.colConfirmerQA.Visible = true;
            this.colConfirmerQA.VisibleIndex = 19;
            this.colConfirmerQA.Width = 95;
            // 
            // colConfirmDateQA
            // 
            this.colConfirmDateQA.Caption = "QA Confirm Date";
            this.colConfirmDateQA.FieldName = "ConfirmDateQA";
            this.colConfirmDateQA.Name = "colConfirmDateQA";
            this.colConfirmDateQA.OptionsColumn.AllowEdit = false;
            this.colConfirmDateQA.Visible = true;
            this.colConfirmDateQA.VisibleIndex = 20;
            this.colConfirmDateQA.Width = 114;
            // 
            // colOptNameEn
            // 
            this.colOptNameEn.Caption = "Opt Name (EN)";
            this.colOptNameEn.FieldName = "OptName_EN";
            this.colOptNameEn.Name = "colOptNameEn";
            this.colOptNameEn.Visible = true;
            this.colOptNameEn.VisibleIndex = 9;
            this.colOptNameEn.Width = 163;
            // 
            // colQICheckStep1Show
            // 
            this.colQICheckStep1Show.Caption = "QI Check (Step1)";
            this.colQICheckStep1Show.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colQICheckStep1Show.FieldName = "QICheckStep1Show";
            this.colQICheckStep1Show.Name = "colQICheckStep1Show";
            this.colQICheckStep1Show.OptionsColumn.AllowEdit = false;
            this.colQICheckStep1Show.OptionsColumn.ReadOnly = true;
            this.colQICheckStep1Show.Visible = true;
            this.colQICheckStep1Show.VisibleIndex = 12;
            this.colQICheckStep1Show.Width = 119;
            // 
            // colQACheckStep1Show
            // 
            this.colQACheckStep1Show.Caption = "QA Check (Step1)";
            this.colQACheckStep1Show.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colQACheckStep1Show.FieldName = "QACheckStep1Show";
            this.colQACheckStep1Show.Name = "colQACheckStep1Show";
            this.colQACheckStep1Show.OptionsColumn.AllowEdit = false;
            this.colQACheckStep1Show.OptionsColumn.ReadOnly = true;
            this.colQACheckStep1Show.Visible = true;
            this.colQACheckStep1Show.VisibleIndex = 11;
            this.colQACheckStep1Show.Width = 123;
            // 
            // colSelect
            // 
            this.colSelect.ColumnEdit = this.CheckEditSelect;
            this.colSelect.FieldName = "SelectFlag";
            this.colSelect.Name = "colSelect";
            this.colSelect.Visible = true;
            this.colSelect.VisibleIndex = 0;
            this.colSelect.Width = 48;
            // 
            // CheckEditSelect
            // 
            this.CheckEditSelect.AutoHeight = false;
            this.CheckEditSelect.Name = "CheckEditSelect";
            this.CheckEditSelect.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // QC_ExamPlanDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QC_ExamPlanDetailListForm";
            this.Size = new System.Drawing.Size(1445, 369);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CheckEditSelect)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colOptSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colOptCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOptName;
        private DevExpress.XtraGrid.Columns.GridColumn colFAE;
        private DevExpress.XtraGrid.Columns.GridColumn colMQACheck;
        private DevExpress.XtraGrid.Columns.GridColumn colMQCCheck;
        private DevExpress.XtraBars.BarButtonItem barBtnImportCustOpt;
        private DevExpress.XtraBars.BarButtonItem barBtnImportLineOpt;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkshop;
        private DevExpress.XtraGrid.Columns.GridColumn colIsAgree;
        private DevExpress.XtraGrid.Columns.GridColumn colAgreeMan;
        private DevExpress.XtraGrid.Columns.GridColumn colAgreeDate;
        private DevExpress.XtraBars.BarButtonItem barBtnAgree;
        private DevExpress.XtraBars.BarButtonItem btnQIConfirm;
        private DevExpress.XtraBars.BarButtonItem btnQAConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colWFCode;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkDesk;
        public DevExpress.XtraGrid.Columns.GridColumn colIsConfirmQI;
        public DevExpress.XtraGrid.Columns.GridColumn colConfirmerQI;
        public DevExpress.XtraGrid.Columns.GridColumn colConfirmDateQI;
        public DevExpress.XtraGrid.Columns.GridColumn colIsConfirmQA;
        public DevExpress.XtraGrid.Columns.GridColumn colConfirmerQA;
        public DevExpress.XtraGrid.Columns.GridColumn colConfirmDateQA;
        private DevExpress.XtraGrid.Columns.GridColumn colOptNameEn;
        private DevExpress.XtraGrid.Columns.GridColumn colQICheckStep1Show;
        private DevExpress.XtraGrid.Columns.GridColumn colQACheckStep1Show;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit CheckEditSelect;
        private DevExpress.XtraGrid.Columns.GridColumn colSelect;
    }
}
