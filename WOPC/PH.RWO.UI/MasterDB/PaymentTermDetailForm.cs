using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI.MasterDB
{
    public partial class PaymentTermDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public PaymentTermDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            PaymentTerm obj = this.BindingSource.Current as PaymentTerm;
            paymentTermsDetailListForm1.BindingSource.DataSource = obj.PaymentTermsDetails;
        }
    }
}
