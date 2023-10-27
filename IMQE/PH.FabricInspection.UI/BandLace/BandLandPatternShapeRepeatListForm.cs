using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI.BandLace
{
    public partial class BandLandPatternShapeRepeatListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BandLandPatternShapeRepeatListForm()
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
