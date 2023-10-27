using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.RWO.UI
{
    public partial class RWOT3ListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RWOT3ListForm()
        {
            InitializeComponent();

            //this.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            this.AllowAddRow = false;
        }
        private bool _doneT3;
        private bool _readOnly;
        private bool _notConfirmWO;
        public RWOT3ListForm(string doneT3)
            : this()
        {
            _doneT3 = Convert.ToBoolean(doneT3);
        }
        public RWOT3ListForm(string doneT3, string readOnly)
            : this(doneT3)
        {
            _readOnly = Convert.ToBoolean(readOnly);
        }
        public RWOT3ListForm(string doneT3, string readOnly, string notConfrimWO)
            : this(doneT3, readOnly)
        {
            _notConfirmWO = Convert.ToBoolean(notConfrimWO);
        }
        public override void DataBind()
        {
            this.objListGridView.OptionsBehavior.Editable = true;
            RoundWorkOrderList list = new RoundWorkOrderList();
            this.DataContext = list.CurrentDataContext;

            if (_notConfirmWO)
            {
                this.DataSource = list.GetRWOsERPNotConfirm();

                this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = !_readOnly;
                this.colAjustT3Date.OptionsColumn.AllowEdit = !_readOnly;

                this.colRWOCreateDate1.Caption = "SO Issue Date";
                this.colRWOCreateDate1.FieldName = "SoIssueDate";
                this.colWorkOrder.Caption = "Sales Order Line";
                this.colWorkOrder.FieldName = "SalesOrderLine";
                this.colOption1FW.Visible = false;

                this.colFactory.Group();
                this.colCustomer.Group();

                this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
                this.colSalesOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
                this.objListGridView.OptionsView.AllowCellMerge = true;
            }
            else
            {
                if (_doneT3) //Fill in it's dd & accept it
                {
                    this.DataSource = list.GetRoundWorkOrderT3Done();
                    this.colNeedAdjustT3Date.OptionsColumn.AllowEdit = false;
                    this.colAjustT3Date.OptionsColumn.AllowEdit = true;
                    this.colaT3DateAccept.OptionsColumn.AllowEdit = true;

                    //this.colAjustT3DateConfirm.ColumnEdit = null;
                    //this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = false;

                    //this.colAjustT3Date.ColumnEdit = null;
                    //this.colAjustT3Date.OptionsColumn.AllowEdit = false;
                }
                else //aT3 need?
                {
                    this.DataSource = list.GetRoundWorkOrderT3NotDone();
                    this.colNeedAdjustT3Date.OptionsColumn.AllowEdit = true;
                    this.colAjustT3Date.OptionsColumn.AllowEdit = false;
                    this.colaT3DateAccept.OptionsColumn.AllowEdit = false;

                    //this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = !_readOnly;
                    //this.colAjustT3Date.OptionsColumn.AllowEdit = !_readOnly;
                }
            }
            base.DataBind();
        }


        //protected override void OnClickFind()
        //{
        //    DataQueryParameter QueryParameter = new DataQueryParameter();
        //    QueryParameter.BoType = typeof(RoundWorkOrder);
        //    QueryParameter.DataContext = this.DataContext;
        //    QueryParameter.View = this.objListGridView;
        //    //QueryParameter.FixedWherePart = " Status<>'C' and SoIssueDate >= dateadd(year, -1, getdate()) "; //Outstand只取一年内的Project, 由David加入 2020-08-17
        //    QueryParameter.WarnRecord = 200;
        //    this.StartEnquiry(QueryParameter);

        //    base.OnClickFind();
        //}

        private void btnRWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            PrintRoundWorkOrderReport(rwo);
        }

        private void PrintRoundWorkOrderReport(RoundWorkOrder rwo)
        {
            if (rwo == null) return;
            string cust = rwo.WorkOrderColor.WorkOrder.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderReport).FullName;//報表全名
            data.JobName = string.Format("RWO({0}-{1}) Report", rwo.WorkOrderNo, rwo.RoundNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", rwo.WorkOrderNo, cust.Trim(), rwo.ColorCode, rwo.RoundNo); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            //應David要求，屏蔽GridView的雙擊事件

            //PH.RWO.BO.RoundWorkOrder rwo = (PH.RWO.BO.RoundWorkOrder)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            //if (rwo == null) return;

            //CreateProgramForm(typeof(PH.RWO.UI.RoundWorkOrderListForm), string.Format("{0}-{1} Detail", rwo.WorkOrderNo, rwo.RoundNos), true, new object[] { rwo, this.TabControls.SelectedTabPage }, null);

        }

        private void ribeConfirm_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            if (!rwo.AjustT3Date.HasValue)
            {
                MessageBox.Show("Please input aT3.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            rwo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            this.DataContext.SubmitChanges();
            if (this.objListGridView.PostEditor())
            {
                this.objListGridView.UpdateCurrentRow();
                this.objListGridView.HideEditor();
            }
            //ConfirmAT3Form frm = new ConfirmAT3Form(rwo.T3);
            //if (frm.ShowDialog() == DialogResult.OK)
            //{
            //    rwo.AjustT3Date = frm.aT3;
            //    rwo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //    this.DataContext.SubmitChanges();
            //}
        }

        private void repositoryItemComboBox_InputYesOrNo_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {
            if (this.objListGridView.PostEditor())
            {
                this.objListGridView.UpdateCurrentRow();
                this.objListGridView.HideEditor();
            }

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            this.DataContext.SubmitChanges();
        }

        private void repositoryItemComboBox_aT3Accept_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {
            if (this.objListGridView.PostEditor())
            {
                this.objListGridView.UpdateCurrentRow();
                this.objListGridView.HideEditor();
            }

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            if (rwo.aT3DateAccept == "Y")
            {
                rwo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            }
            else
            {
                rwo.AjustT3DateConfirm = null;
            }

            this.DataContext.SubmitChanges();
        }


        private void repositoryItemDateEdit1_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {
            if (this.objListGridView.PostEditor())
            {
                this.objListGridView.UpdateCurrentRow();
                this.objListGridView.HideEditor();
            }

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;

            this.DataContext.SubmitChanges();
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "AjustT3Date")
            {
                object aT3Date = e.CellValue;
                object T3Date = this.objListGridView.GetRowCellValue(e.RowHandle, "T3Date");

                if (aT3Date != null && T3Date != null && Convert.ToDateTime(aT3Date) == Convert.ToDateTime(T3Date))
                {
                    e.DisplayText = "";
                    e.Handled = true;
                }

            }
        }



    }
}
