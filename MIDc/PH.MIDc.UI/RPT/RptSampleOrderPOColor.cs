using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MIDc.BO;
using System.Collections.Generic;
using System.Linq;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class RptSampleOrderPOColor : DevExpress.XtraReports.UI.XtraReport
    {
        private PH.MIDc.BO.SampleOrderPO m;
        // List<RptSampleOrderPOColorBO> rptColorList = new List<RptSampleOrderPOColorBO>();
        private decimal sumAmount = 0;
        private int sumQuantity = 0;
        private decimal sumPhQuantity = 0;


        public RptSampleOrderPOColor(PH.MIDc.BO.SampleOrderPO poMaster)
        {
            InitializeComponent();

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext < MIDcDataContext>();
            var aa = from a in context.SampleOrderPOs
                     where a.SampleOrderPONo == poMaster.SampleOrderPONo
                     select a;
            
            this.bindingSource1.DataSource = aa;    
         
            DoTotalQty(poMaster); 
        }

        private void DoTotalQty(PH.MIDc.BO.SampleOrderPO poMaster)
        {
            decimal d = 0;
            foreach (SampleOrderPODetail item in poMaster.SampleOrderPODetails)
            {
                d += (item.Qty ?? 0);
            }
            d = Math.Round(d * poMaster.RateToPHUnit, 2);

            this.dQuantity.Text = poMaster.PHUnit == poMaster.SupplierUnit ? "[SampleOrderPODetails.Qty!0.##]" : "[SampleOrderPODetails.Qty!0.##]\r\n(appr.[SuppPHQty] [PHUnit])";
            this.lblTotalQty.Visible = poMaster.PHUnit != poMaster.SupplierUnit;
            this.lblTotalQty.Text = string.Format("(appr.{0} {1})", d, poMaster.PHUnit);
        }

        private void bindRptDataSource()
        {
            //this.rptSampleOrderPOColorSub1.DataSource = m.SampleOrderPODetails;// rptColorList;


            //this.mCompany.DataBindings.Add("Text", m, "SupplierName");
            //this.mAddress.DataBindings.Add("Text", m, "SupplierAddress");
            //this.mAttn.DataBindings.Add("Text", m, "SupplierAttn");
            //this.mFaxNo.DataBindings.Add("Text", m, "SupplierFax");
            //this.mPaymentTerm.DataBindings.Add("Text", m, "PaymentTerm");
            //this.mDeliveryTerm.DataBindings.Add("Text", m, "DeliveryTerm");
            //this.mShipmentMode.DataBindings.Add("Text", m, "ShipmentMode");
            //this.mDeliveryDate.DataBindings.Add("Text", m, "DeliveryDate");
            //this.mDeliveryDate.DataBindings["Text"].FormatString = "{0:yyyy'/'MM'/'dd}";
            //this.mContractPerson.DataBindings.Add("Text", m, "ContractPerson");
            //this.mCustomer.DataBindings.Add("Text", m, "Customer");
            //this.mCommodityCode.DataBindings.Add("Text", m, "CommodityCode");
            //this.mCommodity.DataBindings.Add("Text", m, "Commodity");
            //this.mSupplierWidth.DataBindings.Add("Text", m, "SupplierWidth");
            ////this.mAdditionalTerm.DataBindings.Add("Text", m, "AdditionalTerm");
            //this.mPONO.DataBindings.Add("Text", m, "SampleOrderPO");
            //this.mPODate.DataBindings.Add("Text", m, "PO_Date");
            //this.mPODate.DataBindings["Text"].FormatString = "{0:yyyy'/'MM'/'dd}";

            //this.mqtyUnit.Text = m.MIDcDetail.SupplierUnit;
            //this.mPriceCurrent.Text = m.MIDcDetail.Currency;
            //this.mAmountCurrent.Text = m.MIDcDetail.Currency;

            //this.mTotalAmount.Text = m.MIDcDetail.Currency + " " + sumAmount.ToString();
            //this.totalAmount.Text = sumAmount.ToString();

            //if (m.MIDcDetail.SupplierUnit.ToUpper().Trim() == m.MIDcDetail.PHUnit.ToUpper().Trim())
            //    this.totalQty.Text = sumQuantity.ToString(); //+ "\n" + "(appr." + sumPhQuantity.ToString("0.00") + ")";
            //else
            //    this.totalQty.Text = sumQuantity.ToString() + "\n" + "(appr." + sumPhQuantity.ToString("0.00") + " " + m.MIDcDetail.PHUnit + ")";


        }

        private int DetailSizeSort(SampleOrderPODetail x, SampleOrderPODetail y)
        {
            //int i;
            if (x == null || x.Size == null)
            {
                if (y == null || y.Size == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null || y.Size == null) return 1;
                else
                {
                    if (x.Size.CompareTo(y.Size) < 0)
                        return -1;
                    else
                        return 1;
                }
            }
        }


    }
}
