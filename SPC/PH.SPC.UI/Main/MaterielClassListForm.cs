using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class MaterielClassListForm : PH.UI.UI1.SingleListForm
    {
        public MaterielClassListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(MaterielClassDetailForm).FullName;
        }

        private void MaterielClassListForm_Load(object sender, EventArgs e)
        {
            this.DataContext = DBController.SPCDB;
            this.DataSource = from a in DBController.SPCDB.MaterielClasses select a;
        }
    }
}
