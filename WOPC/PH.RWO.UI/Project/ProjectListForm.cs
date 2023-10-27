using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.AuthMgr.BO;
using PH.RWO.BO;
using PH.Platform.UI.CS.DataQuery;
using DevExpress.XtraBars;


namespace PH.RWO.UI
{
    public partial class ProjectListForm : ListForm
    {
        /// <summary>
        /// 
        /// </summary>
        public ProjectListForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="status"></param>
        public ProjectListForm(string status)
        {
            InitializeComponent();
            this._status = status;

        }

        DataHelper helper = new DataHelper();
        private string _status = "ALL";
        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = helper.RWOContext;
            this.EditorTypeName = typeof(ProjectDetailForm).FullName;
            this.BindingSource.DataSource = helper.GetProject(this._status);

            //if (this._status == "ALL" || this._status == "C")
            //{
            //    this.BindingSource.DataSource = helper.GetProject(this._status);
            //}
            //else
            //{
            //    CreateQuery();
            //}

            //控制为Review状态，只能查看，由david加入 2020-08-25
            this.barBtnDel.Visibility = BarItemVisibility.Never;
        }


        public string cono = "P1";
        public string ordn = "";
        private void btnGetAS400Data_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DateTime d = DateTime.Now;
            int dt = Convert.ToInt32(d.ToString("yyyyMMdd"));
            string tm = d.ToString("HHmmssfff");

            Form frm = new GetDataForm(this);

            frm.ShowDialog();
            if (string.IsNullOrEmpty(ordn))
            {
                return;
            }
            //this.DataContext.CommandTimeout = 6000;
            //(this.DataContext as PH.RWO.BO.RWOSOPCDataContext).Sp_GetAS400Data(dt, tm, cono, ordn);

