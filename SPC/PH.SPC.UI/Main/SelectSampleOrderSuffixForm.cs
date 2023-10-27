using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.SPC.BO;
using PH.Platform.BO;

namespace PH.SPC.UI.Main
{
    public partial class SelectSampleOrderSuffixForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectSampleOrderSuffixForm(string ASampleOrderID, string ASampleType)
        {
            InitializeComponent();

            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();
            this.bindingSource.DataSource = db.SampleOrders
                .Where(p => !(p.IsComplete ?? false) && p.SampleOrderID == ASampleOrderID && p.SampleType == ASampleType)
                .OrderByDescending(p => p.OID);
        }

        public SampleOrder SelectSampleOrder
        {
            get
            {
                return this.bindingSource.Current as SampleOrder;
            }
        }
    }
}