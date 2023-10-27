using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;

namespace PH.FabricInspection.UI
{
    public partial class SupplierBatchInfoListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private DateTime? fromDt = null;
        private DateTime? toDt = null;

        public List<P_GetSupplierBatchInfResult> BatchInfoList
        {
            get;
            set;
        }

        public string StrFromDate
        {
            get;
            set;
        }

        public string StrToDate
        {
            get;
            set;
        }


        public PH.FabricInspection.BO.FabricInspectionDataContext FisDc
        {
            get
            {
                if (this._FisDc == null)
                {
                    this._FisDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
                }
                return this._FisDc;
            }
        }
        private PH.FabricInspection.BO.FabricInspectionDataContext _FisDc;


        public SupplierBatchInfoListForm()
        {
            InitializeComponent();
            this.objListGridView.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(objListGridView_FocusedRowChanged);
            this.objListGridView.ValidatingEditor += new DevExpress.XtraEditors.Controls.BaseContainerValidateEditorEventHandler(objListGridView_ValidatingEditor);
            this.objListGridView.OptionsBehavior.Editable = true;
        }

        void objListGridView_ValidatingEditor(object sender, DevExpress.XtraEditors.Controls.BaseContainerValidateEditorEventArgs e)
        {
            if (e.Valid)
            {
                PH.FabricInspection.BO.P_GetSupplierBatchInfResult currBatchInfo = this.objListGridView.GetRow(this.objListGridView .FocusedRowHandle) as PH.FabricInspection.BO.P_GetSupplierBatchInfResult;
                currBatchInfo.isEdited = true;
            }
        }

