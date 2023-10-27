using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using DevExpress.XtraReports.UI;
using PH.SPC.BO;using PH.SPC.BackEnd;
namespace PH.SPC.BackEnd
{
    public partial class WARNPSListReport : DevExpress.XtraReports.UI.XtraReport
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
        private DevExpress.XtraReports.UI.XRLabel header_CustPONr;
        private DevExpress.XtraReports.UI.XRLabel header_ProjectNo;
        private DevExpress.XtraReports.UI.XRLabel header_FtyStartDate;
        private DevExpress.XtraReports.UI.XRLabel header_ExFtyDate;
        private DevExpress.XtraReports.UI.XRLabel header_DelDate;
        private DevExpress.XtraReports.UI.XRLabel header_CustStyleNr;
        private DevExpress.XtraReports.UI.XRLabel header_styleid;
        private DevExpress.XtraReports.UI.XRLabel header_PCCode;
        private DevExpress.XtraReports.UI.XRLabel header_BriefDesr;
        private DevExpress.XtraReports.UI.XRLabel header_BrandName;
        private DevExpress.XtraReports.UI.XRLabel header_GroupName;
        private DevExpress.XtraReports.UI.XRLabel header_SeasonCode;
        private DevExpress.XtraReports.UI.XRLabel header_PatternSource;
        private DevExpress.XtraReports.UI.XRLabel header_BaseSizeSpec;
        private DevExpress.XtraReports.UI.XRLabel header_BaseSizeSpec_RVS;
        private DevExpress.XtraReports.UI.XRLabel header_BaseSizeSpec_NC;
        private DevExpress.XtraReports.UI.XRLabel header_GradeRules;
        private DevExpress.XtraReports.UI.XRLabel header_GradeRules_RVS;
        private DevExpress.XtraReports.UI.XRLabel header_GradeRules_NC;
        private DevExpress.XtraReports.UI.XRLabel header_Construction;
        private DevExpress.XtraReports.UI.XRLabel header_Construction_RVS;
        private DevExpress.XtraReports.UI.XRLabel header_Construction_NC;
        private DevExpress.XtraReports.UI.XRLabel header_Materialinformation;
        private DevExpress.XtraReports.UI.XRLabel header_MatlTrims;
        private DevExpress.XtraReports.UI.XRLabel header_MatlTrims_RVS;
        private DevExpress.XtraReports.UI.XRLabel header_MatlTrims_NC;
        private DevExpress.XtraReports.UI.XRLabel header_MatlTrims_Subt;
        private DevExpress.XtraReports.UI.XRLabel header_MatlTrims_ReadyDate;
        private DevExpress.XtraReports.UI.XRLabel header_MidSpec;
        private DevExpress.XtraReports.UI.XRLabel header_WorkShop;
        private DevExpress.XtraReports.UI.XRLabel header_PP;
        private DevExpress.XtraReports.UI.XRLabel header_PP_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_PP_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_PP_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_PP_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_FIT;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_WS;
        private DevExpress.XtraReports.UI.XRLabel header_CMS;
        private DevExpress.XtraReports.UI.XRLabel header_Remarks;
        private DevExpress.XtraReports.UI.XRLabel detail_SampleOrderID;
        private DevExpress.XtraReports.UI.XRLabel detail_Customer;
        private DevExpress.XtraReports.UI.XRLabel detail_CustDept;
        private DevExpress.XtraReports.UI.XRLabel detail_CustPONr;
        private DevExpress.XtraReports.UI.XRLabel detail_ProjectNo;
        private DevExpress.XtraReports.UI.XRLabel detail_FtyStartDate;
        private DevExpress.XtraReports.UI.XRLabel detail_ExFtyDate;
        private DevExpress.XtraReports.UI.XRLabel detail_DelDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CustStyleNr;
        private DevExpress.XtraReports.UI.XRLabel detail_styleid;
        private DevExpress.XtraReports.UI.XRLabel detail_PCCode;
        private DevExpress.XtraReports.UI.XRLabel detail_BriefDesr;
        private DevExpress.XtraReports.UI.XRLabel detail_BrandName;
        private DevExpress.XtraReports.UI.XRLabel detail_GroupName;
        private DevExpress.XtraReports.UI.XRLabel detail_SeasonCode;
        private DevExpress.XtraReports.UI.XRLabel detail_PatternSource;
        private DevExpress.XtraReports.UI.XRLabel detail_BaseSizeSpec_RVS;
        private DevExpress.XtraReports.UI.XRLabel detail_BaseSizeSpec_NC;
        private DevExpress.XtraReports.UI.XRLabel detail_GradeRules_RVS;
        private DevExpress.XtraReports.UI.XRLabel detail_GradeRules_NC;
        private DevExpress.XtraReports.UI.XRLabel detail_Construction_RVS;
        private DevExpress.XtraReports.UI.XRLabel detail_Construction_NC;
        private DevExpress.XtraReports.UI.XRLabel detail_MatlTrims_RVS;
        private DevExpress.XtraReports.UI.XRLabel detail_MatlTrims_NC;
        private DevExpress.XtraReports.UI.XRLabel detail_MatlTrims_Subt;
        private DevExpress.XtraReports.UI.XRLabel detail_MatlTrims_ReadyDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MidSpec;
        private DevExpress.XtraReports.UI.XRLabel detail_WorkShop;
        private DevExpress.XtraReports.UI.XRLabel detail_PP_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_PP_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PP_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PP_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WS;
        private DevExpress.XtraReports.UI.XRLabel detail_CMS;
        private XRPageInfo xrPageInfo1;
        private XRLabel xrLabel2;
        private XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRLabel detail_Remarks;
        #endregion

