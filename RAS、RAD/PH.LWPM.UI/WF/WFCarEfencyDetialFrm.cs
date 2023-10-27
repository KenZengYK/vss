using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI2;
namespace PH.LWPM.UI.WF
{
    public partial class WFCarEfencyDetialFrm : DetailForm
    {
        public WFCarEfencyDetialFrm()
        {
            InitializeComponent();
        }

        private void WFCarEfencyDetialFrm_Load(object sender, EventArgs e)
        {
            factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Factory != null).Select(S => S.Factory).Distinct().OrderBy(E => E).ToArray());
        }

        private Boolean ValidationSaveCondition(string Id, string Factory) 
        {
            if (Id==string.Empty ) 
            {
                if (MessageBox.Show("Please InPut\" Id！！\"", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information)==DialogResult.OK) 
                { 
                    return true; 
                }
            }
            if (Factory==string.Empty)
            {
                if (MessageBox.Show("Please InPut\" Factory！！\"", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                { 
                    return true;
                }
            }
            return false;
        }

        protected override void OnClickSave()
        {
            if (this.ValidationSaveCondition(idTextEdit.Text.TrimEnd(),factoryComboBoxEdit.Text.TrimEnd() )) return;
            base.OnClickSave();
        }

        protected override void OnClickSaveAndReturn()
        {
            if (this.ValidationSaveCondition( idTextEdit.Text.TrimEnd(),factoryComboBoxEdit.Text.TrimEnd())) return;
            base.OnClickSaveAndReturn();
        }
    }
}
