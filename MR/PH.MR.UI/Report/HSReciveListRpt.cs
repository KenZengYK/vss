using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using PH.MR.BO;
using System.Collections.Generic;

namespace PH.MR.UI.Report
{
    public partial class HSReciveListRpt : DevExpress.XtraReports.UI.XtraReport
    {
        List<ReciveListResult> ReciveList = new List<ReciveListResult>();
        string _datarange;

        public HSReciveListRpt()
        {
            InitializeComponent();
        }

        public HSReciveListRpt(DataTable rptdata,string daterange)
        {
            InitializeComponent();
            _datarange = daterange;
            PackageData(rptdata);
            this.DataSource = ReciveList;
        }

        private void PackageData(DataTable dt)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                #region
                PH.MR.BO.ReciveListResult item = new PH.MR.BO.ReciveListResult();
                item.FTY = dt.Rows[i]["FTY"] == DBNull.Value ? "" : dt.Rows[i]["FTY"].ToString();
                item.HSCodeSeq = dt.Rows[i]["HSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["HSCodeSeq"]);
                item.HSCode = dt.Rows[i]["HSCode"] == DBNull.Value ? "" : dt.Rows[i]["HSCode"].ToString();
                item.HSName = dt.Rows[i]["HSName"] == DBNull.Value ? "" : dt.Rows[i]["HSName"].ToString();
                item.HScontractNO = dt.Rows[i]["HScontractNO"] == DBNull.Value ? "" : dt.Rows[i]["HScontractNO"].ToString();
                item.ReciveQty = dt.Rows[i]["ReciveQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ReciveQty"]);
                ReciveList.Add(item);
                #endregion
            }
          
        }

        private void HSSumRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.cellDate.Text = _datarange;         
        }

        private void BindField()
        {

           // this.xrTableCell8.DataBindings.Add("Text", this.DataSource, "FTY");
            this.xrTableCell21.DataBindings.Add("Text", this.DataSource, "HSCodeSeq");
            this.xrTableCell22.DataBindings.Add("Text", this.DataSource, "HSCode");
            this.xrTableCell3.DataBindings.Add("Text", this.DataSource, "HScontractNO");
            this.xrTableCell23.DataBindings.Add("Text", this.DataSource, "MaterialName");
            this.xrTableCell24.DataBindings.Add("Text", this.DataSource, "RECIVEQTY");
          //  this.xrTableCell21.DataBindings.Add("Text", this.DataSource, "HSCodeSeq");  
        
        }

    }
}
