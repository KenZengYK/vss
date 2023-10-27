using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MIDc.BO;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Data;

namespace PH.MIDc.UI
{
    public partial class RptSampleOrderPOSKU : DevExpress.XtraReports.UI.XtraReport
    {
        private decimal sumAmount = 0;
        private int sumQuantity = 0;
        private decimal sumPhQuantity = 0;
        private PH.MIDc.BO.SampleOrderPO m;
        private List<SampleOrderPODetail> poDetails;


        public RptSampleOrderPOSKU(PH.MIDc.BO.SampleOrderPO poMaster)
        {
            InitializeComponent();
            m = poMaster;
            List<SampleOrderPO> pos = new List<SampleOrderPO>();
            pos.Add(poMaster);
            //InitDetailSKUdate();
            this.bindingSource1.DataSource = pos;

            System.Data.DataSet ds = SqlDataHelper.GetSampleOrderPODetail(poMaster.SampleOrderPONo);

            this.xrSubreport1.ReportSource.DataSource = ds.Tables[0];
            DataTable tbSize = ds.Tables[1];

            this.sizeh1.Text = tbSize.Rows[0][1].ToString();
            this.sizeh2.Text = tbSize.Rows[1][1].ToString();
            this.sizeh3.Text = tbSize.Rows[2][1].ToString();
            this.sizeh4.Text = tbSize.Rows[3][1].ToString();
            this.sizeh5.Text = tbSize.Rows[4][1].ToString();
            this.sizeh6.Text = tbSize.Rows[5][1].ToString();
            this.sizeh7.Text = tbSize.Rows[6][1].ToString();
            this.sizeh8.Text = tbSize.Rows[7][1].ToString();
            this.sizeh9.Text = tbSize.Rows[8][1].ToString();
            this.sizeh10.Text = tbSize.Rows[9][1].ToString();
            this.sizeh11.Text = tbSize.Rows[10][1].ToString();
            this.sizeh12.Text = tbSize.Rows[11][1].ToString();




            //this.sizeh1.DataBindings.Add("Text", rptSizeheader, "SizeColumnName1");
            //this.sizeh2.DataBindings.Add("Text", rptSizeheader, "SizeColumnName2");
            //this.sizeh3.DataBindings.Add("Text", rptSizeheader, "SizeColumnName3");
            //this.sizeh4.DataBindings.Add("Text", rptSizeheader, "SizeColumnName4");
            //this.sizeh5.DataBindings.Add("Text", rptSizeheader, "SizeColumnName5");
            //this.sizeh6.DataBindings.Add("Text", rptSizeheader, "SizeColumnName6");
            //this.sizeh7.DataBindings.Add("Text", rptSizeheader, "SizeColumnName7");
            //this.sizeh8.DataBindings.Add("Text", rptSizeheader, "SizeColumnName8");
            //this.sizeh9.DataBindings.Add("Text", rptSizeheader, "SizeColumnName9");
            //this.sizeh10.DataBindings.Add("Text", rptSizeheader, "SizeColumnName10");
            //this.sizeh11.DataBindings.Add("Text", rptSizeheader, "SizeColumnName11");
            //this.sizeh12.DataBindings.Add("Text", rptSizeheader, "SizeColumnName12");

        }

        private void InitDetailSKUdate()
        {
            poDetails = m.SampleOrderPODetails.ToList<SampleOrderPODetail>();
            List<SampleOrderPODetail> poDetails1 = new List<SampleOrderPODetail>();

            foreach (SampleOrderPODetail item in poDetails)
            {
                SampleOrderPODetail d = poDetails1.Find(delegate(SampleOrderPODetail d1)
                {
                    return (d1.Color == item.Color && d1.Cup == item.Cup && d1.Price == item.Price);
                });
                if (d == null)
                {
                    item.Amount = item.CostAmount;
                    poDetails1.Add(item);
                }
                else
                {
                    d.Amount += item.CostAmount;
                }
            }
            foreach (SampleOrderPODetail item in poDetails1)
            {
                List<SampleOrderPODetail> ds = poDetails.FindAll(delegate(SampleOrderPODetail d1)
                {
                    return (d1.Color == item.Color && d1.Cup == item.Cup && d1.Price == item.Price);
                });
                if (ds != null)
                {
                    foreach (SampleOrderPODetail item1 in ds)
                    {
                        item1.Amount = item.Amount;
                    }
                }
            }
        }

