using System;
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

namespace PH.RWO.UI
{
    public partial class RoundWorkOrderIIDetailForm : ParentChildForm
    {
        public RoundWorkOrderIIDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RoundWorkOrderII rwo2 = (this.BindingSource.Current as RoundWorkOrderII);
            subFactoryEditLabel.Text = (rwo2.IsSubFactory) ? "Sub-contracting Fty:" : "Factory:";
            pPCConfirmLabel.Text = (rwo2.IsSubFactory) ? "Confirmed by Sub-Fty PPC:" : "Confirmed by Fty PPC:";
            pmgrConfirmLabel.Text = (rwo2.IsSubFactory) ? "Confirmed by Sub-Fty Sr Mgr:" : "Confirmed by Sub-Fty Sr Mgr:";

            oAConfirmLabel.Visible = oAConfirmTextEdit.Visible = oAConfirmDateDateEdit.Visible = oAConfirmDateLabel.Visible = (rwo2.IsSubFactory);

            base.DataBind();
            //this.ConfirmRight(rwo);
            this.roundWorkOrderIIDetailsListForm1.BindingSource.DataSource = rwo2.RoundWorkOrderDetailIIs;
            //this.roundWorkOrderIIDetailsListForm1.EditorTypeName = typeof(RoundWorkOrderIIDetailsDetailForm).FullName;
            //bool isTAMA = rwo.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA";
            bool isTAMA = rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Team == "C1";
            //this.roundWorkOrderIIDetailsListForm1.colRatio.Visible = isTAMA;

            //PH.Platform.Misc.BO.Misc_DataDictionaryList list = new Misc_DataDictionaryList();
            //var aa = list.GetAllMisc_DataDictionaryByCondition("PH.RWO.DirectOperation");
            var aa = (from a in (this.DataContext as RWOSOPCDataContext).RWOIITimeRules
                      select new { a.Code, a.Operation }).Distinct().OrderBy(p => p.Code);
            //var aa=(this.DataContext as RWOSOPCDataContext).RWOIITimeRules.Distinct
            this.editDirectOperation.Properties.DataSource = aa;

