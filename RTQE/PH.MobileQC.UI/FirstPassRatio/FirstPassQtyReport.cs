using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class FirstPassQtyReport : DevExpress.XtraReports.UI.XtraReport
    {
        DataTable dt;
        public FirstPassQtyReport(DataTable ADataTable, string AFty)
        {
            InitializeComponent();


            ReportHelper reportHelper = new ReportHelper("00000028");
            string Fty = string.Format(reportHelper.ReportInfo.ReportName_EN, AFty);
            xrRptName.Text = Fty;        
            xrVerContext.Text = reportHelper.ReportInfo.VerContext;
           



            dt = ADataTable;
            
            this.tcTitleDate1.Text = ADataTable.Columns[1].ColumnName;
            this.tcTitleDate2.Text = ADataTable.Columns[2].ColumnName;
            this.tcTitleDate3.Text = ADataTable.Columns[3].ColumnName;
            this.tcTitleDate4.Text = ADataTable.Columns[4].ColumnName;
            this.tcTitleDate5.Text = ADataTable.Columns[5].ColumnName;
            this.tcTitleDate6.Text = ADataTable.Columns[6].ColumnName;
            //if (ADataTable.Columns.Count >= 8)
            //{
            //    this.tcTitleDate7.Text = ADataTable.Columns[7].ColumnName;
            //}
            this.tcWorkShop.DataBindings.Add("Text", ADataTable, ADataTable.Columns[0].ColumnName);
            this.tcDate1.DataBindings.Add("Text", ADataTable, ADataTable.Columns[1].ColumnName);
            this.tcDate2.DataBindings.Add("Text", ADataTable, ADataTable.Columns[2].ColumnName);
            this.tcDate3.DataBindings.Add("Text", ADataTable, ADataTable.Columns[3].ColumnName);
            this.tcDate4.DataBindings.Add("Text", ADataTable, ADataTable.Columns[4].ColumnName);
            this.tcDate5.DataBindings.Add("Text", ADataTable, ADataTable.Columns[5].ColumnName);
            this.tcDate6.DataBindings.Add("Text", ADataTable, ADataTable.Columns[6].ColumnName);
            //if (ADataTable.Columns.Count >= 8)
            //{
            //    this.tcDate7.DataBindings.Add("Text", ADataTable, ADataTable.Columns[7].ColumnName);
            //}
            this.DataSource = ADataTable;
        }

        private void tcDate1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRTableCell tc = sender as XRTableCell;
            if (tc.Index < dt.Columns.Count)
            {
                object CellValue = this.GetCurrentColumnValue(tc.DataBindings[0].DataMember);
                if (CellValue == null || string.IsNullOrEmpty(CellValue.ToString()))
                {
                    //if (tc.DataBindings[0].DataMember.ToString() == DateTime.Now.ToString("yyyy-MM-dd")+" (Today)" )
                    if (tc.DataBindings[0].DataMember.ToString() == DateTime.Now.ToString("yyyy-MM-dd") )
                    {
                        tc.Text = "´ý³é²é";
                    }
                    else 
                    { 	
                        tc.Text = "´ýQAÈ«Œ¶¨";
                    }
                }
            }
        }



    }
}
