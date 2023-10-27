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

namespace PH.LWPM.UI.LB4
{
    public partial class OpsPermitSignDetailForm : DetailForm
    {
        public OpsPermitSignDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            OpsPermitSign obj = this.BindingSource.Current as OpsPermitSign;

            this.BindingSource.EndEdit();

            obj.QualAuditor_B = obj.QualAuditor_P;
            obj.QualAuditor_A = obj.QualAuditor_E = obj.QualAuditor_F;

            obj.MobileAuditor_B = obj.MobileAuditor_P;
            obj.MobileAuditor_A = obj.MobileAuditor_E = obj.MobileAuditor_F;

            obj.Mechanic_B = obj.Mechanic_P;
            obj.Mechanic_A = obj.Mechanic_E = obj.Mechanic_F;

            obj.Supervisor_B = obj.Supervisor_P;
            obj.Supervisor_A = obj.Supervisor_E = obj.Supervisor_F;

            obj.Superintendent_B = obj.Superintendent_P;
            obj.Superintendent_A = obj.Superintendent_E = obj.Superintendent_F;

        
            //obj.LineLeader_B = obj.LineLeader_P;
            //obj.LineLeader_A = obj.LineLeader_E = obj.LineLeader_F;

            obj.LineLeader_F = obj.LineLeader_A;

            base.SaveCurrent();
                }

    }
}
