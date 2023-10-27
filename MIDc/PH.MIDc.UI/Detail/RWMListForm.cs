using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class RWMListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RWMListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(RWMDetailForm).FullName;
            this.RowChangeAutoSave = false;

        }
    }
}
