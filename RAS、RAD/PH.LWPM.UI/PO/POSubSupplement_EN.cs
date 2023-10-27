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
    public partial class POSubSupplement_EN : DevExpress.XtraReports.UI.XtraReport
    {
        public POSubSupplement_EN()
        {
            InitializeComponent();
        }

        /// <summary>
        /// PO報表構造函數
        /// </summary>
        /// <param name="APOHeader">POHeader對象</param>
        /// <param name="APOType">PO類型</param>
        public POSubSupplement_EN(POHeader APOHeader, POReportTypes APOReportType)
            : this()
        {
            if (APOHeader == null) return;

            this.bindingSource.DataSource = APOHeader.PODetails.Where(p => p.IsSupplement ?? false).OrderBy(p => p.SortID);

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

            //處理Buyer顯示信息
            Buyer buyer = db.Buyers.FirstOrDefault(p => p.Code == BuyerCode);
            this.lbBuyer.Text = buyer.Name_EN;
            this.lbCoordinator.Text = buyer.Attn;
            //this.lbBuyerSign.Text = buyer.Name_EN;

            this.lbPONO.Text = APOHeader.PONO;
            this.lbAmendNo.Text = APOHeader.AmendNo;

            DateTime issedDate = APOHeader.IssueDate ?? DateTime.MinValue;
            this.lbIssedDate.Text = (issedDate) == DateTime.MinValue ? "" : issedDate.ToString("dd-MM-yyyy");
            this.lbCoordinator.Text = APOHeader.Coordinator;


            //處理Currency的顯示
            this.tcCurrency_UnitPrice.Text = string.Format("({0})", APOHeader.Currency);
            this.tcCurrency_Amount.Text = this.tcCurrency_UnitPrice.Text;

            //this.xrTableCell13.DataBindings.Add("Text", this.bindingSource, APOType == 0 ? "MCType" : "ItemCode");
            //this.PrintingSystem.ContinuousPageNumbering = true;
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

        private void lbHint_PrintOnPage(object sender, PrintOnPageEventArgs e)
        {
            this.lbHint.Text = e.PageIndex == e.PageCount - 1 ? "" : "to be continued";
        }

    }
}
