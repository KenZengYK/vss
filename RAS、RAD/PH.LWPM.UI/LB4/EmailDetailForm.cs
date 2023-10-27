using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB4
{
    public partial class EmailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public EmailDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();

            Email obj = this.BindingSource.Current as Email;
            if (obj != null && string.IsNullOrEmpty(obj.UserID))
            {
                obj.UserID = obj.EmailAddress;
            }
            base.SaveCurrent();

        }

    }
}
