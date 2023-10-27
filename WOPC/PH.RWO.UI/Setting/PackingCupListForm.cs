using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.UI.CS.PivotGrid;
//using PH.Platform.BO.PivotTable;
using System.Data.Linq;
using System.Collections;


namespace PH.RWO.UI.Setting
{
    public partial class PackingCupListForm : ListForm 
    {
        public PackingCupListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
        }
        public override void DataBind()
        {
            base.DataBind();
            //this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            this.AllowGridEdit = true;
            this.AllowAddRow = true;
            this.RowChangeAutoSave = false;
        }
        IList SourceList = null;
        private void LoadData()
        {
            PH.RWO.BO.CustomerBrandCategory categorypart = ((this.ParentForm as PH.RWO.UI.Setting.PackingCategoryParentChildForm).BindingSource.Current as PH.RWO.BO.CustomerBrandCategory);
            if (categorypart.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit && categorypart.CustomerCups.Count == 0)
            {

                this.SourceList = null;
                return;
            }
            try
            {
                this.SourceList = (this.BindingSource.DataSource as EntitySet<PH.RWO.BO.CustomerCup>).ToList<PH.RWO.BO.CustomerCup>();
                this.objListGridView.RefreshData();
            }
            catch
            {
            }

        }
        //private void aPovitGrid_AfterNewPivotItem(PivotContentItem aNewItem)
        //{
          
           

        //}
        private void PivotTableDemo_OnBeforeShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            LoadData();

            //在這裏控制L列的顯示
            //aPovitGrid.SetColumnVisible("L1", false);
            //aPovitGrid.SetColumnVisible("L2", false);
            //aPovitGrid.SetColumnVisible("L3", false);
            //aPovitGrid.SetColumnVisible("L4", true);
            //aPovitGrid.SetColumnVisible("L5", false);
            

            //在這裏進行R列排序


            var sortQuery = (this.BindingSource.DataSource as EntitySet<PH.RWO.BO.CustomerCup>).ToList().OrderBy(p => p.Size).OrderBy(p => p.Size);
            List<PH.RWO.BO.CustomerCup> sortList = sortQuery.ToList();
            aPovitGrid.SortRField<PH.RWO.BO.CustomerCup>(sortList, "Size", "Size", "Size", true);

            ////在這裏進行L列排序            
            //var sortCupQuery = (this.BindingSource.DataSource as EntitySet<PH.RWO.BO.CustomerCup>).ToList().OrderBy(p => p.Size);
            //List<PH.RWO.BO.CustomerCup> cupList = sortCupQuery.ToList<PH.RWO.BO.CustomerCup>();
            aPovitGrid.Sort<PH.RWO.BO.CustomerCup>(sortList, "ClrCode", "ClrCode", new string[] { "ClrCode" }, "ClrCode", new bool[] { true });
            aPovitGrid.SetColumnWidth("ClrCode", 110);
            //控制新增PivotItem
            //aPovitGrid.AfterNewPivotItem += new PivotTableGrid.AfterNewPivotItemHanlder(aPovitGrid_AfterNewPivotItem);
        }
        private void PivotTableDemo_OnAfterShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            LoadData();
        }

        public override PivotTableForm.PivotParamClass CreatePivotTableParameters()
        {
            //return base.CreatePivotTableParameters();
            LoadData();
            PivotTableForm.PivotParamClass p = new PivotTableForm.PivotParamClass();
            p.BOType = typeof(PH.RWO.BO.CustomerCup);
            p.CurrencyManager = (this.objListGridView.DataSource as BindingSource).CurrencyManager;
            p.Header1_Label = "Size";
            p.Header2_Label = "Total";
            p.LFields = new string[] {"ClrCode","Cups"};
            p.LLabels = new string[] {"PH Color Code", "CUP" };
            
            p.RFields =  new string[] {"Size"};
            p.RSubTotalLabels = new string[] {"Qty"};
            p.RValueField = "Qty";
            p.SourceList = this.SourceList ;
            return p;
        }

        private void PackingCupListForm_Load(object sender, EventArgs e)
        {
            this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(PivotTableDemo_OnBeforeShowPivotGrid);
            // PivotGrid切換到PivotTableDemo後，需要進行的動作：
            // 比如數據刷新等
            this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(PivotTableDemo_OnAfterShowPivotGrid);
        }
    }
}
