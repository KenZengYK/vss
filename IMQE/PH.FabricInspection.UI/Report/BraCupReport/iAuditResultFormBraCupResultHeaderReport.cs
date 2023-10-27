using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Data;

namespace PH.FabricInspection.UI.Report.BraCupReport
{
    public partial class iAuditResultFormBraCupResultHeaderReport : DevExpress.XtraReports.UI.XtraReport
    {

        string AuditType = "";
        public iAuditResultFormBraCupResultHeaderReport(BraCupHeader obj)
        {
            InitializeComponent();

            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0, 3);
            string Add = DateTime.Now.Day.ToString();
            xrLabel2.Text = "Version: 7.7 " + "dd " + AMM + " " + Add;

            DataSource1(obj);           

            this.bindingSource1.DataSource = obj;
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //int? TotalStockInQty = db.AccessoryHeaders.Where(dr => dr.AuditNo == obj.AuditNo &&  dr.AuditType == obj.AuditType).Select(dr=>dr.TotalStockInQty).Sum();
            //xrTotalStockInQty.Text = TotalStockInQty.ToString();

        }


        void DataSource1(BraCupHeader obj)
        {

            iAuditResultFormBarCupSheetReport DetailRpt = new iAuditResultFormBarCupSheetReport(obj);
            this.xrSubAccessoryAuditDetail.ReportSource = DetailRpt;

            //if (AuditType == "BraCup")
            //{
            //    iAuditResultFormBarCupSheetReport DetailRpt = new iAuditResultFormBarCupSheetReport(obj, AuditType);
            //    this.xrSubAccessoryAuditDetail.ReportSource = DetailRpt;
            //}
            //else 
            //{

            //    IMQEAccessorySheetReport DetailRpt = new IMQEAccessorySheetReport(obj, AuditType);
            //    this.xrSubAccessoryAuditDetail.ReportSource = DetailRpt;
            //}
          
        }
    }
}
