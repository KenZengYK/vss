using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;

namespace PH.POPC.UI.MasterDB
{
    public partial class Level6CmplLogDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public Level6CmplLogDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary obj = this.BindingSource.Current as Misc_DataDictionary;
            if (obj != null)
            {
                obj.DataType = "PH.POPC.Level6Status";
            }
            base.SaveCurrent();
        }
    }
}
