using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    public partial class sBandLandSkewnessBowListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public sBandLandSkewnessBowListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.AllowGridEdit = true;
        }

        public override void SaveData()
        {
            this.objListGridView.PostEditor();
            this.BindingSource.EndEdit();
            base.SaveData();
        }

    }
}
