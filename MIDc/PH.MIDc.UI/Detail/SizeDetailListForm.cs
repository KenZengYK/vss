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
    public partial class SizeDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SizeDetailListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(SizeDetailDetailForm).FullName;
            this.RowChangeAutoSave = false;

        }

    }
}
