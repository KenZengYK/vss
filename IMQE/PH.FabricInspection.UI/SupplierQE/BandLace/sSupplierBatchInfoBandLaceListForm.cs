using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using PH.Platform.Common;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;

namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    public partial class sSupplierBatchInfoBandLaceListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public sSupplierBatchInfoBandLaceListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            string SqlStr = string.Format("exec sp_GetBatchInfoFromBandLaceAudit '{0}'", SysParamHelper.Instance.UserID);
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).ExecuteQuery<SupplierBatchInfoBandLace>(SqlStr);

            this.objListGridView.OptionsBehavior.Editable = true;
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
        }

        private void objListGridView_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.objListGridView.CloseEditor();
            SupplierBatchInfoBandLace obj = this.BindingSource.Current as SupplierBatchInfoBandLace;
            obj.AlterByUser = SysParamHelper.Instance.UserID;
            obj.AlterOnDate = DateTime.Now;
            this.BindingSource.EndEdit();

            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            db.SubmitChanges();

            //更新卷数到Band Lace检查表中
            string SqlStr = string.Format("exec sp_UpdateBandLaceInfo '{0}', '{1}', '{2}', '{3}', {4}, {5}",
                obj.Stock_In_Date, obj.Item_No, obj.ColorCode, obj.Supplich_Batch, (obj.RollQty ?? 0), (obj.TotalLength ?? 0));
            db.ExecuteCommand(SqlStr);


            //var lists = db.BandLaceHeaders.Where(p => p.BatchNo == obj.Supplich_Batch && p.IDCreateDate == obj.Stock_In_Date && p.ItemCode == obj.Item_No);
            //foreach (var o in lists)
            //{
            //    o.RollQtyByLot = obj.RollQty;
            //}

            //db.SubmitChanges();

        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<SupplierBatchInfoBandLace> lists = objListGridView.FilteredList().Cast<SupplierBatchInfoBandLace>();

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
