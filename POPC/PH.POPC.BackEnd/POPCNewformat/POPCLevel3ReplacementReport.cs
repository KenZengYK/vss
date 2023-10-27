using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class POPCLevel3ReplacementReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCLevel3ReplacementReport(PH.POPC.BO.POPCAnalysisSortBy sortBy)
        {
            InitializeComponent();
            _sortBy = sortBy;
            InitValue();
        }

        private void InitValue()
        {
            GroupHeader_TT.GroupFields.Clear();

            switch (this._sortBy)
            {
                case PH.POPC.BO.POPCAnalysisSortBy.Month:
                    GroupHeader_TT.GroupFields.Add(new GroupField("DeliveryMonth", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    cellGroupName.Text = "Month:-";
                    cellGroupValue.Text = "[PODeliveryDate!MM/yyyy]";
                    break;
                case PH.POPC.BO.POPCAnalysisSortBy.Year:
                    GroupHeader_TT.GroupFields.Add(new GroupField("DeliveryYear", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    cellGroupName.Text = "Year:-";
                    cellGroupValue.Text = "[PODeliveryDate!yyyy]";
                    break;
                case PH.POPC.BO.POPCAnalysisSortBy.Supplier:
                    GroupHeader_TT.GroupFields.Add(new GroupField("Supplier", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    cellGroupName.Text = "Supplier:-";
                    cellGroupValue.Text = "[Supplier]";
                    break;
                case PH.POPC.BO.POPCAnalysisSortBy.Customer:
                    GroupHeader_TT.GroupFields.Add(new GroupField("EndCustCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    cellGroupName.Text = "End Cust.:-";
                    cellGroupValue.Text = "[EndCustCode]";
                    break;
                default:
                    break;
            }
            GroupHeader_TT.KeepTogether = true;
        }



        decimal _rcqty = 0;
        decimal _qty = 0;
        PH.POPC.BO.POPCAnalysisSortBy _sortBy;

        private void cellReturnPer_SummaryReset(object sender, EventArgs e)
        {
            _rcqty = 0;
            _qty = 0;
        }

        private void cellReturnPer_SummaryRowChanged(object sender, EventArgs e)
        {
            _rcqty += Convert.ToDecimal(GetCurrentColumnValue("SuppRCQty"));
            _qty += Convert.ToDecimal(GetCurrentColumnValue("SupplierPOQty"));

        }

        private void cellReturnPer_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qty == 0 ? 0 : _rcqty / _qty;
            e.Result = d;
            e.Handled = true;
        }


    }
}
