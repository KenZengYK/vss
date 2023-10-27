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
    public partial class StyleProduceRemarkDetailForm : PH.Platform.UI.CS.UI2.DetailForm//PH.UI.UI2.ChildDetailForm
    {
        public StyleProduceRemarkDetailForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }
        
    }
}
