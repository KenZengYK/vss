using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI0;
using PH.LineBalanceII.UI.BondingSpect.Report;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class SelectStyle : BlankForm
    {
        public SelectStyle()
        {
            InitializeComponent();
            BindStyle();
        }

        private void BindStyle()
        {
            PH.LineBalanceII.BO.LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();
            string[] styles = context.BondingSpecs.Select(t => t.PhStyle).ToArray();
            this.cbbStyle.Properties.Items.Clear();
            cbbStyle.Properties.Items.AddRange(styles);
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            RptBondingSpec rpt = new RptBondingSpec(cbbStyle.Text);
            rpt.ShowPreview();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            //this.Close();
            this.ClosePage(this.TabPage);
        }
    }
}
