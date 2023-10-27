using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using DevExpress.XtraBars;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class QC_ExamPlanDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        QC_ExamPlanHeaderDetailForm frmParent;
        public WorkModes WorkMode { get; set; }

        public QC_ExamPlanDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.AllowGridEdit = true;
            frmParent = (this.ParentForm as QC_ExamPlanHeaderDetailForm);

            QC_ExamPlanHeader header = (this.ParentForm as QC_ExamPlanHeaderDetailForm).BindingSource.Current as QC_ExamPlanHeader;
            QC_ExamPlanDetail detail = this.BindingSource.Current as QC_ExamPlanDetail;
            if (header != null && detail != null && header.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                frmParent.barBtnEdit.PerformClick();
            }

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = WorkMode == WorkModes.LineOpt ? BarItemVisibility.Always : BarItemVisibility.Never;

            this.colMQACheck.OptionsColumn.AllowEdit = (WorkMode == WorkModes.CustStyleOpt && frmParent.HasMQACheckRight) || (WorkMode == WorkModes.LineOpt && frmParent.HasMQACheckLineRight);
            this.colMQCCheck.OptionsColumn.AllowEdit = (WorkMode == WorkModes.CustStyleOpt && frmParent.HasMQICheckRight) || (WorkMode == WorkModes.LineOpt && frmParent.HasMQICheckLineRight);

            this.barBtnImportCustOpt.Visibility = (frmParent.HasImportStyleOptRight && WorkMode == WorkModes.CustStyleOpt) ? BarItemVisibility.Always : BarItemVisibility.Never;
            this.barBtnImportLineOpt.Visibility = (frmParent.HasImportLineOptRight && WorkMode == WorkModes.LineOpt) ? BarItemVisibility.Always : BarItemVisibility.Never;
            //this.barBtnAgree.Visibility = (frmParent.HasLineOptAgreeRight && WorkMode == WorkModes.LineOpt) ? BarItemVisibility.Always : BarItemVisibility.Never;

            this.colLine.Visible = WorkMode == WorkModes.LineOpt;

            this.colFactory.Visible = WorkMode == WorkModes.LineOpt;
            this.colWorkshop.Visible = WorkMode == WorkModes.LineOpt;

            //this.colIsAgree.Visible = WorkMode == WorkModes.LineOpt;
            //this.colAgreeMan.Visible = WorkMode == WorkModes.LineOpt;
            //this.colAgreeDate.Visible = WorkMode == WorkModes.LineOpt;
            this.colSelect.Visible = WorkMode == WorkModes.LineOpt;
            this.colIsConfirmQI.Visible = WorkMode == WorkModes.LineOpt;
            this.colConfirmerQI.Visible = WorkMode == WorkModes.LineOpt;
            this.colConfirmDateQI.Visible = WorkMode == WorkModes.LineOpt;
            this.colIsConfirmQA.Visible = WorkMode == WorkModes.LineOpt;
            this.colConfirmerQA.Visible = WorkMode == WorkModes.LineOpt;
            this.colConfirmDateQA.Visible = WorkMode == WorkModes.LineOpt;

            this.colQICheckStep1Show.Visible = WorkMode == WorkModes.LineOpt;
            this.colQACheckStep1Show.Visible = WorkMode == WorkModes.LineOpt;

            this.btnQAConfirm.Visibility = (frmParent.HasQAConfirmLineRight && WorkMode == WorkModes.LineOpt) ? BarItemVisibility.Always : BarItemVisibility.Never;
            this.btnQIConfirm.Visibility = (frmParent.HasQIConfirmLineRight && WorkMode == WorkModes.LineOpt) ? BarItemVisibility.Always : BarItemVisibility.Never;

            //Shelley要求Style上的栏位改名，由David修改 2021-11-17
            if (WorkMode == WorkModes.CustStyleOpt)
            {
                colMQACheck.Caption = "QA Check (Step 1)";
                colMQCCheck.Caption = "QI Check (Step 1)";
            }
            else
            {
                colMQACheck.Caption = "QA Check (Step 2)";
                colMQCCheck.Caption = "QI Check (Step 2)";
            }

            //Shelley隐藏Agree这三个栏位，由David修改 2021-11-17
            this.colIsAgree.Visible = false;
            this.colAgreeMan.Visible = false;
            this.colAgreeDate.Visible = false;

            this.barBtnAgree.Visibility = BarItemVisibility.Never; //同时隐藏Agree按钮

        }

        private void barBtnImportCustOpt_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            QC_ExamPlanHeader obj = frmParent.BindingSource.Current as QC_ExamPlanHeader;
            if (obj == null || obj.OID < 0)
            {
                return;
            }

            MobileQCDataContext db = this.DataContext as MobileQCDataContext;

            var DetailLists = (this.BindingSource.DataSource as IEnumerable<QC_ExamPlanDetail>).ToList();
            foreach (var Detail in DetailLists)
            {
                obj.QC_ExamPlanDetails.Remove(Detail);
                db.QC_ExamPlanDetails.DeleteOnSubmit(Detail);
            }
            db.SubmitChanges();

            string SqlStr = string.Format("exec sp_ExamPlanImportCustStyleOpt '{0}', '{1}', {2}", obj.CustStyle, obj.Factory, obj.OID);
            db.ExecuteCommand(SqlStr);

            obj.QC_ExamPlanDetails.AddRange(db.QC_ExamPlanDetails.Where(p => p.HeaderOID == obj.OID && p.Line == obj.CustStyle));
            if (this.WorkMode == WorkModes.CustStyleOpt)
            {
                this.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line == obj.CustStyle);
            }
            else
            {
                this.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line != obj.CustStyle);
            }
        }

        private void barBtnImportLineOpt_ItemClick(object sender, ItemClickEventArgs e)
        {
            QC_ExamPlanHeader obj = frmParent.BindingSource.Current as QC_ExamPlanHeader;
            if (obj == null || obj.OID < 0)
            {
                return;
            }

            if (obj.QC_ExamPlanDetails.Where(p => p.Line == obj.CustStyle).Count() == 0) //沒有款工序
            {
                return;
            }
            MobileQCDataContext db = this.DataContext as MobileQCDataContext;

            //var DetailLists = (this.BindingSource.DataSource as IEnumerable<QC_ExamPlanDetail>).ToList();
            //foreach (var Detail in DetailLists)
            //{
            //    obj.QC_ExamPlanDetails.Remove(Detail);
            //    db.QC_ExamPlanDetails.DeleteOnSubmit(Detail);
            //}
            //db.SubmitChanges();

            SelectInformation AForm = new SelectInformation(obj);
            if (AForm.ShowDialog() == DialogResult.OK)
            {
               // MobileQCDataContext SQLdb = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                string SqlStr = string.Format("exec sp_ExamPlanImportLineOptFromStyle '{0}', {1}, '{2}', '{3}', '{4}' ", obj.CustStyle, obj.OID, AForm.WorkShopStr, AForm.LineStr, AForm.FtyStr);
                db.ExecuteCommand(SqlStr);
            }
           
            //long OID = obj.OID;
            //obj = new QC_ExamPlanHeader();
            //obj = db.QC_ExamPlanHeaders.Where(dr => dr.OID == OID).FirstOrDefault();
            var DetailLists = (this.BindingSource.DataSource as IEnumerable<QC_ExamPlanDetail>).ToList();
            foreach (var Detail in DetailLists)
            {
                obj.QC_ExamPlanDetails.Remove(Detail);
                //db.QC_ExamPlanDetails.DeleteOnSubmit(Detail);
            }
            int a = db.QC_ExamPlanDetails.Where(p => p.HeaderOID == obj.OID && p.Line != obj.CustStyle).Count();
             obj.QC_ExamPlanDetails.AddRange(db.QC_ExamPlanDetails.Where(p => p.HeaderOID == obj.OID && p.Line != obj.CustStyle));
            //MobileQCDataContext db = this.DataContext as MobileQCDataContext;
            //MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            int  aa  = obj.QC_ExamPlanDetails.Where(p => p.Line != obj.CustStyle).Count();
            
            if (this.WorkMode == WorkModes.CustStyleOpt)
            {
                this.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line == obj.CustStyle);
            }
            else
            {
                
                this.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line != obj.CustStyle);
                 
                this.objListGridView.RefreshData();
                
            }

            //更新Header 中的Factory、WorkShop
            if (obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Factory)).Count() > 0)
            {
                obj.Factory = string.Join(",", obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Factory)).Select(p => p.Factory).Distinct().ToArray());
            }

            if (obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Workshop) && p.Line != obj.CustStyle).Count() > 0)
            {
                obj.Workshop = string.Join(",", obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Workshop)).Select(p => p.Workshop).Distinct().ToArray());

            }

            db.SubmitChanges();
        }

        protected override void OnClickDelete()
        {
            this.objListGridView.PostEditor();
          
            this.BindingSource.EndEdit();

            MobileQCDataContext db = this.DataContext as MobileQCDataContext;            
            QC_ExamPlanHeader obj = frmParent.BindingSource.Current as QC_ExamPlanHeader;

            List<QC_ExamPlanDetail> DeteleList = new List<QC_ExamPlanDetail>();

            for (int i = 0; i < this.objListGridView.RowCount; i++)
            {
                QC_ExamPlanDetail Detailobj = this.objListGridView.GetRow(i) as QC_ExamPlanDetail;
                if (Detailobj != null && (Detailobj.SelectFlag??false))
                {
                    //DeteleList.Add(Detailobj);
                    obj.QC_ExamPlanDetails.Remove(Detailobj);
                   
                    db.QC_ExamPlanDetails.DeleteOnSubmit(Detailobj);
                }
            }
            //db.QC_ExamPlanDetails.DeleteAllOnSubmit(DeteleList);

        
            //db.SubmitChanges();
            this.BindingSource.DataSource = null;
            this.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line != obj.CustStyle);

            this.objListGridView.RefreshData();
            //base.OnClickDelete();
        }

        //protected override void DeleteCurrent()
        //{
        //    base.DeleteCurrent();
        //}

        private void barBtnAgree_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count == 0) return;

            var lists = this.BindingSource.DataSource as IEnumerable<QC_ExamPlanDetail>;
            var LineList = lists.Where(p => (p.IsAgree ?? false) == false).Select(p => p.Line).Distinct().ToList();
            if (LineList.Count() == 0)
            {
                MessageBox.Show("All of line is agreed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            LineOptAgreeForm frmAgree = new LineOptAgreeForm(LineList, "Agree");

            if (frmAgree.ShowDialog() == DialogResult.OK)
            {
                if (lists.Where(p => p.Line == frmAgree.Line && (p.IsConfirmQI ?? false) == false).Count() > 0)
                {
                    MessageBox.Show(string.Format("The Line {0} QI is not confirm!", frmAgree.Line), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                if (lists.Where(p => p.Line == frmAgree.Line && (p.IsConfirmQA ?? false) == false).Count() > 0)
                {
                    MessageBox.Show(string.Format("The Line {0} QA is not confirm!", frmAgree.Line), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                var LineOptLists = lists.Where(p => p.Line == frmAgree.Line);
                foreach (var obj in LineOptLists)
                {
                    obj.IsAgree = true;
                    obj.AgreeMan = PH.Platform.Common.SysParamHelper.Instance.UserID;
                    obj.AgreeDate = DateTime.Now;
                    obj.Save();
                }
                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }
        }

        private void btnQIConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count == 0) return;

            var lists = this.BindingSource.DataSource as IEnumerable<QC_ExamPlanDetail>;
            var LineList = lists.Where(p => (p.IsConfirmQI ?? false) == false && !string.IsNullOrEmpty(p.Line) ).Select(p => p.Line).Distinct().ToList();
            if (LineList.Count() == 0)
            {
                MessageBox.Show("All of line is comfirmed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            LineOptAgreeForm frmConfirmQI = new LineOptAgreeForm(LineList, "Confirm");

            if (frmConfirmQI.ShowDialog() == DialogResult.OK)
            {
                //if (lists.FirstOrDefault(p => p.Line == frmConfirmQI.Line && (p.IsAgree ?? false) == false) != null)
                //{
                //    MessageBox.Show(string.Format("The Line {0} no agreed!", frmConfirmQI.Line), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //    return;
                //}

                var LineOptLists = lists.Where(p => p.Line == frmConfirmQI.Line);
                foreach (var obj in LineOptLists)
                {
                    obj.IsConfirmQI = true;
                    obj.ConfirmerQI = PH.Platform.Common.SysParamHelper.Instance.UserID;
                    obj.ConfirmDateQI = DateTime.Now;
                    obj.Save();
                }
                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }
        }

        private void btnQAConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count == 0) return;

            var lists = this.BindingSource.DataSource as IEnumerable<QC_ExamPlanDetail>;
            var LineList = lists.Where(p => (p.IsConfirmQA ?? false) == false).Select(p => p.Line).Distinct().ToList();
            if (LineList.Count() == 0)
            {
                MessageBox.Show("All of line is comfirmed!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            LineOptAgreeForm frmConfirmQA = new LineOptAgreeForm(LineList, "Confirm");

            if (frmConfirmQA.ShowDialog() == DialogResult.OK)
            {
                //if (lists.FirstOrDefault(p => p.Line == frmConfirmQA.Line && (p.IsAgree ?? false) == false) != null)
                //{
                //    MessageBox.Show(string.Format("The Line {0} no agreed!", frmConfirmQA.Line), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //    return;
                //}

                var LineOptLists = lists.Where(p => p.Line == frmConfirmQA.Line);
                foreach (var obj in LineOptLists)
                {
                    obj.IsConfirmQA = true;
                    obj.ConfirmerQA = PH.Platform.Common.SysParamHelper.Instance.UserID;
                    obj.ConfirmDateQA = DateTime.Now;
                    obj.Save();
                }
                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }
        }
    }
       
       
   

    public enum WorkModes
    {
        CustStyleOpt,
        LineOpt
    }
}
