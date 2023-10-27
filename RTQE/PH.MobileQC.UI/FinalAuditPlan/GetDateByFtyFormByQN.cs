using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.FinalAuditPlan
{
    public partial class GetDateByFtyFormByQN : Form
    {

        public string QN { get { return this.txtQN.Text; } }

        public GetDateByFtyFormByQN()
        {
            InitializeComponent();
            //MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            //DataTable dt = db.GetFactoryType();
            //cbbFac.Properties.Items.Clear();            
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    cbbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //}
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }


    }
}