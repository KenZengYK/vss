using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class POPCLevel3CreditCashReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCLevel3CreditCashReport(PH.POPC.BO.POPCAnalysisSortBy sortBy)
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



        PH.POPC.BO.POPCAnalysisSortBy _sortBy;
        decimal _rcqtyY = 0;
        decimal _qtyY = 0;

        decimal _rcqtyN = 0;
        decimal _qtyN = 0;

        #region Yes

        private void cellReplaceY_SummaryReset(object sender, EventArgs e)
        {
            _rcqtyY = 0;
            _qtyY = 0;
        }


        private void cellReplaceY_SummaryRowChanged(object sender, EventArgs e)
        {
            bool b = Convert.ToBoolean(GetCurrentColumnValue("Replacement"));
            decimal q = Convert.ToDecimal(GetCurrentColumnValue("SuppRCQty"));
            _qtyY += q;
            if (b) _rcqtyY += q;
        }

        private void cellReplaceY_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qtyY == 0 ? 0 : _rcqtyY / _qtyY;
            if (d == 0)
                e.Result = "--";
            else
                e.Result = d;
            e.Handled = true;
        }
        #endregion

        #region No
        private void cellReplaceN_SummaryReset(object sender, EventArgs e)
        {
            _rcqtyN = 0;
            _qtyN = 0;
        }

        private void cellReplaceN_SummaryRowChanged(object sender, EventArgs e)
        {
            bool b = Convert.ToBoolean(GetCurrentColumnValue("Replacement"));
            decimal q = Convert.ToDecimal(GetCurrentColumnValue("SuppRCQty"));
            _qtyN += q;
            if (!b) _rcqtyN += q;
        }

        private void cellReplaceN_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qtyN == 0 ? 0 : _rcqtyN / _qtyN;
            if (d == 0)
                e.Result = "--";
            else
                e.Result = d;
            e.Handled = true;
        }
        #endregion


    }
}
