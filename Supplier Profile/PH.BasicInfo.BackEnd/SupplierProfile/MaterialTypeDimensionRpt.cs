using System;
using System.Drawing;
using System.Data.Linq;
using System.Data;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.BackEnd.TimeElement.Report
{
    public partial class MaterialTypeDimensionRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext context { get; set; }
        public string WhereCondition { get; set; }

        public MaterialTypeDimensionRpt()
        {
            InitializeComponent();
        }

    }
}
