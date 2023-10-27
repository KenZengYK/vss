using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MR.BO;
using System.Collections.Generic;

namespace PH.MR.UI.Report
{
    public partial class RptContractWo : DevExpress.XtraReports.UI.XtraReport
    {
        string DateRange = "";
        public RptContractWo(List<ReciveWoDetailt>  rptdata,string _range)
        {
            InitializeComponent();
            this.bsWo.DataSource = rptdata;
            DateRange = _range;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrlRange.Text = DateRange;
        }

        string _factory = "", _contract = "", _hscode = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ReciveWoDetailt pm = this.GetCurrentRow() as ReciveWoDetailt;
            if (pm == null)
                return;

            if (_factory != pm.FTY || _contract != pm.HScontractNO || _hscode != pm.HSCode)
            {
                _factory = pm.FTY; _contract = pm.HScontractNO; _hscode = pm.HSCode;
                xrtFty.Text = pm.FTY; xrtHsCode.Text = pm.HSCode; xrtSeq.Text = pm.HSCodeSeq.GetValueOrDefault().ToString();
                xrtMatName.Text = pm.HSName; xrtContract.Text = pm.HScontractNO;

                xrtFty.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
                xrtContract.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
                xrtSeq.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
                xrtHsCode.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
                xrtMatName.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);

                //xrProcedure.Text = pm.W_procedure;
                //xrProcedure.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
            }
            else
            {
                xrtFty.Text =""; xrtHsCode.Text = ""; xrtSeq.Text ="";
                xrtMatName.Text = ""; xrtContract.Text ="";
                xrtFty.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left);
                xrtContract.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.None;
                xrtSeq.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.None;
                xrtHsCode.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.None;
                xrtMatName.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.None;
            }
        }

    }
}
