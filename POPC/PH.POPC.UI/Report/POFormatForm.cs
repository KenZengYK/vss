using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;

namespace PH.POPC.UI.Report
{
    public partial class POFormatForm : DevExpress.XtraEditors.XtraForm
    {
        //private string _PONO = null;
        private string _CONO = null;
        //public POFormatForm(string CONO, string PONO)
        public POFormatForm(string CONO, POHeader APOHeader) //由David修改  2022-05-14
        {
            InitializeComponent();
            //_PONO = PONO;
            _CONO = CONO;

            this.poNewReport1.jobNewPOReport1.editCONO.EditValue = _CONO;
            this.poNewReport1.jobNewPOReport1.editPONO.EditValue = APOHeader.PONO;

            //由David加入 2022-05-14
            this.poNewReport1.jobNewPOReport1.chkDomesticPurchase.Checked = APOHeader.TradeMethod == "DPCN"; //只有DPCN 国内采购，才能打印中文版本
            this.poNewReport1.jobNewPOReport1.rgReportTitleType.EditValue = string.IsNullOrEmpty(APOHeader.BuyerCode) ? "PHDG" : APOHeader.BuyerCode;
        }
    }
}