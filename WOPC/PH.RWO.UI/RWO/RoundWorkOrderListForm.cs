using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class RoundWorkOrderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RoundWorkOrderListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
            //this.AllowGridEdit = true;
        }
        bool _IsOtherOpen = false;
        public DevExpress.XtraTab.XtraTabPage ParentPage;
        public PH.RWO.BO.RoundWorkOrder RWO;
        protected PH.RWO.BO.RWOSOPCDataContext Context
        {
            get
            {
                PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
                if (context == null)
                    context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                return context;
            }
        }

        public RoundWorkOrderListForm(PH.RWO.BO.RoundWorkOrder rwo, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            this.RWO = rwo;
            //PH.RWO.BO.RWOSOPCDataContext context;
            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            Context.CommandTimeout = 1000;
            this.DataContext = Context;
            this.BindingSource.DataSource = from c in Context.RoundWorkOrders
                                            where c.Company == rwo.Company
                                            && c.SalesOrderNo == rwo.SalesOrderNo
                                            && c.WorkOrderNo == rwo.WorkOrderNo
                                            && c.ColorCode == rwo.ColorCode
                                            && c.RoundNo == rwo.RoundNo
                                            select c;
            //this.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }
        public RoundWorkOrderListForm(PH.RWO.BO.View_RWOConfirm rwo, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            //this.RWO = rwo;
            //PH.RWO.BO.RWOSOPCDataContext context;
            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            Context.CommandTimeout = 1000;
            this.DataContext = Context;
            this.BindingSource.DataSource = from c in Context.RoundWorkOrders
                                            where c.Company == rwo.Company
                                            && c.SalesOrderNo == rwo.SalesOrderNo
                                            && c.WorkOrderNo == rwo.WorkOrderNo
                                            && c.ColorCode == rwo.ColorCode
                                            && c.RoundNo == rwo.RoundNo
                                            select c;
            //this.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }
       
        public override void DataBind()
        {
            base.DataBind();
            this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            this.RowChangeAutoSave = false;
            this.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
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

        public void RefreshListData()
        {
            this.BindingSource.ResetBindings(true);
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //(this.BindingSource.Current as PH.RWO.BO.RoundWorkOrder).WorkOrders.CatNo = "#3#";
        }
        
        public void SaveNewRound(int RealRound)
        {
            PH.RWO.BO.RoundWorkOrder r = this.BindingSource.Current as PH.RWO.BO.RoundWorkOrder;
            r.RoundTotal = RealRound;
            for (int i = 2; i < RealRound + 1; i++)
            {

                PH.RWO.BO.RoundWorkOrder rwo = Global.RwoClone(r);
                rwo.RoundNo = i;
                //rwo.RoundNo = i.ToString();
                rwo.RoundTotal = RealRound;
                if (i > 1)
                {
                    this.BindingSource.Add(rwo);
                }
            }
            this.DataContext.SubmitChanges();
        }

        private void btnRWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";
            PrintRoundWorkOrderReport(rwo, isSL);
        }

        private void PrintRoundWorkOrderReport(RoundWorkOrder rwo, bool isSL)
        {
            if (rwo == null) return;
            string cust = rwo.WorkOrderColor.WorkOrder.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            if (isSL)
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderReport).FullName;//報表全名
            else
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("RWO({0}-{1}) Report", rwo.WorkOrderNo, rwo.RoundNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", rwo.WorkOrderNo, cust.Trim(), rwo.ColorCode, rwo.RoundNo); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void btnRWOKBReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            PrintRoundWorkOrderReport(rwo, false);
        }



    }
}
