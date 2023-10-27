using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Linq;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptFullAuditOnLine_AQL21 : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", CurWorkshop = "", Flag = "",Rtype = "",WoList="",CustomerList="",WsList="",LineList="";

        //int SumType = 0, DefectTotal = 0, ProductTotal = 0, CheckTotal = 0, WeekNum = 0;
        int SumType = 0, DefectTotal = 0, ProductTotal = 0, CheckTotal = 0; string  WeekNum = "0";

        DataTable DbHeader, DbDetail, DbDefect, DbMainDefect, DbSub,DbTimes_Cust,DbTimes_Ws;
        Dictionary<string, string[]> Dict_Defect = new Dictionary<string, string[]>();
        Dictionary<string, int[]> Dict_WorkshopSum = new Dictionary<string, int[]>();
        Dictionary<string, int[]> Dict_CustomerSum = new Dictionary<string, int[]>();

        ArrayList WorkShopList = new ArrayList();
        ArrayList CustList = new ArrayList();
        RptAuditAQL_Sub21 _subRpt;
        

        public RptFullAuditOnLine_AQL21()
        {
            InitializeComponent();
          


        }

        public RptFullAuditOnLine_AQL21(string fac, int sumtype, string startdate, string enddate, string flag, string daterange, string rtype, string custlist, string wolist, string wslist, string linelist, string  wknum)//int wknum)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000015");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            Factory = fac;
            StartDate = startdate;
            EndDate = enddate;
            // Role = role;
            Flag = flag;
            SumType = sumtype;
            xrllDate.Text = daterange;
            WoList = wolist;
            CustomerList = custlist;
            WsList = wslist;
            LineList = linelist;
            WeekNum = wknum;

            string _s1 = "",_s2="";
            Rtype = rtype;
            if (rtype == "1")
            {
                _s1 = "每日AQL審定品質表現報告摘要 -  成衣(主要/次要)暇疵和審定結果";
                _s2 = "Daily AQL Audit Quality Performance Summary - Gmts'( Major/Minor) Defects & Audit Result";

            }
            else if (rtype == "2")
            {
                _s1 = "W"+WeekNum.ToString()+"周AQL審定品質表現報告摘要 -  成衣(主要/次要)暇疵和審定結果";
                _s2 = "Weekly AQL Audit Quality Performance Summary - Gmts'( Major/Minor) Defects & Audit Result";
            }
            else
            {
                _s1 = "每月AQL審定品質表現報告摘要 -  成衣(主要/次要)暇疵和審定結果";
                _s2 = "Monthly AQL Audit Quality Performance Summary - Gmts'( Major/Minor) Defects & Audit Result";
            }
            xrLabel2.Text = _s1;
            xrLabel1.Text = _s2;
            PrepareData();
            
        }



        public void PrepareData()
        {
            //DataSet ds = SqlDataHelper.GetAuditQuality_AQL(Factory, SumType, StartDate, EndDate, Flag);
            DataSet ds = SqlDataHelper.GetAuditQuality_AQL_New(Factory, SumType, StartDate, EndDate, Flag,CustomerList,WoList,WsList,LineList);
            DbHeader = ds.Tables[0];
            DbDefect = ds.Tables[1];
            DbDetail = ds.Tables[2];
            DbMainDefect = ds.Tables[3];
            DbTimes_Cust = ds.Tables[4];
            DbTimes_Ws = ds.Tables[5];

            //DataColumn colsort = new DataColumn();
            //colsort.DataType = System.Type.GetType("System.Int");
            //colsort.ColumnName = "XH";
            //colsort.DefaultValue = 0;
            //db.Columns.Add(colsort);

            WorkShopList.Clear();
            List<AuditOffLine_AQL> lstquality = new List<AuditOffLine_AQL>();
            int m = 1;
            //get all defect code
            if (DbDetail.Columns.Count > 18)
            {
                for (int j = 19; j < DbDetail.Columns.Count; j++)
                {
                    // DefectInfo bo = new DefectInfo();
                    //  bo.DefectCode = db.Columns[j].ColumnName;
                    //  bo.DefectQty = dr[j] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;
                    string _col = DbDetail.Columns[j].ColumnName;
                    string _desc = DbDefect.Select("phdefectcode='" + _col + "'")[0][1].ToString();
                    string _key = m < 10 ? "F0" + m.ToString() : "F" + m.ToString();
                    string[] aa = new string[] { _col, _desc };
                    if (!Dict_Defect.ContainsKey(_key))
                    {
                        Dict_Defect.Add(_key, aa);
                        m++;
                    }
                }
            }


            for (int i = 0; i < DbDetail.Rows.Count; i++)
            {
                DataRow dr = DbDetail.Rows[i];
                AuditOffLine_AQL quaper = new AuditOffLine_AQL();
                quaper.SortId = 0;
                quaper.MasterId = dr["MasterId"].ToString();
                quaper.Factory = dr["Factory"].ToString();
                string _ws = dr["Workshop"].ToString(); ;
                quaper.Workshop = _ws;
                quaper.Line = dr["Line"].ToString();
                quaper.Customer = dr["Customer"].ToString();
                quaper.BKU = dr["Bku"].ToString();
                quaper.Style = dr["Style"].ToString();
                quaper.YYMM = dr["YYMM"].ToString();

                quaper.AuditType = dr["AuditType"].ToString();
                quaper.AuditTimes = dr["AuditTimes"].ToString();
                quaper.AuditResult = dr["AuditResult"].ToString();

                quaper.FailQty = dr["FailQty"] != DBNull.Value ? int.Parse(dr["FailQty"].ToString()) : 0;
                quaper.MFailQty = dr["MainFailQty"] != DBNull.Value ? int.Parse(dr["MainFailQty"].ToString()) : 0;

                quaper.MPer = dr["MPer"].ToString();


                quaper.DefectTotal = dr["Defecttotal"] != DBNull.Value ? int.Parse(dr["Defecttotal"].ToString()) : 0;
                quaper.DefectTypeTotal = dr["TypeCount"] != DBNull.Value ? int.Parse(dr["TypeCount"].ToString()) : 0;
                quaper.ChkTotal = dr["Chktotal"] != DBNull.Value ? int.Parse(dr["Chktotal"].ToString()) : 0;
                quaper.ProductTotal = dr["Producttotal"] != DBNull.Value ? int.Parse(dr["Producttotal"].ToString()) : 0;

                quaper.MasterTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;

               // quaper.OtherTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;

                foreach (var item in Dict_Defect)
                {
                    string _s1 = item.Key;
                    string[] valus = item.Value;
                    foreach (DataColumn dc in DbDetail.Columns)
                    {
                        if (valus[0] == dc.ColumnName)
                        {
                            int _value =dr[dc.ColumnName] != DBNull.Value ? int.Parse(dr[dc.ColumnName].ToString()) : 0;
                           // string _condition ="MasterId='"+quaper.MasterId+"' and "+dc.ColumnName
                            DataRow[] _rows =DbMainDefect.Select("MasterId='"+quaper.MasterId+"'");
                            int _mdefqty = 0, _mfailqty = 0,_mdefqty_other=0;
                            if (_rows != null && _rows.Length > 0)
                            {
                                _mdefqty = _rows[0][dc.ColumnName] != DBNull.Value ? int.Parse(_rows[0][dc.ColumnName].ToString()) : 0;
                                _mfailqty = _rows[0]["OtherDefectQty"] != DBNull.Value ? int.Parse(_rows[0]["OtherDefectQty"].ToString()) : 0;
                                _mdefqty_other = _rows[0]["OtherDefectQty_Main"] != DBNull.Value ? int.Parse(_rows[0]["OtherDefectQty_Main"].ToString()) : 0;
                            }

                            quaper.OtherTotal = _mfailqty;
                            quaper.OtherMainTotal = _mdefqty_other;

                            if (_s1 == "F01")
                            {                                
                                quaper.F01 = _value;
                                quaper.MF01 = _mdefqty;            
                            }
                            if (_s1 == "F02")
                            {
                                quaper.F02 = _value;
                                quaper.MF02 = _mdefqty;                     
                            }
                            if (_s1 == "F03")
                            {
                                quaper.F03 = _value;
                                quaper.MF03 = _mdefqty;                     
                            }
                            if (_s1 == "F04")
                            {
                                quaper.F04 = _value;
                                quaper.MF04 = _mdefqty; 
                            }
                            if (_s1 == "F05")
                            {
                                quaper.F05 = _value;
                                quaper.MF05 = _mdefqty; 
                            }
                            if (_s1 == "F06")
                            {
                                quaper.F06 = _value;
                                quaper.MF06 = _mdefqty; 
                            }
                            if (_s1 == "F07")
                            {
                                quaper.F07 = _value;
                                quaper.MF07 = _mdefqty; 
                            }
                            if (_s1 == "F08")
                            {
                                quaper.F08 = _value;
                                quaper.MF08 = _mdefqty; 
                            }
                            if (_s1 == "F09")
                            {
                                quaper.F09 = _value;
                                quaper.MF09 = _mdefqty; 
                            }
                            if (_s1 == "F10")
                            {
                                quaper.F10 = _value;
                                quaper.MF10 = _mdefqty; 
                            }
                            if (_s1 == "F11")
                            {
                                quaper.F11 = _value;
                                quaper.MF11 = _mdefqty; 
                            }


                        }
                    }
                    
                }




                lstquality.Add(quaper);

                if (!WorkShopList.Contains(_ws))
                {
                    WorkShopList.Add(_ws);
                }

                if (!CustList.Contains(quaper.Customer))
                {
                    CustList.Add(quaper.Customer);
                }


            }

            this.bsDetail.DataSource = lstquality;
            GetCheckTimes_ByCust(DbTimes_Cust);
            GetCheckTimes_ByWs(DbTimes_Ws);

            //獲取子報表數據源
            DbSub = GetSubRptData(lstquality);
            _subRpt = new RptAuditAQL_Sub21(DbHeader, DbSub, Dict_WorkshopSum, Dict_CustomerSum, Dict_Defect, xrllDate.Text.Trim(), ProdTotal, ChkTotal, Rtype,WeekNum);
            _subRpt.ReportHeaderObject.Visible = false;
            _subRpt.GetPageHeader.Visible=false;
          
            xrSubreport1.ReportSource = _subRpt;
            //DbSub = GetSubRptData(lstquality);

        }



        int ProdTotal = 0, ChkTotal = 0;

        private void GetCheckTimes_ByCust(DataTable dbcust)
        {
            for (int i = 0; i < dbcust.Rows.Count; i++)
            {
                DataRow dr = dbcust.Rows[i];
                string _cust =dr["customer"].ToString();
                int _accsum = dr["ACCTimes"] != DBNull.Value ? int.Parse(dr["ACCTimes"].ToString()) : 0;
                int _rejsum = dr["RejTimes"] != DBNull.Value ? int.Parse(dr["RejTimes"].ToString()) : 0;
                Dict_CustomerSum.Add(_cust, new int[] { _accsum, _rejsum });
            }
        
        }

        private void GetCheckTimes_ByWs(DataTable dbws)
        {
            for (int i = 0; i < dbws.Rows.Count; i++)
            {
                DataRow dr = dbws.Rows[i];
                string _ws = dr["Workshop"].ToString();
                int _accsum = dr["ACCTimes"] != DBNull.Value ? int.Parse(dr["ACCTimes"].ToString()) : 0;
                int _rejsum = dr["RejTimes"] != DBNull.Value ? int.Parse(dr["RejTimes"].ToString()) : 0;
                Dict_WorkshopSum.Add(_ws, new int[] { _accsum, _rejsum });
            }

        }

        private DataTable GetSubRptData(List<AuditOffLine_AQL> masterlist)
        {
            DataTable dtsub = CreateSchema();
            for (int m = 0; m < WorkShopList.Count;m++)
            {
               string _wk =WorkShopList[m].ToString();
               int _F01 = (from aa in masterlist where aa.Workshop == _wk select aa.F01).Sum();
               int _F02 = (from aa in masterlist where aa.Workshop == _wk select aa.F02).Sum();
               int _F03 = (from aa in masterlist where aa.Workshop == _wk select aa.F03).Sum();
               int _F04 = (from aa in masterlist where aa.Workshop == _wk select aa.F04).Sum();
               int _F05 = (from aa in masterlist where aa.Workshop == _wk select aa.F05).Sum();
               int _F06 = (from aa in masterlist where aa.Workshop == _wk select aa.F06).Sum();
               int _F07 = (from aa in masterlist where aa.Workshop == _wk select aa.F07).Sum();
               int _F08 = (from aa in masterlist where aa.Workshop == _wk select aa.F08).Sum();
               int _F09 = (from aa in masterlist where aa.Workshop == _wk select aa.F09).Sum();
               int _F10 = (from aa in masterlist where aa.Workshop == _wk select aa.F10).Sum();
               int _F11 = (from aa in masterlist where aa.Workshop == _wk select aa.F11).Sum();

               int _MF01 = (from aa in masterlist where aa.Workshop == _wk select aa.MF01).Sum();
               int _MF02 = (from aa in masterlist where aa.Workshop == _wk select aa.MF02).Sum();
               int _MF03 = (from aa in masterlist where aa.Workshop == _wk select aa.MF03).Sum();
               int _MF04 = (from aa in masterlist where aa.Workshop == _wk select aa.MF04).Sum();
               int _MF05 = (from aa in masterlist where aa.Workshop == _wk select aa.MF05).Sum();
               int _MF06 = (from aa in masterlist where aa.Workshop == _wk select aa.MF06).Sum();
               int _MF07 = (from aa in masterlist where aa.Workshop == _wk select aa.MF07).Sum();
               int _MF08 = (from aa in masterlist where aa.Workshop == _wk select aa.MF08).Sum();
               int _MF09 = (from aa in masterlist where aa.Workshop == _wk select aa.MF09).Sum();
               int _MF10 = (from aa in masterlist where aa.Workshop == _wk select aa.MF10).Sum();
               int _MF11 = (from aa in masterlist where aa.Workshop == _wk select aa.MF11).Sum();


               int _othermainttl = (from aa in masterlist where aa.Workshop == _wk select aa.OtherMainTotal).Sum();
               int _mfailttl = (from aa in masterlist where aa.Workshop == _wk select aa.MFailQty).Sum();

               int _otherttl = (from aa in masterlist where aa.Workshop == _wk select aa.OtherTotal).Sum();

             //  int _other = (from aa in masterlist where aa.Workshop == _wk select aa.OtherTotal).Sum();
               int _typettl = (from aa in masterlist where aa.Workshop == _wk select aa.DefectTypeTotal).Sum();
               int _defecttotal = (from aa in masterlist where aa.Workshop == _wk select aa.DefectTotal).Sum();
               int _checktotal = (from aa in masterlist where aa.Workshop == _wk select aa.ChkTotal).Sum();
               int _prodtotal = (from aa in masterlist where aa.Workshop == _wk select aa.ProductTotal).Sum();

               int _failqty = (from aa in masterlist where aa.Workshop == _wk select aa.FailQty).Sum();

               int _accsum = (from aa in masterlist where aa.Workshop == _wk && aa.AuditResult == "P" select aa).Count();
               int _rejsum = (from aa in masterlist where aa.Workshop == _wk && aa.AuditResult == "F" select aa).Count();

            
               ProdTotal = ProdTotal + _prodtotal;
               ChkTotal = ChkTotal + _checktotal;

            //   Dict_WorkshopSum.Add(_wk, new int[] { _accsum, _rejsum });

               DataRow newrow = dtsub.Rows.Add();
               newrow["TypeId"] = "100"; newrow["Wscu"] = _wk;
               newrow["MF01"] = _MF01; newrow["MF02"] = _MF02; newrow["MF03"] = _MF03; newrow["MF04"] = _MF04; newrow["MF05"] = _MF05;
               newrow["MF06"] = _MF06; newrow["MF07"] = _MF07; newrow["MF08"] = _MF08; newrow["MF09"] = _MF09; newrow["MF10"] = _MF10; newrow["MF11"] = _MF11;
               
               newrow["F01"] = _F01; newrow["F02"] = _F02; newrow["F03"] = _F03; newrow["F04"] = _F04; newrow["F05"] = _F05;
               newrow["F06"] = _F06; newrow["F07"] = _F07; newrow["F08"] = _F08; newrow["F09"] = _F09; newrow["F10"] = _F10; newrow["F11"] = _F11;                 
                                

               newrow["ZL"] = _typettl;

               int _zj = _MF01 + _MF02 + _MF03 + _MF04 + _MF05 + _MF06 + _MF07 + _MF08 + _MF09 + _MF10 + _MF11 + _othermainttl;  
               newrow["ZJ"] = _zj;  
                newrow["ChkTotal"] = _checktotal; newrow["ProductTotal"] = _prodtotal;
               newrow["FailQty"] = _failqty; newrow["MFailQty"] = _mfailttl;


               string _mper = String.Format("{0:F}", _zj * 100.00 / _checktotal);
               newrow["MPer"] = _mper;

               newrow["Other"] = _otherttl; //_defecttotal - _F01 - _F02 - _F03 - _F04 - _F05 - _F06 - _F07 - _F08 - _F09 - _F10 - _F11;
               newrow["OtherMain"] = _othermainttl;

             //  dtsub.Rows.Add(newrow);

            }

            //所有車間合計行
            if (dtsub.Rows.Count > 0)
            {
                DataRow newrow = dtsub.NewRow();
               newrow["TypeId"] = "111"; newrow["Wscu"] = "";

               int _F01 = (from aa in masterlist  select aa.F01).Sum();
               int _F02 = (from aa in masterlist  select aa.F02).Sum();
               int _F03 = (from aa in masterlist  select aa.F03).Sum();
               int _F04 = (from aa in masterlist  select aa.F04).Sum();
               int _F05 = (from aa in masterlist  select aa.F05).Sum();
               int _F06 = (from aa in masterlist  select aa.F06).Sum();
               int _F07 = (from aa in masterlist  select aa.F07).Sum();
               int _F08 = (from aa in masterlist  select aa.F08).Sum();
               int _F09 = (from aa in masterlist  select aa.F09).Sum();
               int _F10 = (from aa in masterlist  select aa.F10).Sum();
               int _F11 = (from aa in masterlist  select aa.F11).Sum();


               int _MF01 = (from aa in masterlist  select aa.MF01).Sum();
               int _MF02 = (from aa in masterlist  select aa.MF02).Sum();
               int _MF03 = (from aa in masterlist  select aa.MF03).Sum();
               int _MF04 = (from aa in masterlist  select aa.MF04).Sum();
               int _MF05 = (from aa in masterlist  select aa.MF05).Sum();
               int _MF06 = (from aa in masterlist  select aa.MF06).Sum();
               int _MF07 = (from aa in masterlist  select aa.MF07).Sum();
               int _MF08 = (from aa in masterlist  select aa.MF08).Sum();
               int _MF09 = (from aa in masterlist  select aa.MF09).Sum();
               int _MF10 = (from aa in masterlist  select aa.MF10).Sum();
               int _MF11 = (from aa in masterlist  select aa.MF11).Sum();

               int _othermainttl = (from aa in masterlist  select aa.OtherMainTotal).Sum();

               int _otherttl = (from aa in masterlist select aa.OtherTotal).Sum();

               int _mfailttl = (from aa in masterlist select aa.MFailQty).Sum();

              // int _other = (from aa in masterlist select aa.OtherTotal).Sum();
               int _typettl = (from aa in masterlist select aa.DefectTypeTotal).Sum();
               int _defecttotal = (from aa in masterlist select aa.DefectTotal).Sum();


               int _checktotal = (from aa in masterlist  select aa.ChkTotal).Sum();
               int _prodtotal = (from aa in masterlist select aa.ProductTotal).Sum();
               int _failtotal = (from aa in masterlist select aa.FailQty).Sum();
      


               newrow["F01"] = _F01; newrow["F02"] = _F02; newrow["F03"] = _F03; newrow["F04"] = _F04; newrow["F05"] = _F05;
               newrow["F06"] = _F06; newrow["F07"] = _F07; newrow["F08"] = _F08; newrow["F09"] = _F09; newrow["F10"] = _F10; newrow["F11"] = _F11;

               newrow["MF01"] = _MF01; newrow["MF02"] = _MF02; newrow["MF03"] = _MF03; newrow["MF04"] = _MF04; newrow["MF05"] = _MF05;
               newrow["MF06"] = _MF06; newrow["MF07"] = _MF07; newrow["MF08"] = _MF08; newrow["MF09"] = _MF09; newrow["MF10"] = _MF10; newrow["MF11"] = _MF11;

               newrow["ZL"] = _typettl; 
                
                //newrow["ZJ"] = _defecttotal; 

               int _zj = _MF01 + _MF02 + _MF03 + _MF04 + _MF05 + _MF06 + _MF07 + _MF08 + _MF09 + _MF10 + _MF11 + _othermainttl;
               newrow["ZJ"] = _zj;
                
                newrow["ChkTotal"] = _checktotal; newrow["ProductTotal"] = _prodtotal;
               newrow["FailQty"] = _failtotal;

               string _mper = String.Format("{0:F}", _zj * 100.00 / _checktotal);

                newrow["MPer"] = _mper;
               newrow["MFailQty"] = _mfailttl;
               newrow["OtherMain"] = _othermainttl;

               newrow["Other"] = _otherttl;  //_defecttotal - _F01 - _F02 - _F03 - _F04 - _F05 - _F06 - _F07 - _F08 - _F09 - _F10 - _F11;

               dtsub.Rows.Add(newrow);

                // by customer summary total:same as by workshop,so add here
               DataRow newrow1 = dtsub.NewRow();
               newrow1["TypeId"] = "222"; newrow1["Wscu"] = "";
               newrow1["F01"] = _F01; newrow1["F02"] = _F02; newrow1["F03"] = _F03; newrow1["F04"] = _F04; newrow1["F05"] = _F05;
               newrow1["F06"] = _F06; newrow1["F07"] = _F07; newrow1["F08"] = _F08; newrow1["F09"] = _F09; newrow1["F10"] = _F10; newrow1["F11"] = _F11;

               newrow1["MF01"] = _MF01; newrow1["MF02"] = _MF02; newrow1["MF03"] = _MF03; newrow1["MF04"] = _MF04; newrow1["MF05"] = _MF05;
               newrow1["MF06"] = _MF06; newrow1["MF07"] = _MF07; newrow1["MF08"] = _MF08; newrow1["MF09"] = _MF09; newrow1["MF10"] = _MF10; newrow1["MF11"] = _MF11;
               newrow1["Other"] = _otherttl; 
                newrow1["ZL"] = _typettl; 
                //newrow1["ZJ"] = _defecttotal;

               // int _zj = _MF01 + _MF02 + _MF03 + _MF04 + _MF05 + _MF06 + _MF07 + _MF08 + _MF09 + _MF10 + _MF11 + _othermainttl;
               
                newrow1["ZJ"] = _zj;

                newrow1["ChkTotal"] = _checktotal; newrow1["ProductTotal"] = _prodtotal;
                newrow1["FailQty"] = _failtotal;

               // string _mper = String.Format("{0:F}", _zj * 100.00 / _checktotal);
                newrow1["MPer"] = _mper;
              

                newrow1["MFailQty"] = _mfailttl;
                newrow1["OtherMain"] = _othermainttl;

               dtsub.Rows.Add(newrow1);
              
            }


            //summary data of by customer generate
            for (int m = 0; m < CustList.Count; m++)
            {
                string _cust = CustList[m].ToString();
                int _F01 = (from aa in masterlist where aa.Customer == _cust select aa.F01).Sum();
                int _F02 = (from aa in masterlist where aa.Customer == _cust select aa.F02).Sum();
                int _F03 = (from aa in masterlist where aa.Customer == _cust select aa.F03).Sum();
                int _F04 = (from aa in masterlist where aa.Customer == _cust select aa.F04).Sum();
                int _F05 = (from aa in masterlist where aa.Customer == _cust select aa.F05).Sum();
                int _F06 = (from aa in masterlist where aa.Customer == _cust select aa.F06).Sum();
                int _F07 = (from aa in masterlist where aa.Customer == _cust select aa.F07).Sum();
                int _F08 = (from aa in masterlist where aa.Customer == _cust select aa.F08).Sum();
                int _F09 = (from aa in masterlist where aa.Customer == _cust select aa.F09).Sum();
                int _F10 = (from aa in masterlist where aa.Customer == _cust select aa.F10).Sum();
                int _F11 = (from aa in masterlist where aa.Customer == _cust select aa.F11).Sum();

                int _MF01 = (from aa in masterlist where aa.Customer == _cust select aa.MF01).Sum();
                int _MF02 = (from aa in masterlist where aa.Customer == _cust select aa.MF02).Sum();
                int _MF03 = (from aa in masterlist where aa.Customer == _cust select aa.MF03).Sum();
                int _MF04 = (from aa in masterlist where aa.Customer == _cust select aa.MF04).Sum();
                int _MF05 = (from aa in masterlist where aa.Customer == _cust select aa.MF05).Sum();
                int _MF06 = (from aa in masterlist where aa.Customer == _cust select aa.MF06).Sum();
                int _MF07 = (from aa in masterlist where aa.Customer == _cust select aa.MF07).Sum();
                int _MF08 = (from aa in masterlist where aa.Customer == _cust select aa.MF08).Sum();
                int _MF09 = (from aa in masterlist where aa.Customer == _cust select aa.MF09).Sum();
                int _MF10 = (from aa in masterlist where aa.Customer == _cust select aa.MF10).Sum();
                int _MF11 = (from aa in masterlist where aa.Customer == _cust select aa.MF11).Sum();


                int _othermainttl = (from aa in masterlist where aa.Customer == _cust select aa.OtherMainTotal).Sum();
                int _otherttl = (from aa in masterlist where aa.Customer == _cust select aa.OtherTotal).Sum();

                int _mfailttl = (from aa in masterlist where aa.Customer == _cust select aa.MFailQty).Sum();

               // int _other = (from aa in masterlist where aa.Customer == _cust select aa.OtherTotal).Sum();
                int _typettl = (from aa in masterlist where aa.Customer == _cust select aa.DefectTypeTotal).Sum();
                int _defecttotal = (from aa in masterlist where aa.Customer == _cust select aa.DefectTotal).Sum();
                int _checktotal = (from aa in masterlist where aa.Customer == _cust select aa.ChkTotal).Sum();
                int _prodtotal = (from aa in masterlist where aa.Customer == _cust select aa.ProductTotal).Sum();
                int _failtotal = (from aa in masterlist where aa.Customer == _cust select aa.FailQty).Sum();

                int _accsum = (from aa in masterlist where aa.Customer == _cust && aa.AuditResult == "P" select aa).Count();
                int _rejsum = (from aa in masterlist where aa.Customer == _cust && aa.AuditResult == "F" select aa).Count();

              

             //   Dict_CustomerSum.Add(_cust, new int[] { _accsum, _rejsum });

                DataRow newrow = dtsub.NewRow();
                newrow["TypeId"] = "200"; newrow["Wscu"] = _cust;
                newrow["F01"] = _F01; newrow["F02"] = _F02; newrow["F03"] = _F03; newrow["F04"] = _F04; newrow["F05"] = _F05;
                newrow["F06"] = _F06; newrow["F07"] = _F07; newrow["F08"] = _F08; newrow["F09"] = _F09; newrow["F10"] = _F10; newrow["F11"] = _F11;


                newrow["MF01"] = _MF01; newrow["MF02"] = _MF02; newrow["MF03"] = _MF03; newrow["MF04"] = _MF04; newrow["MF05"] = _MF05;
                newrow["MF06"] = _MF06; newrow["MF07"] = _MF07; newrow["MF08"] = _MF08; newrow["MF09"] = _MF09; newrow["MF10"] = _MF10; newrow["MF11"] = _MF11;

                //newrow["Other"]=_other;
                newrow["ZL"] = _typettl; 
                //newrow["ZJ"] = _defecttotal; 

                int _zj = _MF01 + _MF02 + _MF03 + _MF04 + _MF05 + _MF06 + _MF07 + _MF08 + _MF09 + _MF10 + _MF11 + _othermainttl;
                newrow["ZJ"] = _zj;
                
                newrow["ChkTotal"] = _checktotal; newrow["ProductTotal"] = _prodtotal;
                newrow["FailQty"] = _failtotal;

                string _cper = String.Format("{0:F}", _zj * 100.00 / _checktotal);
                newrow["MPer"] = _cper;
                newrow["Other"] = _otherttl; // _defecttotal - _F01 - _F02 - _F03 - _F04 - _F05 - _F06 - _F07 - _F08 - _F09 - _F10 - _F11;
                newrow["MFailQty"] = _mfailttl;
                newrow["OtherMain"] = _othermainttl;

                dtsub.Rows.Add(newrow);
            }

            return dtsub;
               
        }

        // schema of sub report data 
        private DataTable CreateSchema()
        {

            DataTable dbsub = new DataTable();
            DataColumn colType = new DataColumn();
            colType.DataType = System.Type.GetType("System.String");
            colType.ColumnName = "TypeId"; //ws summary or customer summary?
          //  coltype.DefaultValue = 0;

            DataColumn colWKCU = new DataColumn();
            colWKCU.DataType = System.Type.GetType("System.String");
            colWKCU.ColumnName = "Wscu"; //工場代號或客戶代號

            DataColumn colWorkShop = new DataColumn();
            colWorkShop.DataType = System.Type.GetType("System.String");
            colWorkShop.ColumnName = "WorkShop"; //工場代號

          
            DataColumn colF01 = new DataColumn();
            colF01.DataType = System.Type.GetType("System.Int32");
            colF01.ColumnName = "F01";

            DataColumn colF02 = new DataColumn();
            colF02.DataType = System.Type.GetType("System.Int32");
            colF02.ColumnName = "F02";

            DataColumn colF03 = new DataColumn();
            colF03.DataType = System.Type.GetType("System.Int32");
            colF03.ColumnName = "F03";

            DataColumn colF04 = new DataColumn();
            colF04.DataType = System.Type.GetType("System.Int32");
            colF04.ColumnName = "F04";

            DataColumn colF05 = new DataColumn();
            colF05.DataType = System.Type.GetType("System.Int32");
            colF05.ColumnName = "F05";

            DataColumn colF06 = new DataColumn();
            colF06.DataType = System.Type.GetType("System.Int32");
            colF06.ColumnName = "F06";

            DataColumn colF07 = new DataColumn();
            colF07.DataType = System.Type.GetType("System.Int32");
            colF07.ColumnName = "F07";

            DataColumn colF08 = new DataColumn();
            colF08.DataType = System.Type.GetType("System.Int32");
            colF08.ColumnName = "F08";

            DataColumn colF09 = new DataColumn();
            colF09.DataType = System.Type.GetType("System.Int32");
            colF09.ColumnName = "F09";

            DataColumn colF10 = new DataColumn();
            colF10.DataType = System.Type.GetType("System.Int32");
            colF10.ColumnName = "F10";

            DataColumn colF11 = new DataColumn();
            colF11.DataType = System.Type.GetType("System.Int32");
            colF11.ColumnName = "F11";

            
             
            DataColumn colMF01 = new DataColumn();
            colMF01.DataType = System.Type.GetType("System.Int32");
            colMF01.ColumnName = "MF01";

            DataColumn colMF02 = new DataColumn();
            colMF02.DataType = System.Type.GetType("System.Int32");
            colMF02.ColumnName = "MF02";

            DataColumn colMF03 = new DataColumn();
            colMF03.DataType = System.Type.GetType("System.Int32");
            colMF03.ColumnName = "MF03";

            DataColumn colMF04 = new DataColumn();
            colMF04.DataType = System.Type.GetType("System.Int32");
            colMF04.ColumnName = "MF04";

            DataColumn colMF05 = new DataColumn();
            colMF05.DataType = System.Type.GetType("System.Int32");
            colMF05.ColumnName = "MF05";

            DataColumn colMF06 = new DataColumn();
            colMF06.DataType = System.Type.GetType("System.Int32");
            colMF06.ColumnName = "MF06";

            DataColumn colMF07 = new DataColumn();
            colMF07.DataType = System.Type.GetType("System.Int32");
            colMF07.ColumnName = "MF07";

            DataColumn colMF08 = new DataColumn();
            colMF08.DataType = System.Type.GetType("System.Int32");
            colMF08.ColumnName = "MF08";

            DataColumn colMF09 = new DataColumn();
            colMF09.DataType = System.Type.GetType("System.Int32");
            colMF09.ColumnName = "MF09";

            DataColumn colMF10 = new DataColumn();
            colMF10.DataType = System.Type.GetType("System.Int32");
            colMF10.ColumnName = "MF10";

            DataColumn colMF11 = new DataColumn();
            colMF11.DataType = System.Type.GetType("System.Int32");
            colMF11.ColumnName = "MF11";             
             
             

            DataColumn colOther = new DataColumn();
            colOther.DataType = System.Type.GetType("System.Int32");
            colOther.ColumnName = "Other";

            DataColumn colOtherMain = new DataColumn();
            colOtherMain.DataType = System.Type.GetType("System.Int32");
            colOtherMain.ColumnName = "OtherMain";


            DataColumn colZL = new DataColumn();
            colZL.DataType = System.Type.GetType("System.Int32");
            colZL.ColumnName = "ZL";

            DataColumn colZJ = new DataColumn();
            colZJ.DataType = System.Type.GetType("System.Int32");
            colZJ.ColumnName = "ZJ";

            DataColumn colQty1 = new DataColumn();
            colQty1.DataType = System.Type.GetType("System.Int32");
            colQty1.ColumnName = "ChkTotal";

            DataColumn colQty2 = new DataColumn();
            colQty2.DataType = System.Type.GetType("System.Int32");
            colQty2.ColumnName = "ProductTotal";

            DataColumn colFailQty = new DataColumn();
            colFailQty.DataType = System.Type.GetType("System.Int32");
            colFailQty.ColumnName = "FailQty";

            DataColumn colMFailQty = new DataColumn();
            colMFailQty.DataType = System.Type.GetType("System.Int32");
            colMFailQty.ColumnName = "MFailQty";

            DataColumn colPer = new DataColumn(); //蝦疵率
            colPer.DataType = System.Type.GetType("System.String");
            colPer.ColumnName = "MPer";


            //  colType,colWKCU,colF01,colF02,colF03,colF04,colF05,colF06,colF07,colF08,colF09,colF10,colF11,colOther,colZL,colZJ,colQty1,colQty2
            DataColumn[] _columns = new DataColumn[] { colType, colWKCU, colWorkShop,colF01, colF02, colF03, colF04, colF05, colF06, colF07, colF08, colF09, colF10, colF11, 
                colMF01, colMF02, colMF03, colMF04, colMF05, colMF06, colMF07, colMF08, colMF09, colMF10, colMF11, 
                colOther,colOtherMain, colZL, colZJ, colQty1, colQty2, colFailQty,colMFailQty,colPer};
            dbsub.Columns.AddRange(_columns);
            return dbsub;
        
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //foreach (var item in Dict_Defect)
            //{
            //    string _key = item.Key;
            //    if (_key == "F01")
            //    {
            //        TCCode01.Text = item.Value[0];
            //        TCDesc01.Text = item.Value[1];
            //    }
            //    else if (_key == "F02")
            //    {
            //        TCCode02.Text = item.Value[0];
            //        TCDesc02.Text = item.Value[1];                
            //    }
            //    else if (_key == "F03")
            //    {
            //        TCCode03.Text = item.Value[0];
            //        TCDesc03.Text = item.Value[1];
            //    }
            //    else if (_key == "F04")
            //    {
            //        TCCode04.Text = item.Value[0];
            //        TCDesc04.Text = item.Value[1];
            //    }
            //    else if (_key == "F05")
            //    {
            //        TCCode05.Text = item.Value[0];
            //        TCDesc05.Text = item.Value[1];
            //    }
            //    else if (_key == "F06")
            //    {
            //        TCCode06.Text = item.Value[0];
            //        TCDesc06.Text = item.Value[1];
            //    }
            //    else if (_key == "F07")
            //    {
            //        TCCode07.Text = item.Value[0];
            //        TCDesc07.Text = item.Value[1];
            //    }
            //    else if (_key == "F08")
            //    {
            //        TCCode08.Text = item.Value[0];
            //        TCDesc08.Text = item.Value[1];
            //    }
            //    else if (_key == "F09")
            //    {
            //        TCCode09.Text = item.Value[0];
            //        TCDesc09.Text = item.Value[1];
            //    }
            //    else if (_key == "F10")
            //    {
            //        TCCode10.Text = item.Value[0];
            //        TCDesc10.Text = item.Value[1];
            //    }
            //    else if (_key == "F11")
            //    {
            //        TCCode11.Text = item.Value[0];
            //        TCDesc11.Text = item.Value[1];
            //    }
            
            //}
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
             //   xrChkTotal.Text = dr["checktotal"] != DBNull.Value ? dr["checktotal"].ToString() : "";
               // xrQty.Text = dr["producttotal"] != DBNull.Value ? dr["producttotal"].ToString() : "";
                xrChkTotal.Text = ProdTotal.ToString();
                xrQty.Text = ChkTotal.ToString();
                    
                xrLines.Text = dr["linetotal"] != DBNull.Value ? dr["linetotal"].ToString() : "";
                xrStyles.Text = dr["styletotal"] != DBNull.Value ? dr["styletotal"].ToString() : "";


                xrTc10.Text = dr["Acc1"] != DBNull.Value ? dr["Acc1"].ToString() : "";
                xrTc11.Text = dr["MAcc1"] != DBNull.Value ? dr["MAcc1"].ToString() : "";
                xrTc12.Text = dr["Rej1"] != DBNull.Value ? dr["Rej1"].ToString() : "";
                xrFPYPer.Text = Math.Round((Convert.ToDouble(xrTc10.Text) + Convert.ToDouble(xrTc11.Text)) * 100 / (Convert.ToDouble(xrTc10.Text) + Convert.ToDouble(xrTc11.Text) + Convert.ToDouble(xrTc12.Text)), 2).ToString() + "%";


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
            xrlPrint.Text = DateTime.Now.ToString("yyyy/MM/dd");

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrSubTtl.Text = "Ws Sub-total/組裝工場小計(" + CurWorkshop + ") :";



            DataRow[] _rows =DbSub.Select("Wscu='"+CurWorkshop+"'");
            if (_rows != null && _rows.Length > 0)
            {  
                DataRow dr =_rows[0];
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

                int _other = dr["Other"] != DBNull.Value ? int.Parse(dr["Other"].ToString()) : 0;
                int _othermain = dr["OtherMain"] != DBNull.Value ? int.Parse(dr["OtherMain"].ToString()) : 0;

                int _failqty = dr["FailQty"] != DBNull.Value ? int.Parse(dr["FailQty"].ToString()) : 0;
                int _mfailqty = dr["MFailQty"] != DBNull.Value ? int.Parse(dr["MFailQty"].ToString()) : 0;


                xrTableCell57.Text = GetDispStr(_F01, _MF01);
                xrTableCell58.Text = GetDispStr(_F02, _MF02);
                xrTableCell59.Text = GetDispStr(_F03, _MF03);
                xrTableCell60.Text = GetDispStr(_F04, _MF04);
                xrTableCell61.Text = GetDispStr(_F05, _MF05);
                xrTableCell62.Text = GetDispStr(_F06, _MF06);
                xrTableCell63.Text = GetDispStr(_F07, _MF07);
                xrTableCell64.Text = GetDispStr(_F08, _MF08);
                xrTableCell65.Text = GetDispStr(_F09, _MF09);
                xrTableCell66.Text = GetDispStr(_F10, _MF10);
                xrTableCell67.Text = GetDispStr(_F11, _MF11);

                xrTableCell68.Text = GetDispStr(_other, _othermain);
               // xrTableCell72.Text = GetDispStr(_failqty, _mfailqty);
                xrTableCell72.Text = _mfailqty.ToString();
                xrTableCell111.Text = (_failqty - _mfailqty).ToString();


                int _mttl = _MF01 + _MF02 + _MF03 + _MF04 + _MF05 + _MF06 + _MF07 + _MF08 + _MF09 + _MF10 + _MF11 + _othermain;
                xrTableCell70.Text = _mttl.ToString();

                double aa = CheckTotal == 0 ? 0 : Convert.ToDouble(_mttl * 100.00 / CheckTotal);
                this.xrPer.Text = String.Format("{0:F}", aa);
               


            
            }
            

        }

        private string GetDispStr(int ttl, int mttl)
        {
            string _retstr = "";
            if (ttl == 0)
                _retstr = "/";
            else if (mttl == 0)
                _retstr = "/ " + (ttl == 0 ? "" : ttl.ToString());
            else if (mttl == ttl)
                _retstr = mttl.ToString() + " /";
            else
                _retstr = mttl.ToString() + " / " + (ttl - mttl).ToString();
            return _retstr;

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            AuditOffLine_AQL _current = this.GetCurrentRow() as AuditOffLine_AQL;
            if (_current == null)
                return;

            CurWorkshop = _current.Workshop;
            DefectTotal = DefectTotal + _current.DefectTotal;
            ProductTotal = ProductTotal + _current.ProductTotal;
            CheckTotal = CheckTotal + _current.ChkTotal;

            
            string _ss = "", _s1 = "";
            _s1 = _current.AuditTimes.Trim();

            int _mttl = _current.MF01 + _current.MF02 + _current.MF03 + _current.MF04 + _current.MF05 + _current.MF06 + _current.MF07 + _current.MF08 + _current.MF09 + _current.MF10 + _current.MF11;

            if (_s1 == "2.1")
            {
                int m = 0;
            }

            if (_s1 == "1.0")
                _ss = "1st";

            if (_s1.Substring(0,1) == "2")
                _ss = "2nd";

            if (_s1.Substring(0, 1) == "3")
                _ss = "3rd";

            xrTableCell51.Text = _ss;
            xrTableCell32.Text = _current.AuditResult == "P" ? "ACC" : "Rej";


            //xrTableCell87.Text = GetDispStr(_current.FailQty, _current.MFailtQty);
            xrTableCell87.Text = _current.MFailQty.ToString();

            string _ciyao ="";
            if (_current.FailQty > 0 && _current.FailQty > _current.MFailQty)
                _ciyao = (_current.FailQty - _current.MFailQty).ToString();

              
            
            xrTableCell110.Text = _ciyao;

            //xrTableCell87.Text = 
            xrTableCell23.Text = GetDispStr(_current.OtherTotal, _current.OtherMainTotal);


            xrTableCell31.Text = (_mttl + _current.OtherMainTotal).ToString();

            int _chktotal = _current.ChkTotal;
            double aa = _mttl == 0 || _chktotal==0 ? 0 : Convert.ToDouble((_mttl+_current.OtherMainTotal) * 100.00 / _chktotal);
            //per
            xrTableCell42.Text = String.Format("{0:F}", aa);
        }

        private void RptFullAuditOnLine_AQL_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // _subRpt = new RptAuditAQL_Sub1(DbHeader, DbSub, Dict_WorkshopSum, Dict_CustomerSum, Dict_Defect, xrllDate.Text.Trim());
           
            
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
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
        //string CurWorkShop="":
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            AuditOffLine_AQL _current = this.GetCurrentRow() as AuditOffLine_AQL;
            
            if (_current==null)
                return;

            

        }




    }
}
