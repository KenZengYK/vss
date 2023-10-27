using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.LWPM.UI.LB4
{
    public partial class LB4AuditFrm :  ListForm
    {
        public LB4AuditFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            RAPLQDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(SuspectRpt);
            
        }

        protected override void OnClickFind()
        {


            LB4AuditCondition frmcond = new LB4AuditCondition();
            frmcond.StartPosition = FormStartPosition.CenterParent;

            if (frmcond.ShowDialog(this) == DialogResult.OK)
             {

                this.BindingSource.DataSource = null;                
               // string sqlcmd = string.Format("exec [SP_LB4WFMCBYWEEK] {0},'{1}','{2}','{3}'", frmcond.CType, frmcond.Factory, frmcond.StartDT, frmcond.EndDT);
                RAPLQDataContext ctx = this.DataContext as RAPLQDataContext;
                this.BindingSource.DataSource = DBAccess.GetAuditList(frmcond.CType, frmcond.Factory, frmcond.StartDT, frmcond.EndDT);
                this.gcWkname.Visible = frmcond.CType == 0;
                this.gcMachineID.Visible = frmcond.CType == 1;
                    
              }

        }
    }
}
