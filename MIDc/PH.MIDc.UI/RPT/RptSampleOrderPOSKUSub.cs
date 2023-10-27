using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.UI
{
    public partial class RptSampleOrderPOSKUSub : DevExpress.XtraReports.UI.XtraReport
    {
        public RptSampleOrderPOSKUSub()
        {
            InitializeComponent();
            BindSubDatasource();
        }

        private void BindSubDatasource()
        {
            this.dColor.DataBindings.Add("Text", this.DataSource, "color");
            this.dCup.DataBindings.Add("Text", this.DataSource, "cup");
            this.dPrice.DataBindings.Add("Text", this.DataSource, "price", "{0:0.######}");
            this.dQuantity.DataBindings.Add("Text", this.DataSource, "qty","{0:0.##}");
            this.dAmount.DataBindings.Add("Text", this.DataSource, "amount", "{0:0.00}");
            this.dSize1.DataBindings.Add("Text", this.DataSource, "size1", "{0:0.##}");
            this.dSize2.DataBindings.Add("Text", this.DataSource, "size2", "{0:0.##}");
            this.dSize3.DataBindings.Add("Text", this.DataSource, "size3", "{0:0.##}");
            this.dSize4.DataBindings.Add("Text", this.DataSource, "size4", "{0:0.##}");
            this.dSize5.DataBindings.Add("Text", this.DataSource, "size5", "{0:0.##}");
            this.dSize6.DataBindings.Add("Text", this.DataSource, "size6", "{0:0.##}");
            this.dSize7.DataBindings.Add("Text", this.DataSource, "size7", "{0:0.##}");
            this.dSize8.DataBindings.Add("Text", this.DataSource, "size8", "{0:0.##}");
            this.dSize9.DataBindings.Add("Text", this.DataSource, "size9", "{0:0.##}");
            this.dSize10.DataBindings.Add("Text", this.DataSource, "size10", "{0:0.##}");
            this.dSize11.DataBindings.Add("Text", this.DataSource, "size11", "{0:0.##}");
            this.dSize12.DataBindings.Add("Text", this.DataSource, "size12", "{0:0.##}");

            this.totalQty.DataBindings.Add("Text", this.DataSource, "qty", "{0:0.##}");
            this.totalAmount.DataBindings.Add("Text", this.DataSource, "amount", "{0:0.00}");        
        
        }

    }
}
