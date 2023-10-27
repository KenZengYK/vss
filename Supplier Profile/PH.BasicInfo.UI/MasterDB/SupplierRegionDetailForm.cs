using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class SupplierRegionDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public SupplierRegionDetailForm()
        {
            InitializeComponent();
            PrepareData();
        }

        void PrepareData()
        {
            transitModeComboBoxEdit.Properties.Items.Clear();
            PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var list = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitMode").Select(p => p.DataCode);
            transitModeComboBoxEdit.Properties.Items.AddRange(list.ToList());
        }

     

    }
}
