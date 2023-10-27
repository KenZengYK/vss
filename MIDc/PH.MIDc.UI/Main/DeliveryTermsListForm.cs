using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class DeliveryTermsListForm : PH.UI.UI1.SingleListForm
    {
        public DeliveryTermsListForm()
        {
            InitializeComponent();
            //設置ListForm的編輯介面。
            this.EditorTypeName = typeof(DeliveryTermsDetailForm).FullName;
        }

        private void MIDc_DeliveryTermsListForm_Load(object sender, EventArgs e)
        {
            //在此設置DataSource和context。
            PH.MIDc.BO.MIDcDataContext context = new PH.MIDc.BO.MIDcDataContext();
            this.DataContext = context;
            this.DataSource = from deliveryterms in context.MIDc_DeliveryTerms select deliveryterms;
        }
    }
}
