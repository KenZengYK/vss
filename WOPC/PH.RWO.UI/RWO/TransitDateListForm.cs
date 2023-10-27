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
using PH.Platform.UI.CS.DataQuery;

namespace PH.RWO.UI
{
    public partial class TransitDateListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        //public PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();

        //protected PH.RWO.BO.RWOSOPCDataContext Context
        //{
        //    get
        //    {
        //        PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
        //        if (context == null)
        //            context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        //        return context;
        //    }
        //}
        public DevExpress.XtraTab.XtraTabPage ParentPage;
        public PH.RWO.BO.WorkOrder WO;
        private PH.RWO.BO.WorkOrder CurWorkOrder
        {
            get
            { return this.BindingSource.Current as PH.RWO.BO.WorkOrder; }
        }
        #endregion

        public TransitDateListForm()
        {
            InitializeComponent();
            //if (context != null) context.CommandTimeout = 1000;
            //this.DataContext = context;
            this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            this.objListGridControl.Visible = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());
        }


        PH.RWO.BO.RWOSOPCDataContext context;
        private string _currCustomer;

        public override void DataBind()
        {
            base.DataBind();

            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.RWO.BO.RoundWorkOrder);

            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;

            this.advBandedGridView1.OptionsBehavior.Editable = true;
            //this.bandedGridView1.OptionsBehavior.EditorShowMode = EditorShowMode.Click;
            //this.bandedGridView1.ShowButtonMode = ShowButtonModeEnum.ShowAlways;

            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(RoundWorkOrder);
            param.WarnRecord = -1;
            this.StartEnquiry(param);


            //AssignDataToLookupEdit();
            //foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn item in this.bandedGridView1.Columns)
            //{
            //    item.OptionsColumn.AllowEdit = true;
            //    item.OptionsColumn.ReadOnly = false;

            //}
        }

        protected override void OnClickFind()
        {
            this.objListGridControl.Visible = false;
            try
            {
                using (RWO.RWOTransitEntranceKey frm = new RWO.RWOTransitEntranceKey())
                {
                    this.BindingSource.DataSource = null;

                    DialogResult dr = frm.ShowDialog();
                    if (dr == DialogResult.OK)
                    {
                        _currCustomer = frm.CurrCust;
                        var rwos = from a in this.context.RoundWorkOrders
                                   where a.WorkOrderNo == frm.CurrWO.WorkOrderNo
                                   select a;

                        this.BindingSource.DataSource = rwos;
                        SetCustLayout(_currCustomer);
                        this.objListGridControl.Visible = true;
                    }
                }
            }
            finally
            {
            }
        }
        private void SetCustLayout(string customer)
        {
            this.bandShpt.Children.Clear();
            switch (customer)
            {
                case "BEND":
                    this.bandShpt.Children.Add(this.bandNZ);
                    this.bandShpt.Children.Add(this.bandUSA);
                    this.bandShpt.Children.Add(this.bandUK);
                    break;
                case "SUPD":
                    this.bandShpt.Children.Add(this.bandUK);
                    this.bandShpt.Children.Add(this.bandB);
                    this.bandShpt.Children.Add(this.bandUSA);
                    this.bandShpt.Children.Add(this.bandHK);
                    break;
                default:
                    break;
            }
        }
        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            WorkOrder wo = rwo.WorkOrderColor.WorkOrder;
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
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
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

    }
}
