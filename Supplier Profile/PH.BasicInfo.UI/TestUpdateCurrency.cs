using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI
{
    public partial class TestUpdateCurrency : PH.Platform.UI.CS.UI0.BlankForm
    {
        public TestUpdateCurrency()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            ChangeCurrency cc = new ChangeCurrency();
            cc.ChangeCurrencyRate();

        }
    }
}
