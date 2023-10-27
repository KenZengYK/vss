using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class McStyleListForm : ListForm
    {
        public McStyleListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(McStyleDetailForm).FullName;


            if (!DesignMode)
            {
                PH.LineBalanceII.BO.LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();
                this.DataContext = context;
                this.BindingSource.DataSource = from c in context.BondingMcStyles select c;


            }


        }
    }
}
