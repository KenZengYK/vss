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
    public partial class MASTPPSListReport : DevExpress.XtraReports.UI.XtraReport
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
        private DevExpress.XtraReports.UI.XRLabel header_CustPONrLaneByrant;
        private DevExpress.XtraReports.UI.XRLabel header_CustPONrMAST;
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
        private DevExpress.XtraReports.UI.XRLabel header_FIT;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_FIT_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_JSS;
        private DevExpress.XtraReports.UI.XRLabel header_JSS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_JSS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_JSS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_JSS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_JSSDate;
        private DevExpress.XtraReports.UI.XRLabel header_MS;
        private DevExpress.XtraReports.UI.XRLabel header_MS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_MS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_MS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_MS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_CAP;
        private DevExpress.XtraReports.UI.XRLabel header_CAP_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_CAP_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_CAP_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_CAP_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_WS;
        private DevExpress.XtraReports.UI.XRLabel header_WS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel header_WS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel header_WS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_WS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel header_MouldSpe;
        private DevExpress.XtraReports.UI.XRLabel header_Remarks;
        private DevExpress.XtraReports.UI.XRLabel detail_SampleOrderID;
        private DevExpress.XtraReports.UI.XRLabel detail_Customer;
        private DevExpress.XtraReports.UI.XRLabel detail_CustDept;
        private DevExpress.XtraReports.UI.XRLabel detail_CustPONrLaneByrant;
        private DevExpress.XtraReports.UI.XRLabel detail_CustPONrMAST;
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
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_FIT_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_JSS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_JSS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_JSS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_JSS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_JSSDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_MS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CAP_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_CAP_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CAP_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_CAP_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WS_SeqNr;
        private DevExpress.XtraReports.UI.XRLabel detail_WS_IssueDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WS_DefaultFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_WS_CurrentFinishDate;
        private DevExpress.XtraReports.UI.XRLabel detail_MouldSpe;
        private XRPageInfo xrPageInfo1;
        private XRLabel xrLabel2;
        private XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRLabel detail_Remarks;
        #endregion

        public MASTPPSListReport(string customer)
        {
            InitializeComponent();
            this.headerLable.Text = this.headerLable.Text.Replace("MAST", customer);
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.detail_SampleOrderID = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Customer = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustDept = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustPONrLaneByrant = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CustPONrMAST = new DevExpress.XtraReports.UI.XRLabel();
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
            this.detail_FIT_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_FIT_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_JSS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_JSS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_JSS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_JSS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_JSSDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CAP_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CAP_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CAP_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_CAP_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_WS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_MouldSpe = new DevExpress.XtraReports.UI.XRLabel();
            this.detail_Remarks = new DevExpress.XtraReports.UI.XRLabel();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.headerLable = new DevExpress.XtraReports.UI.XRLabel();
            this.header_StyleInformation = new DevExpress.XtraReports.UI.XRLabel();
            this.header_SampleOrderID = new DevExpress.XtraReports.UI.XRLabel();
            this.header_Customer = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustDept = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustPONrLaneByrant = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CustPONrMAST = new DevExpress.XtraReports.UI.XRLabel();
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
            this.header_FIT = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_FIT_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_JSS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_JSS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_JSS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_JSS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_JSS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_JSSDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_MS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CAP = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CAP_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CAP_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CAP_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_CAP_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WS = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WS_SeqNr = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WS_IssueDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WS_DefaultFinishDate = new DevExpress.XtraReports.UI.XRLabel();
            this.header_WS_CurrentFinishDate = new DevExpress.XtraReports.UI.XRLabel();
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
            this.detail_CustPONrLaneByrant,
            this.detail_CustPONrMAST,
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
            this.detail_FIT_SeqNr,
            this.detail_FIT_IssueDate,
            this.detail_FIT_DefaultFinishDate,
            this.detail_FIT_CurrentFinishDate,
            this.detail_JSS_SeqNr,
            this.detail_JSS_IssueDate,
            this.detail_JSS_DefaultFinishDate,
            this.detail_JSS_CurrentFinishDate,
            this.detail_JSSDate,
            this.detail_MS_SeqNr,
            this.detail_MS_IssueDate,
            this.detail_MS_DefaultFinishDate,
            this.detail_MS_CurrentFinishDate,
            this.detail_CAP_SeqNr,
            this.detail_CAP_IssueDate,
            this.detail_CAP_DefaultFinishDate,
            this.detail_CAP_CurrentFinishDate,
            this.detail_WS_SeqNr,
            this.detail_WS_IssueDate,
            this.detail_WS_DefaultFinishDate,
            this.detail_WS_CurrentFinishDate,
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
            this.detail_SampleOrderID.Size = new System.Drawing.Size(31, 15);
            this.detail_SampleOrderID.StyleName = "csDetail";
            this.detail_SampleOrderID.WordWrap = false;
            // 
            // detail_Customer
            // 
            this.detail_Customer.CanGrow = false;
            this.detail_Customer.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Customer", "")});
            this.detail_Customer.Location = new System.Drawing.Point(63, 0);
            this.detail_Customer.Name = "detail_Customer";
            this.detail_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Customer.Size = new System.Drawing.Size(31, 15);
            this.detail_Customer.StyleName = "csDetail";
            this.detail_Customer.WordWrap = false;
            // 
            // detail_CustDept
            // 
            this.detail_CustDept.CanGrow = false;
            this.detail_CustDept.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustDept", "")});
            this.detail_CustDept.Location = new System.Drawing.Point(94, 0);
            this.detail_CustDept.Name = "detail_CustDept";
            this.detail_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustDept.Size = new System.Drawing.Size(31, 15);
            this.detail_CustDept.StyleName = "csDetail";
            this.detail_CustDept.WordWrap = false;
            // 
            // detail_CustPONrLaneByrant
            // 
            this.detail_CustPONrLaneByrant.CanGrow = false;
            this.detail_CustPONrLaneByrant.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustPONrLaneByrant", "")});
            this.detail_CustPONrLaneByrant.Location = new System.Drawing.Point(125, 0);
            this.detail_CustPONrLaneByrant.Name = "detail_CustPONrLaneByrant";
            this.detail_CustPONrLaneByrant.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustPONrLaneByrant.Size = new System.Drawing.Size(31, 15);
            this.detail_CustPONrLaneByrant.StyleName = "csDetail";
            this.detail_CustPONrLaneByrant.WordWrap = false;
            // 
            // detail_CustPONrMAST
            // 
            this.detail_CustPONrMAST.CanGrow = false;
            this.detail_CustPONrMAST.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustPONrMAST", "")});
            this.detail_CustPONrMAST.Location = new System.Drawing.Point(156, 0);
            this.detail_CustPONrMAST.Name = "detail_CustPONrMAST";
            this.detail_CustPONrMAST.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustPONrMAST.Size = new System.Drawing.Size(31, 15);
            this.detail_CustPONrMAST.StyleName = "csDetail";
            this.detail_CustPONrMAST.WordWrap = false;
            // 
            // detail_ProjectNo
            // 
            this.detail_ProjectNo.CanGrow = false;
            this.detail_ProjectNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNo", "")});
            this.detail_ProjectNo.Location = new System.Drawing.Point(187, 0);
            this.detail_ProjectNo.Name = "detail_ProjectNo";
            this.detail_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ProjectNo.Size = new System.Drawing.Size(31, 15);
            this.detail_ProjectNo.StyleName = "csDetail";
            this.detail_ProjectNo.WordWrap = false;
            // 
            // detail_FtyStartDate
            // 
            this.detail_FtyStartDate.CanGrow = false;
            this.detail_FtyStartDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FtyStartDate", "{0:yy/MM/dd}")});
            this.detail_FtyStartDate.Location = new System.Drawing.Point(218, 0);
            this.detail_FtyStartDate.Name = "detail_FtyStartDate";
            this.detail_FtyStartDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FtyStartDate.Size = new System.Drawing.Size(28, 15);
            this.detail_FtyStartDate.StyleName = "csDetail";
            this.detail_FtyStartDate.WordWrap = false;
            // 
            // detail_ExFtyDate
            // 
            this.detail_ExFtyDate.CanGrow = false;
            this.detail_ExFtyDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ExFtyDate", "{0:yy/MM/dd}")});
            this.detail_ExFtyDate.Location = new System.Drawing.Point(246, 0);
            this.detail_ExFtyDate.Name = "detail_ExFtyDate";
            this.detail_ExFtyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_ExFtyDate.Size = new System.Drawing.Size(28, 15);
            this.detail_ExFtyDate.StyleName = "csDetail";
            this.detail_ExFtyDate.WordWrap = false;
            // 
            // detail_DelDate
            // 
            this.detail_DelDate.CanGrow = false;
            this.detail_DelDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "DelDate", "{0:yy/MM/dd}")});
            this.detail_DelDate.Location = new System.Drawing.Point(274, 0);
            this.detail_DelDate.Name = "detail_DelDate";
            this.detail_DelDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_DelDate.Size = new System.Drawing.Size(22, 15);
            this.detail_DelDate.StyleName = "csDetail";
            this.detail_DelDate.WordWrap = false;
            // 
            // detail_CustStyleNr
            // 
            this.detail_CustStyleNr.CanGrow = false;
            this.detail_CustStyleNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustStyleNr", "")});
            this.detail_CustStyleNr.Location = new System.Drawing.Point(296, 0);
            this.detail_CustStyleNr.Name = "detail_CustStyleNr";
            this.detail_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CustStyleNr.Size = new System.Drawing.Size(31, 15);
            this.detail_CustStyleNr.StyleName = "csDetail";
            this.detail_CustStyleNr.WordWrap = false;
            // 
            // detail_styleid
            // 
            this.detail_styleid.CanGrow = false;
            this.detail_styleid.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "StyleID", "")});
            this.detail_styleid.Location = new System.Drawing.Point(327, 0);
            this.detail_styleid.Name = "detail_styleid";
            this.detail_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_styleid.Size = new System.Drawing.Size(31, 15);
            this.detail_styleid.StyleName = "csDetail";
            this.detail_styleid.WordWrap = false;
            // 
            // detail_PCCode
            // 
            this.detail_PCCode.CanGrow = false;
            this.detail_PCCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PCCode", "")});
            this.detail_PCCode.Location = new System.Drawing.Point(358, 0);
            this.detail_PCCode.Name = "detail_PCCode";
            this.detail_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PCCode.Size = new System.Drawing.Size(20, 15);
            this.detail_PCCode.StyleName = "csDetail";
            this.detail_PCCode.WordWrap = false;
            // 
            // detail_BriefDesr
            // 
            this.detail_BriefDesr.CanGrow = false;
            this.detail_BriefDesr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BriefDesr", "")});
            this.detail_BriefDesr.Location = new System.Drawing.Point(378, 0);
            this.detail_BriefDesr.Name = "detail_BriefDesr";
            this.detail_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BriefDesr.Size = new System.Drawing.Size(31, 15);
            this.detail_BriefDesr.StyleName = "csDetail";
            this.detail_BriefDesr.WordWrap = false;
            // 
            // detail_BrandName
            // 
            this.detail_BrandName.CanGrow = false;
            this.detail_BrandName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BrandName", "")});
            this.detail_BrandName.Location = new System.Drawing.Point(409, 0);
            this.detail_BrandName.Name = "detail_BrandName";
            this.detail_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_BrandName.Size = new System.Drawing.Size(31, 15);
            this.detail_BrandName.StyleName = "csDetail";
            this.detail_BrandName.WordWrap = false;
            // 
            // detail_GroupName
            // 
            this.detail_GroupName.CanGrow = false;
            this.detail_GroupName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GroupName", "")});
            this.detail_GroupName.Location = new System.Drawing.Point(440, 0);
            this.detail_GroupName.Name = "detail_GroupName";
            this.detail_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_GroupName.Size = new System.Drawing.Size(31, 15);
            this.detail_GroupName.StyleName = "csDetail";
            this.detail_GroupName.WordWrap = false;
            // 
            // detail_SeasonCode
            // 
            this.detail_SeasonCode.CanGrow = false;
            this.detail_SeasonCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SeasonCode", "")});
            this.detail_SeasonCode.Location = new System.Drawing.Point(471, 0);
            this.detail_SeasonCode.Name = "detail_SeasonCode";
            this.detail_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_SeasonCode.Size = new System.Drawing.Size(31, 15);
            this.detail_SeasonCode.StyleName = "csDetail";
            this.detail_SeasonCode.WordWrap = false;
            // 
            // detail_PatternSource
            // 
            this.detail_PatternSource.CanGrow = false;
            this.detail_PatternSource.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PatternSource", "")});
            this.detail_PatternSource.Location = new System.Drawing.Point(502, 0);
            this.detail_PatternSource.Name = "detail_PatternSource";
            this.detail_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_PatternSource.Size = new System.Drawing.Size(31, 15);
            this.detail_PatternSource.StyleName = "csDetail";
            this.detail_PatternSource.WordWrap = false;
            // 
            // detail_BaseSizeSpec_RVS
            // 
            this.detail_BaseSizeSpec_RVS.CanGrow = false;
            this.detail_BaseSizeSpec_RVS.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BaseSizeSpec_RVSDesc", "")});
            this.detail_BaseSizeSpec_RVS.Location = new System.Drawing.Point(533, 0);
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
            this.detail_BaseSizeSpec_NC.Location = new System.Drawing.Point(548, 0);
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
            this.detail_GradeRules_RVS.Location = new System.Drawing.Point(563, 0);
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
            this.detail_GradeRules_NC.Location = new System.Drawing.Point(578, 0);
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
            this.detail_Construction_RVS.Location = new System.Drawing.Point(593, 0);
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
            this.detail_Construction_NC.Location = new System.Drawing.Point(608, 0);
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
            this.detail_MatlTrims_RVS.Location = new System.Drawing.Point(623, 0);
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
            this.detail_MatlTrims_NC.Location = new System.Drawing.Point(638, 0);
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
            this.detail_MatlTrims_Subt.Location = new System.Drawing.Point(653, 0);
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
            this.detail_MatlTrims_ReadyDate.Location = new System.Drawing.Point(668, 0);
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
            this.detail_MatlTrims_PH3DPlasticShoot.Location = new System.Drawing.Point(701, 0);
            this.detail_MatlTrims_PH3DPlasticShoot.Name = "detail_MatlTrims_PH3DPlasticShoot";
            this.detail_MatlTrims_PH3DPlasticShoot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MatlTrims_PH3DPlasticShoot.Size = new System.Drawing.Size(31, 15);
            this.detail_MatlTrims_PH3DPlasticShoot.StyleName = "csDetail";
            this.detail_MatlTrims_PH3DPlasticShoot.WordWrap = false;
            // 
            // detail_MidSpec
            // 
            this.detail_MidSpec.CanGrow = false;
            this.detail_MidSpec.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MidSpec", "")});
            this.detail_MidSpec.Location = new System.Drawing.Point(732, 0);
            this.detail_MidSpec.Name = "detail_MidSpec";
            this.detail_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MidSpec.Size = new System.Drawing.Size(31, 15);
            this.detail_MidSpec.StyleName = "csDetail";
            this.detail_MidSpec.WordWrap = false;
            // 
            // detail_Samplemakeornot
            // 
            this.detail_Samplemakeornot.CanGrow = false;
            this.detail_Samplemakeornot.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SamplemakeornotDesc", "")});
            this.detail_Samplemakeornot.Location = new System.Drawing.Point(763, 0);
            this.detail_Samplemakeornot.Name = "detail_Samplemakeornot";
            this.detail_Samplemakeornot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_Samplemakeornot.Size = new System.Drawing.Size(31, 15);
            this.detail_Samplemakeornot.StyleName = "csDetail";
            this.detail_Samplemakeornot.WordWrap = false;
            // 
            // detail_WorkShop
            // 
            this.detail_WorkShop.CanGrow = false;
            this.detail_WorkShop.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WorkShop", "")});
            this.detail_WorkShop.Location = new System.Drawing.Point(794, 0);
            this.detail_WorkShop.Name = "detail_WorkShop";
            this.detail_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WorkShop.Size = new System.Drawing.Size(31, 15);
            this.detail_WorkShop.StyleName = "csDetail";
            this.detail_WorkShop.WordWrap = false;
            // 
            // detail_FRSDate
            // 
            this.detail_FRSDate.CanGrow = false;
            this.detail_FRSDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FRSDate", "{0:yy/MM/dd}")});
            this.detail_FRSDate.Location = new System.Drawing.Point(825, 0);
            this.detail_FRSDate.Name = "detail_FRSDate";
            this.detail_FRSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FRSDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FRSDate.StyleName = "csDetail";
            this.detail_FRSDate.WordWrap = false;
            // 
            // detail_FIT_SeqNr
            // 
            this.detail_FIT_SeqNr.CanGrow = false;
            this.detail_FIT_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FIT_SeqNr", "")});
            this.detail_FIT_SeqNr.Location = new System.Drawing.Point(858, 0);
            this.detail_FIT_SeqNr.Name = "detail_FIT_SeqNr";
            this.detail_FIT_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FIT_SeqNr.Size = new System.Drawing.Size(31, 15);
            this.detail_FIT_SeqNr.StyleName = "csDetail";
            this.detail_FIT_SeqNr.WordWrap = false;
            // 
            // detail_FIT_IssueDate
            // 
            this.detail_FIT_IssueDate.CanGrow = false;
            this.detail_FIT_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FIT_IssueDate", "{0:yy/MM/dd}")});
            this.detail_FIT_IssueDate.Location = new System.Drawing.Point(889, 0);
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
            this.detail_FIT_DefaultFinishDate.Location = new System.Drawing.Point(922, 0);
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
            this.detail_FIT_CurrentFinishDate.Location = new System.Drawing.Point(955, 0);
            this.detail_FIT_CurrentFinishDate.Name = "detail_FIT_CurrentFinishDate";
            this.detail_FIT_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_FIT_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_FIT_CurrentFinishDate.StyleName = "csDetail";
            this.detail_FIT_CurrentFinishDate.WordWrap = false;
            // 
            // detail_JSS_SeqNr
            // 
            this.detail_JSS_SeqNr.CanGrow = false;
            this.detail_JSS_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "JSS_SeqNr", "")});
            this.detail_JSS_SeqNr.Location = new System.Drawing.Point(988, 0);
            this.detail_JSS_SeqNr.Name = "detail_JSS_SeqNr";
            this.detail_JSS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_JSS_SeqNr.Size = new System.Drawing.Size(31, 15);
            this.detail_JSS_SeqNr.StyleName = "csDetail";
            this.detail_JSS_SeqNr.WordWrap = false;
            // 
            // detail_JSS_IssueDate
            // 
            this.detail_JSS_IssueDate.CanGrow = false;
            this.detail_JSS_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "JSS_IssueDate", "{0:yy/MM/dd}")});
            this.detail_JSS_IssueDate.Location = new System.Drawing.Point(1019, 0);
            this.detail_JSS_IssueDate.Name = "detail_JSS_IssueDate";
            this.detail_JSS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_JSS_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_JSS_IssueDate.StyleName = "csDetail";
            this.detail_JSS_IssueDate.WordWrap = false;
            // 
            // detail_JSS_DefaultFinishDate
            // 
            this.detail_JSS_DefaultFinishDate.CanGrow = false;
            this.detail_JSS_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "JSS_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_JSS_DefaultFinishDate.Location = new System.Drawing.Point(1052, 0);
            this.detail_JSS_DefaultFinishDate.Name = "detail_JSS_DefaultFinishDate";
            this.detail_JSS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_JSS_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_JSS_DefaultFinishDate.StyleName = "csDetail";
            this.detail_JSS_DefaultFinishDate.WordWrap = false;
            // 
            // detail_JSS_CurrentFinishDate
            // 
            this.detail_JSS_CurrentFinishDate.CanGrow = false;
            this.detail_JSS_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "JSS_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_JSS_CurrentFinishDate.Location = new System.Drawing.Point(1085, 0);
            this.detail_JSS_CurrentFinishDate.Name = "detail_JSS_CurrentFinishDate";
            this.detail_JSS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_JSS_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_JSS_CurrentFinishDate.StyleName = "csDetail";
            this.detail_JSS_CurrentFinishDate.WordWrap = false;
            // 
            // detail_JSSDate
            // 
            this.detail_JSSDate.CanGrow = false;
            this.detail_JSSDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "JSSDate", "{0:yy/MM/dd}")});
            this.detail_JSSDate.Location = new System.Drawing.Point(1118, 0);
            this.detail_JSSDate.Name = "detail_JSSDate";
            this.detail_JSSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_JSSDate.Size = new System.Drawing.Size(33, 15);
            this.detail_JSSDate.StyleName = "csDetail";
            this.detail_JSSDate.WordWrap = false;
            // 
            // detail_MS_SeqNr
            // 
            this.detail_MS_SeqNr.CanGrow = false;
            this.detail_MS_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MS_SeqNr", "")});
            this.detail_MS_SeqNr.Location = new System.Drawing.Point(1151, 0);
            this.detail_MS_SeqNr.Name = "detail_MS_SeqNr";
            this.detail_MS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MS_SeqNr.Size = new System.Drawing.Size(31, 15);
            this.detail_MS_SeqNr.StyleName = "csDetail";
            this.detail_MS_SeqNr.WordWrap = false;
            // 
            // detail_MS_IssueDate
            // 
            this.detail_MS_IssueDate.CanGrow = false;
            this.detail_MS_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MS_IssueDate", "{0:yy/MM/dd}")});
            this.detail_MS_IssueDate.Location = new System.Drawing.Point(1182, 0);
            this.detail_MS_IssueDate.Name = "detail_MS_IssueDate";
            this.detail_MS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MS_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MS_IssueDate.StyleName = "csDetail";
            this.detail_MS_IssueDate.WordWrap = false;
            // 
            // detail_MS_DefaultFinishDate
            // 
            this.detail_MS_DefaultFinishDate.CanGrow = false;
            this.detail_MS_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MS_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_MS_DefaultFinishDate.Location = new System.Drawing.Point(1215, 0);
            this.detail_MS_DefaultFinishDate.Name = "detail_MS_DefaultFinishDate";
            this.detail_MS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MS_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MS_DefaultFinishDate.StyleName = "csDetail";
            this.detail_MS_DefaultFinishDate.WordWrap = false;
            // 
            // detail_MS_CurrentFinishDate
            // 
            this.detail_MS_CurrentFinishDate.CanGrow = false;
            this.detail_MS_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MS_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_MS_CurrentFinishDate.Location = new System.Drawing.Point(1248, 0);
            this.detail_MS_CurrentFinishDate.Name = "detail_MS_CurrentFinishDate";
            this.detail_MS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MS_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_MS_CurrentFinishDate.StyleName = "csDetail";
            this.detail_MS_CurrentFinishDate.WordWrap = false;
            // 
            // detail_CAP_SeqNr
            // 
            this.detail_CAP_SeqNr.CanGrow = false;
            this.detail_CAP_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CAP_SeqNr", "")});
            this.detail_CAP_SeqNr.Location = new System.Drawing.Point(1281, 0);
            this.detail_CAP_SeqNr.Name = "detail_CAP_SeqNr";
            this.detail_CAP_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CAP_SeqNr.Size = new System.Drawing.Size(31, 15);
            this.detail_CAP_SeqNr.StyleName = "csDetail";
            this.detail_CAP_SeqNr.WordWrap = false;
            // 
            // detail_CAP_IssueDate
            // 
            this.detail_CAP_IssueDate.CanGrow = false;
            this.detail_CAP_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CAP_IssueDate", "{0:yy/MM/dd}")});
            this.detail_CAP_IssueDate.Location = new System.Drawing.Point(1312, 0);
            this.detail_CAP_IssueDate.Name = "detail_CAP_IssueDate";
            this.detail_CAP_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CAP_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CAP_IssueDate.StyleName = "csDetail";
            this.detail_CAP_IssueDate.WordWrap = false;
            // 
            // detail_CAP_DefaultFinishDate
            // 
            this.detail_CAP_DefaultFinishDate.CanGrow = false;
            this.detail_CAP_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CAP_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_CAP_DefaultFinishDate.Location = new System.Drawing.Point(1345, 0);
            this.detail_CAP_DefaultFinishDate.Name = "detail_CAP_DefaultFinishDate";
            this.detail_CAP_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CAP_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CAP_DefaultFinishDate.StyleName = "csDetail";
            this.detail_CAP_DefaultFinishDate.WordWrap = false;
            // 
            // detail_CAP_CurrentFinishDate
            // 
            this.detail_CAP_CurrentFinishDate.CanGrow = false;
            this.detail_CAP_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CAP_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_CAP_CurrentFinishDate.Location = new System.Drawing.Point(1378, 0);
            this.detail_CAP_CurrentFinishDate.Name = "detail_CAP_CurrentFinishDate";
            this.detail_CAP_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_CAP_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_CAP_CurrentFinishDate.StyleName = "csDetail";
            this.detail_CAP_CurrentFinishDate.WordWrap = false;
            // 
            // detail_WS_SeqNr
            // 
            this.detail_WS_SeqNr.CanGrow = false;
            this.detail_WS_SeqNr.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WS_SeqNr", "")});
            this.detail_WS_SeqNr.Location = new System.Drawing.Point(1411, 0);
            this.detail_WS_SeqNr.Name = "detail_WS_SeqNr";
            this.detail_WS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WS_SeqNr.Size = new System.Drawing.Size(31, 15);
            this.detail_WS_SeqNr.StyleName = "csDetail";
            this.detail_WS_SeqNr.WordWrap = false;
            // 
            // detail_WS_IssueDate
            // 
            this.detail_WS_IssueDate.CanGrow = false;
            this.detail_WS_IssueDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WS_IssueDate", "{0:yy/MM/dd}")});
            this.detail_WS_IssueDate.Location = new System.Drawing.Point(1442, 0);
            this.detail_WS_IssueDate.Name = "detail_WS_IssueDate";
            this.detail_WS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WS_IssueDate.Size = new System.Drawing.Size(33, 15);
            this.detail_WS_IssueDate.StyleName = "csDetail";
            this.detail_WS_IssueDate.WordWrap = false;
            // 
            // detail_WS_DefaultFinishDate
            // 
            this.detail_WS_DefaultFinishDate.CanGrow = false;
            this.detail_WS_DefaultFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WS_DefaultFinishDate", "{0:yy/MM/dd}")});
            this.detail_WS_DefaultFinishDate.Location = new System.Drawing.Point(1475, 0);
            this.detail_WS_DefaultFinishDate.Name = "detail_WS_DefaultFinishDate";
            this.detail_WS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WS_DefaultFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_WS_DefaultFinishDate.StyleName = "csDetail";
            this.detail_WS_DefaultFinishDate.WordWrap = false;
            // 
            // detail_WS_CurrentFinishDate
            // 
            this.detail_WS_CurrentFinishDate.CanGrow = false;
            this.detail_WS_CurrentFinishDate.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WS_CurrentFinishDate", "{0:yy/MM/dd}")});
            this.detail_WS_CurrentFinishDate.Location = new System.Drawing.Point(1508, 0);
            this.detail_WS_CurrentFinishDate.Name = "detail_WS_CurrentFinishDate";
            this.detail_WS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_WS_CurrentFinishDate.Size = new System.Drawing.Size(33, 15);
            this.detail_WS_CurrentFinishDate.StyleName = "csDetail";
            this.detail_WS_CurrentFinishDate.WordWrap = false;
            // 
            // detail_MouldSpe
            // 
            this.detail_MouldSpe.CanGrow = false;
            this.detail_MouldSpe.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MouldSpe", "")});
            this.detail_MouldSpe.Location = new System.Drawing.Point(1541, 0);
            this.detail_MouldSpe.Name = "detail_MouldSpe";
            this.detail_MouldSpe.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.detail_MouldSpe.Size = new System.Drawing.Size(31, 15);
            this.detail_MouldSpe.StyleName = "csDetail";
            this.detail_MouldSpe.WordWrap = false;
            // 
            // detail_Remarks
            // 
            this.detail_Remarks.CanGrow = false;
            this.detail_Remarks.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Remarks", "")});
            this.detail_Remarks.Location = new System.Drawing.Point(1572, 0);
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
            this.header_CustPONrLaneByrant,
            this.header_CustPONrMAST,
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
            this.header_FIT,
            this.header_FIT_SeqNr,
            this.header_FIT_IssueDate,
            this.header_FIT_DefaultFinishDate,
            this.header_FIT_CurrentFinishDate,
            this.header_JSS,
            this.header_JSS_SeqNr,
            this.header_JSS_IssueDate,
            this.header_JSS_DefaultFinishDate,
            this.header_JSS_CurrentFinishDate,
            this.header_JSSDate,
            this.header_MS,
            this.header_MS_SeqNr,
            this.header_MS_IssueDate,
            this.header_MS_DefaultFinishDate,
            this.header_MS_CurrentFinishDate,
            this.header_CAP,
            this.header_CAP_SeqNr,
            this.header_CAP_IssueDate,
            this.header_CAP_DefaultFinishDate,
            this.header_CAP_CurrentFinishDate,
            this.header_WS,
            this.header_WS_SeqNr,
            this.header_WS_IssueDate,
            this.header_WS_DefaultFinishDate,
            this.header_WS_CurrentFinishDate,
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
            this.headerLable.Text = "Sample Processing Control - Pre Production Sample Status (MAST)";
            this.headerLable.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // header_StyleInformation
            // 
            this.header_StyleInformation.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_StyleInformation.CanGrow = false;
            this.header_StyleInformation.Location = new System.Drawing.Point(0, 30);
            this.header_StyleInformation.Name = "header_StyleInformation";
            this.header_StyleInformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_StyleInformation.Size = new System.Drawing.Size(623, 20);
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
            this.header_SampleOrderID.Size = new System.Drawing.Size(31, 36);
            this.header_SampleOrderID.StyleName = "csHeader1";
            this.header_SampleOrderID.Text = "Sample Order Nr ";
            // 
            // header_Customer
            // 
            this.header_Customer.CanGrow = false;
            this.header_Customer.Location = new System.Drawing.Point(63, 50);
            this.header_Customer.Name = "header_Customer";
            this.header_Customer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Customer.Size = new System.Drawing.Size(31, 36);
            this.header_Customer.StyleName = "csHeader1";
            this.header_Customer.Text = "Cust Code";
            // 
            // header_CustDept
            // 
            this.header_CustDept.CanGrow = false;
            this.header_CustDept.Location = new System.Drawing.Point(94, 50);
            this.header_CustDept.Name = "header_CustDept";
            this.header_CustDept.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustDept.Size = new System.Drawing.Size(31, 36);
            this.header_CustDept.StyleName = "csHeader1";
            this.header_CustDept.Text = "Cust Dept";
            // 
            // header_CustPONrLaneByrant
            // 
            this.header_CustPONrLaneByrant.CanGrow = false;
            this.header_CustPONrLaneByrant.Location = new System.Drawing.Point(125, 50);
            this.header_CustPONrLaneByrant.Name = "header_CustPONrLaneByrant";
            this.header_CustPONrLaneByrant.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustPONrLaneByrant.Size = new System.Drawing.Size(31, 36);
            this.header_CustPONrLaneByrant.StyleName = "csHeader1";
            this.header_CustPONrLaneByrant.Text = "Cust PO Nr - Lane Byrant";
            // 
            // header_CustPONrMAST
            // 
            this.header_CustPONrMAST.CanGrow = false;
            this.header_CustPONrMAST.Location = new System.Drawing.Point(156, 50);
            this.header_CustPONrMAST.Name = "header_CustPONrMAST";
            this.header_CustPONrMAST.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustPONrMAST.Size = new System.Drawing.Size(31, 36);
            this.header_CustPONrMAST.StyleName = "csHeader1";
            this.header_CustPONrMAST.Text = "Cust PO Nr - MAST";
            // 
            // header_ProjectNo
            // 
            this.header_ProjectNo.CanGrow = false;
            this.header_ProjectNo.Location = new System.Drawing.Point(187, 50);
            this.header_ProjectNo.Name = "header_ProjectNo";
            this.header_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ProjectNo.Size = new System.Drawing.Size(31, 36);
            this.header_ProjectNo.StyleName = "csHeader1";
            this.header_ProjectNo.Text = "Project Nr";
            // 
            // header_FtyStartDate
            // 
            this.header_FtyStartDate.CanGrow = false;
            this.header_FtyStartDate.Location = new System.Drawing.Point(218, 50);
            this.header_FtyStartDate.Name = "header_FtyStartDate";
            this.header_FtyStartDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FtyStartDate.Size = new System.Drawing.Size(28, 36);
            this.header_FtyStartDate.StyleName = "csHeader1";
            this.header_FtyStartDate.Text = "Fty Start Date";
            // 
            // header_ExFtyDate
            // 
            this.header_ExFtyDate.CanGrow = false;
            this.header_ExFtyDate.Location = new System.Drawing.Point(246, 50);
            this.header_ExFtyDate.Name = "header_ExFtyDate";
            this.header_ExFtyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_ExFtyDate.Size = new System.Drawing.Size(28, 36);
            this.header_ExFtyDate.StyleName = "csHeader1";
            this.header_ExFtyDate.Text = "Ex-Fty Date";
            // 
            // header_DelDate
            // 
            this.header_DelDate.CanGrow = false;
            this.header_DelDate.Location = new System.Drawing.Point(274, 50);
            this.header_DelDate.Name = "header_DelDate";
            this.header_DelDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_DelDate.Size = new System.Drawing.Size(22, 36);
            this.header_DelDate.StyleName = "csHeader1";
            this.header_DelDate.Text = "Del Date";
            // 
            // header_CustStyleNr
            // 
            this.header_CustStyleNr.CanGrow = false;
            this.header_CustStyleNr.Location = new System.Drawing.Point(296, 50);
            this.header_CustStyleNr.Name = "header_CustStyleNr";
            this.header_CustStyleNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CustStyleNr.Size = new System.Drawing.Size(31, 36);
            this.header_CustStyleNr.StyleName = "csHeader1";
            this.header_CustStyleNr.Text = "Cust Style Nr";
            // 
            // header_styleid
            // 
            this.header_styleid.CanGrow = false;
            this.header_styleid.Location = new System.Drawing.Point(327, 50);
            this.header_styleid.Name = "header_styleid";
            this.header_styleid.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_styleid.Size = new System.Drawing.Size(31, 36);
            this.header_styleid.StyleName = "csHeader1";
            this.header_styleid.Text = "PH Style Nr";
            // 
            // header_PCCode
            // 
            this.header_PCCode.CanGrow = false;
            this.header_PCCode.Location = new System.Drawing.Point(358, 50);
            this.header_PCCode.Name = "header_PCCode";
            this.header_PCCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PCCode.Size = new System.Drawing.Size(20, 36);
            this.header_PCCode.StyleName = "csHeader1";
            this.header_PCCode.Text = "PC Code";
            // 
            // header_BriefDesr
            // 
            this.header_BriefDesr.CanGrow = false;
            this.header_BriefDesr.Location = new System.Drawing.Point(378, 50);
            this.header_BriefDesr.Name = "header_BriefDesr";
            this.header_BriefDesr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BriefDesr.Size = new System.Drawing.Size(31, 36);
            this.header_BriefDesr.StyleName = "csHeader1";
            this.header_BriefDesr.Text = "Brief Desr.";
            // 
            // header_BrandName
            // 
            this.header_BrandName.CanGrow = false;
            this.header_BrandName.Location = new System.Drawing.Point(409, 50);
            this.header_BrandName.Name = "header_BrandName";
            this.header_BrandName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BrandName.Size = new System.Drawing.Size(31, 36);
            this.header_BrandName.StyleName = "csHeader1";
            this.header_BrandName.Text = "Brand Name";
            // 
            // header_GroupName
            // 
            this.header_GroupName.CanGrow = false;
            this.header_GroupName.Location = new System.Drawing.Point(440, 50);
            this.header_GroupName.Name = "header_GroupName";
            this.header_GroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GroupName.Size = new System.Drawing.Size(31, 36);
            this.header_GroupName.StyleName = "csHeader1";
            this.header_GroupName.Text = "Group Name";
            // 
            // header_SeasonCode
            // 
            this.header_SeasonCode.CanGrow = false;
            this.header_SeasonCode.Location = new System.Drawing.Point(471, 50);
            this.header_SeasonCode.Name = "header_SeasonCode";
            this.header_SeasonCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_SeasonCode.Size = new System.Drawing.Size(31, 36);
            this.header_SeasonCode.StyleName = "csHeader1";
            this.header_SeasonCode.Text = "Season Code";
            // 
            // header_PatternSource
            // 
            this.header_PatternSource.CanGrow = false;
            this.header_PatternSource.Location = new System.Drawing.Point(502, 50);
            this.header_PatternSource.Name = "header_PatternSource";
            this.header_PatternSource.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_PatternSource.Size = new System.Drawing.Size(31, 36);
            this.header_PatternSource.StyleName = "csHeader1";
            this.header_PatternSource.Text = "Pattern Source";
            // 
            // header_BaseSizeSpec
            // 
            this.header_BaseSizeSpec.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_BaseSizeSpec.CanGrow = false;
            this.header_BaseSizeSpec.Location = new System.Drawing.Point(533, 50);
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
            this.header_BaseSizeSpec_RVS.Location = new System.Drawing.Point(533, 62);
            this.header_BaseSizeSpec_RVS.Name = "header_BaseSizeSpec_RVS";
            this.header_BaseSizeSpec_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_BaseSizeSpec_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_BaseSizeSpec_RVS.StyleName = "csHeader1";
            this.header_BaseSizeSpec_RVS.Text = "RVS";
            // 
            // header_BaseSizeSpec_NC
            // 
            this.header_BaseSizeSpec_NC.CanGrow = false;
            this.header_BaseSizeSpec_NC.Location = new System.Drawing.Point(548, 62);
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
            this.header_GradeRules.Location = new System.Drawing.Point(563, 50);
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
            this.header_GradeRules_RVS.Location = new System.Drawing.Point(563, 62);
            this.header_GradeRules_RVS.Name = "header_GradeRules_RVS";
            this.header_GradeRules_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_GradeRules_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_GradeRules_RVS.StyleName = "csHeader1";
            this.header_GradeRules_RVS.Text = "RVS";
            // 
            // header_GradeRules_NC
            // 
            this.header_GradeRules_NC.CanGrow = false;
            this.header_GradeRules_NC.Location = new System.Drawing.Point(578, 62);
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
            this.header_Construction.Location = new System.Drawing.Point(593, 50);
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
            this.header_Construction_RVS.Location = new System.Drawing.Point(593, 62);
            this.header_Construction_RVS.Name = "header_Construction_RVS";
            this.header_Construction_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Construction_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_Construction_RVS.StyleName = "csHeader1";
            this.header_Construction_RVS.Text = "RVS";
            // 
            // header_Construction_NC
            // 
            this.header_Construction_NC.CanGrow = false;
            this.header_Construction_NC.Location = new System.Drawing.Point(608, 62);
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
            this.header_Materialinformation.Location = new System.Drawing.Point(623, 30);
            this.header_Materialinformation.Name = "header_Materialinformation";
            this.header_Materialinformation.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Materialinformation.Size = new System.Drawing.Size(140, 20);
            this.header_Materialinformation.StyleName = "csHeader1";
            this.header_Materialinformation.StylePriority.UseBorders = false;
            this.header_Materialinformation.Text = "Material information";
            // 
            // header_MatlTrims
            // 
            this.header_MatlTrims.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_MatlTrims.CanGrow = false;
            this.header_MatlTrims.Location = new System.Drawing.Point(623, 50);
            this.header_MatlTrims.Name = "header_MatlTrims";
            this.header_MatlTrims.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims.Size = new System.Drawing.Size(109, 12);
            this.header_MatlTrims.StyleName = "csHeader1";
            this.header_MatlTrims.StylePriority.UseBorders = false;
            this.header_MatlTrims.Text = "Mat\'l / Trims";
            // 
            // header_MatlTrims_RVS
            // 
            this.header_MatlTrims_RVS.CanGrow = false;
            this.header_MatlTrims_RVS.Location = new System.Drawing.Point(623, 62);
            this.header_MatlTrims_RVS.Name = "header_MatlTrims_RVS";
            this.header_MatlTrims_RVS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_RVS.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_RVS.StyleName = "csHeader1";
            this.header_MatlTrims_RVS.Text = "RVS";
            // 
            // header_MatlTrims_NC
            // 
            this.header_MatlTrims_NC.CanGrow = false;
            this.header_MatlTrims_NC.Location = new System.Drawing.Point(638, 62);
            this.header_MatlTrims_NC.Name = "header_MatlTrims_NC";
            this.header_MatlTrims_NC.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_NC.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_NC.StyleName = "csHeader1";
            this.header_MatlTrims_NC.Text = "NC";
            // 
            // header_MatlTrims_Subt
            // 
            this.header_MatlTrims_Subt.CanGrow = false;
            this.header_MatlTrims_Subt.Location = new System.Drawing.Point(653, 62);
            this.header_MatlTrims_Subt.Name = "header_MatlTrims_Subt";
            this.header_MatlTrims_Subt.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_Subt.Size = new System.Drawing.Size(15, 24);
            this.header_MatlTrims_Subt.StyleName = "csHeader1";
            this.header_MatlTrims_Subt.Text = "Subt";
            // 
            // header_MatlTrims_ReadyDate
            // 
            this.header_MatlTrims_ReadyDate.CanGrow = false;
            this.header_MatlTrims_ReadyDate.Location = new System.Drawing.Point(668, 62);
            this.header_MatlTrims_ReadyDate.Name = "header_MatlTrims_ReadyDate";
            this.header_MatlTrims_ReadyDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_ReadyDate.Size = new System.Drawing.Size(33, 24);
            this.header_MatlTrims_ReadyDate.StyleName = "csHeader1";
            this.header_MatlTrims_ReadyDate.Text = "Ready Date";
            // 
            // header_MatlTrims_PH3DPlasticShoot
            // 
            this.header_MatlTrims_PH3DPlasticShoot.CanGrow = false;
            this.header_MatlTrims_PH3DPlasticShoot.Location = new System.Drawing.Point(701, 62);
            this.header_MatlTrims_PH3DPlasticShoot.Name = "header_MatlTrims_PH3DPlasticShoot";
            this.header_MatlTrims_PH3DPlasticShoot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MatlTrims_PH3DPlasticShoot.Size = new System.Drawing.Size(31, 24);
            this.header_MatlTrims_PH3DPlasticShoot.StyleName = "csHeader1";
            this.header_MatlTrims_PH3DPlasticShoot.Text = "PH 3D Plastic Shoot";
            // 
            // header_MidSpec
            // 
            this.header_MidSpec.CanGrow = false;
            this.header_MidSpec.Location = new System.Drawing.Point(732, 50);
            this.header_MidSpec.Name = "header_MidSpec";
            this.header_MidSpec.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MidSpec.Size = new System.Drawing.Size(31, 36);
            this.header_MidSpec.StyleName = "csHeader1";
            this.header_MidSpec.Text = "Mid Spec";
            // 
            // header_Samplemakeornot
            // 
            this.header_Samplemakeornot.CanGrow = false;
            this.header_Samplemakeornot.Location = new System.Drawing.Point(763, 30);
            this.header_Samplemakeornot.Name = "header_Samplemakeornot";
            this.header_Samplemakeornot.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_Samplemakeornot.Size = new System.Drawing.Size(31, 56);
            this.header_Samplemakeornot.StyleName = "csHeader1";
            this.header_Samplemakeornot.Text = "Sample make or not";
            // 
            // header_WorkShop
            // 
            this.header_WorkShop.CanGrow = false;
            this.header_WorkShop.Location = new System.Drawing.Point(794, 30);
            this.header_WorkShop.Name = "header_WorkShop";
            this.header_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WorkShop.Size = new System.Drawing.Size(31, 56);
            this.header_WorkShop.StyleName = "csHeader1";
            this.header_WorkShop.Text = "Work Shop";
            // 
            // header_FRSDate
            // 
            this.header_FRSDate.CanGrow = false;
            this.header_FRSDate.Location = new System.Drawing.Point(825, 30);
            this.header_FRSDate.Name = "header_FRSDate";
            this.header_FRSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FRSDate.Size = new System.Drawing.Size(33, 56);
            this.header_FRSDate.StyleName = "csHeader1";
            this.header_FRSDate.Text = "FRS Date";
            // 
            // header_FIT
            // 
            this.header_FIT.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_FIT.CanGrow = false;
            this.header_FIT.Location = new System.Drawing.Point(858, 30);
            this.header_FIT.Name = "header_FIT";
            this.header_FIT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT.Size = new System.Drawing.Size(130, 20);
            this.header_FIT.StyleName = "csHeader1";
            this.header_FIT.StylePriority.UseBorders = false;
            this.header_FIT.Text = "FIT";
            // 
            // header_FIT_SeqNr
            // 
            this.header_FIT_SeqNr.CanGrow = false;
            this.header_FIT_SeqNr.Location = new System.Drawing.Point(858, 50);
            this.header_FIT_SeqNr.Name = "header_FIT_SeqNr";
            this.header_FIT_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_SeqNr.Size = new System.Drawing.Size(31, 36);
            this.header_FIT_SeqNr.StyleName = "csHeader1";
            this.header_FIT_SeqNr.Text = "Seq  Nr.";
            // 
            // header_FIT_IssueDate
            // 
            this.header_FIT_IssueDate.CanGrow = false;
            this.header_FIT_IssueDate.Location = new System.Drawing.Point(889, 50);
            this.header_FIT_IssueDate.Name = "header_FIT_IssueDate";
            this.header_FIT_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_FIT_IssueDate.StyleName = "csHeader1";
            this.header_FIT_IssueDate.Text = "Issue Date";
            // 
            // header_FIT_DefaultFinishDate
            // 
            this.header_FIT_DefaultFinishDate.CanGrow = false;
            this.header_FIT_DefaultFinishDate.Location = new System.Drawing.Point(922, 50);
            this.header_FIT_DefaultFinishDate.Name = "header_FIT_DefaultFinishDate";
            this.header_FIT_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_FIT_DefaultFinishDate.StyleName = "csHeader1";
            this.header_FIT_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_FIT_CurrentFinishDate
            // 
            this.header_FIT_CurrentFinishDate.CanGrow = false;
            this.header_FIT_CurrentFinishDate.Location = new System.Drawing.Point(955, 50);
            this.header_FIT_CurrentFinishDate.Name = "header_FIT_CurrentFinishDate";
            this.header_FIT_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_FIT_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_FIT_CurrentFinishDate.StyleName = "csHeader1";
            this.header_FIT_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_JSS
            // 
            this.header_JSS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_JSS.CanGrow = false;
            this.header_JSS.Location = new System.Drawing.Point(988, 30);
            this.header_JSS.Name = "header_JSS";
            this.header_JSS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_JSS.Size = new System.Drawing.Size(130, 20);
            this.header_JSS.StyleName = "csHeader1";
            this.header_JSS.StylePriority.UseBorders = false;
            this.header_JSS.Text = "JSS";
            // 
            // header_JSS_SeqNr
            // 
            this.header_JSS_SeqNr.CanGrow = false;
            this.header_JSS_SeqNr.Location = new System.Drawing.Point(988, 50);
            this.header_JSS_SeqNr.Name = "header_JSS_SeqNr";
            this.header_JSS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_JSS_SeqNr.Size = new System.Drawing.Size(31, 36);
            this.header_JSS_SeqNr.StyleName = "csHeader1";
            this.header_JSS_SeqNr.Text = "Seq  Nr.";
            // 
            // header_JSS_IssueDate
            // 
            this.header_JSS_IssueDate.CanGrow = false;
            this.header_JSS_IssueDate.Location = new System.Drawing.Point(1019, 50);
            this.header_JSS_IssueDate.Name = "header_JSS_IssueDate";
            this.header_JSS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_JSS_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_JSS_IssueDate.StyleName = "csHeader1";
            this.header_JSS_IssueDate.Text = "Issue Date";
            // 
            // header_JSS_DefaultFinishDate
            // 
            this.header_JSS_DefaultFinishDate.CanGrow = false;
            this.header_JSS_DefaultFinishDate.Location = new System.Drawing.Point(1052, 50);
            this.header_JSS_DefaultFinishDate.Name = "header_JSS_DefaultFinishDate";
            this.header_JSS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_JSS_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_JSS_DefaultFinishDate.StyleName = "csHeader1";
            this.header_JSS_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_JSS_CurrentFinishDate
            // 
            this.header_JSS_CurrentFinishDate.CanGrow = false;
            this.header_JSS_CurrentFinishDate.Location = new System.Drawing.Point(1085, 50);
            this.header_JSS_CurrentFinishDate.Name = "header_JSS_CurrentFinishDate";
            this.header_JSS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_JSS_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_JSS_CurrentFinishDate.StyleName = "csHeader1";
            this.header_JSS_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_JSSDate
            // 
            this.header_JSSDate.CanGrow = false;
            this.header_JSSDate.Location = new System.Drawing.Point(1118, 30);
            this.header_JSSDate.Name = "header_JSSDate";
            this.header_JSSDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_JSSDate.Size = new System.Drawing.Size(33, 56);
            this.header_JSSDate.StyleName = "csHeader1";
            this.header_JSSDate.Text = "JSS Date";
            // 
            // header_MS
            // 
            this.header_MS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_MS.CanGrow = false;
            this.header_MS.Location = new System.Drawing.Point(1151, 30);
            this.header_MS.Name = "header_MS";
            this.header_MS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MS.Size = new System.Drawing.Size(130, 20);
            this.header_MS.StyleName = "csHeader1";
            this.header_MS.StylePriority.UseBorders = false;
            this.header_MS.Text = "MS";
            // 
            // header_MS_SeqNr
            // 
            this.header_MS_SeqNr.CanGrow = false;
            this.header_MS_SeqNr.Location = new System.Drawing.Point(1151, 50);
            this.header_MS_SeqNr.Name = "header_MS_SeqNr";
            this.header_MS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MS_SeqNr.Size = new System.Drawing.Size(31, 36);
            this.header_MS_SeqNr.StyleName = "csHeader1";
            this.header_MS_SeqNr.Text = "Seq  Nr.";
            // 
            // header_MS_IssueDate
            // 
            this.header_MS_IssueDate.CanGrow = false;
            this.header_MS_IssueDate.Location = new System.Drawing.Point(1182, 50);
            this.header_MS_IssueDate.Name = "header_MS_IssueDate";
            this.header_MS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MS_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_MS_IssueDate.StyleName = "csHeader1";
            this.header_MS_IssueDate.Text = "Issue Date";
            // 
            // header_MS_DefaultFinishDate
            // 
            this.header_MS_DefaultFinishDate.CanGrow = false;
            this.header_MS_DefaultFinishDate.Location = new System.Drawing.Point(1215, 50);
            this.header_MS_DefaultFinishDate.Name = "header_MS_DefaultFinishDate";
            this.header_MS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MS_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_MS_DefaultFinishDate.StyleName = "csHeader1";
            this.header_MS_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_MS_CurrentFinishDate
            // 
            this.header_MS_CurrentFinishDate.CanGrow = false;
            this.header_MS_CurrentFinishDate.Location = new System.Drawing.Point(1248, 50);
            this.header_MS_CurrentFinishDate.Name = "header_MS_CurrentFinishDate";
            this.header_MS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MS_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_MS_CurrentFinishDate.StyleName = "csHeader1";
            this.header_MS_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_CAP
            // 
            this.header_CAP.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_CAP.CanGrow = false;
            this.header_CAP.Location = new System.Drawing.Point(1281, 30);
            this.header_CAP.Name = "header_CAP";
            this.header_CAP.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CAP.Size = new System.Drawing.Size(130, 20);
            this.header_CAP.StyleName = "csHeader1";
            this.header_CAP.StylePriority.UseBorders = false;
            this.header_CAP.Text = "CAP";
            // 
            // header_CAP_SeqNr
            // 
            this.header_CAP_SeqNr.CanGrow = false;
            this.header_CAP_SeqNr.Location = new System.Drawing.Point(1281, 50);
            this.header_CAP_SeqNr.Name = "header_CAP_SeqNr";
            this.header_CAP_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CAP_SeqNr.Size = new System.Drawing.Size(31, 36);
            this.header_CAP_SeqNr.StyleName = "csHeader1";
            this.header_CAP_SeqNr.Text = "Seq  Nr.";
            // 
            // header_CAP_IssueDate
            // 
            this.header_CAP_IssueDate.CanGrow = false;
            this.header_CAP_IssueDate.Location = new System.Drawing.Point(1312, 50);
            this.header_CAP_IssueDate.Name = "header_CAP_IssueDate";
            this.header_CAP_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CAP_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_CAP_IssueDate.StyleName = "csHeader1";
            this.header_CAP_IssueDate.Text = "Issue Date";
            // 
            // header_CAP_DefaultFinishDate
            // 
            this.header_CAP_DefaultFinishDate.CanGrow = false;
            this.header_CAP_DefaultFinishDate.Location = new System.Drawing.Point(1345, 50);
            this.header_CAP_DefaultFinishDate.Name = "header_CAP_DefaultFinishDate";
            this.header_CAP_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CAP_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_CAP_DefaultFinishDate.StyleName = "csHeader1";
            this.header_CAP_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_CAP_CurrentFinishDate
            // 
            this.header_CAP_CurrentFinishDate.CanGrow = false;
            this.header_CAP_CurrentFinishDate.Location = new System.Drawing.Point(1378, 50);
            this.header_CAP_CurrentFinishDate.Name = "header_CAP_CurrentFinishDate";
            this.header_CAP_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_CAP_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_CAP_CurrentFinishDate.StyleName = "csHeader1";
            this.header_CAP_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_WS
            // 
            this.header_WS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.header_WS.CanGrow = false;
            this.header_WS.Location = new System.Drawing.Point(1411, 30);
            this.header_WS.Name = "header_WS";
            this.header_WS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WS.Size = new System.Drawing.Size(130, 20);
            this.header_WS.StyleName = "csHeader1";
            this.header_WS.StylePriority.UseBorders = false;
            this.header_WS.Text = "WS";
            // 
            // header_WS_SeqNr
            // 
            this.header_WS_SeqNr.CanGrow = false;
            this.header_WS_SeqNr.Location = new System.Drawing.Point(1411, 50);
            this.header_WS_SeqNr.Name = "header_WS_SeqNr";
            this.header_WS_SeqNr.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WS_SeqNr.Size = new System.Drawing.Size(31, 36);
            this.header_WS_SeqNr.StyleName = "csHeader1";
            this.header_WS_SeqNr.Text = "Seq  Nr.";
            // 
            // header_WS_IssueDate
            // 
            this.header_WS_IssueDate.CanGrow = false;
            this.header_WS_IssueDate.Location = new System.Drawing.Point(1442, 50);
            this.header_WS_IssueDate.Name = "header_WS_IssueDate";
            this.header_WS_IssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WS_IssueDate.Size = new System.Drawing.Size(33, 36);
            this.header_WS_IssueDate.StyleName = "csHeader1";
            this.header_WS_IssueDate.Text = "Issue Date";
            // 
            // header_WS_DefaultFinishDate
            // 
            this.header_WS_DefaultFinishDate.CanGrow = false;
            this.header_WS_DefaultFinishDate.Location = new System.Drawing.Point(1475, 50);
            this.header_WS_DefaultFinishDate.Name = "header_WS_DefaultFinishDate";
            this.header_WS_DefaultFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WS_DefaultFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_WS_DefaultFinishDate.StyleName = "csHeader1";
            this.header_WS_DefaultFinishDate.Text = "Default Finish Date";
            // 
            // header_WS_CurrentFinishDate
            // 
            this.header_WS_CurrentFinishDate.CanGrow = false;
            this.header_WS_CurrentFinishDate.Location = new System.Drawing.Point(1508, 50);
            this.header_WS_CurrentFinishDate.Name = "header_WS_CurrentFinishDate";
            this.header_WS_CurrentFinishDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_WS_CurrentFinishDate.Size = new System.Drawing.Size(33, 36);
            this.header_WS_CurrentFinishDate.StyleName = "csHeader1";
            this.header_WS_CurrentFinishDate.Text = "Current Finish Date";
            // 
            // header_MouldSpe
            // 
            this.header_MouldSpe.CanGrow = false;
            this.header_MouldSpe.Location = new System.Drawing.Point(1541, 30);
            this.header_MouldSpe.Name = "header_MouldSpe";
            this.header_MouldSpe.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.header_MouldSpe.Size = new System.Drawing.Size(31, 56);
            this.header_MouldSpe.StyleName = "csHeader1";
            this.header_MouldSpe.Text = "Mould Spe";
            // 
            // header_Remarks
            // 
            this.header_Remarks.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.header_Remarks.CanGrow = false;
            this.header_Remarks.Location = new System.Drawing.Point(1572, 30);
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
            this.xrLabel1.Location = new System.Drawing.Point(31, 50);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(33, 36);
            this.xrLabel1.StyleName = "csHeader1";
            this.xrLabel1.Text = "Seq Nr.";
            // 
            // xrLabel2
            // 
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SampleOrderOther", "")});
            this.xrLabel2.Location = new System.Drawing.Point(31, 0);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(33, 15);
            this.xrLabel2.StyleName = "csDetail";
            this.xrLabel2.Text = "xrLabel2";
            this.xrLabel2.WordWrap = false;
            // 
            // MASTPPSListReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(30, 15, 30, 20);
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

