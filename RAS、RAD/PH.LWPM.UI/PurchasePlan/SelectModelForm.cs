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
    public partial class SelectModelForm : Form
    {
        public SelectModelForm()
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsModel.DataSource = db.McBrands;
        }

        public string Model
        {
            get
            {
                return (this.bsModel.Current as PH.LWPM.BO.McBrand).BrandName;
            }
        }
    }
}
