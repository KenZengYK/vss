using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LineBalanceII.BO;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class OperListForm : ListForm
    {
        public OperListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(OperDetailForm).FullName;


            if (!DesignMode)
            {
                LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<LineBalanceIIDataContext>();
                this.DataContext = context;
                this.BindingSource.DataSource = from c in context.BondingOpers select c;


            }


        }
    }
}
