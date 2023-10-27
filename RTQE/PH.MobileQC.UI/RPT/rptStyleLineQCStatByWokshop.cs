﻿using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.UI.CS.DataQuery;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class rptStyleLineQCStatByWokshop : DevExpress.XtraReports.UI.XtraReport
    {
        public rptStyleLineQCStatByWokshop(object ADataSource, string AFactory, string AWorkshop)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            this.lb_Factory.Text = AFactory;
            this.lb_Workshop.Text = AWorkshop;
            //this.lb_Line.Text = ALine;
            //this.lb_Print.Text = AStyle;
            this.lb_Style.Text = DateTime.Now.ToString();            
            
            this.bindingSource1.DataSource = ADataSource;
            //this.bindingSource1.Sort= "line";

            string str = "";
            string langid = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;

            if ("TW,CN".Contains(langid))
            {
                str = "NotePad:" + "\r\n" +
                            "  1.黃色—表示未作Mobile審定" + "\r\n" +
                            "  2.綠色—表示Mobile審定,質量符合要求" + "\r\n" +
                            "  3.紅色—表示Mobile審定,質量不合要求" + "\r\n";
         
            }
            else
            {
                str = "NotePad:" + "\r\n" +
                              "  1.Yellow ----- No Checking" + "\r\n" +
                              "  2.Green ----- Within Quality Requirement" + "\r\n" +
                              "  3.Red ------- Under Quality Requirement" + "\r\n";
            }

            this.xlab_NotePad.Text = str;

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //StyleLineQCStatResult qc = this.GetCurrentRow() as StyleLineQCStatResult;
            StyleLineQCStatByWorkshopResult qc = this.GetCurrentRow() as StyleLineQCStatByWorkshopResult;
            if (qc == null) return;
            

            Color c;
            switch (qc.StatusTag)
            {
                case 0:
                    c = Color.Yellow;         // str = "未作審查";
                    break;
                case 1:
                    c = Color.Red;               // str = "質量不OK";
                    break;
                default:
                    c = Color.Green;            //str = "質量OK";
                    
                    break;

            }

            this.tbcStatus.BackColor = c;
        }



    }
}
