using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LWPM.UI.MasterDB
{
    public partial class HWPageForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public HWPageForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.tcHW.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
        }

        private void cbChoiceType_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.tcHW.SelectedTabPageIndex = this.cbChoiceType.SelectedIndex;
        }
    }
}
