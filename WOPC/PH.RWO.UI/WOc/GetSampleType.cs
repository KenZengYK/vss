using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using System.Data.Linq;
using PH.Platform.BO;


namespace PH.RWO.UI
{
    public partial class GetSampleType : Form
    {
        public GetSampleType()
        {
            InitializeComponent();
        }

        public GetSampleType(WorkOrderSKU woSKU)
            : base()
        {
            InitializeComponent();
            this._woSKU = woSKU;
            //_woSKU = (_woSKU.BindingSource.Current as WorkOrderSKU);
            BindSampleType(_woSKU.WorkOrderColor.WorkOrder.Project.CustomerCode, _woSKU.WorkOrderColor.WorkOrder.Project.Factory);
        }
        public string SampleType
        {
            get;
            set;
        }
        public string WorkShop
        {
            get;
            set;
        }
        private WorkOrderSKU _woSKU;
        //private WorkOrderSKU _woSKU;
        public void BindSampleType(string customer, string factory)
        {
            ISingleResult<GetCustomerSampleOrderSortResult> sampleOrderSortList = (PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>()).GetCustomerSampleOrderSort(customer, factory);
            this.cbSampleOrderType.Properties.Items.Clear();
            foreach (GetCustomerSampleOrderSortResult item in sampleOrderSortList)
            {
                this.cbSampleOrderType.Properties.Items.Add(item);
            }
        }

        
        private void btnOK_Click(object sender, EventArgs e)
        {
            GetCustomerSampleOrderSortResult r = this.cbSampleOrderType.SelectedItem as GetCustomerSampleOrderSortResult;
            if (r == null)
            {
                MessageBox.Show("Please select a sample type!");
                return;
            }
            this.SampleType = r.SampleOrderType;
            this.WorkShop = r.WorkShop;

            this.DialogResult = DialogResult.OK;

            //string[] str = this.cbSampleOrderType.SelectedItem.ToString().Split(':');
            //sample.SampleType = str[0];
            //sample.WorkShop = str[1];
/*
            if (this.cbSampleOrderType.SelectedItem != null)
            {
                string[] str = this.cbSampleOrderType.SelectedItem.ToString().Split(':');
                //sample.SampleType = str[0];
                //sample.WorkShop = str[1];

                foreach (WorkOrderSKU sku in _woSKU.WorkOrderColor.WorkOrderSKUs)
                {
                    //sku.AddNew(woSKU.DataContext, woSKU.BindingSource);

                    WorkOrderSample sample = new WorkOrderSample();
                    sample.SalesOrderNo = sku.SalesOrderNo;
                    sample.ColorCode = sku.ColorCode;
                    sample.Company = sku.Company;
                    sample.Cup = sku.Cup;
                    sample.Size = sku.Size;
                    sample.WorkOrderNo = sku.WorkOrderNo;
                    sample.SampleType = str[0];
                    sample.WorkShop = str[1];
                    //sample.SampleID = System.Guid.NewGuid();
                    sample.WorkOrderSKU = sku;
                    sku.WorkOrderSamples.Add(sample);
                }
                //woSKU.gvWorkOrderSamples.FocusedRowHandle = DevExpress.XtraGrid.GridControl.NewItemRowHandle;
                //woSKU.gvWorkOrderSamples.SetRowCellValue(woSKU.gvWorkOrderSamples.FocusedRowHandle, woSKU.gvWorkOrderSamples.Columns["SampleType"], str[0]);
                //woSKU.gvWorkOrderSamples.SetRowCellValue(woSKU.gvWorkOrderSamples.FocusedRowHandle, woSKU.gvWorkOrderSamples.Columns["WorkShop"], str[1]);
                woSKU.BindingSource.DataSource = null;
                woSKU.BindingSource.ResetBindings(true);
                woSKU.BindingSource.DataSource = _woSKU.WorkOrderColor.WorkOrderSKUs;
                woSKU.BindingSource.ResetBindings(true);
                woSKU.objListGridControl.RefreshDataSource();
                //woSKU.objListGridControl.RefreshDataSource();
                foreach (DevExpress.XtraGrid.Views.Grid.GridView view in this.woSKU.objListGridControl.Views)
                {
                    if (view.LevelName == "WorkOrderSamples")
                    {
                        //view.AddNewRow();
                        //view.FocusedRowHandle = DevExpress.XtraGrid.GridControl.NewItemRowHandle;
                        //view.SetRowCellValue(view.FocusedRowHandle, view.Columns["SampleType"], str[0]);
                        //view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], str[1]);
                        view.RefreshEditor(true);
                        view.RefreshData();
                    }
                }
            }
            this.Close();
            //this._woSKU.WorkOrderSamples.Add(sample);
            //woSKU.gvWorkOrderSamples.FocusedRowHandle = DevExpress.XtraGrid.GridControl.NewItemRowHandle;
            //// woSKU.gvWorkOrderSamples.SetRowCellValue(woSKU.gvWorkOrderSamples.FocusedRowHandle,  woSKU.gvWorkOrderSamples.Columns["SampleType"], DateTime.Today);

            //foreach (DevExpress.XtraGrid.Views.Grid.GridView view in this.woSKU.objListGridControl.ViewCollection)
            //{
            //    view.FocusedRowHandle = DevExpress.XtraGrid.GridControl.NewItemRowHandle;
            //    view.SetRowCellValue(view.FocusedRowHandle, view.Columns["SampleType"], str[0]);
            //    view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], str[1]);
            //}
            //this.Close();
 */
        }
        

    }
}
