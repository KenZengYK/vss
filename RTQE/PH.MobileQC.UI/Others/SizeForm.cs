using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI
{
    public partial class SizeForm : Form
    {
        public SizeForm(DataTable AShowDataTable)
        {
            InitializeComponent();
            this.gridControl.DataSource = AShowDataTable;
        }
        
    }
}
