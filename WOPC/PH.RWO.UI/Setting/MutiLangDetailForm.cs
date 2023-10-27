using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class MutiLangDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public MutiLangDetailForm()
        {
            InitializeComponent();
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();

            columnNameTextEdit.Enabled = langIDTextEdit.Enabled = false;
        }
    }
}
