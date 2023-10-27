using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AQL
{

    public partial class RptFullAuditOnLine_Sub2 : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", DateRange = "", Flag = "";
        //int SumType = 0, DefectTotal = 0, ProductTotal = 0, WeekNum = 0;
        int SumType = 0, DefectTotal = 0, ProductTotal = 0; string WeekNum = "0";

        DataTable DbHeader;
        Dictionary<string, string[]> Dict_Defect = new Dictionary<string, string[]>();
        ArrayList WorkShopList = new ArrayList();

        DataTable DbReport;
        int ProdTotal = 0, ChkTotal = 0;


        public RptFullAuditOnLine_Sub2()
        {
            InitializeComponent();
        }

        public RptFullAuditOnLine_Sub2(DataTable reportdata, DataTable dbheader, string daterange, string fac, Dictionary<string, string[]> dict_defect, int prodtotal, int chktotal, string rtype, string  wknum, string cust)//int wknum,string cust)
        {
            InitializeComponent();
            DbReport = reportdata;
            BindFields();
            DbHeader = dbheader;
            this.bsDetail.DataSource = DbReport;
            Factory = fac; DateRange = daterange;
            Dict_Defect = dict_defect;
            WeekNum = wknum;

            ProdTotal = prodtotal;
            ChkTotal = chktotal;
            string _s1 = "", _s2 = "";
            if (rtype == "1")
            {
                _s1 = "Daily";
                if (cust!="")
                    _s1 = cust + "- Daily";
                
                _s2 = "每日離線全審定品質表現報告摘要 -  成衣(主要/次要)暇疵和表現級數";
            }
            else if (rtype == "2")
            {
                _s1 = "Weekly";
                if (cust != "")
                    _s1 = cust + "- Weekly"; 
               
                _s2 = String.Format("W{0}周離線全審定品質表現報告摘要 -  成衣(主要/次要)暇疵和表現級數", WeekNum);
            }
            else 
            {
                _s1 = "Monthly";
                if (cust != "")
                    _s1 = cust + "- Monthly"; 
                
                _s2 = "每月離線全審定品質表現報告摘要 -  成衣(主要/次要)暇疵和表現級數";
            }
            xrTag1.Text = _s1; 
            //xrTag2.Text = _s2;
            xrLabel2.Text = _s2;
        }

        public ReportHeaderBand GetReportHeader_Sub2
        {
            get { return this.ReportHeader; }
        }
        public PageHeaderBand GetPageHeader_Sub2
        {
            get { return this.PageHeader; }
        }

        public RptFullAuditOnLine_Sub2(string fac, int sumtype, string startdate, string enddate, string flag,DataTable dbheader)
        {
            InitializeComponent();
            Factory = fac;
            StartDate = startdate;
            EndDate = enddate;
            // Role = role;
            Flag = flag;
            SumType = sumtype;
          //  PrepareData();
        }

        private void BindFields()
        {
            this.xrTableCell35.DataBindings.Add("Text", this.DataSource, "F01");
            this.xrTableCell28.DataBindings.Add("Text", this.DataSource, "F02");

            this.xrTableCell36.DataBindings.Add("Text", this.DataSource, "F03");
            this.xrTableCell22.DataBindings.Add("Text", this.DataSource, "F04");

            this.xrTableCell37.DataBindings.Add("Text", this.DataSource, "F05");
            this.xrTableCell29.DataBindings.Add("Text", this.DataSource, "F06");

            this.xrTableCell38.DataBindings.Add("Text", this.DataSource, "F07");
            this.xrTableCell25.DataBindings.Add("Text", this.DataSource, "F08");

            this.xrTableCell39.DataBindings.Add("Text", this.DataSource, "F09");
            this.xrTableCell30.DataBindings.Add("Text", this.DataSource, "F10");
            this.xrTableCell40.DataBindings.Add("Text", this.DataSource, "F11");


            this.xrTableCell23.DataBindings.Add("Text", this.DataSource, "Other");
            this.xrTableCell41.DataBindings.Add("Text", this.DataSource, "ZL");
            this.xrTableCell31.DataBindings.Add("Text", this.DataSource, "ZJ");

            this.xrTableCell26.DataBindings.Add("Text", this.DataSource, "ChkTotal");
            this.xrTableCell51.DataBindings.Add("Text", this.DataSource, "ProductTotal");

            this.xrTableCell42.DataBindings.Add("Text", this.DataSource, "MPer");

        
        }




        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            foreach (var item in Dict_Defect)
            {
                string _key = item.Key;
                if (_key == "F01")
                {
                    TCCode01.Text = item.Value[0];
                    TCDesc01.Text = item.Value[1];
                }
                else if (_key == "F02")
                {
                    TCCode02.Text = item.Value[0];
                    TCDesc02.Text = item.Value[1];
                }
                else if (_key == "F03")
                {
                    TCCode03.Text = item.Value[0];
                    TCDesc03.Text = item.Value[1];
                }
                else if (_key == "F04")
                {
                    TCCode04.Text = item.Value[0];
                    TCDesc04.Text = item.Value[1];
                }
                else if (_key == "F05")
                {
                    TCCode05.Text = item.Value[0];
                    TCDesc05.Text = item.Value[1];
                }
                else if (_key == "F06")
                {
                    TCCode06.Text = item.Value[0];
                    TCDesc06.Text = item.Value[1];
                }
                else if (_key == "F07")
                {
                    TCCode07.Text = item.Value[0];
                    TCDesc07.Text = item.Value[1];
                }
                else if (_key == "F08")
                {
                    TCCode08.Text = item.Value[0];
                    TCDesc08.Text = item.Value[1];
                }
                else if (_key == "F09")
                {
                    TCCode09.Text = item.Value[0];
                    TCDesc09.Text = item.Value[1];
                }
                else if (_key == "F10")
                {
                    TCCode10.Text = item.Value[0];
                    TCDesc10.Text = item.Value[1];
                }
                else if (_key == "F11")
                {
                    TCCode11.Text = item.Value[0];
                    TCDesc11.Text = item.Value[1];
                }

            }
        }

        private void bsDetail_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void ReportHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (DbHeader.Rows.Count > 0)
            {
                DataRow dr = DbHeader.Rows[0];
                xrCustCount.Text = dr["custtotal"] != DBNull.Value ? dr["custtotal"].ToString() : "";
                xrWKCount.Text = dr["wstotal"] != DBNull.Value ? dr["wstotal"].ToString() : "";
                xrPOs.Text = dr["pototal"] != DBNull.Value ? dr["pototal"].ToString() : "";

                xrLines.Text = dr["linetotal"] != DBNull.Value ? dr["linetotal"].ToString() : "";
                xrStyles.Text = dr["styletotal"] != DBNull.Value ? dr["styletotal"].ToString() : "";

                xrChkTotal.Text = ChkTotal.ToString(); //dr["checktotal"] != DBNull.Value ? dr["checktotal"].ToString() : "";
                xrQty.Text = ProdTotal.ToString(); //dr["producttotal"] != DBNull.Value ? dr["producttotal"].ToString() : "";

            }

            xrlFac.Text = Factory; xrllDate.Text = DateRange;
            xrlPrint.Text = DateTime.Now.ToString("yyyy/MM/dd");
            xrllDate.Text = DateRange;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            DataRowView _currow = this.GetCurrentRow() as DataRowView;
            if (_currow == null)
                return;

            string _typeid = _currow["TypeId"].ToString();
            string _wscu = _currow["Wscu"].ToString();
            if (_typeid == "100")
            {

                xrFirstCell.Text = "Ws Sub-total/組裝工場小計(" + _wscu + "):";
            }
            else if (_typeid == "111" || _typeid == "222")
            {
                xrFirstCell.Text = "Total / 總計:";
            }
            else if (_typeid == "200")
            {
                xrFirstCell.Text = "Customer Sub-total/客戶小計(" + _wscu + "):";
            }

            double _per = _currow["MPer"]!=""?double.Parse(_currow["MPer"].ToString()):0;
            if (_per < 1)
                xrTableCell32.Text = "A";
            else if (_per >= 1 && _per < 2)
                xrTableCell32.Text = "B";
            else if (_per >= 2 && _per < 3)
                xrTableCell32.Text = "C";
            else if (_per >= 3 && _per < 5)
                xrTableCell32.Text = "F";
            else
                xrTableCell32.Text = "U";
        }




    }
}
