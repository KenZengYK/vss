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
            //�ߴa?��-��,�ߴa?��-��,�ߴa?��-��,�ߴa?��-��
            this.lbSizeRange.Text = "�ߴa?��-" + (
                string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope1) ?
                (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope2) ?
                  (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope3) ?
                    (string.IsNullOrEmpty(sse.StyleSort.Style.SizeScope4) ? ""
                     : "��:  " + sse.StyleSort.Style.SizeScope4
                    )
                   : "��:  " + sse.StyleSort.Style.SizeScope3
                  )
                 : "��:  " + sse.StyleSort.Style.SizeScope2
                )
                : "��:  " + sse.StyleSort.Style.SizeScope1);

            this.cellBrand.Text = sse.StyleSort.Style.Brand;
            this.cellCategory.Text = sse.StyleSort.Style.ProductCategory;
        }
    }
}
