using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Threading;
using PH.Platform.BO;
using DevExpress.XtraBars;
using PH.Platform.AuthMgr.BO;
using PH.LWPM.UI.LB4;

namespace PH.LWPM.UI.LB5
{
    public partial class ProposalWorkSheetForm : PH.Platform.UI.CS.UI0.PrintBaseForm
    {
        RAPLQDataContext db;
        string Factory;
        string Language;
        string Stage;
        //IEnumerable<Step5DeploymentReArranging> NewLists;

        public ProposalWorkSheetForm()
        {
            InitializeComponent();
        }

        public ProposalWorkSheetForm(string AFactory, string ALanguage, string AStage)
        {
            InitializeComponent();

            db = ContextBuilder.CreateContext<RAPLQDataContext>();

            Factory = PH.Platform.Common.SysParamHelper.Instance.Location;
            if (string.IsNullOrEmpty(Factory))
            {
                Factory = AFactory;
            }
            this.barBtnFactory.EditValue = Factory;

            Language = PH.Platform.Common.SysParamHelper.Instance.LangID;
            if (string.IsNullOrEmpty(Language))
            {
                Language = ALanguage;
            }
            Language = (Language == "TW" || Language == "CN") ? "CN" : "EN";
            this.barBtnLanguage.EditValue = Language;

            Stage = AStage;
            this.PrepareData();
            this.barBtnPrintBase.Visibility = BarItemVisibility.Never;
        }


        void PrepareData()
        {
            var lists = db.ExecuteQuery<Step5DeploymentReArranging>(string.Format("exec sp_GetAllLB5MatchingWithLog '{0}', '{1}', '{2}'", Factory, Language, Stage)).ToList();
            //NewLists = lists.Where(p => p.FixedNew == "New").OrderByDescending(p => p.ProcessingStage);
            //this.bsProposal.DataSource = NewLists;
            this.bsProposal.DataSource = lists.Where(p => p.FixedNew == "New").OrderByDescending(p => p.ProcessingStage);
            this.bsLatestData.DataSource = lists.Where(p => p.FixedNew == "Last Fixed");

            if (Stage == "NeedStage")
            {
                this.gridBandTopTitle1.Caption = "Step 5 - RD re-arrangement need stage 重整需求階段";

                this.barBtnCompleted.Visibility = BarItemVisibility.Always;
                this.barBtnConfirm.Visibility = BarItemVisibility.Never;
                this.barBtnAdd.Visibility = BarItemVisibility.Always;
                this.barBtnMinus.Visibility = BarItemVisibility.Always;
                this.barBtnAmend.Visibility = BarItemVisibility.Always;
                this.barBtnPrintOptsPermit.Visibility = BarItemVisibility.Never;
            }
            else if (Stage == "ApprovalStage")
            {
                this.gridBandTopTitle1.Caption = "Step 5 - RD re-arrangement approval stage 重整審批階段";

                this.barBtnCompleted.Visibility = BarItemVisibility.Never;
                this.barBtnConfirm.Visibility = BarItemVisibility.Always;
                this.barBtnAdd.Visibility = BarItemVisibility.Never;
                this.barBtnMinus.Visibility = BarItemVisibility.Never;
                this.barBtnAmend.Visibility = BarItemVisibility.Never;
                this.barBtnPrintOptsPermit.Visibility = BarItemVisibility.Always;

                Auth_User user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
                Auth_FunRight funRight = user.GetFunRight(2420, "Approval");
                this.barBtnConfirm.Enabled = funRight != null;

            }
        }

        //public ProposalWorkSheetForm(RAPLQDataContext ADB, string AFactory, string ALanguage)
        //{
        //    InitializeComponent();
        //    db = ADB;
        //    Factory = AFactory;
        //    Language = ALanguage;

