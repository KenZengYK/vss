using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using DevExpress.XtraReports.UI;
using PH.MIDc.BO;

namespace PH.MIDc.UI.RPT
{
    public partial class HangTagReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<Detail> _DetailList;
        public HangTagReport(List<Detail> ADetailList)
        {
            InitializeComponent();
            _DetailList = ADetailList;
            this.bindingSource1.DataSource = _DetailList;
        }

        private void detailBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Detail DetailObj = this.GetCurrentRow() as Detail;

            //处理Composition的显示
            TC_CompositionName1.Text = "";
            TC_CompositionValue1.Text = "";
            TC_CompositionName2.Text = "";
            TC_CompositionValue2.Text = "";
            TC_CompositionName3.Text = "";
            TC_CompositionValue3.Text = "";
            TC_CompositionName4.Text = "";
            TC_CompositionValue4.Text = "";

            int i = 1;
            var lists = DetailObj.CompositionDetails.Where(p => p.Per > 0).OrderByDescending(p => p.Per);
            foreach (CompositionDetail o in lists)
            {
                if (i > 4) break;
                this.FindControl("TC_CompositionName" + i.ToString(), true).Text = o.SpecialTermsOrComposition;
                this.FindControl("TC_CompositionValue" + i.ToString(), true).Text = (o.Per ?? 0).ToString("N2");
                i++;
            }

            //处理All in Cost
            TC_AllInCost.Text = string.Format("{0:N4} HK$ / {1}", DetailObj.AllInPrice, DetailObj.PHUnit);

            //处理Purchase Width(Supp Width)
            bool isL = (DetailObj.MaterialGroup == "L") && ("EMA, PSL, RAL, SAL".IndexOf(DetailObj.MaterialType) < 0);
            string sSuppwidth = isL ? "   - top to top of scallop:" : "   - Edge to Edge:";
            string sUsablewidth = isL ? "   - lower to lower scallop:" : "   - Usable Width:";

            TC_SupplierWidth.Text = sSuppwidth;
            TC_UsableWidth.Text = sUsablewidth;
        }

    }
}
