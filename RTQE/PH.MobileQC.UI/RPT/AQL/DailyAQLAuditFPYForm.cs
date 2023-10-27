using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class DailyAQLAuditFPYForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public DailyAQLAuditFPYForm()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            AQLAuditFPYSupplementSheetOfRpt22a SubRpt2 = new AQLAuditFPYSupplementSheetOfRpt22a(DatePeroidTypes.Daily, "SL", "", dateEdit1.DateTime, dateEdit1.DateTime);
            SubRpt2.ShowPreview();
        }
    }
}
