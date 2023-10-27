
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleSampleProgressSheetDetailForm : PH.Platform.UI.CS.UI2.DetailForm //PH.UI.UI2.ChildDetailForm
    {
        public StyleSampleProgressSheetDetailForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.textEdit1.Enabled = false;
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit2.Enabled = false;
            this.textEdit2.Properties.ReadOnly = true;
        }

                 
    }
}
