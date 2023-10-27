using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB5
{
    public partial class Step5DeploymentReArrangingAddForm : DevExpress.XtraEditors.XtraForm
    {
        RAPLQDataContext db;
        public Step5DeploymentReArrangingAddForm(RAPLQDataContext ADB, string AFactory)
        {
            InitializeComponent();

            string SqlStr = string.Format("exec sp_GetStep5QN 's', 'FAE'");
            var lists = ADB.ExecuteQuery<WPMaster>(SqlStr).ToList().Where(p => p.Factory.Trim() == AFactory);
            this.bsWPMaster.DataSource = lists;

            db = ADB;
            this.lB5ChildListY1Rearranging.DataContext = db;
            this.ProcessStep(ChoiceMode.LineQN);
        }



        private void btnNext_Click(object sender, EventArgs e)
        {
            this.ProcessStep(ChoiceMode.Operation);
        }

        private void btnPrevious_Click(object sender, EventArgs e)
        {
            this.ProcessStep(ChoiceMode.LineQN);
        }

        void ProcessStep(ChoiceMode AChoiceMode)
        {
            if (AChoiceMode == ChoiceMode.LineQN) //ßxLine & QN
            {
                this.TabPageLine.PageVisible = true;
                this.TabPageOperation.PageVisible = false;

                this.btnNext.Enabled = true;
                this.btnPrevious.Enabled = false;
            }
            else if (AChoiceMode == ChoiceMode.Operation) //ßxOperation
            {
                this.TabPageLine.PageVisible = false;
                this.TabPageOperation.PageVisible = true;

                this.btnNext.Enabled = false;
                this.btnPrevious.Enabled = true;

                WPMaster CurrentWPMaster = this.bsWPMaster.Current as WPMaster;
                if (CurrentWPMaster == null) return;

                (new ProcessForm(CurrentWPMaster, db)).ShowDialog();

                PoolInfo LastPoolInfo = CurrentWPMaster.PoolInfos.OrderByDescending(p => p.Date).FirstOrDefault();
                if (LastPoolInfo == null) return;

                this.lB5ChildListY1Rearranging.BindingSource.DataSource = LastPoolInfo.Lb5Matchings;
                this.lB5ChildListY1Rearranging.SetupWizardMode();
            }
        }

        private void gridLine_DoubleClick(object sender, EventArgs e)
        {
            this.btnNext.PerformClick();
        }
    }

    enum ChoiceMode
    {
        LineQN,    //ßxLine & QN
        Operation  //ßxOperation
    }
}