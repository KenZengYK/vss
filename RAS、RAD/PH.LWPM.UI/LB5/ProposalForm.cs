using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO.Interface;

namespace PH.LWPM.UI.LB5
{
    public partial class ProposalForm : Form
    {
        RAPLQDataContext db;
        Lb5Matching CurrentLB5Matching;
        bool IsAddNew;

        private ProposalForm()
        {
            InitializeComponent();
            this.gridBandAdd2.Visible = false;
        }

        //用于處理QN中一個工序的修改
        public ProposalForm(RAPLQDataContext AContext, Lb5Matching ALb5Matching)
            : this()
        {
            this.db = AContext;
            this.CurrentLB5Matching = ALb5Matching;
            this.PrepareData();
        }

        //用于處理整個QN的修改
        public ProposalForm(RAPLQDataContext AContext, string AFactory, string ACustStyle, string ALineCode, string AJ_No,
            string AJ2_job, string ARWO, string AQN, string ABColor, DateTime? ADate, string AOTN)
            : this()
        {
            this.db = AContext;
            this.bsLB5MatchingProposal.DataSource = db.LB5MatchingProposals.Where(p => p.Factory == AFactory &&
                p.LineCode == ALineCode && p.j_NO == AJ_No && p.J2_job == AJ2_job && p.Rwo == ARWO && p.Qn == AQN && p.Bcolor == ABColor &&
                p.Date == ADate && p.OTN == AOTN);

            this.Text = string.Format("Step 5 - Deployment re-arranging    Line: {0}  Style: {1}  QN: {2} - {3} - {4}",
                    ALineCode.Trim(), ACustStyle.Trim(), AJ2_job.Trim(), ARWO.Trim(), AQN.Trim());

            this.btnDelete.Visible = false;
            this.gridLB5MatchingProposal.OptionsBehavior.Editable = true;
        }

        public ProposalForm(RAPLQDataContext AContext, string AFactory, string ACustStyle, string ALineCode, string AJ_No,
             string AJ2_job, string ARWO, string AQN, string ABColor, DateTime? ADate, string AOTN, bool ADeleteMode)
            : this(AContext, AFactory, ACustStyle, ALineCode, AJ_No, AJ2_job, ARWO, AQN, ABColor, ADate, AOTN)
        {
            this.btnDelete.Visible = true;
            this.gridLB5MatchingProposal.OptionsBehavior.Editable = false;
        }

        private void PrepareData()
        {
            LB5MatchingProposal obj = CurrentLB5Matching.LB5MatchingProposal;
            if (obj == null)
            {
                IsAddNew = true;
                obj = new LB5MatchingProposal();
                obj.CurrentDataContext = this.CurrentLB5Matching.CurrentDataContext;
                obj.Factory = this.CurrentLB5Matching.Factory;
                obj.LineCode = this.CurrentLB5Matching.LineCode;
                obj.j_NO = this.CurrentLB5Matching.j_NO;
                obj.J2_job = this.CurrentLB5Matching.J2_job;
                obj.Rwo = this.CurrentLB5Matching.Rwo;
                obj.Qn = this.CurrentLB5Matching.Qn;
                obj.Bcolor = this.CurrentLB5Matching.Bcolor;
                obj.Date = this.CurrentLB5Matching.Date;
                obj.OTN = this.CurrentLB5Matching.OTN;
                obj.WPSN = this.CurrentLB5Matching.WPSN;
                obj.FAE = this.CurrentLB5Matching.FAE;
                obj.OperationSN = this.CurrentLB5Matching.OperationSN;
                obj.OperationCode = this.CurrentLB5Matching.OperationCode;
                obj.OperationName = this.CurrentLB5Matching.OperationName;
                obj.WorkerId = this.CurrentLB5Matching.WorkerId;
                obj.WorkerName = this.CurrentLB5Matching.WorkerName;
                obj.MachineId = this.CurrentLB5Matching.MachineId;

                obj.OriginalWF = this.CurrentLB5Matching.WorkerId;
                obj.OriginalHW = this.CurrentLB5Matching.MachineId;

                //obj.addworkerId1 = this.CurrentLB5Matching.addMachineId1;
                //obj.addworker1 = this.CurrentLB5Matching.addworker1;
                //obj.addMachineId1 = this.CurrentLB5Matching.addMachineId1;
                obj.OriginalWF1 = this.CurrentLB5Matching.addworker1;
                obj.OriginalHW1 = this.CurrentLB5Matching.addMachineId1;

                //obj.addworkerId2 = this.CurrentLB5Matching.addMachineId2;
                //obj.addworker2 = this.CurrentLB5Matching.addworker2;
                //obj.addMachineId2 = this.CurrentLB5Matching.addMachineId2;
                obj.OriginalWF2 = this.CurrentLB5Matching.addworker2;
                obj.OriginalHW2 = this.CurrentLB5Matching.addMachineId2;

                this.CurrentLB5Matching.LB5MatchingProposal = obj;
            }

            this.bsLB5MatchingProposal.DataSource = obj;

            this.Text = string.Format("Step 5 - Deployment re-arranging    Line: {0}  Style: {1}  QN: {2} - {3} - {4}",
                this.CurrentLB5Matching.LineCode.Trim(),
                this.CurrentLB5Matching.PoolInfo.WPMaster.CustStyleCode.Trim(),
                this.CurrentLB5Matching.J2_job.Trim(),
                this.CurrentLB5Matching.Rwo.Trim(),
                this.CurrentLB5Matching.Qn.Trim());
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            this.gridLB5MatchingProposal.PostEditor();
            this.db.SubmitChanges();
            IsAddNew = false;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (this.bsLB5MatchingProposal.Current == null)
            {
                return;
            }

            LB5MatchingProposal obj = this.bsLB5MatchingProposal.Current as LB5MatchingProposal;
            if (IsAddNew)
            {
                this.CurrentLB5Matching.LB5MatchingProposal = null;
                IsAddNew = false;
            }
        }

        private void repositoryItemButtonEdit_SelectWF_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            Step5DeploymentReArrangingSelectWF frmSelectWF = new Step5DeploymentReArrangingSelectWF(this.CurrentLB5Matching.Factory, this.CurrentLB5Matching.LineCode);
            if (frmSelectWF.ShowDialog() == DialogResult.OK)
            {
                LB5MatchingProposal obj = bsLB5MatchingProposal.Current as LB5MatchingProposal;
                obj.ProposalWF = frmSelectWF.WFID;
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure delete current row?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bsLB5MatchingProposal.RemoveCurrent();
            }
        }


    }
}
