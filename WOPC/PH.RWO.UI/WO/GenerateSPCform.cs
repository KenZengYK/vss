using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.RWO.UI
{
    public partial class GenerateSPCform : DevExpress.XtraEditors.XtraForm
    {
        public GenerateSPCform()
        {
            InitializeComponent();
        }
        public GenerateSPCform(string caption, string text, PH.SPC.BO.Style style)
            : this()
        {
            this.Text = caption;
            this.label1.Text = text;
            this._style = style;

        }
        PH.SPC.BO.Style _style;



        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (_style == null) return;
            foreach (PH.SPC.BO.StyleSort sort in _style.StyleSorts)
            {
                foreach (PH.SPC.BO.StyleSortEdition edit in sort.StyleSortEditions)
                {
                    Global.PrintWorkNoteReport(edit);
                }
            }
        }
    }
}