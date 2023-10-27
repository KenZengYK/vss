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
    public partial class FullInspectionDefectPointAnalyseReport_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        public FullInspectionDefectPointAnalyseReport_Sub(List<FullInspectionDefectPointAnalyseClass_Sub>Alist)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Alist;
            xrttlDefectPointPer.Text =Alist.Select(p => p.SampleQty).Sum()==0?"0.00":Math.Round( (100.00*Alist.Select(p => p.DefectPointTotalQty).Sum() / Alist.Select(p => p.SampleQty).Sum()),2).ToString();
        }

    }
}
