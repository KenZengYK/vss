using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;

namespace PH.FabricInspection.UI.MonitorOverdueAudit
{
    public partial class MonitorOverdueAudtListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MonitorOverdueAudtListForm()
        {
            InitializeComponent();
        }

        string _Flag = "1";
        public MonitorOverdueAudtListForm(string AFlag)
            : this()
        {
            _Flag = AFlag;
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var lists = (this.DataContext as FabricInspectionDataContext).ExecuteQuery<WaitQAItem>(string.Format("exec sp_GetWaitQAItemList {0}", _Flag));
            this.BindingSource.DataSource = lists;
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnOpen.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "OverDueDay")
            {
                e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                e.Appearance.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<WaitQAItem> lists = objListGridView.FilteredList().Cast<WaitQAItem>();
                switch (item.FieldName)
                {
                    case "Whse":
                        e.TotalValue = lists.Select(p => p.Whse).Distinct().Count();
                        break;

                    case "AuditNo":
                        e.TotalValue = lists.Where(p => p.AuditNo.HasValue).Select(p => p.AuditNo).Distinct().Count();
                        break;

                    case "MaterialType":
                        e.TotalValue = lists.Select(p => p.MaterialType).Distinct().Count();
                        break;

                    case "ItemNo":
                        e.TotalValue = lists.Select(p => p.ItemNo).Distinct().Count();
                        break;

                    case "ColorCode":
                        e.TotalValue = lists.Select(p => p.ColorCode).Distinct().Count();
                        break;

                    case "SuppItemRef":
                        e.TotalValue = lists.Select(p => p.SuppItemRef).Distinct().Count();
                        break;

                    case "SuppCode":
                        e.TotalValue = lists.Select(p => p.SuppCode).Distinct().Count();
                        break;

                    case "ProjectNo":
                        e.TotalValue = lists.Select(p => p.ProjectNo).Distinct().Count();
                        break;

                    case "PONo":
                        e.TotalValue = lists.Select(p => p.PONo).Distinct().Count();
                        break;

                    case "HDONo":
                        e.TotalValue = lists.Select(p => p.HDONo).Distinct().Count();
                        break;
                }

            }
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            objListGridView.OptionsView.ShowFooter = true;

            this.colWhse.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAuditNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppItemRef.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colProjectNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPONo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colHDONo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;

            if (_Flag == "0") //Outstanding auditing
            {
                colOverDueDay.Caption = "Due\r\ndays";
            }
        }
    }
}
