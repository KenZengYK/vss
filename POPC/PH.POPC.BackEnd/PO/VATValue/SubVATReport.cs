using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.POPC.BackEnd.PO.VATValue
{
    public partial class SubVATReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Creator

        public SubVATReport()
        {
            InitializeComponent();
        }
        public SubVATReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;

            SetTitleInfor();

        }
        #endregion

        #region Fields

        //Image imgYes, imgNo, imgNone;
        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;

        #endregion


        #region Functions

        private void SetTitleInfor()
        {
            this.lbBuyerItem.Text = (_langID == "EN") ? "Our Item Code" : "買方品種編碼";
            this.lbPOLine.Text = (_langID == "EN") ? "PO Line" : "行號";
            this.lbAmount.Text = (_langID == "EN") ? "Amount ([Currency])" : "總金額 ([Currency])";
            this.lbVAT.Text = (_langID == "EN") ? "VAT (%)" : "增值稅 (%)";
            this.lbAmountVAT.Text = (_langID == "EN") ? "Amount (incl. VAT) ([Currency])" : "總金額 (含增值稅) ([Currency])";
            this.lbTotal.Text = (_langID == "EN") ? "Total:-" : "總計:-";
        }

        #endregion

    }
}
