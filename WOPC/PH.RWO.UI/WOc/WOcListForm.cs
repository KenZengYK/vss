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
    public partial class WOcListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WOcListForm()
        {
            InitializeComponent();
            //this.DataContext = context;
            //this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;
            this.AllowGridEdit = false;
            this.AllowAddRow = false;
            //this.AllowKeyPress = false;
            //MessageBox.Show(Global.GetIP());

            //this._haveChosen = false;
            //this._readOnly = true;

        }
        private bool _haveChosen;
        private bool _readOnly;
        public WOcListForm(string chosen, string readOnly)
            : this()
        {
            this._haveChosen = Convert.ToBoolean(chosen);
            this._readOnly = Convert.ToBoolean(readOnly);
        }

        public override void DataBind()
        {
            base.DataBind();

            if (this._readOnly)
            {
                this.colCheckFlag.Visible = false;
                this.objListGridView.Columns.Remove(this.colCheckFlag);
            }

            this.objListGridView.OptionsBehavior.Editable = !this._readOnly;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;

            WorkOrderColorList list = new WorkOrderColorList();
            this.DataContext = list.CurrentDataContext;
            //this.BindingSource.DataSource = typeof(WorkOrderColor);
            this.BindingSource.DataSource = typeof(RoundWorkOrder);

            if (this._haveChosen)
                this.DataSource = list.GetWorkOrderColorsHasDoneRWO();
            else
                this.DataSource = list.GetWorkOrderColorsNotDoneRWO();

        }


        private void objListGridView_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            //WorkOrderColor woc1 = this.objListGridView.GetRow(e.RowHandle1) as WorkOrderColor;
            //WorkOrderColor woc2 = this.objListGridView.GetRow(e.RowHandle2) as WorkOrderColor;

            RoundWorkOrder woc1 = this.objListGridView.GetRow(e.RowHandle1) as RoundWorkOrder;
            RoundWorkOrder woc2 = this.objListGridView.GetRow(e.RowHandle2) as RoundWorkOrder;

            switch (e.Column.FieldName)
            {
                case "Factory":
                case "Customer":
                case "SalesOrderNo":
                case "ProjectNo":
                    e.Merge = woc1.SalesOrderNo == woc2.SalesOrderNo;
                    e.Handled = true;
                    break;
                case "WorkOrderNo":
                    e.Merge = woc1.WorkOrderNo == woc2.WorkOrderNo;
                    e.Handled = true;
                    break;
            }
        }

        #region Entrance Key Action

        private void ribeAction_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            //WorkOrderColor woc = this.BindingSource.Current as WorkOrderColor;
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;
            WorkOrderColor woc = rwo.WorkOrderColor;
            if (woc == null) return;
            if (woc.TotalRWO > 1)
            {
                string s = string.Format("This WOc {0} has {1} Cop WO(s), Cop WO will be deleted and recreated, are you continue?", woc.ColorCode, woc.TotalRWO);
                if (MessageBox.Show(s, "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
                    return;

            }

            using (RWO.RWOEntranceKey frm = new PH.RWO.UI.RWO.RWOEntranceKey(woc))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    frm.CreateWaitDialog();
                    try
                    {
                        TempWOc tempWOc = frm.WOc;
                        //ActionEntranceKey(woc, tempWOc);

                        //Keep round 1, Remove Round>1
                        frm.SetWaitDialogCaption("Reset rounds...");

                        //Xsj:移除RWONO不等於1(非第一輪）的RoundWorkOrder記錄
                        RemoveOtherRounds(woc);

                        //先處理第一Round: update
                        frm.SetWaitDialogCaption("Update first round data...");
                        UpdateFirstRound(woc, tempWOc);

                        //其他Round: add new
                        frm.SetWaitDialogCaption("Add other rounds data...");
                        AddOtherRound(woc, tempWOc);

                        //所有Round 的FW Option
                        frm.SetWaitDialogCaption("Add all rounds FW Options...");
                        AddRWOChooseFW(woc, tempWOc);

                        //notify
                        bool isOK = (new Notify()).RWOFWSendMail(woc);
                    }
                    finally
                    {
                        frm.ReleaseWaitDialog();
                    }
                }
            }

        }

        
        private void ActionEntranceKey(WorkOrderColor woc, TempWOc tempWOc)
        {
            //先處理第一Round: update
            UpdateFirstRound(woc, tempWOc);

            //其他Round: add new
            AddOtherRound(woc, tempWOc);

            //所有Round 的FW Option
            AddRWOChooseFW(woc, tempWOc);
        }

        /// <summary>
        /// Xsj:移除RWONO不等於1(非第一輪）的RoundWorkOrder記錄
        /// </summary>
        /// <param name="woc"></param>
        private void RemoveOtherRounds(WorkOrderColor woc)
        {
            // clear
            PH.RWO.BO.RWOSOPCDataContext dc = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
            int j = woc.RoundWorkOrders.Count;
            for (int i = j - 1; i >= 0; i--)
            {
                //Xsj:保留第一輪的記錄
                RoundWorkOrder rwo = woc.RoundWorkOrders[i];
                if (rwo.RoundNo == 1) continue;
                //Xsj:移除非第一輪的記錄
                dc.RoundWorkOrders.DeleteOnSubmit(rwo);
                woc.RoundWorkOrders.Remove(rwo);
            }
            dc.SubmitChanges();
        }

        /// <summary>
        /// Xsj:更新第一輪（RWONO==1）的數據
        /// Step1更新 RoundWorkOrder
        /// Step2更新 FWChoose
        /// Step3更新 RoundWorkOrderDetail
        /// </summary>
        /// <param name="woc"></param>
        /// <param name="tempWOc"></param>
        private void UpdateFirstRound(WorkOrderColor woc, TempWOc tempWOc)
        {
            //Xsj:移除其他（非第一輪）的數據后，只剩下一條記錄
            RoundWorkOrder rwo = woc.RoundWorkOrders[0];
            TempSplitRWO trwo = tempWOc.SplitRWOs.Find(delegate(TempSplitRWO trwo1)
            {
                return trwo1.Rwo == rwo.RoundNo;
            });
            if (trwo == null) return;


            #region RoundWorkOrder
            rwo.CurrentDataContext = this.DataContext;
            rwo.RoundTotal = trwo.TotalRwo;

            //rwo.RoundNo = r.RoundNo;
            //rwo.SalesOrderNo = r.SalesOrderNo;
            //rwo.SalesOrderLine = r.SalesOrderLine;
            //rwo.WorkOrderNo = r.WorkOrderNo;
            //rwo.Company = r.Company;
            //rwo.ColorCode = r.ColorCode;
            //rwo.CycleTime = r.CycleTime;
            //rwo.Date = r.Date;
            //rwo.DeliveryDate = r.DeliveryDate;
            rwo.T3Date = trwo.T3Date;
            //rwo.FCLExFtyDate = rwo.FCLExFtyDate;
            rwo.LCLExFtyDate = trwo.ExFtyDate;
            //rwo.FirstQNStartDate = r.FirstQNStartDate;
            //rwo.FirstStationStartDate = r.FirstStationStartDate;
            //rwo.LastQNExFtyDate = r.LastQNExFtyDate;
            rwo.NumberOfLine = trwo.NumberOfLine;

            foreach (TempFWChoose fwc in trwo.FWChooses)
            {
                if (fwc.Chosen)
                {
                    rwo.FactoryWorkStartDate = fwc.FWStartDate;
                    rwo.LineWorkStartDate = fwc.LWStartDate;
                    rwo.FirstStation = rwo.FirstStationStartDate = fwc.FirstStation;
                }
            }
            if (trwo.AT3Date.HasValue)
            {
                rwo.AjustT3Date = trwo.AT3Date;
                rwo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            }
            //rwo.RWOCreateDate = System.DateTime.Now;
            rwo.WOReviseDate = System.DateTime.Now;
            rwo.AmendDate = System.DateTime.Now;
            rwo.Version = 0;
            rwo.WOVersion = woc.WorkOrder.Version;

            #region rwo Approval cycle

            rwo.OAConfirm = "";
            rwo.OAConfirmDate = null;

            rwo.PPCConfirm = "";
            rwo.PPCConfirmDate = null;

            rwo.TopConfirm = "";
            rwo.TopConfirmDate = null;

            rwo.HeaderConfirm = "";
            rwo.HeaderConfirmDate = null;

            rwo.ActionStatus = null;
            rwo.ActionStatusDate = null;

            #endregion

            #endregion

            #region RoundWorkOrder Detail --> SKU

            foreach (RoundWorkOrderDetail sku in rwo.RoundWorkOrderDetails)
            {
                TempRWOSKU tsku = trwo.RWOSKUs.Find(delegate(TempRWOSKU tsku1)
                {
                    return tsku1.ColorCode == sku.ColorCode && tsku1.SizeCode == sku.Size && tsku1.CupCode == sku.Cup;
                });

                sku.BulkQty = (tsku != null) ? tsku.BulkQty : 0;


                //-------------Start------------------------
                //Xsj20160406:添加以下代碼實現SampleQty的分拆
                sku.SampleQty = (tsku != null) ? tsku.SampleQty : 0;  
                //-------------End--------------------------
            }
            #endregion

            this.DataContext.SubmitChanges();

        }

        /// <summary>
        /// Xsj:插入非第一輪的數據
        /// Step1：插入RoundWorkOrder
        /// Step2：插入FWChooses
        /// step3：插入RoundWorkOrderDetail
        /// </summary>
        /// <param name="woc"></param>
        /// <param name="tempWOc"></param>
        private void AddOtherRound(WorkOrderColor woc, TempWOc tempWOc)
        {
            //第一Round data:
            RoundWorkOrder rwo1 = woc.RoundWorkOrders[0];
            //TempSplitRWO trwo1 = tempWOc.SplitRWOs[0];

            for (int i = 1; i < tempWOc.RoundTotal; i++)
            {
                TempSplitRWO trwo = tempWOc.SplitRWOs[i];

                #region RoundWorkOrder

                RoundWorkOrder rwo = new RoundWorkOrder();
                rwo.CurrentDataContext = this.DataContext;
                rwo.WorkOrderColor = woc;

                rwo.RoundNo = trwo.Rwo;
                rwo.RoundTotal = trwo.TotalRwo;
                rwo.SalesOrderNo = woc.SalesOrderNo;
                rwo.SalesOrderLine = woc.SalesOrderLine ?? 0;
                rwo.WorkOrderNo = woc.WorkOrderNo;
                rwo.Company = woc.Company;
                rwo.ColorCode = woc.ColorCode;
                rwo.CycleTime = rwo1.CycleTime;
                rwo.NumberOfLine = trwo.NumberOfLine;

                rwo.DeliveryDate = rwo1.DeliveryDate;
                rwo.T3Date = trwo.T3Date;
                rwo.FCLExFtyDate = rwo1.FCLExFtyDate;
                rwo.LCLExFtyDate = trwo.ExFtyDate;
                //rwo.FirstQNStartDate = rwo1.FirstQNStartDate;
                //rwo.FirstStationStartDate = rwo1.FirstStationStartDate;
                //rwo.LastQNExFtyDate = rwo1.LastQNExFtyDate;

                foreach (TempFWChoose fwc in trwo.FWChooses)
                {
                    if (fwc.Chosen)
                    {
                        rwo.FactoryWorkStartDate = fwc.FWStartDate;
                        rwo.LineWorkStartDate = fwc.LWStartDate;
                        rwo.FirstStation = rwo.FirstStationStartDate = fwc.FirstStation;
                    }
                }
                if (trwo.AT3Date.HasValue)
                {
                    rwo.AjustT3Date = trwo.AT3Date;
                    rwo.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                }
                rwo.RWOCreateDate = System.DateTime.Now;
                rwo.WOReviseDate = System.DateTime.Now;
                rwo.AmendDate = System.DateTime.Now;
                rwo.Version = 0;
                rwo.WOVersion = woc.WorkOrder.Version;
                #endregion

                woc.RoundWorkOrders.Add(rwo);
                this.DataContext.SubmitChanges();

                #region RoundWorkOrder Detail --> SKU

                foreach (TempRWOSKU tsku in trwo.RWOSKUs)
                {
                    RoundWorkOrderDetail sku = new RoundWorkOrderDetail();
                    sku.RoundWorkOrder = rwo;
                    sku.CurrentDataContext = this.DataContext;

                    sku.Company = woc.Company;
                    sku.SalesOrderNo = woc.SalesOrderNo;
                    sku.SalesOrderLine = woc.SalesOrderLine ?? 0;
                    sku.WorkOrderNo = woc.WorkOrderNo;
                    sku.RoundNo = rwo.RoundNo;
                    sku.ColorCode = woc.ColorCode;

                    sku.Size = tsku.SizeCode;
                    sku.Cup = tsku.CupCode;
                    sku.CustSize = tsku.CustSize;

                    sku.BulkQty = tsku.BulkQty;
                    //sku.SampleQty = 0;

                    //-------------Start------------------------
                    //Xsj20160406:添加以下代碼實現SampleQty的分拆
                    sku.SampleQty = (tsku != null) ? tsku.SampleQty : 0;
                    //-------------End--------------------------

                    rwo.RoundWorkOrderDetails.Add(sku);
                }
                #endregion
                this.DataContext.SubmitChanges();

            }

        }

        /// <summary>
        /// Xsj:插入RWO的審核信息
        /// </summary>
        /// <param name="woc"></param>
        /// <param name="tempWOc"></param>
        private void AddRWOChooseFW(WorkOrderColor woc, TempWOc tempWOc)
        {
            // clear
            PH.RWO.BO.RWOSOPCDataContext dc = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
            foreach (RoundWorkOrder rwo in woc.RoundWorkOrders)
            {
                dc.RWOChooseFWs.DeleteAllOnSubmit(rwo.RWOChooseFWs);
                rwo.RWOChooseFWs.Clear();
            }
            dc.SubmitChanges();

            // add
            foreach (RoundWorkOrder rwo in woc.RoundWorkOrders)
            {
                TempSplitRWO trwo = tempWOc.SplitRWOs.Find(delegate(TempSplitRWO trwo1)
                {
                    return trwo1.Rwo == rwo.RoundNo;
                });
                if (trwo == null) continue;

                // add RWOChooseFW (options)
                foreach (TempFWChoose fwc in trwo.FWChooses)
                {
                    RWOChooseFW rOption = new RWOChooseFW();
                    rOption.RoundWorkOrder = rwo;
                    rOption.CurrentDataContext = this.DataContext;

                    rOption.Company = woc.Company;
                    rOption.SalesOrderNo = woc.SalesOrderNo;
                    rOption.WorkOrderNo = woc.WorkOrderNo;
                    rOption.ColorCode = woc.ColorCode;
                    rOption.RoundNo = trwo.Rwo;
                    rOption.Seq = fwc.Seq;

                    rOption.FirstStation = fwc.FirstStation;
                    rOption.FactoryWork = fwc.FWStartDate;
                    rOption.LineWork = fwc.LWStartDate;

                    rOption.Chosen = fwc.Chosen;
                    if (rOption.Chosen ?? false)
                    {
                        rOption.AgreedFWPerson = rOption.ChosenPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                        rOption.AgreedFWDate = rOption.ChosenDate = DateTime.Now;
                    }
                    rwo.RWOChooseFWs.Add(rOption);
                }
            }
            this.DataContext.SubmitChanges();
        }

        #endregion

        #region WO Report

        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //WorkOrderColor woc = this.BindingSource.Current as WorkOrderColor;
            //if (woc == null) return;

            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;
            WorkOrderColor woc = rwo.WorkOrderColor;
            if (woc == null) return;
            WorkOrder wo = woc.WorkOrder;
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
            //WorkOrderColor woc = this.BindingSource.Current as WorkOrderColor;
            //if (woc == null) return;
            RoundWorkOrder rwo = this.BindingSource.Current as RoundWorkOrder;
            if (rwo == null) return;
            WorkOrderColor woc = rwo.WorkOrderColor;
            if (woc == null) return;

            //RoundWorkOrder rwo = null;
            if (woc.RoundWorkOrders.Count == 1)
                rwo = woc.RoundWorkOrders[0];
            else
            {
                using (RWO.SelectRWOForm frm = new PH.RWO.UI.RWO.SelectRWOForm(woc))
                {
                    if (frm.ShowDialog() != DialogResult.OK) return;

                    rwo = frm.RWO;
                }
            }

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
