using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.HSContract
{
    public partial class FrmWoDetail : Form
    {
        public FrmWoDetail(DataTable dt)
        {
            InitializeComponent();
            this.gcDetail.DataSource = dt;
        }
    }
}
