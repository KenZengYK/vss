using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class PODetail_OtherItemDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PODetail_OtherItemDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            PODetail_OtherItem obj = this.BindingSource.Current as PODetail_OtherItem;
            if (obj != null)
            {
                POHeader poHeader = (this.ListForm as PODetail_OtherItemListForm).CurrentPOHeader;
                obj.PONO = poHeader.PONO;
                obj.AmendNo = poHeader.AmendNo;
            }
            base.SaveCurrent();
        }

    }
}
