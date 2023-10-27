using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Threading;
using System.Globalization;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using PH.LineBalanceII.BO;
using PH.Platform.AuthMgr.BO;
using System.Collections;
using DevExpress.XtraGrid.Views.BandedGrid;


namespace PH.LineBalanceII.UI
{
    partial class UserControl1
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
this.cbFilter = new DevExpress.XtraEditors.ComboBoxEdit();
this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
this.panel1 = new System.Windows.Forms.Panel();
this.btnCopyStyle = new DevExpress.XtraBars.BarButtonItem();
this.adgvmaster = new DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView();
this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gcCust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcStatu = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridColKHKH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColPHKH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gcProc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColCPLB = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColSizeYJ = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcSize_Editon = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colPM_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colPM_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colPM_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colPM_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colB_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colB_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colB_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colB_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colF_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colF_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colF_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colF_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colA_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colA_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colA_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colA_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colA_LBSAHIndex = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colA_LBLoss = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colE_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colE_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colE_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colE_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colTotal_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colTotal_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colTotal_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colTotal_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridColZH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColEdition = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcActiveSame = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gcCreate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcIEDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColIsUsed = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcProdConfirm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcConfDt_Prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.colUpdateTime = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcConfer_prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.colUpdateConfirmDate_IE = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridColAuditor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcJZ_Prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcJZDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcBJSAH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcProdSAH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcSAHDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcValidDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gcCupStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.replue_CupStyle = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
this.gcSizeStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.replu_SizeStyle = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
this.gcStatu_Disp = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).BeginInit();
this.panel1.SuspendLayout();
((System.ComponentModel.ISupportInitialize)(this.adgvmaster)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.replue_CupStyle)).BeginInit();
((System.ComponentModel.ISupportInitialize)(this.replu_SizeStyle)).BeginInit();
this.SuspendLayout();
// 
// objbarManager
// 
this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCopyStyle});
this.objbarManager.MaxItemId = 55;
// 
// ObjListBar
// 
this.ObjListBar.Appearance.Options.UseTextOptions = true;
this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyStyle, true)});
// 
// BindingSource
// 
this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.StyleMaster);
// 
// objListGridControl
// 
this.objListGridControl.EmbeddedNavigator.Anchor = System.Windows.Forms.AnchorStyles.None;
this.objListGridControl.EmbeddedNavigator.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
this.objListGridControl.EmbeddedNavigator.ImeMode = System.Windows.Forms.ImeMode.NoControl;
this.objListGridControl.EmbeddedNavigator.Name = "";
this.objListGridControl.Location = new System.Drawing.Point(0, 55);
this.objListGridControl.MainView = this.adgvmaster;
this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.replue_CupStyle,
            this.replu_SizeStyle,
            this.repositoryItemCheckEdit1});
this.objListGridControl.Size = new System.Drawing.Size(2404, 542);
this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.adgvmaster});
// 
// objListGridView
// 
this.objListGridView.OptionsBehavior.Editable = false;
this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
this.objListGridView.OptionsPrint.AutoWidth = false;
this.objListGridView.OptionsView.ColumnAutoWidth = false;
// 
// cbFilter
// 
this.cbFilter.EditValue = "Active";
this.cbFilter.Location = new System.Drawing.Point(82, 4);
this.cbFilter.Name = "cbFilter";
this.cbFilter.Properties.AutoHeight = false;
this.cbFilter.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
this.cbFilter.Properties.Items.AddRange(new object[] {
            "Active",
            "Inactive",
            "Drop",
            "Show All"});
this.cbFilter.Properties.Mask.EditMask = null;
this.cbFilter.Properties.Mask.IgnoreMaskBlank = false;
this.cbFilter.Properties.Mask.SaveLiteral = false;
this.cbFilter.Properties.Mask.ShowPlaceHolders = false;
this.cbFilter.Size = new System.Drawing.Size(378, 21);
this.cbFilter.TabIndex = 7;
// 
// labelControl1
// 
this.labelControl1.Location = new System.Drawing.Point(17, 7);
this.labelControl1.Name = "labelControl1";
this.labelControl1.Size = new System.Drawing.Size(48, 14);
this.labelControl1.TabIndex = 6;
this.labelControl1.Text = "顯示過濾";
// 
// panel1
// 
this.panel1.Controls.Add(this.labelControl1);
this.panel1.Controls.Add(this.cbFilter);
this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
this.panel1.Location = new System.Drawing.Point(0, 27);
this.panel1.Name = "panel1";
this.panel1.Size = new System.Drawing.Size(2404, 28);
this.PlatetoolTipController.SetSuperTip(this.panel1, null);
this.panel1.TabIndex = 8;
// 
// btnCopyStyle
// 
this.btnCopyStyle.Caption = "Copy";
this.btnCopyStyle.Id = 54;
this.btnCopyStyle.Name = "btnCopyStyle";
// 
// adgvmaster
// 
this.adgvmaster.Appearance.BandPanel.Options.UseTextOptions = true;
this.adgvmaster.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
this.adgvmaster.Appearance.HeaderPanel.Options.UseTextOptions = true;
this.adgvmaster.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
this.adgvmaster.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
this.adgvmaster.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand12,
            this.gridBand9,
            this.gridBand4});
