using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class POReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POReport()
        {
            InitializeComponent();

            // 6. The value of the machine in USDXXX,XXX is part of capital investment from Eternal Power Development Ltd to P.Y. Garments Manufacturing (Bangladesh) Co., Ltd. 
            //此機器價值美元XXX,XXX為 香港註冊公司 Eternal Power Development 投入於孟加拉註冊公司  P.Y. Garments Manufacturing (Bangladesh) Co., Ltd 的部份資本注資.
        }

        /// <summary>
        /// PO報表構造函數
        /// </summary>
        /// <param name="APOHeader">POHeader對象</param>
        /// <param name="APOType">PO類型</param>
        /// <param name="APOType1">0:Machince PO;  1:Equipment PO</param>
        public POReport(POHeader APOHeader, POReportTypes APOType, int APOType1)
            : this()
        {
            if (APOHeader == null) return;

            this.bindingSource.DataSource = APOHeader.PODetails.OrderBy(p => p.SortID);

            if (APOHeader.PODetail_OtherItems.Count() > 0)
            {
                POSubReport_OtherItem subReportOtherItem = new POSubReport_OtherItem(ReportLanguages.English);
                subReportOtherItem.bsPOOtherItem.DataSource = APOHeader.PODetail_OtherItems.OrderBy(p => p.SortID);
                this.Subreport_AmountDescription.ReportSource = subReportOtherItem;
                this.lbPOTotalDesc.Text = "Sub-total Amount：";
            }
            else
            {
                this.Subreport_AmountDescription.Visible = false;
                this.lbPOTotalDesc.Text = "Grand total Amount：";
            }

            this.lbBuyer.Text = APOHeader.BuyerName_EN;

            string BuyerCode = "";
            string VendorCode = "";
            if (APOType == POReportTypes.PYToEteranl)
            {
                //BuyerCode = "Yongtai";
                BuyerCode = "PYBD";
                VendorCode = "Eternal";
            }
            else if (APOType == POReportTypes.EternalToPHHK)
            {
                BuyerCode = "Eternal";
                VendorCode = "PHHK";
            }
            else if (APOType == POReportTypes.PHHKToVendor)
            {
                BuyerCode = "PHHK";
                VendorCode = APOHeader.FinalVendorCode;
            }
            else if (APOType == POReportTypes.GeneralPO)
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
            this.lbEmail.Text = vendor.Email;
            this.lbTel.Text = vendor.Tel;
            this.lbFax.Text = vendor.Fax;

            //處理Buyer顯示信息
            Buyer buyer = db.Buyers.FirstOrDefault(p => p.Code == BuyerCode);
            this.lbBuyer.Text = buyer.Name_EN;
            this.lbCoordinator.Text = buyer.Attn;
            this.lbBuyerSign.Text = buyer.Name_EN;
            this.lbFooter.Text = string.Format("Address: {0}   Phone #: {1}", buyer.Address, buyer.Tel);

            //this.lbVendorName.Text = APOHeader.POVendor.Name_EN;
            //this.lbVendorAddress.Text = APOHeader.POVendor.Address;

            this.lbPONO.Text = APOHeader.PONO;
            this.lbAmendNo.Text = APOHeader.AmendNo;

            DateTime issedDate = APOHeader.IssueDate ?? DateTime.MinValue;

            this.lbIssedDate.Text = (issedDate) == DateTime.MinValue ? "" : issedDate.ToString("yyyy-MM-dd");

            this.lbPaymentTerm.Text = APOHeader.PaymentTerm;
            this.lbIncoterms.Text = APOHeader.Incoterms;
            this.lbTransitMode.Text = APOHeader.TransitMode;
            this.lbAmount.Text = APOHeader.TransitMode;
            this.lbCoordinator.Text = APOHeader.Coordinator;

            this.tcTransitPoint.Text = APOHeader.TransitPoint;
            this.tcSpecialNote.Text = APOHeader.SpecialNote;

            //處理Currency的顯示
            this.lblPrice.Text = this.lblPrice.Text.Replace("US$", APOHeader.Currency);
            this.lblAmount.Text = this.lblAmount.Text.Replace("US$", APOHeader.Currency);
            this.lbAmountHeader.Text = "總金額(" + APOHeader.Currency + "):";

            this.lblNotepad.Text = APOHeader.Notepad;

            //this.tcMCType.Text = APOType1 == 0 ? "M/C\r\nType\r\n機械\r\n種類" : "Item Code";
            this.tcMCType1.Text = APOType1 == 0 ? "M/C\r\nType" : "Item";
            this.tcMCType2.Text = APOType1 == 0 ? "機械\r\n種類" : "Code";
            this.xrTableCell12.DataBindings.Add("Text", this.bindingSource, APOType1 == 0 ? "MCType" : "ItemCode");

            this.tcModel1.Text = APOType1 == 0 ? "Model No." : "Spec.";
            this.tcBrand1.Text = APOType1 == 0 ? "M/C Brand" : "Brand";
            this.tcBrand2.Text = APOType1 == 0 ? "機械品牌" : "品牌";

            //this.tcModel2.Text = APOType1 == 0 ? "型號" : "型號";
            //this.xrTableCell5.Text = APOType1 == 0 ? "Model No.\r\n型號" : "Spec.\r\n型號";
            //this.xrTableCell6.Text = APOType1 == 0 ? "M/C Brand\r\n機械品牌" : "Brand\r\n品牌";

            this.lbAmountDescription.Text = APOHeader.AmountRemark;
            this.lbAmount.Text = APOHeader.GetTotal().ToString("0.00");


            //this.xrTableCell13.DataBindings.Add("Text", this.bindingSource, APOType1 == 0 ? "ModelNo" : "ItemCodeVendor");

            //int aaa = APOHeader.PODetails.Count;

            //this.lblDescription.Text = "We would like to purchase the following item(s) from you as per our agreement of general terms & conditions for sales & purchase. " + Environment.NewLine +
            //          "Please acknowledge and acceptance of this order immediateley & send your confirmation by return email first, then by returning the copy duly signed." + Environment.NewLine +
            //          "根據雙方所同意的採購條款，現向貴公司訂購如下商品。請即時承認收到和接受此訂單，並首先使用電郵確認，再交回已簽字的此訂單複本。";

            //this.tcTransitPointHeader.Text = "Transit Point / 交貨點" + Environment.NewLine +
            //       "(Delivery date is based on this point/交貨期以此點為準)";

            //this.tcTransitPoint.Text = "";
            //this.tcSpecialNote.Text = "";

            //this.tcDescription1.Text = "For Shipping Instruction & Shipping Marks, contact our logistic & shipping department at Hong Kong office: (852) 2422-6622, P.R. of China Shilong Town office: (86) 769-8908-3666" + Environment.NewLine +
            //        "對於船務要求及箱嘜，詳情請聯絡我司之物流及船務部：香港寫字樓: (852) 2422-6622, 中國石龍鎮寫字樓: (86) 769-8908-3666";
        }


        private void lbHint_PrintOnPage(object sender, PrintOnPageEventArgs e)
        {
            this.lbHint.Text = e.PageIndex == e.PageCount - 1 ? "Completed" : "Not complete, please see next page";
        }

    }

    ///// <summary>
    ///// PO類型
    ///// </summary>
    //public enum POTypes
    //{
    //    /// <summary>
    //    /// PY向Eternal下PO
    //    /// </summary>
    //    PYToEteranl,
    //    /// <summary>
    //    /// Eternal向PHHK下PO
    //    /// </summary>
    //    EternalToPHHK,
    //    /// <summary>
    //    /// PHHK向Vendor下PO
    //    /// </summary>
    //    PHHKToVendor,

    //    /// <summary>
    //    /// 普通PO
    //    /// </summary>
    //    GeneralPO
    //}
}
