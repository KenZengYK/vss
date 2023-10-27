using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Data.Linq;

namespace PH.LWPM.UI.PI
{
    public partial class PIHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public PIHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            if ((this.BindingSource.Current as PIHeader).PIDetails.Count() == 0)
            {
                this.piDetailListForm1.DataSource = typeof(PIDetail);
            }
            else
            {
                this.piDetailListForm1.DataSource = (this.BindingSource.Current as PIHeader).PIDetails.OrderBy(p => p.SortID);
            }

            if ((this.BindingSource.Current as PIHeader).PIDetail_OtherItems.Count() == 0)
            {
                this.piDetail_OtherItemListForm1.DataSource = typeof(PIDetail_OtherItem);
            }
            else
            {
                PIHeader piHeader = this.BindingSource.Current as PIHeader;
                this.piDetail_OtherItemListForm1.DataSource = piHeader.PIDetail_OtherItems.OrderBy(p => p.SortID);
                this.piDetail_OtherItemListForm1.CurrentPIHeader = piHeader;
            }


            this.cbPONO.Properties.Items.Clear();
            this.cbPONO.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).POHeaders.Select(p => p.PONO).ToList());

            base.DataBind();
        }


        private void cbPONO_SelectedValueChanged(object sender, EventArgs e)
        {
            GetPOInfoToPI(this.cbPONO.EditValue.ToString());
        }


        void GetPOInfoToPI(string APONO)
        {
            RAPLQDataContext db = (this.DataContext as RAPLQDataContext);
            POHeader poHeader = db.POHeaders.FirstOrDefault(p => p.PONO == APONO);
            PIHeader piHeader = this.BindingSource.Current as PIHeader;

            piHeader.PONO = APONO;
            piHeader.VendorCode = poHeader.VendorCode;
            piHeader.SellerCode = poHeader.BuyerCode;
            piHeader.BuyerCode = "PYBD";
            piHeader.FinalVendorCode = poHeader.FinalVendorCode;

            piHeader.ShipMode = poHeader.TransitMode;

            piHeader.Reference = db.Vendors.FirstOrDefault(p => p.Code == poHeader.FinalVendorCode).Name_EN;
            piHeader.Remark = poHeader.AmountRemark;

            piHeader.IncotermTerm = poHeader.Incoterms;
            piHeader.PaymentTerm = poHeader.PaymentTerm;
            piHeader.OriginCountry = GetOriginCountry(poHeader.SpecialNote);

            this.piDetailListForm1.BindingSource.Clear();
            piHeader.PIDetails.Clear();
            foreach (var poDetail in poHeader.PODetails.OrderBy(p => p.SortID))
            {
                PIDetail piDetail = (PIDetail)this.piDetailListForm1.BindingSource.AddNew();
                piDetail.OrderLine = poDetail.OrderLine;
                piDetail.SortID = poDetail.SortID;
                piDetail.Item = poDetail.SortID;
                piDetail.Brand = poDetail.Brand.Trim();
                piDetail.ModelNo = poDetail.ModelNo.Trim();

                if (poHeader.POType == 0)
                {
                    piDetail.Name = db.Machines.FirstOrDefault(p => p.Type1 == poDetail.MCType).Type2;
                }
                else if (poHeader.POType == 1)
                {
                    piDetail.Name = db.ItemTools.FirstOrDefault(p => p.ItemCode == poDetail.ItemCode).Item_EN;
                }
                piDetail.HSCode = poDetail.HSCode;
                piDetail.Qty = poDetail.Qty;
                piDetail.UnitPrice = poDetail.UnitPrice;
                piDetail.Description = piDetail.CalDescription;
                piHeader.PIDetails.Add(piDetail);
            }

            foreach (var poDetailOtherItem in poHeader.PODetail_OtherItems.OrderBy(p => p.SortID))
            {
                PIDetail_OtherItem piDetailOtherItem = (PIDetail_OtherItem)this.piDetail_OtherItemListForm1.BindingSource.AddNew();
                piDetailOtherItem.SortID = poDetailOtherItem.SortID;
                piDetailOtherItem.CarriageDescription = poDetailOtherItem.CarriageDescription;
                piDetailOtherItem.Description = poDetailOtherItem.Description;
                piDetailOtherItem.Amount = poDetailOtherItem.Amount;
                piHeader.PIDetail_OtherItems.Add(piDetailOtherItem);
            }
        }

        string GetOriginCountry(string ASpecialNote)
        {
            if (string.IsNullOrEmpty(ASpecialNote))
            {
                return "";
            }

            string[] Strs = ASpecialNote.Split(new string[] { ": ", "： ", "：", ":" }, StringSplitOptions.RemoveEmptyEntries);
            return (Strs.Count() > 0) ? Strs[Strs.Count() - 1] : "";
        }
    }
}
