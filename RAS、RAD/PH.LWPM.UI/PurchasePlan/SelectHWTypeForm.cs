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
    public partial class SelectHWTypeForm : Form
    {
        public SelectHWTypeForm()
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsHWType.DataSource = db.BaseCodes.Where(p => p.Type == "METHODTYPE");
        }

        public string HWTypeCode
        {
            get
            {
                return (this.bsHWType.Current as BaseCode).Code;
            }
        }
    }
}
