using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC1.UI
{
    public partial class CALDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CALDetailForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

    }
}
