using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class ConfirmRightDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ConfirmRightDetailForm()
        {
            InitializeComponent();

        }

        public override void DataBind()
        {
            base.DataBind();

            //从CustomerCode表中取客人的信息, 由David增加 2019-11-19
            this.edtCustomerCode.Properties.Items.Clear();
            string SqlStr = "select distinct Customer from CustomerCode";
            DataTable dt = (this.DataContext as RWOSOPCDataContext).ExecuteDataTable(SqlStr, "dtCustomer");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                this.edtCustomerCode.Properties.Items.Add(dt.Rows[i][0].ToString());
            }
        }

        private void btnGetUsers_Click(object sender, EventArgs e)
        {
            Form frm = new ChoiceUsers(this.BindingSource.Current as PH.RWO.BO.Right);
            frm.ShowDialog();
        }


    }
}
