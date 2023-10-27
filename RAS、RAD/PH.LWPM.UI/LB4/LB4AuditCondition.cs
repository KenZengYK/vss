using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using PH.LWPM.BO;
using System.Windows.Forms;

namespace PH.LWPM.UI.LB4
{
    public partial class LB4AuditCondition : Form
    {
       // public RAPLQDataContext DbCtx;
        public string Factory, StartDT, EndDT;
        public int CType;

        public LB4AuditCondition()
        {
            InitializeComponent();
           // DbCtx = rdc;
        }




        private void btWorker_Click(object sender, EventArgs e)
        {
            StartDT = this.deStart.DateTime.Date.ToShortDateString();
            EndDT = this.deEnd.DateTime.Date.ToShortDateString();
            Factory = this.cmbFactory.Text;
            CType = 0;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            StartDT = this.deStart.DateTime.Date.ToShortDateString();
            EndDT = this.deEnd.DateTime.Date.ToShortDateString();
            Factory = this.cmbFactory.Text;
            CType = 1;
        }
    }
}
