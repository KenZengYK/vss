using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI.MasterDB
{
    public partial class PaymentTermsDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PaymentTermsDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.AllowGridEdit = true;
        }
    }
}
