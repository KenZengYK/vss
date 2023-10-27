using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptFullAuditQuality : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", Role = "", Flag = "";
        int SumType = 0;
        public RptFullAuditQuality(string fac,int sumtype,string startdate,string enddate,string flag)
        {
            InitializeComponent();
            Factory = fac;
            StartDate = startdate;
            EndDate = enddate;
           // Role = role;
            Flag = flag;
            SumType = sumtype;
            PrepareData();
        }

        public void PrepareData()
        {
            List<FullAuditQualityRptResult> lst = SqlDataHelper.GetFullAuditQualityInfo(Factory, SumType, StartDate, EndDate, Flag);
                      
            this.bsFullInspect.DataSource = lst;
        
        }

    }
}
