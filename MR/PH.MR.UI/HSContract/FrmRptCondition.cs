using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.HSContract
{
    public partial class FrmRptCondition : Form
    {

        HSContractReciveListForm ParForm;
        public FrmRptCondition(HSContractReciveListForm parent)
        {
            InitializeComponent();
            ParForm = parent;
            InitCombox();
        }

        private void rgpType_SelectedIndexChanged(object sender, EventArgs e)
        {

            bool _sel =rgpType.SelectedIndex == 1;
            cmbFty.Enabled = _sel;
            cmbContract.Enabled =_sel;

        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            ParForm.CurFty = cmbFty.Text;
            ParForm.CurContract = cmbContract.Text;
            ParForm.Rpttype = rgpType.SelectedIndex;

        }

        private void InitCombox()
        {
            List<string>  contractlst=new List<string>();
            contractlst.Add("ALL");
           // cmbContract.Properties.Items.Add("ALL");
            bool _hasnull =false;
            foreach (DataRow dr in ParForm.DbRecive.Rows)
            { 
                string _no =dr["HScontractNO"] ==DBNull.Value?"NULL":dr["HScontractNO"].ToString();
                if (_no == "NULL")
                    _hasnull = true;

                if (_no != "NULL" && !contractlst.Contains(_no))
                    contractlst.Add(_no);
            }

            cmbContract.Properties.Items.Clear();
            for (int i = 0; i < contractlst.Count; i++)
            {
                cmbContract.Properties.Items.Add(contractlst[i]);
            }
            if (_hasnull)
                cmbContract.Properties.Items.Add("NULL");
        }
    }
}
