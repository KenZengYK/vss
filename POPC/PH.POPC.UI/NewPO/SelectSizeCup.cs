using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Data.Linq;
using System.Linq;

namespace PH.POPC.UI.NewPO
{
    public partial class SelectSizeCup : DevExpress.XtraEditors.XtraForm
    {
        public SelectSizeCup()
        {
            InitializeComponent();

        }
        private List<PH.POPC.BO.SupplierCustomerSizeCup> m_list = new List<PH.POPC.BO.SupplierCustomerSizeCup>();
        public List<PH.POPC.BO.SupplierCustomerSizeCup> SizeCups
        {
            get
            {
                List<PH.POPC.BO.SupplierCustomerSizeCup> list = this.m_list.Where(p => p.CheckFlag == true).ToList();
                foreach (PH.POPC.BO.SupplierCustomerSizeCup item in list)
                {
                    item.CustStyleNo = (this.editApplytoStyle.Checked) ? item.CustStyleNo : "";
                    item.PHStyleNo = (this.editApplytoStyle.Checked) ? item.PHStyleNo : "";
                    item.Customer = this.comboBoxEdit_Customer.Text.Trim();
                }
                return list;
            }
        }
        private void button_Query_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.textBox_CustStyleNO.Text.Trim()) || !string.IsNullOrEmpty(this.textBox_PHStyleNO.Text.Trim()))
            {
                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                string sql = string.Format("sp_GetSizeCupByCustStyle '{0}','{1}'", this.textBox_CustStyleNO.Text.Trim(), this.textBox_PHStyleNO.Text.Trim());
                this.m_list = context.ExecuteQuery<PH.POPC.BO.SupplierCustomerSizeCup>(sql).ToList();
                this.bindingSource1.DataSource = m_list;
                this.gridControl1.RefreshDataSource();
            }
        }

        private void button_OK_Click(object sender, EventArgs e)
        {
            bool bselectOne = false;
            foreach (PH.POPC.BO.SupplierCustomerSizeCup item in this.m_list)
            {
                if (item.CheckFlag)
                {
                    bselectOne = true;
                    break;
                }
            }
            if (!bselectOne)
            {
                MessageBox.Show("Select a Record at least!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (this.comboBoxEdit_Customer.Text.Trim() != string.Empty)
            {
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else
            {
                MessageBox.Show("Please Select a Customer", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void SelectSizeCup_Load(object sender, EventArgs e)
        {
            this.bindingSource1.DataSource = m_list;
            PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            this.comboBoxEdit_Customer.Properties.Items.Clear();
            foreach (var item in list.GetDataDictionary("PH.POPC.MatrixCustomer"))
            {
                this.comboBoxEdit_Customer.Properties.Items.Add(item.DataCode);
            }
        }

        private void btnAll_Click(object sender, EventArgs e)
        {
            foreach (PH.POPC.BO.SupplierCustomerSizeCup item in this.m_list)
            {
                item.CheckFlag = true;
            }
            this.gridControl1.RefreshDataSource();
        }

        private void btnNone_Click(object sender, EventArgs e)
        {
            foreach (PH.POPC.BO.SupplierCustomerSizeCup item in this.m_list)
            {
                item.CheckFlag = false;
            }
            this.gridControl1.RefreshDataSource();
        }


    }
}