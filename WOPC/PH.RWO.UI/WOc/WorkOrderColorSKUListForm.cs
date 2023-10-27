using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;
using DevExpress.XtraGrid.Views.Grid;

using PH.RWO.BO;

using PH.Platform.UI.CS.PivotGrid;
using PH.Platform.BO.PivotTable;
using PH.Platform.BO;
using DevExpress.XtraBars;
using PH.Platform.Misc.BO;

namespace PH.RWO.UI
{
    public partial class WorkOrderColorSKUListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public WorkOrderColorSKUListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(WorkOrderColorSKUDetailForm).FullName;
            //this.AllowGridEdit = false;
        }

        public override void DataBind()
        {
            base.DataBind();
            //this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            if (!DesignMode)
            {
                BindControl();
            }
            this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
            this.AllowAddRow = true;

            PHPlatformMiscDataContext PlatformMiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var SampleApprovalResultList = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.RWO.SampleApprovalResult").Select(p => p.DataCode);
            repositoryItemComboBox_AppvStatus.Items.Clear();
            repositoryItemComboBox_AppvStatus.Items.AddRange(SampleApprovalResultList.ToList());
        }

        private void BindControl()
        {
            //var aa = new DicList().GetDataDictionary("PH.WO.WorkShop");
            //this.cbWorkShop.Properties.Items.Clear();
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in aa)
            //{
            //    this.cbWorkShop.Properties.Items.Add(item.DataName);
            //}
            //this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            //this.AllowGridEdit = true;

            var addressto = (new DictionaryList()).GetDataDictionary("PH.WO.AddressTo");
            this.ricbAddressTo.Properties.Items.Clear();
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in addressto)
            {
                this.ricbAddressTo.Properties.Items.Add(item.DataName);
            }
        }

        private void btnChooseSampleType_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GetSampleType frm = new GetSampleType(this.BindingSource.Current as WorkOrderSKU);
            if (frm.ShowDialog() != DialogResult.OK)
                return;


            string sampleType = frm.SampleType;
            string workShop = frm.WorkShop;

            this.objListGridView.BeginUpdate();
            try
            {
                int dataRowCount = this.objListGridView.DataRowCount;
                for (int rHandle = 0; rHandle < dataRowCount; rHandle++)
                {
                    this.objListGridView.SetMasterRowExpanded(rHandle, true);
                }
                foreach (DevExpress.XtraGrid.Views.Grid.GridView view in this.objListGridControl.Views)
                {
                    if (view.LevelName == "WorkOrderSamples")
                    {
                        view.AddNewRow();
                        view.FocusedRowHandle = DevExpress.XtraGrid.GridControl.NewItemRowHandle;
                        view.SetRowCellValue(view.FocusedRowHandle, view.Columns["SampleType"], sampleType);
                        view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], workShop);
                        view.RefreshEditor(true);
                        view.RefreshData();
                    }
                }
                this.objListGridView.CollapseAllDetails();
            }
            finally
            {
                this.objListGridView.EndUpdate();
            }
        }


        private void gvWorkOrderSamples_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView;
            DataRow dr = gvWorkOrderSamples.GetDataRow(e.RowHandle);
            WorkOrderSKU _SKU = this.BindingSource.Current as WorkOrderSKU;
        }


        private IList<GetCustomerSampleOrderSortResult> sampleOrderSortList;
        public void BindSampleType(string customer, string factory)
        {
            sampleOrderSortList = (this.DataContext as PH.RWO.BO.RWOSOPCDataContext).GetCustomerSampleOrderSort(customer, factory).ToList();
            this.cbSampleOrderType.Properties.Items.Clear();
            foreach (GetCustomerSampleOrderSortResult item in sampleOrderSortList)
            {
                this.cbSampleOrderType.Properties.Items.Add(item.SampleOrderType);
            }
        }

        private void cbSampleOrderType_EditValueChanged(object sender, EventArgs e)
        {
            if (sampleOrderSortList == null)
            {
                return;
            }

            DevExpress.XtraGrid.Views.Grid.GridView view = this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView;
            DataRow dr = gvWorkOrderSamples.GetDataRow(view.FocusedRowHandle);
            string _sType = ((DevExpress.XtraEditors.ComboBoxEdit)sender).EditValue.ToString();
            GetCustomerSampleOrderSortResult sType = sampleOrderSortList.Where(p => p.SampleOrderType == _sType).FirstOrDefault();
            view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], sType.WorkShop);
        }

        private void objListGridControl_FocusedViewChanged(object sender, DevExpress.XtraGrid.ViewFocusEventArgs e)
        {
            if (e.View == null) return;

            this.barBtnDel.Visibility = (e.View.Name == "gvWorkOrderSamples") ? BarItemVisibility.Always : BarItemVisibility.Never;

        }


    }
}