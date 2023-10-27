using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data.SqlClient;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFrpt : DevExpress.XtraReports.UI.XtraReport
    {
        private string factory;
        private string linecode;
        private string location;
        private string wsss;
        private string jobtitle;
        private string id;
        private string area;
        private string workertyle;
        private string RptTitle;
        

        public WFrpt()
        {
            InitializeComponent();
        }
        public WFrpt(string _factory, string _linecode, string _location, string _wsss, string _jobtitle, string _id, string _area, string _workertyle, string _rpttitle)
        {
            this.factory = _factory;
            this.linecode = _linecode;
            this.location = _location;
            this.wsss = _wsss;
            this.jobtitle = _jobtitle;
            this.id = _id;
            this.area = _area;
            this.workertyle = _workertyle;
            this.RptTitle = _rpttitle;
            InitializeComponent();
        }

        private void WFrpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            try
            {
                string strcondition;
                strcondition = factory != "" ? " Factory='" + factory + "'" : "";
                strcondition += strcondition != "" && linecode != "" ? " and linecode='" + linecode + "'" : (strcondition == "" && linecode != "" ? " linecode='" + linecode + "'" : "");
                strcondition += strcondition != "" && location != "" ? " and Location='" + location + "'" : (strcondition == "" && location != "" ? " Location='" + location + "'" : "");
                strcondition += strcondition != "" && wsss != "" ? " and Dept='" + wsss + "'" : (strcondition == "" && wsss != "" ? " Dept='" + wsss + "'" : "");
                strcondition += strcondition != "" && jobtitle != "" ? " and jobtitleEn='" + jobtitle + "'" : (strcondition == "" && jobtitle != "" ? " jobtitleEn='" + jobtitle + "'" : "");
                strcondition += strcondition != "" && id != "" ? " and Id='" + id + "'" : (strcondition == "" && id != "" ? " Id='" + id + "'" : "");
                strcondition += strcondition != "" && area != "" ? " and Area='" + area + "'" : (strcondition == "" && area != "" ? " Area='" + area + "'" : "");
                strcondition += strcondition != "" && workertyle != "" ? " and WorkerType='" + workertyle + "'" : (strcondition == "" && workertyle != "" ? " WorkerType='" + workertyle + "'" : "");
                strcondition = strcondition != "" ? "where " + strcondition : "";
                SqlDataAdapter workforcead = new SqlDataAdapter("select * from workforce " + strcondition, ContextBuilder.CreateContext<RAPLQDataContext>().Connection.ConnectionString);
                workforcead.Fill(skillDataSet1.WorkForce);

            }
            catch
            {
            }
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Title.Text = RptTitle;

        }

    }
}
