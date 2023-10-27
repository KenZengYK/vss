using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.PivotGrid;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleSizeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public StyleSizeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleSizeDetailForm).FullName;

            this.AllowGridEdit = true; //允許網格編輯
            //this.AllowKeyPress = true; //允許風格中回車新建行


        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            this.IsShowPivotTable = true;

            this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(StyleListForm_OnBeforeShowPivotGrid);
            this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(StyleListForm_OnAfterShowPivotGrid);
        }
        #region StyleSize PivotTable顯示與編輯
        void StyleListForm_OnBeforeShowPivotGrid(PH.Platform.UI.CS.PivotGrid.PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            //在這裏控制L列的顯示
            aPovitGrid.SetColumnVisible("L1", false);
            aPovitGrid.SetColumnVisible("L2", false);
            //aPovitGrid.SetColumnVisible("L3", false);
        }

        void StyleListForm_OnAfterShowPivotGrid(PH.Platform.UI.CS.PivotGrid.PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            //LoadData();
        }

        //IList SourceList = null;
        public override PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass CreatePivotTableParameters()
        {
            PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass p = new PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass();
            p.BOType = typeof(PH.SPC.BO.StyleSize);
            p.Header1_Label = "Size";
            p.Header2_Label = "Total";
            p.LFields = new string[]
            {
                "SampleOrderID",
               // "ProjectID",
                "StyleID",
                "SortID",
                "EditionID",
                "ColorID",
                "Cup"               
            };

            p.LLabels = new string[]
            {
                "Sample Order",
                //"Project",
                "Style",
                "Sort",
                "Edition",
                "Color",
                "Cup"               
            };

            p.RFields = new string[]
            {
                "SizeID",
                "SizeWorld"
            };

            p.RSubTotalLabels = new string[] { "標準碼", "國際碼" };

            p.RValueField = "Qty";

            p.SourceList = this.BindingSource.List;
            return p;
        }
        #endregion

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<StyleSize> lists = objListGridView.FilteredList().Cast<StyleSize>();

                switch (item.FieldName)
                {
                    case "SampleOrderNoShow":
                        e.TotalValue = lists.Select(p => p.SampleOrderNoShow).Distinct().Count();
                        break;

                    case "ChildSampleOrderSuffixShow":
                        e.TotalValue = lists.Select(p => p.ChildSampleOrderSuffixShow).Distinct().Count();
                        break;

                    case "PHStyleNoShow":
                        e.TotalValue = lists.Select(p => p.PHStyleNoShow).Distinct().Count();
                        break;

                    case "SampleTypeShow":
                        e.TotalValue = lists.Select(p => p.SampleTypeShow).Distinct().Count();
                        break;

                    case "STVersionShow":
                        e.TotalValue = lists.Select(p => p.STVersionShow).Distinct().Count();
                        break;

                    case "ColorID":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.ColorID)).Select(p => p.ColorID).Distinct().Count();
                        break;

                    case "ColorName":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.ColorName)).Select(p => p.ColorName).Distinct().Count();
                        break;

                    case "Cup":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.Cup)).Select(p => p.Cup).Distinct().Count();
                        break;

                    case "SizeID":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.SizeID)).Select(p => p.SizeID).Distinct().Count();
                        break;

                    case "Qty":
                        e.TotalValue = lists.Select(p => p.Qty).Sum();
                        break;

                    case "KeepQty":
                        e.TotalValue = lists.Select(p => p.KeepQty).Sum();
                        break;
                }

            }
        }


    }
}
