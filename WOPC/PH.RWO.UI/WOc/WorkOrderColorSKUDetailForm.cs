using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using PH.RWO.BO;
using PH.Platform.UI.CS.UI2;
using DevExpress.XtraBars;

namespace PH.RWO.UI
{
    public partial class WorkOrderColorSKUDetailForm : ParentChildForm
    {
        public WorkOrderColorSKUDetailForm()
        {
            InitializeComponent();

        }

        public override void DataBind()
        {
            //this.workOrderSampleListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderSKU).WorkOrderSKUs;
            this.workOrderSampleListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderSKU).WorkOrderSamples;
            //this.workOrderSampleListForm1.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
            base.DataBind();

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnEdit.Visibility = BarItemVisibility.Never;

        }


        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            WorkOrderSKU woc = (this.BindingSource.Current as WorkOrderSKU);
            if (woc == null)
                return;
            this.workOrderSampleListForm1.BindSampleType(woc.WorkOrderColor.WorkOrder.Project.CustomerCode, woc.WorkOrderColor.WorkOrder.Project.Factory);
        }

        protected override void SaveCurrent()
        {
            base.SaveCurrent();
            WorkOrderSKU obj = this.BindingSource.Current as WorkOrderSKU;
            obj.WorkOrderColor.WorkOrder.ReCalulateSampleQty();
        }
    }
}
