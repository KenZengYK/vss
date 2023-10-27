using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;

namespace PH.MIDc.UI
{
    public partial class PriceHistoryDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PriceHistoryDetailForm()
        {
            InitializeComponent();
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }
 
    }
}
