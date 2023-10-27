using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.PurchasePlan
{
    public partial class SelectVendorForm : Form
    {
        public SelectVendorForm()
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsVendor.DataSource = db.Vendors;
        }

        public string VendorCode
        {
            get
            {
                return (this.bsVendor.Current as Vendor).Code;
            }
        }
    }
}
