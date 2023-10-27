using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;
using DevExpress.XtraGrid;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FullInspectionDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public FullInspectionDetailListForm()
        {
            InitializeComponent();
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<FullInspectionDetail> lists = objListGridView.FilteredList().Cast<FullInspectionDetail>();
                switch (item.FieldName)
                {
                    case "BoxNo":
                        e.TotalValue = lists.Where(p => p.BoxNo.HasValue).Select(p => p.BoxNo).Distinct().Count();
                        break;

                    case "Size":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.Size)).Select(p => p.Size).Distinct().Count();
                        break;

                    case "ProductQty":
                        e.TotalValue = lists.Select(p => p.ProductQty ?? 0).Sum();
                        break;

                    case "DefectiveGarmentQty":
                        e.TotalValue = lists.Select(p => p.DefectiveGarmentQty ?? 0).Sum();
                        break;

                    case "DefectiveGarmentPercent":
                        int TotalProductQty = lists.Select(p => p.ProductQty ?? 0).Sum();
                        int TotalDefectiveGarmentQty = lists.Select(p => p.DefectiveGarmentQty ?? 0).Sum();
                        e.TotalValue = (TotalProductQty == 0 ? 0.0000m : 1.0000m * TotalDefectiveGarmentQty / TotalProductQty).ToString("p");
                        break;

                    case "Repaired":
                        e.TotalValue = lists.Where(p => p.Repaired ?? false).Select(p => (p.DefectiveGarmentQty ?? 0) - (p.RejectQty ?? 0)).Sum();
                        break;
                }

            }
        }
    }
}
