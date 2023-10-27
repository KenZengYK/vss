using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class CustomerBrandedListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustomerBrandedListForm()
        {
            InitializeComponent(); 

            this.Load += new EventHandler(CustomerBrandedListForm_Load);

        }

        private void CustomerBrandedListForm_Load(object sender, EventArgs e)
        { 
        }

        public override void DataBind()
        {
            this.RowChangeAutoSave = false;
            this.AllowGridEdit = true;

            PH.BasicInfo.BO.BasicInfoDataContext context = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            var aa = from a in context.Customers
                     orderby a.CustomerCode
                     select a;

            this.ricb_update.Items.Clear();
            foreach (PH.BasicInfo.BO.Customer item in aa)
            {
                this.ricb_update.Items.Add(item.CustomerName);
            }
            
            base.DataBind();
        }

    }
}
