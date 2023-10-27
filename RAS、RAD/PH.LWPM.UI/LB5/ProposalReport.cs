using System;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;

namespace PH.LWPM.UI.LB5
{
    public partial class ProposalReport : DevExpress.XtraReports.UI.XtraReport
    {
        //public ProposalReport(RAPLQDataContext ADB)
        //{
        //    InitializeComponent();

        //    //string SqlStr = string.Format("exec sp_GetLB5MatchingWithLog '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'",
        //    //    APoolInfo.Factory, APoolInfo.LineCode, APoolInfo.j_NO, APoolInfo.J2_job, APoolInfo.Rwo, APoolInfo.Qn, APoolInfo.Bcolor, APoolInfo.Date, APoolInfo.OTN);
        //    var lists = db.ExecuteQuery<LB5MatchingWithLog>("exec sp_GetAllLB5MatchingWithLog").OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.OperationSN).ToList();

        //    this.bsLB5MatchingWithLog.DataSource = ADataList; //lists;
        //    this.SubReport_Proposal.ReportSource = new ProposalSubReport(APoolInfo);

        //    this.tcTotalFixedRows.Text = string.Format(this.tcTotalFixedRows.Text, lists.Count());
        //    this.tcTotalFixedWF.Text = string.Format(this.tcTotalFixedWF.Text,
        //        lists.Where(p => !string.IsNullOrEmpty(p.WFID_R1a)).Select(p => p.WFID_R1a).Distinct().Count() +
        //        lists.Where(p => !string.IsNullOrEmpty(p.WFID_R1b)).Select(p => p.WFID_R1b).Distinct().Count() +
        //        lists.Where(p => !string.IsNullOrEmpty(p.WFID_R2a)).Select(p => p.WFID_R2a).Distinct().Count() -
        //        lists.Where(p => !string.IsNullOrEmpty(p.WFID_R2b)).Select(p => p.WFID_R2b).Distinct().Count());

        //    this.tcTotalFixedHW.Text = string.Format(this.tcTotalFixedHW.Text,
        //        lists.Where(p => !string.IsNullOrEmpty(p.HWID_R1a)).Select(p => p.HWID_R1a).Distinct().Count() +
        //        lists.Where(p => !string.IsNullOrEmpty(p.HWID_R1b)).Select(p => p.HWID_R1b).Distinct().Count() +
        //        lists.Where(p => !string.IsNullOrEmpty(p.HWID_R2a)).Select(p => p.HWID_R2a).Distinct().Count() -
        //        lists.Where(p => !string.IsNullOrEmpty(p.HWID_R2b)).Select(p => p.HWID_R2b).Distinct().Count());

        //    var LB5MatchingProposalLists = APoolInfo.Lb5Matchings.Where(p => p.LB5MatchingProposal != null).Select(p => p.LB5MatchingProposal);

        //    this.lbTotalDesk.Text = string.Format(this.lbTotalDesk.Text,
        //        APoolInfo.Lb5Matchings.Where(p => !string.IsNullOrEmpty(p.MachineId)).Select(p => p.MachineId).Distinct().Count() +
        //        APoolInfo.Lb5Matchings.Where(p => !string.IsNullOrEmpty(p.addMachineId1)).Select(p => p.addMachineId1).Distinct().Count() +
        //        LB5MatchingProposalLists.Where(p => p.RFlag1 == "R2a (Added)" && !string.IsNullOrEmpty(p.ProposalHW1)).Distinct().Count() -
        //        LB5MatchingProposalLists.Where(p => p.RFlag1 == "R1b (Change back)" && !string.IsNullOrEmpty(p.OriginalHW1)).Distinct().Count());
        //    //var lists = ADataList.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.OperationSN).ToList();

        //}

        public ProposalReport(PoolInfo APoolInfo, IEnumerable<LB5MatchingWithLog> ADataList)
        {
            InitializeComponent();

            //var lists = APoolInfo.Lb5Matchings.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.WPSN);

            //RAPLQDataContext db = APoolInfo.CurrentDataContext as RAPLQDataContext;
            //string SqlStr = string.Format("exec sp_GetLB5MatchingWithLog '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'",
            //    APoolInfo.Factory, APoolInfo.LineCode, APoolInfo.j_NO, APoolInfo.J2_job, APoolInfo.Rwo, APoolInfo.Qn, APoolInfo.Bcolor, APoolInfo.Date, APoolInfo.OTN);
            //var lists = db.ExecuteQuery<LB5MatchingWithLog>(SqlStr).OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.OperationSN).ToList();

            var lists = ADataList.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.OperationSN).ToList();

            this.bsLB5MatchingWithLog.DataSource = ADataList; //lists;
            this.SubReport_Proposal.ReportSource = new ProposalSubReport(APoolInfo);

