using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptQC_MasterAnalyzeOPT3_Sub_ByWs : DevExpress.XtraReports.UI.XtraReport
    {
        public rptQC_MasterAnalyzeOPT3_Sub_ByWs(List<Proc_MasterAnalyzResult_Sub_ByWs_Class> ADataByWs )
        {
            InitializeComponent();

            this.bindingSource1.DataSource = ADataByWs;
        }

    }
}
