using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class StyleRationListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public StyleRationListForm()
        {
            InitializeComponent();
            this.AllowAddRow = true;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
            
        }


        protected override void AddNewObject()
        {
            base.AddNewObject();
            if (!DesignMode)
            {
                (this.BindingSource.Current as WOSKURatio).SytleNo = this.StyleNo;
            }
        }


        //public override void SaveData()
        //{
        //    this.DataContext.SubmitChanges();
        //    // PH.Platform.Misc.BO.ErrorMessages.ErrorMessageManager.ShowMessage("");
        //    // base.SaveData();
        //}


        //private void btnChooseSampleType_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    GetSampleType frm = new GetSampleType(this.BindingSource.Current as WorkOrderSKU);
        //    if (frm.ShowDialog() != DialogResult.OK)
        //        return;


        //    string sampleType = frm.SampleType;
        //    string workShop = frm.WorkShop;

        //    this.objListGridView.BeginUpdate();
        //    try
        //    {
        //        int dataRowCount = this.objListGridView.DataRowCount;
        //        for (int rHandle = 0; rHandle < dataRowCount; rHandle++)
        //        {
        //            this.objListGridView.SetMasterRowExpanded(rHandle, true);
        //        }
        //        foreach (DevExpress.XtraGrid.Views.Grid.GridView view in this.objListGridControl.Views)
        //        {
        //            if (view.LevelName == "WorkOrderSamples")
        //            {
        //                view.AddNewRow();
        //                view.FocusedRowHandle = DevExpress.XtraGrid.GridControl.NewItemRowHandle;
        //                view.SetRowCellValue(view.FocusedRowHandle, view.Columns["SampleType"], sampleType);
        //                view.SetRowCellValue(view.FocusedRowHandle, view.Columns["WorkShop"], workShop);
        //                view.RefreshEditor(true);
        //                view.RefreshData();
        //            }
        //        }
        //        this.objListGridView.CollapseAllDetails();
        //    }
        //    finally
        //    {
        //        this.objListGridView.EndUpdate();
        //    }
        //}


        //private void gvWorkOrderSamples_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        //{
        //    DevExpress.XtraGrid.Views.Grid.GridView view = this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView;
        //    DataRow dr = gvWorkOrderSamples.GetDataRow(e.RowHandle);
        //    WorkOrderSKU _SKU = this.BindingSource.Current as WorkOrderSKU;
        //}

        public string StyleNo
        {
            get;
            set;
        }

        
    }
}
