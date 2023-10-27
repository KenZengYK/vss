using System;
using System.Drawing;
using System.Linq;
using System.Data.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB5
{
    public partial class ProposalSubReport : DevExpress.XtraReports.UI.XtraReport
    {
        public ProposalSubReport(PoolInfo APoolInfo)
        {
            InitializeComponent();

            var lists = APoolInfo.Lb5Matchings.Where(p => p.LB5MatchingProposal != null).Select(p => p.LB5MatchingProposal);
            this.bsLB5MatchingProposal.DataSource = lists;

            this.tcTotalNewRow.Text = string.Format(this.tcTotalNewRow.Text, lists.Count());
            this.tcTotalNewWF.Text = string.Format(this.tcTotalNewWF.Text,
                lists.Where(p => !string.IsNullOrEmpty(p.ProposalWF)).Select(p => p.ProposalWF).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.ProposalWF1)).Select(p => p.ProposalWF1).Distinct().Count());

            this.tcTotalNewHW.Text = string.Format(this.tcTotalNewHW.Text,
                lists.Where(p => !string.IsNullOrEmpty(p.ProposalHW)).Select(p => p.ProposalHW).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.ProposalHW1)).Select(p => p.ProposalHW1).Distinct().Count());
        }

    }
}
