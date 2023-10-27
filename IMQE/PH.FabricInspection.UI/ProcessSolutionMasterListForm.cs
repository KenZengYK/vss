using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    public partial class ProcessSolutionMasterListForm : PH.UI.UI2.ParentListForm
    {
        public ProcessSolutionMasterListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ProcessSolutionMasterDetailForm).FullName;
        }
    }
}
