using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    public partial class FrmUpdateContract : Form
    {

        ContractFullInfo ParentCtrl;
        public FrmUpdateContract(ContractFullInfo parent)
        {
            InitializeComponent();
            ParentCtrl = parent;
            GetContract();
            edtWeightCal.Text = parent.Weight_Cal.ToString();
            edtWeightCal.Enabled = false;
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(cmbContract.Text) && string.IsNullOrEmpty(txtBgno.Text))
            //{
            //    MessageBox.Show("合同號與報關單號至少填寫一個!");
            //    return;
            //}

          //  ParentCtrl.CurContractNo = txtContract.Text.Trim();
            decimal _weight =0;
            if (!string.IsNullOrEmpty(edtWeight.Text)&&!decimal.TryParse(edtWeight.Text, out _weight))
            {
                MessageBox.Show("填寫的重量為無效數值!");
                return;
            }


            ParentCtrl.CurWeight = _weight;
            ParentCtrl.CurContractNo = cmbContract.Text;
            ParentCtrl.CurBgno = txtBgno.Text.Trim();

             if (deBG_Date.EditValue!= null )
               ParentCtrl.CurBG_Date =(DateTime)deBG_Date.EditValue ;

           // ParentCtrl.CurBG_Date =  (DateTime)deBG_Date.EditValue;
        }

        private void GetContract()
        {
            HDODataContext ctx = ParentCtrl.DataContext as HDODataContext;
            //var _contract = from a in ctx.ContractInfos select new {a.ContractNo};
            string[] _ary =ctx.ContractInfos.Select(p=>p.ContractNo).ToArray();
            cmbContract.Properties.Items.Clear();
            cmbContract.Properties.Items.AddRange(_ary);
        }
    }
}
