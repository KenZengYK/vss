using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.LWPM.BO;
namespace PH.LWPM.UI.McBrand
{
    public partial class BrandPListFrm : ListForm
    {
        public BrandPListFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //McBrandList Context = new McBrandList();
            //this.BindingSource.DataSource = Context.GetAllData();
            //this.DataContext = Context.CurrentDataContext;

            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).McBrands.OrderBy(p => p.BrandName);
            this.EditorTypeName = typeof(BrandChildFrm).FullName;
        }

    }
}
