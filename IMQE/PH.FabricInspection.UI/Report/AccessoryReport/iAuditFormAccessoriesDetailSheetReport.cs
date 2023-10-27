using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;
using System.Linq;
using System.Data;

namespace PH.FabricInspection.UI.Report.AccessoryReport
{
    public partial class iAuditFormAccessoriesDetailSheetReport : DevExpress.XtraReports.UI.XtraReport
    {


        public iAuditFormAccessoriesDetailSheetReport(List<AccessoryAuditReportTable> ADetailList)
        {
            InitializeComponent();

            //AccessoryAuditHeader obj = ADetailList as AccessoryAuditHeader;
            this.bindingSource1.DataSource = ADetailList;
        }
     
        int Cals = 1;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            if (Cals <= 5)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.Yellow;
                this.xrTableCell16.BackColor = System.Drawing.Color.Yellow;
            }
            else if (5 < Cals && Cals <= 18) 
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            }
            else if (18 < Cals && Cals <= 25)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            }
            else if (25 < Cals && Cals <= 28) 
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            }
            else if (28 < Cals && Cals <= 32)
            {
                this.xrTableCell1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
                this.xrTableCell16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            }
            Cals ++;
        }

        private void xrTableCell1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {         
            //string BoldTxt = this.GetCurrentColumnValue("LeftItemName").ToString();
            //if (BoldTxt == "Defect Ttl Pts *") 
            //{
            //    xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold);
            //}
            //else if (BoldTxt == "Diff *") 
            //{
            //    xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold);
            //}
            //else if (BoldTxt == "Diff %**")
            //{
            //    xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold);
            //}
            //else 
            //{
            //    xrTableCell1.Font =  new System.Drawing.Font("Arial Unicode MS", 6.5F);
            //}

            //xrTableCell1.Font = BoldTxt == "Defect Ttl Pts *" ? new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold)
            //                                                                                                 : new System.Drawing.Font("Arial Unicode MS", 6.5F);

            //xrTableCell1.Font = BoldTxt == "Diff *" ? new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold)
            //                                                                                                : new System.Drawing.Font("Arial Unicode MS", 6.5F);

            //xrTableCell1.Font = BoldTxt == "Diff %**" ? new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold)
            //                                                                                                : new System.Drawing.Font("Arial Unicode MS", 6.5F);
        }

        private void xrTableCell6_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("DataItem1") == null) return;
            string BoldTxt = this.GetCurrentColumnValue("DataItem1").ToString();
            xrTableCell6.ForeColor = (BoldTxt == "B" || BoldTxt == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

        private void xrTableCell14_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("DataItem2") == null) return;
            string BoldTxt = this.GetCurrentColumnValue("DataItem2").ToString();
            xrTableCell14.ForeColor = (BoldTxt == "B" || BoldTxt == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

        private void xrTableCell17_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("DataItem3") == null) return;
            string BoldTxt = this.GetCurrentColumnValue("DataItem3").ToString();
            xrTableCell17.ForeColor = (BoldTxt == "B" || BoldTxt == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

        private void xrTableCell18_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("DataItem4") == null) return;
            string BoldTxt = this.GetCurrentColumnValue("DataItem4").ToString();
            xrTableCell18.ForeColor = (BoldTxt == "B" || BoldTxt == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

        private void xrTableCell16_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("Total") == null) return;
            string BoldTxt = this.GetCurrentColumnValue("Total").ToString();
            xrTableCell16.ForeColor = (BoldTxt == "B" || BoldTxt == "C") ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }  

        //string Page = "";

        //private void xrLabel1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    string BoldTxt = this.GetCurrentColumnValue("LeftItemName").ToString();
        //    xrLabel1.Font = BoldTxt == "SKU based on cross cup grpg\r\n " ? new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold)
        //                                                                                                     : new System.Drawing.Font("Arial Unicode MS", 6.5F);
 
        //    if (BoldTxt == "Audited SKU (filter by cross cup grpg)")
        //    {
        //        xrLabel1.Text = "Audit SKU ";
        //        xrLabel1.Width = 50;
        //    }
        //    else if (BoldTxt == "Pkg list Qty *(cross cup grpg)")
        //    {
        //        xrLabel1.Text = "Pkg list Qty ";
        //        xrLabel1.Width = 50;
        //    }
        //    else if (BoldTxt == "Audit Smpl Sz* (cross cup grpg)")
        //    {
        //        xrLabel1.Text = "Audit Smpl Sz* ";
        //        xrLabel1.Width = 65;
        //    }
        //    else 
        //    {
        //        xrLabel1.Text = BoldTxt;
        //        xrLabel1.Width = 154;
        //    }
        //}

        //private void xrItalic_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    string BoldTxt = this.GetCurrentColumnValue("LeftItemName").ToString();
        //    if (BoldTxt == "Audited SKU (filter by cross cup grpg)")
        //    {
        //        xrItalic.Text = "(filter by cross cup grpg)";
        //        xrItalic.Width = 100;
        //        this.xrItalic.Location = new System.Drawing.Point(43, 0);
        //    }
        //    else if (BoldTxt == "Pkg list Qty *(cross cup grpg)")
        //    {
        //        xrItalic.Text = "(cross cup grpg)";
        //        xrItalic.Width = 80;
        //        this.xrItalic.Location = new System.Drawing.Point(48, 0);

        //    }
        //    else if (BoldTxt == "Audit Smpl Sz* (cross cup grpg)")
        //    {
        //        xrItalic.Text = "(cross cup grpg)";
        //        xrItalic.Width = 80;
        //        this.xrItalic.Location = new System.Drawing.Point(63, 0);
        //    }
        //    else
        //    {
        //        xrLabel1.Width = 0;
        //        xrItalic.Text = "";
        //    }
        //}

    }
}
