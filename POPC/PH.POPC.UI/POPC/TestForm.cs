using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;

namespace PH.POPC.UI.POPC
{
    public partial class TestForm : DevExpress.XtraEditors.XtraForm
    {
        public TestForm(POColorSizeDetail APOColorSizeDetail)
        {
            InitializeComponent();

            this.bindingSource1.DataSource = APOColorSizeDetail;
            this.bindingSource2.DataSource = APOColorSizeDetail.POChangesMonitors;
        }
    }
}