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
    public partial class RptAuditAQL_Sub3 : DevExpress.XtraReports.UI.XtraReport
    {
        DataTable DbSubHeader = new DataTable();
        Dictionary<string, string[]> Dict_Defect = new Dictionary<string, string[]>();
        ArrayList WorkShopList = new ArrayList();

        DataTable DbReport=new DataTable();
        Dictionary<string, int[]> Dict_SumWs = new Dictionary<string, int[]>();
        Dictionary<string, int[]> Dict_SumCust = new Dictionary<string, int[]>();
        string DateRange = "",Fac="";
        int ProdTotal = 0, ChkTotal = 0;

        public RptAuditAQL_Sub3()
        {
            InitializeComponent();
        }

        public RptAuditAQL_Sub3(DataTable dbheader,DataTable reportdata,Dictionary<string,int[]> dict_wssum,Dictionary<string,int[]> dict_custsum,
             Dictionary<string, string[]> _defect_dict,string daterange,int prodtotal,int chktotal,string rtype)
        {
            InitializeComponent();
            DbSubHeader = dbheader;
            DbReport = reportdata;
            BindFields();
            this.bsDetail.DataSource = reportdata;
            Dict_SumWs = dict_wssum;
            Dict_SumCust = dict_custsum;
            Dict_Defect = _defect_dict;
            DateRange = daterange;
            ProdTotal = prodtotal;
            ChkTotal = chktotal;
            string _s1 = "", _s2 = "";
            if (rtype == "1")
            {
                _s1 = "每日離線AQL檢定品質表現報告摘要 -  成衣(主要/次要)暇疵和檢定結果";
                _s2 = "Daily Off - line AQL Audit Quality Performance Summary - Gmts'( Major/Minor) Defects & Audit Result";

            }
            else if (rtype == "2")
            {
                _s1 = "每周離線AQL檢定品質表現報告摘要 -  成衣(主要/次要)暇疵和檢定結果";
                _s2 = "Weekly Off - line AQL Audit Quality Performance Summary - Gmts'( Major/Minor) Defects & Audit Result";
            }
            else
            {
                _s1 = "每月離線AQL檢定品質表現報告摘要 -  成衣(主要/次要)暇疵和檢定結果";
                _s2 = "Monthly Off - line AQL Audit Quality Performance Summary - Gmts'( Major/Minor) Defects & Audit Result";
            }
            xrLabel2.Text = _s1;
            xrLabel1.Text = _s2;

            
        }

      

        private void BindFields()
        {
            //this.xrTableCell35.DataBindings.Add("Text", this.bsDetail, "F01");
            //this.xrTableCell28.DataBindings.Add("Text", this.bsDetail, "F02");

            //this.xrTableCell36.DataBindings.Add("Text", this.bsDetail, "F03");
            //this.xrTableCell22.DataBindings.Add("Text", this.bsDetail, "F04");

            //this.xrTableCell37.DataBindings.Add("Text", this.bsDetail, "F05");
            //this.xrTableCell29.DataBindings.Add("Text", this.bsDetail, "F06");

            //this.xrTableCell38.DataBindings.Add("Text", this.bsDetail, "F07");
            //this.xrTableCell25.DataBindings.Add("Text", this.bsDetail, "F08");

            //this.xrTableCell39.DataBindings.Add("Text", this.bsDetail, "F09");
            //this.xrTableCell30.DataBindings.Add("Text", this.bsDetail, "F10");
            //this.xrTableCell40.DataBindings.Add("Text", this.bsDetail, "F11");


            this.xrTableCell23.DataBindings.Add("Text", this.bsDetail, "Other");
            this.xrTableCell41.DataBindings.Add("Text", this.bsDetail, "ZL");
            this.xrTableCell31.DataBindings.Add("Text", this.bsDetail, "ZJ");

            this.xrTableCell26.DataBindings.Add("Text", this.bsDetail, "ProductTotal");
            this.xrTableCell97.DataBindings.Add("Text", this.bsDetail, "ChkTotal");
            this.xrTableCell87.DataBindings.Add("Text", this.bsDetail, "FailQty");

            this.xrTableCell42.DataBindings.Add("Text", this.bsDetail, "MPer");
           

           // this.xrTableCell51.DataBindings.Add("Text", this.bsDetail, "ProductTotal");

        
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
            xrllDate.Text = DateRange;

            if (DbSubHeader.Rows.Count > 0)
            {
                DataRow dr = DbSubHeader.Rows[0];
                xrCustCount.Text = dr["custtotal"] != DBNull.Value ? dr["custtotal"].ToString() : "";
                xrWKCount.Text = dr["wstotal"] != DBNull.Value ? dr["wstotal"].ToString() : "";
                xrPOs.Text = dr["pototal"] != DBNull.Value ? dr["pototal"].ToString() : "";
              //  xrChkTotal.Text = dr["checktotal"] != DBNull.Value ? dr["checktotal"].ToString() : "";
               // xrQty.Text = dr["producttotal"] != DBNull.Value ? dr["producttotal"].ToString() : "";
                xrChkTotal.Text = ProdTotal.ToString();
                xrQty.Text = ChkTotal.ToString(); 
                
                xrLines.Text = dr["linetotal"] != DBNull.Value ? dr["linetotal"].ToString() : "";
                xrStyles.Text = dr["styletotal"] != DBNull.Value ? dr["styletotal"].ToString() : "";


                xrTc10.Text = dr["Acc1"] != DBNull.Value ? dr["Acc1"].ToString() : "";
                xrTc11.Text = dr["MAcc1"] != DBNull.Value ? dr["MAcc1"].ToString() : "";
                xrTc12.Text = dr["Rej1"] != DBNull.Value ? dr["Rej1"].ToString() : "";

                xrTc20.Text = dr["Acc2"] != DBNull.Value ? dr["Acc2"].ToString() : "";
                xrTc21.Text = dr["MAcc2"] != DBNull.Value ? dr["MAcc2"].ToString() : "";
                xrTc22.Text = dr["Rej2"] != DBNull.Value ? dr["Rej2"].ToString() : "";
                xrTc30.Text = dr["Acc2_Pre"] != DBNull.Value ? dr["Acc2_Pre"].ToString() : "";
                xrTc31.Text = dr["MAcc2_Pre"] != DBNull.Value ? dr["MAcc2_Pre"].ToString() : "";
                xrTc32.Text = dr["Rej2_Pre"] != DBNull.Value ? dr["Rej2_Pre"].ToString() : "";

                xrTc40.Text = dr["Acc3"] != DBNull.Value ? dr["Acc3"].ToString() : "";
                xrTc41.Text = dr["MAcc3"] != DBNull.Value ? dr["MAcc3"].ToString() : "";
                xrTc42.Text = dr["Rej3"] != DBNull.Value ? dr["Rej3"].ToString() : "";
                xrTc50.Text = dr["Acc3_Pre"] != DBNull.Value ? dr["Acc3_Pre"].ToString() : "";
                xrTc51.Text = dr["MAcc3_Pre"] != DBNull.Value ? dr["MAcc3_Pre"].ToString() : "";
                xrTc52.Text = dr["Rej3_Pre"] != DBNull.Value ? dr["Rej3_Pre"].ToString() : "";

                int _ttl = int.Parse(dr["Acc1"].ToString()) + int.Parse(dr["MAcc1"].ToString()) + int.Parse(dr["Rej1"].ToString())
                    + int.Parse(dr["Acc2"].ToString()) + int.Parse(dr["MAcc2"].ToString()) + int.Parse(dr["Rej2"].ToString())
                    + int.Parse(dr["Acc2_Pre"].ToString()) + int.Parse(dr["MAcc2_Pre"].ToString()) + int.Parse(dr["Rej2_Pre"].ToString())
                    + int.Parse(dr["Acc3"].ToString()) + int.Parse(dr["MAcc3"].ToString()) + int.Parse(dr["Rej3"].ToString())
                    + int.Parse(dr["Acc3_Pre"].ToString()) + int.Parse(dr["MAcc3_Pre"].ToString()) + int.Parse(dr["Rej3_Pre"].ToString());

                xrTctTotal.Text = _ttl.ToString();

            }

            xrlPrintDate.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            DataRowView dr = this.GetCurrentRow() as DataRowView;
            if (dr == null)
                return;

            string _typeid = dr["TypeId"].ToString();
            string _wscu = dr["Wscu"].ToString();
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

            int _F01 = dr["F01"] != DBNull.Value ? int.Parse(dr["F01"].ToString()) : 0;
            int _F02 = dr["F02"] != DBNull.Value ? int.Parse(dr["F02"].ToString()) : 0;
            int _F03 = dr["F03"] != DBNull.Value ? int.Parse(dr["F03"].ToString()) : 0;
            int _F04 = dr["F04"] != DBNull.Value ? int.Parse(dr["F04"].ToString()) : 0;
            int _F05 = dr["F05"] != DBNull.Value ? int.Parse(dr["F05"].ToString()) : 0;
            int _F06 = dr["F06"] != DBNull.Value ? int.Parse(dr["F06"].ToString()) : 0;
            int _F07 = dr["F07"] != DBNull.Value ? int.Parse(dr["F07"].ToString()) : 0;
            int _F08 = dr["F08"] != DBNull.Value ? int.Parse(dr["F08"].ToString()) : 0;
            int _F09 = dr["F09"] != DBNull.Value ? int.Parse(dr["F09"].ToString()) : 0;
            int _F10 = dr["F10"] != DBNull.Value ? int.Parse(dr["F10"].ToString()) : 0;
            int _F11 = dr["F11"] != DBNull.Value ? int.Parse(dr["F11"].ToString()) : 0;

            int _MF01 = dr["MF01"] != DBNull.Value ? int.Parse(dr["MF01"].ToString()) : 0;
            int _MF02 = dr["MF02"] != DBNull.Value ? int.Parse(dr["MF02"].ToString()) : 0;
            int _MF03 = dr["MF03"] != DBNull.Value ? int.Parse(dr["MF03"].ToString()) : 0;
            int _MF04 = dr["MF04"] != DBNull.Value ? int.Parse(dr["MF04"].ToString()) : 0;
            int _MF05 = dr["MF05"] != DBNull.Value ? int.Parse(dr["MF05"].ToString()) : 0;
            int _MF06 = dr["MF06"] != DBNull.Value ? int.Parse(dr["MF06"].ToString()) : 0;
            int _MF07 = dr["MF07"] != DBNull.Value ? int.Parse(dr["MF07"].ToString()) : 0;
            int _MF08 = dr["MF08"] != DBNull.Value ? int.Parse(dr["MF08"].ToString()) : 0;
            int _MF09 = dr["MF09"] != DBNull.Value ? int.Parse(dr["MF09"].ToString()) : 0;
            int _MF10 = dr["MF10"] != DBNull.Value ? int.Parse(dr["MF10"].ToString()) : 0;
            int _MF11 = dr["MF11"] != DBNull.Value ? int.Parse(dr["MF11"].ToString()) : 0;

             int _other_ttl = dr["Other"] != DBNull.Value ? int.Parse(dr["Other"].ToString()) : 0;
             int _mother_ttl = dr["OtherMain"] != DBNull.Value ? int.Parse(dr["OtherMain"].ToString()) : 0;

             int _fail_ttl = dr["FailQty"] != DBNull.Value ? int.Parse(dr["FailQty"].ToString()) : 0;
             int _mfail_ttl = dr["MFailQty"] != DBNull.Value ? int.Parse(dr["MFailQty"].ToString()) : 0;
            
            
            this.xrTableCell35.Text =GetDispStr(_F01,_MF01);
            this.xrTableCell28.Text =GetDispStr(_F02,_MF02);

            this.xrTableCell36.Text =GetDispStr(_F03,_MF03);
            this.xrTableCell22.Text =GetDispStr(_F04,_MF04);

            this.xrTableCell37.Text =GetDispStr(_F05,_MF05);
            this.xrTableCell29.Text =GetDispStr(_F06,_MF06);

            this.xrTableCell38.Text =GetDispStr(_F07,_MF07);
            this.xrTableCell25.Text =GetDispStr(_F08,_MF08);

            this.xrTableCell39.Text = GetDispStr(_F09, _MF09);
            this.xrTableCell30.Text = GetDispStr(_F10, _MF10);
            this.xrTableCell40.Text = GetDispStr(_F11, _MF11);

            //other field
            this.xrTableCell23.Text = GetDispStr(_other_ttl, _mother_ttl);
            //rej field
            this.xrTableCell87.Text = GetDispStr(_fail_ttl, _mfail_ttl);
        }

        private string GetDispStr(int ttl,int mttl)
        {
            string _retstr = "";
            if (ttl == 0)
                _retstr = "/";
            else if (mttl == 0)
                _retstr = "/ " + (ttl==0?"":ttl.ToString());
            else if (mttl == ttl)
                _retstr = mttl.ToString() + " /";
            else
                _retstr = mttl.ToString() + " / " + (ttl - mttl).ToString();
            return _retstr;
        
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int i=1;
            foreach (var item in Dict_SumWs)
            {
                if (i > 8)
                    break;

                string _ws = item.Key;
                int _acc = item.Value[0];
                int _rej = item.Value[1];
                int _ttl = _acc + _rej;

                if (i==1)
                {
                    xrWs1.Text = _ws;
                    xrWAcc1.Text = _acc.ToString(); xrWRej1.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 /_ttl);
                    xrPer11.Text = String.Format("{0:F}", aa)+"%";
                    xrWH11.Text="Ws"; xrWH12.Text = "ACC"; xrWH13.Text = "REJ";
                        
                }
                else if (i == 2)
                {
                    xrWs2.Text = _ws;
                    xrWAcc2.Text = _acc.ToString(); xrWRej2.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 /_ttl);
                    xrPer12.Text = String.Format("{0:F}", aa) + "%";
                    xrWH21.Text = "Ws"; xrWH22.Text = "ACC"; xrWH23.Text = "REJ";
                }
                else if (i == 3)
                {
                    xrWs3.Text = _ws;
                    xrWAcc3.Text = _acc.ToString(); xrWRej3.Text = _rej.ToString();
                    double aa = _ttl== 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer13.Text = String.Format("{0:F}", aa) + "%";
                    xrWH31.Text = "Ws"; xrWH32.Text = "ACC"; xrWH33.Text = "REJ";
                }
                else if (i == 4)
                {
                    xrWs4.Text = _ws;
                    xrWAcc4.Text = _acc.ToString(); xrWRej4.Text = _rej.ToString();
                    double aa = _ttl== 0 ? 0 : Convert.ToDouble(_rej * 100.00 /_ttl);
                    xrPer14.Text = String.Format("{0:F}", aa) + "%";
                    xrWH41.Text = "Ws"; xrWH42.Text = "ACC"; xrWH43.Text = "REJ";
                }
                else if (i == 5)
                {
                    xrWs5.Text = _ws;
                    xrWAcc5.Text = _acc.ToString(); xrWRej5.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer15.Text = String.Format("{0:F}", aa) + "%";
                    xrWH51.Text = "Ws"; xrWH52.Text = "ACC"; xrWH53.Text = "REJ";
                }
                else if (i == 6)
                {
                    xrWs6.Text = _ws;
                    xrWAcc6.Text = _acc.ToString(); xrWRej6.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer16.Text = String.Format("{0:F}", aa) + "%";
                    xrWH61.Text = "Ws"; xrWH62.Text = "ACC"; xrWH63.Text = "REJ";
                }
                else if (i == 7)
                {
                    xrWs7.Text = _ws;
                    xrWAcc7.Text = _acc.ToString(); xrWRej7.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer17.Text = String.Format("{0:F}", aa) + "%";
                    xrWH71.Text = "Ws"; xrWH72.Text = "ACC"; xrWH73.Text = "REJ";
                }
                else if (i == 8)
                {
                    xrWs8.Text = _ws;
                    xrWAcc8.Text = _acc.ToString(); xrWRej8.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer18.Text = String.Format("{0:F}", aa) + "%";
                    xrWH81.Text = "Ws"; xrWH82.Text = "ACC"; xrWH83.Text = "REJ";
                }
                i++;
            
            }

            //CUST 
            i = 1;

            foreach (var item in Dict_SumCust)
            {
                if (i > 8)
                    break;

                string _cust = item.Key;
                int _acc = item.Value[0];
                int _rej = item.Value[1];
                int _ttl = _acc + _rej;

                if (i == 1)
                {
                    xrCust1.Text = _cust;
                    xrCAcc1.Text = _acc.ToString(); xrCRej1.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer21.Text = String.Format("{0:F}", aa) + "%";
                    xrCH11.Text = "Cust"; xrCH12.Text = "ACC"; xrCH13.Text = "REJ";

                }
                else if (i == 2)
                {
                    xrCust2.Text = _cust;
                    xrCAcc2.Text = _acc.ToString(); xrCRej2.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer22.Text = String.Format("{0:F}", aa) + "%";
                    xrCH21.Text = "Cust"; xrCH22.Text = "ACC"; xrCH23.Text = "REJ";
                }
                else if (i == 3)
                {
                    xrCust3.Text = _cust;
                    xrCAcc3.Text = _acc.ToString(); xrCRej3.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer23.Text = String.Format("{0:F}", aa) + "%";
                    xrCH31.Text = "Cust"; xrCH32.Text = "ACC"; xrCH33.Text = "REJ";
                }
                else if (i == 4)
                {
                    xrCust4.Text = _cust;
                    xrCAcc4.Text = _acc.ToString(); xrCRej4.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer24.Text = String.Format("{0:F}", aa) + "%";
                    xrCH41.Text = "Cust"; xrCH42.Text = "ACC"; xrCH43.Text = "REJ";
                }
                else if (i == 5)
                {
                    xrCust5.Text = _cust;
                    xrCAcc5.Text = _acc.ToString(); xrCRej5.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer25.Text = String.Format("{0:F}", aa) + "%";
                    xrCH51.Text = "Cust"; xrCH52.Text = "ACC"; xrCH53.Text = "REJ";
                }
                else if (i == 6)
                {
                    xrCust6.Text = _cust;
                    xrCAcc6.Text = _acc.ToString(); xrCRej6.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer26.Text = String.Format("{0:F}", aa) + "%";
                    xrCH61.Text = "Cust"; xrCH62.Text = "ACC"; xrCH63.Text = "REJ";
                }
                else if (i == 7)
                {
                    xrCust7.Text = _cust;
                    xrCAcc7.Text = _acc.ToString(); xrCRej7.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer27.Text = String.Format("{0:F}", aa) + "%";
                    xrCH71.Text = "Cust"; xrCH72.Text = "ACC"; xrCH73.Text = "REJ";
                }
                else if (i == 8)
                {
                    xrCust8.Text = _cust;
                    xrCAcc8.Text = _acc.ToString(); xrCRej8.Text = _rej.ToString();
                    double aa = _ttl == 0 ? 0 : Convert.ToDouble(_rej * 100.00 / _ttl);
                    xrPer28.Text = String.Format("{0:F}", aa) + "%";
                    xrCH81.Text = "Cust"; xrCH82.Text = "ACC"; xrCH83.Text = "REJ";
                }
                i++;

            }







        }

        private void RptAuditAQL_Sub_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }






    }
}
