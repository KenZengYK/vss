using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;


namespace PH.MIDc.UI
{
    public partial class CupDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CupDetailListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(CupDetailDetailForm).FullName;
            this.RowChangeAutoSave = false;
        }
    }
}
