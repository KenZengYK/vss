using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using DevExpress.XtraReports.UI;
using PH.SPC.BO;
namespace PH.SPC.BackEnd
{
    public partial class HBIMarketingReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private System.ComponentModel.IContainer components = null;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader1;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader2;
        private DevExpress.XtraReports.UI.XRControlStyle csDetail;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private XRLabel headerLable;
        private DevExpress.XtraReports.UI.XRLabel header_StyleInformation;
        private DevExpress.XtraReports.UI.XRLabel header_SampleOrderID;
        private DevExpress.XtraReports.UI.XRLabel header_Customer;
        private DevExpress.XtraReports.UI.XRLabel header_CustDept;
        private DevExpress.XtraReports.UI.XRLabel header_CustStyleNr;
        private DevExpress.XtraReports.UI.XRLabel header_styleid;
        private DevExpress.XtraReports.UI.XRLabel header_PCCode;
        private DevExpress.XtraReports.UI.XRLabel header_BriefDesr;
        private DevExpress.XtraReports.UI.XRLabel header_BrandName;
        private DevExpress.XtraReports.UI.XRLabel header_GroupName;
        private DevExpress.XtraReports.UI.XRLabel header_SeasonCode;
        private DevExpress.XtraReports.UI.XRLabel header_PatternSource;
        private DevExpress.XtraReports.UI.XRLabel header_ColorStatus;
        private DevExpress.XtraReports.UI.XRLabel header_MaterialStatus;
        private DevExpress.XtraReports.UI.XRLabel header_MaterialStatus_SampleYardageDate;
        private DevExpress.XtraReports.UI.XRLabel header_MaterialStatus_RedyeDate;
        private DevExpress.XtraReports.UI.XRLabel header_MaterialStatus_MidSpec;
        private DevExpress.XtraReports.UI.XRLabel header_SampleMakeOrNot;
        private DevExpress.XtraReports.UI.XRLabel header_WorkShop;
        private DevExpress.XtraReports.UI.XRLabel header_SamplePatternStatus;
        private DevExpress.XtraReports.UI.XRLabel header_SPS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_SPS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_SPS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_SPS_TrialSampleDate;
        private DevExpress.XtraReports.UI.XRLabel header_SPS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_QuotationSatuts;
        private DevExpress.XtraReports.UI.XRLabel header_QS_MIDc;
        private DevExpress.XtraReports.UI.XRLabel header_QS_Pattern;
        private DevExpress.XtraReports.UI.XRLabel header_QS_BOM;
        private DevExpress.XtraReports.UI.XRLabel header_QS_BOM_MarkerDate;
        private DevExpress.XtraReports.UI.XRLabel header_QS_BOM_YYDate;
        private DevExpress.XtraReports.UI.XRLabel header_QS_SMVDate;
        private DevExpress.XtraReports.UI.XRLabel header_QS_QTNDate;
        private DevExpress.XtraReports.UI.XRLabel header_Adopted;
        private DevExpress.XtraReports.UI.XRLabel header_ERPBomDate;
        private DevExpress.XtraReports.UI.XRLabel header_Completed;
        private DevExpress.XtraReports.UI.XRLabel header_Remarks;
        private DevExpress.XtraReports.UI.XRLabel detail_SampleOrderID;
        private DevExpress.XtraReports.UI.XRLabel detail_Customer;
        private DevExpress.XtraReports.UI.XRLabel detail_CustDept;
        private DevExpress.XtraReports.UI.XRLabel detail_CustStyleNr;
        private DevExpress.XtraReports.UI.XRLabel detail_styleid;
        private DevExpress.XtraReports.UI.XRLabel detail_PCCode;
        private DevExpress.XtraReports.UI.XRLabel detail_BriefDesr;
        private DevExpress.XtraReports.UI.XRLabel detail_BrandName;
        private DevExpress.XtraReports.UI.XRLabel detail_GroupName;
        private DevExpress.XtraReports.UI.XRLabel detail_SeasonCode;
        private DevExpress.XtraReports.UI.XRLabel detail_PatternSource;
        private DevExpress.XtraReports.UI.XRLabel detail_ColorStatus;
        private DevExpress.XtraReports.UI.XRLabel detail_MaterialStatus_SampleYardageDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MaterialStatus_RedyeDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MaterialStatus_MidSpec;
        private DevExpress.XtraReports.UI.XRLabel detail_SampleMakeOrNot;
        private DevExpress.XtraReports.UI.XRLabel detail_WorkShop;
        private DevExpress.XtraReports.UI.XRLabel detail_SPS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_SPS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_SPS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_SPS_TrialSampleDate;
        private DevExpress.XtraReports.UI.XRLabel detail_SPS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_QS_MIDc;
        private DevExpress.XtraReports.UI.XRLabel detail_QS_Pattern;
        private DevExpress.XtraReports.UI.XRLabel detail_QS_BOM_MarkerDate;
        private DevExpress.XtraReports.UI.XRLabel detail_QS_BOM_YYDate;
        private DevExpress.XtraReports.UI.XRLabel detail_QS_SMVDate;
        private DevExpress.XtraReports.UI.XRLabel detail_QS_QTNDate;
        private DevExpress.XtraReports.UI.XRLabel detail_Adopted;
        private DevExpress.XtraReports.UI.XRLabel detail_ERPBomDate;
        private DevExpress.XtraReports.UI.XRLabel detail_Completed;
        private XRPageInfo xrPageInfo1;
        private XRLabel xrLabel2;
        private XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRLabel detail_Remarks;
        #endregion

        public HBIMarketingReport()
        {
            InitializeComponent();
        }

