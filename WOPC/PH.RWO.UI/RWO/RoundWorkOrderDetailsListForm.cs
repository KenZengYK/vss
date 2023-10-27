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
using PH.Platform.BO.PivotTable;
using PH.Platform.BO;

namespace PH.RWO.UI
{
    public partial class RoundWorkOrderDetailsListForm :PH.Platform.UI.CS.UI2.ListForm
    {

        public RoundWorkOrderDetailsListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(RoundWorkOrderDetailsDetailForm).FullName;
            this.IsShowPivotTable = true;
            this.AllowGridEdit = true;
        }
        
        public override void DataBind()
        {
            base.DataBind();
        }
        
        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Count > 0)
            {
                MessageBox.Show("Cann't import data when roundworkorder SKU has data");
                return;
            }
            WorkOrderColor WOc = ((this.ParentForm as PH.Platform.UI.CS.UI2.ParentChildForm).BindingSource.Current as RoundWorkOrder).WorkOrderColor;
            foreach (WorkOrderSKU  WOSku in WOc.WorkOrderSKUs)
            {
                this.BindingSource.Add(clone(WOSku));
            }
        }


        private RoundWorkOrderDetail clone(WorkOrderSKU t)
        {
            RoundWorkOrderDetail t1 = new RoundWorkOrderDetail();
            t1.Company = t.Company;
            t1.ColorCode = t.ColorCode;
            t1.Cup = t.Cup;
            t1.Size = t.Size;
            t1.SalesOrderLine = t.SalesOrderLine;
            //t1.CustStyle = t.CustStyle;
            //t1.Ratio = t.Ratio;
            t1.RoundNo = 1;
            //t1.RNo = 1;
            t1.BulkQty = t.BulkQty;
            t1.SampleQty = t.SampleQty;
            t1.WorkOrderNo = t.WorkOrderNo;
            t1.SalesOrderNo = t.SalesOrderNo;
            return t1;
            //return null;
        }



        void PivotTableDemo_Load(object sender, EventArgs e)
        {
            this.EditorTypeName = typeof(RoundWorkOrderDetailsDetailForm).FullName;
            //    LoadData();

            //顯示PivotGrid之前需要做的事情：比如控制排序等
            this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(PivotTableDemo_OnBeforeShowPivotGrid);

            // PivotGrid切換到PivotTableDemo後，需要進行的動作：
            // 比如數據刷新等
            this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(PivotTableDemo_OnAfterShowPivotGrid);
        }


        void PivotTableDemo_OnAfterShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            LoadData();
        }



        private void LoadData()
        {
            //this.DataSource = (this.BindingSource.DataSource as RoundWorkOrder).RoundWorkOrderDetails;
            if (this.BindingSource.DataSource == null)
            {
                return;
            }
            try
            {
                this.SourceList = (this.BindingSource.DataSource as EntitySet<RoundWorkOrderDetail>).ToList();
                this.objListGridView.RefreshData();
                //if ((this.BindingSource.DataSource as RoundWorkOrder).RoundWorkOrderDetails == null)
                //{
                //    return;
                //}

                //if ((this.BindingSource.DataSource as RoundWorkOrder).RoundWorkOrderDetails.Count > 0)
                //{
                //    this.SourceList = (this.BindingSource.DataSource as RoundWorkOrder).RoundWorkOrderDetails.ToList();
                //    this.objListGridView.RefreshData();
                //}
            }
            catch
            {
            }

        }

        void PivotTableDemo_OnBeforeShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {

            //在這裏控制L列的顯示
            aPovitGrid.SetColumnVisible("L1", false);
            aPovitGrid.SetColumnVisible("L2", false);
            aPovitGrid.SetColumnVisible("L3", false);
            aPovitGrid.SetColumnVisible("L4", false);
            aPovitGrid.SetColumnVisible("L5", true);
            aPovitGrid.SetColumnVisible("L6", true);
            aPovitGrid.SetColumnVisible("L7", true);
            aPovitGrid.SetColumnVisible("L8", true);
            aPovitGrid.SetColumnVisible("L9", true);
            aPovitGrid.SetColumnVisible("L10", true);


            //在這裏設置L6列的寬度


            //在這裏進行R列排序

            var sortQuery = (this.BindingSource.DataSource as EntitySet<RoundWorkOrderDetail>).ToList().OrderBy(p => p.SizeOrder);
            List<RoundWorkOrderDetail> sortList = sortQuery.ToList();
            aPovitGrid.SortRField<RoundWorkOrderDetail>(sortList, "SizeOrder", "Size", "Size", true);

            //在這裏進行L列排序            
            var sortCupQuery = (this.BindingSource.DataSource as EntitySet<RoundWorkOrderDetail>).ToList().OrderBy(p => p.CupOrder);
            List<RoundWorkOrderDetail> cupList = sortCupQuery.ToList();
            //??
            aPovitGrid.Sort<RoundWorkOrderDetail>(cupList, "CupOrder", "Cup", new string[] { "ColorCode", "Cup" }, "Cup", new bool[] { true, true });

            //控制新增PivotItem
            aPovitGrid.AfterNewPivotItem += new PivotTableGrid.AfterNewPivotItemHanlder(aPovitGrid_AfterNewPivotItem);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="aNewItem"></param>
        void aPovitGrid_AfterNewPivotItem(PivotContentItem aNewItem)
        {
            RoundWorkOrderDetail rwod = (this.BindingSource.Current as RoundWorkOrderDetail);
            if ((this.BindingSource.Current as RoundWorkOrderDetail) == null)
            {
                return;
            }
            aNewItem.L1 = rwod.RoundWorkOrder.Company;
            aNewItem.L2 = rwod.RoundWorkOrder.SalesOrderNo;
            aNewItem.L3 = rwod.RoundWorkOrder.SalesOrderLine;
            aNewItem.L4 = rwod.RoundWorkOrder.WorkOrderNo;
            aNewItem.L5 = rwod.RoundWorkOrder.ColorCode;
            aNewItem.L6 = rwod.RoundWorkOrder.RoundNo;

        }

        /// <summary>
        /// 生成PivotTable的參數
        /// </summary>
        /// <returns>生成PivotTable的參數</returns>
        public override PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass CreatePivotTableParameters()
        {
            
            LoadData();

            //顯示PivotGrid之前需要做的事情：比如控制排序等
            //this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(PivotTableDemo_OnBeforeShowPivotGrid);

            //PivotGrid切換到PivotTableDemo後，需要進行的動作：
            //比如數據刷新等
            //this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(PivotTableDemo_OnAfterShowPivotGrid);


            PivotTableForm.PivotParamClass p = new PivotTableForm.PivotParamClass();
            p.BOType = typeof(RoundWorkOrderDetail);
            p.CurrencyManager = (this.objListGridView.DataSource as BindingSource).CurrencyManager;
            p.Header1_Label = "Size";
            p.Header2_Label = "Total";
            p.LFields = new string[]{
                "Company",
                "SalesOrderNo",
                "SalesOrderLine",
                "WorkOrderNo",
                "ColorCode",
                "RoundNo",
                "Cup",
                "CustStyle",
                "SampleQty",
                "Ratio"
            };
            p.LLabels = new string[]{
                "Company",
                "SalesOrderNo",
                "SalesOrderLine",
                "WorkOrderNo",
                "ColorCode",
                "RoundNo",
                "Cup",
                "CustStyle",
                "SampleQty",
                "Ratio"
            };

            p.RFields = new string[]{
                "Size"
            };

            p.RSubTotalLabels = new string[] { "碼" };

            p.RValueField = "BulkQty";

            p.SourceList = SourceList;
            return p;
        }

        IList SourceList = null;

        //protected override void OnClickOpen()
        //{
        //    base.OnClickOpen();
        //}
        private void btnApplyRatio_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            (this.ParentForm as RoundWorkOrderDetailForm).InitStyleRatio(true);
        }
    }
}
