using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using PH.RWO.BO;
using PH.Platform.BO;
using System.Collections.Generic;

namespace PH.RWO.BackEnd.Reports.SL.PO.POBody
{
    public partial class RptPODetail : DevExpress.XtraReports.UI.XtraReport
    {

        public string CurProject=null, CurWorkOrder=null,CurStyle=null,CurCustStyle=null,DateFrom,DateTo;
        public RWOSOPCDataContext CurCtx;
        DataTable DbSubRpt;
        public RptPODetail()
        {
            InitializeComponent();
        }


        public RptPODetail(DataTable db)
        {
            InitializeComponent();
            DbSubRpt = db;
        }

        //public void SetDataBind()
        //{
        //    this.xtcProj.DataBindings.Add("Text", this.bsDetail, "ProjectNo");
        //    this.xtcStyle.DataBindings.Add("Text", this.bsDetail, "StyleNo");
        //    this.xtcWo.DataBindings.Add("Text", this.bsDetail, "WorkOrderno");
        //    this.xtcCustStyle.DataBindings.Add("Text", this.bsDetail, "CustomerStyleNo");
        //    this.xtcCustPO.DataBindings.Add("Text", this.bsDetail, "CustomerPO");
        //    this.xtcPurCreDate.DataBindings.Add("Text", this.bsDetail, "WOCreateDate");
        //    this.xtcPurUpdDate.DataBindings.Add("Text", this.bsDetail, "WOReviseDate");
        //    this.xtcComposition.DataBindings.Add("Text", this.bsDetail, "Composition");
        //    this.xtcAETD.DataBindings.Add("Text", this.bsDetail, "AETD");
        //    this.xtcDeliveryDate.DataBindings.Add("Text", this.bsDetail, "DeliveryShipCompleted");
        //    this.xtcETD.DataBindings.Add("Text", this.bsDetail, "ETD");
        //    this.xtcShipMode.DataBindings.Add("Text", this.bsDetail, "ShipMode");
        //    this.xtcLoprt.DataBindings.Add("Text", this.bsDetail, "LPORT");

        //  //            this.xrOutW.DataBindings.Add("Text", this.bsSummary, "custom_weight");
        //  // xrTableCell10.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top);
        //}

        public void GetReportData()
        {

            //if (CurCtx == null)
            //    CurCtx = ContextBuilder.CreateContext<RWOSOPCDataContext>();

            //string sqlcmd =string.Format("Exec Proc_ProductPurchRpt '{0}','{1}','{2}','{3}','{4}','{5}'",CurProject,CurWorkOrder,CurStyle,CurCustStyle,DateFrom,DateTo);

            //  DataSet ds =new DataSet();
            //  CurCtx.ExecuteDataSet(sqlcmd, ds, "podetail");
            //  DataTable dt1 = ds.Tables["podetail"];
            //  this.bsDetail.DataSource = dt1;
            //  DbSubRpt = ds.Tables[1];              
            
        }


        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

             DataRowView srow = this.GetCurrentRow() as DataRowView;
            if (srow==null)
                return;

             string wo =srow.Row["WorkOrderno"].ToString();
             _vprice = srow["productprice"] != DBNull.Value ? (decimal)srow["productprice"] : 0;
            if (DbSubRpt != null)
            {
                //version 1
                //DataTable db =CreatSubData(wo); 
                //RptPODetail_Sub rptsub = new RptPODetail_Sub(db);

                DataTable db = GetSubData(wo);
                RptPODetail_Sub1 rptsub = new RptPODetail_Sub1(db);
                xrSubRpt.ReportSource = rptsub;
                        
            }

          
        }