        public HBIMarketingReport(string customer,string phase)
        {
            InitializeComponent();
            this.headerLable.Text = this.headerLable.Text.Replace("HBI", customer);
            if (phase == "0")
                this.headerLable.Text = this.headerLable.Text.Replace("Marketing Sample/Pattern", "Concept Sample");
            else
                this.headerLable.Text = this.headerLable.Text.Replace("Marketing Sample/Pattern", "Product Development");


        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.detail_SampleOrderID = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Customer = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustDept = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustStyleNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_styleid = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PCCode = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_BriefDesr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_BrandName = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_GroupName = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SeasonCode = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PatternSource = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_ColorStatus = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MaterialStatus_SampleYardageDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MaterialStatus_RedyeDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MaterialStatus_MidSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SampleMakeOrNot = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SPS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SPS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SPS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SPS_TrialSampleDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SPS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_QS_MIDc = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_QS_Pattern = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_QS_BOM_MarkerDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_QS_BOM_YYDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_QS_SMVDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_QS_QTNDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Adopted = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_ERPBomDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Completed = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Remarks = new DevExpress.XtraReports.UI.XRLabel();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.headerLable = new DevExpress.XtraReports.UI.XRLabel();
            this.header_StyleInformation = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SampleOrderID = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Customer = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustDept = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustStyleNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_styleid = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PCCode = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BriefDesr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BrandName = new DevExpress.XtraReports.UI.XRLabel();
            this.header_GroupName = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SeasonCode = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PatternSource = new DevExpress.XtraReports.UI.XRLabel();
            this.header_ColorStatus = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MaterialStatus = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MaterialStatus_SampleYardageDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MaterialStatus_RedyeDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MaterialStatus_MidSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SampleMakeOrNot = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SamplePatternStatus = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SPS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SPS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SPS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SPS_TrialSampleDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SPS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QuotationSatuts = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_MIDc = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_Pattern = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_BOM = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_BOM_MarkerDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_BOM_YYDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_SMVDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_QS_QTNDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Adopted = new DevExpress.XtraReports.UI.XRLabel();
            this.header_ERPBomDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Completed = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Remarks = new DevExpress.XtraReports.UI.XRLabel();
            this.csHeader1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csHeader2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel2,
            this.detail_SampleOrderID,
            this.detail_Customer,
            this.detail_CustDept,
            this.detail_CustStyleNr,
            this.detail_styleid,
            this.detail_PCCode,
            this.detail_BriefDesr,
            this.detail_BrandName,
            this.detail_GroupName,
            this.detail_SeasonCode,
            this.detail_PatternSource,
            this.detail_ColorStatus,
            this.detail_MaterialStatus_SampleYardageDate,
            this.detail_MaterialStatus_RedyeDate,
            this.detail_MaterialStatus_MidSpec,
            this.detail_SampleMakeOrNot,
            this.detail_WorkShop,
            this.detail_SPS_SeqNr,
            this.detail_SPS_IssueDate,
            this.detail_SPS_DefaultFinishDate,
            this.detail_SPS_TrialSampleDate,
            this.detail_SPS_CurrentFinishDate,
            this.detail_QS_MIDc,
            this.detail_QS_Pattern,
            this.detail_QS_BOM_MarkerDate,
            this.detail_QS_BOM_YYDate,
            this.detail_QS_SMVDate,
            this.detail_QS_QTNDate,
            this.detail_Adopted,
            this.detail_ERPBomDate,
            this.detail_Completed,
            this.detail_Remarks});
            this.Detail.Height = 15;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // detail_SampleOrderID
            // 
            this.detail_SampleOrderID.CanGrow = false;
            this.detail_SampleOrderID.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SampleOrderID", "")});
            this.detail_SampleOrderID.Location = new System.Drawing.Point(0, 0);
            this.detail_SampleOrderID.Name = "detail_SampleOrderID";
            this.detail_SampleOrderID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SampleOrderID.Size = new System.Drawing.Size(60, 15);
            this.detail_SampleOrderID.StyleName = "csDetail";
            this.detail_SampleOrderID.WordWrap = false;
            // 
            // detail_Customer
            // 
            this.detail_Customer.CanGrow = false;
            this.detail_Customer.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Customer", "")});
            this.detail_Customer.Location = new System.Drawing.Point(125, 0);
            this.detail_Customer.Name = "detail_Customer";
            this.detail_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Customer.Size = new System.Drawing.Size(58, 15);
            this.detail_Customer.StyleName = "csDetail";
            this.detail_Customer.WordWrap = false;
            // 
            // detail_CustDept
            // 
            this.detail_CustDept.CanGrow = false;
            this.detail_CustDept.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustDept", "")});
            this.detail_CustDept.Location = new System.Drawing.Point(183, 0);
            this.detail_CustDept.Name = "detail_CustDept";
            this.detail_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustDept.Size = new System.Drawing.Size(60, 15);
            this.detail_CustDept.StyleName = "csDetail";
            this.detail_CustDept.WordWrap = false;
            // 
            // detail_CustStyleNr
            // 
            this.detail_CustStyleNr.CanGrow = false;
            this.detail_CustStyleNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustStyleNr", "")});
            this.detail_CustStyleNr.Location = new System.Drawing.Point(241, 0);
            this.detail_CustStyleNr.Name = "detail_CustStyleNr";
            this.detail_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustStyleNr.Size = new System.Drawing.Size(60, 15);
            this.detail_CustStyleNr.StyleName = "csDetail";
            this.detail_CustStyleNr.WordWrap = false;
            // 
            // detail_styleid
            // 
            this.detail_styleid.CanGrow = false;
            this.detail_styleid.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "StyleID", "")});
            this.detail_styleid.Location = new System.Drawing.Point(300, 0);
            this.detail_styleid.Name = "detail_styleid";
            this.detail_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_styleid.Size = new System.Drawing.Size(50, 15);
            this.detail_styleid.StyleName = "csDetail";
            this.detail_styleid.WordWrap = false;
            // 
            // detail_PCCode
            // 
            this.detail_PCCode.CanGrow = false;
            this.detail_PCCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PCCode", "")});
            this.detail_PCCode.Location = new System.Drawing.Point(350, 0);
            this.detail_PCCode.Name = "detail_PCCode";
            this.detail_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PCCode.Size = new System.Drawing.Size(34, 15);
            this.detail_PCCode.StyleName = "csDetail";
            this.detail_PCCode.WordWrap = false;
            // 
            // detail_BriefDesr
            // 
            this.detail_BriefDesr.CanGrow = false;
            this.detail_BriefDesr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BriefDesr", "")});
            this.detail_BriefDesr.Location = new System.Drawing.Point(384, 0);
            this.detail_BriefDesr.Name = "detail_BriefDesr";
            this.detail_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BriefDesr.Size = new System.Drawing.Size(89, 15);
            this.detail_BriefDesr.StyleName = "csDetail";
            this.detail_BriefDesr.WordWrap = false;
            // 
            // detail_BrandName
            // 
            this.detail_BrandName.CanGrow = false;
            this.detail_BrandName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BrandName", "")});
            this.detail_BrandName.Location = new System.Drawing.Point(473, 0);
            this.detail_BrandName.Name = "detail_BrandName";
            this.detail_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BrandName.Size = new System.Drawing.Size(47, 15);
            this.detail_BrandName.StyleName = "csDetail";
            this.detail_BrandName.WordWrap = false;
            // 
            // detail_GroupName
            // 
            this.detail_GroupName.CanGrow = false;
            this.detail_GroupName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GroupName", "")});
            this.detail_GroupName.Location = new System.Drawing.Point(520, 0);
            this.detail_GroupName.Name = "detail_GroupName";
            this.detail_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_GroupName.Size = new System.Drawing.Size(39, 15);
            this.detail_GroupName.StyleName = "csDetail";
            this.detail_GroupName.WordWrap = false;
            // 
            // detail_SeasonCode
            // 
            this.detail_SeasonCode.CanGrow = false;
            this.detail_SeasonCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SeasonCode", "")});
            this.detail_SeasonCode.Location = new System.Drawing.Point(559, 0);
            this.detail_SeasonCode.Name = "detail_SeasonCode";
            this.detail_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SeasonCode.Size = new System.Drawing.Size(42, 15);
            this.detail_SeasonCode.StyleName = "csDetail";
            this.detail_SeasonCode.WordWrap = false;
            // 
            // detail_PatternSource
            // 
            this.detail_PatternSource.CanGrow = false;
            this.detail_PatternSource.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PatternSource", "")});
            this.detail_PatternSource.Location = new System.Drawing.Point(600, 0);
            this.detail_PatternSource.Name = "detail_PatternSource";
            this.detail_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PatternSource.Size = new System.Drawing.Size(60, 15);
            this.detail_PatternSource.StyleName = "csDetail";
            this.detail_PatternSource.WordWrap = false;
            // 
            // detail_ColorStatus
            // 
            this.detail_ColorStatus.CanGrow = false;
            this.detail_ColorStatus.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ColorStatus", "")});
            this.detail_ColorStatus.Location = new System.Drawing.Point(660, 0);
            this.detail_ColorStatus.Name = "detail_ColorStatus";
            this.detail_ColorStatus.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ColorStatus.Size = new System.Drawing.Size(60, 15);
            this.detail_ColorStatus.StyleName = "csDetail";
            this.detail_ColorStatus.WordWrap = false;
            // 
            // detail_MaterialStatus_SampleYardageDate
            // 
            this.detail_MaterialStatus_SampleYardageDate.CanGrow = false;
            this.detail_MaterialStatus_SampleYardageDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MaterialStatus_SampleYardageDate", "{0:yy/MM/dd}")});
            this.detail_MaterialStatus_SampleYardageDate.Location = new System.Drawing.Point(720, 0);
            this.detail_MaterialStatus_SampleYardageDate.Name = "detail_MaterialStatus_SampleYardageDate";
            this.detail_MaterialStatus_SampleYardageDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MaterialStatus_SampleYardageDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MaterialStatus_SampleYardageDate.StyleName = "csDetail";
            this.detail_MaterialStatus_SampleYardageDate.WordWrap = false;
            // 
            // detail_MaterialStatus_RedyeDate
            // 
            this.detail_MaterialStatus_RedyeDate.CanGrow = false;
            this.detail_MaterialStatus_RedyeDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MaterialStatus_RedyeDate", "{0:yy/MM/dd}")});
            this.detail_MaterialStatus_RedyeDate.Location = new System.Drawing.Point(753, 0);
            this.detail_MaterialStatus_RedyeDate.Name = "detail_MaterialStatus_RedyeDate";
            this.detail_MaterialStatus_RedyeDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MaterialStatus_RedyeDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MaterialStatus_RedyeDate.StyleName = "csDetail";
            this.detail_MaterialStatus_RedyeDate.WordWrap = false;
            // 
            // detail_MaterialStatus_MidSpec
            // 
            this.detail_MaterialStatus_MidSpec.CanGrow = false;
            this.detail_MaterialStatus_MidSpec.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MaterialStatus_MidSpecDesc", "")});
            this.detail_MaterialStatus_MidSpec.Location = new System.Drawing.Point(786, 0);
            this.detail_MaterialStatus_MidSpec.Name = "detail_MaterialStatus_MidSpec";
            this.detail_MaterialStatus_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MaterialStatus_MidSpec.Size = new System.Drawing.Size(60, 15);
            this.detail_MaterialStatus_MidSpec.StyleName = "csDetail";
            this.detail_MaterialStatus_MidSpec.WordWrap = false;
            // 
            // detail_SampleMakeOrNot
            // 
            this.detail_SampleMakeOrNot.CanGrow = false;
            this.detail_SampleMakeOrNot.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SampleMakeOrNotDesc", "")});
            this.detail_SampleMakeOrNot.Location = new System.Drawing.Point(846, 0);
            this.detail_SampleMakeOrNot.Name = "detail_SampleMakeOrNot";
            this.detail_SampleMakeOrNot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SampleMakeOrNot.Size = new System.Drawing.Size(60, 15);
            this.detail_SampleMakeOrNot.StyleName = "csDetail";
            this.detail_SampleMakeOrNot.WordWrap = false;
            // 
            // detail_WorkShop
            // 
            this.detail_WorkShop.CanGrow = false;
            this.detail_WorkShop.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WorkShop", "")});
            this.detail_WorkShop.Location = new System.Drawing.Point(906, 0);
            this.detail_WorkShop.Name = "detail_WorkShop";
            this.detail_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WorkShop.Size = new System.Drawing.Size(60, 15);
            this.detail_WorkShop.StyleName = "csDetail";
            this.detail_WorkShop.WordWrap = false;
            // 
            // detail_SPS_SeqNr
            // 
            this.detail_SPS_SeqNr.CanGrow = false;
            this.detail_SPS_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SPS_SeqNr", "")});
            this.detail_SPS_SeqNr.Location = new System.Drawing.Point(966, 0);
            this.detail_SPS_SeqNr.Name = "detail_SPS_SeqNr";
            this.detail_SPS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SPS_SeqNr.Size = new System.Drawing.Size(60, 15);
            this.detail_SPS_SeqNr.StyleName = "csDetail";
            this.detail_SPS_SeqNr.WordWrap = false;
            // 
            // detail_SPS_IssueDate
            // 
            this.detail_SPS_IssueDate.CanGrow = false;
            this.detail_SPS_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SPS_IssueDate", "{0:yy/MM/dd}")});
            this.detail_SPS_IssueDate.Location = new System.Drawing.Point(1026, 0);
            this.detail_SPS_IssueDate.Name = "detail_SPS_IssueDate";
            this.detail_SPS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SPS_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_SPS_IssueDate.StyleName = "csDetail";
            this.detail_SPS_IssueDate.WordWrap = false;
            // 
            // detail_SPS_DefaultFinishDate
            // 
            this.detail_SPS_DefaultFinishDate.CanGrow = false;
            this.detail_SPS_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SPS_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_SPS_DefaultFinishDate.Location = new System.Drawing.Point(1059, 0);
            this.detail_SPS_DefaultFinishDate.Name = "detail_SPS_DefaultFinishDate";
            this.detail_SPS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SPS_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_SPS_DefaultFinishDate.StyleName = "csDetail";
            this.detail_SPS_DefaultFinishDate.WordWrap = false;
            // 
            // detail_SPS_TrialSampleDate
            // 
            this.detail_SPS_TrialSampleDate.CanGrow = false;
            this.detail_SPS_TrialSampleDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SPS_TrialSampleDate", "{0:yy/MM/dd}")});
            this.detail_SPS_TrialSampleDate.Location = new System.Drawing.Point(1092, 0);
            this.detail_SPS_TrialSampleDate.Name = "detail_SPS_TrialSampleDate";
            this.detail_SPS_TrialSampleDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SPS_TrialSampleDate.Size = new System.Drawing.Size(33, 15);
            this.detail_SPS_TrialSampleDate.StyleName = "csDetail";
            this.detail_SPS_TrialSampleDate.WordWrap = false;
            // 
            // detail_SPS_CurrentFinishDate
            // 
            this.detail_SPS_CurrentFinishDate.CanGrow = false;
            this.detail_SPS_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SPS_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_SPS_CurrentFinishDate.Location = new System.Drawing.Point(1125, 0);
            this.detail_SPS_CurrentFinishDate.Name = "detail_SPS_CurrentFinishDate";
            this.detail_SPS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SPS_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_SPS_CurrentFinishDate.StyleName = "csDetail";
            this.detail_SPS_CurrentFinishDate.WordWrap = false;
            // 
            // detail_QS_MIDc
            // 
            this.detail_QS_MIDc.CanGrow = false;
            this.detail_QS_MIDc.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "QS_MIDcDesc", "")});
            this.detail_QS_MIDc.Location = new System.Drawing.Point(1158, 0);
            this.detail_QS_MIDc.Name = "detail_QS_MIDc";
            this.detail_QS_MIDc.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_QS_MIDc.Size = new System.Drawing.Size(60, 15);
            this.detail_QS_MIDc.StyleName = "csDetail";
            this.detail_QS_MIDc.WordWrap = false;
            // 
            // detail_QS_Pattern
            // 
            this.detail_QS_Pattern.CanGrow = false;
            this.detail_QS_Pattern.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "QS_PatternDesc", "")});
            this.detail_QS_Pattern.Location = new System.Drawing.Point(1218, 0);
            this.detail_QS_Pattern.Name = "detail_QS_Pattern";
            this.detail_QS_Pattern.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_QS_Pattern.Size = new System.Drawing.Size(60, 15);
            this.detail_QS_Pattern.StyleName = "csDetail";
            this.detail_QS_Pattern.WordWrap = false;
            // 
            // detail_QS_BOM_MarkerDate
            // 
            this.detail_QS_BOM_MarkerDate.CanGrow = false;
            this.detail_QS_BOM_MarkerDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "QS_BOM_MarkerDate", "{0:yy/MM/dd}")});
            this.detail_QS_BOM_MarkerDate.Location = new System.Drawing.Point(1278, 0);
            this.detail_QS_BOM_MarkerDate.Name = "detail_QS_BOM_MarkerDate";
            this.detail_QS_BOM_MarkerDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_QS_BOM_MarkerDate.Size = new System.Drawing.Size(33, 15);
            this.detail_QS_BOM_MarkerDate.StyleName = "csDetail";
            this.detail_QS_BOM_MarkerDate.WordWrap = false;
            // 
            // detail_QS_BOM_YYDate
            // 
            this.detail_QS_BOM_YYDate.CanGrow = false;
            this.detail_QS_BOM_YYDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "QS_BOM_YYDate", "{0:yy/MM/dd}")});
            this.detail_QS_BOM_YYDate.Location = new System.Drawing.Point(1311, 0);
            this.detail_QS_BOM_YYDate.Name = "detail_QS_BOM_YYDate";
            this.detail_QS_BOM_YYDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_QS_BOM_YYDate.Size = new System.Drawing.Size(33, 15);
            this.detail_QS_BOM_YYDate.StyleName = "csDetail";
            this.detail_QS_BOM_YYDate.WordWrap = false;
            // 
            // detail_QS_SMVDate
            // 
            this.detail_QS_SMVDate.CanGrow = false;
            this.detail_QS_SMVDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "QS_SMVDate", "{0:yy/MM/dd}")});
            this.detail_QS_SMVDate.Location = new System.Drawing.Point(1344, 0);
            this.detail_QS_SMVDate.Name = "detail_QS_SMVDate";
            this.detail_QS_SMVDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_QS_SMVDate.Size = new System.Drawing.Size(33, 15);
            this.detail_QS_SMVDate.StyleName = "csDetail";
            this.detail_QS_SMVDate.WordWrap = false;
            // 
            // detail_QS_QTNDate
            // 
            this.detail_QS_QTNDate.CanGrow = false;
            this.detail_QS_QTNDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "QS_QTNDate", "{0:yy/MM/dd}")});
            this.detail_QS_QTNDate.Location = new System.Drawing.Point(1377, 0);
            this.detail_QS_QTNDate.Name = "detail_QS_QTNDate";
            this.detail_QS_QTNDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_QS_QTNDate.Size = new System.Drawing.Size(33, 15);
            this.detail_QS_QTNDate.StyleName = "csDetail";
            this.detail_QS_QTNDate.WordWrap = false;
            // 
            // detail_Adopted
            // 
            this.detail_Adopted.CanGrow = false;
            this.detail_Adopted.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "AdoptedDesc", "")});
            this.detail_Adopted.Location = new System.Drawing.Point(1410, 0);
            this.detail_Adopted.Name = "detail_Adopted";
            this.detail_Adopted.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Adopted.Size = new System.Drawing.Size(60, 15);
            this.detail_Adopted.StyleName = "csDetail";
            this.detail_Adopted.WordWrap = false;
            // 
            // detail_ERPBomDate
            // 
            this.detail_ERPBomDate.CanGrow = false;
            this.detail_ERPBomDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ERPBomDate", "{0:yy/MM/dd}")});
            this.detail_ERPBomDate.Location = new System.Drawing.Point(1470, 0);
            this.detail_ERPBomDate.Name = "detail_ERPBomDate";
            this.detail_ERPBomDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ERPBomDate.Size = new System.Drawing.Size(33, 15);
            this.detail_ERPBomDate.StyleName = "csDetail";
            this.detail_ERPBomDate.WordWrap = false;
            // 
            // detail_Completed
            // 
            this.detail_Completed.CanGrow = false;
            this.detail_Completed.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CompletedDesc", "")});
            this.detail_Completed.Location = new System.Drawing.Point(1503, 0);
            this.detail_Completed.Name = "detail_Completed";
            this.detail_Completed.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Completed.Size = new System.Drawing.Size(60, 15);
            this.detail_Completed.StyleName = "csDetail";
            this.detail_Completed.WordWrap = false;
            // 
            // detail_Remarks
            // 
            this.detail_Remarks.CanGrow = false;
            this.detail_Remarks.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Remarks", "")});
            this.detail_Remarks.Location = new System.Drawing.Point(1563, 0);
            this.detail_Remarks.Name = "detail_Remarks";
            this.detail_Remarks.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Remarks.Size = new System.Drawing.Size(35, 15);
            this.detail_Remarks.StyleName = "csDetail";
            this.detail_Remarks.WordWrap = false;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1,
            this.xrPageInfo1,
            this.headerLable,
            this.header_StyleInformation,
            this.header_SampleOrderID,
            this.header_Customer,
            this.header_CustDept,
            this.header_CustStyleNr,
            this.header_styleid,
            this.header_PCCode,
            this.header_BriefDesr,
            this.header_BrandName,
            this.header_GroupName,
            this.header_SeasonCode,
            this.header_PatternSource,
            this.header_ColorStatus,
            this.header_MaterialStatus,
            this.header_MaterialStatus_SampleYardageDate,
            this.header_MaterialStatus_RedyeDate,
            this.header_MaterialStatus_MidSpec,
            this.header_SampleMakeOrNot,
            this.header_WorkShop,
            this.header_SamplePatternStatus,
            this.header_SPS_SeqNr,
            this.header_SPS_IssueDate,
            this.header_SPS_DefaultFinishDate,
            this.header_SPS_TrialSampleDate,
            this.header_SPS_CurrentFinishDate,
            this.header_QuotationSatuts,
            this.header_QS_MIDc,
            this.header_QS_Pattern,
            this.header_QS_BOM,
            this.header_QS_BOM_MarkerDate,
            this.header_QS_BOM_YYDate,
            this.header_QS_SMVDate,
            this.header_QS_QTNDate,
            this.header_Adopted,
            this.header_ERPBomDate,
            this.header_Completed,
            this.header_Remarks});
            this.PageHeader.Height = 86;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPageInfo1.Format = "PrinCode:  {0:yyMMdd}";
            this.xrPageInfo1.Location = new System.Drawing.Point(1475, 8);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.xrPageInfo1.Size = new System.Drawing.Size(119, 16);
            // 
            // headerLable
            // 
            this.headerLable.Font = new System.Drawing.Font("Arial", 12F);
            this.headerLable.Location = new System.Drawing.Point(0, 0);
            this.headerLable.Name = "headerLable";
            this.headerLable.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.headerLable.Size = new System.Drawing.Size(667, 25);
            this.headerLable.StylePriority.UseFont = false;
            this.headerLable.StylePriority.UseTextAlignment = false;
            this.headerLable.Text = "Sample Processing Control - Marketing Sample/Pattern Status (HBI)";
            this.headerLable.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // header_StyleInformation
            // 
            this.header_StyleInformation.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_StyleInformation.CanGrow = false;
            this.header_StyleInformation.Location = new System.Drawing.Point(0, 30);
            this.header_StyleInformation.Name = "header_StyleInformation";
            this.header_StyleInformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_StyleInformation.Size = new System.Drawing.Size(660, 20);
            this.header_StyleInformation.StyleName = "csHeader1";
            this.header_StyleInformation.StylePriority.UseBorders = false;
            this.header_StyleInformation.Text = "Style Information";
            // 
            // header_SampleOrderID
            // 
            this.header_SampleOrderID.CanGrow = false;
            this.header_SampleOrderID.Location = new System.Drawing.Point(0, 50);
            this.header_SampleOrderID.Name = "header_SampleOrderID";
            this.header_SampleOrderID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SampleOrderID.Size = new System.Drawing.Size(60, 36);
            this.header_SampleOrderID.StyleName = "csHeader1";
            this.header_SampleOrderID.Text = "Sample Order Nr";
            // 
            // header_Customer
            // 
            this.header_Customer.CanGrow = false;
            this.header_Customer.Location = new System.Drawing.Point(125, 50);
            this.header_Customer.Name = "header_Customer";
            this.header_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Customer.Size = new System.Drawing.Size(58, 36);
            this.header_Customer.StyleName = "csHeader1";
            this.header_Customer.Text = "Cust Code";
            // 
            // header_CustDept
            // 
            this.header_CustDept.CanGrow = false;
            this.header_CustDept.Location = new System.Drawing.Point(183, 50);
            this.header_CustDept.Name = "header_CustDept";
            this.header_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustDept.Size = new System.Drawing.Size(60, 36);
            this.header_CustDept.StyleName = "csHeader1";
            this.header_CustDept.Text = "Cust Dept";
            // 
            // header_CustStyleNr
            // 
            this.header_CustStyleNr.CanGrow = false;
            this.header_CustStyleNr.Location = new System.Drawing.Point(241, 50);
            this.header_CustStyleNr.Name = "header_CustStyleNr";
            this.header_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustStyleNr.Size = new System.Drawing.Size(60, 36);
            this.header_CustStyleNr.StyleName = "csHeader1";
            this.header_CustStyleNr.Text = "Cust Style Nr";
            // 
            // header_styleid
            // 
            this.header_styleid.CanGrow = false;
            this.header_styleid.Location = new System.Drawing.Point(300, 50);
            this.header_styleid.Name = "header_styleid";
            this.header_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_styleid.Size = new System.Drawing.Size(50, 36);
            this.header_styleid.StyleName = "csHeader1";
            this.header_styleid.Text = "PH Style Nr";
            // 
            // header_PCCode
            // 
            this.header_PCCode.CanGrow = false;
            this.header_PCCode.Location = new System.Drawing.Point(350, 50);
            this.header_PCCode.Name = "header_PCCode";
            this.header_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PCCode.Size = new System.Drawing.Size(34, 36);
            this.header_PCCode.StyleName = "csHeader1";
            this.header_PCCode.Text = "PC Code";
            // 
            // header_BriefDesr
            // 
            this.header_BriefDesr.CanGrow = false;
            this.header_BriefDesr.Location = new System.Drawing.Point(384, 50);
            this.header_BriefDesr.Name = "header_BriefDesr";
            this.header_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BriefDesr.Size = new System.Drawing.Size(89, 36);
            this.header_BriefDesr.StyleName = "csHeader1";
            this.header_BriefDesr.Text = "Brief Desr.";
            // 
            // header_BrandName
            // 
            this.header_BrandName.CanGrow = false;
            this.header_BrandName.Location = new System.Drawing.Point(473, 50);
            this.header_BrandName.Name = "header_BrandName";
            this.header_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BrandName.Size = new System.Drawing.Size(47, 36);
            this.header_BrandName.StyleName = "csHeader1";
            this.header_BrandName.Text = "Brand Name";
            // 
            // header_GroupName
            // 
            this.header_GroupName.CanGrow = false;
            this.header_GroupName.Location = new System.Drawing.Point(520, 50);
            this.header_GroupName.Name = "header_GroupName";
            this.header_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GroupName.Size = new System.Drawing.Size(39, 36);
            this.header_GroupName.StyleName = "csHeader1";
            this.header_GroupName.Text = "Group Name";
            // 
            // header_SeasonCode
            // 
            this.header_SeasonCode.CanGrow = false;
            this.header_SeasonCode.Location = new System.Drawing.Point(559, 50);
            this.header_SeasonCode.Name = "header_SeasonCode";
            this.header_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SeasonCode.Size = new System.Drawing.Size(42, 36);
            this.header_SeasonCode.StyleName = "csHeader1";
            this.header_SeasonCode.Text = "Season Code";
            // 
            // header_PatternSource
            // 
            this.header_PatternSource.CanGrow = false;
            this.header_PatternSource.Location = new System.Drawing.Point(600, 50);
            this.header_PatternSource.Name = "header_PatternSource";
            this.header_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PatternSource.Size = new System.Drawing.Size(60, 36);
            this.header_PatternSource.StyleName = "csHeader1";
            this.header_PatternSource.Text = "Pattern Source";
            // 
            // header_ColorStatus
            // 
            this.header_ColorStatus.CanGrow = false;
            this.header_ColorStatus.Location = new System.Drawing.Point(660, 30);
            this.header_ColorStatus.Name = "header_ColorStatus";
            this.header_ColorStatus.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ColorStatus.Size = new System.Drawing.Size(60, 56);
            this.header_ColorStatus.StyleName = "csHeader1";
            this.header_ColorStatus.Text = "Color Status";
            // 
            // header_MaterialStatus
            // 
            this.header_MaterialStatus.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_MaterialStatus.CanGrow = false;
            this.header_MaterialStatus.Location = new System.Drawing.Point(720, 30);
            this.header_MaterialStatus.Name = "header_MaterialStatus";
            this.header_MaterialStatus.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MaterialStatus.Size = new System.Drawing.Size(126, 20);
            this.header_MaterialStatus.StyleName = "csHeader1";
            this.header_MaterialStatus.StylePriority.UseBorders = false;
            this.header_MaterialStatus.Text = "Material Status";
            // 
            // header_MaterialStatus_SampleYardageDate
            // 
            this.header_MaterialStatus_SampleYardageDate.CanGrow = false;
            this.header_MaterialStatus_SampleYardageDate.Location = new System.Drawing.Point(720, 50);
            this.header_MaterialStatus_SampleYardageDate.Name = "header_MaterialStatus_SampleYardageDate";
            this.header_MaterialStatus_SampleYardageDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MaterialStatus_SampleYardageDate.Size = new System.Drawing.Size(33, 36);
            this.header_MaterialStatus_SampleYardageDate.StyleName = "csHeader1";
            this.header_MaterialStatus_SampleYardageDate.Text = "Sample Yardage Date";
            // 
            // header_MaterialStatus_RedyeDate
            // 
            this.header_MaterialStatus_RedyeDate.CanGrow = false;
            this.header_MaterialStatus_RedyeDate.Location = new System.Drawing.Point(753, 50);
            this.header_MaterialStatus_RedyeDate.Name = "header_MaterialStatus_RedyeDate";
            this.header_MaterialStatus_RedyeDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MaterialStatus_RedyeDate.Size = new System.Drawing.Size(33, 36);
            this.header_MaterialStatus_RedyeDate.StyleName = "csHeader1";
            this.header_MaterialStatus_RedyeDate.Text = "Redye Date";
            // 
            // header_MaterialStatus_MidSpec
            // 
            this.header_MaterialStatus_MidSpec.CanGrow = false;
            this.header_MaterialStatus_MidSpec.Location = new System.Drawing.Point(786, 50);
            this.header_MaterialStatus_MidSpec.Name = "header_MaterialStatus_MidSpec";
            this.header_MaterialStatus_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MaterialStatus_MidSpec.Size = new System.Drawing.Size(60, 36);
            this.header_MaterialStatus_MidSpec.StyleName = "csHeader1";
            this.header_MaterialStatus_MidSpec.Text = "Mid Spec";
            // 
            // header_SampleMakeOrNot
            // 
            this.header_SampleMakeOrNot.CanGrow = false;
            this.header_SampleMakeOrNot.Location = new System.Drawing.Point(846, 30);
            this.header_SampleMakeOrNot.Name = "header_SampleMakeOrNot";
            this.header_SampleMakeOrNot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SampleMakeOrNot.Size = new System.Drawing.Size(60, 56);
            this.header_SampleMakeOrNot.StyleName = "csHeader1";
            this.header_SampleMakeOrNot.Text = "Sample Making or Not";
            // 
            // header_WorkShop
            // 
            this.header_WorkShop.CanGrow = false;
            this.header_WorkShop.Location = new System.Drawing.Point(906, 30);
            this.header_WorkShop.Name = "header_WorkShop";
            this.header_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WorkShop.Size = new System.Drawing.Size(60, 56);
            this.header_WorkShop.StyleName = "csHeader1";
            this.header_WorkShop.Text = "Work Shop";
            // 
            // header_SamplePatternStatus
            // 
            this.header_SamplePatternStatus.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_SamplePatternStatus.CanGrow = false;
            this.header_SamplePatternStatus.Location = new System.Drawing.Point(966, 30);
            this.header_SamplePatternStatus.Name = "header_SamplePatternStatus";
            this.header_SamplePatternStatus.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SamplePatternStatus.Size = new System.Drawing.Size(192, 20);
            this.header_SamplePatternStatus.StyleName = "csHeader1";
            this.header_SamplePatternStatus.StylePriority.UseBorders = false;
            this.header_SamplePatternStatus.Text = "Sample/Pattern Status";
            // 
            // header_SPS_SeqNr
            // 
            this.header_SPS_SeqNr.CanGrow = false;
            this.header_SPS_SeqNr.Location = new System.Drawing.Point(966, 50);
            this.header_SPS_SeqNr.Name = "header_SPS_SeqNr";
            this.header_SPS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SPS_SeqNr.Size = new System.Drawing.Size(60, 36);
            this.header_SPS_SeqNr.StyleName = "csHeader1";
            this.header_SPS_SeqNr.Text = "Seq  Nr.";
            // 
            // header_SPS_IssueDate
            // 
            this.header_SPS_IssueDate.CanGrow = false;
            this.header_SPS_IssueDate.Location = new System.Drawing.Point(1026, 50);
            this.header_SPS_IssueDate.Name = "header_SPS_IssueDate";
            this.header_SPS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SPS_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_SPS_IssueDate.StyleName = "csHeader1";
            this.header_SPS_IssueDate.Text = "Issue Date";
            // 
            // header_SPS_DefaultFinishDate
            // 
            this.header_SPS_DefaultFinishDate.CanGrow = false;
            this.header_SPS_DefaultFinishDate.Location = new System.Drawing.Point(1059, 50);
            this.header_SPS_DefaultFinishDate.Name = "header_SPS_DefaultFinishDate";
            this.header_SPS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SPS_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_SPS_DefaultFinishDate.StyleName = "csHeader1";
            this.header_SPS_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_SPS_TrialSampleDate
            // 
            this.header_SPS_TrialSampleDate.CanGrow = false;
            this.header_SPS_TrialSampleDate.Location = new System.Drawing.Point(1092, 50);
            this.header_SPS_TrialSampleDate.Name = "header_SPS_TrialSampleDate";
            this.header_SPS_TrialSampleDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SPS_TrialSampleDate.Size = new System.Drawing.Size(33, 36);
            this.header_SPS_TrialSampleDate.StyleName = "csHeader1";
            this.header_SPS_TrialSampleDate.Text = "Trial Sample Date";
            // 
            // header_SPS_CurrentFinishDate
            // 
            this.header_SPS_CurrentFinishDate.CanGrow = false;
            this.header_SPS_CurrentFinishDate.Location = new System.Drawing.Point(1125, 50);
            this.header_SPS_CurrentFinishDate.Name = "header_SPS_CurrentFinishDate";
            this.header_SPS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SPS_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_SPS_CurrentFinishDate.StyleName = "csHeader1";
            this.header_SPS_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_QuotationSatuts
            // 
            this.header_QuotationSatuts.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_QuotationSatuts.CanGrow = false;
            this.header_QuotationSatuts.Location = new System.Drawing.Point(1158, 30);
            this.header_QuotationSatuts.Name = "header_QuotationSatuts";
            this.header_QuotationSatuts.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QuotationSatuts.Size = new System.Drawing.Size(252, 20);
            this.header_QuotationSatuts.StyleName = "csHeader1";
            this.header_QuotationSatuts.StylePriority.UseBorders = false;
            this.header_QuotationSatuts.Text = "Quotation Satuts";
            // 
            // header_QS_MIDc
            // 
            this.header_QS_MIDc.CanGrow = false;
            this.header_QS_MIDc.Location = new System.Drawing.Point(1158, 50);
            this.header_QS_MIDc.Name = "header_QS_MIDc";
            this.header_QS_MIDc.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_MIDc.Size = new System.Drawing.Size(60, 36);
            this.header_QS_MIDc.StyleName = "csHeader1";
            this.header_QS_MIDc.Text = "MIDc";
            // 
            // header_QS_Pattern
            // 
            this.header_QS_Pattern.CanGrow = false;
            this.header_QS_Pattern.Location = new System.Drawing.Point(1218, 50);
            this.header_QS_Pattern.Name = "header_QS_Pattern";
            this.header_QS_Pattern.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_Pattern.Size = new System.Drawing.Size(60, 36);
            this.header_QS_Pattern.StyleName = "csHeader1";
            this.header_QS_Pattern.Text = "Pattern ";
            // 
            // header_QS_BOM
            // 
            this.header_QS_BOM.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_QS_BOM.CanGrow = false;
            this.header_QS_BOM.Location = new System.Drawing.Point(1278, 50);
            this.header_QS_BOM.Name = "header_QS_BOM";
            this.header_QS_BOM.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_BOM.Size = new System.Drawing.Size(66, 12);
            this.header_QS_BOM.StyleName = "csHeader1";
            this.header_QS_BOM.StylePriority.UseBorders = false;
            this.header_QS_BOM.Text = "BOM";
            // 
            // header_QS_BOM_MarkerDate
            // 
            this.header_QS_BOM_MarkerDate.CanGrow = false;
            this.header_QS_BOM_MarkerDate.Location = new System.Drawing.Point(1278, 62);
            this.header_QS_BOM_MarkerDate.Name = "header_QS_BOM_MarkerDate";
            this.header_QS_BOM_MarkerDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_BOM_MarkerDate.Size = new System.Drawing.Size(33, 24);
            this.header_QS_BOM_MarkerDate.StyleName = "csHeader1";
            this.header_QS_BOM_MarkerDate.Text = "Marker Date";
            // 
            // header_QS_BOM_YYDate
            // 
            this.header_QS_BOM_YYDate.CanGrow = false;
            this.header_QS_BOM_YYDate.Location = new System.Drawing.Point(1311, 62);
            this.header_QS_BOM_YYDate.Name = "header_QS_BOM_YYDate";
            this.header_QS_BOM_YYDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_BOM_YYDate.Size = new System.Drawing.Size(33, 24);
            this.header_QS_BOM_YYDate.StyleName = "csHeader1";
            this.header_QS_BOM_YYDate.Text = "YY Date";
            // 
            // header_QS_SMVDate
            // 
            this.header_QS_SMVDate.CanGrow = false;
            this.header_QS_SMVDate.Location = new System.Drawing.Point(1344, 50);
            this.header_QS_SMVDate.Name = "header_QS_SMVDate";
            this.header_QS_SMVDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_SMVDate.Size = new System.Drawing.Size(33, 36);
            this.header_QS_SMVDate.StyleName = "csHeader1";
            this.header_QS_SMVDate.Text = "SMV Date";
            // 
            // header_QS_QTNDate
            // 
            this.header_QS_QTNDate.CanGrow = false;
            this.header_QS_QTNDate.Location = new System.Drawing.Point(1377, 50);
            this.header_QS_QTNDate.Name = "header_QS_QTNDate";
            this.header_QS_QTNDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_QS_QTNDate.Size = new System.Drawing.Size(33, 36);
            this.header_QS_QTNDate.StyleName = "csHeader1";
            this.header_QS_QTNDate.Text = "QTN Date";
            // 
            // header_Adopted
            // 
            this.header_Adopted.CanGrow = false;
            this.header_Adopted.Location = new System.Drawing.Point(1410, 30);
            this.header_Adopted.Name = "header_Adopted";
            this.header_Adopted.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Adopted.Size = new System.Drawing.Size(60, 56);
            this.header_Adopted.StyleName = "csHeader1";
            this.header_Adopted.Text = "Adopted";
            // 
            // header_ERPBomDate
            // 
            this.header_ERPBomDate.CanGrow = false;
            this.header_ERPBomDate.Location = new System.Drawing.Point(1470, 30);
            this.header_ERPBomDate.Name = "header_ERPBomDate";
            this.header_ERPBomDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ERPBomDate.Size = new System.Drawing.Size(33, 56);
            this.header_ERPBomDate.StyleName = "csHeader1";
            this.header_ERPBomDate.Text = "ERP Bom Date";
            // 
            // header_Completed
            // 
            this.header_Completed.CanGrow = false;
            this.header_Completed.Location = new System.Drawing.Point(1503, 30);
            this.header_Completed.Name = "header_Completed";
            this.header_Completed.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Completed.Size = new System.Drawing.Size(60, 56);
            this.header_Completed.StyleName = "csHeader1";
            this.header_Completed.Text = "Completed";
            // 
            // header_Remarks
            // 
            this.header_Remarks.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.header_Remarks.CanGrow = false;
            this.header_Remarks.Location = new System.Drawing.Point(1563, 30);
            this.header_Remarks.Name = "header_Remarks";
            this.header_Remarks.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Remarks.Size = new System.Drawing.Size(35, 56);
            this.header_Remarks.StyleName = "csHeader1";
            this.header_Remarks.StylePriority.UseBorders = false;
            this.header_Remarks.Text = "Remarks";
            // 
            // csHeader1
            // 
            this.csHeader1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csHeader1.Font = new System.Drawing.Font("Times New Roman", 5F);
            this.csHeader1.Name = "csHeader1";
            this.csHeader1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csHeader2
            // 
            this.csHeader2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csHeader2.Font = new System.Drawing.Font("Times New Roman", 5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader2.Name = "csHeader2";
            this.csHeader2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Times New Roman", 5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // PageFooter
            // 
            this.PageFooter.Height = 0;
            this.PageFooter.Name = "PageFooter";
            this.PageFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.SPC.BO.SPCCustomer);
            // 
            // xrLabel1
            // 
            this.xrLabel1.CanGrow = false;
            this.xrLabel1.Location = new System.Drawing.Point(60, 50);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(65, 36);
            this.xrLabel1.StyleName = "csHeader1";
            this.xrLabel1.Text = "Seq Nr.";
            // 
            // xrLabel2
            // 
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SampleOrderOther", "")});
            this.xrLabel2.Location = new System.Drawing.Point(60, 0);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(65, 15);
            this.xrLabel2.StyleName = "csDetail";
            this.xrLabel2.Text = "xrLabel2";
            this.xrLabel2.WordWrap = false;
            // 
            // HBIMarketingReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(30, 23, 30, 20);
            this.PageHeight = 1169;
            this.PageWidth = 1654;
            this.PaperKind = System.Drawing.Printing.PaperKind.A3;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader1,
            this.csHeader2,
            this.csDetail});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}

