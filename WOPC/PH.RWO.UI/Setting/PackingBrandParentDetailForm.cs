using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.RWO.BO;


namespace PH.RWO.UI.Setting
{
    public partial class PackingBrandParentDetailForm : ParentChildForm 
    {
        public PackingBrandParentDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            //this.packingCategoryListForm1.BindingSource.DataSource = (this.BindingSource.Current as CustomerBrand).CustomerBrandCategories;
            base.DataBind();
            //this.packingCategoryListForm1.EditorTypeName =typeof(PackingCategoryParentChildForm).FullName ;
        }

        private void customerCodeLabel_Click(object sender, EventArgs e)
        {

        }

      
    }
}
