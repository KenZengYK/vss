using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using DevExpress.XtraPrinting;

namespace PH.RWO.BackEnd.Reports.SL.PO.POBody
{
    public partial class RptPODetail_Sub : DevExpress.XtraReports.UI.XtraReport
    {

        public string ColorCode;
        public decimal CurPrice;
        public int TotalQty;

        public RptPODetail_Sub()
        {
            InitializeComponent();
        }

        public RptPODetail_Sub(DataTable dt)
        {
            InitializeComponent();
            ArrayList allcolumns = new ArrayList();
            for (int m = 0; m < dt.Columns.Count; m++)
            {
                allcolumns.Add(dt.Columns[m].ColumnName);
            }

            InitTables(allcolumns);
           this.DataSource = dt;

        }

        public void InitTables(ArrayList columns)
        {

            int colCount = columns.Count;
            int pagewidth = (PageWidth - (Margins.Left + Margins.Right));
            int colWidth = 40; //pagewidth / colCount;
            int colHeight = 16;

            XRTable table = new XRTable();
            XRTableRow row = new XRTableRow();
            XRTable table2 = new XRTable();
            XRTableRow row2 = new XRTableRow();

            table.Location  = new Point(150,0);
            table2.Location = new Point(150, 0);
            int tablewidth = 0;
            for (int i = 0; i < colCount; i++)
            {
                XRTableCell cell = new XRTableCell();
                cell.Width = (int)colWidth;
                cell.Height = (int)colHeight;
                if (columns[i].ToString() == "CupSize")
                    cell.Text = "";
                else if (columns[i].ToString() == "ColorCode")
                    // cell.Text = "Color";
                    continue;
                else if (columns[i].ToString() == "Qty")
                    cell.Text = "小計";
                else cell.Text = columns[i].ToString();

                row.Cells.Add(cell);

                XRTableCell cell2 = new XRTableCell();
                cell2.Width = (int)colWidth;
                cell2.Height = (int)colHeight;
                //if (columns[i].ToString() == "CupSize")
                //  cell2.DataBindings.Add("Text", null, "CupSize");
                //else if (columns[i].ToString() == "Qty")
                //   cell2.DataBindings.Add("Text", null, "CupSize");

                if (columns[i].ToString()!="ColorCode")
                  cell2.DataBindings.Add("Text", null, columns[i].ToString());

                row2.Cells.Add(cell2);
                tablewidth += colWidth;
            }
            table.Rows.Add(row);
            table.Width = tablewidth; // pagewidth;
           // table.Borders = BorderSide.Bottom;

            table2.Rows.Add(row2);
            table2.Width = tablewidth; // pagewidth;
           // table2.Borders = BorderSide.Bottom;

         //   Bands[BandKind.PageHeader].Controls.Add(table);
            Bands[BandKind.GroupHeader].Controls.Add(table);
            Bands[BandKind.Detail].Controls.Add(table2);
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
          
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            DataRowView srow = this.GetCurrentRow() as DataRowView;
            if (srow == null)
                return;
            xrColor.Text = srow["ColorCode"].ToString();

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //xrTotal.Text = this.TotalQty.ToString(); ;
            //xrPrice.Text = this.CurPrice > 0 ? CurPrice.ToString() : "";
        }


    }
}
