using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.UI
{
    public partial class CustomerCodeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //private PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public CustomerCodeListForm()
        {
            InitializeComponent();
            
            //this.DataContext = context;
            //this.DataSource =  from v in context.CustomerCodes
            //                  select v;
            //this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
        }
        public override void DataBind()
        {
            CustomerCodeList getcontext = new CustomerCodeList();
            this.DataContext = getcontext.CurrentDataContext;
            this.BindingSource.DataSource = getcontext.GetAllData();
            base.DataBind();
            this.EditorTypeName = typeof(CustomerCodeDetailForm).FullName;
        }
    }
}