this.adgvmaster.ColumnPanelRowHeight = 55;
this.adgvmaster.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.gridColKHKH,
            this.gridColPHKH,
            this.gridColCPLB,
            this.gridColSizeYJ,
            this.gridColZH,
            this.gridColEdition,
            this.gridColIsUsed,
            this.gridColAuditor,
            this.gcStatu,
            this.gcCust,
            this.gcProc,
            this.gcIEDate,
            this.gcActiveSame,
            this.gcCreate,
            this.gcJZ_Prod,
            this.gcJZDiff,
            this.gcBJSAH,
            this.gcProdSAH,
            this.gcSAHDiff,
            this.gcValidDate,
            this.gcSize_Editon,
            this.gcCupStyle,
            this.gcSizeStyle,
            this.gcProdConfirm,
            this.gcConfer_prod,
            this.gcConfDt_Prod,
            this.gridColumn1,
            this.colPM_OptsCount,
            this.colPM_WSTCount,
            this.colPM_WFCount,
            this.colPM_SAHTotal,
            this.colB_OptsCount,
            this.colB_WSTCount,
            this.colB_WFCount,
            this.colB_SAHTotal,
            this.colF_OptsCount,
            this.colF_WSTCount,
            this.colF_WFCount,
            this.colF_SAHTotal,
            this.colA_OptsCount,
            this.colA_WSTCount,
            this.colA_WFCount,
            this.colA_SAHTotal,
            this.colA_LBSAHIndex,
            this.colA_LBLoss,
            this.colE_OptsCount,
            this.colE_WSTCount,
            this.colE_WFCount,
            this.colE_SAHTotal,
            this.colTotal_OptsCount,
            this.colTotal_WSTCount,
            this.colTotal_WFCount,
            this.colTotal_SAHTotal,
            this.colUpdateTime,
            this.colUpdateConfirmDate_IE,
            this.bandedGridColumn1,
            this.gcStatu_Disp});
this.adgvmaster.GridControl = this.objListGridControl;
this.adgvmaster.Name = "adgvmaster";
this.adgvmaster.OptionsBehavior.Editable = false;
this.adgvmaster.OptionsDetail.EnableMasterViewMode = false;
this.adgvmaster.OptionsPrint.AutoWidth = false;
// 
// gridBand1
// 
this.gridBand1.Caption = "基本資料";
this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand7,
            this.gridBand8});
this.gridBand1.MinWidth = 20;
this.gridBand1.Name = "gridBand1";
this.gridBand1.Width = 502;
// 
// gridBand5
// 
this.gridBand5.Columns.Add(this.gcCust);
this.gridBand5.Columns.Add(this.gcStatu);
this.gridBand5.Name = "gridBand5";
this.gridBand5.Width = 68;
// 
// gcCust
// 
this.gcCust.Caption = "客戶號";
this.gcCust.FieldName = "CustNo";
this.gcCust.Name = "gcCust";
this.gcCust.Visible = true;
this.gcCust.Width = 68;
// 
// gcStatu
// 
this.gcStatu.Caption = "狀態值";
this.gcStatu.FieldName = "Statu";
this.gcStatu.Name = "gcStatu";
this.gcStatu.OptionsColumn.AllowEdit = false;
// 
// gridBand7
// 
this.gridBand7.Caption = "款號";
this.gridBand7.Columns.Add(this.gridColKHKH);
this.gridBand7.Columns.Add(this.gridColPHKH);
this.gridBand7.Name = "gridBand7";
this.gridBand7.Width = 210;
// 
// gridColKHKH
// 
this.gridColKHKH.Caption = "客款號";
this.gridColKHKH.FieldName = "KHKH";
this.gridColKHKH.Name = "gridColKHKH";
this.gridColKHKH.OptionsColumn.AllowEdit = false;
this.gridColKHKH.Visible = true;
this.gridColKHKH.Width = 87;
// 
// gridColPHKH
// 
this.gridColPHKH.Caption = "PH款號";
this.gridColPHKH.FieldName = "PHKH";
this.gridColPHKH.Name = "gridColPHKH";
this.gridColPHKH.OptionsColumn.AllowEdit = false;
this.gridColPHKH.Visible = true;
this.gridColPHKH.Width = 123;
// 
// gridBand8
// 
this.gridBand8.Columns.Add(this.gcProc);
this.gridBand8.Columns.Add(this.gridColCPLB);
this.gridBand8.Columns.Add(this.gridColSizeYJ);
this.gridBand8.Columns.Add(this.gcSize_Editon);
this.gridBand8.Name = "gridBand8";
this.gridBand8.Width = 224;
// 
// gcProc
// 
this.gcProc.Caption = "工場流程";
this.gcProc.FieldName = "ProcDesc";
this.gcProc.Name = "gcProc";
this.gcProc.Visible = true;
this.gcProc.Width = 60;
// 
// gridColCPLB
// 
this.gridColCPLB.Caption = "産品類別";
this.gridColCPLB.FieldName = "CPLB";
this.gridColCPLB.Name = "gridColCPLB";
this.gridColCPLB.Visible = true;
this.gridColCPLB.Width = 69;
// 
// gridColSizeYJ
// 
this.gridColSizeYJ.Caption = "晒士基值(IE)";
this.gridColSizeYJ.FieldName = "SizeYJ";
this.gridColSizeYJ.Name = "gridColSizeYJ";
this.gridColSizeYJ.Visible = true;
this.gridColSizeYJ.Width = 48;
// 
// gcSize_Editon
// 
this.gcSize_Editon.Caption = "來樣板";
this.gcSize_Editon.Name = "gcSize_Editon";
this.gcSize_Editon.Visible = true;
this.gcSize_Editon.Width = 47;
// 
// gridBand12
// 
this.gridBand12.Caption = "BOO2 (Step = 拆夾 S+M / Step 3 = 拉平衡 LB)";
this.gridBand12.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand13});
this.gridBand12.Name = "gridBand12";
this.gridBand12.Width = 1341;
// 
// gridBand13
// 
this.gridBand13.Caption = "SAH 值分佈 (IE) - 5個地點";
this.gridBand13.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand14,
            this.gridBand15,
            this.gridBand16,
            this.gridBand17,
            this.gridBand18,
            this.gridBand19});
