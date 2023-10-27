using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;
using System.Linq;
using System.Data;

namespace PH.MobileQC.UI.QCMasterEdit_Final
{
    public partial class GDAQLAuditChartReport_Final : DevExpress.XtraReports.UI.XtraReport
    {
        public List<sp_GDAQLAuditChartResult> ARptSource;
        public GDAQLAuditChartReport_Final(List<sp_GDAQLAuditChartResult> RptSource,DataSet ds, string FactoryOrWorkshop,  string FactoryOrWorkshopText)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = RptSource;
            this.ARptSource = RptSource;
            this.xrByWeekOrMoth.Text = FactoryOrWorkshop;
            //this.xrLabel1.Text = FactoryOrWorkshop + " : " + FactoryOrWorkshopText;
            
            if (ds.Tables[0].Rows.Count == 0) return;
            this.xrTLotsPercent.Text = ds.Tables[1].AsEnumerable().Select(dr => dr["LotsAvePrecent"]).FirstOrDefault().ToString()+"%";
            this.xrPiecePrecent.Text = ds.Tables[1].AsEnumerable().Select(dr => dr["PieceAvePrecent"]).FirstOrDefault().ToString() + "%";

        }

 

    }
}
