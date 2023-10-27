using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.BackEnd
{
    public partial class MaterialDvpSummaryRept111: DevExpress.XtraReports.UI.XtraReport
    {
        public MaterialDvpSummaryRept111()
        {
            InitializeComponent();
        }


        //detailBand打印前,指定xrPivotGrid1的数据源.xrPivotGrid1的数据源根据Detail而变化
        private void detailBand2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MIDc.BO.SampleOrder sampleOrder = this.bindingSource1.Current as PH.MIDc.BO.SampleOrder;
            this.bindingSource2.DataSource = sampleOrder.Details[0].MaterialPrices;
        }

    }
}
