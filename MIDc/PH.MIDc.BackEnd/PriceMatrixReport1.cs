﻿using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.BackEnd
{
    public partial class PriceMatrixReport : DevExpress.XtraReports.UI.XtraReport
    {
        public PriceMatrixReport()
        {
            InitializeComponent();
        }

        private void GroupHeader_Multi_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
        }

    }
}
