using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Data.Linq;
using System.Linq;


namespace PH.RWO.UI.Report
{
    public partial class PackagingMaterialRpt : DevExpress.XtraReports.UI.XtraReport
    {
        private PH.RWO.BO.Style curstyle;
        private PH.RWO.BO.RWOSOPCDataContext Context;
        public PackagingMaterialRpt()
        {
            InitializeComponent();
        }

        public PackagingMaterialRpt(PH.RWO.BO.RWOSOPCDataContext _context,PH.RWO.BO.Style _curstyle)
        {
            this.Context = _context;
            this.curstyle = _curstyle;
            InitializeComponent();

        }


        private void PackagingMaterialRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.bindingSource1.DataSource = curstyle;
            foreach (PH.RWO.BO.CurrencyExRate item in (this.bindingSource1.Current as PH.RWO.BO.Style).ListCurrency)
            {
                XRTableCell cell1 = new XRTableCell();
                cell1.Width = 143;
                cell1.Text = item.Currency;
                XRTableCell cell2 = new XRTableCell();
                cell2.Width = 133;
                cell2.Text = item.Exchange.ToString();
                XRTableRow row = new XRTableRow();
                row.Cells.Add(cell1);
                row.Cells.Add(cell2);
                TB4.Rows.Add(row);
                TB5.Top += 25;
            }
            

            AS400Cost StyleCost=Context.ExecuteQuery<AS400Cost>(string.Format("GetAS400Cost '{0}'",this.curstyle.StyleNo)).ToList().FirstOrDefault();
            if (StyleCost!=null)
            {
                Cell_lastsellprice.Text = StyleCost.LatestSellingPrice.ToString("0.0000");
                Cell_Commission.Text = (StyleCost.Commission / 100).ToString("0.00%");
                Cell_StdDeviation.Text = (StyleCost.StdDeviation / 100).ToString("0.00%");
                Cell_ProfitMargin.Text = ((StyleCost.LatestSellingPrice * (1 - StyleCost.Commission / 100 - StyleCost.StdDeviation / 100) - 0) / (StyleCost.LatestSellingPrice * (1 - StyleCost.Commission / 100))).ToString("0.00%");

            }

            string  admendtime="";
            Context.GetAS400AmendDate(this.curstyle.StyleNo,ref admendtime);
           Cell_AmendDate.Text = string.Format("{0:####/##/##}", Convert.ToInt32(admendtime));

           string rt = "";
           Context.GetAS400SAHRT(this.curstyle.StyleNo, ref rt);
          Cell_SAHRT.Text  = string.Format("{0:0.0000}", Convert.ToDouble(rt));
         
            
        }

    }

    public class AS400Cost
    {
        public decimal LatestSellingPrice { get; set; }
        public decimal Commission { get; set; }
        public decimal  StdDeviation { get; set; }
    }


}