        string _colorcode = "";
        int _totalqty = 0;
        decimal _vprice = 0;
        private DataTable CreatSubData(string workorder)
        {
            DataTable dt = new DataTable();
            if (DbSubRpt != null)
            {
                ArrayList lst_cups = new ArrayList();
                ArrayList lst_size = new ArrayList();
                Dictionary<string, int> dic = new Dictionary<string, int>();
                Dictionary<string, int> dic_total = new Dictionary<string, int>();
                DataRow[] drows = DbSubRpt.Select("workorderno='" + workorder + "'");

                foreach (DataRow dr in drows)
                {
                    _colorcode = dr["colorcode"].ToString();
                    _totalqty = _totalqty += (dr["despatchqty"]!=DBNull.Value?(int)dr["despatchqty"]:0); 
                    string _cup = "", _size = "";
                    if (dr["custcup"] != null)
                        _cup = dr["custcup"].ToString().Trim();

                    _size = dr["custsize"].ToString();

                    if (!string.IsNullOrEmpty(_cup)&&!lst_cups.Contains(_cup))
                        lst_cups.Add(_cup);

                    if (!lst_size.Contains(_size))
                       lst_size.Add(_size);
                    string mkey = _cup == "" ? _colorcode + _size : _colorcode+_cup + _size;

                    if (!dic.ContainsKey(mkey)) //qty by color+cup+size
                    {
                        dic.Add(mkey, (int)dr["despatchqty"]);
                       
                    }
                    if (!dic_total.ContainsKey(_colorcode))
                        dic_total.Add(_colorcode, (int)dr["despatchqty"]);
                    else
                    {
                        dic_total[_colorcode] = dic_total[_colorcode] + (int)dr["despatchqty"]; //按color合計數量
                    }
                }

                #region 生成列
                DataColumn dc_color = new DataColumn();
                dc_color.DataType = System.Type.GetType("System.String");
                dc_color.ColumnName = "ColorCode";
                dc_color.Caption = "";
                dt.Columns.Add(dc_color);

                if (lst_cups.Count > 0)
                {
                   DataColumn dc =  new DataColumn();
                   dc.DataType = System.Type.GetType("System.String");
                   dc.ColumnName = "CupSize";
                   dt.Columns.Add(dc);
                }
                for (int i = 0; i < lst_size.Count; i++)
                {

                    DataColumn dc1 = new DataColumn();
                    dc1.DataType = System.Type.GetType("System.String");
                    dc1.ColumnName = lst_size[i].ToString();
                    dt.Columns.Add(dc1);
                }

                //數量列(by color)
                DataColumn dc_qty = new DataColumn();
                dc_qty.DataType = typeof(Int32);//System.Type.GetType("System.Interg");
                dc_qty.ColumnName = "Qty";
                dc_qty.Caption = "數量";
                dt.Columns.Add(dc_qty);

                #endregion

                #region 生成Cup/Sie數據
                if (lst_cups.Count == 0)
                {
                  
                    foreach (var _dict in dic_total)
                    {
                        DataRow newrow = dt.NewRow();
                        newrow["ColorCode"] =_dict.Key;
                        newrow["Qty"] = _dict.Value;  

                        for (int j = 0; j < lst_size.Count; j++)
                        {                          
                            string vkey =_dict.Key+lst_size[j].ToString();
                            string vsize =lst_size[j].ToString();
                            newrow[vsize] = dic[vkey];
                        }                                        
                        dt.Rows.Add(newrow);

                    }
                   
                }
                else
                {
                    foreach (var _dict in dic_total)
                    {

                        for (int j = 0; j < lst_cups.Count; j++)
                        {
                            DataRow newrow = dt.NewRow();
                            newrow["CupSize"] = lst_cups[j].ToString();
                            newrow["ColorCode"] = _dict.Key;

                            for (int k = 0; k < lst_size.Count; k++)
                            {
                                string colname = lst_size[k].ToString();
                                string key = _dict.Key+lst_cups[j].ToString() + colname;
                                if (dic.ContainsKey(key))
                                    newrow[colname] = dic[key];
                            }
                            if (j == 0)
                            {                             
                                newrow["Qty"] = _dict.Value; //by color qty                  
                            }
                            dt.Rows.Add(newrow);
                        }
                    }

                }
                #endregion


            }

            return dt;
        
        }

        //with PivotGrid
        private DataTable GetSubData(string wo)
        {
            DataRow[] drows = DbSubRpt.Select("workorderno='" + wo + "'");
            bool hsacups = DbSubRpt.Select("custcup<>''").Length > 0 ? true : false;
            DataTable dt =DbSubRpt.Clone();
            if (!hsacups)
               dt.Columns.Remove("custcup");
            dt.Columns.Remove("workorderno");
            foreach (DataRow dr in drows)
            {
                DataRow nrow = dt.NewRow();
                nrow["colorcode"] = dr["colorcode"];
                if (hsacups)
                    nrow["custcup"] = dr["custcup"];

                nrow["custsize"] = dr["custsize"];
                nrow["despatchqty"] = dr["despatchqty"];
                dt.Rows.Add(nrow);
            }

                        
            return dt;
        }
        private void RptPODetail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
          //  this.SetDataBind();
            GetReportData();
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrTotal.Text = this._totalqty.ToString(); ;
            xrPrice.Text = this._vprice > 0 ? _vprice.ToString() : "";
        }

    }
}
