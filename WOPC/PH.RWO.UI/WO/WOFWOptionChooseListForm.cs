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
    public partial class WOFWOptionChooseListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //public PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public WOFWOptionChooseListForm()
        {
            InitializeComponent();
            //this.DataContext = context;
            //this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            this.AllowAddRow = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());

        }
        private bool _haveChosen;
        private bool _readOnly;
        public WOFWOptionChooseListForm(string chosen)
            : this()
        {
            this._haveChosen = Convert.ToBoolean(chosen);
        }
        public WOFWOptionChooseListForm(string chosen, string readOnly)
            : this(chosen)
        {
            this._readOnly = Convert.ToBoolean(readOnly);
        }
        public override void DataBind()
        {
            this.objListGridView.OptionsBehavior.Editable = true;
            WorkOrderList list = new WorkOrderList();
            this.DataContext = list.CurrentDataContext;
            this.BindingSource.DataSource = typeof(WOChooseFW);

            if (this._haveChosen || this._readOnly)
            {
                this.colCheckFlag.Visible = false;
                this.objListGridView.Columns.Remove(this.colCheckFlag);
            }

            if (this._haveChosen)
                this.DataSource = list.GetWOChooseFWDone();
            else
                this.DataSource = list.GetWOChooseFWNotDone();

            base.DataBind();
        }

        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WOChooseFW cfw = this.BindingSource.Current as WOChooseFW;
            if (cfw == null) return;

            WorkOrder wo = cfw.WorkOrder;
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

        private void ribeChoose_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WOChooseFW cfw = this.BindingSource.Current as WOChooseFW;
            if (cfw == null) return;

            if (!cfw.FactoryWork.HasValue)
            {
                MessageBox.Show(string.Format("Option {0} must enter FW Start Date!", cfw.Seq), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            foreach (var item in cfw.WorkOrder.WOChooseFWs)
            {
                if (item.Seq == 4) continue;
                if (!item.FactoryWork.HasValue)
                {
                    MessageBox.Show(string.Format("Option {0} must enter FW Start Date!", item.Seq), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }

            if (MessageBox.Show(string.Format("Are you sure to Chosen Option {0} ?", cfw.Seq), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                cfw.Chosen = true;
                cfw.ChosenPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                cfw.ChosenDate = DateTime.Now;

                //save
                RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
                if (context != null)
                    context.SubmitChanges();

                //notify
                (new Notify()).WOFWSendMail(cfw.WorkOrder);
            }




        }

        private void objListGridView_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            WOChooseFW cfw1 = this.objListGridView.GetRow(e.RowHandle1) as WOChooseFW;
            WOChooseFW cfw2 = this.objListGridView.GetRow(e.RowHandle2) as WOChooseFW;

            switch (e.Column.FieldName)
            {
                case "Factory":
                case "Customer":
                case "SalesOrderNo":
                case "WorkOrderNo":
                case "WOColors":
                case "Opt3vs1":
                case "Opt3vs2":
                case "Opt2vs1":
                case "Opt4vs2":
                case "ProjectNo":
                    e.Merge = cfw1.WorkOrderNo == cfw2.WorkOrderNo;
                    e.Handled = true;
                    break;
            }
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            WOChooseFW cfw = (PH.RWO.BO.WOChooseFW)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (cfw == null) return;

            PH.RWO.BO.WorkOrder wo = cfw.WorkOrder;
            if (wo == null) return;

            CreateProgramForm(typeof(PH.RWO.UI.WorkOrdersListForm), wo.WorkOrderNo + " Detail", true, new object[] { wo, this.TabControls.SelectedTabPage }, null);
        }

    }
}
