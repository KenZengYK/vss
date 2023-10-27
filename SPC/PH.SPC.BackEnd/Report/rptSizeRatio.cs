using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class rptSizeRatio : DevExpress.XtraReports.UI.XtraReport
    {
        public rptSizeRatio()
        {
            InitializeComponent();

            //this.lblTitle.Text = "Customer Profile - Size Ratio - " + AMaster.Customer + " " + AMaster.Brand;
        }

        public void SetDataSource(object dataSource)
        {
            this.PivotGrid.DataSource = null;
            this.PivotGrid.DataSource = dataSource;
        }
        public void SetHeader(PH.SPC.BO.StyleSortEdition sse)
        {
            //尺碼範圍-均,尺碼範圍-普,尺碼範圍-大,尺碼範圍-超
            this.lbSizeRange.Text = "尺碼範圍-" + (
                string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope1) ?
                (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope2) ?
                  (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope3) ?
                    (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope4) ? ""
                     : "超:  " + sse.StyleSort.Style.SizeScope4
                    )
                   : "大:  " + sse.StyleSort.Style.SizeScope3
                  )
                 : "普:  " + sse.StyleSort.Style.SizeScope2
                )
                : "均:  " + sse.StyleSort.Style.SizeScope1);

            this.cellBrand.Text = sse.StyleSort.Style.Brand;
            this.cellCategory.Text = sse.StyleSort.Style.ProductCategory;
        }
    }
}