        //    var lists = db.ExecuteQuery<Step5DeploymentReArranging>(string.Format("exec sp_GetAllLB5MatchingWithLog '{0}', '{1}'", Factory, Language)).ToList();
        //    NewLists = lists.Where(p => p.FixedNew == "New");
        //    this.bsProposal.DataSource = NewLists;
        //    this.bsLatestData.DataSource = lists.Where(p => p.FixedNew == "Last Fixed");
        //}

        //private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //var lists = db.ExecuteQuery<Step5DeploymentReArranging>(string.Format("exec sp_GetAllLB5MatchingWithLog '{0}', '{1}'", Factory, Language));
        //Step5DeploymentReArrangingReport rptReArranging = new Step5DeploymentReArrangingReport(lists.ToList());
        //rptReArranging.ShowPreview();
        //}

        private void barBtnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Step5DeploymentReArranging ProposalObj = this.bsProposal.Current as Step5DeploymentReArranging;
            if (ProposalObj == null) return;

            string Str = string.Format("Are you sure approval?");
            if (MessageBox.Show(Str, "Approval", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm("", "Processing Data. Please wait.");
                try
                {
                    waitform.Show();

                    IEnumerable<Step5DeploymentReArranging> lists = this.bsProposal.DataSource as IEnumerable<Step5DeploymentReArranging>;
                    var AllQNList = lists.Select(p => new   //this.NewLists.Select(p => new
                    {
                        p.Ref_Line,
                        p.Ref_Factory,
                        p.Ref_j_NO,
                        p.Ref_J2_job,
                        p.Ref_Rwo,
                        p.Ref_Qn,
                        p.Ref_Bcolor,
                        p.Ref_Date,
                        p.Ref_OTN
                    }).Distinct();

                    DateTime ApprovalTime = DateTime.Now;

                    foreach (var obj in AllQNList)
                    {
                        //Thread.Sleep(2000);
                        db.sp_UpdateProposalToLB5Matching(obj.Ref_Factory, obj.Ref_Line, obj.Ref_j_NO, obj.Ref_J2_job,
                           obj.Ref_Rwo, obj.Ref_Qn, obj.Ref_Bcolor, obj.Ref_Date, obj.Ref_OTN, ApprovalTime);
                    }

                    //保存最后一次Approval的信息
                    db.LastApprovalDatas.DeleteAllOnSubmit(db.LastApprovalDatas.Where(p => p.Factory == this.Factory));
                    foreach (var obj in lists)
                    {

                        LastApprovalData LastApprovalObj = new LastApprovalData()
                         {
                             Factory = this.Factory,
                             Line = obj.Line,
                             CustStyle = obj.CustStyle,
                             QN = obj.QN,
                             TotalDesk = obj.TotalDesk,
                             RFlag = obj.RFlag,
                             ProcessingStage = "S1",   //obj.ProcessingStage,
                             OptsCount = obj.OptsCount,
                             OptsSN = obj.OptsSN,
                             WFID = obj.RFlag == "R4b" ? obj.WFID_Original : obj.WFID_Proposal,
                             WFName = obj.RFlag == "R4b" ? obj.WFName_Proposal : obj.WFName_Proposal,
                             HWID = obj.RFlag == "R4b" ? obj.HWID_Original : obj.HWID_Proposal,
                             HWName = obj.RFlag == "R4b" ? obj.HWName_Original : obj.HWName_Proposal,
                             UpdateTime = ApprovalTime
                         };
                        db.LastApprovalDatas.InsertOnSubmit(LastApprovalObj);
                    }
                    db.SubmitChanges();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    waitform.Close();
                }
                MessageBox.Show("Approvaled successfully", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }


            //Step5DeploymentReArranging obj = this.bsProposal.Current as Step5DeploymentReArranging;
            //if (obj == null) return;

            //string Str = string.Format("QN: {0}, Are you sure confirm?", obj.QN);
            //if (MessageBox.Show(Str, "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            //{
            //    db.sp_UpdateProposalToLB5Matching(obj.Ref_Factory, obj.Ref_Line, obj.Ref_j_NO, obj.Ref_J2_job,
            //        obj.Ref_Rwo, obj.Ref_Qn, obj.Ref_Bcolor, obj.Ref_Date, obj.Ref_OTN);
            //}
        }

        private void barBtnNote_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Step5DeploymentReArrangingNote frmNote = new Step5DeploymentReArrangingNote();
            frmNote.ShowDialog();
        }

