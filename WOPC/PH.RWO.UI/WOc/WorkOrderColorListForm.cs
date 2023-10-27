using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.RWO.UI.WO;

namespace PH.RWO.UI
{
    public partial class WorkOrderColorListForm : ListForm
    {
        public WorkOrderColorListForm()
        {
            InitializeComponent();

        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(WorkOrderColorDetailForm).FullName;
        }

        private void btnRWOEntranceKey_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderColor woc = this.BindingSource.Current as PH.RWO.BO.WorkOrderColor;
            if (woc == null) return;

            RWO.RWOEntranceKey frm = new PH.RWO.UI.RWO.RWOEntranceKey(woc);
            if (frm.ShowDialog() == DialogResult.OK)
            {

            }

        }
    }
}
