using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class POReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private PageFooterBand PageFooter;
        private GroupHeaderBand GroupHeader_Summary;
        private ReportHeaderBand ReportHeader1;
        private GroupHeaderBand GroupHeader_Page2;

        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private XRControlStyle csHeaderSmall;

        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.BindingSource bindingSource2;

        private XRSubreport subHeader;
        private XRSubreport subBaseInfor;
        private XRSubreport subItems;
        private XRSubreport subSummary;
        private XRSubreport subPage2;
        private XRSubreport subFooter;
        private XRSubreport subClassCodeGmtColor;
        private GroupHeaderBand GroupHeader_ClassGmt;
        private XRSubreport subVAT;
        private GroupHeaderBand GroupHeader_VAT;

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
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.subFooter = new DevExpress.XtraReports.UI.XRSubreport();
            this.GroupHeader_Summary = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.subSummary = new DevExpress.XtraReports.UI.XRSubreport();
            this.subItems = new DevExpress.XtraReports.UI.XRSubreport();
            this.subBaseInfor = new DevExpress.XtraReports.UI.XRSubreport();
            this.ReportHeader1 = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.subHeader = new DevExpress.XtraReports.UI.XRSubreport();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.subPage2 = new DevExpress.XtraReports.UI.XRSubreport();
            this.GroupHeader_Page2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.subClassCodeGmtColor = new DevExpress.XtraReports.UI.XRSubreport();
            this.GroupHeader_ClassGmt = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.subVAT = new DevExpress.XtraReports.UI.XRSubreport();
            this.GroupHeader_VAT = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
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
            this.PageHeader.Height = 0;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // PageFooter
            // 
            this.PageFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subFooter});
            this.PageFooter.Height = 25;
            this.PageFooter.Name = "PageFooter";
            // 
            // subFooter
            // 
            this.subFooter.Location = new System.Drawing.Point(0, 0);
            this.subFooter.Name = "subFooter";
            this.subFooter.Size = new System.Drawing.Size(767, 25);
            // 
            // GroupHeader_Summary
            // 
            this.GroupHeader_Summary.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subSummary,
            this.subItems,
            this.subBaseInfor});
            this.GroupHeader_Summary.Height = 75;
            this.GroupHeader_Summary.Level = 3;
            this.GroupHeader_Summary.Name = "GroupHeader_Summary";
            // 
            // subSummary
            // 
            this.subSummary.Location = new System.Drawing.Point(0, 50);
            this.subSummary.Name = "subSummary";
            this.subSummary.Size = new System.Drawing.Size(767, 25);
            // 
            // subItems
            // 
            this.subItems.Location = new System.Drawing.Point(0, 25);
            this.subItems.Name = "subItems";
            this.subItems.Size = new System.Drawing.Size(767, 25);
            // 
            // subBaseInfor
            // 
            this.subBaseInfor.Location = new System.Drawing.Point(0, 0);
            this.subBaseInfor.Name = "subBaseInfor";
            this.subBaseInfor.Size = new System.Drawing.Size(767, 25);
            // 
            // ReportHeader1
            // 
            this.ReportHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subHeader});
            this.ReportHeader1.Height = 25;
            this.ReportHeader1.Name = "ReportHeader1";
            // 
            // subHeader
            // 
            this.subHeader.Location = new System.Drawing.Point(0, 0);
            this.subHeader.Name = "subHeader";
            this.subHeader.Size = new System.Drawing.Size(767, 25);
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // subPage2
            // 
            this.subPage2.Location = new System.Drawing.Point(0, 0);
            this.subPage2.Name = "subPage2";
            this.subPage2.Size = new System.Drawing.Size(767, 25);
            // 
            // GroupHeader_Page2
            // 
            this.GroupHeader_Page2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subPage2});
            this.GroupHeader_Page2.Height = 25;
            this.GroupHeader_Page2.Level = 2;
            this.GroupHeader_Page2.Name = "GroupHeader_Page2";
            this.GroupHeader_Page2.PageBreak = DevExpress.XtraReports.UI.PageBreak.BeforeBand;
            // 
            // subClassCodeGmtColor
            // 
            this.subClassCodeGmtColor.Location = new System.Drawing.Point(0, 5);
            this.subClassCodeGmtColor.Name = "subClassCodeGmtColor";
            this.subClassCodeGmtColor.Size = new System.Drawing.Size(767, 25);
            // 
            // GroupHeader_ClassGmt
            // 
            this.GroupHeader_ClassGmt.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subClassCodeGmtColor});
            this.GroupHeader_ClassGmt.Height = 30;
            this.GroupHeader_ClassGmt.KeepTogether = true;
            this.GroupHeader_ClassGmt.Level = 1;
            this.GroupHeader_ClassGmt.Name = "GroupHeader_ClassGmt";
            // 
            // subVAT
            // 
            this.subVAT.Location = new System.Drawing.Point(0, 0);
            this.subVAT.Name = "subVAT";
            this.subVAT.Size = new System.Drawing.Size(767, 25);
            // 
            // GroupHeader_VAT
            // 
            this.GroupHeader_VAT.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subVAT});
            this.GroupHeader_VAT.Height = 25;
            this.GroupHeader_VAT.Name = "GroupHeader_VAT";
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // POReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter,
            this.GroupHeader_Summary,
            this.ReportHeader1,
            this.GroupHeader_Page2,
            this.GroupHeader_ClassGmt,
            this.GroupHeader_VAT});
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
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.POReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion

        #region fields

        private bool _isPHCopy;
        private bool _isColorPrint;
        private bool _isVatPrint;
        private bool _isScO;
        private string _langID;
        private bool _isDometisPrint;

        private string _ReportTitleType;

        #endregion

        #region Creator

        public POReport()
        {
            InitializeComponent();
        }
        //public POReport(bool isPHCopy, bool isColorPrint, bool isVatPrint, bool isScO, string langID, bool isDometisPrint)
        //    : this()
        //{
        //    _isPHCopy = isPHCopy;
        //    _isVatPrint = isVatPrint;
        //    _isColorPrint = isColorPrint;
        //    _isScO = isScO;
        //    _langID = langID;
        //    _isDometisPrint = isDometisPrint;
        //}
        //------Xsj20160415:為打印海關PO而添加以下代碼------- 
        private bool _isPrintPOForHS;
        public POReport(bool isPHCopy, bool isColorPrint, bool isVatPrint, bool isScO, string langID, bool isDometisPrint, bool isPrintPOForHS, string AReportTitleType)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isColorPrint = isColorPrint;
            _isScO = isScO;
            _langID = langID;
            _isDometisPrint = isDometisPrint;

            //Xsj:Add
            _isPrintPOForHS = isPrintPOForHS;

            _ReportTitleType = AReportTitleType; //由David加入 2020-01-07
        }
        //-------------End---------------------------------------------------
        #endregion

        #region Event

        private void POReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POHeader po = this.GetCurrentRow() as POHeader;
            if (po == null) return;

            SetWatermark(po);
            SetSubReportDataSource(po);
        }

        #endregion

        #region Functions

        //Xsj:獲取子報表的數據源
        private void SetSubReportDataSource(POHeader p)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            object obj = this.DataSource;//master datasource
            XtraReport report;

            var skus = from a in context.POColorSizeDetails
                       where a.PONO == p.PONO && a.Company == p.Company && a.Version == p.Version && a.AmendmentNo == p.AmendmentNo
                       select a;


            #region Header

            report = new Header.SubHeaderReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint, _ReportTitleType);
            report.DataSource = obj;
            this.subHeader.ReportSource = report;
            ////------Xsj20160415:為打印海關PO而添加以下代碼------- 
            //if (this._isPrintPOForHS)
            //{
            //    POHeader bo = obj as POHeader;
            //    POHeader pOther = bo.ClonePOHeader();
            //    report.DataSource = pOther;
            //}
            //else
            //{
            //    report.DataSource = obj;
            //}
            //this.subHeader.ReportSource = report;
            ////----------------------------------------------------

            #endregion

            #region BaseInfor

            if (_langID == "EN")
            {
                ////report = new BaseInfor.SubBaseInforENReport(_isPHCopy, _isVatPrint, _isScO, _langID);
                //Xsj:為打印海關PO而添加以下代碼------------------------
                report = new BaseInfor.SubBaseInforENReport(_isPHCopy, _isVatPrint, _isScO, _langID, this._isPrintPOForHS);
                //------------------------------------------------------

                //按王生的要求, Original和Duplicate， SubBaseInforReport(分英文和中文)都是同一种格式， 由David修改 2022-04-25
                //report = new BaseInfor.SubBaseInforENReport(true, _isVatPrint, _isScO, _langID, this._isPrintPOForHS);


            }
            else
            {
                report = new BaseInfor.SubBaseInforCNReport(_isPHCopy, _isVatPrint, _isScO, _langID);

                //按王生的要求, Original和Duplicate， SubBaseInforReport(分英文和中文)都是同一种格式， 由David修改 2022-04-25
                //report = new BaseInfor.SubBaseInforCNReport(true, _isVatPrint, _isScO, _langID);
            }
            report.DataSource = obj;
            this.subBaseInfor.ReportSource = report;

            #endregion

            #region Items

            //var items = from a in po.PODetails
            //          from b in a.POColorSizeDetails
            //          select b;


            if (this._isScO)
            {
                report = new Items.SubItemsScOReport(_isPHCopy, _isVatPrint, _isScO, _langID);
            }
            else
            {
                //这个报表因为中文和英文和显示格式不一样，所以中文单独做一个报表， 由David加入 2022-03-26
                if (_langID == "TW")
                {
                    report = new Items.SubItemsPOReport_CN(_isPHCopy, _isVatPrint, _isScO, "TW");
                }
                else
                {
                    report = new Items.SubItemsPOReport(_isPHCopy, _isVatPrint, _isScO, _langID);
                }
            }

            report.DataSource = skus;
            this.subItems.ReportSource = report;

            #endregion

            #region Summary

            //report = new Summary.SubSummaryReport(_isPHCopy, _isVatPrint, _isScO, _langID, p);
            //Xsj:為打印海關PO而添加以下代碼。-----------------------------------------------------------------------
            report = new Summary.SubSummaryReport(_isPHCopy, _isVatPrint, _isScO, _langID, p, this._isPrintPOForHS);
            //-------------------------------------------------------------------------------------------------------
            report.DataSource = skus;
            this.subSummary.ReportSource = report;

            #endregion

            #region Page 2



            //switch (p.FormNo)
            //{
            //    case "2D":
            //    case "2Dss":
            //    case "3Drc":
            //    case "3Dss":
            //    case "3Dst":
            //    case "3Dsw":
            //        this.lbSpecSize.Text = (_langID == "EN") ? Common.SpecialSize_EN + "\r\n" + Common.PriceDependent_EN : Common.SpecialSize_CN + "\r\n" + Common.PriceDependent_CN;
            //        break;

            //    case "3Dsr":
            //        this.lbSpecSize.Text = (_langID == "EN") ? "Specific\r\n" + Common.Width3D_EN + "\r\n" + Common.PriceDependent_EN : "指定\r\n" + Common.Width3D_CN + "\r\n" + Common.PriceDependent_CN;
            //        break;

            //    case "4D":
            //        this.lbSpecSize.Text = (_langID == "EN") ? Common.Width4D_EN + "\r\n" + Common.PriceDependent_EN : Common.Width4D_CN + "\r\n" + Common.PriceDependent_CN;
            //        break;

            //    default:
            //        break;

            //}
            string[] POFormNos = new string[] { "2D", "2Das", "3Das", "3Daw", "3Dat", "3Das-rc" };
            if (POFormNos.Contains(p.FormNo))
            //if (p.SupplierDimension == PODimension.ThreeS)
            {
                #region Detail

                bool printDetail = (p.HaveMultiProjectsByPrice || _isPHCopy);
                this.GroupHeader_Page2.Visible = printDetail;

                if (printDetail)
                {
                    this.subPage2.Visible = p.HaveMultiProjectsByPrice; //由David加入 2022-04-25

                    report = new Detail.SubDetailReport(_isPHCopy, _isVatPrint, _isScO, _langID, p);
                    report.DataSource = skus;
                    this.subPage2.ReportSource = report;
                }
                #endregion
            }
            else // 3D, 4D
            {
                #region Suppletment Sheet
                report = null;

                if (_langID == "EN")
                {
                    if (p.HaveSupplementSheet && (p.MoreBuyerSizeCup ?? false))
                        report = new SupplementSheet.EN.SubWireBoneReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint);
                    else if (p.BuyerDimension == PODimension.ThreeR)
                        report = new SupplementSheet.EN.Sub3DReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint, _ReportTitleType);
                    else if (p.BuyerDimension == PODimension.Four)
                        report = new SupplementSheet.EN.Sub4DReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint, _ReportTitleType);
                    else
                    {
                        //this.ReportFooter.Visible = false;
                        //this.ReportFooter.PageBreak = PageBreak.None;
                        //this.PageFooter.PrintOn = PrintOnPages.AllPages;
                        //this.lblSizeMatrix.Visible = false;


                        //this.cellDimension.Text = "Quantity Summary of Item/Color (2 dimensions) on this page:";//數量一覽，品種/顏色(二維)顯示在此頁:
                        //Quantity Summary of Item/Color (2 dimensions) on this page (For Our project breakdown, please refer to next page):
                        //this.cellDimension.Text = "數量一覽，品種/顏色(二維)顯示在此頁 (對于采購單的工程號分配, 請參考下一頁):";

                        //return;
                    }
                }
                else //CN
                {
                    if (p.HaveSupplementSheet && (p.MoreBuyerSizeCup ?? false))
                        report = new SupplementSheet.CN.SubWireBoneReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint);
                    else if (p.BuyerDimension == PODimension.ThreeR)
                        report = new SupplementSheet.CN.Sub3DReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint, _ReportTitleType);
                    else if (p.BuyerDimension == PODimension.Four)
                        report = new SupplementSheet.CN.Sub4DReport(_isPHCopy, _isVatPrint, _isScO, _langID, _isDometisPrint, _ReportTitleType);
                }
                if (report != null)
                {
                    //var b1 = from xx in context.POColorSizeDetails
                    //         //from yy in a1
                    //         where xx.Company == p.Company && xx.PONO == p.PONO && xx.Version == p.Version && xx.AmendmentNo == p.AmendmentNo
                    //         orderby xx.FitCode
                    //         select xx;
                    var b1 = from x in skus
                             orderby x.FitCode
                             select x;

                    report.DataSource = b1;

                    this.subPage2.ReportSource = report;
                    //SetColorPrint(report); 
                }
                #endregion
            }

            #region ClassCode/GmtColor

            GroupHeader_ClassGmt.Visible = _isPHCopy;
            if (_isPHCopy)
            {
                report = new ClassGmt.SubClassGmtReport(p, _isPHCopy, _isVatPrint, _isScO, _langID);
                report.DataSource = skus;
                this.subClassCodeGmtColor.ReportSource = report;
            }
            #endregion

            #region VAT

            bool bVat = false;// _isPHCopy && p.HaveVAT;
            GroupHeader_VAT.Visible = bVat;
            if (bVat)
            {
                report = new VATValue.SubVATReport(_isPHCopy, _isVatPrint, _isScO, _langID);
                report.DataSource = p.PODetails;
                this.subVAT.ReportSource = report;
            }

            #endregion


            #endregion

            #region Footer

            //report = new Footer.SubFooterReport(_isPHCopy, _isVatPrint, _isScO, _langID);
            //Xsj:為打印海關PO而添加以下代碼。-----------------------------------------------------------------------
            report = new Footer.SubFooterReport(_isPHCopy, _isVatPrint, _isScO, _langID, this._isPrintPOForHS, p);
            //-------------------------------------------------------------------------------------------------------
            //report.DataSource = obj;
            this.subFooter.ReportSource = report;

            #endregion

            SetColorPrint(this); //for each sub-report
        }

        private void SetWatermark(POHeader po)
        {
            if (po.Flag == "1")// po cancelled
            {
                this.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                this.Watermark.Text = "Cancelled";
                this.Watermark.TextTransparency = 90;
                this.Watermark.ShowBehind = !_isColorPrint;
            }
        }
        public void SetColorPrint(XtraReport report)
        {
            if (_isColorPrint) return;

            this.SuspendLayout();
            try
            {
                ReportHelper.SetBlackWhiteForStyle(report);
                ReportHelper.SetBlackWhitePrinting_Report(report);
            }

            finally
            {
                this.ResumeLayout();
            }
        }

        #endregion

    }
}
