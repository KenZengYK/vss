namespace PH.FabricInspection.UI.Query
{
    partial class ActionLogIncompleteListForm
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
            this.repositoryItemButtonEdit_ActionLog = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAuditTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWhse = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAuditNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditStage = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOverallClaimPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCategoryCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFirstDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReviseCmplDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDataCrossTransferCmplDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLastDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLastStageReviseTargetCompleteDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.btnFollowup = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnFollowup});
            this.objbarManager.MaxItemId = 64;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnFollowup, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit_ActionLog});
            this.objListGridControl.Size = new System.Drawing.Size(1491, 389);
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ActionLogIncompleteResult);
            // 
            // repositoryItemButtonEdit_ActionLog
            // 
            this.repositoryItemButtonEdit_ActionLog.AutoHeight = false;
            this.repositoryItemButtonEdit_ActionLog.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_ActionLog.Name = "repositoryItemButtonEdit_ActionLog";
            this.repositoryItemButtonEdit_ActionLog.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_ActionLog_ButtonClick);
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
            this.gridBand1,
            this.gridBand4,
            this.gridBand2,
            this.gridBand3});
            this.bandedGridView1.ColumnPanelRowHeight = 52;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colAuditTeam,
            this.colWhse,
            this.colAuditNo,
            this.colSuppCode,
            this.colAuditStage,
            this.colOverallClaimPercent,
            this.colActionLogNo,
            this.colFirstDate,
            this.colLastDate,
            this.colItemCode,
            this.colColorCode,
            this.colSuppRef,
            this.colFWStartDate,
            this.colCompletedDate,
            this.colFactory,
            this.colProjectNo,
            this.colLastStageReviseTargetCompleteDate,
            this.bandedGridColumn1,
            this.colReviseCmplDate,
            this.colCategoryCode,
            this.colDataCrossTransferCmplDate});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1215, 325, 225, 436);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawBandHeader);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawColumnHeader);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "General Information";
            this.gridBand1.Columns.Add(this.colAuditTeam);
            this.gridBand1.Columns.Add(this.colFactory);
            this.gridBand1.Columns.Add(this.colWhse);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Columns.Add(this.colItemCode);
            this.gridBand1.Columns.Add(this.colColorCode);
            this.gridBand1.Columns.Add(this.colSuppCode);
            this.gridBand1.Columns.Add(this.colSuppRef);
            this.gridBand1.Columns.Add(this.colFWStartDate);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.RowCount = 2;
            this.gridBand1.Tag = 1;
            this.gridBand1.Width = 745;
            // 
            // colAuditTeam
            // 
            this.colAuditTeam.Caption = "Audit\r\nTeam";
            this.colAuditTeam.FieldName = "AuditTeam";
            this.colAuditTeam.Name = "colAuditTeam";
            this.colAuditTeam.OptionsColumn.AllowEdit = false;
            this.colAuditTeam.Visible = true;
            this.colAuditTeam.Width = 53;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Our\r\nPrdn\r\nSite\r\n";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.Width = 62;
            // 
            // colWhse
            // 
            this.colWhse.Caption = "Whse";
            this.colWhse.FieldName = "Whse";
            this.colWhse.Name = "colWhse";
            this.colWhse.OptionsColumn.AllowEdit = false;
            this.colWhse.Visible = true;
            this.colWhse.Width = 53;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Audited Lots\r\nrelated to Proj #";
            this.colProjectNo.FieldName = "ProjectNoShow";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 150;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our Item\r\nCde";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 97;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr\r\nCde";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 46;
            // 
            // colSuppCode
            // 
            this.colSuppCode.Caption = "Supp\r\nCde";
            this.colSuppCode.FieldName = "SupplierCode";
            this.colSuppCode.Name = "colSuppCode";
            this.colSuppCode.Visible = true;
            this.colSuppCode.Width = 65;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "Supp. Item Cde\r\n(if any)";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.OptionsColumn.AllowEdit = false;
            this.colSuppRef.Visible = true;
            this.colSuppRef.Width = 139;
            // 
            // colFWStartDate
            // 
            this.colFWStartDate.Caption = "1st WO\'s\r\nFW\r\nStart dd";
            this.colFWStartDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFWStartDate.FieldName = "FWStartDate";
            this.colFWStartDate.Name = "colFWStartDate";
            this.colFWStartDate.OptionsColumn.AllowEdit = false;
            this.colFWStartDate.Visible = true;
            this.colFWStartDate.Width = 80;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "IMQE\'s Information";
            this.gridBand4.Columns.Add(this.colAuditNo);
            this.gridBand4.Columns.Add(this.colAuditStage);
            this.gridBand4.Columns.Add(this.colOverallClaimPercent);
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 2;
            this.gridBand4.Width = 213;
            // 
            // colAuditNo
            // 
            this.colAuditNo.Caption = "Audit#";
            this.colAuditNo.FieldName = "AuditNo1";
            this.colAuditNo.Name = "colAuditNo";
            this.colAuditNo.OptionsColumn.AllowEdit = false;
            this.colAuditNo.Visible = true;
            this.colAuditNo.Width = 88;
            // 
            // colAuditStage
            // 
            this.colAuditStage.Caption = "Audit\r\nStage";
            this.colAuditStage.FieldName = "AuditStage";
            this.colAuditStage.Name = "colAuditStage";
            this.colAuditStage.OptionsColumn.AllowEdit = false;
            this.colAuditStage.Visible = true;
            this.colAuditStage.Width = 54;
            // 
            // colOverallClaimPercent
            // 
            this.colOverallClaimPercent.Caption = "Overall\r\nClaim\r\n%";
            this.colOverallClaimPercent.DisplayFormat.FormatString = "p";
            this.colOverallClaimPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colOverallClaimPercent.FieldName = "OverallClaimPercent";
            this.colOverallClaimPercent.Name = "colOverallClaimPercent";
            this.colOverallClaimPercent.OptionsColumn.AllowEdit = false;
            this.colOverallClaimPercent.Visible = true;
            this.colOverallClaimPercent.Width = 71;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Action log";
            this.gridBand2.Columns.Add(this.colActionLogNo);
            this.gridBand2.Columns.Add(this.colCategoryCode);
            this.gridBand2.Columns.Add(this.colFirstDate);
            this.gridBand2.Columns.Add(this.colReviseCmplDate);
            this.gridBand2.Columns.Add(this.colCompletedDate);
            this.gridBand2.Columns.Add(this.colDataCrossTransferCmplDate);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.RowCount = 2;
            this.gridBand2.Tag = 1;
            this.gridBand2.Width = 381;
            // 
            // colActionLogNo
            // 
            this.colActionLogNo.Caption = "Action Log\r\nSeq#";
            this.colActionLogNo.ColumnEdit = this.repositoryItemButtonEdit_ActionLog;
            this.colActionLogNo.FieldName = "ActionLogNo";
            this.colActionLogNo.Name = "colActionLogNo";
            this.colActionLogNo.Visible = true;
            this.colActionLogNo.Width = 81;
            // 
            // colCategoryCode
            // 
            this.colCategoryCode.Caption = "Cate\r\n-gory\r\nCde";
            this.colCategoryCode.FieldName = "CategoryCode";
            this.colCategoryCode.Name = "colCategoryCode";
            this.colCategoryCode.OptionsColumn.AllowEdit = false;
            this.colCategoryCode.Visible = true;
            this.colCategoryCode.Width = 50;
            // 
            // colFirstDate
            // 
            this.colFirstDate.Caption = "Target\r\ndd";
            this.colFirstDate.DisplayFormat.FormatString = "MM-dd";
            this.colFirstDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFirstDate.FieldName = "FirstDate";
            this.colFirstDate.Name = "colFirstDate";
            this.colFirstDate.OptionsColumn.AllowEdit = false;
            this.colFirstDate.Visible = true;
            this.colFirstDate.Width = 59;
            // 
            // colReviseCmplDate
            // 
            this.colReviseCmplDate.Caption = "Rev.\r\ndd";
            this.colReviseCmplDate.DisplayFormat.FormatString = "MM-dd";
            this.colReviseCmplDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colReviseCmplDate.FieldName = "ReviseCmplDate";
            this.colReviseCmplDate.Name = "colReviseCmplDate";
            this.colReviseCmplDate.OptionsColumn.AllowEdit = false;
            this.colReviseCmplDate.Visible = true;
            this.colReviseCmplDate.Width = 57;
            // 
            // colCompletedDate
            // 
            this.colCompletedDate.Caption = "Act.\r\ndd";
            this.colCompletedDate.DisplayFormat.FormatString = "MM-dd";
            this.colCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCompletedDate.FieldName = "CompletedDate";
            this.colCompletedDate.Name = "colCompletedDate";
            this.colCompletedDate.OptionsColumn.AllowEdit = false;
            this.colCompletedDate.Visible = true;
            this.colCompletedDate.Width = 52;
            // 
            // colDataCrossTransferCmplDate
            // 
            this.colDataCrossTransferCmplDate.Caption = "Data cross\r\ntransferred\r\ndd";
            this.colDataCrossTransferCmplDate.DisplayFormat.FormatString = "MM-dd";
            this.colDataCrossTransferCmplDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDataCrossTransferCmplDate.FieldName = "DataCrossTransferCmplDate";
            this.colDataCrossTransferCmplDate.Name = "colDataCrossTransferCmplDate";
            this.colDataCrossTransferCmplDate.OptionsColumn.AllowEdit = false;
            this.colDataCrossTransferCmplDate.Visible = true;
            this.colDataCrossTransferCmplDate.Width = 82;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridBand3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand3.Caption = "Last stage";
            this.gridBand3.Columns.Add(this.colLastDate);
            this.gridBand3.Columns.Add(this.colLastStageReviseTargetCompleteDate);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.RowCount = 2;
            this.gridBand3.Visible = false;
            this.gridBand3.Width = 164;
            // 
            // colLastDate
            // 
            this.colLastDate.Caption = "target\r\ncomplete\r\ndd";
            this.colLastDate.DisplayFormat.FormatString = "MM-dd";
            this.colLastDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLastDate.FieldName = "LastDate";
            this.colLastDate.Name = "colLastDate";
            this.colLastDate.OptionsColumn.AllowEdit = false;
            this.colLastDate.Visible = true;
            this.colLastDate.Width = 73;
            // 
            // colLastStageReviseTargetCompleteDate
            // 
            this.colLastStageReviseTargetCompleteDate.Caption = "Revised\r\ntarget\r\ncomplete dd";
            this.colLastStageReviseTargetCompleteDate.DisplayFormat.FormatString = "MM-dd";
            this.colLastStageReviseTargetCompleteDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLastStageReviseTargetCompleteDate.FieldName = "LastStageReviseTargetCompleteDate";
            this.colLastStageReviseTargetCompleteDate.Name = "colLastStageReviseTargetCompleteDate";
            this.colLastStageReviseTargetCompleteDate.OptionsColumn.AllowEdit = false;
            this.colLastStageReviseTargetCompleteDate.Visible = true;
            this.colLastStageReviseTargetCompleteDate.Width = 91;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "bandedGridColumn1";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.Visible = true;
            // 
            // btnFollowup
            // 
            this.btnFollowup.Caption = "Follow up";
            this.btnFollowup.Id = 63;
            this.btnFollowup.Name = "btnFollowup";
            this.btnFollowup.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnFollowup_ItemClick);
            // 
            // ActionLogIncompleteListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogIncompleteListForm";
            this.Size = new System.Drawing.Size(1491, 416);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_ActionLog;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditTeam;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWhse;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditStage;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOverallClaimPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFirstDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppRef;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFWStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastStageReviseTargetCompleteDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReviseCmplDate;
        private DevExpress.XtraBars.BarButtonItem btnFollowup;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCategoryCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDataCrossTransferCmplDate;
    }
}
