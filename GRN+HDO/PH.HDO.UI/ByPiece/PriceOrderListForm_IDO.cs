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
    public partial class PriceOrderListForm_IDO : ListForm
    {
       
        public PriceOrderListForm_IDO()
        {
            InitializeComponent();
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPrice_Order_IDOs;
            this.EditorTypeName=typeof(PriceOrderDetailForm_IDO).FullName;
            base.DataBind();
        }
        public int Flag;
        public PriceOrderListForm_IDO(string Flag)
        {
            InitializeComponent();
            this.Flag = Convert.ToInt32(Flag);
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPrice_Order_IDOs.Where(p=>p.Flag==this.Flag);
            this.EditorTypeName = typeof(PriceOrderDetailForm_IDO).FullName;
            base.DataBind();
        }
    }
}
