using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Linq;

namespace PH.RWO.BackEnd
{
    public partial class WOSampleReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOSampleReport()
        {
            InitializeComponent();
            _list1 = new WorkOrderSampleList();
        }


        WorkOrderSampleList _list1;
        private void SetPivotDataSource(string wo)
        {

            var sample = _list1.GetWorkOrderSampleWithSort(wo);
            this.prPivotSample.DataSource = sample;
        }


        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.RWO.BO.WorkOrderSample ws = this.GetCurrentRow() as PH.RWO.BO.WorkOrderSample;
            if (ws == null) return;

            string wo = ws.WorkOrderNo;
            string sizedesc = ws.WorkOrderSKU.WorkOrderColor.WorkOrder.SizeMatrixStr;
            pivotColSize1.HeaderText = sizedesc;

            SetPivotDataSource(wo);
        }


    }
}
