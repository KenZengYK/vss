using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class WeeklyDefectPointsComparsionReport_Sub_Part1AsQI : DevExpress.XtraReports.UI.XtraReport
    {
        public WeeklyDefectPointsComparsionReport_Sub_Part1AsQI(DataSet ReportSource)
        {
            InitializeComponent();

            List<WeeklyDefectPointsComparison_Sub1> ListSource = ReportSource.Tables[1].AsEnumerable().Select(dr => new WeeklyDefectPointsComparison_Sub1()
                    {
                        DefectCode = dr["Defect"].ToString()
                    }
                ).ToList();

            this.bindingSource1.DataSource = ListSource;

            WeeklyDefectPointsComparsionReport_Sub_Part2New rpt_Sub = new WeeklyDefectPointsComparsionReport_Sub_Part2New(ReportSource);
            xrSubreport1.ReportSource = rpt_Sub;

          
        }

    }
}
