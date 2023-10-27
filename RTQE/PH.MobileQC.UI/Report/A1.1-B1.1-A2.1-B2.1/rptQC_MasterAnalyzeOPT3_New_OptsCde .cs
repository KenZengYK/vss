using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptQC_MasterAnalyzeOPT3_New_OptsCde : DevExpress.XtraReports.UI.XtraReport
    {
        public rptQC_MasterAnalyzeOPT3_New_OptsCde(List<SewingOptsCdeClass> Alist)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Alist;
        }

    }
}