            //DataHelper helper = new DataHelper();
            //this.BindingSource.DataSource = helper.GetProject(cono, ordn);
            BackEndJob(cono + "," + ordn);
        }

        private void CreateQuery()
        {
            DataQueryParameter QueryParameter = new DataQueryParameter();
            QueryParameter.BoType = typeof(Project);           //被查詢BO的Class Type
            QueryParameter.DataContext = this.DataContext;     //數據查詢使用的DataContext
            QueryParameter.View = this.objListGridView;             //顯示數據所用的ColumnView
            QueryParameter.FixedWherePart = " Status<>'C' and Status <> 'X' and SoIssueDate >= dateadd(year, -1, getdate()) "; //Outstand只取一年内的Project, 由David加入 2020-08-17
            QueryParameter.WarnRecord = 200;
            this.StartEnquiry(QueryParameter);
        }



        public void BackEndJob(string parameters)
        {
            System.Diagnostics.Trace.WriteLine("1");
            string[] paras = parameters.Split(',');
            if (paras[0] == string.Empty || paras[1] == string.Empty)
                return;
            //PH.WIP.BO.Data data = new PH.WIP.BO.Data(paras[0], Convert.ToDateTime(paras[1]), paras[2]);
            //data.CreateData();

            System.Diagnostics.Trace.WriteLine("2");
            string cono = paras[0];
            string ordn = paras[1];
            DateTime d = DateTime.Now;
            int dt = Convert.ToInt32(d.ToString("yyyyMMdd"));
            string tm = d.ToString("HHmmssfff");

            System.Diagnostics.Trace.WriteLine("3");
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            context.CommandTimeout = 18000;
            context.Sp_GetAS400Data(dt, tm, cono, ordn);
            System.Diagnostics.Trace.WriteLine("4");
        }

        private void btnProjectStatus_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DateRangeForm frm = new DateRangeForm();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                CustomerList list = new CustomerList();
                string[] custs = list.GetCustomerCodesByCustomer(frm.Customer);

                var aa = from a in helper.RWOContext.Projects
                         where (string.IsNullOrEmpty(frm.Customer) || custs.Contains(a.Customer))
                             // && (a.WorkOrders.Any(p => p.WorkOrderNo.StartsWith("W") && p.WOStatus == "8" && p.CompletedDate.HasValue)
                             // || a.WorkOrders.Any(p => p.WorkOrderNo.StartsWith("W") && p.WOStatus != "-1" && p.WOStatus != "8"))
                         && a.WorkOrders.Any(p => p.WorkOrderNo.StartsWith("W") && p.WOStatus != "-1")

                         && (frm.WOCompletedDateFrom == DateTime.MinValue || (a.WorkOrders.Any(p => p.CompletedDate >= frm.WOCompletedDateFrom && p.CompletedDate < frm.WOCompletedDateTo.AddDays(1))))
                         && (frm.DeliveryDateFrom == DateTime.MinValue || (a.WorkOrders.Any(p => p.DeliveryShipCompleted >= frm.DeliveryDateFrom && p.DeliveryShipCompleted < frm.DeliveryDateTo.AddDays(1))))
                         && (frm.StatusGroupBy == ProjectStatusGroupby.ALL
                         || (frm.StatusGroupBy == ProjectStatusGroupby.Outstanding && a.WorkOrders.Any(p => p.WorkOrderNo.StartsWith("W") && p.WOStatus != "-1" && p.WOStatus != "8"))
                         || (frm.StatusGroupBy == ProjectStatusGroupby.Completed && a.WorkOrders.All(p => p.WorkOrderNo.StartsWith("W") && p.WOStatus == "8"))
                         )

                         select a;

                #region do data - ex-fty date for sorting
                foreach (var a in aa)
                {
                    WorkOrder[] wos = a.WOs;
                    DateTime? exftyDateMax = null;
                    DateTime? exftyDateMin = null;
                    DateTime? recentWOCompletedDate = null;

                    for (int i = 0; i < wos.Length; i++)
                    {
                        if (wos[i].Status2 == "Y" && ((wos[i].CompletedDate ?? DateTime.MinValue) > (recentWOCompletedDate)))
                            recentWOCompletedDate = wos[i].CompletedDate ?? DateTime.MinValue;

                        if (wos[i].Status2 == "N")
                        {
                            if ((exftyDateMin ?? DateTime.MaxValue) > (wos[i].LCLExFtyShipCompleted ?? DateTime.MinValue))
                                exftyDateMin = wos[i].LCLExFtyShipCompleted;
                            if ((exftyDateMax ?? DateTime.MinValue) < (wos[i].LCLExFtyShipCompleted ?? DateTime.MinValue))
                                exftyDateMax = wos[i].LCLExFtyShipCompleted;
                        }
                    }
                    a.NonCompletedWOExftyDateMax = exftyDateMax;
                    a.NonCompletedWOExftyDateMin = exftyDateMin;
                    a.RecentWOCompletedDate = recentWOCompletedDate;
                }

                #endregion

                PH.RWO.BackEnd.WOStatusReport rpt = new PH.RWO.BackEnd.WOStatusReport(frm.Customer, frm.WOCompletedDateFrom, frm.WOCompletedDateTo, frm.DeliveryDateFrom, frm.DeliveryDateTo, frm.StatusGroupBy);
                rpt.DataSource = aa;

#if Platform2014
                PH.Platform.UI.CS.ReportHelper.Show(rpt);
#else
                rpt.ShowPreviewDialog();
#endif
            }
        }

        private void btnShowWOs_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.objListGridView.OptionsDetail.EnableMasterViewMode = !this.objListGridView.OptionsDetail.EnableMasterViewMode;
            this.btnShowWOs.Caption = this.objListGridView.OptionsDetail.EnableMasterViewMode ? "Hide WOs" : "Show WOs";
        }

        protected override void DeleteCurrent()
        {
            //最近發現一些Project自動消失了，如：ETAA973AO、ETAA987、ETAA987AO、ETAA986O，
            //我們懷疑是人手刪除了Project，加入删除日志功能 2019-10-16 由David加入

            Project project = this.BindingSource.Current as Project;
            if (project != null)
            {
                ProjectDeleteLog log = new ProjectDeleteLog();
                log.Company = project.Company;
                log.SalesOrderNo = project.SalesOrderNo;
                log.ProjectNo = project.ProjectNo;
                log.DeleteMan = PH.Platform.Common.SysParamHelper.Instance.UserID;
                log.DeleteDate = DateTime.Now;

                (this.DataContext as RWOSOPCDataContext).ProjectDeleteLogs.InsertOnSubmit(log);
                (this.DataContext as RWOSOPCDataContext).SubmitChanges();
            }

            base.DeleteCurrent();

        }

    }
}
