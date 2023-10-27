using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptQC_sp_WorkforceAnalyze_sub : DevExpress.XtraReports.UI.XtraReport
    {
        public rptQC_sp_WorkforceAnalyze_sub(DataSet ds)
        {
            InitializeComponent();

            List<sp_WorkforceAnalyze_Sub_Class> Alist = ds.Tables[2].AsEnumerable().Select(dr => new sp_WorkforceAnalyze_Sub_Class
            {             	
                DefectCode = dr["DefectCode"].ToString(),
                DefectName_EN = dr["DefectName_EN"].ToString(),
                DefectName_CN = dr["DefectName_CN"].ToString()

            }).ToList();

            this.bindingSource1.DataSource = Alist;
        }

    }
}
