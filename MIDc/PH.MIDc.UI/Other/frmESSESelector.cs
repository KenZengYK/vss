using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.MIDc.UI.Other
{
    public partial class frmESSESelector : DevExpress.XtraEditors.XtraForm
    {
        public frmESSESelector()
        {
            InitializeComponent();
        }
        public string ProjectBegin { get { return this.teFrom.Text; } }
        public string ProjectEnd { get { return this.teTo.Text; } }
    }
}