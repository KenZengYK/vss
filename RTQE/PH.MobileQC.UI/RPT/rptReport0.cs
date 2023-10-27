using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MobileQC.UI
{
    public partial class rptReport0 : DevExpress.XtraReports.UI.XtraReport
    {
        /// <summary>
        /// 列印報表
        /// </summary>
        /// <param name="ADataSource">列印的數據源</param>
        public rptReport0(object ADataSource)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = ADataSource;   
        }

    }
}
