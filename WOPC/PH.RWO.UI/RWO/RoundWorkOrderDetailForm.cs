using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;
using DevExpress.XtraEditors.DXErrorProvider;
using DevExpress.XtraBars;

namespace PH.RWO.UI
{
    public partial class RoundWorkOrderDetailForm : ParentChildForm
    {
        public RoundWorkOrderDetailForm()
        {
            InitializeComponent();
        }
        //private string AppliedUser;


        public override void DataBind()
        {
            //int nums = this.roundWorkOrderIIListForm1.BindingSource.Count;
            //if (nums == 0)
            //{
            //    this.AppliedToPhaseIIEdit.Enabled = false;
            //    this.panelRWO2.Enabled = false;
            //}
            base.DataBind();
            RoundWorkOrder rwo = (this.BindingSource.Current as RoundWorkOrder);
            //this.ConfirmRight(rwo);
            this.roundWorkOrderDetailsListForm1.BindingSource.DataSource = rwo.RoundWorkOrderDetails;
            this.roundWorkOrderDetailsListForm1.EditorTypeName = typeof(RoundWorkOrderDetailsDetailForm).FullName;

            this.roundWorkOrderIIListForm1.BindingSource.DataSource = rwo.RoundWorkOrderIIs;
            this.roundWorkOrderIIListForm1.EditorTypeName = typeof(RoundWorkOrderIIDetailForm).FullName;
            this.panelRWO2.Visible = this.panelAppliedUser.Visible = (rwo.AppliedToPhaseII ?? false);

            //bool isTAMA = rwo.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA";
            bool isTAMA = rwo.WorkOrderColor.WorkOrder.Project.Team == "C1";
            this.roundWorkOrderDetailsListForm1.colRatio.Visible = isTAMA;
            if (isTAMA)
            {
                InitStyleRatio();
            }
            //AutoInitRWOSKU();
            SetExFtyErrorProviderRules();
            InitSubFactory();

            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.OnClickEdit();
            }

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnEdit.Visibility = BarItemVisibility.Never;

        }
        private void InitSubFactory()
        {
            RoundWorkOrder rwo = (this.BindingSource.Current as RoundWorkOrder);
            if (rwo == null || !(rwo.AppliedToPhaseII ?? false)) return;

            bool isAll = (rwo.AppliedToALL ?? false);

            ArrayList checkEdits = GetCheckEditControls();
            foreach (var item in rwo.RoundWorkOrderIIs)
            {
                string s = item.SubFactory;
                if (string.IsNullOrEmpty(s)) continue;

                foreach (DevExpress.XtraEditors.CheckEdit editor in checkEdits)
                {
                    string s1 = editor.Text.Trim();
                    if (string.Compare(s, s1, true) == 0)
                        editor.Checked = true;
                }

            }
        }

        private void btnPrintRWO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
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

