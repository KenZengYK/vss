using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.Reports.Packing
{
    public partial class PackingWOSupplementReport : DevExpress.XtraReports.UI.XtraReport
    {
        public PackingWOSupplementReport()
        {
            InitializeComponent();
        }
        private string _salesOrderNo;
        private string _workOrderNo;

        public PackingWOSupplementReport(string salesOrderNo, string workOrderNo)
            : this()
        {
            this._salesOrderNo = salesOrderNo;
            this._workOrderNo = workOrderNo;

            //SetHeaderCaption();
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

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            WorkOrderCategory obj = this.GetCurrentRow() as WorkOrderCategory;
            //this.lbTitle.Text = "沛恒制衣 ( 東莞 ) 有限公司";
            //if (obj.WorkOrder.Factory == "CL")
            //{
            //    this.lbTitle.Text = "P.Y. Garments Mfg.  (Bangladesh) Co. Ltd.";
            //}
        }


    }
}
