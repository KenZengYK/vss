using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class PrintSetupPO : DevExpress.XtraEditors.XtraForm
    {
        int POType;
        POHeader CurrentPOHeader;

        /// <summary>
        /// ﬂxìÒµƒàÛ±ÌÓê–Õ
        /// </summary>
        public POReportTypes SelectPOType
        {
            get
            {
                return (POReportTypes)this.rgReporType.SelectedIndex;
            }
        }

        public ReportLanguages SelectLanguage
        {
            get
            {
                return (ReportLanguages)this.rgLanguage.SelectedIndex;
            }
        }

        public PrintSetupPO(POHeader APOHeader, int APOType)
        {
            InitializeComponent();
            this.POType = APOType;
            APOHeader.MachineryItemIndex = 1;
            APOHeader.SupplementItemIndex = 1;
            this.CurrentPOHeader = APOHeader;

        }

        //private void btnPrint_Click(object sender, EventArgs e)
        //{
        //    POReport_EN rtpPO = new POReport_EN(CurrentPOHeader, (POTypes)this.rgReporType.SelectedIndex, POType);
        //    this.DialogResult = DialogResult.OK;
        //    rtpPO.ShowPreview();
        //}
    }
}