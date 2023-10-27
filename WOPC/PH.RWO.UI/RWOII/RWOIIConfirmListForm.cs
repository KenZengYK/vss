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
    public partial class RWOIIConfirmListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RWOIIConfirmListForm()
        {
            InitializeComponent();
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
        }

        IList<View_RWOIIConfirm> _rwo2list;
        public override void DataBind()
        {
            this.BindingSource.DataSource = null;
            base.DataBind();
            this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            this.DataContext.CommandTimeout = 1000;
            _rwo2list = PH.RWO.BO.RWOLogic.GetItemsForListing<View_RWOIIConfirm>(string.Format("exec sp_RWOIIConfirmList '{0}'", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID), this.DataContext);
            foreach (View_RWOIIConfirm a in _rwo2list)
            {
                a.HoldFlag = a.ActionStatus == (int)WOActionStatus.Hold;
            }
            this.BindingSource.DataSource = _rwo2list;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
        }

        private void btnAction_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to Confirm/Hold/Reject these RWO Phase II data?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
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

            List<View_RWOIIConfirm> _confirmlist = (from a in _rwo2list
                                                    where a.ConfirmFlag == true
                                                    select a).ToList();
            Notify notify = new Notify();
            notify.Action = NotifyAction.Confirm;
            foreach (View_RWOIIConfirm confirm in _confirmlist)
            {
                RoundWorkOrderII rwo = context.RoundWorkOrderIIs.Where(p => p.Company == confirm.Company && p.SalesOrderNo == confirm.SalesOrderNo && p.WorkOrderNo == confirm.WorkOrderNo 
                    && p.ColorCode == confirm.ColorCode && p.RoundNo == confirm.RoundNo && p.SubFactory == confirm.SubFactory).FirstOrDefault();
                rwo.CurrentDataContext = context;
                if (!notify.Confirm(rwo))
                {
                    MessageBox.Show(string.Format("Confirm RWOII# {0} fail!", rwo.RoNo), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            //distinct project
            //List<Project> projects = new List<Project>();
            foreach (View_RWOIIConfirm confirm in _confirmlist)
            {
                //Project p0 = projects.Find(delegate(Project p1)
                //{
                //    return confirm.Company == p1.Company && confirm.SalesOrderNo == p1.SalesOrderNo;
                //}
                //    );

                //if (p0 == null)
                //{
                //    p0 = context.Projects.Where(p => p.ProjectNo == confirm.ProjectNo && p.Company == confirm.Company).FirstOrDefault();
                //    projects.Add(p0);
                //}

                Right r = context.Rights.Where(r1 => confirm.CustomerCode == r1.CustomerCode && r1.Phase == 2 && confirm.SubFactory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();

                notify.RWOIISendMail(confirm, (r.Current ?? -1));
            }


            //foreach (Project p in projects)
            //{
            //    // string customer = cl.GetCustomerByCode();
            //    Right r = context.Rights.Where(r1 => p.CustomerCode == r1.CustomerCode && r1.Phase == 1 && p.Factory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();

            //    (new Notify()).RWOIISendMail(p, (r.Current ?? -1), _confirmlist);
            //}

            #endregion
        }
        private void RejectAction()
        {
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Reject

            List<View_RWOIIConfirm> _rejectlist = (from a in _rwo2list
                                                   where a.RejectFlag == true
                                                   select a).ToList();
            Notify notify = new Notify();
            notify.Action = NotifyAction.Reject;
            foreach (View_RWOIIConfirm reject in _rejectlist)
            {
                RoundWorkOrderII rwo = context.RoundWorkOrderIIs.Where(p => p.Company == reject.Company && p.SalesOrderNo == reject.SalesOrderNo && p.WorkOrderNo == reject.WorkOrderNo
                    && p.ColorCode == reject.ColorCode && p.RoundNo == reject.RoundNo && p.SubFactory == reject.SubFactory).FirstOrDefault();
                rwo.CurrentDataContext = context;
                notify.Reject(rwo);
            }

            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            //distinct project
            //List<Project> projects = new List<Project>();
            foreach (View_RWOIIConfirm reject in _rejectlist)
            {
                //Project p0 = projects.Find(delegate(Project p1)
                //{
                //    return reject.Company == p1.Company && reject.SalesOrderNo == p1.SalesOrderNo;
                //}
                //    );

                //if (p0 == null)
                //{
                //    p0 = context.Projects.Where(p => p.ProjectNo == reject.ProjectNo && p.Company == reject.Company).FirstOrDefault();
                //    projects.Add(p0);
                //}
                Right r = context.Rights.Where(r1 => reject.CustomerCode == r1.CustomerCode && r1.Phase == 2 && reject.SubFactory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();

                notify.RWOIIRejectSendMail(reject, (r.Current ?? -1));
            }


            //foreach (Project p in projects)
            //{
            //    // string customer = cl.GetCustomerByCode();
            //    Right r = context.Rights.Where(r1 => p.CustomerCode == r1.CustomerCode && r1.Phase == 2 && p.Factory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();

            //    (new Notify()).RWOIIRejectSendMail(p, (r.Current ?? -1), _rejectlist);
            //}

            #endregion
        }
        private void HoldAction()
        {
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Hold

            List<View_RWOIIConfirm> _rejectlist = (from a in _rwo2list
                                                   where a.HoldFlag == true
                                                   select a).ToList();
            Notify notify = new Notify();
            notify.Action = NotifyAction.Hold;
            foreach (View_RWOIIConfirm reject in _rejectlist)
            {
                RoundWorkOrderII rwo = context.RoundWorkOrderIIs.Where(p => p.Company == reject.Company && p.SalesOrderNo == reject.SalesOrderNo && p.WorkOrderNo == reject.WorkOrderNo
                    && p.ColorCode == reject.ColorCode && p.RoundNo == reject.RoundNo && p.SubFactory == reject.SubFactory).FirstOrDefault();
                rwo.CurrentDataContext = context;
                notify.Hold(rwo);
            }

            #endregion
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            View_RWOIIConfirm rwo2 = (View_RWOIIConfirm)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (rwo2 == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.RoundWorkOrderIIListForm), string.Format("{0} Detail", rwo2.WorkOrderNo), true, new object[] { rwo2, this.TabControls.SelectedTabPage }, null);

        }

        private void btnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            View_RWOIIConfirm v = this.BindingSource.Current as View_RWOIIConfirm;
            if (v == null) return;

            //string cust = rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRWOIIReport).FullName;//報表全名
            data.JobName = string.Format("RWO2({0}-{1}-{2}) Report", v.WorkOrderNo, v.RoundNo, v.SubFactory);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", v.WorkOrderNo, v.ColorCode, v.RoundNo, v.SubFactory); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

        }

        private void repositoryItemCheckEdit1_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            DevExpress.XtraGrid.Columns.GridColumn gcol = objListGridView.FocusedColumn;
            if (gcol == null) return;

            bool check = (bool)e.NewValue;
            View_RWOIIConfirm v = this.BindingSource.Current as View_RWOIIConfirm;
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
            PH.RWO.BackEnd.RWOII.RWOProcessingReport r = new PH.RWO.BackEnd.RWOII.RWOProcessingReport();
            r.DataSource = _rwo2list;
            r.ShowPreviewDialog();
        }


    }
}
