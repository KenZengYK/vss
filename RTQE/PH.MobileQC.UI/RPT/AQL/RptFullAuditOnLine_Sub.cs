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
    public partial class RptFullAuditOnLine_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", DateRange = "", Flag = "";
        int SumType = 0, DefectTotal = 0, ProductTotal = 0;
        DataTable DbHeader;
        Dictionary<string, string[]> Dict_Defect = new Dictionary<string, string[]>();
        ArrayList WorkShopList = new ArrayList();

        DataTable DbReport;


        public RptFullAuditOnLine_Sub()
        {
            InitializeComponent();
        }

        public RptFullAuditOnLine_Sub(DataTable reportdata, DataTable dbheader, string daterange, string fac, Dictionary<string, string[]> dict_defect)
        {
            InitializeComponent();
            DbReport = reportdata;
            BindFields();
            DbHeader = dbheader;
            this.bsDetail.DataSource = DbReport;
            Factory = fac; DateRange = daterange;
            Dict_Defect = dict_defect;
        }


        public RptFullAuditOnLine_Sub(string fac, int sumtype, string startdate, string enddate, string flag,DataTable dbheader)
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



        public void PrepareData()
        {
            DataSet ds = SqlDataHelper.GetFullAuditQuality(Factory, SumType, StartDate, EndDate, Flag);
            DbHeader = ds.Tables[0];
            DataTable db_defect = ds.Tables[1];
            DataTable db = ds.Tables[2];

            //DataColumn colsort = new DataColumn();
            //colsort.DataType = System.Type.GetType("System.Int");
            //colsort.ColumnName = "XH";
            //colsort.DefaultValue = 0;
            //db.Columns.Add(colsort);

            List<FullAuditOnLineResult_V1> lstquality = new List<FullAuditOnLineResult_V1>();
            int m = 1;
            //get all defect code
            for (int j = 15; j < db.Columns.Count; j++)
            {
                // DefectInfo bo = new DefectInfo();
                //  bo.DefectCode = db.Columns[j].ColumnName;
                //  bo.DefectQty = dr[j] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;
                string _col = db.Columns[j].ColumnName;
                string _desc = db_defect.Select("phdefectcode='" + _col + "'")[0][1].ToString();
                string _key = m < 10 ? "F0" + m.ToString() : "F" + m.ToString();
                string[] aa = new string[] { _col, _desc };
                Dict_Defect.Add(_key,aa);
            }


            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                FullAuditOnLineResult_V1 quaper = new FullAuditOnLineResult_V1();
                quaper.SortId = 0;
                quaper.Factory = dr["Factory"].ToString();
                string _ws = dr["Workshop"].ToString(); ;
                quaper.Workshop = _ws;
                quaper.Line = dr["Line"].ToString();
                quaper.Customer = dr["Customer"].ToString();
                quaper.BKU = dr["Bku"].ToString();
                quaper.Style = dr["Style"].ToString();
                quaper.YYMM = dr["YYMM"].ToString();
             //   quaper.MLevel = dr["MLevel"].ToString();

            //    quaper.MPer = dr["MPer"].ToString();


               // quaper.DefectTotal = dr["Defecttotal"] != DBNull.Value ? int.Parse(dr["Defecttotal"].ToString()) : 0;
                quaper.DefectTypeTotal = dr["TypeCount"] != DBNull.Value ? int.Parse(dr["TypeCount"].ToString()) : 0;
                quaper.ChkTotal = dr["Chktotal"] != DBNull.Value ? int.Parse(dr["Chktotal"].ToString()) : 0;
                quaper.ProductTotal = dr["Producttotal"] != DBNull.Value ? int.Parse(dr["Producttotal"].ToString()) : 0;

                quaper.MasterTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;

                foreach (var item in Dict_Defect)
                {
                    string _s1 = item.Key;
                    string[] valus = item.Value;
                    foreach (DataColumn dc in db.Columns)
                    {
                        if (valus[0] == dc.ColumnName)
                        {
                            int _value =dr[dc.ColumnName] != DBNull.Value ? int.Parse(dr[dc.ColumnName].ToString()) : 0;

                            if (_s1 == "F01")
                                quaper.F01 = _value;
                            if (_s1 == "F02")
                                quaper.F02 = _value;
                            if (_s1 == "F03")
                                quaper.F03 = _value;
                            if (_s1 == "F04")
                                quaper.F04 = _value;
                            if (_s1 == "F05")
                                quaper.F05 = _value;
                            if (_s1 == "F06")
                                quaper.F06 = _value;
                            if (_s1 == "F07")
                                quaper.F07 = _value;
                            if (_s1 == "F08")
                                quaper.F08 = _value;
                            if (_s1 == "F09")
                                quaper.F09 = _value;
                            if (_s1 == "F10")
                                quaper.F10 = _value;
                            if (_s1 == "F11")
                                quaper.F11 = _value;


                        }
                    }
                    
                }




                lstquality.Add(quaper);

                if (!WorkShopList.Contains(_ws))
                {
                    WorkShopList.Add(_ws);
                }


            }

            this.DataSource = lstquality;
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

                xrChkTotal.Text = dr["checktotal"] != DBNull.Value ? dr["checktotal"].ToString() : "";
                xrQty.Text = dr["producttotal"] != DBNull.Value ? dr["producttotal"].ToString() : "";

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
        }




    }
}
