using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC1.UI
{
    public partial class PivotTableForm : DevExpress.XtraEditors.XtraForm
    {
        public PivotTableForm(object ADataSoruce)
        {
            InitializeComponent();
            this.pivotGridControl.DataSource = ADataSoruce;
        }

      
        private void btnPrint_Click(object sender, EventArgs e)
        {
            //this.pivotGridControl.OptionsPrint.PrintDataHeaders = DevExpress.Utils.DefaultBoolean.True;
            //this.pivotGridControl.ShowPrintPreview();
            //rptPivotTable report = new rptPivotTable(this.pivotGridControl.DataSource, this._Master);
            //report.ShowPreview();
        }
    }
}
