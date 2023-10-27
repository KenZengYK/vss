using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MobileQC.UI
{
    public partial class rptworker_Evaluate : DevExpress.XtraReports.UI.XtraReport
    {
        public rptworker_Evaluate()
        {
            InitializeComponent();
        }


        public rptworker_Evaluate(object evaluate,string factory, string workshop, string line, string qctime)
        {
            InitializeComponent();

            this.LB_factory.Text = factory;

            this.lb_workshop.Text = workshop;

            this.xrLabel5.Text = line;
            //this.xrLabel6.Text = line;

            this.xrLabel6.Text = string.Format("Sewing Line ({0}) FW Operation Performance Evaluated Report", line);
            
            this.lb_Datetime.Text = qctime;

            this.prPivotGrid1.DataSource = evaluate;
            //this.xrLabel4.Text =Convert.ToString( 3 - 1);
            //this.pivotGridColumn6.DetailText =Convert.ToString( Convert.ToInt32( this.pivotGridColumn3.DetailText) - Convert.ToInt32(this.pivotGridColumn5.DetailText));
            //this.xrPageInfo1.Tag = DateTime.Now.AddDays(15).ToString();
            //this.pivotGridColumn6.DetailText = Convert.ToString(Convert.ToInt32( pivotGridColumn3.DetailText) - Convert.ToInt32( pivotGridColumn5.DetailText));
        }
       
    }
}
