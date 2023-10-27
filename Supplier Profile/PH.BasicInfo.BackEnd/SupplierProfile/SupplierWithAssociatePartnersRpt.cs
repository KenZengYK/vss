using System;
using System.Drawing;
using System.Data.Linq;
using System.Data;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.UI.TimeElement.Report
{
    public partial class SupplierWithAssociatePartnersRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext context { get; set; } 
        public string WhereCondition { get; set; }

        public SupplierWithAssociatePartnersRpt()
        {
            InitializeComponent();
            //_iCode = 0;
        }

        private void SupplierGrpRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           
            this.bindingSource1.DataSource = context.ExecuteQuery<SupplierProfile>(string.Format("select * from supplierprofile {0}", WhereCondition));           
        }
        //int _iCode;

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //_iCode++;
            //if (this.bindingSource1.Current!=null)
            //{
            //    (this.bindingSource1.Current as SupplierProfile).code = _iCode;
            //}
            
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.bindingSource1.MoveNext();
        }

    }
}
