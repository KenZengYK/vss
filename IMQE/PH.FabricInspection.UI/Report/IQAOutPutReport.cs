using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;

namespace PH.FabricInspection.UI.Report
{
    public partial class IQAOutPutReport : DevExpress.XtraReports.UI.XtraReport
    {
        public IQAOutPutReport(string Whse, string ByMonthOrWeek, DateTime Afrom, DateTime Ato, List<IQAOutPutClass> lists)
        {
            InitializeComponent();
            xrWhse.Text = Whse;
            xrByMonthOrWeek.Text = ByMonthOrWeek == "ByWeek" ? "Week" : "Month";
            xrDateRang.Text = Afrom.ToString("yyyy-MM-dd") + " ~ " + Ato.ToString("yyyy-MM-dd");
            this.bindingSource1.DataSource = lists;

        }

    }
}
