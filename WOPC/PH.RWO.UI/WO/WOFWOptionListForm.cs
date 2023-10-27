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
using DevExpress.XtraBars;

namespace PH.RWO.UI
{
    public partial class WOFWOptionListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //public PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public WOFWOptionListForm()
        {
            InitializeComponent();
            //this.DataContext = context;
            //this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            this.AllowAddRow = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());
        }
        private int _seq;
        private bool _notConfirmWO;
        public WOFWOptionListForm(string seq)
            : this()
        {
            _seq = Convert.ToInt32(seq);
            CheckOption();
        }
        public WOFWOptionListForm(string seq, string notConfirmWO)
            : this(seq)
        {
            _notConfirmWO = Convert.ToBoolean(notConfirmWO);

        }

        private void CheckOption()
        {
            if (this._notConfirmWO)
            {


            }
            else
            {

                switch (_seq)
                {
                    case 2:
                        this.colOption4FW.ColumnEdit = null;
                        this.colNumberOfLine.ColumnEdit = null;
                        this.colOption4FW.OptionsColumn.AllowEdit = false;
                        this.colNumberOfLine.OptionsColumn.AllowEdit = false;
                        this.colOption2FW.OptionsColumn.AllowEdit = true;

                        this.colOption3FW.Visible = false;
                        this.colOption4FW.Visible = false;
                        this.colNumberOfLine.Visible = false;
                        this.colLine_SAH.Visible = false;
                        this.colEFF.Visible = false;
                        this.colCU.Visible = false;
                        this.colWF.Visible = false;
                        break;
                    case 3:
                        this.colOption2FW.ColumnEdit = null;
                        this.colOption4FW.ColumnEdit = null;
                        this.colOption2FW.OptionsColumn.AllowEdit = false;
                        this.colOption4FW.OptionsColumn.AllowEdit = false;
                        this.colNumberOfLine.OptionsColumn.AllowEdit = true;

                        this.colOption4FW.Visible = false;
                        break;
                    case 4:
                        this.colOption2FW.ColumnEdit = null;
                        this.colNumberOfLine.ColumnEdit = null;
                        this.colOption2FW.OptionsColumn.AllowEdit = false;
                        this.colNumberOfLine.OptionsColumn.AllowEdit = false;
                        this.colOption4FW.OptionsColumn.AllowEdit = true;

                        this.colLine_SAH.Visible = false;
                        this.colEFF.Visible = false;
                        this.colCU.Visible = false;
                        this.colWF.Visible = false;
                        break;
                    default:
                        break;
                }
            }
        }
        public override void DataBind()
        {
            this.objListGridView.OptionsBehavior.Editable = !this._notConfirmWO;
            WorkOrderList list = new WorkOrderList();
            this.DataContext = list.CurrentDataContext;
            this.BindingSource.DataSource = typeof(WorkOrder);
            if (this._notConfirmWO)
            {
                this.colWorkOrderNo.Caption = "Sales Order Line";
                this.colWorkOrderNo.FieldName = "SalesOrderLine";

                this.colOption4FW.ColumnEdit = null;
                this.colNumberOfLine.ColumnEdit = null;
                this.colOption4FW.OptionsColumn.AllowEdit = false;
                this.colNumberOfLine.OptionsColumn.AllowEdit = false;
                this.colOption2FW.OptionsColumn.AllowEdit = false;

                this.colOption3FW.Visible = false;
                this.colOption4FW.Visible = false;
                this.colNumberOfLine.Visible = false;
                this.colLine_SAH.Visible = false;
                this.colEFF.Visible = false;
                this.colCU.Visible = false;
                this.colWF.Visible = false;


                this.DataSource = list.GetWorkOrderERPNotConfirm();
            }
            else
            {
                this.colSoIssueDate.Visible = false;
                this.colFactoryWorkShipCompleted.Visible = false;
                switch (_seq)
                {
                    case 2:
                        this.DataSource = list.GetWorkOrderFWOption2NotDone();
                        break;
                    case 3:
                        this.DataSource = list.GetWorkOrderFWOption3NotDone();
                        break;
                    case 4:
                        this.DataSource = list.GetWorkOrderFWOption4NotDone();
                        break;
                    default:
                        break;
                }
            }

            this.btnCalOption3.Visibility = BarItemVisibility.Never;
            if (_seq == 3) this.btnCalOption3.Visibility = BarItemVisibility.Always;

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

        private void ribeFW2_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;

            PH.RWO.UI.WO.frmAgreedFW frm = new PH.RWO.UI.WO.frmAgreedFW(2, wo.WorkOrderColors, DateTime.Now);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                foreach (var item in wo.WOChooseFWs)
                {
                    if (item.Seq == 2)
                    {
                        item.FactoryWork = frm.FW;
                        item.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                        item.AgreedFWDate = DateTime.Now;
                    }
                }
                if (this.objListGridView.PostEditor())
                {
                    this.objListGridView.UpdateCurrentRow();
                    this.objListGridView.HideEditor();
                }
                RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
                if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();

                wo.CalcOption3Data(); //在选择Option 2后自动计算Option 3, 由David加入 2020-07-31

                context.SubmitChanges();
            }
        }

        private void ribeFW4_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;

            DateTime? dt2 = null;
            //DateTime? dt4 = null;

            foreach (var item in wo.WOChooseFWs)
            {
                if (item.Seq == 2) dt2 = item.FactoryWork;
            }
            //DateTime? dt = dt2.HasValue ? dt2 : dt4;

            PH.RWO.UI.WO.frmAgreedFW frm = new PH.RWO.UI.WO.frmAgreedFW(4, wo.WorkOrderColors, dt2);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                foreach (var item in wo.WOChooseFWs)
                {
                    if (item.Seq == 4)
                    {
                        item.FactoryWork = frm.FW;
                        item.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                        item.AgreedFWDate = DateTime.Now;
                    }
                }
                if (this.objListGridView.PostEditor())
                {
                    this.objListGridView.UpdateCurrentRow();
                    this.objListGridView.HideEditor();
                }
                RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
                if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                context.SubmitChanges();
            }
        }

        private void ribeLine_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;
            PH.RWO.UI.InputLineNumber frm = new PH.RWO.UI.InputLineNumber(wo);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                double? oldLine = wo.NumberOfLine;
                double? newLine = Convert.ToDouble(frm.LineNumber);

                // if value not change, raise it
                if (oldLine == newLine)
                {
                    wo.NumberOfLine = null;
                }
                wo.NumberOfLine = newLine;
                wo.EFF = frm.EFF;
                wo.CU = frm.CU;

                //--------------------------------------------------------------------------------------------
                //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  begin ---
                //--------------------------------------------------------------------------------------------
                if ((wo.WF ?? 0) == 0)
                {
                    wo.WF = frm.WF;
                }

                if ((wo.Line_SAH ?? 0) == 0)
                {
                    wo.Line_SAH = frm.SAH;
                }
                //--------------------------------------------------------------------------------------------
                //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  end ---
                //--------------------------------------------------------------------------------------------



                if (this.objListGridView.PostEditor())
                {
                    this.objListGridView.UpdateCurrentRow();
                    this.objListGridView.HideEditor();
                }

                RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
                if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                context.SubmitChanges();
            }

        }

        private void btnCalOption3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count == 0) return;

            try
            {
                foreach (WorkOrder wo in this.BindingSource.List)
                {
                    wo.CalcOption3Data();
                }

                (this.DataContext as RWOSOPCDataContext).SubmitChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show("计算Option 3出错：" + ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            this.DataBind();
            MessageBox.Show("计算Option 3已完成", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

    }
}