        void objListGridView_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            PH.FabricInspection.BO.P_GetSupplierBatchInfResult currBatchInfo = this.objListGridView.GetRow(e.PrevFocusedRowHandle) as PH.FabricInspection.BO.P_GetSupplierBatchInfResult;
            if (!CheckRowInput(currBatchInfo))
            {
                this.objListGridView.FocusedRowHandle = e.PrevFocusedRowHandle;
            }
        }

        private bool CheckRowInput(PH.FabricInspection.BO.P_GetSupplierBatchInfResult currBatchInfo)
        {
            if (!this.objListGridView.OptionsBehavior.Editable || currBatchInfo == null)
            {
                return false;
            }
            if ((!currBatchInfo.RollQty.HasValue && currBatchInfo.TotalLength.HasValue) || (currBatchInfo.RollQty.HasValue && !currBatchInfo.TotalLength.HasValue))
            {
                string noteMsg = "[Roll Qty]和[Total Length]必須同為空，或同時不為空，請確認";
                MessageBox.Show(noteMsg, "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        public override void DataBind()
        {
            this.DataContext = this.FisDc;
            List<SupplierBatchInfo> supplierBatchInfos1 = this.FisDc.SupplierBatchInfos.ToList();
            this.StrFromDate = MasterTableUtil.getTodayBefore60String();
            this.StrToDate = DateTime.Now.ToString("yyMMdd");
            getSupplierBatchInfos(this.StrFromDate, this.StrToDate);

        }


        private void getSupplierBatchInfos(string FromDate, string ToDate)
        {
            var supplierBatchInfoResults = this.FisDc.P_GetSupplierBatchInf(FromDate, ToDate, PH.Platform.Common.SysParamHelper.Instance.UserID);
            this.BatchInfoList = supplierBatchInfoResults.ToList();
            this.BindingSource.DataSource = BatchInfoList; 
        }

        private void barBtn_GetListFromDate_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GetListFromDate getListFromDate = new GetListFromDate(fromDt, toDt);
            if (getListFromDate.ShowDialog() == DialogResult.OK)
            {
                fromDt = getListFromDate.FromDateTime;
                toDt = getListFromDate.EndDateTime;
                this.StrFromDate = getListFromDate.FromDateTimeStr;
                this.StrToDate = getListFromDate.EndDateTimeStr;
                getSupplierBatchInfos(this.StrFromDate, this.StrToDate);
            }
        }


        public override void OnClickSave()
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                this.objListGridView.CloseEditor();
                this.objListGridView.UpdateCurrentRow();

                this.BindingSource.EndEdit();

                List<P_GetSupplierBatchInfResult> BatchInfos_EidtedList = this.BatchInfoList.Where(p => p.isEdited).ToList();
                foreach (P_GetSupplierBatchInfResult Obj in BatchInfos_EidtedList)
                {

                    var bresult = this.FisDc.SupplierBatchInfos.Where(p => p.Supplich_Batch == Obj.Supplich_Batch && p.Item_No == Obj.Item_No && p.Stock_In_Date == Obj.Stock_In_Date).FirstOrDefault();
                    bresult.AlterByUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                    bresult.AlterOnDate = DateTime.Now;
                    bresult.RollQty = Obj.RollQty;
                    bresult.TotalLength = Obj.TotalLength;
                    bresult.Remark = Obj.Remark;

                    //bresult.CreateByUser = string.IsNullOrEmpty(bresult.CreateByUser)? PH.Platform.Common.SysParamHelper.Instance.UserID:"";
                    //bresult.CreateOnDate = bresult.CreateOnDate == null ? DateTime.Now : bresult.CreateOnDate; 
                }
                this.FisDc.SubmitChanges();
                //this.FisDc.Save(this.FisDc, this.BindingSource);
                //base.OnClickSave();






                //this.Cursor = Cursors.WaitCursor;
                //this.objListGridView.CloseEditor();
                //this.objListGridView.UpdateCurrentRow();


                //PH.FabricInspection.BO.P_GetSupplierBatchInfResult currBatchInfo = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as PH.FabricInspection.BO.P_GetSupplierBatchInfResult;
               
              
                //if (!CheckRowInput(currBatchInfo))
                //{
                //    this.Cursor = Cursors.WaitCursor;
                //    return;
                //}

                //this.BindingSource.EndEdit();
                ////表格中被修改的記錄集
                //List<P_GetSupplierBatchInfResult> BatchInfos_EidtedList = this.BatchInfoList.Where(p => p.isEdited).ToList();
                ////數據庫中記錄的已被維護的記錄集
                //var suppBatchInfoList = this.FisDc.SupplierBatchInfos.Where(p => Convert.ToInt32((p.Stock_In_Date == null || p.Stock_In_Date.Trim() == "") ? "0" : p.Stock_In_Date) > Convert.ToInt32((this.StrFromDate == null || this.StrFromDate.Trim() == "") ? "0" : this.StrFromDate)
                //    && Convert.ToInt32((p.Stock_In_Date == null || p.Stock_In_Date.Trim() == "") ? "0" : p.Stock_In_Date) < Convert.ToInt32((this.StrToDate == null || this.StrToDate.Trim() == "") ? "0" : StrToDate));
                ////分析出需要Upade的記錄集
                //List<P_GetSupplierBatchInfResult> updateBatchInfoList = new List<P_GetSupplierBatchInfResult>();
                //foreach (P_GetSupplierBatchInfResult item in BatchInfos_EidtedList)
                //{
                //    var bresult = suppBatchInfoList.Where(p => p.Supplich_Batch == item.Supplich_Batch && p.Item_No == item.Item_No && p.Stock_In_Date == item.Stock_In_Date ).FirstOrDefault();
                //    if (bresult != null)
                //    {
                //        bresult.RollQty = item.RollQty;
                //        bresult.TotalLength = item.TotalLength;
                //        bresult.Remark = item.Remark;
                //        bresult.AlterByUser = item.AlterByUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                //        bresult.AlterOnDate = item.AlterOnDate = DateTime.Now;
                //        updateBatchInfoList.Add(item);
                //    }
                //}
                ////分析出需要Insert的記錄集
                //List<P_GetSupplierBatchInfResult> insertBatchInfoList = BatchInfos_EidtedList.Except(updateBatchInfoList).ToList();
                //foreach (P_GetSupplierBatchInfResult item in insertBatchInfoList)
                //{
                //    PH.FabricInspection.BO.SupplierBatchInfo newSuppBatchInfo = new SupplierBatchInfo();
                //    newSuppBatchInfo.Supplich_Batch = item.Supplich_Batch;
                //    newSuppBatchInfo.Item_No = item.Item_No;
                //    newSuppBatchInfo.Item_Desc = item.Item_Desc;
                //    newSuppBatchInfo.RollQty = item.RollQty;
                //    newSuppBatchInfo.TotalLength = item.TotalLength;
                //    newSuppBatchInfo.Stock_In_Date = item.Stock_In_Date;
                //    newSuppBatchInfo.Remark = item.Remark;
                //    newSuppBatchInfo.CreateByUser = item.CreateByUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                //    newSuppBatchInfo.CreateOnDate = item.CreateOnDate = DateTime.Now;
                //    this.FisDc.SupplierBatchInfos.InsertOnSubmit(newSuppBatchInfo);
                //}
                //this.FisDc.SubmitChanges();
                ////清除IsEdited狀態
                //foreach (P_GetSupplierBatchInfResult item in BatchInfos_EidtedList)
                //{
                //    item.isEdited = false;
                //}

                this.objListGridControl.RefreshDataSource();
                MessageBox.Show("保存Supplier Batch信息成功!", "保存成功");
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存Supplier Batch信息失敗!錯誤工信息:\r\n" + ex.ToString(), "保存失敗提示");

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<P_GetSupplierBatchInfResult> lists = objListGridView.FilteredList().Cast<P_GetSupplierBatchInfResult>();

                switch (item.FieldName)
                {
                    case "Supplich_Batch":
                        e.TotalValue = lists.Select(p => p.Supplich_Batch).Distinct().Count();
                        break;

                    case "Item_No":
                        e.TotalValue = lists.Select(p => p.Item_No).Distinct().Count();
                        break;

                    case "CreateByUser":
                        e.TotalValue = lists.Select(p => p.CreateByUser).Distinct().Count();
                        break;
                }

            }

        }
    }
}
