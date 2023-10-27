using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI
{
    public partial class WeeklyDefectPointsComparsionReport_Sub_Part2New : DevExpress.XtraReports.UI.XtraReport
    {
        public WeeklyDefectPointsComparsionReport_Sub_Part2New(DataSet ReportSource)
        {
            InitializeComponent();

            List<WeeklyDefectPointsComparison_Sub2> ListSource = ReportSource.Tables[2].AsEnumerable().Select(dr => new WeeklyDefectPointsComparison_Sub2()
                    {
                        DefectCode = dr["Defect"].ToString()
                    }
                ).ToList();

            this.bindingSource1.DataSource = ListSource;

            ReportHelper reportHelper = new ReportHelper("00000019");
            xrRemark.Text = reportHelper.ReportInfo.Remark;
            
        }

    }
}
