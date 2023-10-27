using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC.Report
{
    public partial class rptMcClass : DevExpress.XtraReports.UI.XtraReport
    {

        string CurCode = ""; 
        int TotalRow = 0, rowcount = 0;
        public rptMcClass( List<RptMcClass> _source)
        {
            InitializeComponent();
            this.bsClass.DataSource = _source;
            TotalRow = _source.Count;

        }


        int i = 1;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
             RptMcClass rmcc = this.GetCurrentRow() as RptMcClass;
             if (rmcc == null)
                 return;
             rowcount++;

             xrTableCell12.Text = rmcc.SortId + ") " + rmcc.SubClass_En.Trim();
             xrTableCell13.Text = rmcc.SortId + ") " + rmcc.SubClass_Cn.Trim();

             int _total = rmcc.Total;
             if (CurCode!=rmcc.Code)
             {
             
                xrTableCell7.Text =rmcc.Code;xrTableCell9.Text =rmcc.Clss_En;xrTableCell11.Text =rmcc.Class_Cn;

                if (_total == 1)
                {
                    this.xrTableCell7.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                       | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                    this.xrTableCell9.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                       | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                    this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                       | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                }
                else if (_total > 1)
                {

                    this.xrTableCell7.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    this.xrTableCell9.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    this.xrTableCell11.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);                    

                }

                 CurCode =rmcc.Code;
                i = 1;
             }
             else{
             
                xrTableCell7.Text ="";xrTableCell9.Text ="";xrTableCell11.Text ="";
                if (_total == i)
                {

                    if (_total == 1)
                    {
                        this.xrTableCell7.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                           | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                        this.xrTableCell9.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                           | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                        this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                           | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                    }
                    else if (_total > 1)
                    {

                        this.xrTableCell7.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                        this.xrTableCell9.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                        this.xrTableCell11.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    }
                    i = 1;

                }
                else
                {
                    if (TotalRow == rowcount)
                    {
                        this.xrTableCell7.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                        this.xrTableCell9.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                        this.xrTableCell11.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom| DevExpress.XtraPrinting.BorderSide.Right);

                    }
                    else
                    {
                        this.xrTableCell7.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                        this.xrTableCell9.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                        this.xrTableCell11.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                        i++;
                    }
                
                }

             }
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
           
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string _dt = DateTime.Now.ToShortDateString();
            xrlDT.Text = _dt;
        }

    }
}
