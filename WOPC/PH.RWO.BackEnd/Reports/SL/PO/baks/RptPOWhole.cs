using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BackEnd.Reports.SL.PO.POHeader;
using PH.RWO.BackEnd.Reports.SL.PO.POFooter;
using PH.RWO.BackEnd.Reports.SL.PO.POBody;
using System.Data;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.BackEnd.Reports.SL.PO
{
    public partial class RptPOWhole : DevExpress.XtraReports.UI.XtraReport
    {
        public bool IsPH;
        public string CurProject = null, CurWorkOrder = null, CurStyle = null, CurCustStyle = null, DateFrom, DateTo;
        //private XRSubreport xrSubFooter;

        public RWOSOPCDataContext CurCtx;
        DataTable DbSubRpt;
        public RptPOWhole()
        {
            InitializeComponent();
            this.SetDataBind();
         
       
        }


        int _totalqty = 0, _totalrows = 0, _rowcount = 1, _colorcount=0;
        int _colcount = 0,_wrows=0;

        decimal _vprice = 0;
        string _currency;
        bool _lasthascup = false; //最后一頁是否有cup列

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            DataRowView srow = this.GetCurrentRow() as DataRowView;
            if (srow == null)
                return;
            _wrows =0;
            string wo = srow.Row["WorkOrderno"].ToString();
            _vprice = srow["productprice"] != DBNull.Value ? (decimal)srow["productprice"] : 0;
            _currency = srow["currency"] != DBNull.Value ? srow["currency"].ToString() :"";
            if (DbSubRpt != null)
            {
                //version 1
                //DataTable db =CreatSubData(wo); 
                //RptPODetail_Sub rptsub = new RptPODetail_Sub(db);
                _colorcount =0;
                DataTable db = GetSubData(wo);
                _wrows =db.Rows.Count;
                RptPODetail_Sub1 rptsub = new RptPODetail_Sub1(db);
                this.xrSubDetail.ReportSource = rptsub;

               
            }

            if (_totalrows == _rowcount)
            {
                //xrTotalqty.Text = _totalqty.ToString();
                //xrLabel1.Visible = true;
                //xrTotalqty.Visible = true;
                //計算總重量顯示位置

                //int _x= 15+60+(_lasthascup?50:0)+62*_colcount;
                //int _y = (_wrows+_colorcount)*20;
                //int _x1= 15+60+(_lasthascup?50:0)+62*_colcount+51; //51為"總數量"Label的寬度

                //xrLabel1.Location = new Point(_x,_y);
                //xrTotalqty.Location = new Point(_x1, _y);
            }
      
            
        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {


            //if (_totalrows * 2 == _rowcount)
            //{
            //    if (IsPH)                   
            //        this.xrSubFooter.ReportSource = new RptPOFooter_Domestic();                
            //    else                
            //        this.xrSubFooter.ReportSource = new RptPOFooter_Foreign();
                
            //    this.xrSubFooter.Visible = true;
            //    xrSubFooter.ResumeLayout();
            //    xrSubFooter.BringToFront();
            //    xrSubFooter.Location = new Point(25, 0);

            //    xrLabel3.Visible = true;
               
            //}
            //else
            //{
            //    this.xrSubFooter.Visible = false;
            //    xrLabel3.Visible = false;            
            //}
            //_rowcount++;

        }

        private void RptPOWhole_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (IsPH)
            {
                this.xrSubHeader.ReportSource = new RptPOHeader_Domestic();
               this.xrSubFooter.ReportSource = new RptPOFooter_Domestic();
            }
            else
            {
                this.xrSubHeader.ReportSource = new RptPOHeader_Foreign();
               this.xrSubFooter.ReportSource = new RptPOFooter_Foreign();
            }
              this.GetReportData();


        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {


            //xrSubFooter = new XRSubreport();
            //if (IsPH)
            //{
            //    RptPOFooter_Domestic rpt1 = new RptPOFooter_Domestic();
            //    this.xrSubFooter.ReportSource = rpt1;
            //}
            //else
            //{
            //    RptPOFooter_Foreign rpt2 = new RptPOFooter_Foreign();
            //    this.xrSubFooter.ReportSource = rpt2;
            //}
            //xrSubFooter.Location = new System.Drawing.Point(50, 8);
            //xrSubFooter.Size =  new System.Drawing.Size(550, 25); 
            //Bands[BandKind.PageFooter].Controls.Add(xrSubFooter);
        }

        public void SetDataBind()
        {
            this.xtcProj.DataBindings.Add("Text", this.bsWhole, "ProjectNo");
            this.xtcStyle.DataBindings.Add("Text", this.bsWhole, "StyleNo");
            this.xtcWo.DataBindings.Add("Text", this.bsWhole, "WorkOrderno");
            this.xtcCustStyle.DataBindings.Add("Text", this.bsWhole, "CustomerStyleNo");
            this.xtcCustPO.DataBindings.Add("Text", this.bsWhole, "CustomerPO");
            this.xtcPurCreDate.DataBindings.Add("Text", this.bsWhole, "WOCreateDate");
            this.xtcPurUpdDate.DataBindings.Add("Text", this.bsWhole, "WOReviseDate");
            this.xtcComposition.DataBindings.Add("Text", this.bsWhole, "Composition");
            this.xtcAETD.DataBindings.Add("Text", this.bsWhole, "AETD");
            this.xtcDeliveryDate.DataBindings.Add("Text", this.bsWhole, "DeliveryShipCompleted");
            this.xtcETD.DataBindings.Add("Text", this.bsWhole, "ETD");
            this.xtcShipMode.DataBindings.Add("Text", this.bsWhole, "ShipMode");
            this.xtcLoprt.DataBindings.Add("Text", this.bsWhole, "LPORT");

            // this.xrOutW.DataBindings.Add("Text", this.bsSummary, "custom_weight");
            // xrTableCell10.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top);
        }


        public void GetReportData()
        {

            if (CurCtx == null)
            {
                CurCtx = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                CurCtx.CommandTimeout = 8000;
            }

            string sqlcmd = string.Format("Exec Proc_ProductPurchRpt '{0}','{1}','{2}','{3}','{4}','{5}'", CurProject, CurWorkOrder, CurStyle, CurCustStyle, DateFrom, DateTo);

            DataSet ds = new DataSet();
            CurCtx.ExecuteDataSet(sqlcmd, ds, "podetail");
            DataTable dt1 = ds.Tables["podetail"];
            this.bsWhole.DataSource = dt1;
            _totalrows = dt1.Rows.Count;
            DbSubRpt = ds.Tables[1];

        }

        private DataTable GetSubData(string wo)
        {
            bool hascups = false;
            string _curcolor=""; 

            DataRow[] drows = DbSubRpt.Select("workorderno='" + wo + "'");
            DataTable dt = DbSubRpt.Clone();
  
            dt.Columns.Remove("workorderno");
            
            foreach (DataRow dr in drows)
            {
                DataRow nrow = dt.NewRow();
                nrow["colorcode"] = dr["colorcode"];
                if (dr["custcup"] != null && dr["custcup"].ToString()!="")
                    hascups =true;

                if (_totalrows == _rowcount) //在最后一頁才統計
                {
                    if (dr["colorcode"].ToString() != _curcolor)
                    {
                        _colorcount++; //統計同一WO中有多少種顏色
                        _curcolor = dr["colorcode"].ToString();
                    }
                }
                nrow["custcup"] = dr["custcup"];
                nrow["custsize"] = dr["custsize"];
                nrow["despatchqty"] = dr["despatchqty"];
                _totalqty =_totalqty+ (nrow["despatchqty"] != DBNull.Value ? (int)nrow["despatchqty"] : 0);
                dt.Rows.Add(nrow);
            }
            if (!hascups)
            {
                dt.Columns.Remove("custcup");
                _colcount = dt.Columns.Count-1; //去掉colorcode統計
            }
            else
                _colcount = dt.Columns.Count - 2; //去掉colorcode統計

           
            return dt;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
          //  xrTotalqty.Text = _totalqty.ToString();
            xrPrice.Text = _vprice.ToString();
            xrCurrency.Text = _currency.ToString();

            if (_totalrows == _rowcount)
            {
                //xrTotalqty.Text = _totalqty.ToString();
                //xrLabel1.Visible = true;
                //xrTotalqty.Visible = true;
                GroupFooter1.PageBreak = PageBreak.None;

            }
          //  else
               // GroupFooter1.PageBreak = PageBreak.AfterBand;
         
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            _vprice = 0;
            _rowcount++;
        }

        private void ReportFooter_BeforePrint_1(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //xrTotalqty.Text = _totalqty.ToString();
        }


    }
}
