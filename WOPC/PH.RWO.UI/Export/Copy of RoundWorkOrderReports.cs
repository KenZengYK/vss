using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.UI
{
    public partial class RoundWorkOrderReports : DevExpress.XtraReports.UI.XtraReport
    {
        public RoundWorkOrderReports()
        {
            InitializeComponent();
        }

        public RoundWorkOrderReports(bool vieworder)
        {
            InitializeComponent();
            Vieworder = vieworder;
        }

        public bool Vieworder
        {
            get;
            set;
        }
        private void RoundWorkOrderReports_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.PivotGridBulk.Fields["SizeOrder"].Visible = Vieworder;
            this.PivotGridSample.Fields["SizeOrder"].Visible = Vieworder;
            this.PivotGridBulk.Fields["CupOrder"].Width = 1;
            this.PivotGridSample.Fields["CupOrder"].Width = 1;
            this.PivotGridSample.OptionsView.ShowColumnHeaders =false;
            //this.PivotGridSample.Fields["BulkQty"].Width = 50;
            //this.PivotGridBulk.Fields["SampleQty"].Width = 50;
        }
    }
}
