using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.Platform.BO;

namespace PH.SPC.UI
{
    public partial class GroupCEPMarketingListForm1 : PH.Platform.UI.CS.UI2.ListForm
    {
        private SampleOrder _sampleOrder;
        private string _customer = "";

        public GroupCEPMarketingListForm1()
        {
            InitializeComponent();
        }

        public GroupCEPMarketingListForm1(string paraArg)
        {
            InitializeComponent();
            this._customer = paraArg;

        }

        public override void DataBind()
        {
            base.DataBind();
            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            this.DataContext = context;

            this.BindingSource.DataSource = from c in context.SPCCustomers where c.SampleOrderID == this._sampleOrder.SampleOrderID select c;
            
           
        }

    }
}
