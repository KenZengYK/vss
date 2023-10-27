using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class WorkOrdersListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        //public PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();

        protected PH.RWO.BO.RWOSOPCDataContext Context
        {
            get
            {
                PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
                if (context == null)
                    context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                return context;
            }
        }
        bool _IsOtherOpen = false;
        public DevExpress.XtraTab.XtraTabPage ParentPage;
        public PH.RWO.BO.WorkOrder WO;
        private PH.RWO.BO.WorkOrder CurWorkOrder
        {
            get
            { return this.BindingSource.Current as PH.RWO.BO.WorkOrder; }
        }
        #endregion

        public WorkOrdersListForm()
        {
            InitializeComponent();
            //if (context != null) context.CommandTimeout = 1000;
            //this.DataContext = context;
            this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());
        }

        public WorkOrdersListForm(PH.RWO.BO.WorkOrder wo, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            this.WO = wo;
            //PH.RWO.BO.RWOSOPCDataContext context;
            //Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            Context.CommandTimeout = 1000;
            this.DataContext = Context;
            this.BindingSource.DataSource = from c in Context.WorkOrders
                                            where c.Company == wo.Company
                                            && c.SalesOrderNo == wo.SalesOrderNo
                                            && c.WorkOrderNo == wo.WorkOrderNo
                                            select c;
            this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }

        public WorkOrdersListForm(PH.RWO.BO.View_WOConfirm vwo, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {

            //PH.RWO.BO.RWOSOPCDataContext context;
            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            Context.CommandTimeout = 1000;
            this.DataContext = Context;
            this.BindingSource.DataSource = from c in Context.WorkOrders
                                            where c.Company == vwo.Company
                                            && c.SalesOrderNo == vwo.SalesOrderNo
                                            && c.WorkOrderNo == vwo.WorkOrderNo
                                            select c;
            this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (this._IsOtherOpen)
            {
                this.Tag = "Edit";
                this.OnClickOpen();
            }
        }

        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";
            PrintWorkOrderReport(wo, isSL);
        }

        private void PrintWorkOrderReport(WorkOrder wo, bool isSL)
        {
            if (wo == null) return;
            string cust = wo.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            if (isSL)
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderReport).FullName;//報表全名
            else //KB
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("WO({0}) Report", wo.WorkOrderNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1}", wo.WorkOrderNo, cust.Trim()); //執行數據源時候需要使用的參數
            //PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            PH.Platform.BackEnd.BO.SReport.InsertData(data);
        }

        private void btnWOKBReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            PrintWorkOrderReport(wo, false);
        }

        private void bbut_AutoGenerateSPC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
          //  PH.SPC.BO.SampleOrder sampleOrder = null;
          //  PH.SPC.BO.Style style = this.CurWorkOrder.CheckCreatedtoSPC();
          //  if (style != null)
          //  {
          //      //if (MessageBox.Show(string.Format("{0} 的辦單已經生成, 辦單號為 {1},需要再重新生成一次嗎?", this.CurWorkOrder.WorkOrderNo, style.SampleOrderID),
          //      //    "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.Yes)
          //      GenerateSPCform form = new GenerateSPCform("詢問", string.Format("{0} 的辦單已經由 {1} 生成, 辦單號為 {2},需要再重新生成一次嗎?", this.CurWorkOrder.WorkOrderNo, style.SampleOrder.Table, style.SampleOrderID), style);
          //      if (form.ShowDialog() == DialogResult.Yes)
          //      {
          //          sampleOrder = this.CurWorkOrder.AutoGenerateSPC();
          //          MessageBox.Show(sampleOrder.GenerateFromWorkOrderTips);
          ////  TODO:--
          //      }

          //  }
          //  else
          //  {
          //      if (MessageBox.Show(string.Format("是否要生成 {0} 的辦單?", this.CurWorkOrder.WorkOrderNo), "詢問", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.Yes)
          //          return;

          //      sampleOrder = this.CurWorkOrder.AutoGenerateSPC();
          //      MessageBox.Show(sampleOrder.GenerateFromWorkOrderTips);
          //  }
          //  if (sampleOrder != null && sampleOrder.GenerateFromWorkOrderStatus)
          //  {
          //      if (MessageBox.Show(string.Format("是否打印 {0} 的樣辦制造通知單?", sampleOrder.SampleOrderID), "詢問", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.Yes)
          //          return;

          //      foreach (PH.SPC.BO.Style style1 in sampleOrder.Styles)
          //      {
          //          foreach (PH.SPC.BO.StyleSort sort in style1.StyleSorts)
          //          {
          //              foreach (PH.SPC.BO.StyleSortEdition edition in sort.StyleSortEditions)
          //              {
          //                  Global.PrintWorkNoteReport(edition);
          //              }
          //          }
          //      }

          //  }
        }

        private void barButtonSample_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //if (MessageBox.Show("是否打印樣板質量/顏色跟進（大貨料）報表?", "詢問", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes) 
            {
                Project pro= ((this.PrevForm as ProjectListForm).BindingSource.Current as Project);
                string Customer = pro.Customer;
                string CustomerCode = pro.CustomerCode;
                string ProjectNo = pro.ProjectNo;
                string Season = pro.Season;
                WorkOrder workorder = (this.BindingSource.Current as WorkOrder);
                string colorCode = workorder.WOColors;
                string CustomerStyleNo = workorder.CustomerStyleNo;
                string PHStyleNo = workorder.StyleNo;
                string WorkerOrder = workorder.WorkOrderNo;
                string DBC = workorder.DBC;
                PH.RWO.BackEnd.Reports.SL.WO.WorkOrderSample Rpt = new PH.RWO.BackEnd.Reports.SL.WO.WorkOrderSample(CustomerCode,
                    Season, ProjectNo, colorCode, CustomerStyleNo, PHStyleNo, WorkerOrder, DBC);
                Rpt.ShowPreviewDialog();

            }
        }

    }
}
