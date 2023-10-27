using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.MIDcNewformat.CN
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class poErrorReport : DevExpress.XtraReports.UI.XtraReport
    {
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private XRControlStyle csHeader;
        private XRControlStyle csHeader2;
        private System.Windows.Forms.BindingSource bindingSource1;
        private XRLabel xrLabel2;
        private XRLabel lblTips;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public poErrorReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
        }
        public poErrorReport(string pono)
            : this()
        {
            _pono = pono;
        }
        private string _pono;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.lblTips = new DevExpress.XtraReports.UI.XRLabel();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csHeader2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel2,
            this.lblTips});
            this.Detail.Height = 453;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Location = new System.Drawing.Point(142, 83);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(373, 36);
            this.xrLabel2.StyleName = "csHeader2";
            this.xrLabel2.Text = "警告";
            // 
            // lblTips
            // 
            this.lblTips.Location = new System.Drawing.Point(142, 133);
            this.lblTips.Multiline = true;
            this.lblTips.Name = "lblTips";
            this.lblTips.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblTips.Size = new System.Drawing.Size(477, 160);
            this.lblTips.StyleName = "csHeader2";
            this.lblTips.StylePriority.UseForeColor = false;
            this.lblTips.StylePriority.UseTextAlignment = false;
            this.lblTips.Text = "Location of Supplier Facotry cannot blank, \r\nbefore print po report, \r\nplease fil" +
                "l in Location of Supplier Facotry.";
            this.lblTips.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csHeader
            // 
            this.csHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.csHeader.Font = new System.Drawing.Font("Arial", 7F);
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csHeader2
            // 
            this.csHeader2.Font = new System.Drawing.Font("Arial Unicode MS", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader2.Name = "csHeader2";
            this.csHeader2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POWireBoneMatrixTemp);
            // 
            // poErrorReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail});
            this.DataSource = this.bindingSource1;
            this.ExportOptions.PrintPreview.DefaultFileName = "po Error Report";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csHeader2});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.poErrorReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private void poErrorReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            lblTips.Text = string.Format("\"供應商工廠所在地\"不能為空值,\r\n在打印采購單 [ {0} ] 報表之前, \r\n請填寫好\"供應商工廠所在地\".", this._pono);


        }
    }
}
