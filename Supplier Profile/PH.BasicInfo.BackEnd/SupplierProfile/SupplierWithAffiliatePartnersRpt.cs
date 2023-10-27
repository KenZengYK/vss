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
using System.Collections.Generic;

namespace PH.BasicInfo.BackEnd.TimeElement.Report
{
    public partial class SupplierWithAffiliatePartnersRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext context { get; set; }
        public string WhereCondition { get; set; }
        int SupplierGroupTotal;

        public SupplierWithAffiliatePartnersRpt()
        {
            InitializeComponent();
            //_iCode = 0;
        }

        private void SupplierGrpRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            var lists = context.ExecuteQuery<SupplierProfile>(string.Format("select * from supplierprofile {0}", WhereCondition)).ToList();
            this.bindingSource1.DataSource = lists;

            //”ãÀ„Supplier Group  Total
            SupplierGroupTotal = lists.Where(p => !string.IsNullOrEmpty(p.SupplierGroup)).Select(p => p.SupplierGroup).Distinct().Count();
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

        private void tcSupplierGroupTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //”ãÀ„Supplier Group  Total
            tcSupplierGroupTotal.Text = SupplierGroupTotal.ToString();

        }

    }
}
