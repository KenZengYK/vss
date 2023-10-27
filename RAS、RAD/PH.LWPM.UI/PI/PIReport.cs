using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Globalization;
using DevExpress.XtraPrinting;

namespace PH.LWPM.UI.PI
{
    public partial class PIReport : DevExpress.XtraReports.UI.XtraReport
    {
        PIHeader SavePIHeader;
        //public PIReport(PIHeader APIHeader, PITypes APIType, InvoiceTypes AInvoiceType)
        public PIReport(PIHeader APIHeader, InvoiceTypes AInvoiceType)
        {
            InitializeComponent();
            SavePIHeader = APIHeader;

            if (APIHeader == null) return;

            string BuyerCode = "PYBD";
            //string VendorCode = APIHeader.BuyerCode;
            string VendorCode = APIHeader.SellerCode;


            //string BuyerCode = "";
            //string VendorCode = "";
            //if (APIType == PITypes.EteralToPY)
            //{
            //    VendorCode = "Eternal";
            //    BuyerCode = "PYBD";
            //    //BuyerCode = "Yongtai";
            //}
            //else if (APIType == PITypes.SheenToPY)
            //{
            //    VendorCode = "Sheen";
            //    BuyerCode = "PYBD";
            //}
            //else if (APIType == PITypes.PHHKToEternal)
            //{
            //    VendorCode = "PHHK";
            //    BuyerCode = "Eternal";
            //}
            //else if (APIType == PITypes.VendorToPHHK)
            //{
            //    VendorCode = APIHeader.FinalVendorCode;
            //    BuyerCode = "PHHK";
            //}

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>(); //APIHeader.CurrentDataContext as RAPLQDataContext;
            Vendor vendor = db.Vendors.FirstOrDefault(p => p.Code == VendorCode);

            //this.lbInvoiceType.Text = "Proforma Invoice";
            //this.lbInvoiceNoHeader.Text = "PF Invoice No. :  ";
            //this.lbInvoiceDateHeader.Text = "PF Invoice Date :   ";
            //if (AInvoiceType == InvoiceTypes.CommercialInvoice)
            //{
            //    this.lbInvoiceType.Text = "Commercial Invoice";
            //    this.lbInvoiceNoHeader.Text = "Invoice No. :  ";
            //    this.lbInvoiceDateHeader.Text = "Invoice Date :   ";
            //    this.lbInvoiceDate = "";
            //}

            //處理Vendor顯示信息
            this.lbVendorName.Text = vendor.Name_EN;
            this.lbVendorAddress.Text = vendor.Address;

            //處理Buyer顯示信息
            Buyer buyer = db.Buyers.FirstOrDefault(p => p.Code == BuyerCode);
            this.lbBuyerName.Text = buyer.Name_EN;
            //this.lbBuyerAddress.Text = buyer.Address;

            string[] Addresses = buyer.Address.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);
            if (Addresses.Count() > 0)
            {
                this.lbBuyerAddress1.Text = Addresses[0];
                this.lbBuyerAddress2.Visible = false;
                //this.lbBuyerAddress3.Visible = false;
            }
            if (Addresses.Count() > 1)
            {
                this.lbBuyerAddress2.Text = Addresses[1];
                this.lbBuyerAddress2.Visible = true;
            }
            //if (Addresses.Count() > 2)
            //{
            //    this.lbBuyerAddress3.Text = Addresses[2];
            //    this.lbBuyerAddress3.Visible = true;
            //}

            //處理表頭、表尾顯示
            this.lbProjectNo.Text = APIHeader.ProjectNO;
            this.lbShipMode.Text = APIHeader.ShipMode;
            this.lbInvoiceNo.Text = APIHeader.PINO;
            DateTime piDate = APIHeader.PIDate ?? DateTime.MinValue;
            this.lbInvoiceDate.Text = piDate == DateTime.MinValue ? "" : piDate.ToString("dd-MMM-yy", CultureInfo.CreateSpecificCulture("en-GB"));

