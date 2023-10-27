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
using PH.RWO.UI.WO;
using DevExpress.XtraBars;

namespace PH.RWO.UI
{
    public partial class WorkOrderColorDetailForm : ParentChildForm
    {
        public WorkOrderColorDetailForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            //MessageBox.Show((this.BindingSource.Current as WorkOrderColor).ColorCode);
            this.workOrderColorSKUListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderColor).WorkOrderSKUs;
            this.roundWorkOrderListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderColor).RoundWorkOrders;
            this.roundWorkOrderListForm1.EditorTypeName = typeof(RoundWorkOrderDetailForm).FullName;
            this.workOrderColorSKUListForm1.EditorTypeName = typeof(WorkOrderColorSKUDetailForm).FullName;
            base.DataBind();

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnEdit.Visibility = BarItemVisibility.Never;


            ////由David加入 20200-08-25
            if (this.ListForm.PrevForm is WorkOrderIncompleteListForm)
            {
                string param = (this.ListForm.PrevForm as WorkOrderIncompleteListForm).Param;
                if (param == "BulkSampleDespatch")
                {
                    this.barBtnEdit.Visibility = BarItemVisibility.Always;
                    xtraTabPage1.PageVisible = false;
                }

                //    if (param == "BulkSampleFWSdd")
                //    {
                //        splitterControl1.Dock = DockStyle.Bottom;
                //        splitterControl1.Visible = false;
                //        splitterControl1.Height = 0;

                //        panelControl1.Dock = DockStyle.None;
                //        panelControl1.Visible = false;

                //        headerTitleBar.Dock = DockStyle.Fill;
                //    }
            }
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            WorkOrderColor woc = (this.BindingSource.Current as WorkOrderColor);
            if (woc == null)
                return;
            this.workOrderColorSKUListForm1.BindSampleType(woc.WorkOrder.Project.CustomerCode, woc.WorkOrder.Project.Factory);
        }

        public void DataRefresh()
        {
            try
            {
                this.BindingSource.ResetCurrentItem();
                ((RWOSOPCDataContext)this.DataContext).Refresh(System.Data.Linq.RefreshMode.KeepCurrentValues, this.BindingSource.Current);
                this.DataContext.Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, (this.BindingSource.Current as WorkOrderColor).RoundWorkOrders);
                foreach (RoundWorkOrder r in (this.BindingSource.Current as WorkOrderColor).RoundWorkOrders)
                {
                    this.DataContext.Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, r.RoundWorkOrderDetails);
                }
            }
            catch { }
        }


        public void SaveNewRound(int RealRound)
        {
            this.roundWorkOrderListForm1.SaveNewRound(RealRound);
        }


        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Global.MaskAllBaseEdit(this.headerTitleBar);

            //if (this.IsNew || this.IsEditting)
            //{
            //    this.edtFWOpt2.Properties.ReadOnly = false;
            //    this.edtFWOpt4.Properties.ReadOnly = false;
            //}
        }

        protected override void SaveCurrent()
        {
            base.SaveCurrent();
            WorkOrderColor obj = this.BindingSource.Current as WorkOrderColor ;
            obj.WorkOrder.ReCalulateSampleQty();
        }

    }
}
