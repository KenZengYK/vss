using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;

namespace PH.SPC1.UI
{
    public partial class StyleProductRemarkReport : DevExpress.XtraReports.UI.XtraReport
    {
        public StyleProductRemarkReport()
        {
            InitializeComponent();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.SPC1.BO.StyleSortEdition d = this.GetCurrentRow() as PH.SPC1.BO.StyleSortEdition;
           
            rptColorSize colorSizeRpt = this.subReportColorSize.ReportSource as rptColorSize;
            if (colorSizeRpt != null)
            {
                List<PH.SPC1.BO.StyleSize> list = d.StyleSizes.ToList<PH.SPC1.BO.StyleSize>();
                //this.xrPivotGrid1.DataSource = null;
                //this.xrPivotGrid1.DataSource = list;
                //this.xrPivotGrid1.DataMember = "StyleSizes";
                colorSizeRpt.SetDataSource(list);
            }

            string cust = d.StyleSort.Style.SampleOrder.CustomerID == "HBI" ? "SARA" : d.StyleSort.Style.SampleOrder.CustomerID;
            rptSizeRatio sizeRatioRpt = this.subReportSizeRatio.ReportSource as rptSizeRatio;
            if (sizeRatioRpt != null)
            {
                PH.Sales.BO.SalesDataContext context = new PH.Sales.BO.SalesDataContext();
                var PivotTableDataSource = from a in context.Details
                                           where a.Customer == cust && a.Brand == d.StyleSort.Style.Brand && a.ProductCategory == d.StyleSort.Style.ProductCategory
                                           select a;

                sizeRatioRpt.SetDataSource(PivotTableDataSource);
                sizeRatioRpt.SetHeader(d);
            }
        }

    }
}