        private void ConfirmRight(RoundWorkOrder rwo)
        {
            this.btnConfirm.Enabled = ((this.DataContext as RWOSOPCDataContext).fn_IfHaveRWOConfirmRight(rwo.WorkOrderNo, rwo.ColorCode, rwo.RoundNo, PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, 1) == 1);
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to confirm this Round Work Order?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.No) return;

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            string UserId = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            Right r = context.Rights.Where(r1 => rwo.WorkOrderColor.WorkOrder.Project.CustomerCode == r1.CustomerCode && rwo.WorkOrderColor.WorkOrder.Project.Factory == r1.Factory && r1.Users.ToLower().IndexOf(UserId.ToLower()) > -1).FirstOrDefault();
            int current = (r.Current ?? -1);
            switch (current)
            {
                case 0:
                    if (string.IsNullOrEmpty(rwo.OAConfirm))
                    {
                        rwo.OAConfirm = UserId;
                        rwo.OAConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 1:
                    if (string.IsNullOrEmpty(rwo.PPCConfirm))
                    {
                        rwo.PPCConfirm = UserId;
                        rwo.PPCConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 2:
                    if (string.IsNullOrEmpty(rwo.TopConfirm))
                    {
                        rwo.TopConfirm = UserId;
                        rwo.TopConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 3:
                    if (string.IsNullOrEmpty(rwo.HeaderConfirm))
                    {
                        rwo.HeaderConfirm = UserId;
                        rwo.HeaderConfirmDate = System.DateTime.Now;
                    }
                    break;
                default:
                    break;
            }
            rwo.ActionStatus = (int)WOActionStatus.Confirm; //-1: Reject 0: Hold  1:Confirm
            rwo.ActionStatusDate = DateTime.Now;
            rwo.WOReviseDate = DateTime.Now;
            rwo.AmendDate = DateTime.Now;

            bool isshow = this.IsShowMsg;
            PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = false;
            this.OnClickSave();
            PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = isshow;

            this.ConfirmRight(rwo);
            //if (IfNeedSendMail(rwo.WorkOrderColor.WorkOrder))

            //if (IfNeedSendMail(rwo))
            //{
            (new Notify()).RWOSendMail(rwo, current);

            MessageBox.Show("Confirm Round Work Order Success!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //}
        }

        private bool IfNeedSendMail(RoundWorkOrder rwo)
        {
            return (this.DataContext as RWOSOPCDataContext).fn_IsRWONeedSendNotify(rwo.WorkOrderNo, rwo.CurrentIndex) == 1;
        }
        //private void ConfirmRight(RoundWorkOrder rwo)
        //{
        //    this.btnConfirm.Enabled = ((this.DataContext as RWOSOPCDataContext).fn_IfHaveRWOConfirmRight(rwo.WorkOrderNo,rwo.ColorCode,rwo.RoundNo,PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName) == 1);
        //}

        public int RoundNo
        {
            get;
            set;
        }
        public int RealRoundNo
        {
            get;
            set;
        }

        public readonly SortedList<string, IList<RoundWorkOrderDetailTemp1>> TempSortedList = new SortedList<string, IList<RoundWorkOrderDetailTemp1>>();
        public void SetSortedlist(Control control, int index)
        {
            foreach (Control c in control.Controls)
            {
                if (c is RoundWorkOrderDetailTemp1ListForm)
                {

                    IList<RoundWorkOrderDetailTemp1> temp = new List<RoundWorkOrderDetailTemp1>();
                    RoundWorkOrderDetailTemp1ListForm form = c as RoundWorkOrderDetailTemp1ListForm;
                    if (form.BindingSource.Count > 0)
                    {
                        for (int i = 0; i < form.BindingSource.Count; i++)
                        {
                            temp.Add(form.BindingSource[i] as RoundWorkOrderDetailTemp1);
                        }
                        TempSortedList.Add(c.Name, temp);
                    }
                }
                SetSortedlist(c, 0);
            }
        }



        private void btnSetRound_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form frm = new InputNumber(this);

            frm.ShowDialog();

            for (int i = 1; i < RoundNo + 1; i++)
            {
                InitTemp(i);
            }
        }


        private void BindingComplete(object sender, BindingCompleteEventArgs e)
        {
            if (e.BindingCompleteContext == BindingCompleteContext.DataSourceUpdate)
            {
                e.Binding.BindingManagerBase.EndCurrentEdit();
            }
        }


        PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        private void InitTemp(int RoundNo)
        {
            DevExpress.XtraTab.XtraTabPage tabpage = new DevExpress.XtraTab.XtraTabPage();
            tabpage.Name = "xtraTabPage" + RoundNo.ToString();
            tabpage.Text = "Temp" + RoundNo.ToString();
            this.xtraTabControl1.TabPages.Add(tabpage);
            RoundWorkOrderDetailTemp1ListForm RWODetailsList = new RoundWorkOrderDetailTemp1ListForm(RoundNo, this);
            RWODetailsList.AllowGridEdit = true;
            RWODetailsList.RowChangeAutoSave = false;
            RWODetailsList.DataContext = this.context;
            RWODetailsList.Dock = System.Windows.Forms.DockStyle.Fill;
            RWODetailsList.EditorTypeName = null;
            RWODetailsList.FirstForm = null;
            RWODetailsList.FormTitle = "PH.RWO.UI.RoundWorkOrderDetailsListForm" + RoundNo.ToString();
            RWODetailsList.Location = new System.Drawing.Point(0, 0);
            RWODetailsList.Name = "temp" + RoundNo.ToString();
            RWODetailsList.NextForm = null;
            RWODetailsList.ParentForm = null;
            RWODetailsList.PrevForm = null;
            RWODetailsList.Size = new System.Drawing.Size(930, 468);
            RWODetailsList.TabIndex = 0;
            RWODetailsList.TabPage = null;
            //bool isTama = (this.BindingSource.Current as RoundWorkOrder).WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA";
            bool isTama = (this.BindingSource.Current as RoundWorkOrder).WorkOrderColor.WorkOrder.Project.Team == "C1";
            RWODetailsList.colRatio.Visible = isTama;
            if (!isTama)
            {
                RWODetailsList.editTotalBulk.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                RWODetailsList.editPackQty.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            tabpage.Controls.Add(RWODetailsList);
        }

        private void btnSplitRound_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.SplitRWO();
        }


        /// <summary>
        /// 保存Temp數據用於更新到RoundWorkOrderDetail
        /// </summary>
        /// <param name="RealRound">實際要分輪的輪數</param>
        public void SaveTempRoundDetail(int RealRound)
        {
            for (int i = 1; i < RealRound + 1; i++)
            {
                Control[] ctrls = this.xtraTabControl1.Controls.Find("temp" + i.ToString(), true);
                foreach (Control c in ctrls)
                {
                    if (c is RoundWorkOrderDetailTemp1ListForm)
                    {
                        (c as RoundWorkOrderDetailTemp1ListForm).SaveData();
                    }
                }
            }
        }


        /// <summary>
        /// 检查数据是否正确
        /// </summary>
        /// <returns></returns>
        private int CheckData()
        {
            if (TempSortedList.Count < 2)
            {
                return 1;
            }
            for (int j = 1; j < TempSortedList.Count + 1; j++)
            {
                int bulk = (int)TempSortedList["temp" + j.ToString()].Sum(p => p.BulkQty);
                if (bulk <= 0)
                {
                    return 2;
                }
            }
            return 0;
        }


        private void SetTempSortedList()
        {
            for (int index = this.TempSortedList.Count - 1; index >= 0; index--)
            {
                this.TempSortedList.RemoveAt(index);
            }
            this.SetSortedlist(this.xtraTabControl1, 0);
        }


        /// <summary>
        /// 配对数据的一致性
        /// </summary>
        /// <returns></returns>
        public bool verData()
        {

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            int qty = 0;
            int qty1 = 0;

            for (int i = 0; i < rwo.RoundWorkOrderDetails.Count; i++)
            {
                qty = 0;
                RoundWorkOrderDetail details = rwo.RoundWorkOrderDetails[i];
                qty = (int)rwo.RoundWorkOrderDetails[i].BulkQty + (int)rwo.RoundWorkOrderDetails[i].SampleQty;
                qty1 = 0;
                for (int j = 1; j < TempSortedList.Count + 1; j++)
                {

                    RoundWorkOrderDetailTemp1 t = TempSortedList["temp" + j.ToString()].Where(p => p.Cup == details.Cup && p.Size == details.Size).FirstOrDefault();
                    if (t != null)
                    {
                        qty1 = qty1 + (int)t.BulkQty + (int)t.SampleQty;
                    }
                }
                if (qty != qty1)
                {
                    return false;
                }
            }
            return true;
        }

        /// <summary>
        /// 分輪設置
        /// </summary>
        private void SplitRWO()
        {
            this.SetTempSortedList();

            if (CheckData() == 1)
            {
                PH.Platform.Misc.BO.ErrorMessages.ErrorMessageManager.ShowMessage("P000087", "10109", "RWO", "PH.RWO.01", PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                //MessageBox.Show("只設了一輪,請重新設置!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (CheckData() == 2)
            {
                PH.Platform.Misc.BO.ErrorMessages.ErrorMessageManager.ShowMessage("P000087", "10109", "RWO", "PH.RWO.02", PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                //MessageBox.Show("分輪後數據與原來數據有出入,請查看後再執行分輪操作.", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (!verData())
            {
                PH.Platform.Misc.BO.ErrorMessages.ErrorMessageManager.ShowMessage("P000087", "10109", "RWO", "PH.RWO.03", PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                //MessageBox.Show("分輪後數據與原來數據有出入,請查看後再執行分輪操作.", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            this.SetTempSortedList();

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            WorkOrderColorDetailForm WOcForm = (this.PrevForm as WorkOrderColorDetailForm);
            WOcForm.SaveNewRound(this.RealRoundNo);
            SaveTempRoundDetail(this.RealRoundNo);
            ((PH.RWO.BO.RWOSOPCDataContext)this.DataContext).Sp_SplitRoundWOrkOrder(rwo.Company, rwo.SalesOrderNo, rwo.SalesOrderLine, rwo.WorkOrderNo, rwo.ColorCode);
            WOcForm.DataRefresh();
            this.ReturnToPrevForm();
        }

        /// <summary>
        /// 設置控件的狀態
        /// </summary>
        protected override void SetFormControlState()
        {
            RoundWorkOrder rwo = (this.BindingSource.Current as RoundWorkOrder);
            base.SetFormControlState();
            this.ConfirmRight(rwo);
            Global.MaskAllBaseEdit(this.tabControl);
            this.btnApplytoP2.Enabled = false;
            if ((this.BindingSource.Current as BaseEntity).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                UnMaskEdit();
            }
            this.btnSetRound.Enabled = (this.BindingSource.Current as BaseEntity).BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read;
            this.btnSplitRound.Enabled = (this.BindingSource.Current as BaseEntity).BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read;
            //bool isTama = (this.BindingSource.Current as RoundWorkOrder).WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA";
            bool isTama = (this.BindingSource.Current as RoundWorkOrder).WorkOrderColor.WorkOrder.Project.Team == "C1";
            if (!isTama)
                this.roundWorkOrderDetailsListForm1.btnApplyRatio.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        private void lCLExFtyDateDateEdit_EditValueChanged(object sender, EventArgs e)
        {
            return;


            //RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            //////if (rwo.WorkOrderColor.WorkOrder.Project.CustomerCode != "TAMA")
            ////if (rwo.WorkOrderColor.WorkOrder.Project.Team != "C1")
            //{
            //    DateTime DT = (DateTime)this.lCLExFtyDateDateEdit.EditValue;
            //    this.lCLExFtyDateDateEdit.EditValue = TranTime(DT, true);
            //    rwo.LCLExFtyDate = (DateTime)this.lCLExFtyDateDateEdit.EditValue;
            //    rwo.FactoryWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_FWDate(rwo.LCLExFtyDate, rwo.WorkOrderColor.WorkOrder.Project.Customer, rwo.WorkOrderColor.WorkOrder.Project.Factory, rwo.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo.LineWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_LWDate(rwo.LCLExFtyDate, rwo.WorkOrderColor.WorkOrder.Project.Customer, rwo.WorkOrderColor.WorkOrder.Project.Factory, rwo.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo.T3Date = (this.DataContext as RWOSOPCDataContext).fn_T3Date(rwo.LCLExFtyDate, rwo.WorkOrderColor.WorkOrder.Project.Factory);
            //    this.GetExFtyDate(rwo, false, rwo.LCLExFtyDate);
            //}
            //this.DataBind();
        }

        private DateTime TranTime(DateTime dt, bool isLcl)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            DateTime dt1 = (isLcl ? rwo.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted : rwo.WorkOrderColor.WorkOrder.FCLExFtyShipCompleted).GetValueOrDefault();
            int m = dt1.Minute;
            int s = dt1.Second;
            int d = dt.Day;
            int h = dt1.Hour;
            int mm = dt.Month;
            int y = dt.Year;
            return new DateTime(y, mm, d, h, m, s);
        }

        private void FCLExFtyDateDateEdit_EditValueChanged(object sender, EventArgs e)
        {
            return;

            //RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            //////if (rwo.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA")
            ////   if (rwo.WorkOrderColor.WorkOrder.Project.Team == "C1")
            //{
            //    DateTime DT = (DateTime)this.fCLExFtyDateDateEdit.EditValue;
            //    this.fCLExFtyDateDateEdit.EditValue = TranTime(DT, false);
            //    rwo.FCLExFtyDate = (DateTime)this.fCLExFtyDateDateEdit.EditValue;
            //    rwo.FactoryWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_FWDate(rwo.FCLExFtyDate, rwo.WorkOrderColor.WorkOrder.Project.Customer, rwo.WorkOrderColor.WorkOrder.Project.Factory, rwo.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo.LineWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_LWDate(rwo.FCLExFtyDate, rwo.WorkOrderColor.WorkOrder.Project.Customer, rwo.WorkOrderColor.WorkOrder.Project.Factory, rwo.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo.T3Date = (this.DataContext as RWOSOPCDataContext).fn_T3Date(rwo.FCLExFtyDate, rwo.WorkOrderColor.WorkOrder.Project.Factory);
            //    this.GetExFtyDate(rwo, true, rwo.FCLExFtyDate);
            //}
            //this.DataBind();
        }


        //private void GetExFtyDate(RoundWorkOrder rwo, bool isLCL, DateTime? dt)
        //{
        //    DateTime? tempDt = (this.DataContext as RWOSOPCDataContext).fn_WeekEndDate(dt);
        //    //tempDt.GetValueOrDefault().AddDays(1);
        //    tempDt = (this.DataContext as RWOSOPCDataContext).fn_ExftyDate(tempDt, rwo.WorkOrderColor.WorkOrder.Project.Customer, rwo.WorkOrderColor.WorkOrder.ShipMode, isLCL, rwo.WorkOrderColor.WorkOrder.Project.Factory, rwo.WorkOrderColor.WorkOrder.Project.DSEQ);
        //    if (isLCL)
        //    {
        //        rwo.LCLExFtyDate = tempDt;
        //    }
        //    else
        //    {
        //        rwo.FCLExFtyDate = tempDt;
        //    }

        //}

        //protected override void SetFormControlState()
        //{
        //    base.SetFormControlState();

        //}
        public void InitStyleRatio()
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            IEnumerable<RoundWorkOrderDetail> list = rwo.RoundWorkOrderDetails.Where(p => p.Ratio == null);
            if (list.Count() > 0)
            {
                InitStyleRatio(true);
            }
        }

        public void InitStyleRatio(bool NeedUpdate)
        {
            if (NeedUpdate)
            {
                DataHelper helper = new DataHelper();
                RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
                IEnumerable<WOSKURatio> list = helper.GetRatio(rwo.WorkOrderColor.WorkOrder.StyleNo);

                foreach (RoundWorkOrderDetail detail in rwo.RoundWorkOrderDetails)
                {
                    var ratio = (from c in list
                                 where c.Size == detail.Size && c.Cup == detail.Cup
                                 select new
                                 {
                                     ratio = c.Ratio
                                 }).FirstOrDefault().ratio;
                    detail.Ratio = ratio;
                }
                try
                {
                    this.DataContext.SubmitChanges();
                }
                catch { }
            }
        }


        protected override void SaveCurrent()
        {
            if (this.DataContext.GetChangeSet().Updates.Count > 0)
            {
                RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
                rwo.AmendDate = System.DateTime.Now;
                //rwo.Version = rwo.Version == null ? 1 : rwo.Version + 1;
                rwo.WOReviseDate = System.DateTime.Now;
            }
            SetValue();
            base.SaveCurrent();
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if ((this.PrevForm as RoundWorkOrderListForm) != null && (this.PrevForm as RoundWorkOrderListForm).ParentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as RoundWorkOrderListForm).ParentPage);
            }


        }
        protected override void OnClickSaveAndReturn()
        {
            SetValue();
            base.OnClickSaveAndReturn();
            if (this.dxValidationProvider.Validate()) //輸入數據合法性檢查不通過時，不能Return到前一界面，由David加入2018-12-05
            {
                CloseCurrentPage();
            }
        }
        private void SetValue()
        {
            bool bOK = (this.PrevForm as RoundWorkOrderListForm) != null && (this.PrevForm as RoundWorkOrderListForm).ParentPage != null;
            if (bOK && (this.PrevForm as RoundWorkOrderListForm).RWO != null)
            {
                RoundWorkOrder rwo1 = this.BindingSource.Current as RoundWorkOrder;
                RoundWorkOrder rwo = (this.PrevForm as RoundWorkOrderListForm).RWO;
                rwo.AjustT3Date = rwo1.AjustT3Date;
                rwo.AjustT3DateConfirm = rwo1.AjustT3DateConfirm;
            }
        }
        private void CloseCurrentPage()
        {
            bool bOK = (this.PrevForm as RoundWorkOrderListForm) != null && (this.PrevForm as RoundWorkOrderListForm).ParentPage != null;
            if (bOK)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as RoundWorkOrderListForm).ParentPage);
            }
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.tabControl.SelectedTabPage = this.tpTimeElements;
            }
        }

        /// <summary>
        /// 將相關控件置於可編輯
        /// </summary>
        private void UnMaskEdit()
        {
            this.fCLExFtyDateDateEdit.Properties.ReadOnly = false;
            this.lCLExFtyDateDateEdit.Properties.ReadOnly = false;
            this.ajustT3DateDateEdit.Properties.ReadOnly = false;
            this.amendDateDateEdit.Properties.ReadOnly = false;

            this.AppliedToPhaseIIEdit.Properties.ReadOnly = false;
            this.AppliedToALLEdit.Properties.ReadOnly = false;
            this.btnApplytoP2.Enabled = true;
            this.AppliedToPhaseIIEdit.Enabled = this.panelRWO2.Enabled = CheckRWO2CanUse();

            //Xsj:add 20170213
            this.productFactoryTextEdit.Properties.ReadOnly = true;

            panelPartail.Enabled = true;
            SetCheckEditEnable(true);
        }

        private void PPCUnMaskEdit()
        {
            this.ajustT3DateDateEdit.Properties.ReadOnly = false;
        }

        /// <summary>
        /// 
        /// </summary>
        public void InitRWOSKU()
        {
            WorkOrderColor WOc = (this.PrevForm as WorkOrderColorDetailForm).BindingSource.Current as WorkOrderColor;
            if (WOc.RoundWorkOrders.Count == 1)
            {
                RoundWorkOrder rwo = WOc.RoundWorkOrders[0];
                if (rwo == null)
                    return;
                foreach (WorkOrderSKU WOSku in WOc.WorkOrderSKUs)
                {
                    RoundWorkOrderDetail rwoDetail = rwo.RoundWorkOrderDetails.Where(p => p.WorkOrderNo == WOSku.WorkOrderNo && p.ColorCode == WOSku.ColorCode && p.Cup == WOSku.Cup && p.Size == WOSku.Size).FirstOrDefault();
                    if (rwoDetail != null)
                    {
                        rwoDetail.BulkQty = WOSku.BulkQty;
                        rwoDetail.SampleQty = WOSku.SampleQty;
                        continue;
                    }

                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public void AutoInitRWOSKU()
        {
            WorkOrderColor WOc = (this.PrevForm as WorkOrderColorDetailForm).BindingSource.Current as WorkOrderColor;

            RoundWorkOrder rwo = (this.BindingSource.Current as RoundWorkOrder);
            if (rwo.RoundNo == 1)
            {
                foreach (WorkOrderSKU WOSku in WOc.WorkOrderSKUs)
                {
                    RoundWorkOrderDetail rwoDetail = rwo.RoundWorkOrderDetails.Where(p => p.WorkOrderNo == WOSku.WorkOrderNo && p.ColorCode == WOSku.ColorCode && p.Cup == WOSku.Cup && p.Size == WOSku.Size).FirstOrDefault();
                    if (rwoDetail != null)
                    {
                        //rwoDetail.BulkQty = WOSku.BulkQty;

                        int val = (int)(rwoDetail.SampleQty == null ? 0 : rwoDetail.SampleQty) - (int)(WOSku.SampleQty == null ? 0 : WOSku.SampleQty);
                        rwoDetail.SampleQty = WOSku.SampleQty;
                        rwoDetail.BulkQty = rwoDetail.BulkQty + val;
                        continue;
                    }

                }
            }
        }

        private void btnConfirmT3_Click(object sender, EventArgs e)
        {
            RoundWorkOrder rwo = (this.BindingSource.Current as RoundWorkOrder);
            if (!rwo.AjustT3Date.HasValue)
            {
                MessageBox.Show("Please select a aT3 Date.");
                return;
            }
            rwo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        }

        private void btnRWOKBReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            PrintRoundWorkOrderReport(rwo, false);
        }

        private bool CheckRWO2CanUse()
        {
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            bool isEnable = false;
            if (rwo != null)
            {
                isEnable = !(string.IsNullOrEmpty(rwo.OAConfirm) || string.IsNullOrEmpty(rwo.PPCConfirm)
                     || string.IsNullOrEmpty(rwo.TopConfirm) || string.IsNullOrEmpty(rwo.HeaderConfirm));
            }
            foreach (var rwo2 in rwo.RoundWorkOrderIIs)
            {
                isEnable = (string.IsNullOrEmpty(rwo2.PPCConfirm) && string.IsNullOrEmpty(rwo2.TopConfirm)) && isEnable;
            }
            return isEnable;
        }


        #region DXErrorProvider

        private void SetExFtyErrorProviderRules()
        {
            RoundWorkOrder rwo = (this.BindingSource.Current as RoundWorkOrder);
            if (rwo == null) return;

            ConditionValidatonRule lclRule = new ConditionValidatonRule();
            lclRule.ConditionOperator = ConditionOperator.LessOrEqual;
            lclRule.Value1 = rwo.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted;
            lclRule.ErrorText = string.Format("cannot greater than WO's LCL Exfty date: {0:yyyy/MM/dd} !", rwo.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted);
            lclRule.ErrorType = ErrorType.Warning;

            ConditionValidatonRule fclRule = new ConditionValidatonRule();
            fclRule.ConditionOperator = ConditionOperator.LessOrEqual;
            fclRule.Value1 = rwo.WorkOrderColor.WorkOrder.FCLExFtyShipCompleted;
            fclRule.ErrorText = string.Format("cannot greater than WO's FCL Exfty date: {0:yyyy/MM/dd} !", rwo.WorkOrderColor.WorkOrder.FCLExFtyShipCompleted);
            fclRule.ErrorType = ErrorType.Warning;

            this.dxValidationProvider.SetValidationRule(this.lCLExFtyDateDateEdit, lclRule);
            //this.dxValidationProvider.SetValidationRule(this.fCLExFtyDateDateEdit, fclRule);
            this.dxValidationProvider.ValidationMode = ValidationMode.Auto;
        }

        #endregion

        #region Apply to PII

        private void btnApplytoP2_Click(object sender, EventArgs e)
        {

            if (!CheckRWO2CanUse()) return;

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;

            if (rwo == null) return;
            if (!rwo.AppliedToALL.HasValue) return;
            if (!this.SelectedSubFactory) return;

            string s = string.Format("Apply to RWO Phase II and Apply to {0}?\r\n Waring: This Action will clear 'RWO Phase II history data' which applied to this RWO.", (rwo.AppliedToALL ?? false) ? "ALL" : "Partial");
            if (MessageBox.Show(s, "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes) return;

            this.panelRWO2.Enabled = false;
            this.AppliedToPhaseIIEdit.Enabled = false;

            if (rwo.RoundWorkOrderIIs != null && rwo.RoundWorkOrderIIs.Count > 0)
            {
                PH.RWO.BO.RWOSOPCDataContext dc = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
                foreach (var item in rwo.RoundWorkOrderIIs)
                {
                    dc.RoundWorkOrderDetailIIs.DeleteAllOnSubmit(item.RoundWorkOrderDetailIIs);
                    item.RoundWorkOrderDetailIIs.Clear();
                }
                dc.RoundWorkOrderIIs.DeleteAllOnSubmit(rwo.RoundWorkOrderIIs);
                roundWorkOrderIIListForm1.BindingSource.Clear();
                rwo.RoundWorkOrderIIs.Clear();
                dc.SubmitChanges();

            }

            rwo.AppliedUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            rwo.AppliedDate = DateTime.Now;
            if (rwo.AppliedToALL ?? false)
            {
                string subF = "";// "FJ";
                foreach (string fty in this.GetHasSelectedSubFactory())
                {
                    subF = fty;
                }
                #region RoundWorkOrderII
                object obj = roundWorkOrderIIListForm1.BindingSource.AddNew();
                RoundWorkOrderII rwo2 = obj as RoundWorkOrderII;
                rwo2.RoundWorkOrder = rwo;
                rwo2.CurrentDataContext = this.DataContext;
                rwo2.CurrentBindingSource = roundWorkOrderIIListForm1.BindingSource;

                rwo2.Company = rwo.Company;
                rwo2.SalesOrderNo = rwo.SalesOrderNo;
                rwo2.WorkOrderNo = rwo.WorkOrderNo;
                rwo2.ColorCode = rwo.ColorCode;
                rwo2.RoundNo = rwo.RoundNo;
                rwo2.SubFactory = subF;
                rwo2.SalesOrderLine = rwo.SalesOrderLine;
                rwo2.RoundTotal = rwo.RoundTotal;
                rwo2.RWOCreateDate = DateTime.Now;
                rwo2.WOReviseDate = DateTime.Now;
                rwo2.AmendDate = DateTime.Now;
                rwo2.Version = 0;
                rwo2.RWOVersion = rwo.Version;
                //rwo2.FactoryWorkStartDate = rwo.FactoryWorkStartDate;
                //rwo2.LineWorkStartDate = rwo.LineWorkStartDate;
                //rwo2.T3Date = rwo.T3Date;
                //rwo2.AjustT3Date = rwo.AjustT3Date;
                //rwo2.AjustT3DateConfirm = rwo.AjustT3DateConfirm;
                //rwo2.RoundWorkOrderExFtyDate = rwo.RoundWorkOrderExFtyDate;
                //rwo2.FCLExFtyDate = rwo.FCLExFtyDate;
                //rwo2.LCLExFtyDate = rwo.LCLExFtyDate;
                //rwo2.FirstStationStartDate = rwo.FirstStationStartDate;
                //rwo2.FirstQNStartDate = rwo.FirstQNStartDate;
                rwo2.DeliveryDate = rwo.DeliveryDate;
                //rwo2.LastQNExFtyDate = rwo.LastQNExFtyDate;
                rwo2.CycleTime = rwo.CycleTime;
                //rwo2.OAConfirm = rwo.OAConfirm;
                //rwo2.OAConfirmDate = rwo.OAConfirmDate;
                rwo2.HeaderConfirm = rwo.HeaderConfirm;
                rwo2.HeaderConfirmDate = rwo.HeaderConfirmDate;
                //rwo2.TopConfirm = rwo.TopConfirm;
                //rwo2.TopConfirmDate = rwo.TopConfirmDate;
                //rwo2.PPCConfirm = rwo.PPCConfirm;
                //rwo2.PPCConfirmDate = rwo.PPCConfirmDate;

                rwo.RoundWorkOrderIIs.Add(rwo2);

                this.DataContext.SubmitChanges();
                #endregion

                #region RoundWorkOrderII-detail

                foreach (var rwoDetail in rwo.RoundWorkOrderDetails)
                {
                    RoundWorkOrderDetailII rwoDetail2 = new RoundWorkOrderDetailII();
                    rwoDetail2.RoundWorkOrderII = rwo2;
                    rwoDetail2.CurrentDataContext = this.DataContext;

                    rwoDetail2.Company = rwoDetail.Company;
                    rwoDetail2.SalesOrderNo = rwoDetail.SalesOrderNo;
                    rwoDetail2.WorkOrderNo = rwoDetail.WorkOrderNo;
                    rwoDetail2.ColorCode = rwoDetail.ColorCode;
                    rwoDetail2.RoundNo = rwoDetail.RoundNo;
                    rwoDetail2.SubFactory = rwo2.SubFactory;
                    rwoDetail2.Cup = rwoDetail.Cup;
                    rwoDetail2.Size = rwoDetail.Size;
                    rwoDetail2.SalesOrderLine = rwoDetail.SalesOrderLine;
                    rwo2.AnotherQtyChanging = true;
                    rwoDetail2.BulkQty = rwoDetail.BulkQty;
                    rwoDetail2.SampleQty = rwoDetail.SampleQty;
                    rwo2.AnotherQtyChanging = false;
                    rwoDetail2.Ratio = rwoDetail.Ratio;
                    rwoDetail2.CustSize = rwoDetail.CustSize;

                    rwo2.RoundWorkOrderDetailIIs.Add(rwoDetail2);
                }
                this.DataContext.SubmitChanges();

                #endregion
            }
            else
            {
                //string[] fs = new string[2] { "SL", "FJ" };
                ArrayList fs = this.GetHasSelectedSubFactory();
                foreach (string subF in fs)
                {
                    #region RoundWorkOrderII
                    object obj = roundWorkOrderIIListForm1.BindingSource.AddNew();
                    RoundWorkOrderII rwo2 = obj as RoundWorkOrderII;
                    rwo2.RoundWorkOrder = rwo;
                    rwo2.CurrentDataContext = this.DataContext;
                    rwo2.CurrentBindingSource = roundWorkOrderIIListForm1.BindingSource;

                    rwo2.Company = rwo.Company;
                    rwo2.SalesOrderNo = rwo.SalesOrderNo;
                    rwo2.WorkOrderNo = rwo.WorkOrderNo;
                    rwo2.ColorCode = rwo.ColorCode;
                    rwo2.RoundNo = rwo.RoundNo;
                    rwo2.SubFactory = subF;
                    rwo2.SalesOrderLine = rwo.SalesOrderLine;
                    rwo2.RoundTotal = rwo.RoundTotal;
                    rwo2.RWOCreateDate = DateTime.Now;
                    rwo2.WOReviseDate = DateTime.Now;
                    rwo2.AmendDate = DateTime.Now;
                    rwo2.Version = 0;
                    rwo2.RWOVersion = rwo.Version;
                    //rwo2.FactoryWorkStartDate = rwo.FactoryWorkStartDate;
                    //rwo2.LineWorkStartDate = rwo.LineWorkStartDate;
                    //rwo2.T3Date = rwo.T3Date;
                    //rwo2.AjustT3Date = rwo.AjustT3Date;
                    //rwo2.AjustT3DateConfirm = rwo.AjustT3DateConfirm;
                    //rwo2.RoundWorkOrderExFtyDate = rwo.RoundWorkOrderExFtyDate;
                    //rwo2.FCLExFtyDate = rwo.FCLExFtyDate;
                    //rwo2.LCLExFtyDate = rwo.LCLExFtyDate;
                    //rwo2.FirstStationStartDate = rwo.FirstStationStartDate;
                    //rwo2.FirstQNStartDate = rwo.FirstQNStartDate;
                    rwo2.DeliveryDate = rwo.DeliveryDate;
                    //rwo2.LastQNExFtyDate = rwo.LastQNExFtyDate;
                    rwo2.CycleTime = rwo.CycleTime;
                    if (!rwo2.IsSubFactory)
                    {
                        rwo2.OAConfirm = rwo.OAConfirm;
                        rwo2.OAConfirmDate = rwo.OAConfirmDate;
                        rwo2.DirectOperation = 1;
                    }
                    rwo2.HeaderConfirm = rwo.HeaderConfirm;
                    rwo2.HeaderConfirmDate = rwo.HeaderConfirmDate;
                    //rwo2.TopConfirm = rwo.TopConfirm;
                    //rwo2.TopConfirmDate = rwo.TopConfirmDate;
                    //rwo2.PPCConfirm = rwo.PPCConfirm;
                    //rwo2.PPCConfirmDate = rwo.PPCConfirmDate;

                    rwo.RoundWorkOrderIIs.Add(rwo2);

                    this.DataContext.SubmitChanges();
                    #endregion

                    #region RoundWorkOrderII-detail

                    foreach (var rwoDetail in rwo.RoundWorkOrderDetails)
                    {
                        RoundWorkOrderDetailII rwoDetail2 = new RoundWorkOrderDetailII();
                        rwoDetail2.RoundWorkOrderII = rwo2;
                        rwoDetail2.CurrentDataContext = this.DataContext;

                        rwoDetail2.Company = rwoDetail.Company;
                        rwoDetail2.SalesOrderNo = rwoDetail.SalesOrderNo;
                        rwoDetail2.WorkOrderNo = rwoDetail.WorkOrderNo;
                        rwoDetail2.ColorCode = rwoDetail.ColorCode;
                        rwoDetail2.RoundNo = rwoDetail.RoundNo;
                        rwoDetail2.SubFactory = rwo2.SubFactory;
                        rwoDetail2.Cup = rwoDetail.Cup;
                        rwoDetail2.Size = rwoDetail.Size;
                        rwoDetail2.SalesOrderLine = rwoDetail.SalesOrderLine;
                        if (string.Compare(subF, rwo.Factory, true) == 0)
                        {
                            rwo2.AnotherQtyChanging = true;
                            rwoDetail2.BulkQty = rwoDetail.BulkQty;
                            rwoDetail2.SampleQty = rwoDetail.SampleQty;
                            rwo2.AnotherQtyChanging = false;
                        }
                        rwoDetail2.Ratio = rwoDetail.Ratio;
                        rwoDetail2.CustSize = rwoDetail.CustSize;

                        rwo2.RoundWorkOrderDetailIIs.Add(rwoDetail2);
                    }
                    this.DataContext.SubmitChanges();

                    #endregion
                }

            }

            this.SetFormControlState();
            //this.panelRWO2.Enabled = false;
            //this.AppliedToPhaseIIEdit.Enabled = false;
        }

        private void AppliedToPhaseIIEdit_EditValueChanged(object sender, EventArgs e)
        {
            this.panelRWO2.Visible = this.panelAppliedUser.Visible = AppliedToPhaseIIEdit.Checked;
        }

        private void AppliedToALLEdit_EditValueChanged(object sender, EventArgs e)
        {
            ChangeToRadioGroup(AppliedToALLEdit.SelectedIndex == 0);
        }

        private void ChangeToRadioGroup(bool isAll)
        {
            if (isAll)
            {
                SetCheckEditsRadioIndex(0, DevExpress.XtraEditors.Controls.CheckStyles.Radio);
            }
            else
            {
                SetCheckEditsRadioIndex(-1, DevExpress.XtraEditors.Controls.CheckStyles.Standard);
            }
            this.ceSL.Visible = !isAll;
        }
        private void SetCheckEditsRadioIndex(int radioIndex, DevExpress.XtraEditors.Controls.CheckStyles style)
        {
            ArrayList checkEdits = GetCheckEditControls();
            foreach (DevExpress.XtraEditors.CheckEdit editor in checkEdits)
            {
                editor.Checked = false;
                editor.Properties.RadioGroupIndex = radioIndex;
                editor.Properties.CheckStyle = style;
            }
        }

        private ArrayList GetCheckEditControls()
        {
            ArrayList checkEdits = new ArrayList();
            foreach (Control control in panelPartail.Controls)
            {
                if (control is DevExpress.XtraEditors.CheckEdit)
                    checkEdits.Add(control);
            }
            return checkEdits;
        }
        private ArrayList GetHasSelectedSubFactory()
        {
            ArrayList checkEdits = new ArrayList();
            foreach (Control control in panelPartail.Controls)
            {
                if ((control is DevExpress.XtraEditors.CheckEdit) && (control as DevExpress.XtraEditors.CheckEdit).Checked)
                {
                    string s = (control as DevExpress.XtraEditors.CheckEdit).Text.Trim();
                    checkEdits.Add(s);
                }
            }
            return checkEdits;
        }
        private bool SelectedSubFactory
        {
            get
            {
                RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
                if (rwo == null) return false;
                return ((rwo.AppliedToALL ?? false) && GetHasSelectedSubFactory().Count == 1)
                     || (!(rwo.AppliedToALL ?? false) && GetHasSelectedSubFactory().Count > 1);
            }
        }
        private void SetCheckEditEnable(bool enable)
        {
            foreach (Control control in panelPartail.Controls)
            {
                if (control is DevExpress.XtraEditors.CheckEdit)
                {
                    (control as DevExpress.XtraEditors.CheckEdit).Enabled = enable;
                    (control as DevExpress.XtraEditors.CheckEdit).Properties.ReadOnly = !enable;
                }
            }
        }

        #endregion


        #region Assign Action

        string _assignedfaclist = string.Empty;
        ArrayList _orignfactories = new ArrayList();

        private void btnApplyQty_Click(object sender, EventArgs e)
        {

            ArrayList selectlist = this.GetSelectFactory();
            string _msgwarning = string.Empty;

            if (AppliedToALLEdit.SelectedIndex == 0)
            {
                if (selectlist.Count == 0)
                    _msgwarning = "Please select a factory!";
            }
            else
            {
                if (selectlist.Count <= 1)
                    _msgwarning = "Please select 2 factories at least!";
            }

            if (_msgwarning != string.Empty)
            {
                MessageBox.Show(_msgwarning, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }


            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;

            GetOrignFactory(rwo);

            RwoAssignQtyForm rasform = new RwoAssignQtyForm(this.DataContext as RWOSOPCDataContext,
                           rwo, selectlist, this._orignfactories);

            rasform.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dlg = rasform.ShowDialog();

            if (dlg == DialogResult.OK)
            {
                this._orignfactories = selectlist;
                this.roundWorkOrderIIListForm1.BindingSource.DataSource = null;
                this.roundWorkOrderIIListForm1.BindingSource.DataSource = rwo.RoundWorkOrderIIs;
            }
            //else
            //    SetCheckBoxStatu(orignfactories);

        }

        private ArrayList GetSelectFactory()
        {
            ArrayList checkEdits = new ArrayList();
            foreach (Control control in panelPartail.Controls)
            {
                if (control is DevExpress.XtraEditors.CheckEdit && (control as DevExpress.XtraEditors.CheckEdit).Checked)
                {
                    string s = (control as DevExpress.XtraEditors.CheckEdit).Text.Trim();
                    checkEdits.Add(s);
                }
            }
            return checkEdits;
        }

        private void GetOrignFactory(RoundWorkOrder rwo)
        {
            var facs = (rwo.RoundWorkOrderIIs.Where(p => p.WorkOrderNo == rwo.WorkOrderNo && p.ColorCode == rwo.ColorCode
                && p.RoundNo == rwo.RoundNo)).Select(m => m.SubFactory).Distinct();

            _orignfactories.Clear();
            foreach (string fac in facs)
            {
                _orignfactories.Add(fac);
            }

        }

        #endregion

    }
}

