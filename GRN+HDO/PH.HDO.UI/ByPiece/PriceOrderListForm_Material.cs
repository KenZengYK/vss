using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;
using PH.Platform.BO;


namespace PH.HDO.UI.ByPiece
{
    public partial class PriceOrderListForm_Material : ListForm
    {
        public PriceOrderListForm_Material()
        {
            InitializeComponent();

            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPrice_Orders;
            this.EditorTypeName = typeof(PriceOrderDetailForm_Material).FullName;
            base.DataBind();
        }

        public int Flag;
        public PriceOrderListForm_Material(string Flag)
        {
            InitializeComponent();

            this.Flag = Convert.ToInt32(Flag);
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPrice_Orders.Where(p=>p.Flag==this.Flag);
            this.EditorTypeName = typeof(PriceOrderDetailForm_Material).FullName;
            base.DataBind();
        }
     
    }
}