            this.lbInvoiceType.Text = "Proforma Invoice";
            this.lbInvoiceNoHeader.Text = "PF Invoice No. :  ";
            this.lbInvoiceDateHeader.Text = "PF Invoice Date :   ";
            if (AInvoiceType == InvoiceTypes.CommercialInvoice)
            {
                this.lbInvoiceType.Text = "Commercial Invoice";
                this.lbInvoiceNoHeader.Text = "Invoice No. :  ";
                this.lbInvoiceDateHeader.Text = "Invoice Date :   ";
                this.lbInvoiceDate.Text = "01-Feb-2018";
            }

            this.lbPortOfLoading.Text = APIHeader.PortOfLoading;
            this.lbPortOfDischarge.Text = APIHeader.PortOfDischarge;
            this.lbVesselFlight.Text = APIHeader.VesselFlight;

            DateTime dtSailingDeparture = APIHeader.SailingDeparture ?? DateTime.MinValue;
            this.lbSailingDeparture.Text = dtSailingDeparture == DateTime.MinValue ? "" :
                  dtSailingDeparture.ToString("dd-MMM-yy", CultureInfo.CreateSpecificCulture("en-GB"));

            DateTime dtETA = APIHeader.ETA ?? DateTime.MinValue;
            this.lbETA.Text = dtETA == DateTime.MinValue ? "" : dtETA.ToString("dd-MMM-yy", CultureInfo.CreateSpecificCulture("en-GB"));

            this.lbMarks.Text = APIHeader.Marks;
            this.tcReference.Text = APIHeader.Reference;
            //this.lbReference.Text = APIHeader.Reference;
            //if (APIHeader.Reference.Contains("CHAN HIN"))
            //{
            //    if (APIHeader.OriginCountry.ToUpper().Contains("CHINA"))
            //    {
            //        this.lbReference.Text = APIHeader.Reference + " - CHN";
            //    }
            //    else if (APIHeader.OriginCountry.ToUpper().Contains("KOREA"))
            //    {
            //        this.lbReference.Text = APIHeader.Reference + " - KRE";
            //    }
            //}

            //this.tcShipmentRemark.Text = string.Format(APIHeader.ShipmentRemark, "CHITTAGONG", APIHeader.ShipMode);

            if (AInvoiceType == InvoiceTypes.CommercialInvoice)
            {
                DateTime PCDate = APIHeader.PCDate ?? DateTime.MinValue;
                this.tcPCNO.Text = string.Format("P/C NO: {0}, DATE: {1}", APIHeader.PCNO, PCDate == DateTime.MinValue ? "" : PCDate.ToString("dd-MM-yyyy"));
                this.tcPCNO.Visible = true;
                this.xrTableRow4.Height = 18;
            }
            else
            {
                this.tcPCNO.Visible = false;
                this.xrTableRow4.Height = 36;
            }

            this.tcGoodsDescription.Text = APIHeader.GoodsDescription;

            this.lbIncotermTerm.Text = APIHeader.IncotermTerm;
            this.lbPaymentTerm.Text = APIHeader.PaymentTerm;
            this.lbOriginCountry.Text = APIHeader.OriginCountry;
            this.lbQuality.Text = APIHeader.Quality;
            //this.lbRemark.Text = string.Format(APIHeader.Remark, this.lbTotalAmount.Text);
            this.bindingSource.DataSource = APIHeader.PIDetails.OrderBy(p => p.SortID);

            if (APIHeader.PIDetail_OtherItems.Count() > 0)
            {
                PISubReport_OtherItem subReportOtherItem = new PISubReport_OtherItem();
                subReportOtherItem.bsPIOtherItem.DataSource = APIHeader.PIDetail_OtherItems.OrderBy(p => p.SortID);
                this.Subreport_AmountDescription.ReportSource = subReportOtherItem;
                this.lbPITotalDesc.Text = "Sub-total Amount :-";
            }
            else
            {
                this.Subreport_AmountDescription.Visible = false;
                this.lbPITotalDesc.Text = "Grand total Amount :-";
            }

        }