            if (isTAMA)
            {
                InitStyleRatio();
            }
            //AutoInitRWOSKU();
            SetExFtyErrorProviderRules();
            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.OnClickEdit();
            }

        }


        private void btnPrintRWO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
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
            //    data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderReport).FullName;//報表全名
            //else
            //    data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("RWO2({0}-{1}-{2}) Report", rwo2.WorkOrderNo, rwo2.RoundNo, rwo2.SubFactory);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", rwo2.WorkOrderNo, rwo2.ColorCode, rwo2.RoundNo, rwo2.SubFactory); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
        private void ConfirmRight(RoundWorkOrderII rwo2)
        {
            this.btnConfirm.Enabled = ((this.DataContext as RWOSOPCDataContext).fn_IfHaveRWOIIConfirmRight(rwo2.WorkOrderNo, rwo2.ColorCode, rwo2.RoundNo, PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, rwo2.SubFactory, 2) == 1);
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to confirm this RWO Phase II?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.No) return;

            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            string UserId = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;

            Right r = context.Rights.Where(r1 => rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode == r1.CustomerCode && rwo2.SubFactory == r1.Factory && r1.Users.ToLower().IndexOf(UserId.ToLower()) > -1).FirstOrDefault();
            int current = (r.Current ?? -1);
            switch (current)
            {
                case 0:
                    if (string.IsNullOrEmpty(rwo2.OAConfirm))
                    {
                        rwo2.OAConfirm = UserId;
                        rwo2.OAConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 1:
                    if (string.IsNullOrEmpty(rwo2.PPCConfirm))
                    {
                        rwo2.PPCConfirm = UserId;
                        rwo2.PPCConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 2:
                    if (string.IsNullOrEmpty(rwo2.TopConfirm))
                    {
                        rwo2.TopConfirm = UserId;
                        rwo2.TopConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 3:
                    if (string.IsNullOrEmpty(rwo2.HeaderConfirm))
                    {
                        rwo2.HeaderConfirm = UserId;
                        rwo2.HeaderConfirmDate = System.DateTime.Now;
                    }
                    break;
                default:
                    break;
            }
            rwo2.WOReviseDate = DateTime.Now;
            rwo2.AmendDate = DateTime.Now;

            bool isshow = this.IsShowMsg;
            PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = false;
            this.OnClickSave();
            PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = isshow;

            this.ConfirmRight(rwo2);
            //if (IfNeedSendMail(rwo.WorkOrderColor.WorkOrder))

            //if (IfNeedSendMail(rwo))
            //{
            (new Notify()).RWOIISendMail(rwo2, current);
            MessageBox.Show("Confirm RWO Phase II Success!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //}
        }

        private bool IfNeedSendMail(RoundWorkOrderII rwo2)
        {
            return (this.DataContext as RWOSOPCDataContext).fn_IsRWONeedSendNotify(rwo2.WorkOrderNo, rwo2.CurrentIndex) == 1;
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

        private void BindingComplete(object sender, BindingCompleteEventArgs e)
        {
            if (e.BindingCompleteContext == BindingCompleteContext.DataSourceUpdate)
            {
                e.Binding.BindingManagerBase.EndCurrentEdit();
            }
        }


        PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();

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
            RoundWorkOrderII rwo2 = (this.BindingSource.Current as RoundWorkOrderII);
            base.SetFormControlState();
            this.ConfirmRight(rwo2);
            Global.MaskAllBaseEdit(this.tabControl);
            if ((this.BindingSource.Current as BaseEntity).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                UnMaskEdit();
            }
            this.btnSetRound.Enabled = (this.BindingSource.Current as BaseEntity).BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read;
            this.btnSplitRound.Enabled = (this.BindingSource.Current as BaseEntity).BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read;
            //bool isTama = (this.BindingSource.Current as RoundWorkOrder).WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA";
            bool isTama = (this.BindingSource.Current as RoundWorkOrderII).RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Team == "C1";
            //if (!isTama)
            //    this.roundWorkOrderIIDetailsListForm1.btnApplyRatio.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        private void lCLExFtyDateDateEdit_EditValueChanged(object sender, EventArgs e)
        {
            return;

            //RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            ///////if (rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode != "TAMA")
            ////if (rwo.WorkOrderColor.WorkOrder.Project.Team != "C1")
            //{
            //    DateTime DT = (DateTime)this.lCLExFtyDateDateEdit.EditValue;
            //    this.lCLExFtyDateDateEdit.EditValue = TranTime(DT, true);
            //    rwo2.LCLExFtyDate = (DateTime)this.lCLExFtyDateDateEdit.EditValue;
            //    rwo2.FactoryWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_FWDate(rwo2.LCLExFtyDate, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo2.LineWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_LWDate(rwo2.LCLExFtyDate, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo2.T3Date = (this.DataContext as RWOSOPCDataContext).fn_T3Date(rwo2.LCLExFtyDate, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory);
            //    this.GetExFtyDate(rwo2, false, rwo2.LCLExFtyDate);
            //}
            //this.DataBind();
        }

        private DateTime TranTime(DateTime dt, bool isLcl)
        {
            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            DateTime dt1 = (isLcl ? rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted : rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.FCLExFtyShipCompleted).GetValueOrDefault();
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

            //RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            //////if (rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA")
            ////   if (rwo.WorkOrderColor.WorkOrder.Project.Team == "C1")
            //{
            //    DateTime DT = (DateTime)this.fCLExFtyDateDateEdit.EditValue;
            //    this.fCLExFtyDateDateEdit.EditValue = TranTime(DT, false);
            //    rwo2.FCLExFtyDate = (DateTime)this.fCLExFtyDateDateEdit.EditValue;
            //    rwo2.FactoryWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_FWDate(rwo2.FCLExFtyDate, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo2.LineWorkStartDate = (this.DataContext as RWOSOPCDataContext).fn_LWDate(rwo2.FCLExFtyDate, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    rwo2.T3Date = (this.DataContext as RWOSOPCDataContext).fn_T3Date(rwo2.FCLExFtyDate, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory);
            //    this.GetExFtyDate(rwo2, true, rwo2.FCLExFtyDate);
            //}
            //this.DataBind();
        }


        //private void GetExFtyDate(RoundWorkOrderII rwo2, bool isLCL, DateTime? dt)
        //{
        //    DateTime? tempDt = (this.DataContext as RWOSOPCDataContext).fn_WeekEndDate(dt);
        //    //tempDt.GetValueOrDefault().AddDays(1);
        //    tempDt = (this.DataContext as RWOSOPCDataContext).fn_ExftyDate(tempDt, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.ShipMode, isLCL, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory, rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
        //    if (isLCL)
        //    {
        //        rwo2.LCLExFtyDate = tempDt;
        //    }
        //    else
        //    {
        //        rwo2.FCLExFtyDate = tempDt;
        //    }

        //}

        //protected override void SetFormControlState()
        //{
        //    base.SetFormControlState();

        //}
        public void InitStyleRatio()
        {
            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            IEnumerable<RoundWorkOrderDetailII> list = rwo2.RoundWorkOrderDetailIIs.Where(p => p.Ratio == null);
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
                RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
                IEnumerable<WOSKURatio> list = helper.GetRatio(rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.StyleNo);

                foreach (RoundWorkOrderDetailII detail in rwo2.RoundWorkOrderDetailIIs)
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
                RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
                rwo2.AmendDate = System.DateTime.Now;
                //rwo2.Version = rwo2.Version == null ? 1 : rwo2.Version + 1;
                rwo2.WOReviseDate = System.DateTime.Now;
            }
            SetValue();
            base.SaveCurrent();
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if ((this.PrevForm as RoundWorkOrderIIListForm) != null && (this.PrevForm as RoundWorkOrderIIListForm).ParentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as RoundWorkOrderIIListForm).ParentPage);
            }

        }
        protected override void OnClickSaveAndReturn()
        {
            SetValue();
            base.OnClickSaveAndReturn();
            CloseCurrentPage();
        }
        private void SetValue()
        {
            bool bOK = (this.PrevForm as RoundWorkOrderIIListForm) != null && (this.PrevForm as RoundWorkOrderIIListForm).ParentPage != null;
            if (bOK && (this.PrevForm as RoundWorkOrderIIListForm).RWO2 != null)
            {
                RoundWorkOrderII rwo1 = this.BindingSource.Current as RoundWorkOrderII;
                RoundWorkOrderII rwo = (this.PrevForm as RoundWorkOrderIIListForm).RWO2;
                rwo.AjustT3Date = rwo1.AjustT3Date;
                rwo.AjustT3DateConfirm = rwo1.AjustT3DateConfirm;
            }
        }
        private void CloseCurrentPage()
        {
            bool bOK = (this.PrevForm as RoundWorkOrderIIListForm) != null && (this.PrevForm as RoundWorkOrderIIListForm).ParentPage != null;
            if (bOK)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as RoundWorkOrderIIListForm).ParentPage);
            }
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            //if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            //{
            //    this.tabControl.SelectedTabPage = this.tpTimeElements;
            //}
        }

        /// <summary>
        /// 將相關控件置於可編輯
        /// </summary>
        private void UnMaskEdit()
        {
            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            if (rwo2 == null) return;

            this.fCLExFtyDateDateEdit.Properties.ReadOnly = (rwo2.IsSubFactory);
            this.lCLExFtyDateDateEdit.Properties.ReadOnly = (rwo2.IsSubFactory);
            this.ajustT3DateDateEdit.Properties.ReadOnly = false;
            this.amendDateDateEdit.Properties.ReadOnly = false;
            this.editDirectOperation.Properties.ReadOnly = false;
        }

        private void PPCUnMaskEdit()
        {
            this.ajustT3DateDateEdit.Properties.ReadOnly = false;
        }

        private void btnConfirmT3_Click(object sender, EventArgs e)
        {
            RoundWorkOrderII rwo2 = (this.BindingSource.Current as RoundWorkOrderII);
            if (!rwo2.AjustT3Date.HasValue)
            {
                MessageBox.Show("Please select a aT3 Date.");
                return;
            }
            rwo2.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        }

        private void btnRWOKBReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RoundWorkOrderII rwo2 = this.BindingSource.Current as RoundWorkOrderII;
            PrintRoundWorkOrderReport(rwo2, false);
        }

        #region DXErrorProvider

        private void SetExFtyErrorProviderRules()
        {
            RoundWorkOrderII rwo2 = (this.BindingSource.Current as RoundWorkOrderII);
            if (rwo2 == null) return;
            if (rwo2.IsSubFactory) return;

            ConditionValidatonRule lclRule = new ConditionValidatonRule();
            lclRule.ConditionOperator = ConditionOperator.LessOrEqual;
            //bool isFCL = rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA";
            //lclRule.Value1 = isFCL ?
            //    rwo2.RoundWorkOrder.FCLExFtyDate : rwo2.RoundWorkOrder.LCLExFtyDate;
            lclRule.Value1 =  rwo2.RoundWorkOrder.LCLExFtyDate;
            //lclRule.ErrorText = isFCL ? string.Format("cannot greater than RWO's FCL Exfty date: {0:yyyy/MM/dd} !", rwo2.RoundWorkOrder.FCLExFtyDate)
            //    : string.Format("cannot greater than RWO's LCL Exfty date: {0:yyyy/MM/dd} !", rwo2.RoundWorkOrder.LCLExFtyDate);
            lclRule.ErrorText = string.Format("cannot greater than RWO's LCL Exfty date: {0:yyyy/MM/dd} !", rwo2.RoundWorkOrder.LCLExFtyDate);
            lclRule.ErrorType = ErrorType.Warning;

            //ConditionValidatonRule fclRule = new ConditionValidatonRule();
            //fclRule.ConditionOperator = ConditionOperator.LessOrEqual;
            //fclRule.Value1 = rwo2.RoundWorkOrder.FCLExFtyDate;
            //fclRule.ErrorText = "cannot greater than RWO's FCL Exfty date!";
            //fclRule.ErrorType = ErrorType.Warning;

            this.dxValidationProvider.SetValidationRule(this.lCLExFtyDateDateEdit, lclRule);
            //this.dxValidationProvider.SetValidationRule(this.fCLExFtyDateDateEdit, fclRule);
            this.dxValidationProvider.ValidationMode = ValidationMode.Auto;
        }

        #endregion
    }
}