this.gridBand13.Name = "gridBand13";
this.gridBand13.Width = 1341;
// 
// gridBand14
// 
this.gridBand14.Caption = "Parts Making (PM)";
this.gridBand14.Columns.Add(this.colPM_OptsCount);
this.gridBand14.Columns.Add(this.colPM_WSTCount);
this.gridBand14.Columns.Add(this.colPM_WFCount);
this.gridBand14.Columns.Add(this.colPM_SAHTotal);
this.gridBand14.Name = "gridBand14";
this.gridBand14.Width = 201;
// 
// colPM_OptsCount
// 
this.colPM_OptsCount.Caption = "# of Opts";
this.colPM_OptsCount.FieldName = "PM_OptsCount";
this.colPM_OptsCount.Name = "colPM_OptsCount";
this.colPM_OptsCount.Visible = true;
this.colPM_OptsCount.Width = 51;
// 
// colPM_WSTCount
// 
this.colPM_WSTCount.Caption = "WST";
this.colPM_WSTCount.FieldName = "PM_WSTCount";
this.colPM_WSTCount.Name = "colPM_WSTCount";
this.colPM_WSTCount.Visible = true;
this.colPM_WSTCount.Width = 49;
// 
// colPM_WFCount
// 
this.colPM_WFCount.Caption = "WF";
this.colPM_WFCount.FieldName = "PM_WFCount";
this.colPM_WFCount.Name = "colPM_WFCount";
this.colPM_WFCount.Visible = true;
this.colPM_WFCount.Width = 38;
// 
// colPM_SAHTotal
// 
this.colPM_SAHTotal.Caption = "SAH (S+M)";
this.colPM_SAHTotal.FieldName = "PM_SAHTotal";
this.colPM_SAHTotal.Name = "colPM_SAHTotal";
this.colPM_SAHTotal.Visible = true;
this.colPM_SAHTotal.Width = 63;
// 
// gridBand15
// 
this.gridBand15.Caption = "Bonding";
this.gridBand15.Columns.Add(this.colB_OptsCount);
this.gridBand15.Columns.Add(this.colB_WSTCount);
this.gridBand15.Columns.Add(this.colB_WFCount);
this.gridBand15.Columns.Add(this.colB_SAHTotal);
this.gridBand15.Name = "gridBand15";
this.gridBand15.Width = 191;
// 
// colB_OptsCount
// 
this.colB_OptsCount.Caption = "# of Opts";
this.colB_OptsCount.FieldName = "B_OptsCount";
this.colB_OptsCount.Name = "colB_OptsCount";
this.colB_OptsCount.Visible = true;
this.colB_OptsCount.Width = 47;
// 
// colB_WSTCount
// 
this.colB_WSTCount.Caption = "WST";
this.colB_WSTCount.FieldName = "B_WSTCount";
this.colB_WSTCount.Name = "colB_WSTCount";
this.colB_WSTCount.Visible = true;
this.colB_WSTCount.Width = 47;
// 
// colB_WFCount
// 
this.colB_WFCount.Caption = "WF";
this.colB_WFCount.FieldName = "B_WFCount";
this.colB_WFCount.Name = "colB_WFCount";
this.colB_WFCount.Visible = true;
this.colB_WFCount.Width = 43;
// 
// colB_SAHTotal
// 
this.colB_SAHTotal.Caption = "SAH (S+M)";
this.colB_SAHTotal.FieldName = "B_SAHTotal";
this.colB_SAHTotal.Name = "colB_SAHTotal";
this.colB_SAHTotal.Visible = true;
this.colB_SAHTotal.Width = 54;
// 
// gridBand16
// 
this.gridBand16.Caption = "Stitching (Front Phase)";
this.gridBand16.Columns.Add(this.colF_OptsCount);
this.gridBand16.Columns.Add(this.colF_WSTCount);
this.gridBand16.Columns.Add(this.colF_WFCount);
this.gridBand16.Columns.Add(this.colF_SAHTotal);
this.gridBand16.Name = "gridBand16";
this.gridBand16.Width = 201;
// 
// colF_OptsCount
// 
this.colF_OptsCount.Caption = "# of Opts";
this.colF_OptsCount.FieldName = "F_OptsCount";
this.colF_OptsCount.Name = "colF_OptsCount";
this.colF_OptsCount.Visible = true;
this.colF_OptsCount.Width = 52;
// 
// colF_WSTCount
// 
this.colF_WSTCount.Caption = "WST";
this.colF_WSTCount.FieldName = "F_WSTCount";
this.colF_WSTCount.Name = "colF_WSTCount";
this.colF_WSTCount.Visible = true;
this.colF_WSTCount.Width = 52;
// 
// colF_WFCount
// 
this.colF_WFCount.Caption = "WF";
this.colF_WFCount.FieldName = "F_WFCount";
this.colF_WFCount.Name = "colF_WFCount";
this.colF_WFCount.Visible = true;
this.colF_WFCount.Width = 41;
// 
// colF_SAHTotal
// 
this.colF_SAHTotal.Caption = "SAH (S+M)";
this.colF_SAHTotal.FieldName = "F_SAHTotal";
this.colF_SAHTotal.Name = "colF_SAHTotal";
this.colF_SAHTotal.Visible = true;
this.colF_SAHTotal.Width = 56;
// 
// gridBand17
// 
this.gridBand17.Caption = "Stitching (Assembly Line)";
this.gridBand17.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand20,
            this.gridBand21});
