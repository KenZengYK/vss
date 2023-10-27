using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.SPC.BO;
using PH.SPC.BackEnd;

namespace PH.SPC.UI
{
    public partial class CEPPPSListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region AutoPorperties
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_StyleInformation;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_StyleInformation_ZRlay1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SampleOrderID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Customer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CustDept;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_ProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_FtyStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_ExFtyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_DelDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CustStyleNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_styleid;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PCCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_BriefDesr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_BrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_GroupName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SeasonCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PatternSource;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_BaseSizeSpec;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_BaseSizeSpec_RVS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_BaseSizeSpec_NC;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_GradeRules;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_GradeRules_RVS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_GradeRules_NC;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Construction;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Construction_RVS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Construction_NC;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Materialinformation;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_MatlTrims;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MatlTrims_RVS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MatlTrims_NC;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MatlTrims_Subt;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MatlTrims_ReadyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MatlTrims_PH3DPlasticShoot;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Materialinformation_ZRlay2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MidSpec;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_WorkShop_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_WorkShop;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_FRSDate_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_FRSDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_RVS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_RVS_SeqNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_RVS_IssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_RVS_DefaultFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_RVS_TSOKDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_RVS_CurrentFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_SS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SS_SeqNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SS_IssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SS_DefaultFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SS_TSOKDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SS_GSOKDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SS_CurrentFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_CSSDate_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CSSDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_PS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PS_SeqNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PS_IssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PS_DefaultFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PS_CurrentFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Remarks_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Remarks;


        #endregion
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCompleted;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleOrderOther;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;

        #region MyPorperties
        private string _Customer;


        #endregion

