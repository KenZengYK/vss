using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;

namespace PH.RWO.UI.Amend
{
    public partial class EmailDetail : DetailForm
    {
        public EmailDetail()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BindCurrent();
            SetEnable(false);

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetEnable(true);

            //if (IsNew)
            //{
            //    chkNf.Checked = true;
            //}
            if (IsEditting)
            {
                this.chkEmailTo.Enabled = false;
                this.chkCC.Enabled = false;
            }


        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;

            if (chkEmailTo.Checked)
                mdd.DataType = "RWO.Amend.EmailTo";
            if (chkCC.Checked)
                mdd.DataType = "RWO.Amend.EmailCC";

            if (IsNew)
               mdd.DataCode = edtAddress.Text;

             mdd.DataName = edtAddress.Text;
             mdd.Description = edtRemark.Text;

            base.SaveCurrent();
        }


        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            edtAddress.Enabled = false;
            edtRemark.Enabled = false;
        }

        private void BindCurrent()
        {
            Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;
            if (mdd == null)
                return;

            edtAddress.Text = mdd.DataName;

            if (mdd.DataType == "RWO.Amend.EmailTo")
                this.chkEmailTo.Checked = true;
            else
                chkCC.Checked = true;
        }

        private void SetEnable(bool statu)
        {
            chkEmailTo.Enabled = statu;
            chkCC.Enabled = statu;
            edtAddress.Enabled = statu;
            edtRemark.Enabled = statu;
        }
    }
}
