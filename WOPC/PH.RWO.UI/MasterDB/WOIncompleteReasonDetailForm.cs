using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;

namespace PH.RWO.UI.MasterDB
{
    public partial class WOIncompleteReasonDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public WOIncompleteReasonDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary obj = this.BindingSource.Current as Misc_DataDictionary;
            if (obj != null)
            {
                obj.DataType = "PH.WO.IncompleteWOReason";
            }
            base.SaveCurrent();
        }
    }
}
