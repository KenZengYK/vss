using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class CustomerCodeDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public CustomerCodeDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
           
            this.customerCommissionListForm1.BindingSource.DataSource = (this.BindingSource.Current as PH.RWO.BO.CustomerCode).CustomerCommissions;
            this.packingCategoryListForm1.BindingSource.DataSource = (this.BindingSource.Current as PH.RWO.BO.CustomerCode).CustomerBrandCategories;
            base.DataBind();
            this.customerCommissionListForm1.EditorTypeName = typeof(CustomerCommissionDetailForm).FullName;
            this.packingCategoryListForm1.EditorTypeName = typeof(Setting.PackingCategoryParentChildForm).FullName;
        }
    }
}
