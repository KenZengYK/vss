using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.Footer
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class SubFooterReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private XRPageInfo lbPage;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.BindingSource bindingSource2;
        private XRTable xrTable_Footer;
        private XRTableRow xrTableRow26;
        private XRTableCell xrTableCell59;
        private XRTableRow xrTableRow28;
        private XRTableCell xrTableCell67;
        private XRTableCell xrTableCell71;
        private XRTableCell xrTableCell73;
        private XRControlStyle csHeaderSmall;
        private XRLabel lblVersion;
        private XRLabel lblSizeMatrix;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

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
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.lblSizeMatrix = new DevExpress.XtraReports.UI.XRLabel();
            this.lblVersion = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable_Footer = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow26 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell59 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow28 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell67 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell73 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbPage = new DevExpress.XtraReports.UI.XRPageInfo();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable_Footer)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblSizeMatrix,
            this.lblVersion,
            this.xrTable_Footer,
            this.lbPage});
            this.PageHeader.Height = 44;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // lblSizeMatrix
            // 
            this.lblSizeMatrix.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblSizeMatrix.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.lblSizeMatrix.Location = new System.Drawing.Point(617, 29);
            this.lblSizeMatrix.Name = "lblSizeMatrix";
            this.lblSizeMatrix.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSizeMatrix.Size = new System.Drawing.Size(135, 15);
            this.lblSizeMatrix.StylePriority.UseBorders = false;
            this.lblSizeMatrix.StylePriority.UseFont = false;
            this.lblSizeMatrix.StylePriority.UseTextAlignment = false;
            this.lblSizeMatrix.Text = "Size Matrix";
            this.lblSizeMatrix.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblVersion
            // 
            this.lblVersion.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.lblVersion.Location = new System.Drawing.Point(0, 12);
            this.lblVersion.Name = "lblVersion";
            this.lblVersion.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblVersion.Size = new System.Drawing.Size(95, 16);
            this.lblVersion.StylePriority.UseFont = false;
            this.lblVersion.Text = "v1.4";
            // 
            // xrTable_Footer
            // 
            this.xrTable_Footer.Location = new System.Drawing.Point(95, 0);
            this.xrTable_Footer.Name = "xrTable_Footer";
            this.xrTable_Footer.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow26,
            this.xrTableRow28});
            this.xrTable_Footer.Size = new System.Drawing.Size(577, 28);
            this.xrTable_Footer.StyleName = "csHeader";
            this.xrTable_Footer.StylePriority.UseTextAlignment = false;
            this.xrTable_Footer.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow26
            // 
            this.xrTableRow26.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell59});
            this.xrTableRow26.Name = "xrTableRow26";
            this.xrTableRow26.Size = new System.Drawing.Size(577, 15);
            // 
            // xrTableCell59
            // 
            this.xrTableCell59.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F);
            this.xrTableCell59.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell59.Name = "xrTableCell59";
            this.xrTableCell59.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell59.Size = new System.Drawing.Size(577, 15);
            this.xrTableCell59.StylePriority.UseFont = false;
            this.xrTableCell59.StylePriority.UseTextAlignment = false;
            this.xrTableCell59.Text = "Unit 1901, Tower 1, Ever Gain Plaza, 88 Container Port Road, Kwai Chung, Hong Kon" +
                "g";
            this.xrTableCell59.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow28
            // 
            this.xrTableRow28.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell67,
            this.xrTableCell71,
            this.xrTableCell73});
            this.xrTableRow28.Name = "xrTableRow28";
            this.xrTableRow28.Size = new System.Drawing.Size(577, 13);
            // 
            // xrTableCell67
            // 
            this.xrTableCell67.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell67.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell67.Name = "xrTableCell67";
            this.xrTableCell67.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell67.Size = new System.Drawing.Size(216, 13);
            this.xrTableCell67.StylePriority.UseFont = false;
            this.xrTableCell67.StylePriority.UseTextAlignment = false;
            this.xrTableCell67.Text = "Tel: (852) 2422 6622";
            this.xrTableCell67.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell71
            // 
            this.xrTableCell71.Location = new System.Drawing.Point(216, 0);
            this.xrTableCell71.Name = "xrTableCell71";
            this.xrTableCell71.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell71.Size = new System.Drawing.Size(72, 13);
            // 
            // xrTableCell73
            // 
            this.xrTableCell73.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell73.Location = new System.Drawing.Point(288, 0);
            this.xrTableCell73.Name = "xrTableCell73";
            this.xrTableCell73.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell73.Size = new System.Drawing.Size(289, 13);
            this.xrTableCell73.StylePriority.UseFont = false;
            this.xrTableCell73.Text = "Fax: (852) 2428 7212";
            // 
            // lbPage
            // 
            this.lbPage.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.lbPage.Format = "頁: {0} / {1}";
            this.lbPage.Location = new System.Drawing.Point(674, 12);
            this.lbPage.Name = "lbPage";
            this.lbPage.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbPage.Size = new System.Drawing.Size(79, 16);
            this.lbPage.StylePriority.UseFont = false;
            this.lbPage.StylePriority.UseTextAlignment = false;
            this.lbPage.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // SubFooterReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader});
            this.DataSource = this.bindingSource2;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Multiple items)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 20);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csHeaderSmall});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.MainReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable_Footer)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion

        #region Creator

        public SubFooterReport()
        {
            InitializeComponent();
        }
        //public SubFooterReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID)
        //    : this()
        //{
        //    _isPHCopy = isPHCopy;
        //    _isVatPrint = isVatPrint;
        //    _isScO = isScO;
        //    _langID = langID;
        //}

        //Xsj:為打印海關PO而添加以下代碼------------------------
        private bool _isPrintPOForHS;
        public SubFooterReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID, bool isPrintPOForHS, POHeader APOHeader)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;

            //Xsj:Add
            _isPrintPOForHS = isPrintPOForHS;

            //由David增加 2022-03-29
            _POHeader = APOHeader;
        }
        //------------------------------------------------------

        #endregion

        #region Fields

        //Image imgYes, imgNo, imgNone;
        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;
        private POHeader _POHeader;

        #endregion

        #region Event

        private void MainReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //POHeader p = this.GetCurrentRow() as POHeader;
            //if (p == null) return;

            SetTitleInfor();

            //Xsj:為打印海關PO而添加以下代碼------------------------ 
            this.xrTable_Footer.Visible = !this._isPrintPOForHS;
            //------------------------------------------------------

            //由David增加 2022-04-22
            this.lblSizeMatrix.Text = "Form no.: " + _POHeader.FormNo;
            //SetWidthSpecialSize(_POHeader);
        }
        #endregion

        #region Functions

        private void SetTitleInfor()
        {
            this.lbPage.Format = (_langID == "EN") ? "Page: {0} / {1}" : "頁: {0} / {1}";

            if (_isScO)
            {
                this.lblVersion.Text = (_isVatPrint) ? Common.SCVATVersion : Common.SCVersion;
            }
            else
            {
                this.lblVersion.Text = (_isVatPrint) ? Common.POVATVersion : Common.POVersion;
            }

        }

        #endregion


        //private void SetWidthSpecialSize(POHeader p)
        //{
        //    if (p == null) return;

        //    string Str = "";

        //    //由David改写 2022-03-29
        //    if (p.SupplierDimension == PODimension.Four)
        //    {
        //        Str = "4Dsm";
        //    }
        //    else if (p.SupplierDimension == PODimension.ThreeR)
        //    {
        //        Str = "3Dsr";
        //    }
        //    else if (p.SupplierDimension == PODimension.ThreeS)
        //    {
        //        Str = "2Dw";
        //        if (p.IsSpecialSize)
        //        {
        //            Str = "2D" + p.PODetails.FirstOrDefault().POColorSizeDetails.FirstOrDefault().MIDcDetail.SingleRangeSize.ToLower();
        //        }
        //    }
        //    else
        //    {
        //        Str = "2Dw";
        //    }

        //    this.lblSizeMatrix.Text = "Form no.: " + Str;


        //    //if (_langID == "EN")
        //    //    switch (p.SupplierDimension)
        //    //    {
        //    //        case PODimension.None:
        //    //            break;
        //    //        case PODimension.One:
        //    //            break;
        //    //        case PODimension.ThreeS:
        //    //            //this.lbWidth.Text = (p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_EN, p.MIDcSpecSize) : Common.Width2D_EN;
        //    //            this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_EN : Common.Width2D_EN;
        //    //            //this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
        //    //            //this.lbSpecSize.Text = Common.SpecialSize_EN + "\r\n" + Common.PriceDependent_EN;
        //    //            break;
        //    //        case PODimension.ThreeR:
        //    //            this.lblSizeMatrix.Text = Common.Width3D_EN;
        //    //            //this.lbWidth.Text = Common.Width3D_EN;
        //    //            //this.tbWidth.Text = "[SizeRangeEN]";
        //    //            //this.lbSpecSize.Text = Common.Width3D_EN + "\r\n" + Common.PriceDependent_EN;
        //    //            break;
        //    //        case PODimension.Four:
        //    //            this.lblSizeMatrix.Text = Common.Width4D_EN;
        //    //            //this.lbWidth.Text = Common.Width4D_EN;
        //    //            //this.lbSpecSize.Text = Common.Width4D_EN + "\r\n" + Common.PriceDependent_EN;
        //    //            //this.tbWidth.Text = "[SizeRangeEN]";
        //    //            break;
        //    //        default:
        //    //            break;
        //    //    }
        //    //else //CN
        //    //    switch (p.SupplierDimension)
        //    //    {
        //    //        case PODimension.None:
        //    //            break;
        //    //        case PODimension.One:
        //    //            break;
        //    //        case PODimension.ThreeS:
        //    //            //this.lbWidth.Text = (p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_CN, p.MIDcSpecSize) : Common.Width2D_CN;
        //    //            this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_CN : Common.Width2D_CN;
        //    //            //this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
        //    //            //this.lbSpecSize.Text = Common.SpecialSize_CN + "\r\n" + Common.PriceDependent_CN;
        //    //            break;
        //    //        case PODimension.ThreeR:
        //    //            this.lblSizeMatrix.Text = Common.Width3D_CN;
        //    //            //this.lbWidth.Text = Common.Width3D_CN;
        //    //            //this.tbWidth.Text = "[SizeRangeCN]";
        //    //            //this.lbSpecSize.Text = Common.Width3D_CN + "\r\n" + Common.PriceDependent_CN;
        //    //            break;
        //    //        case PODimension.Four:
        //    //            this.lblSizeMatrix.Text = Common.Width4D_CN;
        //    //            //    this.lbWidth.Text = Common.Width4D_CN;
        //    //            //this.lbSpecSize.Text = Common.Width4D_CN + "\r\n" + Common.PriceDependent_CN;
        //    //            //this.tbWidth.Text = "[SizeRangeCN]";
        //    //            break;
        //    //        default:
        //    //            break;
        //    //    }

        //}
    }
}
