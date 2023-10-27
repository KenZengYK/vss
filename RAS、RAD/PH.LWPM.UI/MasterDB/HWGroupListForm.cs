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
    public partial class HWGroupListForm : BaseCodeListForm
    {
        public HWGroupListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(PH.LWPM.UI.MC.McClassDetailFrm).FullName;
        }

        public override void OnClickPrint()
        {
            //base.OnClickPrint();
            HWGroupReport frmHWGroup = new HWGroupReport(this.objListGridView.FilteredList());
            frmHWGroup.ShowPreview();
        }
    }
}
