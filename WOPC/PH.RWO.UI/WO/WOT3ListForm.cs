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
    public partial class WOT3ListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //public PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public WOT3ListForm()
        {
            InitializeComponent();
            //this.DataContext = context;
            //this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            this.AllowAddRow = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());
        }
        private bool _doneT3;
        private bool _readOnly;
        private bool _notConfirmWO;
        public WOT3ListForm(string doneT3)
            : this()
        {
            _doneT3 = Convert.ToBoolean(doneT3);
        }
        public WOT3ListForm(string doneT3, string readOnly)
            : this(doneT3)
        {
            _readOnly = Convert.ToBoolean(readOnly);
        }
        public WOT3ListForm(string doneT3, string readOnly, string notConfrimWO)
            : this(doneT3, readOnly)
        {
            _notConfirmWO = Convert.ToBoolean(notConfrimWO);
        }

        public override void DataBind()
        {
            this.objListGridView.OptionsBehavior.Editable = true;
            WorkOrderList list = new WorkOrderList();
            this.DataContext = list.CurrentDataContext;
            if (_notConfirmWO)
            {
                this.DataSource = list.GetWorkOrderERPNotConfirm();

                this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = !_readOnly;
                this.colAT3.OptionsColumn.AllowEdit = !_readOnly;

                this.colWOCreateDate.Caption = "SO Issue Date";
                this.colWOCreateDate.FieldName = "SoIssueDate";
                this.colWorkOrderNo.Caption = "Sales Order Line";
                this.colWorkOrderNo.FieldName = "SalesOrderLine";

                this.colFactory.Group();
                this.colCustomer.Group();

                this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
                this.colSalesOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
                this.objListGridView.OptionsView.AllowCellMerge = true;
            }
            else
            {
                if (this._doneT3)
                {
                    this.DataSource = list.GetWorkOrderT3Done();
                    this.colAjustT3DateConfirm.ColumnEdit = null;
                    this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = false;
                    this.colAT3.ColumnEdit = null;
                    this.colAT3.OptionsColumn.AllowEdit = false;
                }
                else
                {
                    this.DataSource = list.GetWorkOrderT3NotDone();
                    this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = !_readOnly;
                    this.colAT3.OptionsColumn.AllowEdit = !_readOnly;
                }
            }
            //this.BindingSource.DataSource=
            base.DataBind();
        }

        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            PrintWorkOrderReport(wo);
        }

        private void PrintWorkOrderReport(WorkOrder wo)
        {
            if (wo == null) return;
            string cust = wo.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderReport).FullName;//報表全名
            data.JobName = string.Format("WO({0}) Report", wo.WorkOrderNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1}", wo.WorkOrderNo, cust.Trim()); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            PH.RWO.BO.WorkOrder wo = (PH.RWO.BO.WorkOrder)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (wo == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.WorkOrdersListForm), wo.WorkOrderNo + " Detail", true, new object[] { wo, this.TabControls.SelectedTabPage }, null);

        }

        private void ribeConfirm_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;

            if (!wo.T3Adjust.HasValue)
            {
                MessageBox.Show("Please input aT3.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            wo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            this.DataContext.SubmitChanges();
            if (this.objListGridView.PostEditor())
            {
                this.objListGridView.UpdateCurrentRow();
                this.objListGridView.HideEditor();
            }
            //ConfirmAT3Form frm = new ConfirmAT3Form(wo.T3);
            //if (frm.ShowDialog() == DialogResult.OK)
            //{
            //    wo.T3Adjust = frm.aT3;
            //    wo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //    this.DataContext.SubmitChanges();
            //}
        }

    }
}
