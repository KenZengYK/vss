using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class DailyAuditSummyRpt : DevExpress.XtraReports.UI.XtraReport
    {

        IList<DefectSummaryResult> RptSource;
        string DateInfo;
        int ipage = 0, jpage = 0;

        public DailyAuditSummyRpt()
        {
            InitializeComponent();
        }

        public DailyAuditSummyRpt(IList<DefectSummaryResult> dsrpt,string dateinfo)
        {
            InitializeComponent();
            RptSource = dsrpt;
            DateInfo = dateinfo;      
        }

        private void DailyAuditSummyRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrLabel3.Text = DateInfo;
            this.bindingSource1.DataSource = RptSource;

        }


        string strline = "";
        string strproj = "", stropercode = "", strstyle = "", strlabor = "";
        int _audittotal = 0, _deftotal = 0, rowcount = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {           
            // (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.All);
            DefectSummaryResult dsr = this.GetCurrentRow() as DefectSummaryResult;
            if (dsr == null)
                return;

   
                _audittotal = _audittotal + dsr.AuditQty;
                _deftotal = _deftotal + dsr.DefectQty;
                rowcount++;

            if (dsr.ProjNo != strproj || dsr.CustStyle != strstyle || dsr.Worker != strlabor || dsr.OperCode != stropercode)
            {
                xrTableCell14.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top);
                 

                xrTableCell15.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell16.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell17.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell18.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell19.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell20.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell21.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell22.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                xrTableCell23.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);

                xrTableCell14.Text = dsr.Line;
                xrTableCell15.Text = dsr.Custmer;
                xrTableCell16.Text = dsr.ProjNo;
                xrTableCell17.Text = dsr.CustStyle;
                xrTableCell18.Text = dsr.OperCode;
                xrTableCell19.Text = dsr.OperName;
                xrTableCell20.Text = dsr.AuditQty.ToString();
                xrTableCell21.Text = dsr.DefectQty.ToString();
                xrTableCell22.Text = dsr.PerPass.ToString();
                xrTableCell23.Text = dsr.Worker;

            }
            else {
                xrTableCell14.Text = "";
                xrTableCell15.Text = "";
                xrTableCell16.Text = "";
                xrTableCell17.Text = "";
                xrTableCell18.Text = "";
                xrTableCell19.Text = "";
                xrTableCell20.Text = "";
                xrTableCell21.Text = "";
                xrTableCell22.Text = "";
                xrTableCell23.Text = "";

                xrTableCell14.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left);
                if (ipage == jpage)
                {
                    if (rowcount % 24 == 0)
                    {                   
                        xrTableCell14.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell15.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell16.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell17.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell18.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell19.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell20.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell21.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell22.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        xrTableCell23.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Bottom);
                        //Detail.PageBreak = DevExpress.XtraReports.UI.PageBreak.AfterBand;
                    }
                    else
                    {
                        xrTableCell14.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left);
                        xrTableCell15.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell16.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell17.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell18.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell19.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell20.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell21.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell22.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                        xrTableCell23.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                    }


                }
                else
                {
                    xrTableCell14.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left);
                    xrTableCell15.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell16.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell17.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell18.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell19.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell20.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell21.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell22.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                    xrTableCell23.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);                
                }
                           
            }


            strproj = dsr.ProjNo; strstyle = dsr.CustStyle; strlabor = dsr.Worker; stropercode = dsr.OperCode; 

          

        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.jpage++;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ipage++;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
          //  celGroupSummary.Text = "123"; //_audittotal.ToString();
            xrTableCell30.Text = _audittotal.ToString(); //


            xrTableCell31.Text = _deftotal.ToString();
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
 
            _deftotal = 0;
            _audittotal = 0;
        }
    }
}

