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
    public partial class CEPMarketingListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region AutoPorperties
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_StyleInformation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SampleOrderID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Customer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CustDept;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_CustStyleNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_styleid;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PCCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_BriefDesr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_BrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_GroupName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SeasonCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_PatternSource;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_ColorStatus_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_ColorStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_MaterialStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MaterialStatus_SampleYardageDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MaterialStatus_RedyeDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_MaterialStatus_MidSpec;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_SampleMakeOrNot_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SampleMakeOrNot;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_WorkShop_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_WorkShop;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_SamplePatternStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SPS_SeqNr;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SPS_IssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SPS_DefaultFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SPS_TrialSampleDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_SPS_CurrentFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_QuotationSatuts;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_QuotationSatuts_ZRlay1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_QS_MIDc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_QS_Pattern;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_QS_BOM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_QS_BOM_MarkerDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_QS_BOM_YYDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_QuotationSatuts_ZRlay3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_QS_SMVDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_QS_QTNDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Adopted_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Adopted;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_ERPBomDate_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_ERPBomDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Completed_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Completed;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand_Remarks_ZR01;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn column_Remarks;


        #endregion

        #region MyPorperties
        private string _Customer;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleOrderOther;

        private string _Phase;

        #endregion

        public CEPMarketingListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
        }

        public CEPMarketingListForm(string paraArg1, string paraArg2)
        {
            InitializeComponent();
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
            _Customer = paraArg1;

            _Phase = paraArg2;

        }

        public override void DataBind()
        {
            base.DataBind();

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            this.DataContext = context;

            this.BindingSource.DataSource = from c in context.SPCCustomers where c.Customer == _Customer && c.Phase.ToString() == _Phase select c;
        }

        private void bar_Print_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CEPMarketingReport rpt = new CEPMarketingReport(_Customer, _Phase);
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
            this.column_SampleOrderID = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_Customer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_CustDept = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_CustStyleNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_styleid = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PCCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_BriefDesr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_BrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_GroupName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SeasonCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_PatternSource = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_ColorStatus_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_ColorStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_MaterialStatus = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_MaterialStatus_SampleYardageDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_MaterialStatus_RedyeDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_MaterialStatus_MidSpec = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridBand_SampleMakeOrNot_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_SampleMakeOrNot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_WorkShop_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_WorkShop = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_SamplePatternStatus = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_SPS_SeqNr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SPS_IssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SPS_DefaultFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SPS_TrialSampleDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_SPS_CurrentFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_QuotationSatuts = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand_QuotationSatuts_ZRlay1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_QS_MIDc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_QS_Pattern = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_QS_BOM = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_QS_BOM_MarkerDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_QS_BOM_YYDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_QuotationSatuts_ZRlay3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_QS_SMVDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.column_QS_QTNDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Adopted_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_Adopted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_ERPBomDate_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_ERPBomDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Completed_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_Completed = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand_Remarks_ZR01 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.column_Remarks = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.colSampleOrderOther = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
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
            // barBtnSave
            // 
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
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
            this.objListGridControl.Size = new System.Drawing.Size(4015, 532);
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
            this.gridBand_ColorStatus_ZR01,
            this.gridBand_MaterialStatus,
            this.gridBand_SampleMakeOrNot_ZR01,
            this.gridBand_WorkShop_ZR01,
            this.gridBand_SamplePatternStatus,
            this.gridBand_QuotationSatuts,
            this.gridBand_Adopted_ZR01,
            this.gridBand_ERPBomDate_ZR01,
            this.gridBand_Completed_ZR01,
            this.gridBand_Remarks_ZR01});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.column_SampleOrderID,
            this.column_Customer,
            this.column_CustDept,
            this.column_CustStyleNr,
            this.column_styleid,
            this.column_PCCode,
            this.column_BriefDesr,
            this.column_BrandName,
            this.column_GroupName,
            this.column_SeasonCode,
            this.column_PatternSource,
            this.column_ColorStatus,
            this.column_MaterialStatus_SampleYardageDate,
            this.column_MaterialStatus_RedyeDate,
            this.column_MaterialStatus_MidSpec,
            this.column_SampleMakeOrNot,
            this.column_WorkShop,
            this.column_SPS_SeqNr,
            this.column_SPS_IssueDate,
            this.column_SPS_DefaultFinishDate,
            this.column_SPS_TrialSampleDate,
            this.column_SPS_CurrentFinishDate,
            this.column_QS_MIDc,
            this.column_QS_Pattern,
            this.column_QS_BOM_MarkerDate,
            this.column_QS_BOM_YYDate,
            this.column_QS_SMVDate,
            this.column_QS_QTNDate,
            this.column_Adopted,
            this.column_ERPBomDate,
            this.column_Completed,
            this.column_Remarks,
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
            this.gridBand_StyleInformation.Columns.Add(this.column_SampleOrderID);
            this.gridBand_StyleInformation.Columns.Add(this.colSampleOrderOther);
            this.gridBand_StyleInformation.Columns.Add(this.column_Customer);
            this.gridBand_StyleInformation.Columns.Add(this.column_CustDept);
            this.gridBand_StyleInformation.Columns.Add(this.column_CustStyleNr);
            this.gridBand_StyleInformation.Columns.Add(this.column_styleid);
            this.gridBand_StyleInformation.Columns.Add(this.column_PCCode);
            this.gridBand_StyleInformation.Columns.Add(this.column_BriefDesr);
            this.gridBand_StyleInformation.Columns.Add(this.column_BrandName);
            this.gridBand_StyleInformation.Columns.Add(this.column_GroupName);
            this.gridBand_StyleInformation.Columns.Add(this.column_SeasonCode);
            this.gridBand_StyleInformation.Columns.Add(this.column_PatternSource);
            this.gridBand_StyleInformation.MinWidth = 20;
            this.gridBand_StyleInformation.Name = "gridBand_StyleInformation";
            this.gridBand_StyleInformation.Width = 1068;
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
            // gridBand_ColorStatus_ZR01
            // 
            this.gridBand_ColorStatus_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_ColorStatus_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_ColorStatus_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_ColorStatus_ZR01.Caption = "Color Status";
            this.gridBand_ColorStatus_ZR01.Columns.Add(this.column_ColorStatus);
            this.gridBand_ColorStatus_ZR01.MinWidth = 20;
            this.gridBand_ColorStatus_ZR01.Name = "gridBand_ColorStatus_ZR01";
            this.gridBand_ColorStatus_ZR01.Width = 90;
            // 
            // column_ColorStatus
            // 
            this.column_ColorStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.column_ColorStatus.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_ColorStatus.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_ColorStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_ColorStatus.Caption = "Color Status";
            this.column_ColorStatus.FieldName = "ColorStatus";
            this.column_ColorStatus.Name = "column_ColorStatus";
            this.column_ColorStatus.Visible = true;
            this.column_ColorStatus.Width = 90;
            // 
            // gridBand_MaterialStatus
            // 
            this.gridBand_MaterialStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_MaterialStatus.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_MaterialStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_MaterialStatus.Caption = "Material Status";
            this.gridBand_MaterialStatus.Columns.Add(this.column_MaterialStatus_SampleYardageDate);
            this.gridBand_MaterialStatus.Columns.Add(this.column_MaterialStatus_RedyeDate);
            this.gridBand_MaterialStatus.Columns.Add(this.column_MaterialStatus_MidSpec);
            this.gridBand_MaterialStatus.MinWidth = 20;
            this.gridBand_MaterialStatus.Name = "gridBand_MaterialStatus";
            this.gridBand_MaterialStatus.Width = 250;
            // 
            // column_MaterialStatus_SampleYardageDate
            // 
            this.column_MaterialStatus_SampleYardageDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MaterialStatus_SampleYardageDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MaterialStatus_SampleYardageDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MaterialStatus_SampleYardageDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MaterialStatus_SampleYardageDate.Caption = "Sample Yardage Date";
            this.column_MaterialStatus_SampleYardageDate.FieldName = "MaterialStatus_SampleYardageDate";
            this.column_MaterialStatus_SampleYardageDate.Name = "column_MaterialStatus_SampleYardageDate";
            this.column_MaterialStatus_SampleYardageDate.Visible = true;
            this.column_MaterialStatus_SampleYardageDate.Width = 85;
            // 
            // column_MaterialStatus_RedyeDate
            // 
            this.column_MaterialStatus_RedyeDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MaterialStatus_RedyeDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MaterialStatus_RedyeDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MaterialStatus_RedyeDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MaterialStatus_RedyeDate.Caption = "Redye Date";
            this.column_MaterialStatus_RedyeDate.FieldName = "MaterialStatus_RedyeDate";
            this.column_MaterialStatus_RedyeDate.Name = "column_MaterialStatus_RedyeDate";
            this.column_MaterialStatus_RedyeDate.Visible = true;
            this.column_MaterialStatus_RedyeDate.Width = 85;
            // 
            // column_MaterialStatus_MidSpec
            // 
            this.column_MaterialStatus_MidSpec.AppearanceHeader.Options.UseTextOptions = true;
            this.column_MaterialStatus_MidSpec.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_MaterialStatus_MidSpec.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_MaterialStatus_MidSpec.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_MaterialStatus_MidSpec.Caption = "Mid Spec";
            this.column_MaterialStatus_MidSpec.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_MaterialStatus_MidSpec.FieldName = "MaterialStatus_MidSpec";
            this.column_MaterialStatus_MidSpec.Name = "column_MaterialStatus_MidSpec";
            this.column_MaterialStatus_MidSpec.OptionsColumn.AllowEdit = false;
            this.column_MaterialStatus_MidSpec.Visible = true;
            this.column_MaterialStatus_MidSpec.Width = 80;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridBand_SampleMakeOrNot_ZR01
            // 
            this.gridBand_SampleMakeOrNot_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_SampleMakeOrNot_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_SampleMakeOrNot_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_SampleMakeOrNot_ZR01.Caption = "Sample Making or Not";
            this.gridBand_SampleMakeOrNot_ZR01.Columns.Add(this.column_SampleMakeOrNot);
            this.gridBand_SampleMakeOrNot_ZR01.MinWidth = 20;
            this.gridBand_SampleMakeOrNot_ZR01.Name = "gridBand_SampleMakeOrNot_ZR01";
            this.gridBand_SampleMakeOrNot_ZR01.Width = 80;
            // 
            // column_SampleMakeOrNot
            // 
            this.column_SampleMakeOrNot.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SampleMakeOrNot.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SampleMakeOrNot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SampleMakeOrNot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SampleMakeOrNot.Caption = "Sample Making or Not";
            this.column_SampleMakeOrNot.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_SampleMakeOrNot.FieldName = "SampleMakeOrNot";
            this.column_SampleMakeOrNot.Name = "column_SampleMakeOrNot";
            this.column_SampleMakeOrNot.OptionsColumn.AllowEdit = false;
            this.column_SampleMakeOrNot.Visible = true;
            this.column_SampleMakeOrNot.Width = 80;
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
            // gridBand_SamplePatternStatus
            // 
            this.gridBand_SamplePatternStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_SamplePatternStatus.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_SamplePatternStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_SamplePatternStatus.Caption = "Sample/Pattern Status";
            this.gridBand_SamplePatternStatus.Columns.Add(this.column_SPS_SeqNr);
            this.gridBand_SamplePatternStatus.Columns.Add(this.column_SPS_IssueDate);
            this.gridBand_SamplePatternStatus.Columns.Add(this.column_SPS_DefaultFinishDate);
            this.gridBand_SamplePatternStatus.Columns.Add(this.column_SPS_TrialSampleDate);
            this.gridBand_SamplePatternStatus.Columns.Add(this.column_SPS_CurrentFinishDate);
            this.gridBand_SamplePatternStatus.MinWidth = 20;
            this.gridBand_SamplePatternStatus.Name = "gridBand_SamplePatternStatus";
            this.gridBand_SamplePatternStatus.Width = 430;
            // 
            // column_SPS_SeqNr
            // 
            this.column_SPS_SeqNr.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SPS_SeqNr.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SPS_SeqNr.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SPS_SeqNr.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SPS_SeqNr.Caption = "Seq  Nr.";
            this.column_SPS_SeqNr.FieldName = "SPS_SeqNr";
            this.column_SPS_SeqNr.Name = "column_SPS_SeqNr";
            this.column_SPS_SeqNr.OptionsColumn.AllowEdit = false;
            this.column_SPS_SeqNr.Visible = true;
            this.column_SPS_SeqNr.Width = 90;
            // 
            // column_SPS_IssueDate
            // 
            this.column_SPS_IssueDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SPS_IssueDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SPS_IssueDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SPS_IssueDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SPS_IssueDate.Caption = "Issue Date";
            this.column_SPS_IssueDate.FieldName = "SPS_IssueDate";
            this.column_SPS_IssueDate.Name = "column_SPS_IssueDate";
            this.column_SPS_IssueDate.OptionsColumn.AllowEdit = false;
            this.column_SPS_IssueDate.Visible = true;
            this.column_SPS_IssueDate.Width = 85;
            // 
            // column_SPS_DefaultFinishDate
            // 
            this.column_SPS_DefaultFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SPS_DefaultFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SPS_DefaultFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SPS_DefaultFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SPS_DefaultFinishDate.Caption = "Default Finish Date";
            this.column_SPS_DefaultFinishDate.FieldName = "SPS_DefaultFinishDate";
            this.column_SPS_DefaultFinishDate.Name = "column_SPS_DefaultFinishDate";
            this.column_SPS_DefaultFinishDate.OptionsColumn.AllowEdit = false;
            this.column_SPS_DefaultFinishDate.Visible = true;
            this.column_SPS_DefaultFinishDate.Width = 85;
            // 
            // column_SPS_TrialSampleDate
            // 
            this.column_SPS_TrialSampleDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SPS_TrialSampleDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SPS_TrialSampleDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SPS_TrialSampleDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SPS_TrialSampleDate.Caption = "Trial Sample Date";
            this.column_SPS_TrialSampleDate.FieldName = "SPS_TrialSampleDate";
            this.column_SPS_TrialSampleDate.Name = "column_SPS_TrialSampleDate";
            this.column_SPS_TrialSampleDate.Visible = true;
            this.column_SPS_TrialSampleDate.Width = 85;
            // 
            // column_SPS_CurrentFinishDate
            // 
            this.column_SPS_CurrentFinishDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_SPS_CurrentFinishDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_SPS_CurrentFinishDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_SPS_CurrentFinishDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_SPS_CurrentFinishDate.Caption = "Current Finish Date";
            this.column_SPS_CurrentFinishDate.FieldName = "SPS_CurrentFinishDate";
            this.column_SPS_CurrentFinishDate.Name = "column_SPS_CurrentFinishDate";
            this.column_SPS_CurrentFinishDate.OptionsColumn.AllowEdit = false;
            this.column_SPS_CurrentFinishDate.Visible = true;
            this.column_SPS_CurrentFinishDate.Width = 85;
            // 
            // gridBand_QuotationSatuts
            // 
            this.gridBand_QuotationSatuts.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_QuotationSatuts.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_QuotationSatuts.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_QuotationSatuts.Caption = "Quotation Satuts";
            this.gridBand_QuotationSatuts.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand_QuotationSatuts_ZRlay1,
            this.gridBand_QS_BOM,
            this.gridBand_QuotationSatuts_ZRlay3});
            this.gridBand_QuotationSatuts.MinWidth = 20;
            this.gridBand_QuotationSatuts.Name = "gridBand_QuotationSatuts";
            this.gridBand_QuotationSatuts.Width = 500;
            // 
            // gridBand_QuotationSatuts_ZRlay1
            // 
            this.gridBand_QuotationSatuts_ZRlay1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_QuotationSatuts_ZRlay1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_QuotationSatuts_ZRlay1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_QuotationSatuts_ZRlay1.Columns.Add(this.column_QS_MIDc);
            this.gridBand_QuotationSatuts_ZRlay1.Columns.Add(this.column_QS_Pattern);
            this.gridBand_QuotationSatuts_ZRlay1.MinWidth = 20;
            this.gridBand_QuotationSatuts_ZRlay1.Name = "gridBand_QuotationSatuts_ZRlay1";
            this.gridBand_QuotationSatuts_ZRlay1.Width = 160;
            // 
            // column_QS_MIDc
            // 
            this.column_QS_MIDc.AppearanceHeader.Options.UseTextOptions = true;
            this.column_QS_MIDc.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_QS_MIDc.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_QS_MIDc.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_QS_MIDc.Caption = "MIDc";
            this.column_QS_MIDc.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_QS_MIDc.FieldName = "QS_MIDc";
            this.column_QS_MIDc.Name = "column_QS_MIDc";
            this.column_QS_MIDc.Visible = true;
            this.column_QS_MIDc.Width = 80;
            // 
            // column_QS_Pattern
            // 
            this.column_QS_Pattern.AppearanceHeader.Options.UseTextOptions = true;
            this.column_QS_Pattern.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_QS_Pattern.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_QS_Pattern.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_QS_Pattern.Caption = "Pattern ";
            this.column_QS_Pattern.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_QS_Pattern.FieldName = "QS_Pattern";
            this.column_QS_Pattern.Name = "column_QS_Pattern";
            this.column_QS_Pattern.Visible = true;
            this.column_QS_Pattern.Width = 80;
            // 
            // gridBand_QS_BOM
            // 
            this.gridBand_QS_BOM.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_QS_BOM.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_QS_BOM.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_QS_BOM.Caption = "BOM";
            this.gridBand_QS_BOM.Columns.Add(this.column_QS_BOM_MarkerDate);
            this.gridBand_QS_BOM.Columns.Add(this.column_QS_BOM_YYDate);
            this.gridBand_QS_BOM.MinWidth = 20;
            this.gridBand_QS_BOM.Name = "gridBand_QS_BOM";
            this.gridBand_QS_BOM.Width = 170;
            // 
            // column_QS_BOM_MarkerDate
            // 
            this.column_QS_BOM_MarkerDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_QS_BOM_MarkerDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_QS_BOM_MarkerDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_QS_BOM_MarkerDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_QS_BOM_MarkerDate.Caption = "Marker Date";
            this.column_QS_BOM_MarkerDate.FieldName = "QS_BOM_MarkerDate";
            this.column_QS_BOM_MarkerDate.Name = "column_QS_BOM_MarkerDate";
            this.column_QS_BOM_MarkerDate.Visible = true;
            this.column_QS_BOM_MarkerDate.Width = 85;
            // 
            // column_QS_BOM_YYDate
            // 
            this.column_QS_BOM_YYDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_QS_BOM_YYDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_QS_BOM_YYDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_QS_BOM_YYDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_QS_BOM_YYDate.Caption = "YY Date";
            this.column_QS_BOM_YYDate.FieldName = "QS_BOM_YYDate";
            this.column_QS_BOM_YYDate.Name = "column_QS_BOM_YYDate";
            this.column_QS_BOM_YYDate.Visible = true;
            this.column_QS_BOM_YYDate.Width = 85;
            // 
            // gridBand_QuotationSatuts_ZRlay3
            // 
            this.gridBand_QuotationSatuts_ZRlay3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_QuotationSatuts_ZRlay3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_QuotationSatuts_ZRlay3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_QuotationSatuts_ZRlay3.Columns.Add(this.column_QS_SMVDate);
            this.gridBand_QuotationSatuts_ZRlay3.Columns.Add(this.column_QS_QTNDate);
            this.gridBand_QuotationSatuts_ZRlay3.MinWidth = 20;
            this.gridBand_QuotationSatuts_ZRlay3.Name = "gridBand_QuotationSatuts_ZRlay3";
            this.gridBand_QuotationSatuts_ZRlay3.Width = 170;
            // 
            // column_QS_SMVDate
            // 
            this.column_QS_SMVDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_QS_SMVDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_QS_SMVDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_QS_SMVDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_QS_SMVDate.Caption = "SMV Date";
            this.column_QS_SMVDate.FieldName = "QS_SMVDate";
            this.column_QS_SMVDate.Name = "column_QS_SMVDate";
            this.column_QS_SMVDate.Visible = true;
            this.column_QS_SMVDate.Width = 85;
            // 
            // column_QS_QTNDate
            // 
            this.column_QS_QTNDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_QS_QTNDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_QS_QTNDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_QS_QTNDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_QS_QTNDate.Caption = "QTN Date";
            this.column_QS_QTNDate.FieldName = "QS_QTNDate";
            this.column_QS_QTNDate.Name = "column_QS_QTNDate";
            this.column_QS_QTNDate.Visible = true;
            this.column_QS_QTNDate.Width = 85;
            // 
            // gridBand_Adopted_ZR01
            // 
            this.gridBand_Adopted_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_Adopted_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_Adopted_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_Adopted_ZR01.Caption = "Adopted";
            this.gridBand_Adopted_ZR01.Columns.Add(this.column_Adopted);
            this.gridBand_Adopted_ZR01.MinWidth = 20;
            this.gridBand_Adopted_ZR01.Name = "gridBand_Adopted_ZR01";
            this.gridBand_Adopted_ZR01.Width = 80;
            // 
            // column_Adopted
            // 
            this.column_Adopted.AppearanceHeader.Options.UseTextOptions = true;
            this.column_Adopted.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Adopted.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_Adopted.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_Adopted.Caption = "Adopted";
            this.column_Adopted.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_Adopted.FieldName = "Adopted";
            this.column_Adopted.Name = "column_Adopted";
            this.column_Adopted.Visible = true;
            this.column_Adopted.Width = 80;
            // 
            // gridBand_ERPBomDate_ZR01
            // 
            this.gridBand_ERPBomDate_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_ERPBomDate_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_ERPBomDate_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_ERPBomDate_ZR01.Caption = "ERP Bom Date";
            this.gridBand_ERPBomDate_ZR01.Columns.Add(this.column_ERPBomDate);
            this.gridBand_ERPBomDate_ZR01.MinWidth = 20;
            this.gridBand_ERPBomDate_ZR01.Name = "gridBand_ERPBomDate_ZR01";
            this.gridBand_ERPBomDate_ZR01.Width = 85;
            // 
            // column_ERPBomDate
            // 
            this.column_ERPBomDate.AppearanceHeader.Options.UseTextOptions = true;
            this.column_ERPBomDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_ERPBomDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_ERPBomDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_ERPBomDate.Caption = "ERP Bom Date";
            this.column_ERPBomDate.FieldName = "ERPBomDate";
            this.column_ERPBomDate.Name = "column_ERPBomDate";
            this.column_ERPBomDate.Visible = true;
            this.column_ERPBomDate.Width = 85;
            // 
            // gridBand_Completed_ZR01
            // 
            this.gridBand_Completed_ZR01.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand_Completed_ZR01.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand_Completed_ZR01.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand_Completed_ZR01.Caption = "Completed";
            this.gridBand_Completed_ZR01.Columns.Add(this.column_Completed);
            this.gridBand_Completed_ZR01.MinWidth = 20;
            this.gridBand_Completed_ZR01.Name = "gridBand_Completed_ZR01";
            this.gridBand_Completed_ZR01.Width = 80;
            // 
            // column_Completed
            // 
            this.column_Completed.AppearanceCell.Options.UseTextOptions = true;
            this.column_Completed.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Completed.AppearanceHeader.Options.UseTextOptions = true;
            this.column_Completed.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.column_Completed.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.column_Completed.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.column_Completed.Caption = "Completed";
            this.column_Completed.ColumnEdit = this.repositoryItemCheckEdit1;
            this.column_Completed.FieldName = "Completed";
            this.column_Completed.Name = "column_Completed";
            this.column_Completed.OptionsColumn.AllowEdit = false;
            this.column_Completed.Visible = true;
            this.column_Completed.Width = 80;
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
            this.colSampleOrderOther.OptionsColumn.AllowEdit = false;
            this.colSampleOrderOther.Visible = true;
            this.colSampleOrderOther.Width = 78;
            // 
            // CEPMarketingListForm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CEPMarketingListForm";
            this.Size = new System.Drawing.Size(4015, 558);
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

