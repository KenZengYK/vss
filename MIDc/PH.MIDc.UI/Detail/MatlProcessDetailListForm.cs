using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI 
{
    public partial class MatlProcessDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MatlProcessDetailListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(MatlProcessDetailDetailForm).FullName;
            this.RowChangeAutoSave = false;
        }
    }
}
