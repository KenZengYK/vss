using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.HDO.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.HDO.UI
{
    public partial class HDOInvoiceListFrm : ListForm
    {
        public HDOInvoiceListFrm()
        {
            InitializeComponent();
           // this.AllowGridEdit = true;
        }

        public override void DataBind()
        {
            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.HDOInvoices;
            //this.EditorTypeName = typeof(HDOInvoiceDetialFrm).FullName;
            base.DataBind();
            this.AllowAddRow = true;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
        }

        public override void OnClickSave()
        {
            
            base.OnClickSave();
        }
        
    }
}
