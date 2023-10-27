using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data.SqlClient;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF
{
    public partial class IdcSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        public IdcSummaryReport()
        {
            InitializeComponent();
        }
        private string factory;
        private string linecode;
        private string location;
        private string wsss;
        private string jobtitle;
        private string id;
        private string area;
        private string workertyle;

        public IdcSummaryReport(string _factory, string _linecode, string _location, string _wsss, string _jobtitle, string _id, string _area, string _workertyle)
        {
            this.factory = _factory;
            this.linecode = _linecode;
            this.location = _location;
            this.wsss = _wsss;
            this.jobtitle = _jobtitle;
            this.id = _id;
            this.area = _area;
            this.workertyle = _workertyle;
            InitializeComponent();
        }

        private void IdcSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            try
            {
                string strcondition;
                strcondition = factory != "" ? " Factory='" + factory + "'" : "";
                //strcondition += strcondition == "" && linecode != "" ? " linecode='" + linecode + "'" : "";
                strcondition += strcondition != "" && linecode != "" ? " and linecode='" + linecode + "'" : strcondition == "" && linecode != "" ? " linecode='" + linecode + "'" : "";
                strcondition += strcondition != "" && location != "" ? " and Location='" + location + "'" : strcondition == "" && location != "" ? " Location='" + location + "'" : "";
                strcondition += strcondition != "" && wsss != "" ? " and Dept='" + wsss + "'" : strcondition == "" && wsss != "" ? " Dept='" + wsss + "'" : "";
                strcondition += strcondition != "" && jobtitle != "" ? " and jobtitleEn='" + jobtitle + "'" : strcondition == "" && jobtitle != "" ? " jobtitleEn='" + jobtitle + "'" : "";
                strcondition += strcondition != "" && id != "" ? " and Id='" + id + "'" : strcondition == "" && id != "" ? " Id='" + id + "'" : "";
                strcondition += strcondition != "" && area != "" ? " and Area='" + area + "'" : strcondition == "" && area != "" ? " Area='" + area + "'" : "";
                strcondition += strcondition != "" && workertyle != "" ? " and WorkerType='" + workertyle + "'" : strcondition == "" && workertyle != "" ? " WorkerType='" + workertyle + "'" : "";
                strcondition = strcondition != "" ? "where " + strcondition : "";
                SqlDataAdapter workforcead = new SqlDataAdapter("select * from workforce " + strcondition, ContextBuilder.CreateContext<RAPLQDataContext>().Connection.ConnectionString);
                workforcead.Fill(skillDataSet1.WorkForce);

                workforcead.SelectCommand.CommandText = "select A.* from OpSkill A, ( select * from workforce " + strcondition + ") B Where A.Factory=B.Factory and A.Id=B.Id ";
                workforcead.Fill(skillDataSet1.OpSkill);
               
              
            }
            catch
            {
            }
           
        }
      
       

        private void Chk1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (null != GetCurrentColumnValue("WorkerType"))
            Chk1.Checked = GetCurrentColumnValue("WorkerType").ToString().TrimEnd() == "Stationed" ? true : false;
          
            
        }

        private void Chk2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (null != GetCurrentColumnValue("WorkerType"))
            Chk2.Checked = GetCurrentColumnValue("WorkerType").ToString().TrimEnd() == "Mobile" ? true : false;
        }

        private void Chk3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (null != GetCurrentColumnValue("WorkerType"))
            Chk3.Checked = GetCurrentColumnValue("WorkerType").ToString().TrimEnd() == "Floater" ? true : false;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            c_location.Text  = (string.IsNullOrEmpty(wsss) ? "" : wsss + "/") + (string.IsNullOrEmpty(jobtitle) ? "" : jobtitle + "/") + (string.IsNullOrEmpty(workertyle) ? "All" : workertyle);
        }

    }
}
