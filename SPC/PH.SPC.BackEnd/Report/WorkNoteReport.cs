using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;

namespace PH.SPC.BackEnd
{
    public partial class WorkNoteReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WorkNoteReport()
        {
            InitializeComponent();
        }

        private void SetHeader(PH.SPC.BO.StyleSortEdition sse)
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

            //zrtag
            //this.cellBrand.Text = sse.StyleSort.Style.Brand;
            //this.cellCategory.Text = sse.StyleSort.Style.ProductCategory;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            PH.SPC.BO.StyleSortEdition d = this.GetCurrentRow() as PH.SPC.BO.StyleSortEdition;
            if (d == null) return;

            this.cellWO.Text = string.IsNullOrEmpty(d.StyleSort.Style.WorkOrderID) ? "" : string.Format("制單號: {0}", d.StyleSort.Style.WorkOrderID);

            this.pivotGridColumn5.HeaderText = this.pivotGridColumn44.HeaderText = "TestAAA"; //d.StyleSort.Style.SizeMatrixStr;

            List<PH.SPC.BO.StyleSize> list = d.StyleSizes.ToList<PH.SPC.BO.StyleSize>();
            System.Windows.Forms.BindingSource bs = new System.Windows.Forms.BindingSource();
            bs.DataSource = list;
            this.prPivotGrid1.DataSource = list;


            this.pivotGridColumn5.HeaderText = this.pivotGridColumn44.HeaderText = "TestAAA"; //d.StyleSort.Style.SizeMatrixStr;


            string cust = d.StyleSort.Style.SampleOrder.CustomerID == "HBI" ? "SARA" : d.StyleSort.Style.SampleOrder.CustomerID;

            PH.Sales.BO.SalesDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<Sales.BO.SalesDataContext>();

            //var sizeRatios = from a in context.Details
            //                           where a.Customer == cust && a.Brand == d.StyleSort.Style.Brand && a.ProductCategory == d.StyleSort.Style.ProductCategory
            //                           //orderby a.CupOrder ascending
            //                           select a;
            PH.SPC.BO.DefaultSizeRatioList srlist = new PH.SPC.BO.DefaultSizeRatioList();
            List<PH.SPC.BO.SizeRatio> sizeRatios = srlist.GetSizeRatios(cust, d.StyleSort.Style.Brand, d.StyleSort.Style.ProductCategory);
            this.prPivotGrid2.DataSource = sizeRatios;

            SetHeader(d);
        }

        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {

        }

    }
}
