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
namespace PH.LWPM.UI.WF
{
    public partial class WFCarEfencyListFrm : ListForm
    {
        public WFCarEfencyListFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //RAPLQDataContext Context = ContextBuilder.CreateContext<RAPLQDataContext>();
            //this.DataContext = Context;
            //this.BindingSource.DataSource = Context.CarEfficiencies;
            //this.EditorTypeName = typeof(WFCarEfencyDetialFrm).FullName;
            //base.DataBind();
        }
    }
}


