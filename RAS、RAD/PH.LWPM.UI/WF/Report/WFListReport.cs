using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Data.Linq;
using System.Collections.Generic;
using System.Data;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WFListReport(string AFactory)
        {
            InitializeComponent();

            this.lbPrintTime.Text = DateTime.Now.ToShortDateString();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            string SqlStr = string.Format("exec sp_WFListReport '{0}'", AFactory);
            DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "111");
            this.bindingSource1.DataSource = ds.Tables[0];
            this.lbTitle1.Text += string.Format("    ( {0} )", AFactory);

            if (AFactory == "SL" || AFactory == "RX" || AFactory == "GG" || AFactory == "CL") //单个分厂时，子表by Title Type汇总
            {
                WFListByTitleTypeReportSub SubByTitleType = new WFListByTitleTypeReportSub();
                SubByTitleType.bindingSource1.DataSource = ds.Tables[1];
                this.xrSubreport1.ReportSource = SubByTitleType;
            }
            else //子表 by Factory 汇总
            {
                this.tcFactory.DataBindings.Clear();

                WFListByFactoryReportSub SubByFacotry = new WFListByFactoryReportSub();
                SubByFacotry.bindingSource1.DataSource = ds.Tables[1];
                this.xrSubreport1.ReportSource = SubByFacotry;
            }


        }

    }
}
