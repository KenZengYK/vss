using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.SPC.BO;
using PH.SPC.UI.Report;

namespace PH.SPC.UI
{
    public partial class ViewStyleListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ViewStyleListForm()
        {
            InitializeComponent();
        }

        string _SampleOrderState;
        public ViewStyleListForm(string ASampleOrderState)
        {
            InitializeComponent();
            _SampleOrderState =ASampleOrderState;
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<SPCDataContext>();
            string SqlStr = string.Format("exec sp_GetWIPStyle '{0}'", _SampleOrderState);
            this.BindingSource.DataSource = (this.DataContext as SPCDataContext).ExecuteQuery<sp_GetWIPStyleResult>(SqlStr);
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnOpen.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "RequestDespatchDate")
            {
                object RequestDespatchDate = objListGridView.GetRowCellValue(e.RowHandle, "RequestDespatchDate");
                object DespatchDate = objListGridView.GetRowCellValue(e.RowHandle, "DespatchDate");
                if (RequestDespatchDate == null || DespatchDate != null) return;

                int DueDay = (DateTime.Now.Date - Convert.ToDateTime(RequestDespatchDate)).Days;

                if (DueDay >= -2 && DueDay <= 0)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (DueDay > -2)
                {
                    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "MaterialReady")
            {
                object MaterialReady = objListGridView.GetRowCellValue(e.RowHandle, "MaterialReady");
                if (MaterialReady != null && Convert.ToString(MaterialReady) == "Incomplete")
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<sp_GetWIPStyleResult> lists = objListGridView.FilteredList().Cast<sp_GetWIPStyleResult>();

                switch (item.FieldName)
                {
                    case "SampleOrderID":
                        e.TotalValue = lists.Select(p => p.SampleOrderID).Distinct().Count();
                        break;

                    case "StyleID":
                        e.TotalValue = lists.Select(p => p.StyleID).Distinct().Count();
                        break;

                    case "TotalStyle":
                        e.TotalValue = lists.Select(p => p.TotalStyle).Sum();
                        break;

                    case "TotalSampleOrderQty":
                        e.TotalValue = lists.Select(p => p.TotalSampleOrderQty).Sum();
                        break;

                    case "CustomerID":
                        e.TotalValue = lists.Select(p => p.CustomerID).Distinct().Count();
                        break;

                    case "Season":
                        e.TotalValue = lists.Select(p => p.Season).Distinct().Count();
                        break;

                    case "CreateDate":
                        e.TotalValue = lists.Select(p => p.CreateDate.Value.Date).Distinct().Count();
                        break;

                    case "Suffix":
                        e.TotalValue = lists.Count();
                        break;

                    case "ProjectNo":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo) && p.ProjectNo != "Nil").Select(p => p.ProjectNo).Distinct().Count();
                        break;

                    case "SampleType":
                        e.TotalValue = lists.Select(p => p.SampleType).Distinct().Count();
                        break;
                }

            }
        }

    }
}
