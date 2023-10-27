using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.RWO.BO;
using PH.Platform.BO;
using PH.RWO.UI.WO;
using DevExpress.XtraBars;

namespace PH.RWO.UI
{
    public partial class WorkOrderDetailForm : ParentChildForm
    {
        private PH.RWO.BO.WorkOrder CurWorkOrder
        {
            get { return this.BindingSource.Current as PH.RWO.BO.WorkOrder; }
        }

        public WorkOrderDetailForm()
        {
            InitializeComponent();
            this.BindControls();
            //后续代码
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            //this.styleRationListForm1.DataContext = Helper.Context;
        }

        PH.RWO.BO.StyleList _StyleList;
        public override void DataBind()
        {
            base.DataBind();
            WorkOrder wo = (this.BindingSource.Current as WorkOrder);
            this.workOrderColorListForm1.BindingSource.DataSource = wo.WorkOrderColors;
            this.packingBrandCategoryListForm1.BindingSource.DataSource = wo.WorkOrderCategories;
            this.packingBrandCategoryListForm1.EditorTypeName = typeof(WO.PackingWOCategoryParentChildForm).FullName;
            this.workOrderColorListForm1.EditorTypeName = typeof(WorkOrderColorDetailForm).FullName;


            //MessageBox.Show(wo.Project.CustomerCode);

            //統一成一種格式，由David修改 20200-09-04
            this.TimeElementsShip.PageVisible = false;
            this.TimeElementsNonShip.PageVisible = true;

            //this.TimeElementsShip.PageVisible = wo.IsShipWindow;
            //this.TimeElementsNonShip.PageVisible = !wo.IsShipWindow;


            this.ConfirmRight(wo);
            //PH.MaterialStandby.BO.MaterialStandbyDataContext msContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MaterialStandby.BO.MaterialStandbyDataContext>();
            _StyleList = new PH.RWO.BO.StyleList();
            this.StyleBindingSource.DataSource = _StyleList.GetStyleList(wo.Company, wo.StyleNo);
            //this.tabRatio.PageVisible = wo.Project.CustomerCode == "TAMA";
            this.tabRatio.PageVisible = wo.Project.Team == "C1";
            //if (wo.Project.CustomerCode == "TAMA")

            this.btnCalcOption3.Visible = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator;

            InitChooseFW();

            if (wo.Project.Team == "C1")
            {
                //DataHelper hepler = new DataHelper();
                IEnumerable<WOSKURatio> list = Helper.GetRatio(wo.StyleNo);
                WorkOrderColor WOc = (this.BindingSource.Current as WorkOrder).WorkOrderColors[0];
                if (list.Count() != WOc.WorkOrderSKUs.Count)
                {
                    InitStyleRation();
                }
                list = Helper.GetRatio(wo.StyleNo);
                this.styleRationListForm1.BindingSource.DataSource = list;
                this.styleRationListForm1.AllowAddRow = false;
                this.styleRationListForm1.AllowGridEdit = true;
                this.styleRationListForm1.RowChangeAutoSave = false;
                this.styleRationListForm1.DataContext = this.DataContext;// DataHelper.RWOContext;
            }
            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.OnClickEdit();
            }


            //由David加入 20200-08-25
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
            barBtnEdit.Visibility = BarItemVisibility.Never;