        private void barBtnQuery_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Factory = this.barBtnFactory.EditValue.ToString();
            Language = this.barBtnLanguage.EditValue.ToString();
            this.PrepareData();
        }

        private void barBtnAmend_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Step5DeploymentReArranging obj = this.bsProposal.Current as Step5DeploymentReArranging;
            if (obj == null) return;

            ProposalForm frmProposal = new ProposalForm(db, obj.Ref_Factory, obj.CustStyle, obj.Ref_Line, obj.Ref_j_NO,
                obj.Ref_J2_job, obj.Ref_Rwo, obj.Ref_Qn, obj.Ref_Bcolor, obj.Ref_Date, obj.Ref_OTN);
            if (frmProposal.ShowDialog() == DialogResult.OK)
            {
                Factory = this.barBtnFactory.EditValue.ToString();
                Language = this.barBtnLanguage.EditValue.ToString();
                this.PrepareData();
            }
        }

        private void barBtnAdd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Step5DeploymentReArrangingAddForm frmAddType = new Step5DeploymentReArrangingAddForm(db, Factory);
            frmAddType.ShowDialog();

            Factory = this.barBtnFactory.EditValue.ToString();
            Language = this.barBtnLanguage.EditValue.ToString();
            this.PrepareData();
        }

        private void barBtnMinus_ItemClick(object sender, ItemClickEventArgs e)
        {
            Step5DeploymentReArranging obj = this.bsProposal.Current as Step5DeploymentReArranging;
            if (obj == null) return;

            ProposalForm frmProposal = new ProposalForm(db, obj.Ref_Factory, obj.CustStyle, obj.Ref_Line, obj.Ref_j_NO,
                obj.Ref_J2_job, obj.Ref_Rwo, obj.Ref_Qn, obj.Ref_Bcolor, obj.Ref_Date, obj.Ref_OTN, true);
            if (frmProposal.ShowDialog() == DialogResult.OK)
            {
                Factory = this.barBtnFactory.EditValue.ToString();
                Language = this.barBtnLanguage.EditValue.ToString();
                this.PrepareData();
            }
        }


        private void barBtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var lists = db.ExecuteQuery<Step5DeploymentReArranging>(string.Format("exec sp_GetAllLB5MatchingWithLog '{0}', '{1}'", Factory, Language));
            Step5DeploymentReArrangingReport rptReArranging = new Step5DeploymentReArrangingReport(lists.ToList(), gridBandTopTitle1.Caption);
            rptReArranging.ShowPreview();

        }

        private void barBtnPrintOptsPermit_ItemClick(object sender, ItemClickEventArgs e)
        {

            ReportHelper.PrintOptsPermitReport(Factory, barBtnLanguage.EditValue.ToString() == "BD" ? 1 : 0);
        }

        private void barBtnCompleted_ItemClick(object sender, ItemClickEventArgs e)
        {
            Step5DeploymentReArranging obj = bsProposal.Current as Step5DeploymentReArranging;
            if (obj == null)
            {
                return;
            }

            try
            {
                if (MessageBox.Show("Are you sure complete?", "Complete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {

                    string SqlStr = string.Format("Update LB5MatchingProposal set Completed = 1 where Factory = '{0}'", this.Factory);
                    db.ExecuteCommand(SqlStr);
                    this.PrepareData();
                    MessageBox.Show("Completed successfully", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void barButtonItem1_ItemClick(object sender, ItemClickEventArgs e)
        {
            ReportHelper.PrintOptsPermitReport(Factory, 0);
        }

        private void barButtonItem2_ItemClick(object sender, ItemClickEventArgs e)
        {
            ReportHelper.PrintOptsPermitReport(Factory, 1);
        }


    }
}
