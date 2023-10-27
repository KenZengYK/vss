using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace PH.HDO.BackEnd
{
    public partial class HDODetailReport : DevExpress.XtraReports.UI.XtraReport
    {

        public HDODetailReport(string hdoFrom, string hdoTo, string companys)
        {
            InitializeComponent();
            //this.xrTableCell4.Text = hdoFrom;
            //this.xrTableCell6.Text = hdoTo;
            string times = DateTime.Now.ToString("yyyy/MM/dd");
            this.xrTableCell2.Text = times;
            //this.xrTableCell39.Text = hdoFrom;
            string titles = string.Format("{0} - PH Garment Mfg Co Ltd (HK)", companys);
            this.xrLabel2.Text = titles;


        }

        public HDODetailReport(string hdoFrom, string hdoTo, string companys, int rdocheckeds)
        {
            InitializeComponent();
            //this.xrTableCell4.Text = hdoFrom;
            //this.xrTableCell6.Text = hdoTo;
            string times = DateTime.Now.ToString("yyyy/MM/dd");
            this.xrTableCell2.Text = times;
            //this.xrTableCell39.Text = hdoFrom;
            string titles = string.Format("{0} - PH Garment Mfg Co Ltd (HK)", companys);
            this.xrLabel2.Text = titles;
            GetSort(rdocheckeds);

        }


        string _curhdo = "";
        int _seq = 0;
        System.Drawing.Color CurrColor = new System.Drawing.Color();
        System.Drawing.Color ColorBlack = System.Drawing.Color.Gainsboro;
        System.Drawing.Color ColorTransparent = System.Drawing.Color.Transparent;
        private void GroupHeader3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //
            PH.HDO.BO.temp bo = this.GetCurrentRow() as PH.HDO.BO.temp;

            if (bo == null) return;


            // modify by joseph at 15/11/25

            if (_curhdo != bo.GRNO65.ToString())
            {
                _curhdo = bo.GRNO65.ToString();
                _seq++;
                CurrColor = CurrColor == ColorTransparent ? ColorBlack : ColorTransparent;
            }



            xrTableRow14.BackColor = CurrColor;
            // modify by joseph at 15/11/25

            this.lbSeq.Text = _seq.ToString();

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string bb = this.lbSeq.Text;
            //this.lbSeq.Text = "";
            int aa;
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            string bb = this.lbSeq.Text;
            this.lbSeq.Text = "";
        }

        void GetSort(int rdocheckeds)
        {
            if (rdocheckeds == 1)
            {
                this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("GRNO65", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Material", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("MaterialGroup", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("projectno", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("pono", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("OQTY65", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("supplier", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("supplierreference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            }
            else if (rdocheckeds == 2)
            {

                this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("GRNO65", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("projectno", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Material", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("MaterialGroup", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("pono", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("OQTY65", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("supplier", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("supplierreference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            }
            else
            {
                this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("GRNO65", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("MaterialGroup", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Material", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("projectno", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("pono", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("OQTY65", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("supplier", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("supplierreference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            }
        }

        private void xrTableCell64_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            //List<PH.HDO.BO.temp> lists = bindtemp.DataSource as List<PH.HDO.BO.temp>;
            List<PH.HDO.BO.temp> lists = DataSource as List<PH.HDO.BO.temp>;
            var SumCBM = lists.GroupBy(p => new { p.GRNO65 }).Select(g => new
            {
                GRNO65 = g.Key.GRNO65,
                CBM = g.Sum(s => s.CBM) / g.Count()
            }).Sum(p => p.CBM); ;

            e.Text = SumCBM.ToString();
        }



    }
}
