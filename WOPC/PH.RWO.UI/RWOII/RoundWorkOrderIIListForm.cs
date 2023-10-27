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
    public partial class RoundWorkOrderIIListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RoundWorkOrderIIListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(RoundWorkOrderIIDetailForm).FullName;
            //this.AllowGridEdit = true;
        }
        bool _IsOtherOpen = false;
        public DevExpress.XtraTab.XtraTabPage ParentPage;
        public PH.RWO.BO.RoundWorkOrderII RWO2;
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
        public RoundWorkOrderIIListForm(PH.RWO.BO.RoundWorkOrderII rwo2, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            this.RWO2 = rwo2;
            //PH.RWO.BO.RWOSOPCDataContext context;
            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            Context.CommandTimeout = 1000;
            this.DataContext = Context;
            this.BindingSource.DataSource = from c in Context.RoundWorkOrderIIs
                                            where c.Company == rwo2.Company
                                            && c.SalesOrderNo == rwo2.SalesOrderNo
                                            && c.WorkOrderNo == rwo2.WorkOrderNo
                                            && c.ColorCode == rwo2.ColorCode
                                            && c.RoundNo == rwo2.RoundNo
                                            && c.SubFactory == rwo2.SubFactory
                                            select c;
            this.EditorTypeName = typeof(RoundWorkOrderIIDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }
        public RoundWorkOrderIIListForm(PH.RWO.BO.View_RWOIIConfirm rwo2, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            //this.RWO = rwo;
            //PH.RWO.BO.RWOSOPCDataContext context;
            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            Context.CommandTimeout = 1000;
            this.DataContext = Context;
            this.BindingSource.DataSource = from c in Context.RoundWorkOrderIIs
                                            where c.Company == rwo2.Company
                                            && c.SalesOrderNo == rwo2.SalesOrderNo
                                            && c.WorkOrderNo == rwo2.WorkOrderNo
                                            && c.ColorCode == rwo2.ColorCode
                                            && c.RoundNo == rwo2.RoundNo
                                            && c.SubFactory == rwo2.SubFactory
                                            select c;
            this.EditorTypeName = typeof(RoundWorkOrderIIDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }

        public override void DataBind()
        {
            base.DataBind();
            this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            this.RowChangeAutoSave = false;
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

        //public void SaveNewRound(int RealRound)
        //{
        //    PH.RWO.BO.RoundWorkOrder r = this.BindingSource.Current as PH.RWO.BO.RoundWorkOrder;
        //    r.RoundTotal = RealRound;
        //    for (int i = 2; i < RealRound + 1; i++)
        //    {

        //        PH.RWO.BO.RoundWorkOrder rwo = Global.RwoClone(r);
        //        rwo.RoundNo = i;
        //        //rwo.RoundNo = i.ToString();
        //        rwo.RoundTotal = RealRound;
        //        if (i > 1)
        //        {
        //            this.BindingSource.Add(rwo);
        //        }
        //    }
        //    this.DataContext.SubmitChanges();
        //}

        private void btnRWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";
            PrintRoundWorkOrderReport(rwo2, isSL);
        }

        private void PrintRoundWorkOrderReport(RoundWorkOrderII rwo2, bool isSL)
        {
            if (rwo2 == null) return;
            string cust = rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRWOIIReport).FullName;//報表全名
            //if (isSL)
            //    data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrder2Report).FullName;//報表全名
            //else
            //    data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrder2KBReport).FullName;//報表全名

            data.JobName = string.Format("RWO2({0}-{1}-{2}) Report", rwo2.WorkOrderNo, rwo2.RoundNo, rwo2.SubFactory);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", rwo2.WorkOrderNo, rwo2.ColorCode, rwo2.RoundNo, rwo2.SubFactory); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

        }

        private void btnRWOKBReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            PrintRoundWorkOrderReport(rwo2, false);
        }



    }
}
