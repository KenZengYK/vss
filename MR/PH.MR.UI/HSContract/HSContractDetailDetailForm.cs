using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.HSContract
{
    public partial class HSContractDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public HSContractDetailDetailForm()
        {
            InitializeComponent();
        }

        private void HSContractDetailDetailForm_Load(object sender, EventArgs e)
        {
            SetCtrlStatus();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetCtrlStatus();
        }

        private void SetCtrlStatus()
        {
            this.hSContractNOTextEdit.Enabled = false;
            this.createUserTextEdit.Enabled = false;
            this.createDateDateEdit.Enabled = false;
            this.alterUserTextEdit.Enabled = false;
            this.alterDateDateEdit.Enabled = false;

            PH.MR.BO.HSContractDetail detailBO = this.BindingSource.Current as PH.MR.BO.HSContractDetail;
            if (detailBO.HSContractHeader.IsConfirm ?? false)
            {
                this.factoryComboBoxEdit.Enabled = false;
                this.remarkMemoEdit.Enabled = false;
                this.barBtnEdit.Enabled = false;
            }

        }


    }
}
