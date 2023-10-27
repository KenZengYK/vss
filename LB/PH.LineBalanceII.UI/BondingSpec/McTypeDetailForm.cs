using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class McTypeDetailForm : DetailForm
    {
        public McTypeDetailForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            base.DataBind();
            BindCurrent();
          //  Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;
            SetEnable(false);

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetEnable(true);
           
            if (IsNew)
            {
                chkNf.Checked = true;
            }
            if (IsEditting)
                edtCode.Enabled = false;


        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;
            //if (IsNew)
            //{
               if (chkNf.Checked)
                 mdd.DataType = "PH.BondingSpec.Mcnf";
               if (chkYt.Checked)
                   mdd.DataType = "PH.BondingSpec.Mcyt";


               mdd.DataCode = edtCode.Text;
               mdd.DataName= edtDesc.Text;
           // }

            base.SaveCurrent();
        }


        private void BindCurrent()
        {
            Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;
            if (mdd == null)
                return;

            edtCode.Text = mdd.DataCode;
            edtDesc.Text = mdd.DataName;
            if (mdd.DataType == "PH.BondingSpec.Mcnf")
                chkNf.Checked = true;
            else
                chkYt.Checked = true;
        }


        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            SetEnable(false);
        }

        private void SetEnable(bool statu)
        {
            chkNf.Enabled = statu;
            chkYt.Enabled = statu;
            edtCode.Enabled = statu;
            edtDesc.Enabled = statu;
        }
    }
}
