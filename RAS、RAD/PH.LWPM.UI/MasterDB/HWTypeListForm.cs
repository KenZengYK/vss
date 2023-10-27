using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;

namespace PH.LWPM.UI.MasterDB
{
    public partial class HWTypeListForm : BaseCodeListForm
    {
        public HWTypeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(PH.LWPM.UI.MC.MCTypeDetailForm).FullName;
        }

        public override void OnClickPrint()
        {
            //base.OnClickPrint();
            HWTypeReport frmHWType = new HWTypeReport(this.objListGridView.FilteredList());
            frmHWType.ShowPreview();
        }

    }
}
