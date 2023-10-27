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
            //�˙C���rֵ��ԪXXX,XXX�� ����]�Թ�˾ Eternal Power Development Ͷ����ϼ����]�Թ�˾  P.Y. Garments Manufacturing (Bangladesh) Co., Ltd �Ĳ����Y��ע�Y.
        }

        /// <summary>
        /// PO��혋�캯��
        /// </summary>
        /// <param name="APOHeader">POHeader����</param>
        /// <param name="APOType">PO���</param>
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
                this.lbPOTotalDesc.Text = "Sub-total Amount��";
            }
            else
            {
                this.Subreport_AmountDescription.Visible = false;
                this.lbPOTotalDesc.Text = "Grand total Amount��";
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

            //̎��Vendor�@ʾ��Ϣ
            this.lbVendorName.Text = vendor.Name_EN;
            this.lbVendorAddress.Text = vendor.Address;
            this.lbAttn.Text = vendor.Attn;
            this.lbEmail.Text = vendor.Email;
            this.lbTel.Text = vendor.Tel;
            this.lbFax.Text = vendor.Fax;

            //̎��Buyer�@ʾ��Ϣ
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

            //̎��Currency���@ʾ
            this.lblPrice.Text = this.lblPrice.Text.Replace("US$", APOHeader.Currency);
            this.lblAmount.Text = this.lblAmount.Text.Replace("US$", APOHeader.Currency);
            this.lbAmountHeader.Text = "�����~(" + APOHeader.Currency + "):";

            this.lblNotepad.Text = APOHeader.Notepad;

            //this.tcMCType.Text = APOType1 == 0 ? "M/C\r\nType\r\n�Cе\r\n�N�" : "Item Code";
            this.tcMCType1.Text = APOType1 == 0 ? "M/C\r\nType" : "Item";
            this.tcMCType2.Text = APOType1 == 0 ? "�Cе\r\n�N�" : "Code";
            this.xrTableCell12.DataBindings.Add("Text", this.bindingSource, APOType1 == 0 ? "MCType" : "ItemCode");

            this.tcModel1.Text = APOType1 == 0 ? "Model No." : "Spec.";
            this.tcBrand1.Text = APOType1 == 0 ? "M/C Brand" : "Brand";
            this.tcBrand2.Text = APOType1 == 0 ? "�CеƷ��" : "Ʒ��";

            //this.tcModel2.Text = APOType1 == 0 ? "��̖" : "��̖";
            //this.xrTableCell5.Text = APOType1 == 0 ? "Model No.\r\n��̖" : "Spec.\r\n��̖";
            //this.xrTableCell6.Text = APOType1 == 0 ? "M/C Brand\r\n�CеƷ��" : "Brand\r\nƷ��";

            this.lbAmountDescription.Text = APOHeader.AmountRemark;
            this.lbAmount.Text = APOHeader.GetTotal().ToString("0.00");


            //this.xrTableCell13.DataBindings.Add("Text", this.bindingSource, APOType1 == 0 ? "ModelNo" : "ItemCodeVendor");

            //int aaa = APOHeader.PODetails.Count;

            //this.lblDescription.Text = "We would like to purchase the following item(s) from you as per our agreement of general terms & conditions for sales & purchase. " + Environment.NewLine +
            //          "Please acknowledge and acceptance of this order immediateley & send your confirmation by return email first, then by returning the copy duly signed." + Environment.NewLine +
            //          "�����p����ͬ��Ē�ُ�l��F���F��˾ӆُ������Ʒ��Ո���r���J�յ��ͽ��ܴ�ӆ�Σ��K����ʹ����]�_�J���ٽ����Ѻ��ֵĴ�ӆ���}����";

            //this.tcTransitPointHeader.Text = "Transit Point / ��؛�c" + Environment.NewLine +
            //       "(Delivery date is based on this point/��؛���Դ��c���)";

            //this.tcTransitPoint.Text = "";
            //this.tcSpecialNote.Text = "";

            //this.tcDescription1.Text = "For Shipping Instruction & Shipping Marks, contact our logistic & shipping department at Hong Kong office: (852) 2422-6622, P.R. of China Shilong Town office: (86) 769-8908-3666" + Environment.NewLine +
            //        "��춴���Ҫ����O��Ԕ��Ո�j��˾֮���������ղ�����ی��֘�: (852) 2422-6622, �Ї�ʯ��悌��֘�: (86) 769-8908-3666";
        }


        private void lbHint_PrintOnPage(object sender, PrintOnPageEventArgs e)
        {
            this.lbHint.Text = e.PageIndex == e.PageCount - 1 ? "Completed" : "Not complete, please see next page";
        }

    }

    ///// <summary>
    ///// PO���
    ///// </summary>
    //public enum POTypes
    //{
    //    /// <summary>
    //    /// PY��Eternal��PO
    //    /// </summary>
    //    PYToEteranl,
    //    /// <summary>
    //    /// Eternal��PHHK��PO
    //    /// </summary>
    //    EternalToPHHK,
    //    /// <summary>
    //    /// PHHK��Vendor��PO
    //    /// </summary>
    //    PHHKToVendor,

    //    /// <summary>
    //    /// ��ͨPO
    //    /// </summary>
    //    GeneralPO
    //}
}
