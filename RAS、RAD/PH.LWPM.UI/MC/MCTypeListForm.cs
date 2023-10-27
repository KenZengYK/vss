using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC
{
    public partial class MCTypeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MCTypeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //var McD = (ContextBuilder.CreateContext<RAPLQDataContext>()).Machines.Where(P => P.Id == machineid).Select(S => S.Type).FirstOrDefault();

            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.BaseCodes.Where(p => p.Type == "METHODTYPE");
            this.EditorTypeName = typeof(MCTypeDetailForm).FullName;

            base.DataBind();
        }

    }
}
