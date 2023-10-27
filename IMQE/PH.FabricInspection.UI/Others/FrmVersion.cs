using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    public partial class FrmVersion : Form
    {
        public FrmVersion()
        {
            InitializeComponent();
        }

        private void sBtn_Send2WebSite_Click(object sender, EventArgs e)
        {
            this.Tag = "SendToWeb";
        }

    }
}
