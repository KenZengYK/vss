using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class POPCSummarySupplementSheetReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCSummarySupplementSheetReport()
        {
            InitializeComponent();

            Sizes = new List<SizeCupOrder>();
            Cups = new List<SizeCupOrder>();
        }

        List<SizeCupOrder> Sizes;
        List<SizeCupOrder> Cups;
        private void detailBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object obj = this.GetCurrentRow();
            if (obj == null) return;

            if (obj is PH.POPC.BO.POColorSizeDetail)
            {
                PH.POPC.BO.POColorSizeDetail csd = obj as PH.POPC.BO.POColorSizeDetail;
                Sizes.Add(new SizeCupOrder() { Id = csd.SizeOrder, PH = csd.SizeCode, Supplier = csd.SizeDesc });
                Cups.Add(new SizeCupOrder() { Id = csd.CupOrder, PH = csd.FitCode, Supplier = csd.FitDesc });
            }
            else if (obj is PH.POPC.BO.POChangesMonitor)
            {
                PH.POPC.BO.POChangesMonitor csd = obj as PH.POPC.BO.POChangesMonitor;
                Sizes.Add(new SizeCupOrder() { Id = csd.POColorSizeDetail.SizeOrder, PH = csd.SizeCode, Supplier = csd.SizeDesc });
                Cups.Add(new SizeCupOrder() { Id = csd.POColorSizeDetail.CupOrder, PH = csd.FitCode, Supplier = csd.FitDesc });
            }
            else if (obj is PH.POPC.BO.PORC)
            {
                PH.POPC.BO.PORC csd = obj as PH.POPC.BO.PORC;
                Sizes.Add(new SizeCupOrder() { Id = csd.POColorSizeDetail.SizeOrder, PH = csd.SizeCode, Supplier = csd.SizeDesc });
                Cups.Add(new SizeCupOrder() { Id = csd.POColorSizeDetail.CupOrder, PH = csd.FitCode, Supplier = csd.FitDesc });
            }
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Sizes.Clear();
            Cups.Clear();
        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Sizes.Sort(SizeCupOrder.SortOrder);
            Cups.Sort(SizeCupOrder.SortOrder);

            //Size
            string minSize1 = Sizes.Count == 0 ? "" : Sizes[0].PH;
            string minSize2 = Sizes.Count == 0 ? "" : Sizes[0].Supplier;
            string maxSize1 = Sizes.Count == 0 ? "" : Sizes[Sizes.Count - 1].PH;
            string maxSize2 = Sizes.Count == 0 ? "" : Sizes[Sizes.Count - 1].Supplier;

            minSize1 = string.IsNullOrEmpty(minSize1) ? "" : minSize1.TrimEnd();
            minSize2 = string.IsNullOrEmpty(minSize2) ? "" : minSize2.TrimEnd();
            maxSize1 = string.IsNullOrEmpty(maxSize1) ? "" : maxSize1.TrimEnd();
            maxSize2 = string.IsNullOrEmpty(maxSize2) ? "" : maxSize2.TrimEnd();

            string sizeRang1 = string.IsNullOrEmpty(minSize1) || string.IsNullOrEmpty(maxSize1) ? "" : (minSize1 == maxSize1 ? minSize1 : string.Format("{0}-{1}", minSize1, maxSize1));
            string sizeRang2 = string.IsNullOrEmpty(minSize2) || string.IsNullOrEmpty(maxSize2) ? "" : (minSize2 == maxSize2 ? minSize2 : string.Format("{0}-{1}", minSize2, maxSize2));
            //Cup
            string minCup1 = Cups.Count == 0 ? "" : Cups[0].PH;
            string minCup2 = Cups.Count == 0 ? "" : Cups[0].Supplier;
            string maxCup1 = Cups.Count == 0 ? "" : Cups[Cups.Count - 1].PH;
            string maxCup2 = Cups.Count == 0 ? "" : Cups[Cups.Count - 1].Supplier;

            minCup1 = string.IsNullOrEmpty(minCup1) ? "" : minCup1.TrimEnd();
            minCup2 = string.IsNullOrEmpty(minCup2) ? "" : minCup2.TrimEnd();
            maxCup1 = string.IsNullOrEmpty(maxCup1) ? "" : maxCup1.TrimEnd();
            maxCup2 = string.IsNullOrEmpty(maxCup2) ? "" : maxCup2.TrimEnd();

            string cupRang1 = string.IsNullOrEmpty(minCup1) || string.IsNullOrEmpty(maxCup1) ? "" : (minCup1 == maxCup1 ? minCup1 : string.Format("{0}-{1}", minCup1, maxCup1));
            string cupRang2 = string.IsNullOrEmpty(minCup2) || string.IsNullOrEmpty(maxCup2) ? "" : (minCup2 == maxCup2 ? minCup2 : string.Format("{0}-{1}", minCup2, maxCup2));

            this.PHCell_SizeCode.Text = sizeRang1;
            this.PHCell_CupCode.Text = cupRang1;
            this.PHCell_SizeDesc.Text = sizeRang2;
            this.PHCell_CupDesc.Text = cupRang2;
        }

    }
}
