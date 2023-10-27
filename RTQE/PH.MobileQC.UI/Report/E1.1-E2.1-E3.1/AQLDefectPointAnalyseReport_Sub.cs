using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;
using System.Linq;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AQLDefectPointAnalyseReport_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        public AQLDefectPointAnalyseReport_Sub(List<AQLDefectPointAnalyseReportClass_Sub>AList)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = AList;
            if (AList.Count == 0) return;
            this.xrTtlDefectQ1.Text = AList.Select(p => p.MarjorDefectQty1).Sum().ToString()+  " / " + AList.Select(p => p.MinorDefectQty1).Sum().ToString();
            this.xrTtlDefectQ2.Text = AList.Select(p => p.MarjorDefectQty2).Sum().ToString() + " / " + AList.Select(p => p.MinorDefectQty2).Sum().ToString();
            this.xrTtlDefectQ3.Text = AList.Select(p => p.MarjorDefectQty3).Sum().ToString() + " / " + AList.Select(p => p.MinorDefectQty3).Sum().ToString();
            this.xrTtlDefectQ4.Text = AList.Select(p => p.MarjorDefectQty4).Sum().ToString() + " / " + AList.Select(p => p.MinorDefectQty4).Sum().ToString();
            this.xrTtlDefectQ5.Text = AList.Select(p => p.MarjorDefectQty5).Sum().ToString() + " / " + AList.Select(p => p.MinorDefectQty5).Sum().ToString();
            this.xrTtlDefectQOther.Text = AList.Select(p => p.MarjorDefectQtyOther).Sum().ToString() + " / " + AList.Select(p => p.MinorDefectQtyOther).Sum().ToString();
            xrTtlDefectMajPer.Text = AList.Select(p => p.dSampleQty).Sum() == 0 ? "0.00" : Math.Round(100.00 * AList.Select(p => p.MarjorDefectQty).Sum() / AList.Select(p => p.dSampleQty).Sum(), 2).ToString("N2");
            xrTtlDefectMinPer.Text = AList.Select(p => p.dSampleQty).Sum() == 0 ? "0.00" : Math.Round(100.00 * AList.Select(p => p.MinorDefectQty).Sum() / AList.Select(p => p.dSampleQty).Sum(), 2).ToString("N2");
        }


        Color Color1 = Color.FromArgb(204, 192, 218);
        Color Color2 = Color.FromArgb(228, 223, 236);
        Color Curr = Color.FromArgb(204, 192, 218);
        private void xrTableRow3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Curr = Curr == Color1 ? Color2 : Color1;

            xrTableCell3.BackColor =
            xrTableCell5.BackColor =
            xrTableCell6.BackColor =
            xrTableCell7.BackColor =
            xrTableCell8.BackColor =
            xrTableCell9.BackColor =
            xrTableCell10.BackColor =
            xrTableCell11.BackColor =
            xrTableCell12.BackColor =
            xrTableCell13.BackColor =
            xrTableCell47.BackColor =
            xrTableCell48.BackColor =
            xrTableCell100.BackColor =
            xrTableCell106.BackColor =
            xrTableCell107.BackColor =
            xrTableCell111.BackColor =
            xrTableCell112.BackColor =
            xrTableCell113.BackColor =
            xrTableCell114.BackColor = Curr;
            
        }

        private void xrTableCell51_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           
        }

    }
}
