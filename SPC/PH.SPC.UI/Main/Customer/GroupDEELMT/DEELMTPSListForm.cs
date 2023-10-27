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
    public partial class DEELMTPSListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region AutoPorperties
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_StyleInformation;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_StyleInformation_ZRlay1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SampleOrderID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Customer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CustDept;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CustPONr;
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
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Materialinformation_ZRlay2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MidSpec;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_WorkShop_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_WorkShop;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_PP;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PP_SeqNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PP_IssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PP_DefaultFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PP_CurrentFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_FIT;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_FIT_SeqNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_FIT_IssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_FIT_DefaultFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_FIT_CurrentFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_WS_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_WS;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_CMS_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CMS;
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

        public DEELMTPSListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
        }

        public DEELMTPSListForm(string paraArg)
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
            _Customer = paraArg;

        }

        public override void DataBind()
        {
            base.DataBind();

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            this.DataContext = context;

            this.BindingSource.DataSource = from c in context.SPCCustomers where c.Customer == _Customer  && c.Phase.ToString() == "3" select c;
        }

        private void bar_Print_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DEELMTPSListReport rpt = new DEELMTPSListReport(_Customer);
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
            this.column_Customer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_CustDept = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_CustPONr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
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
            this.gridBand_Materialinformation_ZRlay2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_MidSpec = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_WorkShop_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_WorkShop = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_PP = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_PP_SeqNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PP_IssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PP_DefaultFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PP_CurrentFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_FIT = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_FIT_SeqNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_FIT_IssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_FIT_DefaultFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_FIT_CurrentFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_WS_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_WS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_CMS_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_CMS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Remarks_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompleted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_Remarks = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.colSampleOrderOther = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(3137, 532);
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
            this.gridBand_PP,
            this.gridBand_FIT,
            this.gridBand_WS_ZR01,
            this.gridBand_CMS_ZR01,
            this.gridBand1,
            this.gridBand_Remarks_ZR01});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.column_SampleOrderID,
            this.column_Customer,
            this.column_CustDept,
            this.column_CustPONr,
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
            this.column_MidSpec,
            this.column_WorkShop,
            this.column_PP_SeqNr,
            this.column_PP_IssueDate,
            this.column_PP_DefaultFinishDate,
            this.column_PP_CurrentFinishDate,
            this.column_FIT_SeqNr,
            this.column_FIT_IssueDate,
            this.column_FIT_DefaultFinishDate,
            this.column_FIT_CurrentFinishDate,
            this.column_WS,
            this.column_CMS,
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
            this.gridBand_StyleInformation.Width = 1740;
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
            this.gridBand_StyleInformation_ZRlay1.Columns.Add(this.column_CustPONr);
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
            this.gridBand_StyleInformation_ZRlay1.Width = 1500;
            // 
            // column_SampleOrderID
            // 
            this.column_SampleOrderID.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SampleOrderID.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SampleOrderID.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SampleOrderID.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SampleOrderID.Caption = "Sample Order Nr";
            this.column_SampleOrderID.FieldName = "SampleOrderID";
            this.column_SampleOrderID.Name = "column_SampleOrderID";
            this.column_SampleOrderID.OptionsColumn.AllowEdit = false;
            this.column_SampleOrderID.Visible = true;
            this.column_SampleOrderID.Width = 90;
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
            // column_CustPONr
            // 
            this.column_CustPONr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_CustPONr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_CustPONr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_CustPONr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_CustPONr.Caption = "PO Nr";
            this.column_CustPONr.FieldName = "CustPONr";
            this.column_CustPONr.Name = "column_CustPONr";
            this.column_CustPONr.Visible = true;
            this.column_CustPONr.Width = 90;
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
            this.gridBand_Materialinformation.Width = 295;
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
            this.gridBand_MatlTrims.MinWidth = 20;
            this.gridBand_MatlTrims.Name = "gridBand_MatlTrims";
            this.gridBand_MatlTrims.Width = 205;
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
            // gridBand_PP
            // 
            this.gridBand_PP.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_PP.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_PP.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_PP.Caption = "PP";
            this.gridBand_PP.Columns.Add(this.column_PP_SeqNr);
            this.gridBand_PP.Columns.Add(this.column_PP_IssueDate);
            this.gridBand_PP.Columns.Add(this.column_PP_DefaultFinishDate);
            this.gridBand_PP.Columns.Add(this.column_PP_CurrentFinishDate);
            this.gridBand_PP.MinWidth = 20;
            this.gridBand_PP.Name = "gridBand_PP";
            this.gridBand_PP.Width = 345;
            // 
            // column_PP_SeqNr
            // 
            this.column_PP_SeqNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PP_SeqNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PP_SeqNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PP_SeqNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PP_SeqNr.Caption = "Seq  Nr.";
            this.column_PP_SeqNr.FieldName = "PP_SeqNr";
            this.column_PP_SeqNr.Name = "column_PP_SeqNr";
            this.column_PP_SeqNr.OptionsColumn.AllowEdit = false;
            this.column_PP_SeqNr.Visible = true;
            this.column_PP_SeqNr.Width = 90;
            // 
            // column_PP_IssueDate
            // 
            this.column_PP_IssueDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PP_IssueDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PP_IssueDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PP_IssueDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PP_IssueDate.Caption = "Issue Date";
            this.column_PP_IssueDate.FieldName = "PP_IssueDate";
            this.column_PP_IssueDate.Name = "column_PP_IssueDate";
            this.column_PP_IssueDate.OptionsColumn.AllowEdit = false;
            this.column_PP_IssueDate.Visible = true;
            this.column_PP_IssueDate.Width = 85;
            // 
            // column_PP_DefaultFinishDate
            // 
            this.column_PP_DefaultFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PP_DefaultFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PP_DefaultFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PP_DefaultFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PP_DefaultFinishDate.Caption = "Default Finish Date";
            this.column_PP_DefaultFinishDate.FieldName = "PP_DefaultFinishDate";
            this.column_PP_DefaultFinishDate.Name = "column_PP_DefaultFinishDate";
            this.column_PP_DefaultFinishDate.OptionsColumn.AllowEdit = false;
            this.column_PP_DefaultFinishDate.Visible = true;
            this.column_PP_DefaultFinishDate.Width = 85;
            // 
            // column_PP_CurrentFinishDate
            // 
            this.column_PP_CurrentFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_PP_CurrentFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_PP_CurrentFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_PP_CurrentFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_PP_CurrentFinishDate.Caption = "Current Finish Date";
            this.column_PP_CurrentFinishDate.FieldName = "PP_CurrentFinishDate";
            this.column_PP_CurrentFinishDate.Name = "column_PP_CurrentFinishDate";
            this.column_PP_CurrentFinishDate.OptionsColumn.AllowEdit = false;
            this.column_PP_CurrentFinishDate.Visible = true;
            this.column_PP_CurrentFinishDate.Width = 85;
            // 
            // gridBand_FIT
            // 
            this.gridBand_FIT.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_FIT.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_FIT.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_FIT.Caption = "FIT";
            this.gridBand_FIT.Columns.Add(this.column_FIT_SeqNr);
            this.gridBand_FIT.Columns.Add(this.column_FIT_IssueDate);
            this.gridBand_FIT.Columns.Add(this.column_FIT_DefaultFinishDate);
            this.gridBand_FIT.Columns.Add(this.column_FIT_CurrentFinishDate);
            this.gridBand_FIT.MinWidth = 20;
            this.gridBand_FIT.Name = "gridBand_FIT";
            this.gridBand_FIT.Width = 345;
            // 
            // column_FIT_SeqNr
            // 
            this.column_FIT_SeqNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_FIT_SeqNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_FIT_SeqNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_FIT_SeqNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_FIT_SeqNr.Caption = "Seq  Nr.";
            this.column_FIT_SeqNr.FieldName = "FIT_SeqNr";
            this.column_FIT_SeqNr.Name = "column_FIT_SeqNr";
            this.column_FIT_SeqNr.OptionsColumn.AllowEdit = false;
            this.column_FIT_SeqNr.Visible = true;
            this.column_FIT_SeqNr.Width = 90;
            // 
            // column_FIT_IssueDate
            // 
            this.column_FIT_IssueDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_FIT_IssueDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_FIT_IssueDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_FIT_IssueDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_FIT_IssueDate.Caption = "Issue Date";
            this.column_FIT_IssueDate.FieldName = "FIT_IssueDate";
            this.column_FIT_IssueDate.Name = "column_FIT_IssueDate";
            this.column_FIT_IssueDate.OptionsColumn.AllowEdit = false;
            this.column_FIT_IssueDate.Visible = true;
            this.column_FIT_IssueDate.Width = 85;
            // 
            // column_FIT_DefaultFinishDate
            // 
            this.column_FIT_DefaultFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_FIT_DefaultFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_FIT_DefaultFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_FIT_DefaultFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_FIT_DefaultFinishDate.Caption = "Default Finish Date";
            this.column_FIT_DefaultFinishDate.FieldName = "FIT_DefaultFinishDate";
            this.column_FIT_DefaultFinishDate.Name = "column_FIT_DefaultFinishDate";
            this.column_FIT_DefaultFinishDate.OptionsColumn.AllowEdit = false;
            this.column_FIT_DefaultFinishDate.Visible = true;
            this.column_FIT_DefaultFinishDate.Width = 85;
            // 
            // column_FIT_CurrentFinishDate
            // 
            this.column_FIT_CurrentFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_FIT_CurrentFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_FIT_CurrentFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_FIT_CurrentFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_FIT_CurrentFinishDate.Caption = "Current Finish Date";
            this.column_FIT_CurrentFinishDate.FieldName = "FIT_CurrentFinishDate";
            this.column_FIT_CurrentFinishDate.Name = "column_FIT_CurrentFinishDate";
            this.column_FIT_CurrentFinishDate.OptionsColumn.AllowEdit = false;
            this.column_FIT_CurrentFinishDate.Visible = true;
            this.column_FIT_CurrentFinishDate.Width = 85;
            // 
            // gridBand_WS_ZR01
            // 
            this.gridBand_WS_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_WS_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_WS_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_WS_ZR01.Caption = "WS";
            this.gridBand_WS_ZR01.Columns.Add(this.column_WS);
            this.gridBand_WS_ZR01.MinWidth = 20;
            this.gridBand_WS_ZR01.Name = "gridBand_WS_ZR01";
            this.gridBand_WS_ZR01.Width = 90;
            // 
            // column_WS
            // 
            this.column_WS.AppearanceHeader.Options.UseTextOptions = true;
            this.column_WS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_WS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_WS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_WS.Caption = "WS";
            this.column_WS.FieldName = "WS";
            this.column_WS.Name = "column_WS";
            this.column_WS.Visible = true;
            this.column_WS.Width = 90;
            // 
            // gridBand_CMS_ZR01
            // 
            this.gridBand_CMS_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_CMS_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_CMS_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_CMS_ZR01.Caption = "CMS";
            this.gridBand_CMS_ZR01.Columns.Add(this.column_CMS);
            this.gridBand_CMS_ZR01.MinWidth = 20;
            this.gridBand_CMS_ZR01.Name = "gridBand_CMS_ZR01";
            this.gridBand_CMS_ZR01.Width = 85;
            // 
            // column_CMS
            // 
            this.column_CMS.AppearanceHeader.Options.UseTextOptions = true;
            this.column_CMS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_CMS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_CMS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_CMS.Caption = "CMS";
            this.column_CMS.FieldName = "CMS";
            this.column_CMS.Name = "column_CMS";
            this.column_CMS.OptionsColumn.AllowEdit = false;
            this.column_CMS.Visible = true;
            this.column_CMS.Width = 85;
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
            this.colCompleted.Width = 92;
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
            // colSampleOrderOther
            // 
            this.colSampleOrderOther.Caption = "Seq Nr.";
            this.colSampleOrderOther.FieldName = "SampleOrderOther";
            this.colSampleOrderOther.Name = "colSampleOrderOther";
            this.colSampleOrderOther.Visible = true;
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.Caption = "Completed";
            this.gridBand1.Columns.Add(this.colCompleted);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 92;
            // 
            // DEELMTPSListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DEELMTPSListForm";
            this.Size = new System.Drawing.Size(3137, 558);
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