            this.tcTotalFixedRows.Text = string.Format(this.tcTotalFixedRows.Text, lists.Count());
            this.tcTotalFixedWF.Text = string.Format(this.tcTotalFixedWF.Text,
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R1a)).Select(p => p.WFID_R1a).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R1b)).Select(p => p.WFID_R1b).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R2a)).Select(p => p.WFID_R2a).Distinct().Count() -
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R2b)).Select(p => p.WFID_R2b).Distinct().Count());

            this.tcTotalFixedHW.Text = string.Format(this.tcTotalFixedHW.Text,
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R1a)).Select(p => p.HWID_R1a).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R1b)).Select(p => p.HWID_R1b).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R2a)).Select(p => p.HWID_R2a).Distinct().Count() -
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R2b)).Select(p => p.HWID_R2b).Distinct().Count());

            var LB5MatchingProposalLists = APoolInfo.Lb5Matchings.Where(p => p.LB5MatchingProposal != null).Select(p => p.LB5MatchingProposal);

            this.lbTotalDesk.Text = string.Format(this.lbTotalDesk.Text,
                APoolInfo.Lb5Matchings.Where(p => !string.IsNullOrEmpty(p.MachineId)).Select(p => p.MachineId).Distinct().Count() +
                APoolInfo.Lb5Matchings.Where(p => !string.IsNullOrEmpty(p.addMachineId1)).Select(p => p.addMachineId1).Distinct().Count() +
                LB5MatchingProposalLists.Where(p => p.RFlag1 == "R2a (Added)" && !string.IsNullOrEmpty(p.ProposalHW1)).Distinct().Count() -
                LB5MatchingProposalLists.Where(p => p.RFlag1 == "R1b (Change back)" && !string.IsNullOrEmpty(p.OriginalHW1)).Distinct().Count());
        }

        public ProposalReport(PoolInfo APoolInfo)
        {
            InitializeComponent();

            //var lists = APoolInfo.Lb5Matchings.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.WPSN);

            RAPLQDataContext db = APoolInfo.CurrentDataContext as RAPLQDataContext;
            string SqlStr = string.Format("exec sp_GetLB5MatchingWithLog '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'",
                APoolInfo.Factory, APoolInfo.LineCode, APoolInfo.j_NO, APoolInfo.J2_job, APoolInfo.Rwo, APoolInfo.Qn, APoolInfo.Bcolor, APoolInfo.Date, APoolInfo.OTN);
            var lists = db.ExecuteQuery<LB5MatchingWithLog>(SqlStr).OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.OperationSN).ToList();

            this.bsLB5MatchingWithLog.DataSource = lists;
            this.SubReport_Proposal.ReportSource = new ProposalSubReport(APoolInfo);

            this.tcTotalFixedRows.Text = string.Format(this.tcTotalFixedRows.Text, lists.Count());
            this.tcTotalFixedWF.Text = string.Format(this.tcTotalFixedWF.Text,
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R1a)).Select(p => p.WFID_R1a).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R1b)).Select(p => p.WFID_R1b).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R2a)).Select(p => p.WFID_R2a).Distinct().Count() -
                lists.Where(p => !string.IsNullOrEmpty(p.WFID_R2b)).Select(p => p.WFID_R2b).Distinct().Count());

            this.tcTotalFixedHW.Text = string.Format(this.tcTotalFixedHW.Text,
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R1a)).Select(p => p.HWID_R1a).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R1b)).Select(p => p.HWID_R1b).Distinct().Count() +
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R2a)).Select(p => p.HWID_R2a).Distinct().Count() -
                lists.Where(p => !string.IsNullOrEmpty(p.HWID_R2b)).Select(p => p.HWID_R2b).Distinct().Count());

            var LB5MatchingProposalLists = APoolInfo.Lb5Matchings.Where(p => p.LB5MatchingProposal != null).Select(p => p.LB5MatchingProposal);

            this.lbTotalDesk.Text = string.Format(this.lbTotalDesk.Text,
                APoolInfo.Lb5Matchings.Where(p => !string.IsNullOrEmpty(p.MachineId)).Select(p => p.MachineId).Distinct().Count() +
                APoolInfo.Lb5Matchings.Where(p => !string.IsNullOrEmpty(p.addMachineId1)).Select(p => p.addMachineId1).Distinct().Count() +
                LB5MatchingProposalLists.Where(p => p.RFlag1 == "R2a (Added)" && !string.IsNullOrEmpty(p.ProposalHW1)).Distinct().Count() -
                LB5MatchingProposalLists.Where(p => p.RFlag1 == "R1b (Change back)" && !string.IsNullOrEmpty(p.OriginalHW1)).Distinct().Count());
        }


    }
}
