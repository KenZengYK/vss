using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.UI.Setting
{
    public partial class AddNewCustomerForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public AddNewCustomerForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.DataContext = db;

            //从CustomerCode表中取客人的信息, 由David增加 2019-11-19
            this.edtOldCustomer.Properties.Items.Clear();
            string SqlStr = "select distinct Customer from CustomerCode";
            DataTable dt = (this.DataContext as RWOSOPCDataContext).ExecuteDataTable(SqlStr, "dtCustomer");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                this.edtOldCustomer.Properties.Items.Add(dt.Rows[i][0].ToString());
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (!this.CheckInputData()) return;

            try
            {
                string SqlStr = "exec sp_AddNewCustomer '{0}', '{1}','{2}','{3}' ";
                SqlStr = string.Format(SqlStr, this.edtNewCustomer.Text, this.edtOldCustomer.Text, this.cbNewFty.Text, this.cbOldFty.Text);
                (this.DataContext as RWOSOPCDataContext).ExecuteCommand(SqlStr);
            }
            catch (Exception ex)
            {
                MessageBox.Show("新建失敗!:" + ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            MessageBox.Show(string.Format("從客{0}複製資料到新客{1}成功!", this.edtOldCustomer.Text, this.edtNewCustomer.Text), "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        bool CheckInputData()
        {
            if (string.IsNullOrEmpty(this.edtNewCustomer.Text))
            {
                MessageBox.Show("請輸入需要新建的客人代號", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtNewCustomer.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(this.edtOldCustomer.Text))
            {
                MessageBox.Show("請輸入從现有哪个客複雜資料到新客", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtOldCustomer.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(this.cbOldFty.Text))
            {
                MessageBox.Show("請輸入舊客工廠信息", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.cbOldFty.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(this.cbNewFty.Text))
            {
                MessageBox.Show("請輸入新客工廠信息", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.cbNewFty.Focus();
                return false;
            }

            return true;
        }
    }
}
