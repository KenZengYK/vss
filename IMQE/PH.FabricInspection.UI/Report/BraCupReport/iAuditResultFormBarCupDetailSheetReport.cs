using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;
using System.Linq;
using System.Data;

namespace PH.FabricInspection.UI.Report.BraCupReport
{
    public partial class iAuditResultFormBarCupDetailSheetReport : DevExpress.XtraReports.UI.XtraReport
    {


        public iAuditResultFormBarCupDetailSheetReport(List<BraCupAuditReportDetailTable> ADetailList)
        {
            InitializeComponent();

            //AccessoryAuditHeader obj = ADetailList as AccessoryAuditHeader;
            this.bindingSource1.DataSource = ADetailList;
        }  

        string Page = "";

        private void xrLabel1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string BoldTxt = this.GetCurrentColumnValue("LeftItemName").ToString();
            xrLabel1.Font = (BoldTxt == "Pull iPack#" || BoldTxt == "Defect Ttl Pts *") ? new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold)
                                                                                                             : new System.Drawing.Font("Arial Unicode MS", 6.5F);

            if (BoldTxt == "Audited SKU (filter by cross cup Sz. grpg)")
            {
                xrLabel1.Text = "Audit SKU ";
                xrLabel1.Width = 50;
            }
            //else if (BoldTxt == "Pkg list Qty fig. * (cross cup Sz. grpg)")
            //{
            //    xrLabel1.Text = "Pkg list Qty ";
            //    xrLabel1.Width = 50;
            //}
            //else if (BoldTxt == "Audit Smpl Sz* (cross cup grpg)")
            //{
            //    xrLabel1.Text = "Audit Smpl Sz* ";
            //    xrLabel1.Width = 65;
            //}
            else 
            {
                xrLabel1.Text = BoldTxt;
                xrLabel1.Width = 177;
            }
        }

        private void xrItalic_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string BoldTxt = this.GetCurrentColumnValue("LeftItemName").ToString();
            if (BoldTxt == "Audited SKU (filter by cross cup Sz. grpg)")
            {
                xrItalic.Text = "(filter by cross cup Sz. grpg)";
                xrItalic.Width = 125;
                this.xrItalic.Location = new System.Drawing.Point(48, 0);
            }
            //else if (BoldTxt == "Pkg list Qty fig. * (cross cup Sz. grpg)")
            //{
            //    xrItalic.Text = "(cross cup Sz. grpg)";
            //    xrItalic.Width = 85;
            //    this.xrItalic.Location = new System.Drawing.Point(48, 0);

            //}
            //else if (BoldTxt == "Audit Smpl Sz* (cross cup grpg)")
            //{
            //    xrItalic.Text = "(cross cup grpg)";
            //    xrItalic.Width = 85;
            //    this.xrItalic.Location = new System.Drawing.Point(63, 0);
            //}
            else
            {
                xrLabel1.Width = 0;
                xrItalic.Text = "";
            }
        }

        int Cals = 1;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (Cals <= 6)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.Yellow;
                this.xrTableCell16.BackColor = System.Drawing.Color.Yellow;
            }
            else if (6 < Cals && Cals <= 22)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            }
            else if (22 < Cals && Cals <= 27)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            }
            else if (27 < Cals && Cals <= 30)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            }
            Cals++;
        }

    }
}
