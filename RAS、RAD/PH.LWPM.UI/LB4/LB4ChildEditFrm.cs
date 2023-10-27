using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.LB4
{
    public partial class LB4ChildEditFrm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public LB4ChildEditFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {           
            base.DataBind();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            workerIdTextBox.ReadOnly = true;
            workerNameTextBox.ReadOnly = true;
            operationSNTextBox.ReadOnly = true;
            this.operationNameTextBox.ReadOnly = true;
            bestMTMTextBox.ReadOnly = true;
            gSD_SAHTextBox.ReadOnly = true;
            didTime_ByWfTextBox.ReadOnly = true;
            didTime_InFacTextBox.ReadOnly = true;
            mtm_PastTextBox.ReadOnly = true;
        }
    }
}
