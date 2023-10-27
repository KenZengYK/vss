using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.UI.Setup
{
    public partial class DataDictionaryDetailForm : PH.Platform.Misc.UI.DataDictionary.DataDictionaryDetailForm
    {
        public DataDictionaryDetailForm()
        {
            InitializeComponent();

            InvisibleControl("dataTypeLabel");
            InvisibleControl("lueDataType");

        }

        private void InvisibleControl(string name)
        {
            Control[] cs = this.Controls.Find(name, true);
            foreach (Control c in cs)
            {
                if (c != null) c.Visible = false;
            }
        }
    }
}
