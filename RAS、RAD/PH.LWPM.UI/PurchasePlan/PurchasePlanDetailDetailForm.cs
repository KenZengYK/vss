using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PurchasePlan
{
    public partial class PurchasePlanDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PurchasePlanDetailDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.amount1SpinEdit.Properties.ReadOnly = true;
            this.amount2SpinEdit.Properties.ReadOnly = true;
            this.amount3SpinEdit.Properties.ReadOnly = true;
            this.amount4SpinEdit.Properties.ReadOnly = true;
        }

        public PurchasePlanDetail CurrentPurchasePlanDetail
        {
            get
            {
                return this.BindingSource.Current as PurchasePlanDetail;
            }
        }

        private void txtVendorCode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectVendorForm frmSelectVendor = new SelectVendorForm();
            if (frmSelectVendor.ShowDialog() == DialogResult.OK)
            {
                CurrentPurchasePlanDetail.VendorCode = frmSelectVendor.VendorCode;
            }
        }

        private void txtSellerCode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectSellerForm frmSelectSeller = new SelectSellerForm();
            if (frmSelectSeller.ShowDialog() == DialogResult.OK)
            {
                CurrentPurchasePlanDetail.SellerCode = frmSelectSeller.SellerCode;
            }
        }

        private void txtHWType_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectHWTypeForm frmSelectHWType = new SelectHWTypeForm();
            if (frmSelectHWType.ShowDialog() == DialogResult.OK)
            {
                CurrentPurchasePlanDetail.HWTypeCode = frmSelectHWType.HWTypeCode;
            }
        }

        private void txtModel_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectModelForm frmSelectModel = new SelectModelForm();
            if (frmSelectModel.ShowDialog() == DialogResult.OK)
            {
                CurrentPurchasePlanDetail.Model = frmSelectModel.Model;
            }
        }

        protected override void SaveCurrent()
        {
            if (!CheckInputData())
            {
                return;
            }

            base.SaveCurrent();
        }

        public bool CheckInputData()
        {
            this.BindingSource.EndEdit();

            PurchasePlanDetail obj = this.BindingSource.Current as PurchasePlanDetail;
            int ShipmentCount = obj.ShipmentCount ?? 0;

            if (ShipmentCount == 0)
            {
                MessageBox.Show("Please input #of Shpt.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            int TotalQty = obj.TotalQty ?? 0;
            if (TotalQty == 0)
            {
                MessageBox.Show("Please input Ttl Qty.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (((obj.Qty1 ?? 0) + (obj.Qty2 ?? 0) + (obj.Qty3 ?? 0) + (obj.Qty4 ?? 0)) > TotalQty)
            {
                MessageBox.Show("The 4 shipment total Qty can't greater than " + TotalQty.ToString(), "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return true;
        }


    }
}