        public CEPPPSListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
        }

        public CEPPPSListForm(string paraArg )
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            _Customer = paraArg;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
        }

        public override void DataBind()
        {
            base.DataBind();

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            this.DataContext = context;

            this.BindingSource.DataSource = from c in context.SPCCustomers where c.Customer == _Customer && c.Phase.ToString() == "2" select c;
        }

        private void bar_Print_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CEPPPSListReport rpt = new CEPPPSListReport(_Customer);

            List<SPCCustomer> list = new List<SPCCustomer>();
            for (int i = 0; i < this.objListGridControl.MainView.DataRowCount; i++)
            {
                SPCCustomer lard = this.objListGridControl.MainView.GetRow(i) as SPCCustomer;
                if (lard != null)
                    list.Add(lard);
            }
            rpt.DataSource = list;
            rpt.ShowPreviewDialog();
        }

        private void InitializeComponent()
        {
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand_StyleInformation = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand_StyleInformation_ZRlay1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_SampleOrderID = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleOrderOther = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_Customer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_CustDept = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_ProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_FtyStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_ExFtyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_DelDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_CustStyleNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_styleid = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PCCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_BriefDesr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_BrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_GroupName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SeasonCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PatternSource = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_BaseSizeSpec = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_BaseSizeSpec_RVS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.column_BaseSizeSpec_NC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_GradeRules = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_GradeRules_RVS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_GradeRules_NC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Construction = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_Construction_RVS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_Construction_NC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Materialinformation = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand_MatlTrims = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_MatlTrims_RVS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_MatlTrims_NC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_MatlTrims_Subt = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_MatlTrims_ReadyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_MatlTrims_PH3DPlasticShoot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Materialinformation_ZRlay2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_MidSpec = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_WorkShop_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_WorkShop = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_FRSDate_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_FRSDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_RVS = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_RVS_SeqNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_RVS_IssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_RVS_DefaultFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_RVS_TSOKDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_RVS_CurrentFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_SS = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_SS_SeqNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SS_IssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SS_DefaultFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SS_TSOKDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SS_GSOKDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SS_CurrentFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_CSSDate_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_CSSDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_PS = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_PS_SeqNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PS_IssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PS_DefaultFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PS_CurrentFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Remarks_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompleted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_Remarks = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.SPC.BO.SPCCustomer);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(3755, 532);
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
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand_StyleInformation,
            this.gridBand_Materialinformation,
            this.gridBand_WorkShop_ZR01,
            this.gridBand_FRSDate_ZR01,
            this.gridBand_RVS,
            this.gridBand_SS,
            this.gridBand_CSSDate_ZR01,
            this.gridBand_PS,
            this.gridBand1,
            this.gridBand_Remarks_ZR01});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.column_SampleOrderID,
            this.column_Customer,
            this.column_CustDept,
            this.column_ProjectNo,
            this.column_FtyStartDate,
            this.column_ExFtyDate,
            this.column_DelDate,
            this.column_CustStyleNr,
            this.column_styleid,
            this.column_PCCode,
            this.column_BriefDesr,
            this.column_BrandName,
            this.column_GroupName,
            this.column_SeasonCode,
            this.column_PatternSource,
            this.column_BaseSizeSpec_RVS,
            this.column_BaseSizeSpec_NC,
            this.column_GradeRules_RVS,
            this.column_GradeRules_NC,
            this.column_Construction_RVS,
            this.column_Construction_NC,
            this.column_MatlTrims_RVS,
            this.column_MatlTrims_NC,
            this.column_MatlTrims_Subt,
            this.column_MatlTrims_ReadyDate,
            this.column_MatlTrims_PH3DPlasticShoot,
            this.column_MidSpec,
            this.column_WorkShop,
            this.column_FRSDate,
            this.column_RVS_SeqNr,
            this.column_RVS_IssueDate,
            this.column_RVS_DefaultFinishDate,
            this.column_RVS_TSOKDate,
            this.column_RVS_CurrentFinishDate,
            this.column_SS_SeqNr,
            this.column_SS_IssueDate,
            this.column_SS_DefaultFinishDate,
            this.column_SS_TSOKDate,
            this.column_SS_GSOKDate,
            this.column_SS_CurrentFinishDate,
            this.column_CSSDate,
            this.column_PS_SeqNr,
            this.column_PS_IssueDate,
            this.column_PS_DefaultFinishDate,
            this.column_PS_CurrentFinishDate,
            this.column_Remarks,
            this.colCompleted,
            this.colSampleOrderOther});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1216, 556, 214, 211);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand_StyleInformation
            // 
            this.gridBand_StyleInformation.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_StyleInformation.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_StyleInformation.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_StyleInformation.Caption = "Style Information";
            this.gridBand_StyleInformation.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand_StyleInformation_ZRlay1,
            this.gridBand_BaseSizeSpec,
            this.gridBand_GradeRules,
            this.gridBand_Construction});
            this.gridBand_StyleInformation.MinWidth = 20;
            this.gridBand_StyleInformation.Name = "gridBand_StyleInformation";
            this.gridBand_StyleInformation.Width = 1660;
            // 
            // gridBand_StyleInformation_ZRlay1
            // 
            this.gridBand_StyleInformation_ZRlay1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_StyleInformation_ZRlay1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_StyleInformation_ZRlay1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_SampleOrderID);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.colSampleOrderOther);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_Customer);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_CustDept);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_ProjectNo);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_FtyStartDate);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_ExFtyDate);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_DelDate);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_CustStyleNr);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_styleid);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_PCCode);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_BriefDesr);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_BrandName);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_GroupName);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_SeasonCode);
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_PatternSource);
            this.gridBand_StyleInformation_ZRlay1.MinWidth = 20;
            this.gridBand_StyleInformation_ZRlay1.Name = "gridBand_StyleInformation_ZRlay1";
            this.gridBand_StyleInformation_ZRlay1.Width = 1420;
            // 
            // column_SampleOrderID
            // 
            this.column_SampleOrderID.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SampleOrderID.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SampleOrderID.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SampleOrderID.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SampleOrderID.Caption = "Sample Order Nr ";
            this.column_SampleOrderID.FieldName = "SampleOrderID";
            this.column_SampleOrderID.Name = "column_SampleOrderID";
            this.column_SampleOrderID.OptionsColumn.AllowEdit = false;
            this.column_SampleOrderID.Visible = true;
            this.column_SampleOrderID.Width = 90;
            // 
            // colSampleOrderOther
            // 
            this.colSampleOrderOther.Caption = "Seq Nr.";
            this.colSampleOrderOther.FieldName = "SampleOrderOther";
            this.colSampleOrderOther.Name = "colSampleOrderOther";
            this.colSampleOrderOther.OptionsColumn.AllowEdit = false;
            this.colSampleOrderOther.Visible = true;
            this.colSampleOrderOther.Width = 85;
            // 
            // column_Customer
            // 
            this.column_Customer.AppearanceHeader.Options.UseTextOptions = true;
            this.column_Customer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Customer.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_Customer.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_Customer.Caption = "Cust Code";
            this.column_Customer.FieldName = "Customer";
            this.column_Customer.Name = "column_Customer";
            this.column_Customer.OptionsColumn.AllowEdit = false;
            this.column_Customer.Visible = true;
            this.column_Customer.Width = 90;
            // 
            // column_CustDept
            // 
            this.column_CustDept.AppearanceHeader.Options.UseTextOptions = true;
            this.column_CustDept.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_CustDept.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_CustDept.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_CustDept.Caption = "Cust Dept";
            this.column_CustDept.FieldName = "CustDept";
            this.column_CustDept.Name = "column_CustDept";
            this.column_CustDept.OptionsColumn.AllowEdit = false;
            this.column_CustDept.Visible = true;
            this.column_CustDept.Width = 90;
            // 
            // column_ProjectNo
            // 
            this.column_ProjectNo.AppearanceHeader.Options.UseTextOptions = true;
            this.column_ProjectNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_ProjectNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_ProjectNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_ProjectNo.Caption = "Project Nr";
            this.column_ProjectNo.FieldName = "ProjectNo";
            this.column_ProjectNo.Name = "column_ProjectNo";
            this.column_ProjectNo.OptionsColumn.AllowEdit = false;
            this.column_ProjectNo.Visible = true;
            this.column_ProjectNo.Width = 90;
            // 
            // column_FtyStartDate
            // 
            this.column_FtyStartDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_FtyStartDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_FtyStartDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_FtyStartDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_FtyStartDate.Caption = "Fty Start Date";
            this.column_FtyStartDate.FieldName = "FtyStartDate";
            this.column_FtyStartDate.Name = "column_FtyStartDate";
            this.column_FtyStartDate.OptionsColumn.AllowEdit = false;
            this.column_FtyStartDate.Visible = true;
            this.column_FtyStartDate.Width = 85;
            // 
            // column_ExFtyDate
            // 
            this.column_ExFtyDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_ExFtyDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_ExFtyDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_ExFtyDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_ExFtyDate.Caption = "Ex-Fty Date";
            this.column_ExFtyDate.FieldName = "ExFtyDate";
            this.column_ExFtyDate.Name = "column_ExFtyDate";
            this.column_ExFtyDate.OptionsColumn.AllowEdit = false;
            this.column_ExFtyDate.Visible = true;
            this.column_ExFtyDate.Width = 85;
            // 
            // column_DelDate
            // 
            this.column_DelDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_DelDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_DelDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_DelDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_DelDate.Caption = "Del Date";
            this.column_DelDate.FieldName = "DelDate";
            this.column_DelDate.Name = "column_DelDate";
            this.column_DelDate.OptionsColumn.AllowEdit = false;
            this.column_DelDate.Visible = true;
            this.column_DelDate.Width = 85;
            // 
            // column_CustStyleNr
            // 
            this.column_CustStyleNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_CustStyleNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_CustStyleNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_CustStyleNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_CustStyleNr.Caption = "Cust Style Nr";
            this.column_CustStyleNr.FieldName = "CustStyleNr";
            this.column_CustStyleNr.Name = "column_CustStyleNr";
            this.column_CustStyleNr.OptionsColumn.AllowEdit = false;
            this.column_CustStyleNr.Visible = true;
            this.column_CustStyleNr.Width = 90;
            // 
            // column_styleid
            // 
            this.column_styleid.AppearanceHeader.Options.UseTextOptions = true;
            this.column_styleid.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_styleid.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_styleid.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_styleid.Caption = "PH Style Nr";
            this.column_styleid.FieldName = "StyleID";
            this.column_styleid.Name = "column_styleid";
            this.column_styleid.OptionsColumn.AllowEdit = false;
            this.column_styleid.Visible = true;
            this.column_styleid.Width = 90;
            // 
            // column_PCCode
            // 
            this.column_PCCode.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PCCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PCCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PCCode.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PCCode.Caption = "PC Code";
            this.column_PCCode.FieldName = "PCCode";
            this.column_PCCode.Name = "column_PCCode";
            this.column_PCCode.OptionsColumn.AllowEdit = false;
            this.column_PCCode.Visible = true;
            this.column_PCCode.Width = 90;
            // 
            // column_BriefDesr
            // 
            this.column_BriefDesr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_BriefDesr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_BriefDesr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_BriefDesr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_BriefDesr.Caption = "Brief Desr.";
            this.column_BriefDesr.FieldName = "BriefDesr";
            this.column_BriefDesr.Name = "column_BriefDesr";
            this.column_BriefDesr.OptionsColumn.AllowEdit = false;
            this.column_BriefDesr.Visible = true;
            this.column_BriefDesr.Width = 90;
            // 
            // column_BrandName
            // 
            this.column_BrandName.AppearanceHeader.Options.UseTextOptions = true;
            this.column_BrandName.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_BrandName.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_BrandName.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_BrandName.Caption = "Brand Name";
            this.column_BrandName.FieldName = "BrandName";
            this.column_BrandName.Name = "column_BrandName";
            this.column_BrandName.OptionsColumn.AllowEdit = false;
            this.column_BrandName.Visible = true;
            this.column_BrandName.Width = 90;
            // 
            // column_GroupName
            // 
            this.column_GroupName.AppearanceHeader.Options.UseTextOptions = true;
            this.column_GroupName.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_GroupName.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_GroupName.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_GroupName.Caption = "Group Name";
            this.column_GroupName.FieldName = "GroupName";
            this.column_GroupName.Name = "column_GroupName";
            this.column_GroupName.OptionsColumn.AllowEdit = false;
            this.column_GroupName.Visible = true;
            this.column_GroupName.Width = 90;
            // 
            // column_SeasonCode
            // 
            this.column_SeasonCode.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SeasonCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SeasonCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SeasonCode.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SeasonCode.Caption = "Season Code";
            this.column_SeasonCode.FieldName = "SeasonCode";
            this.column_SeasonCode.Name = "column_SeasonCode";
            this.column_SeasonCode.OptionsColumn.AllowEdit = false;
            this.column_SeasonCode.Visible = true;
            this.column_SeasonCode.Width = 90;
            // 
            // column_PatternSource
            // 
            this.column_PatternSource.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PatternSource.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PatternSource.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PatternSource.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PatternSource.Caption = "Pattern Source";
            this.column_PatternSource.FieldName = "PatternSource";
            this.column_PatternSource.Name = "column_PatternSource";
            this.column_PatternSource.OptionsColumn.AllowEdit = false;
            this.column_PatternSource.Visible = true;
            this.column_PatternSource.Width = 90;
            // 
            // gridBand_BaseSizeSpec
            // 
            this.gridBand_BaseSizeSpec.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_BaseSizeSpec.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_BaseSizeSpec.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_BaseSizeSpec.Caption = "Base Size Spec.";
            this.gridBand_BaseSizeSpec.Columns.Add(this.column_BaseSizeSpec_RVS);
            this.gridBand_BaseSizeSpec.Columns.Add(this.column_BaseSizeSpec_NC);
            this.gridBand_BaseSizeSpec.MinWidth = 20;
            this.gridBand_BaseSizeSpec.Name = "gridBand_BaseSizeSpec";
            this.gridBand_BaseSizeSpec.Width = 80;
            // 
            // column_BaseSizeSpec_RVS
            // 
            this.column_BaseSizeSpec_RVS.AppearanceHeader.Options.UseTextOptions = true;
            this.column_BaseSizeSpec_RVS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_BaseSizeSpec_RVS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_BaseSizeSpec_RVS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_BaseSizeSpec_RVS.Caption = "RVS";
            this.column_BaseSizeSpec_RVS.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_BaseSizeSpec_RVS.FieldName = "BaseSizeSpec_RVS";
            this.column_BaseSizeSpec_RVS.Name = "column_BaseSizeSpec_RVS";
            this.column_BaseSizeSpec_RVS.OptionsColumn.AllowEdit = false;
            this.column_BaseSizeSpec_RVS.Visible = true;
            this.column_BaseSizeSpec_RVS.Width = 40;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // column_BaseSizeSpec_NC
            // 
            this.column_BaseSizeSpec_NC.AppearanceHeader.Options.UseTextOptions = true;
            this.column_BaseSizeSpec_NC.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_BaseSizeSpec_NC.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_BaseSizeSpec_NC.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_BaseSizeSpec_NC.Caption = "NC";
            this.column_BaseSizeSpec_NC.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_BaseSizeSpec_NC.FieldName = "BaseSizeSpec_NC";
            this.column_BaseSizeSpec_NC.Name = "column_BaseSizeSpec_NC";
            this.column_BaseSizeSpec_NC.OptionsColumn.AllowEdit = false;
            this.column_BaseSizeSpec_NC.Visible = true;
            this.column_BaseSizeSpec_NC.Width = 40;
            // 
            // gridBand_GradeRules
            // 
            this.gridBand_GradeRules.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_GradeRules.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_GradeRules.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_GradeRules.Caption = "Grade Rules";
            this.gridBand_GradeRules.Columns.Add(this.column_GradeRules_RVS);
            this.gridBand_GradeRules.Columns.Add(this.column_GradeRules_NC);
            this.gridBand_GradeRules.MinWidth = 20;
            this.gridBand_GradeRules.Name = "gridBand_GradeRules";
            this.gridBand_GradeRules.Width = 80;
            // 
            // column_GradeRules_RVS
            // 
            this.column_GradeRules_RVS.AppearanceHeader.Options.UseTextOptions = true;
            this.column_GradeRules_RVS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_GradeRules_RVS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_GradeRules_RVS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_GradeRules_RVS.Caption = "RVS";
            this.column_GradeRules_RVS.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_GradeRules_RVS.FieldName = "GradeRules_RVS";
            this.column_GradeRules_RVS.Name = "column_GradeRules_RVS";
            this.column_GradeRules_RVS.OptionsColumn.AllowEdit = false;
            this.column_GradeRules_RVS.Visible = true;
            this.column_GradeRules_RVS.Width = 40;
            // 
            // column_GradeRules_NC
            // 
            this.column_GradeRules_NC.AppearanceHeader.Options.UseTextOptions = true;
            this.column_GradeRules_NC.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_GradeRules_NC.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_GradeRules_NC.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_GradeRules_NC.Caption = "NC";
            this.column_GradeRules_NC.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_GradeRules_NC.FieldName = "GradeRules_NC";
            this.column_GradeRules_NC.Name = "column_GradeRules_NC";
            this.column_GradeRules_NC.OptionsColumn.AllowEdit = false;
            this.column_GradeRules_NC.Visible = true;
            this.column_GradeRules_NC.Width = 40;
            // 
            // gridBand_Construction
            // 
            this.gridBand_Construction.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_Construction.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_Construction.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_Construction.Caption = "Construction";
            this.gridBand_Construction.Columns.Add(this.column_Construction_RVS);
            this.gridBand_Construction.Columns.Add(this.column_Construction_NC);
            this.gridBand_Construction.MinWidth = 20;
            this.gridBand_Construction.Name = "gridBand_Construction";
            this.gridBand_Construction.Width = 80;
            // 
            // column_Construction_RVS
            // 
            this.column_Construction_RVS.AppearanceHeader.Options.UseTextOptions = true;
            this.column_Construction_RVS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Construction_RVS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_Construction_RVS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_Construction_RVS.Caption = "RVS";
            this.column_Construction_RVS.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_Construction_RVS.FieldName = "Construction_RVS";
            this.column_Construction_RVS.Name = "column_Construction_RVS";
            this.column_Construction_RVS.OptionsColumn.AllowEdit = false;
            this.column_Construction_RVS.Visible = true;
            this.column_Construction_RVS.Width = 40;
            // 
            // column_Construction_NC
            // 
            this.column_Construction_NC.AppearanceHeader.Options.UseTextOptions = true;
            this.column_Construction_NC.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Construction_NC.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_Construction_NC.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_Construction_NC.Caption = "NC";
            this.column_Construction_NC.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_Construction_NC.FieldName = "Construction_NC";
            this.column_Construction_NC.Name = "column_Construction_NC";
            this.column_Construction_NC.OptionsColumn.AllowEdit = false;
            this.column_Construction_NC.Visible = true;
            this.column_Construction_NC.Width = 40;
            // 
            // gridBand_Materialinformation
            // 
            this.gridBand_Materialinformation.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_Materialinformation.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_Materialinformation.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_Materialinformation.Caption = "Material information";
            this.gridBand_Materialinformation.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand_MatlTrims,
            this.gridBand_Materialinformation_ZRlay2});
            this.gridBand_Materialinformation.MinWidth = 20;
            this.gridBand_Materialinformation.Name = "gridBand_Materialinformation";
            this.gridBand_Materialinformation.Width = 385;
            // 
            // gridBand_MatlTrims
            // 
            this.gridBand_MatlTrims.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_MatlTrims.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_MatlTrims.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_MatlTrims.Caption = "Mat\'l / Trims";
            this.gridBand_MatlTrims.Columns.Add(this.column_MatlTrims_RVS);
            this.gridBand_MatlTrims.Columns.Add(this.column_MatlTrims_NC);
            this.gridBand_MatlTrims.Columns.Add(this.column_MatlTrims_Subt);
            this.gridBand_MatlTrims.Columns.Add(this.column_MatlTrims_ReadyDate);
            this.gridBand_MatlTrims.Columns.Add(this.column_MatlTrims_PH3DPlasticShoot);
            this.gridBand_MatlTrims.MinWidth = 20;
            this.gridBand_MatlTrims.Name = "gridBand_MatlTrims";
            this.gridBand_MatlTrims.Width = 295;
            // 
            // column_MatlTrims_RVS
            // 
            this.column_MatlTrims_RVS.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MatlTrims_RVS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MatlTrims_RVS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MatlTrims_RVS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MatlTrims_RVS.Caption = "RVS";
            this.column_MatlTrims_RVS.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_MatlTrims_RVS.FieldName = "MatlTrims_RVS";
            this.column_MatlTrims_RVS.Name = "column_MatlTrims_RVS";
            this.column_MatlTrims_RVS.OptionsColumn.AllowEdit = false;
            this.column_MatlTrims_RVS.Visible = true;
            this.column_MatlTrims_RVS.Width = 40;
            // 
            // column_MatlTrims_NC
            // 
            this.column_MatlTrims_NC.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MatlTrims_NC.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MatlTrims_NC.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MatlTrims_NC.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MatlTrims_NC.Caption = "NC";
            this.column_MatlTrims_NC.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_MatlTrims_NC.FieldName = "MatlTrims_NC";
            this.column_MatlTrims_NC.Name = "column_MatlTrims_NC";
            this.column_MatlTrims_NC.OptionsColumn.AllowEdit = false;
            this.column_MatlTrims_NC.Visible = true;
            this.column_MatlTrims_NC.Width = 40;
            // 
            // column_MatlTrims_Subt
            // 
            this.column_MatlTrims_Subt.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MatlTrims_Subt.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MatlTrims_Subt.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MatlTrims_Subt.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MatlTrims_Subt.Caption = "Subt";
            this.column_MatlTrims_Subt.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_MatlTrims_Subt.FieldName = "MatlTrims_Subt";
            this.column_MatlTrims_Subt.Name = "column_MatlTrims_Subt";
            this.column_MatlTrims_Subt.OptionsColumn.AllowEdit = false;
            this.column_MatlTrims_Subt.Visible = true;
            this.column_MatlTrims_Subt.Width = 40;
            // 
            // column_MatlTrims_ReadyDate
            // 
            this.column_MatlTrims_ReadyDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MatlTrims_ReadyDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MatlTrims_ReadyDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MatlTrims_ReadyDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MatlTrims_ReadyDate.Caption = "Ready Date";
            this.column_MatlTrims_ReadyDate.FieldName = "MatlTrims_ReadyDate";
            this.column_MatlTrims_ReadyDate.Name = "column_MatlTrims_ReadyDate";
            this.column_MatlTrims_ReadyDate.Visible = true;
            this.column_MatlTrims_ReadyDate.Width = 85;
            // 
            // column_MatlTrims_PH3DPlasticShoot
            // 
            this.column_MatlTrims_PH3DPlasticShoot.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MatlTrims_PH3DPlasticShoot.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MatlTrims_PH3DPlasticShoot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MatlTrims_PH3DPlasticShoot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MatlTrims_PH3DPlasticShoot.Caption = "PH 3D Plastic Shoot";
            this.column_MatlTrims_PH3DPlasticShoot.FieldName = "MatlTrims_PH3DPlasticShoot";
            this.column_MatlTrims_PH3DPlasticShoot.Name = "column_MatlTrims_PH3DPlasticShoot";
            this.column_MatlTrims_PH3DPlasticShoot.Visible = true;
            this.column_MatlTrims_PH3DPlasticShoot.Width = 90;
            // 
            // gridBand_Materialinformation_ZRlay2
            // 
            this.gridBand_Materialinformation_ZRlay2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_Materialinformation_ZRlay2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_Materialinformation_ZRlay2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_Materialinformation_ZRlay2.Columns.Add(this.column_MidSpec);
            this.gridBand_Materialinformation_ZRlay2.MinWidth = 20;
            this.gridBand_Materialinformation_ZRlay2.Name = "gridBand_Materialinformation_ZRlay2";
            this.gridBand_Materialinformation_ZRlay2.Width = 90;
            // 
            // column_MidSpec
            // 
            this.column_MidSpec.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MidSpec.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MidSpec.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MidSpec.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MidSpec.Caption = "Mid Spec";
            this.column_MidSpec.FieldName = "MidSpec";
            this.column_MidSpec.Name = "column_MidSpec";
            this.column_MidSpec.Visible = true;
            this.column_MidSpec.Width = 90;
            // 
            // gridBand_WorkShop_ZR01
            // 
            this.gridBand_WorkShop_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_WorkShop_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_WorkShop_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_WorkShop_ZR01.Caption = "Work Shop";
            this.gridBand_WorkShop_ZR01.Columns.Add(this.column_WorkShop);
            this.gridBand_WorkShop_ZR01.MinWidth = 20;
            this.gridBand_WorkShop_ZR01.Name = "gridBand_WorkShop_ZR01";
            this.gridBand_WorkShop_ZR01.Width = 90;
            // 
            // column_WorkShop
            // 
            this.column_WorkShop.AppearanceHeader.Options.UseTextOptions = true;
            this.column_WorkShop.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_WorkShop.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_WorkShop.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_WorkShop.Caption = "Work Shop";
            this.column_WorkShop.FieldName = "WorkShop";
            this.column_WorkShop.Name = "column_WorkShop";
            this.column_WorkShop.OptionsColumn.AllowEdit = false;
            this.column_WorkShop.Visible = true;
            this.column_WorkShop.Width = 90;
            // 
            // gridBand_FRSDate_ZR01
            // 
            this.gridBand_FRSDate_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_FRSDate_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_FRSDate_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_FRSDate_ZR01.Caption = "FRS Date";
            this.gridBand_FRSDate_ZR01.Columns.Add(this.column_FRSDate);
            this.gridBand_FRSDate_ZR01.MinWidth = 20;
            this.gridBand_FRSDate_ZR01.Name = "gridBand_FRSDate_ZR01";
            this.gridBand_FRSDate_ZR01.Width = 85;
            // 
            // column_FRSDate
            // 
            this.column_FRSDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_FRSDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_FRSDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_FRSDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_FRSDate.Caption = "FRS Date";
            this.column_FRSDate.FieldName = "FRSDate";
            this.column_FRSDate.Name = "column_FRSDate";
            this.column_FRSDate.OptionsColumn.AllowEdit = false;
            this.column_FRSDate.Visible = true;
            this.column_FRSDate.Width = 85;
            // 
            // gridBand_RVS
            // 
            this.gridBand_RVS.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_RVS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_RVS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_RVS.Caption = "RVS";
            this.gridBand_RVS.Columns.Add(this.column_RVS_SeqNr);
            this.gridBand_RVS.Columns.Add(this.column_RVS_IssueDate);
            this.gridBand_RVS.Columns.Add(this.column_RVS_DefaultFinishDate);
            this.gridBand_RVS.Columns.Add(this.column_RVS_TSOKDate);
            this.gridBand_RVS.Columns.Add(this.column_RVS_CurrentFinishDate);
            this.gridBand_RVS.MinWidth = 20;
            this.gridBand_RVS.Name = "gridBand_RVS";
            this.gridBand_RVS.Width = 430;
            // 
            // column_RVS_SeqNr
            // 
            this.column_RVS_SeqNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_RVS_SeqNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_RVS_SeqNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_RVS_SeqNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_RVS_SeqNr.Caption = "Seq  Nr.";
            this.column_RVS_SeqNr.FieldName = "RVS_SeqNr";
            this.column_RVS_SeqNr.Name = "column_RVS_SeqNr";
            this.column_RVS_SeqNr.OptionsColumn.AllowEdit = false;
            this.column_RVS_SeqNr.Visible = true;
            this.column_RVS_SeqNr.Width = 90;
            // 
            // column_RVS_IssueDate
            // 
            this.column_RVS_IssueDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_RVS_IssueDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_RVS_IssueDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_RVS_IssueDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_RVS_IssueDate.Caption = "Issue Date";
            this.column_RVS_IssueDate.FieldName = "RVS_IssueDate";
            this.column_RVS_IssueDate.Name = "column_RVS_IssueDate";
            this.column_RVS_IssueDate.OptionsColumn.AllowEdit = false;
            this.column_RVS_IssueDate.Visible = true;
            this.column_RVS_IssueDate.Width = 85;
            // 
            // column_RVS_DefaultFinishDate
            // 
            this.column_RVS_DefaultFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_RVS_DefaultFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_RVS_DefaultFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_RVS_DefaultFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_RVS_DefaultFinishDate.Caption = "Default Finish Date";
            this.column_RVS_DefaultFinishDate.FieldName = "RVS_DefaultFinishDate";
            this.column_RVS_DefaultFinishDate.Name = "column_RVS_DefaultFinishDate";
            this.column_RVS_DefaultFinishDate.OptionsColumn.AllowEdit = false;
            this.column_RVS_DefaultFinishDate.Visible = true;
            this.column_RVS_DefaultFinishDate.Width = 85;
            // 
            // column_RVS_TSOKDate
            // 
            this.column_RVS_TSOKDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_RVS_TSOKDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_RVS_TSOKDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_RVS_TSOKDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_RVS_TSOKDate.Caption = "TS OK Date";
            this.column_RVS_TSOKDate.FieldName = "RVS_TSOKDate";
            this.column_RVS_TSOKDate.Name = "column_RVS_TSOKDate";
            this.column_RVS_TSOKDate.Visible = true;
            this.column_RVS_TSOKDate.Width = 85;
            // 
            // column_RVS_CurrentFinishDate
            // 
            this.column_RVS_CurrentFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_RVS_CurrentFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_RVS_CurrentFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_RVS_CurrentFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_RVS_CurrentFinishDate.Caption = "Current Finish Date";
            this.column_RVS_CurrentFinishDate.FieldName = "RVS_CurrentFinishDate";
            this.column_RVS_CurrentFinishDate.Name = "column_RVS_CurrentFinishDate";
            this.column_RVS_CurrentFinishDate.OptionsColumn.AllowEdit = false;
            this.column_RVS_CurrentFinishDate.Visible = true;
            this.column_RVS_CurrentFinishDate.Width = 85;
            // 
            // gridBand_SS
            // 
            this.gridBand_SS.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_SS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_SS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_SS.Caption = "SS";
            this.gridBand_SS.Columns.Add(this.column_SS_SeqNr);
            this.gridBand_SS.Columns.Add(this.column_SS_IssueDate);
            this.gridBand_SS.Columns.Add(this.column_SS_DefaultFinishDate);
            this.gridBand_SS.Columns.Add(this.column_SS_TSOKDate);
            this.gridBand_SS.Columns.Add(this.column_SS_GSOKDate);
            this.gridBand_SS.Columns.Add(this.column_SS_CurrentFinishDate);
            this.gridBand_SS.MinWidth = 20;
            this.gridBand_SS.Name = "gridBand_SS";
            this.gridBand_SS.Width = 515;
            // 
            // column_SS_SeqNr
            // 
            this.column_SS_SeqNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SS_SeqNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SS_SeqNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SS_SeqNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SS_SeqNr.Caption = "Seq  Nr.";
            this.column_SS_SeqNr.FieldName = "SS_SeqNr";
            this.column_SS_SeqNr.Name = "column_SS_SeqNr";
            this.column_SS_SeqNr.OptionsColumn.AllowEdit = false;
            this.column_SS_SeqNr.Visible = true;
            this.column_SS_SeqNr.Width = 90;
            // 
            // column_SS_IssueDate
            // 
            this.column_SS_IssueDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SS_IssueDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SS_IssueDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SS_IssueDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SS_IssueDate.Caption = "Issue Date";
            this.column_SS_IssueDate.FieldName = "SS_IssueDate";
            this.column_SS_IssueDate.Name = "column_SS_IssueDate";
            this.column_SS_IssueDate.OptionsColumn.AllowEdit = false;
            this.column_SS_IssueDate.Visible = true;
            this.column_SS_IssueDate.Width = 85;
            // 
            // column_SS_DefaultFinishDate
            // 
            this.column_SS_DefaultFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SS_DefaultFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SS_DefaultFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SS_DefaultFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SS_DefaultFinishDate.Caption = "Default Finish Date";
            this.column_SS_DefaultFinishDate.FieldName = "SS_DefaultFinishDate";
            this.column_SS_DefaultFinishDate.Name = "column_SS_DefaultFinishDate";
            this.column_SS_DefaultFinishDate.OptionsColumn.AllowEdit = false;
            this.column_SS_DefaultFinishDate.Visible = true;
            this.column_SS_DefaultFinishDate.Width = 85;
            // 
            // column_SS_TSOKDate
            // 
            this.column_SS_TSOKDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SS_TSOKDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SS_TSOKDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SS_TSOKDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SS_TSOKDate.Caption = "TS OK Date";
            this.column_SS_TSOKDate.FieldName = "SS_TSOKDate";
            this.column_SS_TSOKDate.Name = "column_SS_TSOKDate";
            this.column_SS_TSOKDate.Visible = true;
            this.column_SS_TSOKDate.Width = 85;
            // 
            // column_SS_GSOKDate
            // 
            this.column_SS_GSOKDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SS_GSOKDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SS_GSOKDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SS_GSOKDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SS_GSOKDate.Caption = "GS OK Date";
            this.column_SS_GSOKDate.FieldName = "SS_GSOKDate";
            this.column_SS_GSOKDate.Name = "column_SS_GSOKDate";
            this.column_SS_GSOKDate.Visible = true;
            this.column_SS_GSOKDate.Width = 85;
            // 
            // column_SS_CurrentFinishDate
            // 
            this.column_SS_CurrentFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SS_CurrentFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SS_CurrentFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SS_CurrentFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SS_CurrentFinishDate.Caption = "Current Finish Date";
            this.column_SS_CurrentFinishDate.FieldName = "SS_CurrentFinishDate";
            this.column_SS_CurrentFinishDate.Name = "column_SS_CurrentFinishDate";
            this.column_SS_CurrentFinishDate.OptionsColumn.AllowEdit = false;
            this.column_SS_CurrentFinishDate.Visible = true;
            this.column_SS_CurrentFinishDate.Width = 85;
            // 
            // gridBand_CSSDate_ZR01
            // 
            this.gridBand_CSSDate_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_CSSDate_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_CSSDate_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_CSSDate_ZR01.Caption = "CSS Date";
            this.gridBand_CSSDate_ZR01.Columns.Add(this.column_CSSDate);
            this.gridBand_CSSDate_ZR01.MinWidth = 20;
            this.gridBand_CSSDate_ZR01.Name = "gridBand_CSSDate_ZR01";
            this.gridBand_CSSDate_ZR01.Width = 85;
            // 
            // column_CSSDate
            // 
            this.column_CSSDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_CSSDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_CSSDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_CSSDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_CSSDate.Caption = "CSS Date";
            this.column_CSSDate.FieldName = "CSSDate";
            this.column_CSSDate.Name = "column_CSSDate";
            this.column_CSSDate.OptionsColumn.AllowEdit = false;
            this.column_CSSDate.Visible = true;
            this.column_CSSDate.Width = 85;
            // 
            // gridBand_PS
            // 
            this.gridBand_PS.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_PS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_PS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_PS.Caption = "PS";
            this.gridBand_PS.Columns.Add(this.column_PS_SeqNr);
            this.gridBand_PS.Columns.Add(this.column_PS_IssueDate);
            this.gridBand_PS.Columns.Add(this.column_PS_DefaultFinishDate);
            this.gridBand_PS.Columns.Add(this.column_PS_CurrentFinishDate);
            this.gridBand_PS.MinWidth = 20;
            this.gridBand_PS.Name = "gridBand_PS";
            this.gridBand_PS.Width = 345;
            // 
            // column_PS_SeqNr
            // 
            this.column_PS_SeqNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PS_SeqNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PS_SeqNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PS_SeqNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PS_SeqNr.Caption = "Seq  Nr.";
            this.column_PS_SeqNr.FieldName = "PS_SeqNr";
            this.column_PS_SeqNr.Name = "column_PS_SeqNr";
            this.column_PS_SeqNr.OptionsColumn.AllowEdit = false;
            this.column_PS_SeqNr.Visible = true;
            this.column_PS_SeqNr.Width = 90;
            // 
            // column_PS_IssueDate
            // 
            this.column_PS_IssueDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PS_IssueDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PS_IssueDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PS_IssueDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PS_IssueDate.Caption = "Issue Date";
            this.column_PS_IssueDate.FieldName = "PS_IssueDate";
            this.column_PS_IssueDate.Name = "column_PS_IssueDate";
            this.column_PS_IssueDate.OptionsColumn.AllowEdit = false;
            this.column_PS_IssueDate.Visible = true;
            this.column_PS_IssueDate.Width = 85;
            // 
            // column_PS_DefaultFinishDate
            // 
            this.column_PS_DefaultFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PS_DefaultFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PS_DefaultFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PS_DefaultFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PS_DefaultFinishDate.Caption = "Default Finish Date";
            this.column_PS_DefaultFinishDate.FieldName = "PS_DefaultFinishDate";
            this.column_PS_DefaultFinishDate.Name = "column_PS_DefaultFinishDate";
            this.column_PS_DefaultFinishDate.OptionsColumn.AllowEdit = false;
            this.column_PS_DefaultFinishDate.Visible = true;
            this.column_PS_DefaultFinishDate.Width = 85;
            // 
            // column_PS_CurrentFinishDate
            // 
            this.column_PS_CurrentFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PS_CurrentFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PS_CurrentFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PS_CurrentFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PS_CurrentFinishDate.Caption = "Current Finish Date";
            this.column_PS_CurrentFinishDate.FieldName = "PS_CurrentFinishDate";
            this.column_PS_CurrentFinishDate.Name = "column_PS_CurrentFinishDate";
            this.column_PS_CurrentFinishDate.OptionsColumn.AllowEdit = false;
            this.column_PS_CurrentFinishDate.Visible = true;
            this.column_PS_CurrentFinishDate.Width = 85;
            // 
            // gridBand_Remarks_ZR01
            // 
            this.gridBand_Remarks_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_Remarks_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_Remarks_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_Remarks_ZR01.Caption = "Remarks";
            this.gridBand_Remarks_ZR01.Columns.Add(this.column_Remarks);
            this.gridBand_Remarks_ZR01.MinWidth = 20;
            this.gridBand_Remarks_ZR01.Name = "gridBand_Remarks_ZR01";
            this.gridBand_Remarks_ZR01.Width = 90;
            // 
            // colCompleted
            // 
            this.colCompleted.Caption = "Completed";
            this.colCompleted.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCompleted.FieldName = "Completed";
            this.colCompleted.Name = "colCompleted";
            this.colCompleted.Visible = true;
            this.colCompleted.Width = 94;
            // 
            // column_Remarks
            // 
            this.column_Remarks.AppearanceHeader.Options.UseTextOptions = true;
            this.column_Remarks.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Remarks.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_Remarks.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_Remarks.Caption = "Remarks";
            this.column_Remarks.FieldName = "Remarks";
            this.column_Remarks.Name = "column_Remarks";
            this.column_Remarks.Visible = true;
            this.column_Remarks.Width = 90;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Print";
            this.barButtonItem1.Id = 39;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bar_Print_ItemClick);
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.Caption = "Completed";
            this.gridBand1.Columns.Add(this.colCompleted);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 94;
            // 
            // CEPPPSListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CEPPPSListForm";
            this.Size = new System.Drawing.Size(3755, 558);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }
    }
}

