using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.MIDc.UI.FG
{
    public partial class UpdateCompositionForm : DevExpress.XtraEditors.XtraForm
    {
        public UpdateCompositionForm()
        {
            InitializeComponent();
        }

        public UpdateCompositionForm(string AComposition)
            : this()
        {
            this.txtComposition.Text = AComposition;
        }

        public string UpdateComposition
        {
            get
            {
                return this.txtUpdateComposition.Text;
            }
        }

    }
}