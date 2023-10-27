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
    public partial class TransitPointAreaDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public TransitPointAreaDetailForm()
        {
            InitializeComponent();

            PrepareData();
        }

        void PrepareData()
        {
            transitModeTextEdit.Properties.Items.Clear();
            PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var list = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitMode").Select(p => p.DataCode);
            transitModeTextEdit.Properties.Items.AddRange(list.ToList());
        }
    }
}
