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
    public partial class RoundWorkOrderIIDetailsListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public RoundWorkOrderIIDetailsListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(RoundWorkOrderIIDetailsDetailForm).FullName;
            //this.IsShowPivotTable = true;
            //this.AllowGridEdit = true;
        }

        public override void DataBind()
        {
            base.DataBind();
            if (this.ParentForm is RoundWorkOrderIIDetailForm)
            {
                RoundWorkOrderII rwo2 = (this.ParentForm as RoundWorkOrderIIDetailForm).BindingSource.Current as RoundWorkOrderII;
                this.AllowGridEdit = !(rwo2.RoundWorkOrder.AppliedToALL ?? false);
            }
            else
                this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = true;
            this.EditorTypeName = "";
        }
        protected override void OnLoad(object sender, EventArgs e)
        {
            base.OnLoad(sender, e);

            if (this.ParentForm is RoundWorkOrderIIDetailForm)
            {
                RoundWorkOrderII rwo2 = (this.ParentForm as RoundWorkOrderIIDetailForm).BindingSource.Current as RoundWorkOrderII;
                this.AllowGridEdit = !(rwo2.RoundWorkOrder.AppliedToALL ?? false);
            }
            else
                this.AllowGridEdit = true;

        }
        void PivotTableDemo_Load(object sender, EventArgs e)
        {
            //this.EditorTypeName = typeof(RoundWorkOrderIIDetailsDetailForm).FullName;
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
                this.SourceList = (this.BindingSource.DataSource as EntitySet<RoundWorkOrderDetailII>).ToList();
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

            var sortQuery = (this.BindingSource.DataSource as EntitySet<RoundWorkOrderDetailII>).ToList().OrderBy(p => p.SizeOrder);
            List<RoundWorkOrderDetailII> sortList = sortQuery.ToList();
            aPovitGrid.SortRField<RoundWorkOrderDetailII>(sortList, "SizeOrder", "Size", "Size", true);

            //在這裏進行L列排序            
            var sortCupQuery = (this.BindingSource.DataSource as EntitySet<RoundWorkOrderDetailII>).ToList().OrderBy(p => p.CupOrder);
            List<RoundWorkOrderDetailII> cupList = sortCupQuery.ToList();
            //??
            aPovitGrid.Sort<RoundWorkOrderDetailII>(cupList, "CupOrder", "Cup", new string[] { "ColorCode", "Cup" }, "Cup", new bool[] { true, true });

            //控制新增PivotItem
            aPovitGrid.AfterNewPivotItem += new PivotTableGrid.AfterNewPivotItemHanlder(aPovitGrid_AfterNewPivotItem);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="aNewItem"></param>
        void aPovitGrid_AfterNewPivotItem(PivotContentItem aNewItem)
        {
            RoundWorkOrderDetailII rwod2 = (this.BindingSource.Current as RoundWorkOrderDetailII);
            if ((this.BindingSource.Current as RoundWorkOrderDetailII) == null)
            {
                return;
            }
            aNewItem.L1 = rwod2.RoundWorkOrderII.RoundWorkOrder.Company;
            aNewItem.L2 = rwod2.RoundWorkOrderII.RoundWorkOrder.SalesOrderNo;
            aNewItem.L3 = rwod2.RoundWorkOrderII.RoundWorkOrder.SalesOrderLine;
            aNewItem.L4 = rwod2.RoundWorkOrderII.RoundWorkOrder.WorkOrderNo;
            aNewItem.L5 = rwod2.RoundWorkOrderII.RoundWorkOrder.ColorCode;
            aNewItem.L6 = rwod2.RoundWorkOrderII.RoundWorkOrder.RoundNo;

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
            p.BOType = typeof(RoundWorkOrderDetailII);
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
            (this.ParentForm as RoundWorkOrderIIDetailForm).InitStyleRatio(true);
        }
    }
}
