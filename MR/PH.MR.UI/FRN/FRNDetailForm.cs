using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;

namespace PH.MR.UI.FRN
{
    public partial class FRNDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public FRNDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            edtProjectNo.ReadOnly = true;
            edtStyleNo.ReadOnly = true;
            edtItemCode.ReadOnly = true;
            edtColorCode.ReadOnly = true;
            edtSupplierItem.ReadOnly = true;
            edtColor_Qty.ReadOnly = true;
            edtWorkOrder.ReadOnly = true;
            edtWastage_Per.Properties.ReadOnly = true;
            edtWO_Qty.ReadOnly = true;
            edtDiff_Qty.Properties.ReadOnly = true;
            edtDiff_Per.Properties.ReadOnly = true;
            edtFRN_Total.Properties.ReadOnly = true;
            edtWastage_Qty.Properties.ReadOnly = true;
            edtOriginal_YY.Properties.ReadOnly = true;
            edtErpQty.Properties.ReadOnly = true;
            //edtFRN_YY.Properties.ReadOnly = true;

            this.dtpEx_Fty.Enabled = false;
            this.dtpDeliveryDate.Enabled = false;
        }

    }
}
