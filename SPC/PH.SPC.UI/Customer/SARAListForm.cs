using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.UI
{
    public partial class SARAListForm : PH.UI.UI1.SingleListForm
    {
        public SARAListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(SARADetailForm).FullName;
        }

        private void LARDListForm_Load(object sender, EventArgs e)
        {
            PH.SPC.BO.SPCDataContext context = new PH.SPC.BO.SPCDataContext();
            this.DataContext = context;
            this.CurBindingSource.DataSource = from c in context.SARAs select c;
        }
    }
}
