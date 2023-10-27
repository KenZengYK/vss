using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MR.BO;
using System.Collections.Generic;

namespace PH.MR.UI.Report
{
    public partial class RptFRN : DevExpress.XtraReports.UI.XtraReport
    {
        public FRN_Head HeadData=new FRN_Head();
        public List<FRN_DetailInfo> DetailData;
       

        public RptFRN()
        {
            InitializeComponent();
            this.Detail.BeforePrint+=new System.Drawing.Printing.PrintEventHandler(Detail_BeforePrint);
        }

        private void RptFRN_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrlProject.Text = HeadData.ProjectNo.Trim();
            this.xrlFRNDate.Text = HeadData.FRNDate;
            this.xrlFRNNo.Text = HeadData.FRNNO;
            this.xrlOrderNo.Text = HeadData.SaleOrder;
            this.xrlConfirmDT.Text = HeadData.ConfirmDate;
            this.xrlMethod.Text = HeadData.Method;
            this.xrlPlanDate.Text = HeadData.PlanMasterDate;
            this.xrlOAManager.Text = HeadData.OAManager;
            this.xrlMarkManager.Text = HeadData.MarkerManager;
            this.xrlPreparedby.Text = HeadData.PreparedBy;
            this.xrlReason.Text = HeadData.Reson;
            xrlMethodlbl.Text = "1. FRN 嘜架排法:";
            xrLabel5.Text = "2.用量增減原因:";
            this.DataSource = DetailData;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            FRN_DetailInfo gbs = this.GetCurrentRow() as FRN_DetailInfo;
            this.xrTableCell15.Text = gbs.DeliveryDate != null ? gbs.DeliveryDate.GetValueOrDefault().ToShortDateString() : "";
            this.xrTableCell21.Text = gbs.Ex_FtyDate != null ? gbs.Ex_FtyDate.GetValueOrDefault().ToShortDateString() : "";

        }

    }
}
