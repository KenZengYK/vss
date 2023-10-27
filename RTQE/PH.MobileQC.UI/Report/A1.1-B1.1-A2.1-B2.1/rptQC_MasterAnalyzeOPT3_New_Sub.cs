using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptQC_MasterAnalyzeOPT3_New_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        public rptQC_MasterAnalyzeOPT3_New_Sub(List<Proc_MasterAnalyzResult_Sub> _ListSub)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = _ListSub;
         
        }

    }
}
