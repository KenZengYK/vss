using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.QCMasterEdit_Final
{
    public partial class QCMasterQueryFPYReport_Final : DevExpress.XtraReports.UI.XtraReport
    {
        public QCMasterQueryFPYReport_Final(List<QCMasterFinalFPY> DataSource,string sFactory, string sMonth )
        {
            InitializeComponent();
            this.bindingSource1.DataSource = DataSource;
            this.xrFactory.Text = sFactory;
            this.xrMonth.Text = sMonth;
        }

    }
}