this.gridBand17.Name = "gridBand17";
this.gridBand17.Width = 342;
// 
// gridBand20
// 
this.gridBand20.Columns.Add(this.colA_OptsCount);
this.gridBand20.Columns.Add(this.colA_WSTCount);
this.gridBand20.Columns.Add(this.colA_WFCount);
this.gridBand20.Name = "gridBand20";
this.gridBand20.Width = 151;
// 
// colA_OptsCount
// 
this.colA_OptsCount.Caption = "# of Opts";
this.colA_OptsCount.FieldName = "A_OptsCount";
this.colA_OptsCount.Name = "colA_OptsCount";
this.colA_OptsCount.Visible = true;
this.colA_OptsCount.Width = 47;
// 
// colA_WSTCount
// 
this.colA_WSTCount.Caption = "WST";
this.colA_WSTCount.FieldName = "A_WSTCount";
this.colA_WSTCount.Name = "colA_WSTCount";
this.colA_WSTCount.Visible = true;
this.colA_WSTCount.Width = 54;
// 
// colA_WFCount
// 
this.colA_WFCount.Caption = "WF";
this.colA_WFCount.FieldName = "A_WFCount";
this.colA_WFCount.Name = "colA_WFCount";
this.colA_WFCount.Visible = true;
this.colA_WFCount.Width = 50;
// 
// gridBand21
// 
this.gridBand21.Caption = "SAH";
this.gridBand21.Columns.Add(this.colA_SAHTotal);
this.gridBand21.Columns.Add(this.colA_LBSAHIndex);
this.gridBand21.Columns.Add(this.colA_LBLoss);
this.gridBand21.Name = "gridBand21";
this.gridBand21.Width = 191;
// 
// colA_SAHTotal
// 
this.colA_SAHTotal.Caption = "(S+M)";
this.colA_SAHTotal.FieldName = "A_SAHTotal";
this.colA_SAHTotal.Name = "colA_SAHTotal";
this.colA_SAHTotal.Visible = true;
this.colA_SAHTotal.Width = 58;
// 
// colA_LBSAHIndex
// 
this.colA_LBSAHIndex.Caption = "(LB) index";
this.colA_LBSAHIndex.FieldName = "A_LBSAHIndex";
this.colA_LBSAHIndex.Name = "colA_LBSAHIndex";
this.colA_LBSAHIndex.Visible = true;
this.colA_LBSAHIndex.Width = 76;
// 
// colA_LBLoss
// 
this.colA_LBLoss.Caption = "LB Loss";
this.colA_LBLoss.FieldName = "A_LBLoss";
this.colA_LBLoss.Name = "colA_LBLoss";
this.colA_LBLoss.Visible = true;
this.colA_LBLoss.Width = 57;
// 
// gridBand18
// 
this.gridBand18.Caption = "Stitching (End Phase)";
this.gridBand18.Columns.Add(this.colE_OptsCount);
this.gridBand18.Columns.Add(this.colE_WSTCount);
this.gridBand18.Columns.Add(this.colE_WFCount);
this.gridBand18.Columns.Add(this.colE_SAHTotal);
this.gridBand18.Name = "gridBand18";
this.gridBand18.Width = 203;
// 
// colE_OptsCount
// 
this.colE_OptsCount.Caption = "# of Opts";
this.colE_OptsCount.FieldName = "E_OptsCount";
this.colE_OptsCount.Name = "colE_OptsCount";
this.colE_OptsCount.Visible = true;
this.colE_OptsCount.Width = 50;
// 
// colE_WSTCount
// 
this.colE_WSTCount.Caption = "WST";
this.colE_WSTCount.FieldName = "E_WSTCount";
this.colE_WSTCount.Name = "colE_WSTCount";
this.colE_WSTCount.Visible = true;
this.colE_WSTCount.Width = 52;
// 
// colE_WFCount
// 
this.colE_WFCount.Caption = "WF";
this.colE_WFCount.FieldName = "E_WFCount";
this.colE_WFCount.Name = "colE_WFCount";
this.colE_WFCount.Visible = true;
this.colE_WFCount.Width = 42;
// 
// colE_SAHTotal
// 
this.colE_SAHTotal.Caption = "SAH (S+M)";
this.colE_SAHTotal.FieldName = "E_SAHTotal";
this.colE_SAHTotal.Name = "colE_SAHTotal";
this.colE_SAHTotal.Visible = true;
this.colE_SAHTotal.Width = 59;
// 
// gridBand19
// 
this.gridBand19.Caption = "SAH 總值 (IE)";
this.gridBand19.Columns.Add(this.colTotal_OptsCount);
this.gridBand19.Columns.Add(this.colTotal_WSTCount);
this.gridBand19.Columns.Add(this.colTotal_WFCount);
this.gridBand19.Columns.Add(this.colTotal_SAHTotal);
this.gridBand19.Name = "gridBand19";
this.gridBand19.Width = 203;
// 
// colTotal_OptsCount
// 
this.colTotal_OptsCount.Caption = "# of Opts";
this.colTotal_OptsCount.FieldName = "Total_OptsCount";
this.colTotal_OptsCount.Name = "colTotal_OptsCount";
this.colTotal_OptsCount.Visible = true;
this.colTotal_OptsCount.Width = 48;
// 
// colTotal_WSTCount
// 
this.colTotal_WSTCount.Caption = "WST";
this.colTotal_WSTCount.FieldName = "Total_WSTCount";
this.colTotal_WSTCount.Name = "colTotal_WSTCount";
this.colTotal_WSTCount.Visible = true;
this.colTotal_WSTCount.Width = 49;
// 
// colTotal_WFCount
// 
this.colTotal_WFCount.Caption = "WF";
this.colTotal_WFCount.FieldName = "Total_WFCount";
this.colTotal_WFCount.Name = "colTotal_WFCount";
this.colTotal_WFCount.Visible = true;
this.colTotal_WFCount.Width = 45;
// 
// colTotal_SAHTotal
// 
this.colTotal_SAHTotal.Caption = "SAH (S+M)";
this.colTotal_SAHTotal.FieldName = "Total_SAHTotal";
this.colTotal_SAHTotal.Name = "colTotal_SAHTotal";
this.colTotal_SAHTotal.Visible = true;
this.colTotal_SAHTotal.Width = 61;
// 
// gridBand9
// 
this.gridBand9.Columns.Add(this.gridColZH);
this.gridBand9.Columns.Add(this.gridColEdition);
this.gridBand9.Columns.Add(this.gcActiveSame);
this.gridBand9.Name = "gridBand9";
this.gridBand9.Width = 173;
// 
// gridColZH
// 
this.gridColZH.Caption = "BOM組合(4 Group 12 Class)";
this.gridColZH.FieldName = "ZH";
this.gridColZH.Name = "gridColZH";
this.gridColZH.OptionsColumn.AllowEdit = false;
this.gridColZH.Visible = true;
this.gridColZH.Width = 72;
// 
// gridColEdition
// 
this.gridColEdition.Caption = "版本";
this.gridColEdition.FieldName = "Edition";
this.gridColEdition.Name = "gridColEdition";
this.gridColEdition.OptionsColumn.AllowEdit = false;
this.gridColEdition.Visible = true;
this.gridColEdition.Width = 32;
// 
// gcActiveSame
// 
this.gcActiveSame.Caption = "不同版本同時執行(Y/N)";
this.gcActiveSame.FieldName = "ActiveSame";
this.gcActiveSame.Name = "gcActiveSame";
this.gcActiveSame.OptionsColumn.AllowEdit = false;
this.gcActiveSame.Visible = true;
this.gcActiveSame.Width = 69;
// 
// gridBand4
// 
this.gridBand4.Caption = "IE部";
this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand22,
            this.gridBand10,
            this.gridBand11});
