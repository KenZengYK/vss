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
    public partial class PIDetail_OtherItemListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PIHeader CurrentPIHeader { get; set; }
        public PIDetail_OtherItemListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(PIDetail_OtherItemDetailForm).FullName;
        }
    }
}
