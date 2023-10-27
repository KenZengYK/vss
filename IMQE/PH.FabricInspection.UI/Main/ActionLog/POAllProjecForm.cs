using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Main.ActionLog
{
    public partial class POAllProjecForm : DevExpress.XtraEditors.XtraForm
    {
        public POAllProjecForm(string APONO)
        {
            InitializeComponent();

            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            bsProject.DataSource = db.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == APONO);
        }

    }
}