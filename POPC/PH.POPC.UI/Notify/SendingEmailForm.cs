using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.POPC.UI.Notify
{
    public partial class SendingEmailForm : DevExpress.XtraEditors.XtraForm
    {
        public SendingEmailForm(EmailHelper helper)
        {
            InitializeComponent();

            this._helper = helper;

        }
        private EmailHelper _helper;

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (_helper == null) return;

            switch (this._helper.SendStatus)
            {
                case SendMailStatus.None:
                    break;
                case SendMailStatus.Cancelled:
                    this.timer1.Enabled = false;
                    this.DialogResult = System.Windows.Forms.DialogResult.Cancel;
                    break;
                case SendMailStatus.Error:
                    this.timer1.Enabled = false;
                    this.DialogResult = System.Windows.Forms.DialogResult.Cancel;
                    break;
                case SendMailStatus.Successed:
                    this.timer1.Enabled = false;
                    this.DialogResult = System.Windows.Forms.DialogResult.OK;
                    break;
                default:
                    break;
            }

        }

        private void SendingEmailForm_Load(object sender, EventArgs e)
        {
            this.timer1.Enabled = true;
            this._helper.SendEmail();
        }
    }
}