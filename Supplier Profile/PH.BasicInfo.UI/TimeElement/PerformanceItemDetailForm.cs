using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;
using PH.Platform.Misc.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class PerformanceItemDetailForm : DetailForm
    {
        public PerformanceItemDetailForm()
        {
            InitializeComponent();

            if (PH.Platform.Common.SysParamHelper.Instance.UserID != "chandlerxiao")
            {
                this.sBtn_UpdateCurrency.Visible = false;
            }
        }

        private void sBtn_UpdateCurrency_Click(object sender, EventArgs e)
        {
            ChangeCurrency cc = new ChangeCurrency();
            cc.ChangeCurrencyRate();
        }
 



    }
}
