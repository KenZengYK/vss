using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PI
{
    public partial class PIDetail_OtherItemDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PIDetail_OtherItemDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            PIDetail_OtherItem obj = this.BindingSource.Current as PIDetail_OtherItem;
            if (obj != null)
            {
                PIHeader poHeader = (this.ListForm as PIDetail_OtherItemListForm).CurrentPIHeader;
                obj.PINO = poHeader.PINO;
            }
            base.SaveCurrent();
        }
    }
}
