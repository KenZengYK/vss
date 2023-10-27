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
    public partial class WOConfirmListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WOConfirmListForm()
        {
            InitializeComponent();
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
        }

        IList<View_WOConfirm> _wolist;
        public override void DataBind()
        {
            this.BindingSource.DataSource = null;
            base.DataBind();
            this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();

            this.DataContext.CommandTimeout = 1000;
            _wolist = PH.RWO.BO.RWOLogic.GetItemsForListing<View_WOConfirm>(string.Format("exec sp_WOConfirmList '{0}'", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID), this.DataContext);
            foreach (View_WOConfirm a in _wolist)
            {
                a.HoldFlag = a.ActionStatus == (int)WOActionStatus.Hold;
            }
            this.BindingSource.DataSource = _wolist;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
        }


        //Xsj20170228: (Addition) Click action button to confirm wo
        private void btnAction_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to Confirm/Hold/Reject these Work Order data?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
                waitform.Show();
                this.objListGridView.PostEditor();
                this.BindingSource.EndEdit();
                //Xsj20170228:Record confirm message.
                ConfirmAction();
                //Xsj20170228:Record reject message.
                RejectAction();
                //Xsj20170228:Record hold message.
                HoldAction();

                this.DataBind();
                waitform.Close();
            }
        }
        private void ConfirmAction()
        {
            Notify notify = new Notify();
            notify.Action = NotifyAction.Confirm;
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Confirm

            List<View_WOConfirm> confirmlist = (from a in _wolist
                                                where a.ConfirmFlag == true
                                                select a).ToList();
            foreach (View_WOConfirm confirm in confirmlist)
            {
                WorkOrder wo = context.WorkOrders.Where(p => p.Company == confirm.Company && p.SalesOrderNo == confirm.SalesOrderNo && p.WorkOrderNo == confirm.WorkOrderNo).FirstOrDefault();
                wo.CurrentDataContext = context;
                //Xsj20170308:Do confirm
                if (!notify.Confirm(wo))
                {
                    MessageBox.Show(string.Format("Confirm WO# {0} fail!", wo.WorkOrderNo), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            #endregion

            #region Send Email
            //distinct project
            List<Project> projects = new List<Project>();
            foreach (View_WOConfirm confirm in confirmlist)
            {
                Project p0 = projects.Find(delegate(Project p1)
                {
                    return confirm.Company == p1.Company && confirm.SalesOrderNo == p1.SalesOrderNo;
                });

                if (p0 == null)
                {
                    p0 = context.Projects.Where(p => p.ProjectNo == confirm.ProjectNo && p.Company == confirm.Company).FirstOrDefault();
                    projects.Add(p0);
                }
            }
            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            foreach (Project p in projects)
            {
                //Xsj20170308:Get current user confirm right.
                Right r = context.Rights.Where(r1 => p.CustomerCode == r1.CustomerCode
                                                  && p.Factory == r1.Factory
                                                  && r1.IsRWO == false
                                                  && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();
                notify.WOSendMail(p, (r.Current ?? -1), confirmlist);
            }
            #endregion
        }

        //Xsj20170228:(Addition) Record reject message
        private void RejectAction()
        {
            Notify notify = new Notify();
            notify.Action = NotifyAction.Reject;
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Reject
            List<View_WOConfirm> rejectList = (from a in _wolist
                                               where a.RejectFlag == true
                                               select a).ToList();
            foreach (View_WOConfirm reject in rejectList)
            {
                WorkOrder wo = context.WorkOrders.Where(p => p.Company == reject.Company && p.SalesOrderNo == reject.SalesOrderNo && p.WorkOrderNo == reject.WorkOrderNo).FirstOrDefault();
                wo.CurrentDataContext = context;
                notify.Reject(wo);
            }
            #endregion

            #region Send Email
            //distinct project
            List<Project> projects = new List<Project>();
            foreach (View_WOConfirm reject in rejectList)
            {
                Project p0 = projects.Find(delegate(Project p1)
                {
                    return reject.Company == p1.Company && reject.SalesOrderNo == p1.SalesOrderNo;
                });

                if (p0 == null)
                {
                    p0 = context.Projects.Where(p => p.ProjectNo == reject.ProjectNo && p.Company == reject.Company).FirstOrDefault();
                    projects.Add(p0);
                }
            }
            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            foreach (Project p in projects)
            {
                Right r = context.Rights.Where(r1 => p.CustomerCode == r1.CustomerCode && p.Factory == r1.Factory && r1.Users.ToLower().IndexOf(user) > -1).FirstOrDefault();
                notify.WORejectSendMail(p, (r.Current ?? -1), rejectList);
            }
            #endregion
        }

        private void HoldAction()
        {
            Notify notify = new Notify();
            notify.Action = NotifyAction.Hold;

            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            #region Hold
            List<View_WOConfirm> holdList = (from a in _wolist
                                             where a.HoldFlag == true
                                             select a).ToList();
            foreach (View_WOConfirm hold in holdList)
            {
                WorkOrder wo = context.WorkOrders.Where(p => p.Company == hold.Company && p.SalesOrderNo == hold.SalesOrderNo && p.WorkOrderNo == hold.WorkOrderNo).FirstOrDefault();
                wo.CurrentDataContext = context;
                notify.Hold(wo);
            }
            #endregion

        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            View_WOConfirm rwo = (View_WOConfirm)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (rwo == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.WorkOrdersListForm), string.Format("{0} Detail", rwo.WorkOrderNo), true, new object[] { rwo, this.TabControls.SelectedTabPage }, null);

        }
        private void btnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            View_WOConfirm v = this.BindingSource.Current as View_WOConfirm;
            if (v == null) return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWOReport).FullName;//報表全名
            data.JobName = string.Format("WO({0}) Report", v.WorkOrderNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0}", v.WorkOrderNo);
            //data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }


        private void repositoryItemCheckEdit1_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            DevExpress.XtraGrid.Columns.GridColumn gcol = objListGridView.FocusedColumn;
            if (gcol == null) return;

            bool check = (bool)e.NewValue;
            View_WOConfirm v = this.BindingSource.Current as View_WOConfirm;
            if (v == null) return;

            if (!check) return;

            //((DevExpress.XtraEditors.BaseEdit)sender).DoValidate();

            if (gcol.FieldName == "ConfirmFlag")
            {
                v.ConfirmFlag = check;// ++i;
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
                r = new PH.RWO.BackEnd.WOProcessingReport();
            else
                r = new PH.RWO.BackEnd.KB.WOProcessingReport();

            r.DataSource = _wolist;
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
                foreach (var item in _wolist)
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

        //private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    WorkOrder wo = this.BindingSource.Current as WorkOrder;
        //    if (wo == null) { return; }

        //    string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
        //    bool isSL = langID != "TH";
        //    PrintWorkOrderReport(wo, isSL);
        //}

        //private void PrintWorkOrderReport(WorkOrder wo, bool isSL)
        //{
        //    if (wo == null) return;
        //    string cust = wo.Project.Customer;
        //    PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
        //    data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
        //    if (isSL)
        //        data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderReport).FullName;//報表全名
        //    else
        //        data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderKBReport).FullName;//報表全名

        //    data.JobName = string.Format("WO({0}) Report", wo.WorkOrderNo);//JOB名稱 
        //    data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
        //    data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
        //    data.Parameter = string.Format("{0};{1}", wo.WorkOrderNo, cust.Trim()); //執行數據源時候需要使用的參數
        //    PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        //}
    }
}
