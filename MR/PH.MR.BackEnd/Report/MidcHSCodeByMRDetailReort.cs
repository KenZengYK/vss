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
    public partial class MidcHSCodeByMRDetailReort : DevExpress.XtraReports.UI.XtraReport
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


        public MidcHSCodeByMRDetailReort()
        {
            InitializeComponent();
        }

        private void MidcHSCodeByMRReort_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
            if (string.IsNullOrEmpty(ProjectNo))
            {
                this.CelFromDay.Text = this.FromDay;
                this.CelToDay.Text = this.TODay;
                this.xrTable4.Visible = false;

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
            List<PH.MR.BO.MRHSCodeDetailRptBO> rptDataSource = this.Report.DataSource as List<PH.MR.BO.MRHSCodeDetailRptBO>;

            int styleHSCodeCount = rptDataSource.Select(p => new { StyleHSCodeSeq = p.StyleHSCodeSeq, StyleHSCode = p.StyleHSCode }).Distinct().Count();
            int stylePHCount = rptDataSource.Select(p => p.PHStyleNo).Distinct().Count();
             //int styleProductQty = rptDataSource.Select(p => new { SalesOrder = p.SalesOrder,ProductQty = p.ProductQty }).Distinct().Sum(p => p.ProductQty);
            int styleProductQty = rptDataSource.Select(p => new { SalesOrder = p.SalesOrder, PHStyleNO = p.PHStyleNo, ProductQty = p.ProductQty }).Distinct().Sum(p => p.ProductQty);
            
            
            //int styleProductQty = rptDataSource.Select(p => new { StyleHSCodeSeq = p.StyleHSCodeSeq, StyleHSCode = p.StyleHSCode, ProductQty = p.ProductQty }).Distinct().Sum(p => p.ProductQty);
 

            int itemHSCodeCount = rptDataSource.Select(p => new { ItemHSCodeSeq = p.ItemHSCodeSeq, ItemHSCode = p.ItemHSCode }).Distinct().Count();
            int itemPHCount = rptDataSource.Where(p => p.PHItemNO != "").Select(p => p.PHItemNO).Distinct().Count();

            this.cel_StyleHSCodeCount.Text = styleHSCodeCount.ToString();
            this.cel_StylePHCount.Text = stylePHCount.ToString();
            this.cel_StyleProductQty.Text = styleProductQty.ToString();
            this.cel_ItemHSCodeCount.Text = itemHSCodeCount.ToString();
            this.cel_ItemPHCount.Text = itemPHCount.ToString();
        }
    }
}
