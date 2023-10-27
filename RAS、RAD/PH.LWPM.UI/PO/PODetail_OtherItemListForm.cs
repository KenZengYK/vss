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

namespace PH.LWPM.UI.PO
{
    public partial class PODetail_OtherItemListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POHeader CurrentPOHeader { get; set; }
        public PODetail_OtherItemListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(PODetail_OtherItemDetailForm).FullName;
        }
    }
}
