using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class PrintMIDcPOReportsDialog : Form
    {
        private string _PONO = null;
        private string _CONO = null;
        public PrintMIDcPOReportsDialog(string CONO,string PONO)
        {
            InitializeComponent();
            _PONO = PONO;
            _CONO = CONO;
        }

        private void PrintMIDcPOReportsDialog_Load(object sender, EventArgs e)
        {
            this.poNewReportMIDc1.jobNewMIDcPOReport1.editCONO.EditValue = _CONO;
            this.poNewReportMIDc1.jobNewMIDcPOReport1.editPONO.EditValue = _PONO;
        }


 
    }
}