        public WARNPSListReport(string customer)
        {
            InitializeComponent();
            this.headerLable.Text = this.headerLable.Text.Replace("WARN", customer);
           
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.detail_SampleOrderID = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Customer = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustDept = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustPONr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_ProjectNo = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FtyStartDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_ExFtyDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_DelDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustStyleNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_styleid = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PCCode = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_BriefDesr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_BrandName = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_GroupName = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_SeasonCode = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PatternSource = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_BaseSizeSpec_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_BaseSizeSpec_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_GradeRules_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_GradeRules_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Construction_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Construction_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MatlTrims_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MatlTrims_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MatlTrims_Subt = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MatlTrims_ReadyDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MidSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PP_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PP_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PP_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PP_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WS = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CMS = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Remarks = new DevExpress.XtraReports.UI.XRLabel();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.headerLable = new DevExpress.XtraReports.UI.XRLabel();
            this.header_StyleInformation = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SampleOrderID = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Customer = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustDept = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustPONr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_ProjectNo = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FtyStartDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_ExFtyDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_DelDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustStyleNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_styleid = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PCCode = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BriefDesr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BrandName = new DevExpress.XtraReports.UI.XRLabel();
            this.header_GroupName = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SeasonCode = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PatternSource = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BaseSizeSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BaseSizeSpec_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_BaseSizeSpec_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.header_GradeRules = new DevExpress.XtraReports.UI.XRLabel();
            this.header_GradeRules_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_GradeRules_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Construction = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Construction_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Construction_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Materialinformation = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MatlTrims = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MatlTrims_RVS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MatlTrims_NC = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MatlTrims_Subt = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MatlTrims_ReadyDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MidSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PP = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PP_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PP_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PP_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PP_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CMS = new DevExpress.XtraReports.UI.XRLabel();
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
            this.detail_CustPONr,
            this.detail_ProjectNo,
            this.detail_FtyStartDate,
            this.detail_ExFtyDate,
            this.detail_DelDate,
            this.detail_CustStyleNr,
            this.detail_styleid,
            this.detail_PCCode,
            this.detail_BriefDesr,
            this.detail_BrandName,
            this.detail_GroupName,
            this.detail_SeasonCode,
            this.detail_PatternSource,
            this.detail_BaseSizeSpec_RVS,
            this.detail_BaseSizeSpec_NC,
            this.detail_GradeRules_RVS,
            this.detail_GradeRules_NC,
            this.detail_Construction_RVS,
            this.detail_Construction_NC,
            this.detail_MatlTrims_RVS,
            this.detail_MatlTrims_NC,
            this.detail_MatlTrims_Subt,
            this.detail_MatlTrims_ReadyDate,
            this.detail_MidSpec,
            this.detail_WorkShop,
            this.detail_PP_SeqNr,
            this.detail_PP_IssueDate,
            this.detail_PP_DefaultFinishDate,
            this.detail_PP_CurrentFinishDate,
            this.detail_FIT_SeqNr,
            this.detail_FIT_IssueDate,
            this.detail_FIT_DefaultFinishDate,
            this.detail_FIT_CurrentFinishDate,
            this.detail_WS,
            this.detail_CMS,
            this.detail_Remarks});
            this.Detail.Height = 16;
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
            this.detail_SampleOrderID.Size = new System.Drawing.Size(59, 15);
            this.detail_SampleOrderID.StyleName = "csDetail";
            this.detail_SampleOrderID.WordWrap = false;
            // 
            // detail_Customer
            // 
            this.detail_Customer.CanGrow = false;
            this.detail_Customer.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Customer", "")});
            this.detail_Customer.Location = new System.Drawing.Point(119, 0);
            this.detail_Customer.Name = "detail_Customer";
            this.detail_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Customer.Size = new System.Drawing.Size(59, 15);
            this.detail_Customer.StyleName = "csDetail";
            this.detail_Customer.WordWrap = false;
            // 
            // detail_CustDept
            // 
            this.detail_CustDept.CanGrow = false;
            this.detail_CustDept.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustDept", "")});
            this.detail_CustDept.Location = new System.Drawing.Point(178, 0);
            this.detail_CustDept.Name = "detail_CustDept";
            this.detail_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustDept.Size = new System.Drawing.Size(59, 15);
            this.detail_CustDept.StyleName = "csDetail";
            this.detail_CustDept.WordWrap = false;
            // 
            // detail_CustPONr
            // 
            this.detail_CustPONr.CanGrow = false;
            this.detail_CustPONr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustPONr", "")});
            this.detail_CustPONr.Location = new System.Drawing.Point(237, 0);
            this.detail_CustPONr.Name = "detail_CustPONr";
            this.detail_CustPONr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustPONr.Size = new System.Drawing.Size(59, 15);
            this.detail_CustPONr.StyleName = "csDetail";
            this.detail_CustPONr.WordWrap = false;
            // 
            // detail_ProjectNo
            // 
            this.detail_ProjectNo.CanGrow = false;
            this.detail_ProjectNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNo", "")});
            this.detail_ProjectNo.Location = new System.Drawing.Point(296, 0);
            this.detail_ProjectNo.Name = "detail_ProjectNo";
            this.detail_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ProjectNo.Size = new System.Drawing.Size(59, 15);
            this.detail_ProjectNo.StyleName = "csDetail";
            this.detail_ProjectNo.WordWrap = false;
            // 
            // detail_FtyStartDate
            // 
            this.detail_FtyStartDate.CanGrow = false;
            this.detail_FtyStartDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FtyStartDate", "{0:yy/MM/dd}")});
            this.detail_FtyStartDate.Location = new System.Drawing.Point(355, 0);
            this.detail_FtyStartDate.Name = "detail_FtyStartDate";
            this.detail_FtyStartDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FtyStartDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FtyStartDate.StyleName = "csDetail";
            this.detail_FtyStartDate.WordWrap = false;
            // 
            // detail_ExFtyDate
            // 
            this.detail_ExFtyDate.CanGrow = false;
            this.detail_ExFtyDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ExFtyDate", "{0:yy/MM/dd}")});
            this.detail_ExFtyDate.Location = new System.Drawing.Point(388, 0);
            this.detail_ExFtyDate.Name = "detail_ExFtyDate";
            this.detail_ExFtyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ExFtyDate.Size = new System.Drawing.Size(33, 15);
            this.detail_ExFtyDate.StyleName = "csDetail";
            this.detail_ExFtyDate.WordWrap = false;
            // 
            // detail_DelDate
            // 
            this.detail_DelDate.CanGrow = false;
            this.detail_DelDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "DelDate", "{0:yy/MM/dd}")});
            this.detail_DelDate.Location = new System.Drawing.Point(421, 0);
            this.detail_DelDate.Name = "detail_DelDate";
            this.detail_DelDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_DelDate.Size = new System.Drawing.Size(33, 15);
            this.detail_DelDate.StyleName = "csDetail";
            this.detail_DelDate.WordWrap = false;
            // 
            // detail_CustStyleNr
            // 
            this.detail_CustStyleNr.CanGrow = false;
            this.detail_CustStyleNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustStyleNr", "")});
            this.detail_CustStyleNr.Location = new System.Drawing.Point(454, 0);
            this.detail_CustStyleNr.Name = "detail_CustStyleNr";
            this.detail_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustStyleNr.Size = new System.Drawing.Size(59, 15);
            this.detail_CustStyleNr.StyleName = "csDetail";
            this.detail_CustStyleNr.WordWrap = false;
            // 
            // detail_styleid
            // 
            this.detail_styleid.CanGrow = false;
            this.detail_styleid.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "StyleID", "")});
            this.detail_styleid.Location = new System.Drawing.Point(513, 0);
            this.detail_styleid.Name = "detail_styleid";
            this.detail_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_styleid.Size = new System.Drawing.Size(59, 15);
            this.detail_styleid.StyleName = "csDetail";
            this.detail_styleid.WordWrap = false;
            // 
            // detail_PCCode
            // 
            this.detail_PCCode.CanGrow = false;
            this.detail_PCCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PCCode", "")});
            this.detail_PCCode.Location = new System.Drawing.Point(572, 0);
            this.detail_PCCode.Name = "detail_PCCode";
            this.detail_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PCCode.Size = new System.Drawing.Size(26, 15);
            this.detail_PCCode.StyleName = "csDetail";
            this.detail_PCCode.WordWrap = false;
            // 
            // detail_BriefDesr
            // 
            this.detail_BriefDesr.CanGrow = false;
            this.detail_BriefDesr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BriefDesr", "")});
            this.detail_BriefDesr.Location = new System.Drawing.Point(598, 0);
            this.detail_BriefDesr.Name = "detail_BriefDesr";
            this.detail_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BriefDesr.Size = new System.Drawing.Size(59, 15);
            this.detail_BriefDesr.StyleName = "csDetail";
            this.detail_BriefDesr.WordWrap = false;
            // 
            // detail_BrandName
            // 
            this.detail_BrandName.CanGrow = false;
            this.detail_BrandName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BrandName", "")});
            this.detail_BrandName.Location = new System.Drawing.Point(657, 0);
            this.detail_BrandName.Name = "detail_BrandName";
            this.detail_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BrandName.Size = new System.Drawing.Size(59, 15);
            this.detail_BrandName.StyleName = "csDetail";
            this.detail_BrandName.WordWrap = false;
            // 
            // detail_GroupName
            // 
            this.detail_GroupName.CanGrow = false;
            this.detail_GroupName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GroupName", "")});
            this.detail_GroupName.Location = new System.Drawing.Point(716, 0);
            this.detail_GroupName.Name = "detail_GroupName";
            this.detail_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_GroupName.Size = new System.Drawing.Size(51, 15);
            this.detail_GroupName.StyleName = "csDetail";
            this.detail_GroupName.WordWrap = false;
            // 
            // detail_SeasonCode
            // 
            this.detail_SeasonCode.CanGrow = false;
            this.detail_SeasonCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SeasonCode", "")});
            this.detail_SeasonCode.Location = new System.Drawing.Point(766, 0);
            this.detail_SeasonCode.Name = "detail_SeasonCode";
            this.detail_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SeasonCode.Size = new System.Drawing.Size(41, 15);
            this.detail_SeasonCode.StyleName = "csDetail";
            this.detail_SeasonCode.WordWrap = false;
            // 
            // detail_PatternSource
            // 
            this.detail_PatternSource.CanGrow = false;
            this.detail_PatternSource.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PatternSource", "")});
            this.detail_PatternSource.Location = new System.Drawing.Point(807, 0);
            this.detail_PatternSource.Name = "detail_PatternSource";
            this.detail_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PatternSource.Size = new System.Drawing.Size(59, 15);
            this.detail_PatternSource.StyleName = "csDetail";
            this.detail_PatternSource.WordWrap = false;
            // 
            // detail_BaseSizeSpec_RVS
            // 
            this.detail_BaseSizeSpec_RVS.CanGrow = false;
            this.detail_BaseSizeSpec_RVS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BaseSizeSpec_RVSDesc", "")});
            this.detail_BaseSizeSpec_RVS.Location = new System.Drawing.Point(866, 0);
            this.detail_BaseSizeSpec_RVS.Name = "detail_BaseSizeSpec_RVS";
            this.detail_BaseSizeSpec_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BaseSizeSpec_RVS.Size = new System.Drawing.Size(15, 15);
            this.detail_BaseSizeSpec_RVS.StyleName = "csDetail";
            this.detail_BaseSizeSpec_RVS.StylePriority.UseTextAlignment = false;
            this.detail_BaseSizeSpec_RVS.WordWrap = false;
            // 
            // detail_BaseSizeSpec_NC
            // 
            this.detail_BaseSizeSpec_NC.CanGrow = false;
            this.detail_BaseSizeSpec_NC.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BaseSizeSpec_NCDesc", "")});
            this.detail_BaseSizeSpec_NC.Location = new System.Drawing.Point(881, 0);
            this.detail_BaseSizeSpec_NC.Name = "detail_BaseSizeSpec_NC";
            this.detail_BaseSizeSpec_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BaseSizeSpec_NC.Size = new System.Drawing.Size(15, 15);
            this.detail_BaseSizeSpec_NC.StyleName = "csDetail";
            this.detail_BaseSizeSpec_NC.WordWrap = false;
            // 
            // detail_GradeRules_RVS
            // 
            this.detail_GradeRules_RVS.CanGrow = false;
            this.detail_GradeRules_RVS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GradeRules_RVSDesc", "")});
            this.detail_GradeRules_RVS.Location = new System.Drawing.Point(896, 0);
            this.detail_GradeRules_RVS.Name = "detail_GradeRules_RVS";
            this.detail_GradeRules_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_GradeRules_RVS.Size = new System.Drawing.Size(15, 15);
            this.detail_GradeRules_RVS.StyleName = "csDetail";
            this.detail_GradeRules_RVS.WordWrap = false;
            // 
            // detail_GradeRules_NC
            // 
            this.detail_GradeRules_NC.CanGrow = false;
            this.detail_GradeRules_NC.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GradeRules_NCDesc", "")});
            this.detail_GradeRules_NC.Location = new System.Drawing.Point(911, 0);
            this.detail_GradeRules_NC.Name = "detail_GradeRules_NC";
            this.detail_GradeRules_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_GradeRules_NC.Size = new System.Drawing.Size(15, 15);
            this.detail_GradeRules_NC.StyleName = "csDetail";
            this.detail_GradeRules_NC.WordWrap = false;
            // 
            // detail_Construction_RVS
            // 
            this.detail_Construction_RVS.CanGrow = false;
            this.detail_Construction_RVS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Construction_RVSDesc", "")});
            this.detail_Construction_RVS.Location = new System.Drawing.Point(926, 0);
            this.detail_Construction_RVS.Name = "detail_Construction_RVS";
            this.detail_Construction_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Construction_RVS.Size = new System.Drawing.Size(15, 15);
            this.detail_Construction_RVS.StyleName = "csDetail";
            this.detail_Construction_RVS.WordWrap = false;
            // 
            // detail_Construction_NC
            // 
            this.detail_Construction_NC.CanGrow = false;
            this.detail_Construction_NC.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Construction_NCDesc", "")});
            this.detail_Construction_NC.Location = new System.Drawing.Point(941, 0);
            this.detail_Construction_NC.Name = "detail_Construction_NC";
            this.detail_Construction_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Construction_NC.Size = new System.Drawing.Size(15, 15);
            this.detail_Construction_NC.StyleName = "csDetail";
            this.detail_Construction_NC.WordWrap = false;
            // 
            // detail_MatlTrims_RVS
            // 
            this.detail_MatlTrims_RVS.CanGrow = false;
            this.detail_MatlTrims_RVS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MatlTrims_RVSDesc", "")});
            this.detail_MatlTrims_RVS.Location = new System.Drawing.Point(956, 0);
            this.detail_MatlTrims_RVS.Name = "detail_MatlTrims_RVS";
            this.detail_MatlTrims_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_RVS.Size = new System.Drawing.Size(15, 15);
            this.detail_MatlTrims_RVS.StyleName = "csDetail";
            this.detail_MatlTrims_RVS.WordWrap = false;
            // 
            // detail_MatlTrims_NC
            // 
            this.detail_MatlTrims_NC.CanGrow = false;
            this.detail_MatlTrims_NC.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MatlTrims_NCDesc", "")});
            this.detail_MatlTrims_NC.Location = new System.Drawing.Point(971, 0);
            this.detail_MatlTrims_NC.Name = "detail_MatlTrims_NC";
            this.detail_MatlTrims_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_NC.Size = new System.Drawing.Size(15, 15);
            this.detail_MatlTrims_NC.StyleName = "csDetail";
            this.detail_MatlTrims_NC.WordWrap = false;
            // 
            // detail_MatlTrims_Subt
            // 
            this.detail_MatlTrims_Subt.CanGrow = false;
            this.detail_MatlTrims_Subt.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MatlTrims_SubtDesc", "")});
            this.detail_MatlTrims_Subt.Location = new System.Drawing.Point(986, 0);
            this.detail_MatlTrims_Subt.Name = "detail_MatlTrims_Subt";
            this.detail_MatlTrims_Subt.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_Subt.Size = new System.Drawing.Size(15, 15);
            this.detail_MatlTrims_Subt.StyleName = "csDetail";
            this.detail_MatlTrims_Subt.WordWrap = false;
            // 
            // detail_MatlTrims_ReadyDate
            // 
            this.detail_MatlTrims_ReadyDate.CanGrow = false;
            this.detail_MatlTrims_ReadyDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MatlTrims_ReadyDate", "{0:yy/MM/dd}")});
            this.detail_MatlTrims_ReadyDate.Location = new System.Drawing.Point(1001, 0);
            this.detail_MatlTrims_ReadyDate.Name = "detail_MatlTrims_ReadyDate";
            this.detail_MatlTrims_ReadyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_ReadyDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MatlTrims_ReadyDate.StyleName = "csDetail";
            this.detail_MatlTrims_ReadyDate.WordWrap = false;
            // 
            // detail_MidSpec
            // 
            this.detail_MidSpec.CanGrow = false;
            this.detail_MidSpec.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MidSpec", "")});
            this.detail_MidSpec.Location = new System.Drawing.Point(1034, 0);
            this.detail_MidSpec.Name = "detail_MidSpec";
            this.detail_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MidSpec.Size = new System.Drawing.Size(59, 15);
            this.detail_MidSpec.StyleName = "csDetail";
            this.detail_MidSpec.WordWrap = false;
            // 
            // detail_WorkShop
            // 
            this.detail_WorkShop.CanGrow = false;
            this.detail_WorkShop.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WorkShop", "")});
            this.detail_WorkShop.Location = new System.Drawing.Point(1093, 0);
            this.detail_WorkShop.Name = "detail_WorkShop";
            this.detail_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WorkShop.Size = new System.Drawing.Size(59, 15);
            this.detail_WorkShop.StyleName = "csDetail";
            this.detail_WorkShop.WordWrap = false;
            // 
            // detail_PP_SeqNr
            // 
            this.detail_PP_SeqNr.CanGrow = false;
            this.detail_PP_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PP_SeqNr", "")});
            this.detail_PP_SeqNr.Location = new System.Drawing.Point(1152, 0);
            this.detail_PP_SeqNr.Name = "detail_PP_SeqNr";
            this.detail_PP_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PP_SeqNr.Size = new System.Drawing.Size(59, 15);
            this.detail_PP_SeqNr.StyleName = "csDetail";
            this.detail_PP_SeqNr.WordWrap = false;
            // 
            // detail_PP_IssueDate
            // 
            this.detail_PP_IssueDate.CanGrow = false;
            this.detail_PP_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PP_IssueDate", "{0:yy/MM/dd}")});
            this.detail_PP_IssueDate.Location = new System.Drawing.Point(1211, 0);
            this.detail_PP_IssueDate.Name = "detail_PP_IssueDate";
            this.detail_PP_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PP_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PP_IssueDate.StyleName = "csDetail";
            this.detail_PP_IssueDate.WordWrap = false;
            // 
            // detail_PP_DefaultFinishDate
            // 
            this.detail_PP_DefaultFinishDate.CanGrow = false;
            this.detail_PP_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PP_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_PP_DefaultFinishDate.Location = new System.Drawing.Point(1244, 0);
            this.detail_PP_DefaultFinishDate.Name = "detail_PP_DefaultFinishDate";
            this.detail_PP_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PP_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PP_DefaultFinishDate.StyleName = "csDetail";
            this.detail_PP_DefaultFinishDate.WordWrap = false;
            // 
            // detail_PP_CurrentFinishDate
            // 
            this.detail_PP_CurrentFinishDate.CanGrow = false;
            this.detail_PP_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PP_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_PP_CurrentFinishDate.Location = new System.Drawing.Point(1277, 0);
            this.detail_PP_CurrentFinishDate.Name = "detail_PP_CurrentFinishDate";
            this.detail_PP_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PP_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PP_CurrentFinishDate.StyleName = "csDetail";
            this.detail_PP_CurrentFinishDate.WordWrap = false;
            // 
            // detail_FIT_SeqNr
            // 
            this.detail_FIT_SeqNr.CanGrow = false;
            this.detail_FIT_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FIT_SeqNr", "")});
            this.detail_FIT_SeqNr.Location = new System.Drawing.Point(1310, 0);
            this.detail_FIT_SeqNr.Name = "detail_FIT_SeqNr";
            this.detail_FIT_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FIT_SeqNr.Size = new System.Drawing.Size(59, 15);
            this.detail_FIT_SeqNr.StyleName = "csDetail";
            this.detail_FIT_SeqNr.WordWrap = false;
            // 
            // detail_FIT_IssueDate
            // 
            this.detail_FIT_IssueDate.CanGrow = false;
            this.detail_FIT_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FIT_IssueDate", "{0:yy/MM/dd}")});
            this.detail_FIT_IssueDate.Location = new System.Drawing.Point(1369, 0);
            this.detail_FIT_IssueDate.Name = "detail_FIT_IssueDate";
            this.detail_FIT_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FIT_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FIT_IssueDate.StyleName = "csDetail";
            this.detail_FIT_IssueDate.WordWrap = false;
            // 
            // detail_FIT_DefaultFinishDate
            // 
            this.detail_FIT_DefaultFinishDate.CanGrow = false;
            this.detail_FIT_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FIT_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_FIT_DefaultFinishDate.Location = new System.Drawing.Point(1402, 0);
            this.detail_FIT_DefaultFinishDate.Name = "detail_FIT_DefaultFinishDate";
            this.detail_FIT_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FIT_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FIT_DefaultFinishDate.StyleName = "csDetail";
            this.detail_FIT_DefaultFinishDate.WordWrap = false;
            // 
            // detail_FIT_CurrentFinishDate
            // 
            this.detail_FIT_CurrentFinishDate.CanGrow = false;
            this.detail_FIT_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FIT_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_FIT_CurrentFinishDate.Location = new System.Drawing.Point(1435, 0);
            this.detail_FIT_CurrentFinishDate.Name = "detail_FIT_CurrentFinishDate";
            this.detail_FIT_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FIT_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FIT_CurrentFinishDate.StyleName = "csDetail";
            this.detail_FIT_CurrentFinishDate.WordWrap = false;
            // 
            // detail_WS
            // 
            this.detail_WS.CanGrow = false;
            this.detail_WS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WS", "")});
            this.detail_WS.Location = new System.Drawing.Point(1468, 0);
            this.detail_WS.Name = "detail_WS";
            this.detail_WS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WS.Size = new System.Drawing.Size(59, 15);
            this.detail_WS.StyleName = "csDetail";
            this.detail_WS.WordWrap = false;
            // 
            // detail_CMS
            // 
            this.detail_CMS.CanGrow = false;
            this.detail_CMS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CMS", "{0:yy/MM/dd}")});
            this.detail_CMS.Location = new System.Drawing.Point(1527, 0);
            this.detail_CMS.Name = "detail_CMS";
            this.detail_CMS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CMS.Size = new System.Drawing.Size(33, 15);
            this.detail_CMS.StyleName = "csDetail";
            this.detail_CMS.WordWrap = false;
            // 
            // detail_Remarks
            // 
            this.detail_Remarks.CanGrow = false;
            this.detail_Remarks.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Remarks", "")});
            this.detail_Remarks.Location = new System.Drawing.Point(1560, 0);
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
            this.header_CustPONr,
            this.header_ProjectNo,
            this.header_FtyStartDate,
            this.header_ExFtyDate,
            this.header_DelDate,
            this.header_CustStyleNr,
            this.header_styleid,
            this.header_PCCode,
            this.header_BriefDesr,
            this.header_BrandName,
            this.header_GroupName,
            this.header_SeasonCode,
            this.header_PatternSource,
            this.header_BaseSizeSpec,
            this.header_BaseSizeSpec_RVS,
            this.header_BaseSizeSpec_NC,
            this.header_GradeRules,
            this.header_GradeRules_RVS,
            this.header_GradeRules_NC,
            this.header_Construction,
            this.header_Construction_RVS,
            this.header_Construction_NC,
            this.header_Materialinformation,
            this.header_MatlTrims,
            this.header_MatlTrims_RVS,
            this.header_MatlTrims_NC,
            this.header_MatlTrims_Subt,
            this.header_MatlTrims_ReadyDate,
            this.header_MidSpec,
            this.header_WorkShop,
            this.header_PP,
            this.header_PP_SeqNr,
            this.header_PP_IssueDate,
            this.header_PP_DefaultFinishDate,
            this.header_PP_CurrentFinishDate,
            this.header_FIT,
            this.header_FIT_SeqNr,
            this.header_FIT_IssueDate,
            this.header_FIT_DefaultFinishDate,
            this.header_FIT_CurrentFinishDate,
            this.header_WS,
            this.header_CMS,
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
            this.xrPageInfo1.Location = new System.Drawing.Point(1467, 8);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.xrPageInfo1.Size = new System.Drawing.Size(119, 16);
            // 
            // headerLable
            // 
            this.headerLable.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold);
            this.headerLable.Location = new System.Drawing.Point(0, 0);
            this.headerLable.Name = "headerLable";
            this.headerLable.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.headerLable.Size = new System.Drawing.Size(667, 25);
            this.headerLable.StylePriority.UseFont = false;
            this.headerLable.StylePriority.UseTextAlignment = false;
            this.headerLable.Text = "Sample Processing Control - Production Sample Status (WARN)";
            this.headerLable.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // header_StyleInformation
            // 
            this.header_StyleInformation.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_StyleInformation.CanGrow = false;
            this.header_StyleInformation.Location = new System.Drawing.Point(0, 30);
            this.header_StyleInformation.Name = "header_StyleInformation";
            this.header_StyleInformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_StyleInformation.Size = new System.Drawing.Size(956, 20);
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
            this.header_SampleOrderID.Size = new System.Drawing.Size(59, 36);
            this.header_SampleOrderID.StyleName = "csHeader1";
            this.header_SampleOrderID.Text = "Sample Order Nr";
            // 
            // header_Customer
            // 
            this.header_Customer.CanGrow = false;
            this.header_Customer.Location = new System.Drawing.Point(119, 50);
            this.header_Customer.Name = "header_Customer";
            this.header_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Customer.Size = new System.Drawing.Size(59, 36);
            this.header_Customer.StyleName = "csHeader1";
            this.header_Customer.Text = "Cust Code";
            // 
            // header_CustDept
            // 
            this.header_CustDept.CanGrow = false;
            this.header_CustDept.Location = new System.Drawing.Point(178, 50);
            this.header_CustDept.Name = "header_CustDept";
            this.header_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustDept.Size = new System.Drawing.Size(59, 36);
            this.header_CustDept.StyleName = "csHeader1";
            this.header_CustDept.Text = "Cust Dept";
            // 
            // header_CustPONr
            // 
            this.header_CustPONr.CanGrow = false;
            this.header_CustPONr.Location = new System.Drawing.Point(237, 50);
            this.header_CustPONr.Name = "header_CustPONr";
            this.header_CustPONr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustPONr.Size = new System.Drawing.Size(59, 36);
            this.header_CustPONr.StyleName = "csHeader1";
            this.header_CustPONr.Text = "PO Nr";
            // 
            // header_ProjectNo
            // 
            this.header_ProjectNo.CanGrow = false;
            this.header_ProjectNo.Location = new System.Drawing.Point(296, 50);
            this.header_ProjectNo.Name = "header_ProjectNo";
            this.header_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ProjectNo.Size = new System.Drawing.Size(59, 36);
            this.header_ProjectNo.StyleName = "csHeader1";
            this.header_ProjectNo.Text = "Project Nr";
            // 
            // header_FtyStartDate
            // 
            this.header_FtyStartDate.CanGrow = false;
            this.header_FtyStartDate.Location = new System.Drawing.Point(355, 50);
            this.header_FtyStartDate.Name = "header_FtyStartDate";
            this.header_FtyStartDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FtyStartDate.Size = new System.Drawing.Size(33, 36);
            this.header_FtyStartDate.StyleName = "csHeader1";
            this.header_FtyStartDate.Text = "Fty Start Date";
            // 
            // header_ExFtyDate
            // 
            this.header_ExFtyDate.CanGrow = false;
            this.header_ExFtyDate.Location = new System.Drawing.Point(388, 50);
            this.header_ExFtyDate.Name = "header_ExFtyDate";
            this.header_ExFtyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ExFtyDate.Size = new System.Drawing.Size(33, 36);
            this.header_ExFtyDate.StyleName = "csHeader1";
            this.header_ExFtyDate.Text = "Ex-Fty Date";
            // 
            // header_DelDate
            // 
            this.header_DelDate.CanGrow = false;
            this.header_DelDate.Location = new System.Drawing.Point(421, 50);
            this.header_DelDate.Name = "header_DelDate";
            this.header_DelDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_DelDate.Size = new System.Drawing.Size(33, 36);
            this.header_DelDate.StyleName = "csHeader1";
            this.header_DelDate.Text = "Del Date";
            // 
            // header_CustStyleNr
            // 
            this.header_CustStyleNr.CanGrow = false;
            this.header_CustStyleNr.Location = new System.Drawing.Point(454, 50);
            this.header_CustStyleNr.Name = "header_CustStyleNr";
            this.header_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustStyleNr.Size = new System.Drawing.Size(59, 36);
            this.header_CustStyleNr.StyleName = "csHeader1";
            this.header_CustStyleNr.Text = "Cust Style Nr";
            // 
            // header_styleid
            // 
            this.header_styleid.CanGrow = false;
            this.header_styleid.Location = new System.Drawing.Point(513, 50);
            this.header_styleid.Name = "header_styleid";
            this.header_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_styleid.Size = new System.Drawing.Size(59, 36);
            this.header_styleid.StyleName = "csHeader1";
            this.header_styleid.Text = "PH Style Nr";
            // 
            // header_PCCode
            // 
            this.header_PCCode.CanGrow = false;
            this.header_PCCode.Location = new System.Drawing.Point(572, 50);
            this.header_PCCode.Name = "header_PCCode";
            this.header_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PCCode.Size = new System.Drawing.Size(26, 36);
            this.header_PCCode.StyleName = "csHeader1";
            this.header_PCCode.Text = "PC Code";
            // 
            // header_BriefDesr
            // 
            this.header_BriefDesr.CanGrow = false;
            this.header_BriefDesr.Location = new System.Drawing.Point(598, 50);
            this.header_BriefDesr.Name = "header_BriefDesr";
            this.header_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BriefDesr.Size = new System.Drawing.Size(59, 36);
            this.header_BriefDesr.StyleName = "csHeader1";
            this.header_BriefDesr.Text = "Brief Desr.";
            // 
            // header_BrandName
            // 
            this.header_BrandName.CanGrow = false;
            this.header_BrandName.Location = new System.Drawing.Point(657, 50);
            this.header_BrandName.Name = "header_BrandName";
            this.header_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BrandName.Size = new System.Drawing.Size(59, 36);
            this.header_BrandName.StyleName = "csHeader1";
            this.header_BrandName.Text = "Brand Name";
            // 
            // header_GroupName
            // 
            this.header_GroupName.CanGrow = false;
            this.header_GroupName.Location = new System.Drawing.Point(716, 50);
            this.header_GroupName.Name = "header_GroupName";
            this.header_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GroupName.Size = new System.Drawing.Size(51, 36);
            this.header_GroupName.StyleName = "csHeader1";
            this.header_GroupName.Text = "Group Name";
            // 
            // header_SeasonCode
            // 
            this.header_SeasonCode.CanGrow = false;
            this.header_SeasonCode.Location = new System.Drawing.Point(766, 50);
            this.header_SeasonCode.Name = "header_SeasonCode";
            this.header_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SeasonCode.Size = new System.Drawing.Size(41, 36);
            this.header_SeasonCode.StyleName = "csHeader1";
            this.header_SeasonCode.Text = "Season Code";
            // 
            // header_PatternSource
            // 
            this.header_PatternSource.CanGrow = false;
            this.header_PatternSource.Location = new System.Drawing.Point(807, 50);
            this.header_PatternSource.Name = "header_PatternSource";
            this.header_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PatternSource.Size = new System.Drawing.Size(59, 36);
            this.header_PatternSource.StyleName = "csHeader1";
            this.header_PatternSource.Text = "Pattern Source";
            // 
            // header_BaseSizeSpec
            // 
            this.header_BaseSizeSpec.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_BaseSizeSpec.CanGrow = false;
            this.header_BaseSizeSpec.Location = new System.Drawing.Point(866, 50);
            this.header_BaseSizeSpec.Name = "header_BaseSizeSpec";
            this.header_BaseSizeSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BaseSizeSpec.Size = new System.Drawing.Size(30, 12);
            this.header_BaseSizeSpec.StyleName = "csHeader1";
            this.header_BaseSizeSpec.StylePriority.UseBorders = false;
            this.header_BaseSizeSpec.Text = "Base Size Spec.";
            // 
            // header_BaseSizeSpec_RVS
            // 
            this.header_BaseSizeSpec_RVS.CanGrow = false;
            this.header_BaseSizeSpec_RVS.Location = new System.Drawing.Point(866, 62);
            this.header_BaseSizeSpec_RVS.Name = "header_BaseSizeSpec_RVS";
            this.header_BaseSizeSpec_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BaseSizeSpec_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_BaseSizeSpec_RVS.StyleName = "csHeader1";
            this.header_BaseSizeSpec_RVS.Text = "RVS";
            // 
            // header_BaseSizeSpec_NC
            // 
            this.header_BaseSizeSpec_NC.CanGrow = false;
            this.header_BaseSizeSpec_NC.Location = new System.Drawing.Point(881, 62);
            this.header_BaseSizeSpec_NC.Name = "header_BaseSizeSpec_NC";
            this.header_BaseSizeSpec_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BaseSizeSpec_NC.Size = new System.Drawing.Size(15, 24);
            this.header_BaseSizeSpec_NC.StyleName = "csHeader1";
            this.header_BaseSizeSpec_NC.Text = "NC";
            // 
            // header_GradeRules
            // 
            this.header_GradeRules.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_GradeRules.CanGrow = false;
            this.header_GradeRules.Location = new System.Drawing.Point(896, 50);
            this.header_GradeRules.Name = "header_GradeRules";
            this.header_GradeRules.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GradeRules.Size = new System.Drawing.Size(30, 12);
            this.header_GradeRules.StyleName = "csHeader1";
            this.header_GradeRules.StylePriority.UseBorders = false;
            this.header_GradeRules.Text = "Grade Rules";
            // 
            // header_GradeRules_RVS
            // 
            this.header_GradeRules_RVS.CanGrow = false;
            this.header_GradeRules_RVS.Location = new System.Drawing.Point(896, 62);
            this.header_GradeRules_RVS.Name = "header_GradeRules_RVS";
            this.header_GradeRules_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GradeRules_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_GradeRules_RVS.StyleName = "csHeader1";
            this.header_GradeRules_RVS.Text = "RVS";
            // 
            // header_GradeRules_NC
            // 
            this.header_GradeRules_NC.CanGrow = false;
            this.header_GradeRules_NC.Location = new System.Drawing.Point(911, 62);
            this.header_GradeRules_NC.Name = "header_GradeRules_NC";
            this.header_GradeRules_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GradeRules_NC.Size = new System.Drawing.Size(15, 24);
            this.header_GradeRules_NC.StyleName = "csHeader1";
            this.header_GradeRules_NC.Text = "NC";
            // 
            // header_Construction
            // 
            this.header_Construction.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_Construction.CanGrow = false;
            this.header_Construction.Location = new System.Drawing.Point(926, 50);
            this.header_Construction.Name = "header_Construction";
            this.header_Construction.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Construction.Size = new System.Drawing.Size(30, 12);
            this.header_Construction.StyleName = "csHeader1";
            this.header_Construction.StylePriority.UseBorders = false;
            this.header_Construction.Text = "Construction";
            // 
            // header_Construction_RVS
            // 
            this.header_Construction_RVS.CanGrow = false;
            this.header_Construction_RVS.Location = new System.Drawing.Point(926, 62);
            this.header_Construction_RVS.Name = "header_Construction_RVS";
            this.header_Construction_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Construction_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_Construction_RVS.StyleName = "csHeader1";
            this.header_Construction_RVS.Text = "RVS";
            // 
            // header_Construction_NC
            // 
            this.header_Construction_NC.CanGrow = false;
            this.header_Construction_NC.Location = new System.Drawing.Point(941, 62);
            this.header_Construction_NC.Name = "header_Construction_NC";
            this.header_Construction_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Construction_NC.Size = new System.Drawing.Size(15, 24);
            this.header_Construction_NC.StyleName = "csHeader1";
            this.header_Construction_NC.Text = "NC";
            // 
            // header_Materialinformation
            // 
            this.header_Materialinformation.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_Materialinformation.CanGrow = false;
            this.header_Materialinformation.Location = new System.Drawing.Point(956, 30);
            this.header_Materialinformation.Name = "header_Materialinformation";
            this.header_Materialinformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Materialinformation.Size = new System.Drawing.Size(137, 20);
            this.header_Materialinformation.StyleName = "csHeader1";
            this.header_Materialinformation.StylePriority.UseBorders = false;
            this.header_Materialinformation.Text = "Material information";
            // 
            // header_MatlTrims
            // 
            this.header_MatlTrims.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_MatlTrims.CanGrow = false;
            this.header_MatlTrims.Location = new System.Drawing.Point(956, 50);
            this.header_MatlTrims.Name = "header_MatlTrims";
            this.header_MatlTrims.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims.Size = new System.Drawing.Size(78, 12);
            this.header_MatlTrims.StyleName = "csHeader1";
            this.header_MatlTrims.StylePriority.UseBorders = false;
            this.header_MatlTrims.Text = "Mat\'l / Trims";
            // 
            // header_MatlTrims_RVS
            // 
            this.header_MatlTrims_RVS.CanGrow = false;
            this.header_MatlTrims_RVS.Location = new System.Drawing.Point(956, 62);
            this.header_MatlTrims_RVS.Name = "header_MatlTrims_RVS";
            this.header_MatlTrims_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_RVS.StyleName = "csHeader1";
            this.header_MatlTrims_RVS.Text = "RVS";
            // 
            // header_MatlTrims_NC
            // 
            this.header_MatlTrims_NC.CanGrow = false;
            this.header_MatlTrims_NC.Location = new System.Drawing.Point(971, 62);
            this.header_MatlTrims_NC.Name = "header_MatlTrims_NC";
            this.header_MatlTrims_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_NC.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_NC.StyleName = "csHeader1";
            this.header_MatlTrims_NC.Text = "NC";
            // 
            // header_MatlTrims_Subt
            // 
            this.header_MatlTrims_Subt.CanGrow = false;
            this.header_MatlTrims_Subt.Location = new System.Drawing.Point(986, 62);
            this.header_MatlTrims_Subt.Name = "header_MatlTrims_Subt";
            this.header_MatlTrims_Subt.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_Subt.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_Subt.StyleName = "csHeader1";
            this.header_MatlTrims_Subt.Text = "Subt";
            // 
            // header_MatlTrims_ReadyDate
            // 
            this.header_MatlTrims_ReadyDate.CanGrow = false;
            this.header_MatlTrims_ReadyDate.Location = new System.Drawing.Point(1001, 62);
            this.header_MatlTrims_ReadyDate.Name = "header_MatlTrims_ReadyDate";
            this.header_MatlTrims_ReadyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_ReadyDate.Size = new System.Drawing.Size(33, 24);
            this.header_MatlTrims_ReadyDate.StyleName = "csHeader1";
            this.header_MatlTrims_ReadyDate.Text = "Ready Date";
            // 
            // header_MidSpec
            // 
            this.header_MidSpec.CanGrow = false;
            this.header_MidSpec.Location = new System.Drawing.Point(1034, 50);
            this.header_MidSpec.Name = "header_MidSpec";
            this.header_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MidSpec.Size = new System.Drawing.Size(59, 36);
            this.header_MidSpec.StyleName = "csHeader1";
            this.header_MidSpec.Text = "Mid Spec";
            // 
            // header_WorkShop
            // 
            this.header_WorkShop.CanGrow = false;
            this.header_WorkShop.Location = new System.Drawing.Point(1093, 30);
            this.header_WorkShop.Name = "header_WorkShop";
            this.header_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WorkShop.Size = new System.Drawing.Size(59, 56);
            this.header_WorkShop.StyleName = "csHeader1";
            this.header_WorkShop.Text = "Work Shop";
            // 
            // header_PP
            // 
            this.header_PP.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_PP.CanGrow = false;
            this.header_PP.Location = new System.Drawing.Point(1152, 30);
            this.header_PP.Name = "header_PP";
            this.header_PP.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PP.Size = new System.Drawing.Size(158, 20);
            this.header_PP.StyleName = "csHeader1";
            this.header_PP.StylePriority.UseBorders = false;
            this.header_PP.Text = "PP";
            // 
            // header_PP_SeqNr
            // 
            this.header_PP_SeqNr.CanGrow = false;
            this.header_PP_SeqNr.Location = new System.Drawing.Point(1152, 50);
            this.header_PP_SeqNr.Name = "header_PP_SeqNr";
            this.header_PP_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PP_SeqNr.Size = new System.Drawing.Size(59, 36);
            this.header_PP_SeqNr.StyleName = "csHeader1";
            this.header_PP_SeqNr.Text = "Seq  Nr.";
            // 
            // header_PP_IssueDate
            // 
            this.header_PP_IssueDate.CanGrow = false;
            this.header_PP_IssueDate.Location = new System.Drawing.Point(1211, 50);
            this.header_PP_IssueDate.Name = "header_PP_IssueDate";
            this.header_PP_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PP_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_PP_IssueDate.StyleName = "csHeader1";
            this.header_PP_IssueDate.Text = "Issue Date";
            // 
            // header_PP_DefaultFinishDate
            // 
            this.header_PP_DefaultFinishDate.CanGrow = false;
            this.header_PP_DefaultFinishDate.Location = new System.Drawing.Point(1244, 50);
            this.header_PP_DefaultFinishDate.Name = "header_PP_DefaultFinishDate";
            this.header_PP_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PP_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_PP_DefaultFinishDate.StyleName = "csHeader1";
            this.header_PP_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_PP_CurrentFinishDate
            // 
            this.header_PP_CurrentFinishDate.CanGrow = false;
            this.header_PP_CurrentFinishDate.Location = new System.Drawing.Point(1277, 50);
            this.header_PP_CurrentFinishDate.Name = "header_PP_CurrentFinishDate";
            this.header_PP_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PP_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_PP_CurrentFinishDate.StyleName = "csHeader1";
            this.header_PP_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_FIT
            // 
            this.header_FIT.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_FIT.CanGrow = false;
            this.header_FIT.Location = new System.Drawing.Point(1310, 30);
            this.header_FIT.Name = "header_FIT";
            this.header_FIT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT.Size = new System.Drawing.Size(158, 20);
            this.header_FIT.StyleName = "csHeader1";
            this.header_FIT.StylePriority.UseBorders = false;
            this.header_FIT.Text = "FIT";
            // 
            // header_FIT_SeqNr
            // 
            this.header_FIT_SeqNr.CanGrow = false;
            this.header_FIT_SeqNr.Location = new System.Drawing.Point(1310, 50);
            this.header_FIT_SeqNr.Name = "header_FIT_SeqNr";
            this.header_FIT_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_SeqNr.Size = new System.Drawing.Size(59, 36);
            this.header_FIT_SeqNr.StyleName = "csHeader1";
            this.header_FIT_SeqNr.Text = "Seq  Nr.";
            // 
            // header_FIT_IssueDate
            // 
            this.header_FIT_IssueDate.CanGrow = false;
            this.header_FIT_IssueDate.Location = new System.Drawing.Point(1369, 50);
            this.header_FIT_IssueDate.Name = "header_FIT_IssueDate";
            this.header_FIT_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_FIT_IssueDate.StyleName = "csHeader1";
            this.header_FIT_IssueDate.Text = "Issue Date";
            // 
            // header_FIT_DefaultFinishDate
            // 
            this.header_FIT_DefaultFinishDate.CanGrow = false;
            this.header_FIT_DefaultFinishDate.Location = new System.Drawing.Point(1402, 50);
            this.header_FIT_DefaultFinishDate.Name = "header_FIT_DefaultFinishDate";
            this.header_FIT_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_FIT_DefaultFinishDate.StyleName = "csHeader1";
            this.header_FIT_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_FIT_CurrentFinishDate
            // 
            this.header_FIT_CurrentFinishDate.CanGrow = false;
            this.header_FIT_CurrentFinishDate.Location = new System.Drawing.Point(1435, 50);
            this.header_FIT_CurrentFinishDate.Name = "header_FIT_CurrentFinishDate";
            this.header_FIT_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_FIT_CurrentFinishDate.StyleName = "csHeader1";
            this.header_FIT_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_WS
            // 
            this.header_WS.CanGrow = false;
            this.header_WS.Location = new System.Drawing.Point(1468, 30);
            this.header_WS.Name = "header_WS";
            this.header_WS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WS.Size = new System.Drawing.Size(59, 56);
            this.header_WS.StyleName = "csHeader1";
            this.header_WS.Text = "WS";
            // 
            // header_CMS
            // 
            this.header_CMS.CanGrow = false;
            this.header_CMS.Location = new System.Drawing.Point(1527, 30);
            this.header_CMS.Name = "header_CMS";
            this.header_CMS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CMS.Size = new System.Drawing.Size(33, 56);
            this.header_CMS.StyleName = "csHeader1";
            this.header_CMS.Text = "CMS";
            // 
            // header_Remarks
            // 
            this.header_Remarks.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.header_Remarks.CanGrow = false;
            this.header_Remarks.Location = new System.Drawing.Point(1560, 30);
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
            this.xrLabel1.Location = new System.Drawing.Point(59, 50);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(61, 36);
            this.xrLabel1.StyleName = "csHeader1";
            this.xrLabel1.Text = "Seq Nr.";
            // 
            // xrLabel2
            // 
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SampleOrderOther", "")});
            this.xrLabel2.Location = new System.Drawing.Point(59, 0);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(61, 15);
            this.xrLabel2.StyleName = "csDetail";
            this.xrLabel2.Text = "xrLabel2";
            this.xrLabel2.WordWrap = false;
            // 
            // WARNPSListReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(30, 29, 30, 20);
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

