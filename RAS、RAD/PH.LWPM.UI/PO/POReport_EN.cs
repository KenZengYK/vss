using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.LWPM.BO;
using DevExpress.XtraPrinting;

namespace PH.LWPM.UI.PO
{
    public partial class POReport_EN : DevExpress.XtraReports.UI.XtraReport
    {
        public POReport_EN()
        {
            InitializeComponent();
        }

        /// <summary>
        /// PO報表構造函數
        /// </summary>
        /// <param name="APOHeader">POHeader對象</param>
        /// <param name="APOType">PO類型</param>
        /// <param name="APOType1">0: Machince PO;  1: Equipment PO</param>
        public POReport_EN(POHeader APOHeader, POReportTypes APOReportType, int APOType)
            : this()
        {
            if (APOHeader == null) return;

            if (APOType == 0)
            {
                this.bindingSource.DataSource = APOHeader.PODetails.Where(p => !(p.IsSupplement ?? false)).OrderBy(p => p.SortID);
            }
            else if (APOType == 1)
            {
                this.bindingSource.DataSource = APOHeader.PODetails.OrderBy(p => p.SortID);
            }

            if (APOHeader.PODetail_OtherItems.Count() > 0)
            {
                POSubReport_OtherItem subReportOtherItem = new POSubReport_OtherItem(ReportLanguages.English);
                subReportOtherItem.bsPOOtherItem.DataSource = APOHeader.PODetail_OtherItems.OrderBy(p => p.SortID);
                this.Subreport_AmountDescription.ReportSource = subReportOtherItem;
                this.lbPOTotalDesc.Text = "Sub-Total Amount：";
            }
            else
            {
                this.Subreport_AmountDescription.Visible = false;
                this.lbPOTotalDesc.Text = "Grand Total Amount：";
            }

            this.lbBuyer.Text = APOHeader.BuyerName_EN;

            string BuyerCode = "";
            string VendorCode = "";
            if (APOReportType == POReportTypes.PYToEteranl)
            {
                //BuyerCode = "Yongtai";
                BuyerCode = "PYBD";
                VendorCode = "Eternal";
            }
            else if (APOReportType == POReportTypes.EternalToPHHK)
            {
                BuyerCode = "Eternal";
                VendorCode = "PHHK";
            }
            else if (APOReportType == POReportTypes.PHHKToVendor)
            {
                BuyerCode = "PHHK";
                VendorCode = APOHeader.FinalVendorCode;
            }
            else if (APOReportType == POReportTypes.GeneralPO)
            {
                BuyerCode = APOHeader.BuyerCode;
                VendorCode = APOHeader.FinalVendorCode;
            }

            RAPLQDataContext db = APOHeader.CurrentDataContext as RAPLQDataContext;
            Vendor vendor = db.Vendors.FirstOrDefault(p => p.Code == VendorCode);

            //處理Vendor顯示信息
            this.lbVendorName.Text = vendor.Name_EN;
            this.lbVendorAddress.Text = vendor.Address;
            this.lbAttn.Text = vendor.Attn;
            //this.lbEmail.Text = vendor.Email;
            //this.lbTel.Text = vendor.Tel;
            //this.lbFax.Text = vendor.Fax;

            //處理Buyer顯示信息
            Buyer buyer = db.Buyers.FirstOrDefault(p => p.Code == BuyerCode);
            this.lbBuyer.Text = buyer.Name_EN;
            this.lbCoordinator.Text = buyer.Attn;
            this.lbBuyerSign.Text = buyer.Name_EN;
            //this.lbFooter.Text = string.Format("Address: {0}   Phone #: {1}", buyer.Address, buyer.Tel);
            //this.lbVendorName.Text = APOHeader.POVendor.Name_EN;
            //this.lbVendorAddress.Text = APOHeader.POVendor.Address;

            this.lbPONO.Text = APOHeader.PONO;
            this.lbAmendNo.Text = APOHeader.AmendNo;
            DateTime issedDate = APOHeader.IssueDate ?? DateTime.MinValue;
            this.lbIssedDate.Text = (issedDate) == DateTime.MinValue ? "" : issedDate.ToString("dd-MM-yyyy");
            this.lbCoordinator.Text = APOHeader.Coordinator;
            this.tcTransitPoint.Text = APOHeader.TransitPoint;

            //處理Currency的顯示
            this.tcCurrency_UnitPrice.Text = string.Format("({0})", APOHeader.Currency);
            this.tcCurrency_Amount.Text = this.tcCurrency_UnitPrice.Text;

            this.lblNotepad.Text = APOHeader.Notepad;
            this.xrTableCell13.DataBindings.Add("Text", this.bindingSource, APOType == 0 ? "MCType" : "ItemCode");

            this.tcGoodsDescription.Text = APOHeader.GoodsDescription_EN;

            this.lbIncoterms.Text = APOHeader.Incoterms;
            this.lbTransitMode.Text = APOHeader.TransitMode;

            this.tcPartialShipment.Text = APOHeader.PartialShipment;
            this.tcOriginsCountry.Text = APOHeader.OriginsCountry;
            this.tcLoadingPort.Text = APOHeader.LoadingPort;
            this.tcDestination.Text = APOHeader.Destination;
            this.tcDischargePort.Text = APOHeader.DischargePort;
            this.lbPaymentTerm.Text = APOHeader.PaymentTerm;
            this.tcConsignee.Text = APOHeader.Consignee;
        }


        private void lbHint_PrintOnPage(object sender, PrintOnPageEventArgs e)
        {
            this.lbHint.Text = e.PageIndex == e.PageCount - 1 ? "" : "to be continued";
        }

        private void POReport_EN_DataSourceRowChanged(object sender, DataSourceRowEventArgs e)
        {
            PODetail d = (PODetail)this.GetCurrentRow();
            if (d != null && (d.InsertPageBreak ?? false))
            {
                this.Detail.PageBreak = PageBreak.BeforeBand;
            }
            else
            {
                this.Detail.PageBreak = PageBreak.None;
            }
        }

        private void tcItemSeq_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.tcItemSeq.TextAlignment = TextAlignment.TopCenter;

            //object IsSpareParts = this.GetCurrentColumnValue("IsSpareParts");
            //if (IsSpareParts != null && (bool)IsSpareParts)
            //{
            //    this.tcItemSeq.TextAlignment = TextAlignment.MiddleCenter;
            //}
        }
    }

}
