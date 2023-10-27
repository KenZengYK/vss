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

using PH.RWO.BO;

using PH.Platform.UI.CS.PivotGrid;
//using PH.Platform.BO.PivotTable;
using PH.Platform.BO;
using PH.Platform.Misc.BO;

namespace PH.RWO.UI
{
    public partial class WorkOrderSampleListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public WorkOrderSampleListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(RoundWorkOrderDetailsDetailForm).FullName;
            this.AllowGridEdit = true;

        }

        public override void DataBind()
        {
            base.DataBind();
            this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            if (!DesignMode)
            {
                BindControl();
            }

            this.RowChangeAutoSave = false;

            PHPlatformMiscDataContext PlatformMiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var SampleApprovalResultList = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.RWO.SampleApprovalResult").Select(p => p.DataCode);
            repositoryItemComboBox_AppvStatus.Items.Clear();
            repositoryItemComboBox_AppvStatus.Items.AddRange(SampleApprovalResultList.ToList());
        }

        private void BindControl()
        {
            var addressto = new DictionaryList().GetDataDictionary("PH.WO.AddressTo");
            this.ricbAddressTo.Properties.Items.Clear();
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in addressto)
            {
                this.ricbAddressTo.Properties.Items.Add(item.DataName);
            }
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
            //this.cbSampleOrderType.Properties.DataSource = sampleOrderSortList;
            //this.cbSampleOrderType.Properties.DisplayMember = "SampleOrderType";
            //this.cbSampleOrderType.Properties.ValueMember = "SampleOrderType";
        }

        private void cbSampleOrderType_EditValueChanged(object sender, EventArgs e)
        {
            if (sampleOrderSortList == null)
            {
                return;
            }
            DevExpress.XtraGrid.Views.Grid.GridView view = this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView;
            DataRow dr = this.objListGridView.GetDataRow(view.FocusedRowHandle);
            string _sType = ((DevExpress.XtraEditors.ComboBoxEdit)sender).EditValue.ToString();
            GetCustomerSampleOrderSortResult sType = sampleOrderSortList.Where(p => p.SampleOrderType == _sType).FirstOrDefault();
            view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], sType.WorkShop);
        }
    }
}