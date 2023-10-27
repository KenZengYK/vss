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
using PH.Platform.UI.CS.DataQuery;

namespace PH.RWO.UI
{
    public partial class WorkOrderSampleQueryListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public WorkOrderSampleQueryListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(RoundWorkOrderDetailsDetailForm).FullName;
            this.AllowGridEdit = false;

        }
        RWOSOPCDataContext _context;
        public override void DataBind()
        {
            base.DataBind();
            _context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            this.DataContext = _context;
            //this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            //if (!DesignMode)
            //{
            //    BindControl();
            //}
            //this.RowChangeAutoSave = false;

            CreateQuery();
        }
        private void CreateQuery()
        {
            DataQueryParameter QueryParameter = new DataQueryParameter();
            QueryParameter.BoType = typeof(WorkOrderSample);           //被查詢BO的Class Type
            QueryParameter.DataContext = this.DataContext;     //數據查詢使用的DataContext
            QueryParameter.View = this.objListGridView;             //顯示數據所用的ColumnView
            //QueryParameter.FixedWherePart = " Status<>'C' ";
            QueryParameter.WarnRecord = 200;
            this.StartEnquiry(QueryParameter);
        }
        private void BindControl()
        {
            //var addressto = new DictionaryList().GetDataDictionary("PH.WO.AddressTo");
            //this.ricbAddressTo.Properties.Items.Clear();
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in addressto)
            //{
            //    this.ricbAddressTo.Properties.Items.Add(item.DataName);
            //}
        }

        //private IList<GetCustomerSampleOrderSortResult> sampleOrderSortList;
        public void BindSampleType(string customer, string factory)
        {
            //sampleOrderSortList = (this.DataContext as PH.RWO.BO.RWOSOPCDataContext).GetCustomerSampleOrderSort(customer, factory).ToList(); 
            //this.cbSampleOrderType.Properties.Items.Clear();
            //foreach (GetCustomerSampleOrderSortResult item in sampleOrderSortList)
            //{
            //    this.cbSampleOrderType.Properties.Items.Add(item.SampleOrderType);
            //}


            //this.cbSampleOrderType.Properties.DataSource = sampleOrderSortList;
            //this.cbSampleOrderType.Properties.DisplayMember = "SampleOrderType";
            //this.cbSampleOrderType.Properties.ValueMember = "SampleOrderType";
        }

        private void cbSampleOrderType_EditValueChanged(object sender, EventArgs e)
        {
            //if (sampleOrderSortList == null)
            //{
            //    return;
            //}
            //DevExpress.XtraGrid.Views.Grid.GridView view = this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView;
            //DataRow dr = this.objListGridView.GetDataRow(view.FocusedRowHandle);
            //string _sType = ((DevExpress.XtraEditors.ComboBoxEdit)sender).EditValue.ToString();
            //GetCustomerSampleOrderSortResult sType = sampleOrderSortList.Where(p => p.SampleOrderType == _sType).FirstOrDefault();
            //view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], sType.WorkShop);
        }
        protected override void OnClickFind()
        {
            //base.OnClickFind();
            PH.RWO.UI.WOc.SampleQueryForm frm = new PH.RWO.UI.WOc.SampleQueryForm();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                GetSampleData(frm.Customer, frm.SO, frm.ProjectNo, frm.WO);
            }
        }
        IEnumerable<WorkOrderSample> _woSamples;
        private void GetSampleData(string customer, string so, string project, string wo)
        {
            try
            {
                _context.CommandTimeout = 1000;
                if (_context.Connection.State == ConnectionState.Closed)
                {
                    _context.Connection.Open();
                }
                //context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

                this.DataContext = _context;


                _woSamples = from c in _context.WorkOrderSamples
                             where c.Company == "P1" 
                                 && (string.IsNullOrEmpty(so) || c.SalesOrderNo == so)
                                 && (string.IsNullOrEmpty(project) || c.WorkOrderSKU.WorkOrderColor.WorkOrder.Project.ProjectNo == project)
                                 && (string.IsNullOrEmpty(customer) || c.WorkOrderSKU.WorkOrderColor.WorkOrder.Project.Customer == customer)
                                 // && (string.IsNullOrEmpty(wo) || c.WorkOrderNo == wo)
                                 && (string.IsNullOrEmpty(wo) || wo.IndexOf(c.WorkOrderNo) != -1)

                             orderby c.SalesOrderNo, c.WorkOrderNo
                             select c;

                this.BindingSource.DataSource = _woSamples;


            }
            finally
            {
                //ReleaseWaitDialog();
            }
        }

        private void btnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BackEnd.WOSampleReport rpt = new PH.RWO.BackEnd.WOSampleReport();
            rpt.DataSource = this._woSamples;
            rpt.ShowPreviewDialog();
        }
    }
}