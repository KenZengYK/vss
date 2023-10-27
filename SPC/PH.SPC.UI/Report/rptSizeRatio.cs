using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC1.UI
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
        public void SetHeader(PH.SPC1.BO.StyleSortEdition sse)
        {
            //³ß´a?‡ú-¾ù,³ß´a?‡ú-ÆÕ,³ß´a?‡ú-´ó,³ß´a?‡ú-³¬
            this.lbSizeRange.Text = "³ß´a?‡ú-" + (
                string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope1) ?
                (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope2) ?
                  (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope3) ?
                    (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope4) ? ""
                     : "³¬:  " + sse.StyleSort.Style.SizeScope4
                    )
                   : "´ó:  " + sse.StyleSort.Style.SizeScope3
                  )
                 : "ÆÕ:  " + sse.StyleSort.Style.SizeScope2
                )
                : "¾ù:  " + sse.StyleSort.Style.SizeScope1);

            this.cellBrand.Text = sse.StyleSort.Style.Brand;
            this.cellCategory.Text = sse.StyleSort.Style.ProductCategory;
        }
    }
}
