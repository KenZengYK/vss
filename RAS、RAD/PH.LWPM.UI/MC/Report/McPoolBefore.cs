using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.Platform.BO;
namespace PH.LWPM.UI.MC.Report
{
    public partial class McPoolBefore : DevExpress.XtraReports.UI.XtraReport
    {
        private string factory;
        private string location;
        private string type;
        private string id;
        public McPoolBefore(string _factory,string _location,string _type,string _id)
        {
            InitializeComponent();
            this.factory = _factory;
            this.location = _location;
            this.type = _type;
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        private void McPoolBefore_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            context.CommandTimeout = 8000;
            string sql = string.Format("exec [getSummaryMC] '{0}','{1}','{2}','{3}'", this.factory, this.location, this.type, this.id);
            this.bindingSource1.DataSource = context.ExecuteQuery<GetMCResult>(sql);
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            c_Factory.Text = this.factory;
            c_Type.Text = this.type;
            c_location.Text = this.location;
        }

    }
}
