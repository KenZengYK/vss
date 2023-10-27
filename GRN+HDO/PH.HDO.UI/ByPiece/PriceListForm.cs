using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.Platform.BO;
using PH.PHGDB2.BO;

namespace PH.HDO.UI
{
    public partial class PriceListForm : ListForm
    {
        public PriceListForm()
        {
            InitializeComponent();

            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPiece_Prices;
            this.EditorTypeName = typeof(PriceDetialForm).FullName;
            base.DataBind();
        }

        public int Flag;
        public PriceListForm(string Flag)
        {
            InitializeComponent();

            this.Flag = Convert.ToInt32(Flag);
            if (this.Flag == 1)
            {
                this.xrELWSAH.Visible=this.xrELWSAHPrice.Visible = true;
                this.xrELWSAH.VisibleIndex = 4;
                this.xrELWSAHPrice.VisibleIndex = 5;
            }
           
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPiece_Prices.Where(p=>p.Flag==this.Flag);
            this.EditorTypeName = typeof(PriceDetialForm).FullName;
            base.DataBind();
        }

    }
}
