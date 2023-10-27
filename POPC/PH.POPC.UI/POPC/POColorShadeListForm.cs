using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.POPC
{
    public partial class POColorShadeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POColorShadeListForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.POColorShades;
        }
    }
}
