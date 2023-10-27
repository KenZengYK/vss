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
    public partial class TAMAPPSListReport : DevExpress.XtraReports.UI.XtraReport
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
        private DevExpress.XtraReports.UI.XRLabel header_MatlTrims_PH3DPlasticShoot;
        private DevExpress.XtraReports.UI.XRLabel header_MidSpec;
        private DevExpress.XtraReports.UI.XRLabel header_Samplemakeornot;
        private DevExpress.XtraReports.UI.XRLabel header_WorkShop;
        private DevExpress.XtraReports.UI.XRLabel header_FRSDate;
        private DevExpress.XtraReports.UI.XRLabel header_WT;
        private DevExpress.XtraReports.UI.XRLabel header_WT_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_WT_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_WT_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_WT_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_PRES;
        private DevExpress.XtraReports.UI.XRLabel header_PRES_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_PRES_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_PRES_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_PRES_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_CSG;
        private DevExpress.XtraReports.UI.XRLabel header_CSG_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_CSG_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_CSG_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_CSG_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_CSSDate;
        private DevExpress.XtraReports.UI.XRLabel header_PS;
        private DevExpress.XtraReports.UI.XRLabel header_PS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_PS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_PS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_PS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_MouldSpe;
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
        private DevExpress.XtraReports.UI.XRLabel detail_MatlTrims_PH3DPlasticShoot;
        private DevExpress.XtraReports.UI.XRLabel detail_MidSpec;
        private DevExpress.XtraReports.UI.XRLabel detail_Samplemakeornot;
        private DevExpress.XtraReports.UI.XRLabel detail_WorkShop;
        private DevExpress.XtraReports.UI.XRLabel detail_FRSDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WT_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_WT_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WT_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WT_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PRES_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_PRES_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PRES_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PRES_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CSG_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_CSG_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CSG_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CSG_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CSSDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_PS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_PS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MouldSpe;
        private XRPageInfo xrPageInfo1;
        private XRLabel xrLabel2;
        private XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRLabel detail_Remarks;
        #endregion

        public TAMAPPSListReport(string customer)
        {
            InitializeComponent();
            this.headerLable.Text = this.headerLable.Text.Replace("TAMA", customer);
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
            this.detail_MatlTrims_PH3DPlasticShoot = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MidSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Samplemakeornot = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FRSDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WT_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WT_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WT_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WT_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PRES_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PRES_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PRES_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PRES_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CSG_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CSG_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CSG_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CSG_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CSSDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_PS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MouldSpe = new DevExpress.XtraReports.UI.XRLabel();
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
            this.header_MatlTrims_PH3DPlasticShoot = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MidSpec = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Samplemakeornot = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FRSDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WT = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WT_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WT_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WT_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WT_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PRES = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PRES_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PRES_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PRES_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PRES_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CSG = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CSG_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CSG_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CSG_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CSG_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CSSDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_PS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MouldSpe = new DevExpress.XtraReports.UI.XRLabel();
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
            this.detail_MatlTrims_PH3DPlasticShoot,
            this.detail_MidSpec,
            this.detail_Samplemakeornot,
            this.detail_WorkShop,
            this.detail_FRSDate,
            this.detail_WT_SeqNr,
            this.detail_WT_IssueDate,
            this.detail_WT_DefaultFinishDate,
            this.detail_WT_CurrentFinishDate,
            this.detail_PRES_SeqNr,
            this.detail_PRES_IssueDate,
            this.detail_PRES_DefaultFinishDate,
            this.detail_PRES_CurrentFinishDate,
            this.detail_CSG_SeqNr,
            this.detail_CSG_IssueDate,
            this.detail_CSG_DefaultFinishDate,
            this.detail_CSG_CurrentFinishDate,
            this.detail_CSSDate,
            this.detail_PS_SeqNr,
            this.detail_PS_IssueDate,
            this.detail_PS_DefaultFinishDate,
            this.detail_PS_CurrentFinishDate,
            this.detail_MouldSpe,
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
            this.detail_SampleOrderID.Size = new System.Drawing.Size(38, 15);
            this.detail_SampleOrderID.StyleName = "csDetail";
            this.detail_SampleOrderID.WordWrap = false;
            // 
            // detail_Customer
            // 
            this.detail_Customer.CanGrow = false;
            this.detail_Customer.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Customer", "")});
            this.detail_Customer.Location = new System.Drawing.Point(68, 0);
            this.detail_Customer.Name = "detail_Customer";
            this.detail_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Customer.Size = new System.Drawing.Size(38, 15);
            this.detail_Customer.StyleName = "csDetail";
            this.detail_Customer.WordWrap = false;
            // 
            // detail_CustDept
            // 
            this.detail_CustDept.CanGrow = false;
            this.detail_CustDept.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustDept", "")});
            this.detail_CustDept.Location = new System.Drawing.Point(106, 0);
            this.detail_CustDept.Name = "detail_CustDept";
            this.detail_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustDept.Size = new System.Drawing.Size(38, 15);
            this.detail_CustDept.StyleName = "csDetail";
            this.detail_CustDept.WordWrap = false;
            // 
            // detail_CustPONr
            // 
            this.detail_CustPONr.CanGrow = false;
            this.detail_CustPONr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustPONr", "")});
            this.detail_CustPONr.Location = new System.Drawing.Point(144, 0);
            this.detail_CustPONr.Name = "detail_CustPONr";
            this.detail_CustPONr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustPONr.Size = new System.Drawing.Size(38, 15);
            this.detail_CustPONr.StyleName = "csDetail";
            this.detail_CustPONr.WordWrap = false;
            // 
            // detail_ProjectNo
            // 
            this.detail_ProjectNo.CanGrow = false;
            this.detail_ProjectNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNo", "")});
            this.detail_ProjectNo.Location = new System.Drawing.Point(182, 0);
            this.detail_ProjectNo.Name = "detail_ProjectNo";
            this.detail_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ProjectNo.Size = new System.Drawing.Size(38, 15);
            this.detail_ProjectNo.StyleName = "csDetail";
            this.detail_ProjectNo.WordWrap = false;
            // 
            // detail_FtyStartDate
            // 
            this.detail_FtyStartDate.CanGrow = false;
            this.detail_FtyStartDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FtyStartDate", "{0:yy/MM/dd}")});
            this.detail_FtyStartDate.Location = new System.Drawing.Point(220, 0);
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
            this.detail_ExFtyDate.Location = new System.Drawing.Point(253, 0);
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
            this.detail_DelDate.Location = new System.Drawing.Point(286, 0);
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
            this.detail_CustStyleNr.Location = new System.Drawing.Point(319, 0);
            this.detail_CustStyleNr.Name = "detail_CustStyleNr";
            this.detail_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustStyleNr.Size = new System.Drawing.Size(38, 15);
            this.detail_CustStyleNr.StyleName = "csDetail";
            this.detail_CustStyleNr.WordWrap = false;
            // 
            // detail_styleid
            // 
            this.detail_styleid.CanGrow = false;
            this.detail_styleid.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "StyleID", "")});
            this.detail_styleid.Location = new System.Drawing.Point(357, 0);
            this.detail_styleid.Name = "detail_styleid";
            this.detail_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_styleid.Size = new System.Drawing.Size(38, 15);
            this.detail_styleid.StyleName = "csDetail";
            this.detail_styleid.WordWrap = false;
            // 
            // detail_PCCode
            // 
            this.detail_PCCode.CanGrow = false;
            this.detail_PCCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PCCode", "")});
            this.detail_PCCode.Location = new System.Drawing.Point(395, 0);
            this.detail_PCCode.Name = "detail_PCCode";
            this.detail_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PCCode.Size = new System.Drawing.Size(19, 15);
            this.detail_PCCode.StyleName = "csDetail";
            this.detail_PCCode.WordWrap = false;
            // 
            // detail_BriefDesr
            // 
            this.detail_BriefDesr.CanGrow = false;
            this.detail_BriefDesr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BriefDesr", "")});
            this.detail_BriefDesr.Location = new System.Drawing.Point(414, 0);
            this.detail_BriefDesr.Name = "detail_BriefDesr";
            this.detail_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BriefDesr.Size = new System.Drawing.Size(38, 15);
            this.detail_BriefDesr.StyleName = "csDetail";
            this.detail_BriefDesr.WordWrap = false;
            // 
            // detail_BrandName
            // 
            this.detail_BrandName.CanGrow = false;
            this.detail_BrandName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BrandName", "")});
            this.detail_BrandName.Location = new System.Drawing.Point(452, 0);
            this.detail_BrandName.Name = "detail_BrandName";
            this.detail_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BrandName.Size = new System.Drawing.Size(36, 15);
            this.detail_BrandName.StyleName = "csDetail";
            this.detail_BrandName.WordWrap = false;
            // 
            // detail_GroupName
            // 
            this.detail_GroupName.CanGrow = false;
            this.detail_GroupName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GroupName", "")});
            this.detail_GroupName.Location = new System.Drawing.Point(488, 0);
            this.detail_GroupName.Name = "detail_GroupName";
            this.detail_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_GroupName.Size = new System.Drawing.Size(35, 15);
            this.detail_GroupName.StyleName = "csDetail";
            this.detail_GroupName.WordWrap = false;
            // 
            // detail_SeasonCode
            // 
            this.detail_SeasonCode.CanGrow = false;
            this.detail_SeasonCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SeasonCode", "")});
            this.detail_SeasonCode.Location = new System.Drawing.Point(523, 0);
            this.detail_SeasonCode.Name = "detail_SeasonCode";
            this.detail_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SeasonCode.Size = new System.Drawing.Size(32, 15);
            this.detail_SeasonCode.StyleName = "csDetail";
            this.detail_SeasonCode.WordWrap = false;
            // 
            // detail_PatternSource
            // 
            this.detail_PatternSource.CanGrow = false;
            this.detail_PatternSource.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PatternSource", "")});
            this.detail_PatternSource.Location = new System.Drawing.Point(555, 0);
            this.detail_PatternSource.Name = "detail_PatternSource";
            this.detail_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PatternSource.Size = new System.Drawing.Size(38, 15);
            this.detail_PatternSource.StyleName = "csDetail";
            this.detail_PatternSource.WordWrap = false;
            // 
            // detail_BaseSizeSpec_RVS
            // 
            this.detail_BaseSizeSpec_RVS.CanGrow = false;
            this.detail_BaseSizeSpec_RVS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BaseSizeSpec_RVSDesc", "")});
            this.detail_BaseSizeSpec_RVS.Location = new System.Drawing.Point(593, 0);
            this.detail_BaseSizeSpec_RVS.Name = "detail_BaseSizeSpec_RVS";
            this.detail_BaseSizeSpec_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BaseSizeSpec_RVS.Size = new System.Drawing.Size(15, 15);
            this.detail_BaseSizeSpec_RVS.StyleName = "csDetail";
            this.detail_BaseSizeSpec_RVS.WordWrap = false;
            // 
            // detail_BaseSizeSpec_NC
            // 
            this.detail_BaseSizeSpec_NC.CanGrow = false;
            this.detail_BaseSizeSpec_NC.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BaseSizeSpec_NCDesc", "")});
            this.detail_BaseSizeSpec_NC.Location = new System.Drawing.Point(608, 0);
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
            this.detail_GradeRules_RVS.Location = new System.Drawing.Point(623, 0);
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
            this.detail_GradeRules_NC.Location = new System.Drawing.Point(638, 0);
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
            this.detail_Construction_RVS.Location = new System.Drawing.Point(653, 0);
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
            this.detail_Construction_NC.Location = new System.Drawing.Point(668, 0);
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
            this.detail_MatlTrims_RVS.Location = new System.Drawing.Point(683, 0);
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
            this.detail_MatlTrims_NC.Location = new System.Drawing.Point(698, 0);
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
            this.detail_MatlTrims_Subt.Location = new System.Drawing.Point(713, 0);
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
            this.detail_MatlTrims_ReadyDate.Location = new System.Drawing.Point(728, 0);
            this.detail_MatlTrims_ReadyDate.Name = "detail_MatlTrims_ReadyDate";
            this.detail_MatlTrims_ReadyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_ReadyDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MatlTrims_ReadyDate.StyleName = "csDetail";
            this.detail_MatlTrims_ReadyDate.WordWrap = false;
            // 
            // detail_MatlTrims_PH3DPlasticShoot
            // 
            this.detail_MatlTrims_PH3DPlasticShoot.CanGrow = false;
            this.detail_MatlTrims_PH3DPlasticShoot.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MatlTrims_PH3DPlasticShoot", "")});
            this.detail_MatlTrims_PH3DPlasticShoot.Location = new System.Drawing.Point(761, 0);
            this.detail_MatlTrims_PH3DPlasticShoot.Name = "detail_MatlTrims_PH3DPlasticShoot";
            this.detail_MatlTrims_PH3DPlasticShoot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_PH3DPlasticShoot.Size = new System.Drawing.Size(38, 15);
            this.detail_MatlTrims_PH3DPlasticShoot.StyleName = "csDetail";
            this.detail_MatlTrims_PH3DPlasticShoot.WordWrap = false;
            // 
            // detail_MidSpec
            // 
            this.detail_MidSpec.CanGrow = false;
            this.detail_MidSpec.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MidSpec", "")});
            this.detail_MidSpec.Location = new System.Drawing.Point(799, 0);
            this.detail_MidSpec.Name = "detail_MidSpec";
            this.detail_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MidSpec.Size = new System.Drawing.Size(38, 15);
            this.detail_MidSpec.StyleName = "csDetail";
            this.detail_MidSpec.WordWrap = false;
            // 
            // detail_Samplemakeornot
            // 
            this.detail_Samplemakeornot.CanGrow = false;
            this.detail_Samplemakeornot.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SamplemakeornotDesc", "")});
            this.detail_Samplemakeornot.Location = new System.Drawing.Point(837, 0);
            this.detail_Samplemakeornot.Name = "detail_Samplemakeornot";
            this.detail_Samplemakeornot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Samplemakeornot.Size = new System.Drawing.Size(38, 15);
            this.detail_Samplemakeornot.StyleName = "csDetail";
            this.detail_Samplemakeornot.WordWrap = false;
            // 
            // detail_WorkShop
            // 
            this.detail_WorkShop.CanGrow = false;
            this.detail_WorkShop.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WorkShop", "")});
            this.detail_WorkShop.Location = new System.Drawing.Point(875, 0);
            this.detail_WorkShop.Name = "detail_WorkShop";
            this.detail_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WorkShop.Size = new System.Drawing.Size(38, 15);
            this.detail_WorkShop.StyleName = "csDetail";
            this.detail_WorkShop.WordWrap = false;
            // 
            // detail_FRSDate
            // 
            this.detail_FRSDate.CanGrow = false;
            this.detail_FRSDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FRSDate", "{0:yy/MM/dd}")});
            this.detail_FRSDate.Location = new System.Drawing.Point(913, 0);
            this.detail_FRSDate.Name = "detail_FRSDate";
            this.detail_FRSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FRSDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FRSDate.StyleName = "csDetail";
            this.detail_FRSDate.WordWrap = false;
            // 
            // detail_WT_SeqNr
            // 
            this.detail_WT_SeqNr.CanGrow = false;
            this.detail_WT_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WT_SeqNr", "")});
            this.detail_WT_SeqNr.Location = new System.Drawing.Point(946, 0);
            this.detail_WT_SeqNr.Name = "detail_WT_SeqNr";
            this.detail_WT_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WT_SeqNr.Size = new System.Drawing.Size(38, 15);
            this.detail_WT_SeqNr.StyleName = "csDetail";
            this.detail_WT_SeqNr.WordWrap = false;
            // 
            // detail_WT_IssueDate
            // 
            this.detail_WT_IssueDate.CanGrow = false;
            this.detail_WT_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WT_IssueDate", "{0:yy/MM/dd}")});
            this.detail_WT_IssueDate.Location = new System.Drawing.Point(984, 0);
            this.detail_WT_IssueDate.Name = "detail_WT_IssueDate";
            this.detail_WT_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WT_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_WT_IssueDate.StyleName = "csDetail";
            this.detail_WT_IssueDate.WordWrap = false;
            // 
            // detail_WT_DefaultFinishDate
            // 
            this.detail_WT_DefaultFinishDate.CanGrow = false;
            this.detail_WT_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WT_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_WT_DefaultFinishDate.Location = new System.Drawing.Point(1017, 0);
            this.detail_WT_DefaultFinishDate.Name = "detail_WT_DefaultFinishDate";
            this.detail_WT_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WT_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_WT_DefaultFinishDate.StyleName = "csDetail";
            this.detail_WT_DefaultFinishDate.WordWrap = false;
            // 
            // detail_WT_CurrentFinishDate
            // 
            this.detail_WT_CurrentFinishDate.CanGrow = false;
            this.detail_WT_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WT_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_WT_CurrentFinishDate.Location = new System.Drawing.Point(1050, 0);
            this.detail_WT_CurrentFinishDate.Name = "detail_WT_CurrentFinishDate";
            this.detail_WT_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WT_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_WT_CurrentFinishDate.StyleName = "csDetail";
            this.detail_WT_CurrentFinishDate.WordWrap = false;
            // 
            // detail_PRES_SeqNr
            // 
            this.detail_PRES_SeqNr.CanGrow = false;
            this.detail_PRES_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PRES_SeqNr", "")});
            this.detail_PRES_SeqNr.Location = new System.Drawing.Point(1083, 0);
            this.detail_PRES_SeqNr.Name = "detail_PRES_SeqNr";
            this.detail_PRES_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PRES_SeqNr.Size = new System.Drawing.Size(38, 15);
            this.detail_PRES_SeqNr.StyleName = "csDetail";
            this.detail_PRES_SeqNr.WordWrap = false;
            // 
            // detail_PRES_IssueDate
            // 
            this.detail_PRES_IssueDate.CanGrow = false;
            this.detail_PRES_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PRES_IssueDate", "{0:yy/MM/dd}")});
            this.detail_PRES_IssueDate.Location = new System.Drawing.Point(1121, 0);
            this.detail_PRES_IssueDate.Name = "detail_PRES_IssueDate";
            this.detail_PRES_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PRES_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PRES_IssueDate.StyleName = "csDetail";
            this.detail_PRES_IssueDate.WordWrap = false;
            // 
            // detail_PRES_DefaultFinishDate
            // 
            this.detail_PRES_DefaultFinishDate.CanGrow = false;
            this.detail_PRES_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PRES_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_PRES_DefaultFinishDate.Location = new System.Drawing.Point(1154, 0);
            this.detail_PRES_DefaultFinishDate.Name = "detail_PRES_DefaultFinishDate";
            this.detail_PRES_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PRES_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PRES_DefaultFinishDate.StyleName = "csDetail";
            this.detail_PRES_DefaultFinishDate.WordWrap = false;
            // 
            // detail_PRES_CurrentFinishDate
            // 
            this.detail_PRES_CurrentFinishDate.CanGrow = false;
            this.detail_PRES_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PRES_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_PRES_CurrentFinishDate.Location = new System.Drawing.Point(1187, 0);
            this.detail_PRES_CurrentFinishDate.Name = "detail_PRES_CurrentFinishDate";
            this.detail_PRES_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PRES_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PRES_CurrentFinishDate.StyleName = "csDetail";
            this.detail_PRES_CurrentFinishDate.WordWrap = false;
            // 
            // detail_CSG_SeqNr
            // 
            this.detail_CSG_SeqNr.CanGrow = false;
            this.detail_CSG_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CSG_SeqNr", "")});
            this.detail_CSG_SeqNr.Location = new System.Drawing.Point(1220, 0);
            this.detail_CSG_SeqNr.Name = "detail_CSG_SeqNr";
            this.detail_CSG_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CSG_SeqNr.Size = new System.Drawing.Size(38, 15);
            this.detail_CSG_SeqNr.StyleName = "csDetail";
            this.detail_CSG_SeqNr.WordWrap = false;
            // 
            // detail_CSG_IssueDate
            // 
            this.detail_CSG_IssueDate.CanGrow = false;
            this.detail_CSG_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CSG_IssueDate", "{0:yy/MM/dd}")});
            this.detail_CSG_IssueDate.Location = new System.Drawing.Point(1258, 0);
            this.detail_CSG_IssueDate.Name = "detail_CSG_IssueDate";
            this.detail_CSG_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CSG_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CSG_IssueDate.StyleName = "csDetail";
            this.detail_CSG_IssueDate.WordWrap = false;
            // 
            // detail_CSG_DefaultFinishDate
            // 
            this.detail_CSG_DefaultFinishDate.CanGrow = false;
            this.detail_CSG_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CSG_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_CSG_DefaultFinishDate.Location = new System.Drawing.Point(1291, 0);
            this.detail_CSG_DefaultFinishDate.Name = "detail_CSG_DefaultFinishDate";
            this.detail_CSG_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CSG_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CSG_DefaultFinishDate.StyleName = "csDetail";
            this.detail_CSG_DefaultFinishDate.WordWrap = false;
            // 
            // detail_CSG_CurrentFinishDate
            // 
            this.detail_CSG_CurrentFinishDate.CanGrow = false;
            this.detail_CSG_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CSG_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_CSG_CurrentFinishDate.Location = new System.Drawing.Point(1324, 0);
            this.detail_CSG_CurrentFinishDate.Name = "detail_CSG_CurrentFinishDate";
            this.detail_CSG_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CSG_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CSG_CurrentFinishDate.StyleName = "csDetail";
            this.detail_CSG_CurrentFinishDate.WordWrap = false;
            // 
            // detail_CSSDate
            // 
            this.detail_CSSDate.CanGrow = false;
            this.detail_CSSDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CSSDate", "{0:yy/MM/dd}")});
            this.detail_CSSDate.Location = new System.Drawing.Point(1357, 0);
            this.detail_CSSDate.Name = "detail_CSSDate";
            this.detail_CSSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CSSDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CSSDate.StyleName = "csDetail";
            this.detail_CSSDate.WordWrap = false;
            // 
            // detail_PS_SeqNr
            // 
            this.detail_PS_SeqNr.CanGrow = false;
            this.detail_PS_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PS_SeqNr", "")});
            this.detail_PS_SeqNr.Location = new System.Drawing.Point(1390, 0);
            this.detail_PS_SeqNr.Name = "detail_PS_SeqNr";
            this.detail_PS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PS_SeqNr.Size = new System.Drawing.Size(38, 15);
            this.detail_PS_SeqNr.StyleName = "csDetail";
            this.detail_PS_SeqNr.WordWrap = false;
            // 
            // detail_PS_IssueDate
            // 
            this.detail_PS_IssueDate.CanGrow = false;
            this.detail_PS_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PS_IssueDate", "{0:yy/MM/dd}")});
            this.detail_PS_IssueDate.Location = new System.Drawing.Point(1428, 0);
            this.detail_PS_IssueDate.Name = "detail_PS_IssueDate";
            this.detail_PS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PS_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PS_IssueDate.StyleName = "csDetail";
            this.detail_PS_IssueDate.WordWrap = false;
            // 
            // detail_PS_DefaultFinishDate
            // 
            this.detail_PS_DefaultFinishDate.CanGrow = false;
            this.detail_PS_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PS_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_PS_DefaultFinishDate.Location = new System.Drawing.Point(1461, 0);
            this.detail_PS_DefaultFinishDate.Name = "detail_PS_DefaultFinishDate";
            this.detail_PS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PS_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PS_DefaultFinishDate.StyleName = "csDetail";
            this.detail_PS_DefaultFinishDate.WordWrap = false;
            // 
            // detail_PS_CurrentFinishDate
            // 
            this.detail_PS_CurrentFinishDate.CanGrow = false;
            this.detail_PS_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PS_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_PS_CurrentFinishDate.Location = new System.Drawing.Point(1494, 0);
            this.detail_PS_CurrentFinishDate.Name = "detail_PS_CurrentFinishDate";
            this.detail_PS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PS_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_PS_CurrentFinishDate.StyleName = "csDetail";
            this.detail_PS_CurrentFinishDate.WordWrap = false;
            // 
            // detail_MouldSpe
            // 
            this.detail_MouldSpe.CanGrow = false;
            this.detail_MouldSpe.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MouldSpe", "")});
            this.detail_MouldSpe.Location = new System.Drawing.Point(1527, 0);
            this.detail_MouldSpe.Name = "detail_MouldSpe";
            this.detail_MouldSpe.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MouldSpe.Size = new System.Drawing.Size(38, 15);
            this.detail_MouldSpe.StyleName = "csDetail";
            this.detail_MouldSpe.WordWrap = false;
            // 
            // detail_Remarks
            // 
            this.detail_Remarks.CanGrow = false;
            this.detail_Remarks.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Remarks", "")});
            this.detail_Remarks.Location = new System.Drawing.Point(1565, 0);
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
            this.header_MatlTrims_PH3DPlasticShoot,
            this.header_MidSpec,
            this.header_Samplemakeornot,
            this.header_WorkShop,
            this.header_FRSDate,
            this.header_WT,
            this.header_WT_SeqNr,
            this.header_WT_IssueDate,
            this.header_WT_DefaultFinishDate,
            this.header_WT_CurrentFinishDate,
            this.header_PRES,
            this.header_PRES_SeqNr,
            this.header_PRES_IssueDate,
            this.header_PRES_DefaultFinishDate,
            this.header_PRES_CurrentFinishDate,
            this.header_CSG,
            this.header_CSG_SeqNr,
            this.header_CSG_IssueDate,
            this.header_CSG_DefaultFinishDate,
            this.header_CSG_CurrentFinishDate,
            this.header_CSSDate,
            this.header_PS,
            this.header_PS_SeqNr,
            this.header_PS_IssueDate,
            this.header_PS_DefaultFinishDate,
            this.header_PS_CurrentFinishDate,
            this.header_MouldSpe,
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
            this.headerLable.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold);
            this.headerLable.Location = new System.Drawing.Point(0, 0);
            this.headerLable.Name = "headerLable";
            this.headerLable.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.headerLable.Size = new System.Drawing.Size(667, 25);
            this.headerLable.StylePriority.UseFont = false;
            this.headerLable.StylePriority.UseTextAlignment = false;
            this.headerLable.Text = "Sample Processing Control - Pre Production Sample Status (TAMA)";
            this.headerLable.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // header_StyleInformation
            // 
            this.header_StyleInformation.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_StyleInformation.CanGrow = false;
            this.header_StyleInformation.Location = new System.Drawing.Point(0, 30);
            this.header_StyleInformation.Name = "header_StyleInformation";
            this.header_StyleInformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_StyleInformation.Size = new System.Drawing.Size(683, 20);
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
            this.header_SampleOrderID.Size = new System.Drawing.Size(38, 36);
            this.header_SampleOrderID.StyleName = "csHeader1";
            this.header_SampleOrderID.Text = "Sample Order Nr ";
            // 
            // header_Customer
            // 
            this.header_Customer.CanGrow = false;
            this.header_Customer.Location = new System.Drawing.Point(68, 50);
            this.header_Customer.Name = "header_Customer";
            this.header_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Customer.Size = new System.Drawing.Size(38, 36);
            this.header_Customer.StyleName = "csHeader1";
            this.header_Customer.Text = "Cust Code";
            // 
            // header_CustDept
            // 
            this.header_CustDept.CanGrow = false;
            this.header_CustDept.Location = new System.Drawing.Point(106, 50);
            this.header_CustDept.Name = "header_CustDept";
            this.header_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustDept.Size = new System.Drawing.Size(38, 36);
            this.header_CustDept.StyleName = "csHeader1";
            this.header_CustDept.Text = "Cust Dept";
            // 
            // header_CustPONr
            // 
            this.header_CustPONr.CanGrow = false;
            this.header_CustPONr.Location = new System.Drawing.Point(144, 50);
            this.header_CustPONr.Name = "header_CustPONr";
            this.header_CustPONr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustPONr.Size = new System.Drawing.Size(38, 36);
            this.header_CustPONr.StyleName = "csHeader1";
            this.header_CustPONr.Text = "Cust PO Nr";
            // 
            // header_ProjectNo
            // 
            this.header_ProjectNo.CanGrow = false;
            this.header_ProjectNo.Location = new System.Drawing.Point(182, 50);
            this.header_ProjectNo.Name = "header_ProjectNo";
            this.header_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ProjectNo.Size = new System.Drawing.Size(38, 36);
            this.header_ProjectNo.StyleName = "csHeader1";
            this.header_ProjectNo.Text = "Project Nr";
            // 
            // header_FtyStartDate
            // 
            this.header_FtyStartDate.CanGrow = false;
            this.header_FtyStartDate.Location = new System.Drawing.Point(220, 50);
            this.header_FtyStartDate.Name = "header_FtyStartDate";
            this.header_FtyStartDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FtyStartDate.Size = new System.Drawing.Size(33, 36);
            this.header_FtyStartDate.StyleName = "csHeader1";
            this.header_FtyStartDate.Text = "Fty Start Date";
            // 
            // header_ExFtyDate
            // 
            this.header_ExFtyDate.CanGrow = false;
            this.header_ExFtyDate.Location = new System.Drawing.Point(253, 50);
            this.header_ExFtyDate.Name = "header_ExFtyDate";
            this.header_ExFtyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ExFtyDate.Size = new System.Drawing.Size(33, 36);
            this.header_ExFtyDate.StyleName = "csHeader1";
            this.header_ExFtyDate.Text = "Ex-Fty Date";
            // 
            // header_DelDate
            // 
            this.header_DelDate.CanGrow = false;
            this.header_DelDate.Location = new System.Drawing.Point(286, 50);
            this.header_DelDate.Name = "header_DelDate";
            this.header_DelDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_DelDate.Size = new System.Drawing.Size(33, 36);
            this.header_DelDate.StyleName = "csHeader1";
            this.header_DelDate.Text = "Del Date";
            // 
            // header_CustStyleNr
            // 
            this.header_CustStyleNr.CanGrow = false;
            this.header_CustStyleNr.Location = new System.Drawing.Point(319, 50);
            this.header_CustStyleNr.Name = "header_CustStyleNr";
            this.header_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustStyleNr.Size = new System.Drawing.Size(38, 36);
            this.header_CustStyleNr.StyleName = "csHeader1";
            this.header_CustStyleNr.Text = "Cust Style Nr";
            // 
            // header_styleid
            // 
            this.header_styleid.CanGrow = false;
            this.header_styleid.Location = new System.Drawing.Point(357, 50);
            this.header_styleid.Name = "header_styleid";
            this.header_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_styleid.Size = new System.Drawing.Size(38, 36);
            this.header_styleid.StyleName = "csHeader1";
            this.header_styleid.Text = "PH Style Nr";
            // 
            // header_PCCode
            // 
            this.header_PCCode.CanGrow = false;
            this.header_PCCode.Location = new System.Drawing.Point(395, 50);
            this.header_PCCode.Name = "header_PCCode";
            this.header_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PCCode.Size = new System.Drawing.Size(19, 36);
            this.header_PCCode.StyleName = "csHeader1";
            this.header_PCCode.Text = "PC Code";
            // 
            // header_BriefDesr
            // 
            this.header_BriefDesr.CanGrow = false;
            this.header_BriefDesr.Location = new System.Drawing.Point(414, 50);
            this.header_BriefDesr.Name = "header_BriefDesr";
            this.header_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BriefDesr.Size = new System.Drawing.Size(38, 36);
            this.header_BriefDesr.StyleName = "csHeader1";
            this.header_BriefDesr.Text = "Brief Desr.";
            // 
            // header_BrandName
            // 
            this.header_BrandName.CanGrow = false;
            this.header_BrandName.Location = new System.Drawing.Point(452, 50);
            this.header_BrandName.Name = "header_BrandName";
            this.header_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BrandName.Size = new System.Drawing.Size(36, 36);
            this.header_BrandName.StyleName = "csHeader1";
            this.header_BrandName.Text = "Brand Name";
            // 
            // header_GroupName
            // 
            this.header_GroupName.CanGrow = false;
            this.header_GroupName.Location = new System.Drawing.Point(488, 50);
            this.header_GroupName.Name = "header_GroupName";
            this.header_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GroupName.Size = new System.Drawing.Size(35, 36);
            this.header_GroupName.StyleName = "csHeader1";
            this.header_GroupName.Text = "Group Name";
            // 
            // header_SeasonCode
            // 
            this.header_SeasonCode.CanGrow = false;
            this.header_SeasonCode.Location = new System.Drawing.Point(523, 50);
            this.header_SeasonCode.Name = "header_SeasonCode";
            this.header_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SeasonCode.Size = new System.Drawing.Size(32, 36);
            this.header_SeasonCode.StyleName = "csHeader1";
            this.header_SeasonCode.Text = "Season Code";
            // 
            // header_PatternSource
            // 
            this.header_PatternSource.CanGrow = false;
            this.header_PatternSource.Location = new System.Drawing.Point(555, 50);
            this.header_PatternSource.Name = "header_PatternSource";
            this.header_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PatternSource.Size = new System.Drawing.Size(38, 36);
            this.header_PatternSource.StyleName = "csHeader1";
            this.header_PatternSource.Text = "Pattern Source";
            // 
            // header_BaseSizeSpec
            // 
            this.header_BaseSizeSpec.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_BaseSizeSpec.CanGrow = false;
            this.header_BaseSizeSpec.Location = new System.Drawing.Point(593, 50);
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
            this.header_BaseSizeSpec_RVS.Location = new System.Drawing.Point(593, 62);
            this.header_BaseSizeSpec_RVS.Name = "header_BaseSizeSpec_RVS";
            this.header_BaseSizeSpec_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BaseSizeSpec_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_BaseSizeSpec_RVS.StyleName = "csHeader1";
            this.header_BaseSizeSpec_RVS.Text = "RVS";
            // 
            // header_BaseSizeSpec_NC
            // 
            this.header_BaseSizeSpec_NC.CanGrow = false;
            this.header_BaseSizeSpec_NC.Location = new System.Drawing.Point(608, 62);
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
            this.header_GradeRules.Location = new System.Drawing.Point(623, 50);
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
            this.header_GradeRules_RVS.Location = new System.Drawing.Point(623, 62);
            this.header_GradeRules_RVS.Name = "header_GradeRules_RVS";
            this.header_GradeRules_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GradeRules_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_GradeRules_RVS.StyleName = "csHeader1";
            this.header_GradeRules_RVS.Text = "RVS";
            // 
            // header_GradeRules_NC
            // 
            this.header_GradeRules_NC.CanGrow = false;
            this.header_GradeRules_NC.Location = new System.Drawing.Point(638, 62);
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
            this.header_Construction.Location = new System.Drawing.Point(653, 50);
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
            this.header_Construction_RVS.Location = new System.Drawing.Point(653, 62);
            this.header_Construction_RVS.Name = "header_Construction_RVS";
            this.header_Construction_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Construction_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_Construction_RVS.StyleName = "csHeader1";
            this.header_Construction_RVS.Text = "RVS";
            // 
            // header_Construction_NC
            // 
            this.header_Construction_NC.CanGrow = false;
            this.header_Construction_NC.Location = new System.Drawing.Point(668, 62);
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
            this.header_Materialinformation.Location = new System.Drawing.Point(683, 30);
            this.header_Materialinformation.Name = "header_Materialinformation";
            this.header_Materialinformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Materialinformation.Size = new System.Drawing.Size(154, 20);
            this.header_Materialinformation.StyleName = "csHeader1";
            this.header_Materialinformation.StylePriority.UseBorders = false;
            this.header_Materialinformation.Text = "Material information";
            // 
            // header_MatlTrims
            // 
            this.header_MatlTrims.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_MatlTrims.CanGrow = false;
            this.header_MatlTrims.Location = new System.Drawing.Point(683, 50);
            this.header_MatlTrims.Name = "header_MatlTrims";
            this.header_MatlTrims.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims.Size = new System.Drawing.Size(116, 12);
            this.header_MatlTrims.StyleName = "csHeader1";
            this.header_MatlTrims.StylePriority.UseBorders = false;
            this.header_MatlTrims.Text = "Mat\'l / Trims";
            // 
            // header_MatlTrims_RVS
            // 
            this.header_MatlTrims_RVS.CanGrow = false;
            this.header_MatlTrims_RVS.Location = new System.Drawing.Point(683, 62);
            this.header_MatlTrims_RVS.Name = "header_MatlTrims_RVS";
            this.header_MatlTrims_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_RVS.StyleName = "csHeader1";
            this.header_MatlTrims_RVS.Text = "RVS";
            // 
            // header_MatlTrims_NC
            // 
            this.header_MatlTrims_NC.CanGrow = false;
            this.header_MatlTrims_NC.Location = new System.Drawing.Point(698, 62);
            this.header_MatlTrims_NC.Name = "header_MatlTrims_NC";
            this.header_MatlTrims_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_NC.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_NC.StyleName = "csHeader1";
            this.header_MatlTrims_NC.Text = "NC";
            // 
            // header_MatlTrims_Subt
            // 
            this.header_MatlTrims_Subt.CanGrow = false;
            this.header_MatlTrims_Subt.Location = new System.Drawing.Point(713, 62);
            this.header_MatlTrims_Subt.Name = "header_MatlTrims_Subt";
            this.header_MatlTrims_Subt.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_Subt.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_Subt.StyleName = "csHeader1";
            this.header_MatlTrims_Subt.Text = "Subt";
            // 
            // header_MatlTrims_ReadyDate
            // 
            this.header_MatlTrims_ReadyDate.CanGrow = false;
            this.header_MatlTrims_ReadyDate.Location = new System.Drawing.Point(728, 62);
            this.header_MatlTrims_ReadyDate.Name = "header_MatlTrims_ReadyDate";
            this.header_MatlTrims_ReadyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_ReadyDate.Size = new System.Drawing.Size(33, 24);
            this.header_MatlTrims_ReadyDate.StyleName = "csHeader1";
            this.header_MatlTrims_ReadyDate.Text = "Ready Date";
            // 
            // header_MatlTrims_PH3DPlasticShoot
            // 
            this.header_MatlTrims_PH3DPlasticShoot.CanGrow = false;
            this.header_MatlTrims_PH3DPlasticShoot.Location = new System.Drawing.Point(761, 62);
            this.header_MatlTrims_PH3DPlasticShoot.Name = "header_MatlTrims_PH3DPlasticShoot";
            this.header_MatlTrims_PH3DPlasticShoot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_PH3DPlasticShoot.Size = new System.Drawing.Size(38, 24);
            this.header_MatlTrims_PH3DPlasticShoot.StyleName = "csHeader1";
            this.header_MatlTrims_PH3DPlasticShoot.Text = "PH 3D Plastic Shoot";
            // 
            // header_MidSpec
            // 
            this.header_MidSpec.CanGrow = false;
            this.header_MidSpec.Location = new System.Drawing.Point(799, 50);
            this.header_MidSpec.Name = "header_MidSpec";
            this.header_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MidSpec.Size = new System.Drawing.Size(38, 36);
            this.header_MidSpec.StyleName = "csHeader1";
            this.header_MidSpec.Text = "Mid Spec";
            // 
            // header_Samplemakeornot
            // 
            this.header_Samplemakeornot.CanGrow = false;
            this.header_Samplemakeornot.Location = new System.Drawing.Point(837, 30);
            this.header_Samplemakeornot.Name = "header_Samplemakeornot";
            this.header_Samplemakeornot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Samplemakeornot.Size = new System.Drawing.Size(38, 56);
            this.header_Samplemakeornot.StyleName = "csHeader1";
            this.header_Samplemakeornot.Text = "Sample make or not";
            // 
            // header_WorkShop
            // 
            this.header_WorkShop.CanGrow = false;
            this.header_WorkShop.Location = new System.Drawing.Point(875, 30);
            this.header_WorkShop.Name = "header_WorkShop";
            this.header_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WorkShop.Size = new System.Drawing.Size(38, 56);
            this.header_WorkShop.StyleName = "csHeader1";
            this.header_WorkShop.Text = "Work Shop";
            // 
            // header_FRSDate
            // 
            this.header_FRSDate.CanGrow = false;
            this.header_FRSDate.Location = new System.Drawing.Point(913, 30);
            this.header_FRSDate.Name = "header_FRSDate";
            this.header_FRSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FRSDate.Size = new System.Drawing.Size(33, 56);
            this.header_FRSDate.StyleName = "csHeader1";
            this.header_FRSDate.Text = "FRS Date";
            // 
            // header_WT
            // 
            this.header_WT.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_WT.CanGrow = false;
            this.header_WT.Location = new System.Drawing.Point(946, 30);
            this.header_WT.Name = "header_WT";
            this.header_WT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WT.Size = new System.Drawing.Size(137, 20);
            this.header_WT.StyleName = "csHeader1";
            this.header_WT.StylePriority.UseBorders = false;
            this.header_WT.Text = "WT";
            // 
            // header_WT_SeqNr
            // 
            this.header_WT_SeqNr.CanGrow = false;
            this.header_WT_SeqNr.Location = new System.Drawing.Point(946, 50);
            this.header_WT_SeqNr.Name = "header_WT_SeqNr";
            this.header_WT_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WT_SeqNr.Size = new System.Drawing.Size(38, 36);
            this.header_WT_SeqNr.StyleName = "csHeader1";
            this.header_WT_SeqNr.Text = "Seq  Nr.";
            // 
            // header_WT_IssueDate
            // 
            this.header_WT_IssueDate.CanGrow = false;
            this.header_WT_IssueDate.Location = new System.Drawing.Point(984, 50);
            this.header_WT_IssueDate.Name = "header_WT_IssueDate";
            this.header_WT_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WT_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_WT_IssueDate.StyleName = "csHeader1";
            this.header_WT_IssueDate.Text = "Issue Date";
            // 
            // header_WT_DefaultFinishDate
            // 
            this.header_WT_DefaultFinishDate.CanGrow = false;
            this.header_WT_DefaultFinishDate.Location = new System.Drawing.Point(1017, 50);
            this.header_WT_DefaultFinishDate.Name = "header_WT_DefaultFinishDate";
            this.header_WT_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WT_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_WT_DefaultFinishDate.StyleName = "csHeader1";
            this.header_WT_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_WT_CurrentFinishDate
            // 
            this.header_WT_CurrentFinishDate.CanGrow = false;
            this.header_WT_CurrentFinishDate.Location = new System.Drawing.Point(1050, 50);
            this.header_WT_CurrentFinishDate.Name = "header_WT_CurrentFinishDate";
            this.header_WT_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WT_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_WT_CurrentFinishDate.StyleName = "csHeader1";
            this.header_WT_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_PRES
            // 
            this.header_PRES.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_PRES.CanGrow = false;
            this.header_PRES.Location = new System.Drawing.Point(1083, 30);
            this.header_PRES.Name = "header_PRES";
            this.header_PRES.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PRES.Size = new System.Drawing.Size(137, 20);
            this.header_PRES.StyleName = "csHeader1";
            this.header_PRES.StylePriority.UseBorders = false;
            this.header_PRES.Text = "PRES";
            // 
            // header_PRES_SeqNr
            // 
            this.header_PRES_SeqNr.CanGrow = false;
            this.header_PRES_SeqNr.Location = new System.Drawing.Point(1083, 50);
            this.header_PRES_SeqNr.Name = "header_PRES_SeqNr";
            this.header_PRES_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PRES_SeqNr.Size = new System.Drawing.Size(38, 36);
            this.header_PRES_SeqNr.StyleName = "csHeader1";
            this.header_PRES_SeqNr.Text = "Seq  Nr.";
            // 
            // header_PRES_IssueDate
            // 
            this.header_PRES_IssueDate.CanGrow = false;
            this.header_PRES_IssueDate.Location = new System.Drawing.Point(1121, 50);
            this.header_PRES_IssueDate.Name = "header_PRES_IssueDate";
            this.header_PRES_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PRES_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_PRES_IssueDate.StyleName = "csHeader1";
            this.header_PRES_IssueDate.Text = "Issue Date";
            // 
            // header_PRES_DefaultFinishDate
            // 
            this.header_PRES_DefaultFinishDate.CanGrow = false;
            this.header_PRES_DefaultFinishDate.Location = new System.Drawing.Point(1154, 50);
            this.header_PRES_DefaultFinishDate.Name = "header_PRES_DefaultFinishDate";
            this.header_PRES_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PRES_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_PRES_DefaultFinishDate.StyleName = "csHeader1";
            this.header_PRES_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_PRES_CurrentFinishDate
            // 
            this.header_PRES_CurrentFinishDate.CanGrow = false;
            this.header_PRES_CurrentFinishDate.Location = new System.Drawing.Point(1187, 50);
            this.header_PRES_CurrentFinishDate.Name = "header_PRES_CurrentFinishDate";
            this.header_PRES_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PRES_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_PRES_CurrentFinishDate.StyleName = "csHeader1";
            this.header_PRES_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_CSG
            // 
            this.header_CSG.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_CSG.CanGrow = false;
            this.header_CSG.Location = new System.Drawing.Point(1220, 30);
            this.header_CSG.Name = "header_CSG";
            this.header_CSG.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CSG.Size = new System.Drawing.Size(137, 20);
            this.header_CSG.StyleName = "csHeader1";
            this.header_CSG.StylePriority.UseBorders = false;
            this.header_CSG.Text = "C/S +G";
            // 
            // header_CSG_SeqNr
            // 
            this.header_CSG_SeqNr.CanGrow = false;
            this.header_CSG_SeqNr.Location = new System.Drawing.Point(1220, 50);
            this.header_CSG_SeqNr.Name = "header_CSG_SeqNr";
            this.header_CSG_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CSG_SeqNr.Size = new System.Drawing.Size(38, 36);
            this.header_CSG_SeqNr.StyleName = "csHeader1";
            this.header_CSG_SeqNr.Text = "Seq  Nr.";
            // 
            // header_CSG_IssueDate
            // 
            this.header_CSG_IssueDate.CanGrow = false;
            this.header_CSG_IssueDate.Location = new System.Drawing.Point(1258, 50);
            this.header_CSG_IssueDate.Name = "header_CSG_IssueDate";
            this.header_CSG_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CSG_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_CSG_IssueDate.StyleName = "csHeader1";
            this.header_CSG_IssueDate.Text = "Issue Date";
            // 
            // header_CSG_DefaultFinishDate
            // 
            this.header_CSG_DefaultFinishDate.CanGrow = false;
            this.header_CSG_DefaultFinishDate.Location = new System.Drawing.Point(1291, 50);
            this.header_CSG_DefaultFinishDate.Name = "header_CSG_DefaultFinishDate";
            this.header_CSG_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CSG_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_CSG_DefaultFinishDate.StyleName = "csHeader1";
            this.header_CSG_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_CSG_CurrentFinishDate
            // 
            this.header_CSG_CurrentFinishDate.CanGrow = false;
            this.header_CSG_CurrentFinishDate.Location = new System.Drawing.Point(1324, 50);
            this.header_CSG_CurrentFinishDate.Name = "header_CSG_CurrentFinishDate";
            this.header_CSG_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CSG_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_CSG_CurrentFinishDate.StyleName = "csHeader1";
            this.header_CSG_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_CSSDate
            // 
            this.header_CSSDate.CanGrow = false;
            this.header_CSSDate.Location = new System.Drawing.Point(1357, 30);
            this.header_CSSDate.Name = "header_CSSDate";
            this.header_CSSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CSSDate.Size = new System.Drawing.Size(33, 56);
            this.header_CSSDate.StyleName = "csHeader1";
            this.header_CSSDate.Text = "CSS Date";
            // 
            // header_PS
            // 
            this.header_PS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_PS.CanGrow = false;
            this.header_PS.Location = new System.Drawing.Point(1390, 30);
            this.header_PS.Name = "header_PS";
            this.header_PS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PS.Size = new System.Drawing.Size(137, 20);
            this.header_PS.StyleName = "csHeader1";
            this.header_PS.StylePriority.UseBorders = false;
            this.header_PS.Text = "PS";
            // 
            // header_PS_SeqNr
            // 
            this.header_PS_SeqNr.CanGrow = false;
            this.header_PS_SeqNr.Location = new System.Drawing.Point(1390, 50);
            this.header_PS_SeqNr.Name = "header_PS_SeqNr";
            this.header_PS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PS_SeqNr.Size = new System.Drawing.Size(38, 36);
            this.header_PS_SeqNr.StyleName = "csHeader1";
            this.header_PS_SeqNr.Text = "Seq  Nr.";
            // 
            // header_PS_IssueDate
            // 
            this.header_PS_IssueDate.CanGrow = false;
            this.header_PS_IssueDate.Location = new System.Drawing.Point(1428, 50);
            this.header_PS_IssueDate.Name = "header_PS_IssueDate";
            this.header_PS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PS_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_PS_IssueDate.StyleName = "csHeader1";
            this.header_PS_IssueDate.Text = "Issue Date";
            // 
            // header_PS_DefaultFinishDate
            // 
            this.header_PS_DefaultFinishDate.CanGrow = false;
            this.header_PS_DefaultFinishDate.Location = new System.Drawing.Point(1461, 50);
            this.header_PS_DefaultFinishDate.Name = "header_PS_DefaultFinishDate";
            this.header_PS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PS_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_PS_DefaultFinishDate.StyleName = "csHeader1";
            this.header_PS_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_PS_CurrentFinishDate
            // 
            this.header_PS_CurrentFinishDate.CanGrow = false;
            this.header_PS_CurrentFinishDate.Location = new System.Drawing.Point(1494, 50);
            this.header_PS_CurrentFinishDate.Name = "header_PS_CurrentFinishDate";
            this.header_PS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PS_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_PS_CurrentFinishDate.StyleName = "csHeader1";
            this.header_PS_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_MouldSpe
            // 
            this.header_MouldSpe.CanGrow = false;
            this.header_MouldSpe.Location = new System.Drawing.Point(1527, 30);
            this.header_MouldSpe.Name = "header_MouldSpe";
            this.header_MouldSpe.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MouldSpe.Size = new System.Drawing.Size(38, 56);
            this.header_MouldSpe.StyleName = "csHeader1";
            this.header_MouldSpe.Text = "Mould Spe";
            // 
            // header_Remarks
            // 
            this.header_Remarks.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.header_Remarks.CanGrow = false;
            this.header_Remarks.Location = new System.Drawing.Point(1565, 30);
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
            this.xrLabel1.Location = new System.Drawing.Point(38, 50);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(31, 36);
            this.xrLabel1.StyleName = "csHeader1";
            this.xrLabel1.Text = "Seq Nr.";
            // 
            // xrLabel2
            // 
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SampleOrderOther", "")});
            this.xrLabel2.Location = new System.Drawing.Point(38, 0);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(31, 15);
            this.xrLabel2.StyleName = "csDetail";
            this.xrLabel2.Text = "xrLabel2";
            this.xrLabel2.WordWrap = false;
            // 
            // TAMAPPSListReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(30, 21, 30, 20);
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

