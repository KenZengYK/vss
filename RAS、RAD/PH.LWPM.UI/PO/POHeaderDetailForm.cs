using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class POHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {

        public int POType
        {
            get
            {
                return (this.PrevForm as POHeaderListForm).POType;
            }
        }

        public POHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            POHeader CurrentPOHeader = this.BindingSource.Current as POHeader;

            this.poDetailMachineryListForm.DataSource = typeof(PODetail);
            if (this.POType == 0 && CurrentPOHeader.PODetails.Where(p => !(p.IsSupplement ?? false)).Count() > 0)
            {
                this.poDetailMachineryListForm.DataSource = CurrentPOHeader.PODetails.Where(p => !(p.IsSupplement ?? false)).OrderBy(p => p.SortID);
            }

            this.poDetailSupplementListForm.DataSource = typeof(PODetail);
            if (this.POType == 0 && CurrentPOHeader.PODetails.Where(p => p.IsSupplement ?? false).Count() > 0)
            {
                this.poDetailSupplementListForm.DataSource = CurrentPOHeader.PODetails.Where(p => p.IsSupplement ?? false).OrderBy(p => p.SortID);
            }

            if (this.POType == 1 && CurrentPOHeader.PODetails.Count() > 0) //Equiqment
            {
                this.poDetailSupplementListForm.DataSource = CurrentPOHeader.PODetails.OrderBy(p => p.SortID);
            }

            this.poDetailMachineryListForm.POType = 0;
            this.poDetailMachineryListForm.IsSupplement = false;

            this.poDetailSupplementListForm.POType = 1;
            this.poDetailSupplementListForm.IsSupplement = true;

            this.poDetail_OtherItemListForm1.DataSource = typeof(PODetail_OtherItem);
            if (CurrentPOHeader.PODetail_OtherItems.Count > 0)
            {
                this.poDetail_OtherItemListForm1.DataSource = CurrentPOHeader.PODetail_OtherItems.OrderBy(p => p.SortID);
            }

            this.poDetailMachineryListForm.VendorCode = this.txtVendorCode.EditValue.ToString();
            this.poDetailMachineryListForm.CurrentPOHeader = CurrentPOHeader;

            this.poDetailSupplementListForm.VendorCode = this.txtVendorCode.EditValue.ToString();
            this.poDetailSupplementListForm.CurrentPOHeader = CurrentPOHeader;

            this.poDetail_OtherItemListForm1.CurrentPOHeader = CurrentPOHeader;

            RAPLQDataContext db = this.DataContext as RAPLQDataContext;

            string VendorType = this.POType == 0 ? "Machinery" : "Enquipment";
            this.txtVendorCode.Properties.DataSource = db.Vendors.Where(p => p.Flag == VendorType);
            this.txtVendorCode.Properties.DisplayMember = "Name_EN";
            this.txtVendorCode.Properties.ValueMember = "Code";

            this.txtBuyerCode.Properties.DataSource = db.Buyers;
            this.txtBuyerCode.Properties.DisplayMember = "Name_EN";
            this.txtBuyerCode.Properties.ValueMember = "Code";

            this.txtPOStatus.Properties.DataSource = db.BaseCodes.Where(p => p.Type == "POStatus");
            this.txtPOStatus.Properties.DisplayMember = "Name";
            this.txtPOStatus.Properties.ValueMember = "Code";

            base.DataBind();

            //POType = 0為採購Machine, POType = 1為採購Equipment
            //this.lbProjectionDate.Visible = this.POType == 0;
            //this.txtProjectionDate.Visible = this.POType == 0;

            this.xtraTabPage1.PageVisible = this.POType == 0;
            this.tbSupplement.Text = this.POType == 0 ? "Supplement" : "Detail";
        }

        protected override void SaveCurrent()
        {

            if (string.IsNullOrEmpty(this.txtPONO.Text))
            {
                MessageBox.Show("請錄入PONO", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            POHeader obj = this.BindingSource.Current as POHeader;
            if (obj != null)
            {
                obj.POType = this.POType;

                if (string.IsNullOrEmpty(obj.AmendNo))
                {
                    obj.AmendNo = "1";
                }
            }
            base.SaveCurrent();
        }

        private void txtBuyerCode_EditValueChanged(object sender, EventArgs e)
        {
            Buyer buyer = (this.DataContext as RAPLQDataContext).Buyers.FirstOrDefault(p => p.Code == this.txtBuyerCode.EditValue.ToString());
            if (buyer != null)
            {
                this.txtCoordinator.Text = buyer.Attn;
            }
        }

        private void txtVendorCode_EditValueChanged(object sender, EventArgs e)
        {
            Vendor vendor = (this.DataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.txtVendorCode.EditValue.ToString());
            if (vendor != null)
            {
                this.txtAttn.EditValue = vendor.Attn;
                this.txtEmail.EditValue = vendor.Email;
                this.txtTel.EditValue = vendor.Tel;
                this.txtFax.EditValue = vendor.Fax;
                this.txtPaymentTerm.EditValue = vendor.PaymentTerm;
                this.txtIncoterms.EditValue = vendor.Incoterms;
            }
        }

    }
}
