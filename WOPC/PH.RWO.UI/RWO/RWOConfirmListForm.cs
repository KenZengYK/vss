using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI.Setting
{

    public partial class RWOConfirmListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RWOConfirmListForm()
        {
            InitializeComponent();
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
        }

        IList<View_RWOConfirm> _rwolist;
        public override void DataBind()
        {
            this.BindingSource.DataSource = null;
            base.DataBind();
            this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            this.DataContext.CommandTimeout = 1000;
            _rwolist = PH.RWO.BO.RWOLogic.GetItemsForListing<View_RWOConfirm>(string.Format("exec sp_RWOConfirmList '{0}'", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID), this.DataContext);
            foreach (View_RWOConfirm a in _rwolist)
            {
                a.HoldFlag = a.ActionStatus == (int)WOActionStatus.Hold;
            }
            this.BindingSource.DataSource = _rwolist;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
        }

        private void btnAction_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to Confirm/Hold/Reject these round work order data?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
                waitform.Show();
                this.objListGridView.PostEditor();
                this.BindingSource.EndEdit();

                ConfirmAction();
                RejectAction();
                HoldAction();

                this.DataBind();
                waitform.Close();

            }
        }
        private void ConfirmAction()
        {
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Confirm

            List<View_RWOConfirm> _confirmlist = (from a in _rwolist
                                                  where a.ConfirmFlag == true
                                                  select a).ToList();
            Notify notify = new Notify();
            notify.Action = NotifyAction.Confirm;
            foreach (View_RWOConfirm confirm in _confirmlist)
            {
                RoundWorkOrder rwo = context.RoundWorkOrders.Where(p => p.Company == confirm.Company && p.SalesOrderNo == confirm.SalesOrderNo && p.WorkOrderNo == confirm.WorkOrderNo
                     && p.ColorCode == confirm.ColorCode && p.RoundNo == confirm.RoundNo).FirstOrDefault();
                rwo.CurrentDataContext = context;
                if (!notify.Confirm(rwo))
                {
                    MessageBox.Show(string.Format("Confirm WO# {0} fail!", rwo.WOcNo), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            //distinct project
            List<Project> projects = new List<Project>();
            foreach (View_RWOConfirm confirm in _confirmlist)
            {
                Project p0 = projects.Find(delegate(Project p1)
                {
                    return confirm.Company == p1.Company && confirm.SalesOrderNo == p1.SalesOrderNo;
                }
                    );

                if (p0 == null)
                {
                    p0 = context.Projects.Where(p => p.ProjectNo == confirm.ProjectNo && p.Company == confirm.Company).FirstOrDefault();
                    projects.Add(p0);
                }
            }

            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();

            foreach (Project p in projects)
            {
                // string customer = cl.GetCustomerByCode();
                Right r = context.Rights.Where(r1 => p.CustomerCode == r1.CustomerCode && p.Factory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();

                notify.RWOSendMail(p, (r.Current ?? -1), _confirmlist);
            }

            #endregion
        }
        private void RejectAction()
        {
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Reject

            List<View_RWOConfirm> _rejectlist = (from a in _rwolist
                                                 where a.RejectFlag == true
                                                 select a).ToList();
            Notify notify = new Notify();
            notify.Action = NotifyAction.Reject;
            foreach (View_RWOConfirm reject in _rejectlist)
            {
                RoundWorkOrder rwo = context.RoundWorkOrders.Where(p => p.Company == reject.Company && p.SalesOrderNo == reject.SalesOrderNo && p.WorkOrderNo == reject.WorkOrderNo
                    && p.ColorCode == reject.ColorCode && p.RoundNo == reject.RoundNo).FirstOrDefault();
                rwo.CurrentDataContext = context;
                notify.Reject(rwo);
            }

            //distinct project
            List<Project> projects = new List<Project>();
            foreach (View_RWOConfirm reject in _rejectlist)
            {
                Project p0 = projects.Find(delegate(Project p1)
                {
                    return reject.Company == p1.Company && reject.SalesOrderNo == p1.SalesOrderNo;
                }
                    );

                if (p0 == null)
                {
                    p0 = context.Projects.Where(p => p.ProjectNo == reject.ProjectNo && p.Company == reject.Company).FirstOrDefault();
                    projects.Add(p0);
                }
            }

            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();

            foreach (Project p in projects)
            {
                // string customer = cl.GetCustomerByCode();
                Right r = context.Rights.Where(r1 => p.CustomerCode == r1.CustomerCode && p.Factory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();

                notify.RWOSendMail(p, (r.Current ?? -1), _rejectlist);
            }

            #endregion
        }
        private void HoldAction()
        {
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Hold

            List<View_RWOConfirm> _rejectlist = (from a in _rwolist
                                                 where a.HoldFlag == true
                                                 select a).ToList();
            Notify notify = new Notify();
            notify.Action = NotifyAction.Hold;
            foreach (View_RWOConfirm reject in _rejectlist)
            {
                RoundWorkOrder rwo = context.RoundWorkOrders.Where(p => p.Company == reject.Company && p.SalesOrderNo == reject.SalesOrderNo && p.WorkOrderNo == reject.WorkOrderNo
                    && p.ColorCode == reject.ColorCode && p.RoundNo == reject.RoundNo).FirstOrDefault();
                rwo.CurrentDataContext = context;
                notify.Hold(rwo);
            }

            #endregion
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            View_RWOConfirm rwo = (View_RWOConfirm)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (rwo == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.RoundWorkOrderListForm), string.Format("{0} Detail", rwo.WorkOrderNo), true, new object[] { rwo, this.TabControls.SelectedTabPage }, null);

        }

        private void btnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            View_RWOConfirm v = this.BindingSource.Current as View_RWOConfirm;
            if (v == null) return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRWOReport).FullName;//報表全名
            data.JobName = string.Format("RWO({0}/{1}/{2}) Report", v.WorkOrderNo, v.ColorCode, v.RoundNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2}", v.WorkOrderNo, v.ColorCode, v.RoundNo); ;
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

        }

        private void repositoryItemCheckEdit1_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            DevExpress.XtraGrid.Columns.GridColumn gcol = objListGridView.FocusedColumn;
            if (gcol == null) return;

            bool check = (bool)e.NewValue;
            View_RWOConfirm v = this.BindingSource.Current as View_RWOConfirm;
            if (v == null) return;

            if (!check) return;

            //((DevExpress.XtraEditors.BaseEdit)sender).DoValidate();

            if (gcol.FieldName == "ConfirmFlag")
            {
                v.ConfirmFlag = check;
                //v.RejectFlag = !check;
                //v.HoldFlag = !check;
                SetStatusValue("RejectFlag", false);
                SetStatusValue("HoldFlag", false);
            }
            else if (gcol.FieldName == "RejectFlag")
            {
                //v.ConfirmFlag = !check;
                v.RejectFlag = check;
                //v.HoldFlag = !check;
                SetStatusValue("ConfirmFlag", false);
                SetStatusValue("HoldFlag", false);
            }
            else if (gcol.FieldName == "HoldFlag")
            {
                //v.ConfirmFlag = !check;
                //v.RejectFlag = !check;
                v.HoldFlag = check;
                SetStatusValue("ConfirmFlag", false);
                SetStatusValue("RejectFlag", false);
            }
        }
        private void SetStatusValue(string fieldName, object value)
        {
            DevExpress.XtraGrid.Columns.GridColumn gcol = objListGridView.Columns.ColumnByFieldName(fieldName);
            if (gcol != null)
            {
                objListGridView.SetFocusedRowCellValue(gcol, value);
            }
        }

        private void btnOutstandingConfirmlist_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";

            DevExpress.XtraReports.UI.XtraReport r;
            if (isSL)
                r = new PH.RWO.BackEnd.RWOProcessingReport();
            else
                r = new PH.RWO.BackEnd.KB.RWOProcessingReport();

            r.DataSource = _rwolist;
            r.ShowPreviewDialog();
        }

        #region select all/none

        private void btnConfirmSelectAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectActon(NotifyAction.Confirm, true);
        }
        private void btnConfirmSelectNone_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectActon(NotifyAction.Confirm, false);
        }

        private void btnHoldSelectAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectActon(NotifyAction.Hold, true);
        }
        private void btnHoldSelectNone_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectActon(NotifyAction.Hold, false);
        }

        private void btnRejectSelectAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectActon(NotifyAction.Reject, true);
        }
        private void btnRejectSelectNone_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectActon(NotifyAction.Reject, false);
        }

        private void SelectActon(NotifyAction action, bool bAll)
        {
            this.objListGridView.BeginUpdate();
            try
            {
                foreach (var item in this._rwolist)
                {
                    switch (action)
                    {
                        case NotifyAction.None:
                            break;
                        case NotifyAction.Confirm:
                            item.ConfirmFlag = bAll;
                            if (bAll)
                            {
                                item.HoldFlag = !bAll;
                                item.RejectFlag = !bAll;
                            }
                            break;
                        case NotifyAction.Hold:
                            item.HoldFlag = bAll;
                            if (bAll)
                            {
                                item.ConfirmFlag = !bAll;
                                item.RejectFlag = !bAll;
                            }
                            break;
                        case NotifyAction.Reject:
                            item.RejectFlag = bAll;
                            if (bAll)
                            {
                                item.HoldFlag = !bAll;
                                item.ConfirmFlag = !bAll;
                            }
                            break;
                        default:
                            break;
                    }
                }
            }
            finally
            {
                this.objListGridView.EndUpdate();
                this.objListGridControl.RefreshDataSource();
            }
        }
        #endregion


    }
}
