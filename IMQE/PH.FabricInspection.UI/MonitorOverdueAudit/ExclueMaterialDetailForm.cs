using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI.MonitorOverdueAudit
{
    public partial class ExclueMaterialDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ExclueMaterialDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            if (this.IsNew && (string.IsNullOrEmpty(flagComboBoxEdit.Text)))
            {
                flagComboBoxEdit.SelectedIndex = 0;
            }
        }

    }
}