this.gridBand4.MinWidth = 20;
this.gridBand4.Name = "gridBand4";
this.gridBand4.Width = 366;
// 
// gridBand22
// 
this.gridBand22.Caption = "LastBand";
this.gridBand22.Columns.Add(this.gcValidDate);
this.gridBand22.Name = "gridBand22";
this.gridBand22.Width = 71;
// 
// bandedGridColumn1
// 
this.bandedGridColumn1.Caption = "狀態(來自于BOO1) (Y/N)";
this.bandedGridColumn1.ColumnEdit = this.repositoryItemCheckEdit1;
this.bandedGridColumn1.FieldName = "StatuFromBOO1";
this.bandedGridColumn1.Name = "bandedGridColumn1";
this.bandedGridColumn1.Visible = true;
// 
// repositoryItemCheckEdit1
// 
this.repositoryItemCheckEdit1.AutoHeight = false;
this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
// 
// gridBand10
// 
this.gridBand10.Caption = "原本";
this.gridBand10.Columns.Add(this.gcCreate);
this.gridBand10.Columns.Add(this.gcIEDate);
this.gridBand10.Columns.Add(this.gridColIsUsed);
this.gridBand10.Columns.Add(this.gcProdConfirm);
this.gridBand10.Columns.Add(this.gcConfDt_Prod);
this.gridBand10.Name = "gridBand10";
this.gridBand10.Width = 145;
// 
// gcCreate
// 
this.gcCreate.Caption = "建立日期";
this.gcCreate.FieldName = "CreateTime";
this.gcCreate.Name = "gcCreate";
this.gcCreate.OptionsColumn.AllowEdit = false;
this.gcCreate.Visible = true;
this.gcCreate.Width = 74;
// 
// gcIEDate
// 
this.gcIEDate.Caption = "確認日期";
this.gcIEDate.DisplayFormat.FormatString = "yyyy-MM-dd";
this.gcIEDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
this.gcIEDate.FieldName = "ConfirmDate_IE";
this.gcIEDate.Name = "gcIEDate";
this.gcIEDate.OptionsColumn.AllowEdit = false;
this.gcIEDate.Visible = true;
this.gcIEDate.Width = 71;
// 
// gridColIsUsed
// 
this.gridColIsUsed.Caption = "是否使用";
this.gridColIsUsed.FieldName = "IsUsed";
this.gridColIsUsed.Name = "gridColIsUsed";
this.gridColIsUsed.OptionsColumn.AllowEdit = false;
// 
// gcProdConfirm
// 
this.gcProdConfirm.Caption = "缝合部確認";
this.gcProdConfirm.FieldName = "AuditFlag_Prod";
this.gcProdConfirm.Name = "gcProdConfirm";
this.gcProdConfirm.OptionsColumn.AllowEdit = false;
this.gcProdConfirm.Width = 45;
// 
// gcConfDt_Prod
// 
this.gcConfDt_Prod.Caption = "缝合部確認日期";
this.gcConfDt_Prod.DisplayFormat.FormatString = "yyyy-MM-dd";
this.gcConfDt_Prod.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
this.gcConfDt_Prod.FieldName = "ConfirmDate_Prod";
this.gcConfDt_Prod.Name = "gcConfDt_Prod";
this.gcConfDt_Prod.OptionsColumn.AllowEdit = false;
this.gcConfDt_Prod.Width = 63;
// 
// gridBand11
// 
this.gridBand11.Caption = "修訂";
this.gridBand11.Columns.Add(this.colUpdateTime);
this.gridBand11.Columns.Add(this.gcConfer_prod);
this.gridBand11.Columns.Add(this.colUpdateConfirmDate_IE);
this.gridBand11.Columns.Add(this.gridColumn1);
this.gridBand11.Name = "gridBand11";
this.gridBand11.Width = 150;
// 
// colUpdateTime
// 
this.colUpdateTime.Caption = "修訂日期";
this.colUpdateTime.FieldName = "UpdateTime";
this.colUpdateTime.Name = "colUpdateTime";
this.colUpdateTime.Visible = true;
// 
// gcConfer_prod
// 
this.gcConfer_prod.Caption = "缝合部確認者";
this.gcConfer_prod.FieldName = "ConfirmByProd";
this.gcConfer_prod.Name = "gcConfer_prod";
this.gcConfer_prod.OptionsColumn.AllowEdit = false;
this.gcConfer_prod.Width = 69;
// 
// colUpdateConfirmDate_IE
// 
this.colUpdateConfirmDate_IE.Caption = "確認日期";
this.colUpdateConfirmDate_IE.FieldName = "UpdateConfirmDate_IE";
this.colUpdateConfirmDate_IE.Name = "colUpdateConfirmDate_IE";
this.colUpdateConfirmDate_IE.Visible = true;
// 
// gridColumn1
// 
this.gridColumn1.AppearanceCell.Options.UseTextOptions = true;
this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
this.gridColumn1.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
this.gridColumn1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
this.gridColumn1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
this.gridColumn1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
this.gridColumn1.Caption = "IE確認";
this.gridColumn1.FieldName = "AuditFlag";
this.gridColumn1.Name = "gridColumn1";
this.gridColumn1.OptionsColumn.AllowEdit = false;
this.gridColumn1.Width = 40;
// 
// gridColAuditor
// 
this.gridColAuditor.Caption = "確認者";
this.gridColAuditor.FieldName = "Auditor";
this.gridColAuditor.Name = "gridColAuditor";
this.gridColAuditor.OptionsColumn.AllowEdit = false;
this.gridColAuditor.Visible = true;
this.gridColAuditor.Width = 60;
// 
// gcJZ_Prod
// 
this.gcJZ_Prod.Caption = "缝合";
this.gcJZ_Prod.FieldName = "SizeYJ_Prod";
this.gcJZ_Prod.Name = "gcJZ_Prod";
this.gcJZ_Prod.Width = 44;
// 
// gcJZDiff
// 
this.gcJZDiff.Caption = "差異(?)";
this.gcJZDiff.FieldName = "JzDiff";
this.gcJZDiff.Name = "gcJZDiff";
this.gcJZDiff.Width = 36;
// 
// gcBJSAH
// 
this.gcBJSAH.Caption = "IE";
this.gcBJSAH.FieldName = "PRODSAH";
this.gcBJSAH.Name = "gcBJSAH";
this.gcBJSAH.OptionsColumn.AllowEdit = false;
this.gcBJSAH.Visible = true;
this.gcBJSAH.Width = 39;
// 
// gcProdSAH
// 
this.gcProdSAH.Caption = "缝合";
this.gcProdSAH.FieldName = "GsdTotal";
this.gcProdSAH.Name = "gcProdSAH";
this.gcProdSAH.OptionsColumn.AllowEdit = false;
this.gcProdSAH.Visible = true;
this.gcProdSAH.Width = 49;
// 
// gcSAHDiff
// 
this.gcSAHDiff.Caption = "差異(%)";
this.gcSAHDiff.FieldName = "SahDiff";
this.gcSAHDiff.Name = "gcSAHDiff";
this.gcSAHDiff.OptionsColumn.AllowEdit = false;
this.gcSAHDiff.Visible = true;
this.gcSAHDiff.Width = 68;
// 
// gcValidDate
// 
this.gcValidDate.Caption = "有效日期";
this.gcValidDate.FieldName = "ValidDate";
this.gcValidDate.Name = "gcValidDate";
this.gcValidDate.Visible = true;
this.gcValidDate.Width = 71;
// 
// gcCupStyle
// 
this.gcCupStyle.Caption = "杯";
this.gcCupStyle.ColumnEdit = this.replue_CupStyle;
this.gcCupStyle.FieldName = "CupStyle";
this.gcCupStyle.Name = "gcCupStyle";
this.gcCupStyle.OptionsColumn.AllowEdit = false;
this.gcCupStyle.Width = 35;
// 
// replue_CupStyle
// 
this.replue_CupStyle.AutoHeight = false;
this.replue_CupStyle.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
this.replue_CupStyle.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("StyleDesc", "杯型", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
this.replue_CupStyle.DisplayMember = "StyleDesc";
this.replue_CupStyle.Name = "replue_CupStyle";
this.replue_CupStyle.NullText = "";
this.replue_CupStyle.PopupFormMinSize = new System.Drawing.Size(20, 10);
this.replue_CupStyle.PopupWidth = 50;
this.replue_CupStyle.ValueMember = "StyleId";
// 
// gcSizeStyle
// 
this.gcSizeStyle.Caption = "BOO組合(3組9班)";
this.gcSizeStyle.ColumnEdit = this.replu_SizeStyle;
this.gcSizeStyle.FieldName = "SizeStyle";
this.gcSizeStyle.Name = "gcSizeStyle";
this.gcSizeStyle.OptionsColumn.AllowEdit = false;
this.gcSizeStyle.Width = 71;
// 
// replu_SizeStyle
// 
this.replu_SizeStyle.AutoHeight = false;
this.replu_SizeStyle.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
this.replu_SizeStyle.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("StyleDesc", "Desc", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
this.replu_SizeStyle.DisplayMember = "StyleDesc";
this.replu_SizeStyle.Name = "replu_SizeStyle";
this.replu_SizeStyle.NullText = "";
this.replu_SizeStyle.PopupFormMinSize = new System.Drawing.Size(60, 20);
this.replu_SizeStyle.PopupWidth = 60;
this.replu_SizeStyle.ValueMember = "StyleId";
// 
// gcStatu_Disp
// 
this.gcStatu_Disp.Caption = "狀態";
this.gcStatu_Disp.FieldName = "Statu_Disp";
this.gcStatu_Disp.Name = "gcStatu_Disp";
this.gcStatu_Disp.OptionsColumn.AllowEdit = false;
this.gcStatu_Disp.Visible = true;
this.gcStatu_Disp.Width = 58;
// 
// gridBand3
// 
this.gridBand3.Caption = "gridBand2";
this.gridBand3.Name = "gridBand3";
this.gridBand3.Width = 60;
// 
// gridBand2
// 
this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
this.gridBand2.Columns.Add(this.gcJZ_Prod);
this.gridBand2.Columns.Add(this.gcJZDiff);
this.gridBand2.MinWidth = 20;
this.gridBand2.Name = "gridBand2";
this.gridBand2.Width = 71;
// 
// gridBand6
// 
this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
this.gridBand6.Columns.Add(this.gcSizeStyle);
this.gridBand6.Columns.Add(this.gcValidDate);
this.gridBand6.Columns.Add(this.gridColAuditor);
this.gridBand6.Columns.Add(this.gcStatu_Disp);
this.gridBand6.Columns.Add(this.bandedGridColumn1);
this.gridBand6.Columns.Add(this.gcCupStyle);
this.gridBand6.MinWidth = 20;
this.gridBand6.Name = "gridBand6";
this.gridBand6.Width = 264;
// 
// UserControl1
// 
this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
this.Controls.Add(this.panel1);
this.Name = "UserControl1";
this.RowChangeAutoSave = false;
this.Size = new System.Drawing.Size(2404, 597);
this.PlatetoolTipController.SetSuperTip(this, null);
this.Controls.SetChildIndex(this.panel1, 0);
this.Controls.SetChildIndex(this.objListGridControl, 0);
((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).EndInit();
this.panel1.ResumeLayout(false);
this.panel1.PerformLayout();
((System.ComponentModel.ISupportInitialize)(this.adgvmaster)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.replue_CupStyle)).EndInit();
((System.ComponentModel.ISupportInitialize)(this.replu_SizeStyle)).EndInit();
this.ResumeLayout(false);

        }

        
        private ComboBoxEdit cbFilter;
        private LabelControl labelControl1;
        private DevExpress.XtraBars.BarButtonItem btnCopyStyle;
        private Panel panel1;
        #endregion
        private DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView adgvmaster;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColKHKH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColPHKH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColCPLB;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColSizeYJ;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColZH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColEdition;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColIsUsed;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColAuditor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcStatu_Disp;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcStatu;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcCust;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcProc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcIEDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcProdConfirm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcConfer_prod;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcConfDt_Prod;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcActiveSame;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcCreate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcJZ_Prod;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcJZDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcBJSAH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcProdSAH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcSAHDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcValidDate;
        private BandedGridColumn gcSize_Editon;
        private BandedGridColumn gcCupStyle;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit replue_CupStyle;


        public string OperType = "A";
        private BandedGridColumn gcSizeStyle;
        List<CupStyle> StyleList = new List<CupStyle>();
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit replu_SizeStyle;
        private GridBand gridBand5;
        private GridBand gridBand7;
        private GridBand gridBand8;
        private GridBand gridBand9;
        private GridBand gridBand10;
        private GridBand gridBand11;
        private BandedGridColumn colPM_OptsCount;
        private BandedGridColumn colPM_WSTCount;
        private BandedGridColumn colPM_WFCount;
        private BandedGridColumn colPM_SAHTotal;
        private GridBand gridBand12;
        private GridBand gridBand13;
        private GridBand gridBand14;
        private GridBand gridBand15;
        private GridBand gridBand16;
        private GridBand gridBand17;
        private GridBand gridBand18;
        private GridBand gridBand19;
        private BandedGridColumn colB_OptsCount;
        private BandedGridColumn colB_WSTCount;
        private BandedGridColumn colB_WFCount;
        private BandedGridColumn colB_SAHTotal;
        private BandedGridColumn colF_OptsCount;
        private BandedGridColumn colF_WSTCount;
        private BandedGridColumn colF_WFCount;
        private BandedGridColumn colF_SAHTotal;
        private BandedGridColumn colA_OptsCount;
        private BandedGridColumn colA_WSTCount;
        private BandedGridColumn colA_WFCount;
        private BandedGridColumn colA_SAHTotal;
        private BandedGridColumn colA_LBSAHIndex;
        private BandedGridColumn colA_LBLoss;
        private BandedGridColumn colE_OptsCount;
        private BandedGridColumn colE_WSTCount;
        private BandedGridColumn colE_WFCount;
        private BandedGridColumn colE_SAHTotal;
        private GridBand gridBand20;
        private GridBand gridBand21;
        private BandedGridColumn colTotal_OptsCount;
        private BandedGridColumn colTotal_WSTCount;
        private BandedGridColumn colTotal_WFCount;
        private BandedGridColumn colTotal_SAHTotal;
        private BandedGridColumn colUpdateTime;
        private BandedGridColumn colUpdateConfirmDate_IE;
        private BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private GridBand gridBand6;
        private GridBand gridBand2;
        private GridBand gridBand3;
        private GridBand gridBand22;

        #endregion
    }
}
