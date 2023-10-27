using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.Reports.TH
{
    public partial class PackingWOSupplementTaiReport : DevExpress.XtraReports.UI.XtraReport
    {
        public PackingWOSupplementTaiReport()
        {
            InitializeComponent();
        }
        private string _salesOrderNo;
        private string _workOrderNo;

        public PackingWOSupplementTaiReport(string salesOrderNo, string workOrderNo)
            : this()
        {
            this._salesOrderNo = salesOrderNo;
            this._workOrderNo = workOrderNo;

           // SetHeaderCaption();
        }

        private void SetHeaderCaption()
        {
            PH.RWO.BO.WorkOrderList list = new PH.RWO.BO.WorkOrderList();
            var aa = list.GetWorkOrders(this._workOrderNo);
            foreach (PH.RWO.BO.WorkOrder wo in aa)
            {
                this.cellFactory.Text = wo.Project.Factory;
                this.cellProjectNo.Text = wo.ProjectNo;
                this.cellSalseOrderNo.Text = wo.SalesOrderNo;
                this.cellWorkOrderNo.Text = this._workOrderNo;

                this.cellWOCreateDate.Text = string.Format("{0:yyyy-MM-dd}", wo.WOCreateDate);
                this.cellPHStyle.Text = wo.StyleNo;
                this.cellCustStyle.Text = wo.CustomerStyleNoStr;

            }
        }
    }
}
