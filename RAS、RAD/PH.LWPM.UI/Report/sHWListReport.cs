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

namespace PH.LWPM.UI.Report
{
    public partial class sHWListReport : DevExpress.XtraReports.UI.XtraReport
    {
        //MCTypeTotalSub MCTypesub = new MCTypeTotalSub();
        //public SummarysHWByGroupReport(string AFactory, string ACost, string ADeployment)
        public sHWListReport(string AFactory, string ADeployment)
        {
            InitializeComponent();

            this.lbPrintTime.Text = DateTime.Now.ToShortDateString();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            //string SqlStr = string.Format("exec sp_SummarysHWPoolReport '{0}', '{1}', '{2}'", AFactory, ACost, ADeployment);
            string SqlStr = string.Format("exec sp_SummarysHWPoolReport '{0}', '{1}'", AFactory, ADeployment);
            DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "111");

            this.bindingSource1.DataSource = ds.Tables[0];

            //string titletxt = "sHW list for analysis - {0} {1}  {2}";
            //string titleFirst = "";
            //string titleSecond = "";
            //if (AFactory == "ALL Regions")
            //{
            //    titleFirst = "ALL Regions";
            //}


            //if (AFactory == "China" || AFactory == "Bangladesh")
            //{
            //    titleFirst = "single country";
            //}

            //if (AFactory == "HK" || AFactory == "SL" || AFactory == "GG" || AFactory == "RX" || AFactory == "CL")
            //{
            //    titleFirst = "single region";
            //}


            //if (ADeployment == "All")
            //{
            //    titleSecond = "";
            //}
            //else if (ADeployment == "Deployment")
            //{
            //    titleSecond = "- Deployment";
            //}
            //else if (ADeployment == "NonDeployment")
            //{
            //    titleSecond = "- Non-Deployment";
            //}

            //string FactoryShow = AFactory == "ALL Regions" ? "" : ("(" + AFactory + ")");



            //this.lbTitle1.Text = string.Format(titletxt, titleFirst, titleSecond, FactoryShow);

            this.lbTitle1.Text = string.Format("sHW list for analysis - {0}", AFactory);



            //if (ADeployment == "Deployment") this.lbTitle1.Text = "sHW detail list by Type - Deployment";
            //else if (ADeployment == "NonDeployment") this.lbTitle1.Text = "sHW detail list by Type - Non Deployment";
            //else this.lbTitle1.Text = "sHW detail list by Type";

            //if (AFactory == "PH Group")
            //{
            //    this.lbTitle1.Text = this.lbTitle1.Text.Replace("sHW detail list by Type", "sHW of each type - combined by region grouping");
            //}
            //else
            //{
            //    this.lbTitle1.Text += string.Format("    ( {0} )", AFactory);
            //}

            if (AFactory == "SL" || AFactory == "RX" || AFactory == "CL") //单个分厂时，子表by HW Group汇总
            {
                sHWListReportByGroupSub SubByGroup = new sHWListReportByGroupSub();
                SubByGroup.bindingSource1.DataSource = ds.Tables[1];
                this.xrSubreport1.ReportSource = SubByGroup;
            }
            else //子表 by Factory 汇总
            {
                //if (AFactory == "Group")
                //{
                //    TitleSuffix = "    (Group)";
                //}
                //else if (AFactory == "China" || AFactory == "Bangladesh")
                //{
                //    TitleSuffix = string.Format("    ({0} Region)", AFactory);
                //}

                //this.tcFactory.DataBindings.Clear();

                sHWListReportByFactorySub SubByFacotry = new sHWListReportByFactorySub();
                SubByFacotry.bindingSource1.DataSource = ds.Tables[1];
                this.xrSubreport1.ReportSource = SubByFacotry;
            }


        }

    }
}
