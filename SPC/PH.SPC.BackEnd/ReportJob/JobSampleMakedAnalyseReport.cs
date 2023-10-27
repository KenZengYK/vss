using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.SPC.BackEnd.ReportJob
{
    public partial class JobSampleMakedAnalyseReport : PH.SPC.BackEnd.JobBaseAnalyse
    {

        public JobSampleMakedAnalyseReport()
            : base()
        {

            InitializeComponent();
            this.ReportType = typeof(SampleMakedAnalyseReport);

            InitCustomer();
        }



    


        public override DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            //return base.CreateReport(parameters);
            //InitCustomer();
            
            
            this.Param = parameters;
            GetValues(parameters);

            if (ReportType == null)
                return new DevExpress.XtraReports.UI.XtraReport();
            DevExpress.XtraReports.UI.XtraReport report = null;
            report = (DevExpress.XtraReports.UI.XtraReport)Activator.CreateInstance(this.ReportType, parameters);
            return report;
        }

        private void InitCustomer()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            if (context == null)
            {
                return;
            }

            var objs = from c in context.Misc_DataDictionaries where c.DataType == "PH.SPC.SampleOrder.Customer" select c;

            checkedComboBoxEdit1.Properties.Items.Clear();

            //if (ReportType.Name == "SampleMakedAnalyseReport") { editCustomer.Visible = false; }

            foreach (var item in objs)
            {
                this.checkedComboBoxEdit1.Properties.Items.Add(item.DataCode);
                //this.checkedComboBoxEdit1.Properties.Items.Add(item.DataCode);
            }

        }


    }
}
