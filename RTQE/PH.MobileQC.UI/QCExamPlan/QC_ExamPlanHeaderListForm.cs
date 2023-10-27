using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;
using DevExpress.XtraBars;
using DevExpress.XtraEditors;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class QC_ExamPlanHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string Flag { get; set; }
        public bool HasMQACheckRight { get; set; }
        public bool HasMQICheckRight { get; set; }
        public bool HasMQACheckLineRight { get; set; }
        public bool HasMQICheckLineRight { get; set; }
        public bool HasImportStyleOptRight { get; set; }
        public bool HasImportLineOptRight { get; set; }
        public bool HasLineOptAgree { get; set; }
        public bool HasQAConfirmLineRight { get; set; }
        public bool HasQIConfirmLineRight { get; set; }

        public QC_ExamPlanHeaderListForm()
        {
            InitializeComponent();
        }

        public QC_ExamPlanHeaderListForm(string AParam)
        {
            InitializeComponent();
            Flag = AParam;
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).QC_ExamPlanHeaders.Where(dr=>!dr.Workshop.Contains("PPW"));
            this.EditorTypeName = typeof(QC_ExamPlanHeaderDetailForm).FullName;

            //處理功能權限
            var QIConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "QIConfirm");
            this.btnConfirmQI.Visibility = QIConfirmRight == null ? BarItemVisibility.Never : BarItemVisibility.Always;

            var QAConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "QAConfirm");
            this.btnConfirmQA.Visibility = QAConfirmRight == null ? BarItemVisibility.Never : BarItemVisibility.Always;

            var ApprovalRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Approval");
            this.btnApproval.Visibility = ApprovalRight == null ? BarItemVisibility.Never : BarItemVisibility.Always;

            var MQACheckRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "MQACheck");
            HasMQACheckRight = MQACheckRight != null;

            var MQICheckRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "MQICheck");
            HasMQICheckRight = MQICheckRight != null;

            var MQACheckLineRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "MQACheckLine");
            HasMQACheckLineRight = MQACheckLineRight != null;

            var MQICheckLineRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "MQICheckLine");
            HasMQICheckLineRight = MQICheckLineRight != null;

            var ImportStyleOptRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "ImportStyleOpt");
            HasImportStyleOptRight = ImportStyleOptRight != null;

            var ImportLineOptRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "ImportLineOpt");
            HasImportLineOptRight = ImportLineOptRight != null;

            var LineOptAgreeRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "LineOptAgree");
            HasLineOptAgree = LineOptAgreeRight != null;

            var QAConfirmLineRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "QAConfirmLine");
            HasQAConfirmLineRight = QAConfirmLineRight != null;

            var QIConfirmLineRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "QIConfirmLine");
            HasQIConfirmLineRight = QIConfirmLineRight != null;


            CheckQAunconfirmed.CheckedChanged += new EventHandler(CheckQAunconfirmed_CheckedChanged);
            CheckQIunconfirmed.CheckedChanged += new EventHandler(CheckQIunconfirmed_CheckedChanged);
            CheckApprovalunconfirmed.CheckedChanged += new EventHandler(CheckApprovalunconfirmed_CheckedChanged);

            barQIStep2CheckEdit.CheckedChanged += new EventHandler(barQIStep2_CheckedChanged);
            barQAStep2CheckEdit.CheckedChanged += new EventHandler(barQAStep2_CheckedChanged);

            if (QIConfirmRight != null)
            {
                barQIunconfirmed.EditValue = true;
                CheckEdit checkEdit = barQIunconfirmed.Edit.CreateEditor() as CheckEdit;
                checkEdit.Checked = true;
                CheckQIunconfirmed_CheckedChanged(checkEdit, null);
            }

            if (QAConfirmRight != null)
            {
                barQAunconfirmed.EditValue = true;
                CheckEdit checkEdit = barQAunconfirmed.Edit.CreateEditor() as CheckEdit;
                checkEdit.Checked = true;
                CheckQAunconfirmed_CheckedChanged(checkEdit, null);
            }


            if (ApprovalRight != null)
            {
                barApprovalunconfirmed.EditValue = true;
                CheckEdit checkEdit = barApprovalunconfirmed.Edit.CreateEditor() as CheckEdit;
                checkEdit.Checked = true;
                CheckApprovalunconfirmed_CheckedChanged(checkEdit, null);
            }

        }

      

        private void btnApproval_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            QC_ExamPlanHeader obj = this.BindingSource.Current as QC_ExamPlanHeader;
            if (obj == null) return;

            if (!(obj.IsConfirmQI ?? false))
            {
                MessageBox.Show("The customer style QI is not confirmed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (!(obj.IsConfirmQA ?? false))
            {
                MessageBox.Show("The customer style QA is not confirmed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }


            if (obj.IsApproval ?? false)
            {
                MessageBox.Show("The customer style is approvaled!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("Are you sure approval?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                obj.Approvaler = PH.Platform.Common.SysParamHelper.Instance.UserID;
                obj.ApprovalDate = DateTime.Now;
                obj.IsApproval = true;
                obj.Save();

                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }
        }

        private void btnConfirmQI_ItemClick(object sender, ItemClickEventArgs e)
        {
            QC_ExamPlanHeader obj = this.BindingSource.Current as QC_ExamPlanHeader;
            if (obj == null) return;

            if (obj.IsConfirmQI ?? false)
            {
                MessageBox.Show("The customer style is confirmed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("Are you sure confirm?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                obj.ConfirmerQI = PH.Platform.Common.SysParamHelper.Instance.UserID;
                obj.ConfirmDateQI = DateTime.Now;
                obj.IsConfirmQI = true;
                obj.Save();

                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }
        }

        private void btnConfirmQA_ItemClick(object sender, ItemClickEventArgs e)
        {
            QC_ExamPlanHeader obj = this.BindingSource.Current as QC_ExamPlanHeader;
            if (obj == null) return;

            if (obj.IsConfirmQA ?? false)
            {
                MessageBox.Show("The customer style is confirmed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("Are you sure confirm?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                obj.ConfirmerQA = PH.Platform.Common.SysParamHelper.Instance.UserID;
                obj.ConfirmDateQA = DateTime.Now;
                obj.IsConfirmQA = true;
                obj.Save();

                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }
        }

        object SaveAllData = null;
        void CheckQIunconfirmed_CheckedChanged(object sender, EventArgs e)
        {
            if (SaveAllData == null)
            {
                SaveAllData = this.BindingSource.DataSource;
            }

            CheckEdit edit = sender as CheckEdit;
            if (edit.Checked)
            {
                if (Convert.ToBoolean(barQAunconfirmed.EditValue)) { barQAunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barApprovalunconfirmed.EditValue)) { barApprovalunconfirmed.EditValue = false; }

                if (Convert.ToBoolean(barQIStep2.EditValue)) { barQIStep2.EditValue = false; }
                if (Convert.ToBoolean(barQAStep2.EditValue)) { barQAStep2.EditValue = false; }

                this.BindingSource.DataSource = (SaveAllData as IEnumerable<QC_ExamPlanHeader>).Where(p => !(p.IsConfirmQI ?? false));
            }
            else
            {
                this.BindingSource.DataSource = SaveAllData;
            }

            this.InitFormNavigator();
            this.FormatPostion();
        }

        void CheckQAunconfirmed_CheckedChanged(object sender, EventArgs e)
        {
            if (SaveAllData == null)
            {
                SaveAllData = this.BindingSource.DataSource;
            }

            CheckEdit edit = sender as CheckEdit;
            if (edit.Checked)
            {
                if (Convert.ToBoolean(barQIunconfirmed.EditValue)) { barQIunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barApprovalunconfirmed.EditValue)) { barApprovalunconfirmed.EditValue = false; }

                if (Convert.ToBoolean(barQIStep2.EditValue)) { barQIStep2.EditValue = false; }
                if (Convert.ToBoolean(barQAStep2.EditValue)) { barQAStep2.EditValue = false; }


                this.BindingSource.DataSource = (SaveAllData as IEnumerable<QC_ExamPlanHeader>).Where(p => !(p.IsConfirmQA ?? false));
            }
            else
            {
                this.BindingSource.DataSource = SaveAllData;
            }

            this.InitFormNavigator();
            this.FormatPostion();
        }

        void CheckApprovalunconfirmed_CheckedChanged(object sender, EventArgs e)
        {
            if (SaveAllData == null)
            {
                SaveAllData = this.BindingSource.DataSource;
            }

            CheckEdit edit = sender as CheckEdit;
            if (edit.Checked)
            {
                if (Convert.ToBoolean(barQAunconfirmed.EditValue)) { barQAunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barQIunconfirmed.EditValue)) { barQIunconfirmed.EditValue = false; }

                if (Convert.ToBoolean(barQIStep2.EditValue)) { barQIStep2.EditValue = false; }
                if (Convert.ToBoolean(barQAStep2.EditValue)) { barQAStep2.EditValue = false; }


                this.BindingSource.DataSource = (SaveAllData as IEnumerable<QC_ExamPlanHeader>).Where(p => !(p.IsApproval ?? false));
            }
            else
            {
                this.BindingSource.DataSource = SaveAllData;
            }

            this.InitFormNavigator();
            this.FormatPostion();
        }


        void barQIStep2_CheckedChanged(object sender, EventArgs e)
        {
            if (SaveAllData == null)
            {
                SaveAllData = this.BindingSource.DataSource;
            }

            CheckEdit edit = sender as CheckEdit;
            if (edit.Checked)
            {
                if (Convert.ToBoolean(barQAunconfirmed.EditValue)) { barQAunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barQIunconfirmed.EditValue)) { barQIunconfirmed.EditValue = false; }

                if (Convert.ToBoolean(barApprovalunconfirmed.EditValue)) { barApprovalunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barQAStep2.EditValue)) { barQAStep2.EditValue = false; }


                this.BindingSource.DataSource = (SaveAllData as IEnumerable<QC_ExamPlanHeader>).Where(p => (p.QIStep2Checked == false));
            }
            else
            {
                this.BindingSource.DataSource = SaveAllData;
            }

            this.InitFormNavigator();
            this.FormatPostion();
        }

        void barQAStep2_CheckedChanged(object sender, EventArgs e)
        {
            if (SaveAllData == null)
            {
                SaveAllData = this.BindingSource.DataSource;
            }

            CheckEdit edit = sender as CheckEdit;
            if (edit.Checked)
            {
                if (Convert.ToBoolean(barQAunconfirmed.EditValue)) { barQAunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barQIunconfirmed.EditValue)) { barQIunconfirmed.EditValue = false; }

                if (Convert.ToBoolean(barApprovalunconfirmed.EditValue)) { barApprovalunconfirmed.EditValue = false; }
                if (Convert.ToBoolean(barQIStep2.EditValue)) { barQIStep2.EditValue = false; }

                this.BindingSource.DataSource = (SaveAllData as IEnumerable<QC_ExamPlanHeader>).Where(p => (p.QAStep2Checked == false));
            }
            else
            {
                this.BindingSource.DataSource = SaveAllData;
            }

            this.InitFormNavigator();
            this.FormatPostion();
        }


    }
}
