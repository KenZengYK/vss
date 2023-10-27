using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Data;
using System.Collections.Generic;
using System.Linq;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class FabricResultNoticeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public FabricResultNoticeReport(Fabric_Insp_Header Obj, NoticeReportTypes ANoticeReportType)
        {
            InitializeComponent();
            xrIssuedd1.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrTable8.Visible = xrTable7.Visible = ANoticeReportType == NoticeReportTypes.ResultNotice;

            ReportFooter.Visible = ANoticeReportType == NoticeReportTypes.ResultNotice;
            xrLabel8.Visible=   xrLabel9.Visible= xrLabel10.Visible= xrLabel11.Visible= xrLabel12.Visible= xrLabel13.Visible =  ANoticeReportType != NoticeReportTypes.ResultNotice;
            //FabricNoticeReportResult NoticeReport = new FabricNoticeReportResult(Obj);
            //Obj.Calculate();
            //List<CoreReasonsClass>  AA  = Obj.CoreReasonsList.ToList();
            if ((Obj.AOverallResultGradeShow != "A" || Obj.AOverallResultGradeShow != "A+") && ANoticeReportType == NoticeReportTypes.RejectNotice)
            {
                xrTableCell133.Text = "Reject Notice  -  ";
                xrTableCell137.Text = " / æ‹ ’Õ®∏Ê  - ";
            }

            List<string> ProjectList = new List<string>();
            List<string> POList = new List<string>();
            string ProjectStr = "";
            string PoStr = "";
            PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var VPro = db.Fabric_Insp_Headers.Where(dr => dr.RefNo == Obj.RefNo).Select(dr => dr.ProjectNo).Distinct();
            foreach (var ProObj in VPro.Where(dr => dr != null))
            {
                ProjectList.AddRange(ProObj.Replace(Convert.ToChar(10).ToString(), "/").Replace(Convert.ToChar(13).ToString(), "/").Split('/'));
            }
            ProjectStr = String.Join("/", ProjectList.Where(dr => dr != "").Distinct().OrderBy(p => p).ToArray());

            var VPO = db.Fabric_Insp_Headers.Where(dr => dr.RefNo == Obj.RefNo).Select(dr => dr.PO).Distinct();
            foreach (var PoObj in VPO.Where(dr => dr != null))
            {
                POList.AddRange(PoObj.Replace(Convert.ToChar(10).ToString(), "/").Replace(Convert.ToChar(13).ToString(), "/").Split('/'));
            }
            PoStr = String.Join("/", POList.Where(dr => dr != "").Distinct().OrderBy(p => p).ToArray());

            xrPoStr.Text = PoStr;
            xrProStr.Text = ProjectStr;


            //if (Obj.IsOptimalClaimShow == "N")
            //{
            //    Obj.SDL1 = null;
            //    Obj.SDL2 = null;
            //    Obj.Step2ClaimQtyFull = null;
            //    Obj.AMarkerTypeShow = "";
            //    Obj.AVCDShow = null;
            //    Obj.AStep2EvadeMarkerLossPercentShow = null;
            //    Obj.BVCDShow = null;
            //    Obj.VerticalChainDefectClaimByLot = null;
            //    Obj.ACutOutClaimQtyShow = null;
            //    Obj.PartITotalClaimQty = null;

            //}

            this.bindingSource1.DataSource = Obj;
            // NoticeReport;        
        }

        private void xrTableRow12_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object IsOptimalClaimShow = this.GetCurrentColumnValue("IsOptimalClaimShow");
            if (IsOptimalClaimShow != null && IsOptimalClaimShow.ToString() == "N")
            {
                BSDL1.Text = "";
                ASDL2.Text = "";
                xrTableCell186.Text = "";
                xrSpecialMarker.Text = "";
                AVCD.Text = "";
                xrTableCell189.Text = "";
                BVCD.Text = "";
                xrTableCell191.Text = "";
                xrTableCell192.Text = "";
                xrTableCell193.Text = "";
                xrTableCell194.Text = "";
            }
        }

    }




}
