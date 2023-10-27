using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class POColorShadeUpdate : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POColorShadeUpdate()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            PH.POPC.BO.ColorShade.UpdateErpData();
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            this.pHP10BindingSource.DataSource = context.PHP10s.Where(p => p.UpdateFlag == false);
            this.pHP11BindingSource.DataSource = context.PHP11s.Where(p => p.UpdateFlag == false);
        }
    }
}
