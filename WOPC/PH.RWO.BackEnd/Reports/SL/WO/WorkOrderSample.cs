using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.Reports.SL.WO
{
    public partial class WorkOrderSample : DevExpress.XtraReports.UI.XtraReport
    {
        private string _CustomerCode;
        private string _Season;
        private string _ProjectNo;
        private string _ColorCode;
        private string _CustomerStyleNo;
        private string _PHStyleNo;
        private string _WorkOrder;
        private string _BDC;
          
        public WorkOrderSample(string CustomerCode,string Season,string ProjectNo,string ColorCode,string CustomerStyleNo,
             string PHStyleNo,string WorkOrder,string BDC)
        {
            InitializeComponent();
            this._CustomerCode = CustomerCode;
            this._BDC = BDC;
            this._ColorCode = ColorCode;
            this._CustomerStyleNo = CustomerStyleNo;
            this._PHStyleNo = PHStyleNo;
            this._ProjectNo = ProjectNo;
            this._Season = Season;
            this._WorkOrder = WorkOrder;
        }

        private void ReportHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrCustomer.Text = this._CustomerCode;
            this.xrSeason.Text = this._Season;
            this.xrProject.Text = this._ProjectNo;
            this.xrColorCode.Text = this._ColorCode;
            this.xrCustomerStyle.Text = this._CustomerStyleNo;
            this.xrPHStyle.Text = this._PHStyleNo;
            this.xrWorkOrder.Text = this._WorkOrder;
            this.xrDBC.Text = this._BDC;
        }

    }
}
