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
    public partial class SupplierWithAssociatePartnersDetailRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext context { get; set; }
        public string WhereCondition { get; set; }

        public SupplierWithAssociatePartnersDetailRpt()
        {
            InitializeComponent();
            //_iCode = 0;
        }

        private void SupplierGrpRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //int _iCode = 0;
            //string Grp = string.Empty;

            //this.bindingSource1.DataSource = context.ExecuteQuery<SupplierProfile>(string.Format("select * from supplierprofile {0}", WhereCondition));
            this.bindingSource1.DataSource = context.ExecuteQuery<SupplierProfile>(string.Format("select * from supplierprofile {0}", WhereCondition)).ToList().OrderByDescending(E => E.AssociatePartnerStr);
            //foreach (SupplierProfile item in SpplierLst)
            //{
            //    if (Grp != item.SupplierGroup)
            //    {
            //        _iCode++;
            //        item.code = _iCode;
            //    }
            //    else
            //    {
            //        item.code = _iCode;
            //    }
                

            //    Grp = item.SupplierGroup;
            //}
            //this.bindingSource1.DataSource = SpplierLst;

        }
        //int _iCode;

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.bindingSource1.MoveNext();
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //_iCode++;
            //this.cellGroupNo.Text = _iCode.ToString();
            //if (this.bindingSource1.Current != null)
            //{
            //    (this.bindingSource1.Current as SupplierProfile).code = _iCode;
            //}
        }

        private void cellGroupNo_AfterPrint(object sender, EventArgs e)
        {
            //this.cellGroupNo.Text = "";
        }

    }
}
