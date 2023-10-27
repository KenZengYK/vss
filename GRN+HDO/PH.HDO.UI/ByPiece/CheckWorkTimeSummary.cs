using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.HDO.UI.ByPiece
{
    public partial class CheckWorkTimeSummary : PH.Platform.UI.CS.UI0.BlankForm
    {
        public CheckWorkTimeSummary()
        {
            InitializeComponent();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {


            WorkTimeReport rpt1 = new WorkTimeReport();
                rpt1.ShowPreview();

            
        }
    }
}
