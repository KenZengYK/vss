using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;
using System.Linq;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptMastList_New_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        public rptMastList_New_Sub(List<sp_GetExamListResult> rptdata)
        {
            InitializeComponent();

            var DataSource = from p in rptdata
                             group p by new { p.Line } into g
                             select new
                             {

                                 LineCount = g.Key.Line,
                                 ProjectCount = (from p2 in g select p2.Project).Distinct().Count(),
                                 WoNoCount = (from p2 in g select p2.WO).Distinct().Count(),
                                 StyleCount = (from p2 in g select p2.Style).Distinct().Count(),
                                 W_procedureCount = (from p2 in g select p2.W_Procedure).Distinct().Count(),
                                 WorkerCount = (from p2 in g select p2.Worker).Distinct().Count(),
                                 QCSum = g.Sum(p => p.QCCount),
                                 PCSum = g.Sum(p => p.PCount),
                                 FCSum = g.Sum(p => p.FCount),
                                 UCSum = g.Sum(p => p.UCount),
                                 SCSum = g.Sum(p => p.SCount)
                             };

            this.bindingSource1.DataSource = DataSource;


            this.xrLine.DataBindings.Add("Text", this.DataSource, "LineCount");
            this.xrProject.DataBindings.Add("Text", this.DataSource, "ProjectCount");
            this.xrWo.DataBindings.Add("Text", this.DataSource, "WoNoCount");
            this.xrCust.DataBindings.Add("Text", this.DataSource, "StyleCount");
            this.xrOptCode.DataBindings.Add("Text", this.DataSource, "W_procedureCount");
            this.xrWFID.DataBindings.Add("Text", this.DataSource, "WorkerCount");

            this.xrExamQty.DataBindings.Add("Text", this.DataSource, "QCSum", "{0:0.#}");
            this.xrP.DataBindings.Add("Text", this.DataSource, "PCSum", "{0:0.#}");
            this.xrF.DataBindings.Add("Text", this.DataSource, "FCSum", "{0:0.#}");
            this.xrU.DataBindings.Add("Text", this.DataSource, "UCSum", "{0:0.#}");
            this.xrS.DataBindings.Add("Text", this.DataSource, "SCSum", "{0:0.#}");


            this.xrTtlLine.Text = rptdata.Select(p => p.Line).Distinct().Count().ToString();
            this.xrTtlProject.Text = rptdata.Select(p => p.Project).Distinct().Count().ToString();
            this.xrTtlWo.Text = rptdata.Select(p => p.WO).Distinct().Count().ToString();
            this.xrTtlCust.Text = rptdata.Select(p => p.Style).Distinct().Count().ToString();
            this.xrTtlOptCode.Text = rptdata.Select(p => p.W_Procedure).Distinct().Count().ToString();
            this.xrTtlWFID.Text = rptdata.Select(p => p.Worker).Distinct().Count().ToString();

            this.xrTtlExamQty.DataBindings.Add("Text", this.DataSource, "QCSum", "{0:0.#}");
            this.xrTtlP.DataBindings.Add("Text", this.DataSource, "PCSum", "{0:0.#}");
            this.xrTtlF.DataBindings.Add("Text", this.DataSource, "FCSum", "{0:0.#}");
            this.xrTtlU.DataBindings.Add("Text", this.DataSource, "UCSum", "{0:0.#}");
            this.xrTtlS.DataBindings.Add("Text", this.DataSource, "SCSum", "{0:0.#}");

        }

    }
}