            if (this.ListForm is WorkOrderIncompleteListForm)
            {
                string param = (this.ListForm as WorkOrderIncompleteListForm).Param;
                if (param == "NecessityDataFillIn")
                {
                    barBtnEdit.Visibility = BarItemVisibility.Always;

                    tpChosen.PageVisible = false;
                    TimeElementsShip.PageVisible = false;
                    TimeElementsNonShip.PageVisible = false;
                    xtraTabPage5.PageVisible = false;

                    splitterControl1.Dock = DockStyle.Bottom;
                    splitterControl1.Visible = false;
                    splitterControl1.Height = 0;

                    panelControl1.Dock = DockStyle.None;
                    panelControl1.Visible = false;

                    headerTitleBar.Dock = DockStyle.Fill;
                }
                else if (param.StartsWith("BulkSampleDespatch"))
                {
                    barBtnEdit.Visibility = BarItemVisibility.Always;

                    //tpChosen.PageVisible = false;
                    TimeElementsShip.PageVisible = false;
                    TimeElementsNonShip.PageVisible = false;
                    xtraTabPage5.PageVisible = false;
                    tabOther.PageVisible = false;
                    MaterialPage.PageVisible = false;
                    tabCutting.PageVisible = false;
                    tabTest.PageVisible = false;

                    xtraTabPage3.PageVisible = false;
                    tabCAD.PageVisible = false;
                }

                //else if (param == "BulkSampleFWSdd")
                //{
                //    tpChosen.PageVisible = false;
                //    TimeElementsShip.PageVisible = false;
                //    TimeElementsNonShip.PageVisible = false;
                //    xtraTabPage5.PageVisible = false;
                //    tabOther.PageVisible = false;
                //    MaterialPage.PageVisible = false;
                //    tabCutting.PageVisible = false;
                //    tabTest.PageVisible = false;

                //    xtraTabPage3.PageVisible = false;

                //    //workOrderColorListForm1.EditorTypeName = null;
                //    //workOrderColorListForm1.EditorTypeName = typeof(WorkOrderColorDetailForm).FullName;
                //}

            }

        }