        private void bindRptDataSource()
        {
            //MIDcDataContext aa = new MIDcDataContext();
            // aa.MIDC_SampleOrderPODetailSelect(
            //this.sizeh1.DataBindings.Add("Text", rptSizeheader, "SizeColumnName1");
            //this.sizeh2.DataBindings.Add("Text", rptSizeheader, "SizeColumnName2");
            //this.sizeh3.DataBindings.Add("Text", rptSizeheader, "SizeColumnName3");
            //this.sizeh4.DataBindings.Add("Text", rptSizeheader, "SizeColumnName4");
            //this.sizeh5.DataBindings.Add("Text", rptSizeheader, "SizeColumnName5");
            //this.sizeh6.DataBindings.Add("Text", rptSizeheader, "SizeColumnName6");
            //this.sizeh7.DataBindings.Add("Text", rptSizeheader, "SizeColumnName7");
            //this.sizeh8.DataBindings.Add("Text", rptSizeheader, "SizeColumnName8");
            //this.sizeh9.DataBindings.Add("Text", rptSizeheader, "SizeColumnName9");
            //this.sizeh10.DataBindings.Add("Text", rptSizeheader, "SizeColumnName10");
            //this.sizeh11.DataBindings.Add("Text", rptSizeheader, "SizeColumnName11");
            //this.sizeh12.DataBindings.Add("Text", rptSizeheader, "SizeColumnName12");

            //this.rptSampleOrderPOSKUSub1.DataSource = m.SampleOrderPODetails;//rptSizeList;


            this.mCompany.DataBindings.Add("Text", m, "SupplierName");
            this.mAddress.DataBindings.Add("Text", m, "SupplierAddress");
            this.mAttn.DataBindings.Add("Text", m, "SupplierAttn");
            this.mFaxNo.DataBindings.Add("Text", m, "SupplierFax");
            this.mPaymentTerm.DataBindings.Add("Text", m, "PaymentTerm");
            this.mDeliveryTerm.DataBindings.Add("Text", m, "DeliveryTerm");
            this.mShipmentMode.DataBindings.Add("Text", m, "ShipmentMode");
            this.mDeliveryDate.DataBindings.Add("Text", m, "DeliveryDate");
            this.mDeliveryDate.DataBindings["Text"].FormatString = "{0:yyyy'/'MM'/'dd}";
            this.mContractPerson.DataBindings.Add("Text", m, "ContractPerson");
            this.mCustomer.DataBindings.Add("Text", m, "Customer");
            this.mCommodityCode.DataBindings.Add("Text", m, "CommodityCode");
            this.mCommodity.DataBindings.Add("Text", m, "Commodity");
            this.mSupplierWidth.DataBindings.Add("Text", m, "SupplierWidth");
            this.mPONO.DataBindings.Add("Text", m, "SampleOrderPONo");
            this.mPODate.DataBindings.Add("Text", m, "PO_Date");
            this.mPODate.DataBindings["Text"].FormatString = "{0:yyyy'/'MM'/'dd}";

            //this.mQtyUnit.Text = m.MIDcDetail.SupplierUnit;
            //this.mPriceCurrent.Text = m.MIDcDetail.Currency;
            //this.mAmountCurrent.Text = m.MIDcDetail.Currency;

            //this.mTotalAmount.Text = m.MIDcDetail.Currency + " " + sumAmount.ToString();
            //this.totalAmount.Text = sumAmount.ToString();
            //if (m.MIDcDetail.SupplierUnit.ToUpper().Trim() == m.MIDcDetail.PHUnit.ToUpper().Trim())
            //    this.totalQty.Text = sumQuantity.ToString();
            //else
            //    this.totalQty.Text = sumQuantity.ToString() + "\n" + "(appr." + sumPhQuantity.ToString("0.00") + " " + m.MIDcDetail.PHUnit + ")";

        }


        private int DetailSizeSort(SampleOrderPODetail x, SampleOrderPODetail y)
        {
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
