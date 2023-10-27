using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MR.BO;

namespace PH.MR.BackEnd
{
    public partial class MidcHSCodeMRReport : DevExpress.XtraReports.UI.XtraReport
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

        public string RptType
        {
            get;
            set;
        }

        public string RptProjectNo
        {
            get;
            set;
        }

        private List<MRHSCodeRptBO> RptDataSource = new List<MRHSCodeRptBO>();

        public MidcHSCodeMRReport()
        {
            InitializeComponent();
        }

        private void MidcHSCodeMRReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.RptDataSource = this.Report.DataSource as List<MRHSCodeRptBO>;
            MRHSCodeRptBO bo = this.RptDataSource[0];
            if (this.RptType == ((int)PH.MR.BO.MRHSCodeRptEnum.Summary).ToString()
                || this.RptType == ((int)PH.MR.BO.MRHSCodeRptEnum.ALL).ToString())
            {
                MidcHSCodeByMRSummaryReort summaryRpt = new MidcHSCodeByMRSummaryReort();
                summaryRpt.DataSource = bo.SummaryList;

                if (string.IsNullOrEmpty(RptProjectNo))
                {
                    summaryRpt.FromDay = this.FromDay;
                    summaryRpt.TODay = this.TODay;
                }
                else
                {
                    summaryRpt.ProjectNo = this.RptProjectNo;
                }
             
                

                this.xrSubreport_Summary.ReportSource = summaryRpt;
            }
            else
            {
                this.xrSubreport_Summary.Visible = false;
                this.xrPageBreak_Summary2Detail.Visible = false;
                this.xrSubreport_Detail.Location = new Point(0, 0);
                this.Detail.Height = this.xrSubreport_Detail.Height;
            }


            if (this.RptType == ((int)PH.MR.BO.MRHSCodeRptEnum.Detail).ToString()
                || this.RptType == ((int)PH.MR.BO.MRHSCodeRptEnum.ALL).ToString())
            {
                MidcHSCodeByMRDetailReort detailRpt = new MidcHSCodeByMRDetailReort();
                detailRpt.DataSource = bo.DetailList;

                if (string.IsNullOrEmpty(RptProjectNo))
                {
                    detailRpt.FromDay = this.FromDay;
                    detailRpt.TODay = this.TODay;
                }
                else
                {
                    detailRpt.ProjectNo = this.RptProjectNo;
                }

                this.xrSubreport_Detail.ReportSource = detailRpt;
            }
            else
            {
                this.xrSubreport_Detail.Visible = false;
                this.Detail.Height = this.xrSubreport_Summary.Height;
            }
        } 

    }
}
