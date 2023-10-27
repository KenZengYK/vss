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
    public partial class WOcRWOListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WOcRWOListForm()
        {
            InitializeComponent();
            //this.DataContext = context;
            //this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());

            //this._haveChosen = false;
            //this._readOnly = true;

        }
        private bool _readOnly;
        private bool _notConfirmRWO;
        public WOcRWOListForm(string readOnly)
            : this()
        {
            this._readOnly = Convert.ToBoolean(readOnly);
        }
        public WOcRWOListForm(string readOnly, string notConfirmRWO)
            : this(readOnly)
        {
            _notConfirmRWO = Convert.ToBoolean(notConfirmRWO);
        }

        public override void DataBind()
        {
            base.DataBind();

            if (this._readOnly)
            {
                //this.colCheckFlag.Visible = false;
                //this.objListGridView.Columns.Remove(this.colCheckFlag);
            }

            this.objListGridView.OptionsBehavior.Editable = !this._readOnly;
            //this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            //gvRWO.OptionsDetail.EnableMasterViewMode = false;

            RoundWorkOrderList list = new RoundWorkOrderList();
            this.DataContext = list.CurrentDataContext;
            this.BindingSource.DataSource = typeof(RoundWorkOrder);

            if (this._notConfirmRWO)
            {
                this.AllowGridEdit = false;
                //this.colWorkOrderNo.Caption = "Sales Order Line";
                //this.colWorkOrderNo.FieldName = "SalesOrderLine";
                //this.colWorkOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
                this.DataSource = list.GetRWOsNotConfirm();
            }
            else
            {
                this.colSoIssueDate.Visible = false;
                this.DataSource = list.GetRWOsHasDoneOption();
            }

        }

        private void objListGridView_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            RoundWorkOrder rwo1 = this.objListGridView.GetRow(e.RowHandle1) as RoundWorkOrder;
            RoundWorkOrder rwo2 = this.objListGridView.GetRow(e.RowHandle2) as RoundWorkOrder;
           
            switch (e.Column.FieldName)
            {
                case "Company":
                case "Factory":
                case "Customer":
                case "SalesOrderNo":
                case "ProjectNo":
                    e.Merge = rwo1.SalesOrderNo == rwo2.SalesOrderNo;
                    e.Handled = true;
                    break;
                case "WorkOrderNo":
                case "ColorCode":
                    e.Merge = rwo1.WorkOrderNo == rwo2.WorkOrderNo;
                    e.Handled = true;
                    break;
            }
        }


        #region WO Report

        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            WorkOrder wo = rwo.WorkOrderColor.WorkOrder;
            PrintWorkOrderReport(wo);
        }

        private void PrintWorkOrderReport(WorkOrder wo)
        {
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";

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

        #endregion

        #region RWO Report

        private void btnRWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            PrintRoundWorkOrderReport(rwo);

        }
        private void PrintRoundWorkOrderReport(RoundWorkOrder rwo)
        {
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";

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

        #endregion

    }
}