        private DataHelper helper;
        public DataHelper Helper
        {
            get
            {
                if (helper == null)
                {
                    helper = new DataHelper();
                }
                return helper;
            }
            set
            {
                if (value == null)
                {
                    helper = new DataHelper();
                }
                else
                {
                    helper = value;
                }

            }
        }
        private void InitStyleRation()
        {
            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo.WorkOrderColors.Count > 0)
            {
                foreach (WorkOrderSKU sku in (this.BindingSource.Current as WorkOrder).WorkOrderColors[0].WorkOrderSKUs)
                {
                    WOSKURatio mratio = context.WOSKURatios.Where(p => p.SytleNo == wo.StyleNo && p.Cup == sku.Cup && p.Size == sku.Size).FirstOrDefault();
                    if (mratio == null)
                    {
                        WOSKURatio ratio = new WOSKURatio();
                        ratio.SytleNo = wo.StyleNo;
                        //ratio.ColorCode ="";
                        ratio.Cup = sku.Cup;
                        ratio.Size = sku.Size;
                        ratio.Ratio = 0;
                        context.WOSKURatios.InsertOnSubmit(ratio);
                    }
                }
                context.SubmitChanges();
            }
        }

        protected override void SaveCurrent()
        {
            //WorkOrder wo = this.BindingSource.Current as WorkOrder;
            ////if (!wo.ISModifyAdjustT3Date)
            ////{
            //if (this.DataContext.GetChangeSet().Updates.Count > 0)
            //{
            //    wo.TestConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //    wo.TestDate = System.DateTime.Now;
            //    //wo.Version = (wo.Version ?? 0)++;
            //    //wo.WOReviseDate
            //}
            ////}

            //if (this.Notepad.Lines.Count() > 2)
            //{
            //    MessageBox.Show("The notepad up to two Cop WOs", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            this.StyleBindingSource.EndEdit();
            (_StyleList.CurrentDataContext as RWOSOPCDataContext).SubmitChanges();

            base.SaveCurrent();

        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Global.MaskAllBaseEdit(this.tabMaterial);
            bool isEdit = (this.BindingSource.Current as BaseEntity).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit;
            if (isEdit)
            {
                if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "PH.RWO.T3Ajust") != null)
                {
                    PPCUnMaskEdit();
                }
                UnMaskEdit();
            }
            this.btnAgreedFW2.Enabled = isEdit;
            this.gvChosenFW.OptionsBehavior.Editable = isEdit;
            this.btnCalcOption3.Enabled = isEdit; //由David加入 2020-07-07

            this.btnAgreedFW4.Enabled = isEdit && this.CurWorkOrder.CanAgreeOpt4;
            this.btnChosenNotepad.Enabled = isEdit; //由David加入 2022-01-06
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if ((this.PrevForm as WorkOrdersListForm) != null && (this.PrevForm as WorkOrdersListForm).ParentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as WorkOrdersListForm).ParentPage);
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
            bool bOK = (this.PrevForm as WorkOrdersListForm) != null && (this.PrevForm as WorkOrdersListForm).ParentPage != null;
            if (bOK && (this.PrevForm as WorkOrdersListForm).WO != null)
            {
                WorkOrder wo1 = this.BindingSource.Current as WorkOrder;
                WorkOrder wo = (this.PrevForm as WorkOrdersListForm).WO;
                wo.T3Adjust = wo1.T3Adjust;
                wo.AjustT3DateConfirm = wo1.AjustT3DateConfirm;
            }
        }
        private void CloseCurrentPage()
        {
            bool bOK = (this.PrevForm as WorkOrdersListForm) != null && (this.PrevForm as WorkOrdersListForm).ParentPage != null;
            if (bOK)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as WorkOrdersListForm).ParentPage);
            }
        }
        //   窗体加载
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                if (this.TimeElementsShip.PageVisible)
                    this.tabMaterial.SelectedTabPage = this.TimeElementsShip;
                else if (this.TimeElementsNonShip.PageVisible)
                    this.tabMaterial.SelectedTabPage = this.TimeElementsNonShip;
            }

            CheckMatchVersion();

        }
        private void CheckMatchVersion()
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;

            foreach (var woc in wo.WorkOrderColors)
            {
                foreach (var rwo in woc.RoundWorkOrders)
                {
                    if (rwo.WOVersion != wo.Version)
                    {
                        rwo.WOVersion = wo.Version;
                    }
                    foreach (var rwo2 in rwo.RoundWorkOrderIIs)
                    {
                        if (rwo2.RWOVersion != rwo.Version)
                            rwo2.RWOVersion = rwo.Version;
                    }
                }
            }
            this.workOrderColorListForm1.EditorTypeName = typeof(WorkOrderColorDetailForm).FullName;

            //foreach (var woc in wo.WorkOrderColors)
            //{
            //    foreach (var rwo in woc.RoundWorkOrders)
            //    {
            //        if (rwo.WOVersion != wo.Version)
            //        {
            //            PH.RWO.UI.WO.WOVersionChangedReasonForm frm = new PH.RWO.UI.WO.WOVersionChangedReasonForm(wo);
            //            if (frm.ShowDialog() == DialogResult.Yes)
            //            {
            //                bool isshow = this.IsShowMsg;
            //                PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = false;
            //                this.OnClickSave();
            //                PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = isshow;
            //                this.workOrderColorListForm1.EditorTypeName = typeof(WorkOrderColorDetailForm).FullName;
            //            }
            //            else
            //            {
            //                this.workOrderColorListForm1.EditorTypeName = "";// typeof(WorkOrderColorDetailForm).FullName;
            //            }
            //            return;
            //        }
            //    }
            //}
        }

        /// <summary>
        /// 將相關控件置於可編輯
        /// </summary>
        private void UnMaskEdit()
        {
            this.Notepad.Properties.ReadOnly = false;
            this.btnChosenNotepad.Enabled = true;
            this.BulkVSSoQty.Properties.ReadOnly = false;
            this.SizeMatrix.Properties.ReadOnly = false;
            this.maxOvershipQtyRatioSpinEdit.Properties.ReadOnly = false;
            this.testAZOCheckEdit.Properties.ReadOnly = false;
            this.testElongationCheckEdit.Properties.ReadOnly = false;
            this.testFusingCheckEdit.Properties.ReadOnly = false;
            this.testOEKOCheckEdit.Properties.ReadOnly = false;
            this.testOtherRemark.Properties.ReadOnly = false;
            this.testOthersCheckEdit.Properties.ReadOnly = false;
            this.testShrinkageCheckEdit.Properties.ReadOnly = false;
            this.testWashingCheckEdit.Properties.ReadOnly = false;
            this.styleOrderRadioGroup.Properties.ReadOnly = false;
            this.styleRevisionRadioGroup.Properties.ReadOnly = false;
            this.baseSizeTextEdit.Properties.ReadOnly = false;
            this.cuttingMixStylesCheckEdit.Properties.ReadOnly = false;
            this.cuttingOthersCheckEdit.Properties.ReadOnly = false;
            this.cuttingOthersRemarkMemoEdit.Properties.ReadOnly = false;
            this.T3AdjustDate.Properties.ReadOnly = false;
            this.T3AdjustDateNonShip.Properties.ReadOnly = true;
            this.sampleDesptachQtyAndDateLabellookUpEdit.Properties.ReadOnly = false;

            //Xsj:add 20170213
            this.productFactoryTextEdit.Properties.ReadOnly = true;

            //由David注釋 2020-06-30
            //this.editCU.Properties.ReadOnly = this.editEFF.Properties.ReadOnly = this.editNumberOfLine.Properties.ReadOnly = false;
            this.editNumberOfLine.Properties.ReadOnly = false;

            this.editShipmodeChange.Properties.ReadOnly = false;

            //由David加入 2020-06-30
            this.textEdit10.Properties.ReadOnly = false;
            this.textEdit11.Properties.ReadOnly = false;

            //由David加入 2020-08-27
            this.materialContrastColorCheckEdit.Properties.ReadOnly = false;
            this.materialVariousWidthCheckEdit.Properties.ReadOnly = false;
            this.materialOthersCheckEdit.Properties.ReadOnly = false;
            this.materialOthersRemarkMemoEdit.Properties.ReadOnly = false;
            this.materialDateDateEdit.Properties.ReadOnly = false;
            this.cuttingDateDateEdit.Properties.ReadOnly = false;
            this.testDateDateEdit.Properties.ReadOnly = false;

            this.cuttingBackPartCheckEdit.Properties.ReadOnly = false;
            this.cuttingCoverButtonCheckEdit.Properties.ReadOnly = false;
            this.cuttingNotchCheckEdit.Properties.ReadOnly = false;
            this.cuttingFabircRelaxCheckEdit.Properties.ReadOnly = false;
            this.cutting1stLaceCheckEdit.Properties.ReadOnly = false;
            this.cutting2ndLaceCheckEdit.Properties.ReadOnly = false;

            this.edtCuttingFabircRelaxHours.Properties.ReadOnly = false;
            this.edtCutting1stLaceClass.Properties.ReadOnly = false;
            this.edtCutting1stLaceWastage.Properties.ReadOnly = false;
            this.edtCutting2ndLaceClass.Properties.ReadOnly = false;
            this.edtCutting2ndLaceWastage.Properties.ReadOnly = false;


            StyleOrderStatus();
        }

        private void PPCUnMaskEdit()
        {
            this.T3AdjustDate.Properties.ReadOnly = true;
            this.T3AdjustDateNonShip.Properties.ReadOnly = true;
            StyleOrderStatus();
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
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
            else
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("WO({0}) Report", wo.WorkOrderNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1}", wo.WorkOrderNo, cust.Trim()); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to confirm this WO?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1) == DialogResult.No) return;

            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            string UserId = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

            PH.RWO.BO.RWOSOPCDataContext context = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
            Right r = context.Rights.Where(r1 => wo.Project.CustomerCode == r1.CustomerCode && wo.Project.Factory == r1.Factory && r1.Users.ToLower().IndexOf(UserId.ToLower()) > -1).FirstOrDefault();
            int current = (r.Current ?? -1);
            switch (current)
            {
                case 0:
                    if (string.IsNullOrEmpty(wo.OAConfirm))
                    {
                        wo.OAConfirm = UserId;
                        wo.OAConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 1:
                    if (string.IsNullOrEmpty(wo.PPCConfirm))
                    {
                        wo.PPCConfirm = UserId;
                        wo.PPCConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 2:
                    if (string.IsNullOrEmpty(wo.TopConfirm))
                    {
                        wo.TopConfirm = UserId;
                        wo.TopConfirmDate = System.DateTime.Now;
                    }
                    break;
                case 3:
                    if (string.IsNullOrEmpty(wo.HeaderConfirm))
                    {
                        wo.HeaderConfirm = UserId;
                        wo.HeaderConfirmDate = System.DateTime.Now;
                    }
                    break;
                default:
                    break;
            }
            wo.ActionStatus = (int)WOActionStatus.Confirm; //-1: Reject 0: Hold  1:Confirm
            wo.ActionStatusDate = DateTime.Now;
            wo.UpdateDate = DateTime.Now;

            bool isshow = this.IsShowMsg;
            PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = false;
            this.OnClickSave();
            PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = isshow;

            this.ConfirmRight(wo);
            (new Notify()).WOSendMail(wo, current);

            MessageBox.Show("Confirm WO Success!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //if (IfNeedSendMail(wo))
            //{
            //}
        }

        private void ConfirmRight(WorkOrder wo)
        {
            this.btnConfirm.Enabled = ((this.DataContext as RWOSOPCDataContext).fn_IfHaveConfirmRight(wo.WorkOrderNo, PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, 1) == 1);
        }

        private bool IfNeedSendMail(WorkOrder wo)
        {
            return (this.DataContext as RWOSOPCDataContext).fn_IsWONeedSendNotify(wo.WorkOrderNo, wo.CurrentIndex) == 1;
        }

        private void styleOrderRadioGroup_EditValueChanged(object sender, EventArgs e)
        {
            StyleOrderStatus();
        }

        private void StyleOrderStatus()
        {
            if ((this.BindingSource.Current as BaseEntity).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Read) return;
            bool bOK = false;
            object obj = styleOrderRadioGroup.EditValue;
            if (!Convert.IsDBNull(obj) && obj != null)
            {
                bOK = (bool)obj;
            }
            styleRevisionRadioGroup.Enabled = bOK;

        }

        private void BindControls()
        {
            DictionaryList list = new DictionaryList();

            this.SizeMatrix.Properties.DataSource = list.GetDataDictionaryMutiLang("PH.WO.SizeMatrix");
            this.SizeMatrix.Properties.DisplayMember = "Description";
            this.SizeMatrix.Properties.ValueMember = "DataCode";

            this.BulkVSSoQty.Properties.DataSource = list.GetDataDictionaryMutiLang("PH.WO.BulkSOQty");
            this.BulkVSSoQty.Properties.DisplayMember = "Description";
            this.BulkVSSoQty.Properties.ValueMember = "DataCode";

            this.sampleDesptachQtyAndDateLabellookUpEdit.Properties.DataSource = list.GetDataDictionaryMutiLang("PH.WO.SampleDesptach");
            this.sampleDesptachQtyAndDateLabellookUpEdit.Properties.DisplayMember = "Description";
            this.sampleDesptachQtyAndDateLabellookUpEdit.Properties.ValueMember = "DataCode";
        }

        private void btnConfirmT3_Click(object sender, EventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (!wo.T3Adjust.HasValue)
            {
                MessageBox.Show("Please select a aT3 Date.");
                return;
            }
            wo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        }

        private void btnWOKBReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            PrintWorkOrderReport(wo, false);
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            //PH.RWO.BO.Style style = (PH.RWO.BO.Style)this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle);
            if (wo == null) return;

            StyleList list = new StyleList();
            this.DataContext = list.CurrentDataContext;
            Style style = list.GetStyleList(wo.Company, wo.StyleNo).FirstOrDefault();
            if (style == null)
            {
                MessageBox.Show(string.Format("No this Style No: {0}.", wo.StyleNo));
                return;
            }

            CreateProgramForm(typeof(PH.RWO.UI.StyleListForm), wo.StyleNo + " Detail", true, new object[] { style, "GCD", this.TabControls.SelectedTabPage }, null);

        }

        private void bbut_GenerateSPC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string Str = "";
            if (!string.IsNullOrEmpty(CurWorkOrder.SampleOrderNOs))
            {
                Str = string.Format("{0} 的辦單已經由 {1} 生成, 辦單號為 {2},需要再重新生成一次嗎?", CurWorkOrder.WorkOrderNo, CurWorkOrder.SampleOrderNOCreater, CurWorkOrder.SampleOrderNOs);
                if (MessageBox.Show(Str, "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            }

            PH.SPC.BO.SampleOrderList bus = new PH.SPC.BO.SampleOrderList();
            PH.SPC.BO.AutoGenerateSPCResult GenerateSPC = bus.AutoGenerateSPC(CurWorkOrder);
            if (GenerateSPC.Result)
            {
                CurWorkOrder.SampleOrderNOs = GenerateSPC.Msg;
                CurWorkOrder.SampleOrderNOCreater = PH.Platform.Common.SysParamHelper.Instance.UserID;
                CurWorkOrder.SampleOrderNOCreateDate = DateTime.Now;

                this.BindingSource.EndEdit();

                if (this.DataContext.GetChangeSet().Updates.Count() == 0)
                {
                    MessageBox.Show("抽版信息無法正常保存到Assigned To Ws中，請與IT David (6008) 聯繫 ");
                }
                this.DataContext.SubmitChanges();

                MessageBox.Show(string.Format("生成成功！ 辦單號：{0}", GenerateSPC.Msg), "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show(GenerateSPC.Msg, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            //PH.SPC.BO.SampleOrder sampleOrder = null;
            //PH.SPC.BO.Style style = this.CurWorkOrder.CheckCreatedtoSPC();
            //if (style != null)
            //{
            //    //if (MessageBox.Show(string.Format("{0} 的辦單已經生成, 辦單號為 {1},需要再重新生成一次嗎?", this.CurWorkOrder.WorkOrderNo, style.SampleOrderID),
            //    //    "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.Yes)
            //    //GenerateSPCform form = new GenerateSPCform("詢問", string.Format("{0} 的辦單已經由 {1} 生成, 辦單號為 {2},需要再重新生成一次嗎?", this.CurWorkOrder.WorkOrderNo, style.SampleOrder.Table, style.SampleOrderID), style);
            //    GenerateSPCform form = new GenerateSPCform("詢問", string.Format("{0} 的辦單已經由 {1} 生成, 辦單號為 {2},需要再重新生成一次嗎?", this.CurWorkOrder.WorkOrderNo, style.SampleOrder.Table, style.SampleOrderNoShow), style);
            //    if (form.ShowDialog() == DialogResult.Yes)
            //    {
            //        sampleOrder = this.CurWorkOrder.AutoGenerateSPC();
            //        MessageBox.Show(sampleOrder.GenerateFromWorkOrderTips);
            //    }
            //}
            //else
            //{
            //    if (MessageBox.Show(string.Format("是否要生成 {0} 的辦單?", this.CurWorkOrder.WorkOrderNo), "詢問", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.Yes)
            //        return;

            //    sampleOrder = this.CurWorkOrder.AutoGenerateSPC();
            //    MessageBox.Show(sampleOrder.GenerateFromWorkOrderTips);
            //}
            //if (sampleOrder != null && sampleOrder.GenerateFromWorkOrderStatus)
            //{
            //    if (MessageBox.Show(string.Format("是否打印 {0} 的樣辦制造通知單?", sampleOrder.SampleOrderID), "詢問", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.Yes)
            //        return;

            //    foreach (PH.SPC.BO.Style style1 in sampleOrder.Styles)
            //    {
            //        foreach (PH.SPC.BO.StyleSort sort in style1.StyleSorts)
            //        {
            //            foreach (PH.SPC.BO.StyleSortEdition edition in sort.StyleSortEditions)
            //            {
            //                Global.PrintWorkNoteReport(edition);
            //            }
            //        }
            //    }

            //}
        }

        private void btnVersionChangedReason_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;
            PH.RWO.UI.WO.WOVersionChangedReasonForm frm = new PH.RWO.UI.WO.WOVersionChangedReasonForm(wo);
            frm.ShowDialog();
        }

        #region How to Choose FW

        private void InitChooseFW()
        {
            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();

            this.gvChosenFW.OptionsView.ShowColumnHeaders = false;
            this.gvChosenFW.OptionsBehavior.Editable = false;

            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;
            wo.GetIEBInfor();

            this.bsChooseFW.DataSource = wo.WOChooseFWs;

            #region WOChooseFW

            if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count == 0)
            {
                for (int i = 1; i < 5; i++)
                {
                    AddWOChooseFW(wo, i, context);

                }
            }
            else if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count > 0)
            {
                foreach (var cFW in wo.WOChooseFWs)
                {
                    if (cFW.Seq == 1)
                        CheckOptionOneFW(cFW, context);

                    //自動計算Opation 3 由David加入 2020-07-07
                    if (cFW.Seq == 3)
                    {
                        wo.CalcOption3Data();
                    }
                }
            }

            if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count == 3)
            {
                AddWOChooseFW(wo, 4, context);
            }
            this.DataContext.SubmitChanges();
            #endregion

        }
        private void AddWOChooseFW(WorkOrder wo, int seq, RWOSOPCDataContext context)
        {
            object obj = this.bsChooseFW.AddNew();
            WOChooseFW cFW = obj as WOChooseFW;
            cFW.WorkOrder = wo;
            cFW.CurrentDataContext = this.DataContext;
            cFW.CurrentBindingSource = this.bsChooseFW;

            cFW.Company = wo.Company;
            cFW.SalesOrderNo = wo.SalesOrderNo;
            cFW.WorkOrderNo = wo.WorkOrderNo;
            cFW.Seq = seq;
            cFW.Chosen = false;


            if (cFW.Seq == 1)
            {
                DoOptionOneFW(cFW, context);

                //    cFW.FactoryWork = wo.Project.IsShipWindow ? wo.FactoryWorkStartShip : wo.FactoryWorkShipCompleted;
                //    cFW.LineWork = wo.Project.IsShipWindow ? wo.LineWorkStartShip : wo.LineWorkShipCompleted;

                //    DateTime? dtFirst = wo.Project.IsShipWindow ? wo.FirstStationStartShip : wo.FirstStationShipCompleted;
                //    if (!dtFirst.HasValue)
                //    {
                //        dtFirst = context.fn_FirstStationByFW(cFW.FactoryWork, wo.Project.Customer, wo.Factory);
                //    }
                //    cFW.FirstStation = dtFirst;

                //    //assign 1stStation to WO when it no value:
                //    if (!wo.FirstStationStartShip.HasValue)
                //    {
                //        wo.FirstStationStartShip = context.fn_FirstStationByFW(wo.FactoryWorkStartShip, wo.Project.Customer, wo.Factory);
                //    }
                //    if (!wo.FirstStationShipCompleted.HasValue)
                //    {
                //        wo.FirstStationShipCompleted = context.fn_FirstStationByFW(wo.FactoryWorkShipCompleted, wo.Project.Customer, wo.Factory);
                //    }

                //    //cFW.Chosen = true;
            }
            wo.WOChooseFWs.Add(cFW);
        }
        private void DoOptionOneFW(WOChooseFW cFW, RWOSOPCDataContext context)
        {
            WorkOrder wo = cFW.WorkOrder;

            cFW.FactoryWork = wo.IsShipWindow ? wo.FactoryWorkStartShip : wo.FactoryWorkShipCompleted;
            cFW.LineWork = wo.IsShipWindow ? wo.LineWorkStartShip : wo.LineWorkShipCompleted;

            DateTime? dtFirst = wo.IsShipWindow ? wo.FirstStationStartShip : wo.FirstStationShipCompleted;
            if (!dtFirst.HasValue)
            {
                dtFirst = context.fn_FirstStationByFW(cFW.FactoryWork, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
            cFW.FirstStation = dtFirst;

            //assign 1stStation to WO when it no value:
            if (!wo.FirstStationStartShip.HasValue)
            {
                wo.FirstStationStartShip = context.fn_FirstStationByFW(wo.FactoryWorkStartShip, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
            if (!wo.FirstStationShipCompleted.HasValue)
            {
                wo.FirstStationShipCompleted = context.fn_FirstStationByFW(wo.FactoryWorkShipCompleted, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
        }
        private void CheckOptionOneFW(WOChooseFW cFW, RWOSOPCDataContext context)
        {
            if (!cFW.FactoryWork.HasValue)
            {
                DoOptionOneFW(cFW, context);
            }
        }

        private void btnAgreedFW2_Click(object sender, EventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;

            //DateTime? dt1 = null;
            //DateTime? dt2 = null;

            //foreach (var item in wo.WOChooseFWs)
            //{
            //    if (item.Seq == 1) dt1 = item.FactoryWork;
            //    else if (item.Seq == 2) dt2 = item.FactoryWork;
            //}
            //DateTime? dt = dt2.HasValue ? dt2 : dt1;

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
                this.btnAgreedFW4.Enabled = true;
            }
        }
        private void btnAgreedFW4_Click(object sender, EventArgs e)
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
            }
        }

        private void AgreedFW_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WOChooseFW cfw = this.bsChooseFW.Current as WOChooseFW;
            if (cfw == null) return;
            if (!cfw.FactoryWork.HasValue)
            {
                MessageBox.Show(string.Format("Option {0} must enter FW Start Date!", cfw.Seq), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            foreach (var item in this.CurWorkOrder.WOChooseFWs)
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
                //logic
                this.DataContext.SubmitChanges();

                //notify
                (new Notify()).WOFWSendMail(cfw.WorkOrder);
            }
        }
        #endregion

        private void barButtonSample_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //if (MessageBox.Show("是否打印樣板質量/顏色跟進（大貨料）報表?", "詢問", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
            //{
            Project pro;
            if (this.PrevForm is WorkOrderIncompleteListForm)
            {
                pro = ((this.PrevForm as WorkOrderIncompleteListForm).BindingSource.Current as WorkOrder).Project;
            }
            else
            {
                pro = ((this.PrevForm as ProjectDetailForm).BindingSource.Current as Project);
            }

            //Project pro = ((this.PrevForm as ProjectDetailForm).BindingSource.Current as Project);

            string Customer = pro.Customer;
            string CustomerCode = pro.CustomerCode;
            string ProjectNo = pro.ProjectNo;
            string Season = pro.Season;
            WorkOrder workorder = (this.BindingSource.Current as WorkOrder);
            string colorCode = workorder.WOColors;
            string CustomerStyleNo = workorder.CustomerStyleNo;
            string PHStyleNo = workorder.StyleNo;
            string WorkerOrder = workorder.WorkOrderNo;
            string DBC = workorder.DBC;
            PH.RWO.BackEnd.Reports.SL.WO.WorkOrderSample Rpt = new PH.RWO.BackEnd.Reports.SL.WO.WorkOrderSample(CustomerCode,
                Season, ProjectNo, colorCode, CustomerStyleNo, PHStyleNo, WorkerOrder, DBC);
            Rpt.ShowPreviewDialog();

            //}
        }

        private void btnCalcOption3_Click(object sender, EventArgs e)
        {
            (this.BindingSource.Current as WorkOrder).CalcOption3Data();
        }

        private void BarPreview_ItemClick(object sender, ItemClickEventArgs e)
        {
            PH.SPC.BO.Style _style = this.CurWorkOrder.CheckCreatedtoSPC();
            if (_style == null) return;
            foreach (PH.SPC.BO.StyleSort sort in _style.StyleSorts)
            {
                foreach (PH.SPC.BO.StyleSortEdition edit in sort.StyleSortEditions)
                {
                    Global.PrintWorkNoteReport(edit);
                }
            }
        }

        private void barTest_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgGeneralSPCError", "msgGeneralSPCError", "9999");
        }

        private void btnChosenNotepad_Click(object sender, EventArgs e)
        {
            SelectWONotepadReasonForm frmSelectWONotepadReason = new SelectWONotepadReasonForm();
            if (frmSelectWONotepadReason.ShowDialog() == DialogResult.OK)
            {
                List<WONotepadReason> lists = frmSelectWONotepadReason.GetSelectList();
                if (lists.Count() == 0)
                {
                    return;
                }

                StringBuilder sb = new StringBuilder();
                foreach (var obj in lists)
                {
                    sb.AppendLine(obj.Seq + " " + obj.NameEN);
                }
                Notepad.Text = sb.ToString();
            }

        }

    }
}
