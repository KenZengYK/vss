using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MR.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MR.BackEnd
{
    public partial class MidcHSCodeByMRSummaryReort : DevExpress.XtraReports.UI.XtraReport
    {
        public string FromDay
        {
            get;
            set;
        }

        public string TODay
        {
            get;
            set;
        }

        public string ProjectNo
        {
            get;
            set;
        }


        public MidcHSCodeByMRSummaryReort()
        {
            InitializeComponent();
        }

        private void MidcHSCodeByMRReort_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            

            if (string.IsNullOrEmpty(ProjectNo))
            {
                this.CelFromDay.Text = this.FromDay;
                this.CelToDay.Text = this.TODay;
                this.xrTable1.Visible = false;

            }
            else
            {
                this.txtProjectNo.Text = this.ProjectNo;
                this.xrTable6.Visible = false;
            }
           
            this.bindingSource1.DataSource = this.Report.DataSource;
        }


        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //Xsj: Get Summary Info
            List<PH.MR.BO.MRHSCodeSummaryRptBO> rptDataSource = this.Report.DataSource as List<PH.MR.BO.MRHSCodeSummaryRptBO>;

            int styleHSCodeCount = rptDataSource.Select(p => new { StyleHSCodeSeq = p.StyleHSCodeSeq, StyleHSCode = p.StyleHSCode }).Distinct().Count();
            int itemHSCodeCount = rptDataSource.Select(p => new { ItemHSCodeSeq = p.ItemHSCodeSeq, ItemHSCode = p.ItemHSCode }).Distinct().Count();

            int styleProductQty = rptDataSource.Select(p => new { StyleHSCodeSeq = p.StyleHSCodeSeq, StyleHSCode = p.StyleHSCode, ProductQty = p.ProductQty }).Distinct().Sum(p => p.ProductQty);

            this.cel_StyleHSCodeCount.Text = styleHSCodeCount.ToString();
            this.cel_ItemHSCodeCount.Text = itemHSCodeCount.ToString();
            this.cel_StyleProductQty.Text = styleProductQty.ToString();
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        { 
            PH.MR.BO.MRHSCodeSummaryRptBO bo = this.GetCurrentRow() as PH.MR.BO.MRHSCodeSummaryRptBO;
            if (bo == null) return;
            //this.lbl_Currency.Text = bo.Currency;
        } 
    }
}
