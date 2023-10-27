using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LWPM.UI.MasterDB
{
    public partial class DepartmentalPrintSetupForm : Form
    {
        public DepartmentalPrintSetupForm()
        {
            InitializeComponent();
        }

        public bool CheckHK { get { return this.chkHK.Checked; } }
        public bool CheckSL { get { return this.chkSL.Checked; } }
        public bool CheckRX { get { return this.chkRX.Checked; } }
        public bool CheckCL { get { return this.chkCL.Checked; } }
        //public bool CheckGG { get { return this.chkGG.Checked; } }
    }
}
