using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.BraCupReport
{
    public partial class DetailDefectSubReport : DevExpress.XtraReports.UI.XtraReport
    {
        public DetailDefectSubReport(BraCupHeader AObj)
        {
            InitializeComponent();
            //ASourceType(AObj, AAuditType);
            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0, 3);
            string Add = DateTime.Now.Day.ToString();
            xrTableCell1.Text = "Version: 7.7.1 " + "dd " + AMM + " " + Add;

            xrLabel3.Text = AObj.Auditor;
            xrLabel5.Text = AObj.ReviewedByShow;
            xrLabel7.Text = AObj.ApprovedByShow;

            this.bindingSource1.DataSource = AObj.GetBarCupMaterialDefectTable(AObj.AuditNo.ToString());

        }

        //void ASourceType(AccessoryHeader Obj, string AuditType) 
        //{
            //this.Detail.Visible =   this.GroupHeader1.Visible = AuditType != "2";
            //this.GroupFooter1.Visible = AuditType != "1";
            //if (AuditType != "2")
            //{
            //    this.bindingSource1.DataSource = Obj.GetBarCupMaterialDefectTable(Obj.AuditNo.ToString(), AuditType);
            //}
            //if (AuditType != "1" ) 
            //{
            //    IMQEResultAccessoryAuditCasingDefectSheetReport CasingRpt = new IMQEResultAccessoryAuditCasingDefectSheetReport(Obj, AuditType);
            //    xrSubreport1.ReportSource = CasingRpt;
            //}
        //}

    }
}
