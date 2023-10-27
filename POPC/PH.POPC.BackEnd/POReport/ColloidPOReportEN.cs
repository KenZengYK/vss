using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;


namespace PH.POPC.BackEnd
{
    public partial class ColloidPOReportEN : DevExpress.XtraReports.UI.XtraReport
    {
        public ColloidPOReportEN()
        {
            InitializeComponent();
        }

        private POPC.BO.POHeader _poheader;
        public ColloidPOReportEN(List<PH.POPC.BO.POHeader> list, POPC.BO.POHeader poheader)
        {
            InitializeComponent();
            //var items = from aa in poheader.PODetails
            //            where aa.Photo != null
            //            select aa;
            //int count = items == null ? 0 : items.Count();
            //this.xrPageBreak1.Visible = count == 0 ? false : true;

            this.DataSource = list;
            this._poheader = poheader;
            this.subReport21._poheader = poheader;
            this.xrLabelReportName.Text = string.IsNullOrEmpty(this._poheader.ReportName) ? this.xrLabelReportName.Text : this._poheader.ReportName;

        }

        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //PH.POPC.BO.PODetail d = DetailReport.GetCurrentRow() as PH.POPC.BO.PODetail;// this.DataSource as List<PH.POPC.BO.POHeader>;
            //List<PH.POPC.BO.POColorSizeDetail> list = d.POColorSizeDetails.ToList<PH.POPC.BO.POColorSizeDetail>();
            //this.PivotGrid.DataSource = null;
            //this.PivotGrid.DataSource = list;
        }



    }
}
      