        //private void lbTotalAmount_SummaryCalculated(object sender, TextFormatEventArgs e)
        //{
        //    //this.lbRemark.Text = string.Format(SavePIHeader.Remark, e.Text);
        //    //this.lbAmountUppcase.Text = string.Format("SAY TOTAL : UNITED STATES DOLLARS {0} ONLY***",
        //    //    AmountConvert.Convert(double.Parse( e.Text)));
        //}

        private void lbAmountUppcase_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            double AmountTotal = SavePIHeader.GetTotal();
            this.lbRemark.Text = string.Format(SavePIHeader.Remark, AmountTotal.ToString("N2"));
            this.lbAmountUppcase.Text = string.Format("SAY TOTAL : UNITED STATES DOLLARS {0} ONLY***", AmountConvert.Convert(AmountTotal));
        }

        private void lbPaymentTerm_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int factor;
            Graphics gr = Graphics.FromHwnd(IntPtr.Zero);
            if (this.ReportUnit == ReportUnit.HundredthsOfAnInch)
            {
                gr.PageUnit = GraphicsUnit.Inch;
                factor = 100;
            }
            else
            {
                gr.PageUnit = GraphicsUnit.Millimeter;
                factor = 10;
            }
            SizeF size = gr.MeasureString(((XRLabel)sender).Text,
            ((XRLabel)sender).Font);
            ((XRLabel)sender).Width = Convert.ToInt32(size.Width * factor) + 8;
            gr.Dispose();
        }

        bool needMerge = false;
        bool needShowText = true;
        int row = 1;
        private void tcDetailItem_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object PreviousItemValue = this.GetPreviousColumnValue("Item");
            object CurrentItemValue = this.GetCurrentColumnValue("Item");
            object NextItemValue = this.GetNextColumnValue("Item");

            XRTableCell label = sender as XRTableCell;

            if (this.CurrentRowIndex == this.RowCount - 1) //最后一行
            {
                label.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                if (!needShowText)
                {
                    label.Text = "";
                }
                needMerge = false;
                return;
            }

            if (CurrentItemValue.ToString() == NextItemValue.ToString())
            {
                needMerge = true;
                object dataSource = this.DataSource;

                IOrderedEnumerable<PIDetail> lists = this.bindingSource.DataSource as IOrderedEnumerable<PIDetail>;
                int MergeRowCount = lists.Count(p => p.Item == Convert.ToInt32(CurrentItemValue));
                int ShowValueMergeRowIndex = MergeRowCount / 2 + 1;

                label.Text = row == ShowValueMergeRowIndex ? CurrentItemValue.ToString() : "";
                needShowText = string.IsNullOrEmpty(label.Text);
                needMerge = true;
                row++;
                label.Borders = BorderSide.Left | BorderSide.Right;
            }
            else if (needMerge && CurrentItemValue.ToString() == PreviousItemValue.ToString())
            {
                if (!needShowText)
                {
                    label.Text = "";
                }
                label.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                row = 1;
                needMerge = false;
                needShowText = true;
            }
            else
            {
                label.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                needMerge = false;
                needShowText = true;
            }
        }


    }

    /// <summary>
    /// PI类型
    /// </summary>
    public enum PITypes
    {
        /// <summary>
        /// Eternal給PY开PI
        /// </summary>
        EteralToPY,
        /// <summary>
        /// Sheen給PY開PI
        /// </summary>
        SheenToPY,
        /// <summary>
        /// PHHK給Eternal开PI
        /// </summary>
        PHHKToEternal,
        /// <summary>
        /// Vendor給PHHK开PI
        /// </summary>
        VendorToPHHK
    }

    /// <summary>
    /// 发票类型
    /// </summary>
    public enum InvoiceTypes
    {
        /// <summary>
        /// 试算发票
        /// </summary>
        ProformaInvoice,
        /// <summary>
        /// 商业发票
        /// </summary>
        CommercialInvoice
    }
}
