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
    public partial class SelectSellerForm : Form
    {
        public SelectSellerForm()
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsSeller.DataSource = db.Buyers;
        }

        public string SellerCode
        {
            get
            {
                return (this.bsSeller.Current as Buyer).Code;
            }
        }
    }
}
