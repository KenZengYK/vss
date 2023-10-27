using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
namespace PH.LineBalanceII.UI
{
    public partial class MachineCodeListFrm : ListForm
    {
        public MachineCodeListFrm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(MachineCodeDetialFrm).FullName;
        }
        public override void DataBind()
        {
            base.DataBind();
            LineBalanceIIDataContext context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            this.DataContext=context;
            this.BindingSource.DataSource=context.MachineCodeMatches;
        }
    }
}
