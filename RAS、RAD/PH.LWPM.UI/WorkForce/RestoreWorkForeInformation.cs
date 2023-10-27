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
using System.Linq;

namespace PH.LWPM.UI.WorkForce
{
    public partial class RestoreWorkForeInformation : PH.Platform.UI.CS.UI0.BlankForm
    {
        RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
        public RestoreWorkForeInformation()
        {
            InitializeComponent();
         
          //  cbFactory.Properties.Items.AddRange(db.WorkForces.Select(dr => dr.Factory).Distinct().OrderBy(dr=>dr).ToList());
            
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (!CheckCondition())
            { 
                MessageBox.Show("Please fill in the factory or ID", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            int IsWorker =  db.WorkForces.Where(dr => dr.Factory == this.cbFactory.Text && dr.Id == this.txtWorkerID.Text).Count();
            if (IsWorker == 0) 
            {
                MessageBox.Show("The factory doesn't have this ID", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (IsWorker > 0) 
            {
                PH.LWPM.BO.WorkForce Obj = db.WorkForces.Where(dr => dr.Factory == this.cbFactory.Text && dr.Id == this.txtWorkerID.Text).FirstOrDefault();
                Obj.REDate =null;
                Obj.MTM =null;
                Obj.InActive = false;
                db.SubmitChanges();
                
                MessageBox.Show("This ID has been restored", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

        }

         bool CheckCondition() 
        {
            if (!string.IsNullOrEmpty(cbFactory.Text) && !string.IsNullOrEmpty(txtWorkerID.Text))
            {
                return true;
            }
            else { return false; }

        }


    }
}
