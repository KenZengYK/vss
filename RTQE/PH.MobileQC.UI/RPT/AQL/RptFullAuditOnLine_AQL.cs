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
    public partial class RptFullAuditOnLine_AQL : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", CurWorkshop = "", Flag = "";
        
        int SumType = 0, DefectTotal = 0, ProductTotal = 0;
        DataTable DbHeader,DbDetail,DbDefect;
        Dictionary<string, string[]> Dict_Defect = new Dictionary<string, string[]>();
        ArrayList WorkShopList = new ArrayList();
        ArrayList CustList = new ArrayList();
        RptAuditAQL_Sub _subRpt;


        public RptFullAuditOnLine_AQL()
        {
            InitializeComponent();
        }

        public RptFullAuditOnLine_AQL(string fac, int sumtype, string startdate, string enddate, string flag,string daterange)
        {
            InitializeComponent();
            Factory = fac;
            StartDate = startdate;
            EndDate = enddate;
            // Role = role;
            Flag = flag;
            SumType = sumtype;
            xrllDate.Text = daterange;
            PrepareData();
            
        }



        public void PrepareData()
        {
            DataSet ds = SqlDataHelper.GetAuditQuality_AQL(Factory, SumType, StartDate, EndDate, Flag);
            DbHeader = ds.Tables[0];
            DbDefect = ds.Tables[1];
            DbDetail = ds.Tables[2];

            //DataColumn colsort = new DataColumn();
            //colsort.DataType = System.Type.GetType("System.Int");
            //colsort.ColumnName = "XH";
            //colsort.DefaultValue = 0;
            //db.Columns.Add(colsort);

            WorkShopList.Clear();
            List<AuditOffLine_AQL> lstquality = new List<AuditOffLine_AQL>();
            int m = 1;
            //get all defect code
            for (int j = 18; j < DbDetail.Columns.Count; j++)
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

                quaper.FailQty = int.Parse(dr["FailQty"].ToString());

                quaper.MPer = dr["MPer"].ToString();


                quaper.DefectTotal = dr["Defecttotal"] != DBNull.Value ? int.Parse(dr["Defecttotal"].ToString()) : 0;
                quaper.DefectTypeTotal = dr["TypeCount"] != DBNull.Value ? int.Parse(dr["TypeCount"].ToString()) : 0;
                quaper.ChkTotal = dr["Chktotal"] != DBNull.Value ? int.Parse(dr["Chktotal"].ToString()) : 0;
                quaper.ProductTotal = dr["Producttotal"] != DBNull.Value ? int.Parse(dr["Producttotal"].ToString()) : 0;

                quaper.MasterTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;

                foreach (var item in Dict_Defect)
                {
                    string _s1 = item.Key;
                    string[] valus = item.Value;
                    foreach (DataColumn dc in DbDetail.Columns)
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

                if (!CustList.Contains(quaper.Customer))
                {
                    CustList.Add(quaper.Customer);
                }


            }

            this.bsDetail.DataSource = lstquality;

            //獲取子報表數據源
            DataTable _dbsub = GetSubRptData(lstquality);

            _subRpt = new RptAuditAQL_Sub(DbHeader, _dbsub, Dict_WorkshopSum, Dict_CustomerSum, Dict_Defect,xrllDate.Text.Trim());
        }

        Dictionary<string, int[]> Dict_WorkshopSum = new Dictionary<string, int[]>();
        Dictionary<string, int[]> Dict_CustomerSum = new Dictionary<string, int[]>();

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

          

             //  int _other = (from aa in masterlist where aa.Workshop == _wk select aa.OtherTotal).Sum();
               int _typettl = (from aa in masterlist where aa.Workshop == _wk select aa.DefectTypeTotal).Sum();
               int _defecttotal = (from aa in masterlist where aa.Workshop == _wk select aa.DefectTotal).Sum();
               int _checktotal = (from aa in masterlist where aa.Workshop == _wk select aa.ChkTotal).Sum();
               int _prodtotal = (from aa in masterlist where aa.Workshop == _wk select aa.ProductTotal).Sum();

               int _failqty = (from aa in masterlist where aa.Workshop == _wk select aa.FailQty).Sum();

               int _accsum = (from aa in masterlist where aa.Workshop == _wk && aa.AuditResult == "P" select aa).Count();
               int _rejsum = (from aa in masterlist where aa.Workshop == _wk && aa.AuditResult == "F" select aa).Count();

               Dict_WorkshopSum.Add(_wk, new int[] { _accsum, _accsum });

               DataRow newrow = dtsub.Rows.Add();
               newrow["TypeId"] = "100"; newrow["Wscu"] = _wk;
               newrow["F01"] = _F01; newrow["F02"] = _F02; newrow["F03"] = _F03; newrow["F04"] = _F04; newrow["F05"] = _F05;
               newrow["F06"] = _F06; newrow["F07"] = _F07; newrow["F08"] = _F08; newrow["F09"] = _F09; newrow["F10"] = _F10; newrow["F11"] = _F11;

               newrow["ZL"] = _typettl; newrow["ZJ"] = _defecttotal; newrow["ChkTotal"] = _checktotal; newrow["ProductTotal"] = _prodtotal;
               newrow["FailQty"] = _failqty;
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

              // int _other = (from aa in masterlist select aa.OtherTotal).Sum();
               int _typettl = (from aa in masterlist select aa.DefectTypeTotal).Sum();
               int _defecttotal = (from aa in masterlist select aa.DefectTotal).Sum();
               int _checktotal = (from aa in masterlist  select aa.ChkTotal).Sum();
               int _prodtotal = (from aa in masterlist select aa.ProductTotal).Sum();
               int _failtotal = (from aa in masterlist select aa.FailQty).Sum();


               newrow["F01"] = _F01; newrow["F02"] = _F02; newrow["F03"] = _F03; newrow["F04"] = _F04; newrow["F05"] = _F05;
               newrow["F06"] = _F06; newrow["F07"] = _F07; newrow["F08"] = _F08; newrow["F09"] = _F09; newrow["F10"] = _F10; newrow["F11"] = _F11;
               newrow["ZL"] = _typettl; newrow["ZJ"] = _defecttotal; newrow["ChkTotal"] = _checktotal; newrow["ProductTotal"] = _prodtotal;
               newrow["FailQty"] = _failtotal;
               dtsub.Rows.Add(newrow);

                // by customer summary total:same as by workshop,so add here
               DataRow newrow1 = dtsub.NewRow();
               newrow1["TypeId"] = "222"; newrow1["Wscu"] = "";
               newrow1["F01"] = _F01; newrow1["F02"] = _F02; newrow1["F03"] = _F03; newrow1["F04"] = _F04; newrow1["F05"] = _F05;
               newrow1["F06"] = _F06; newrow1["F07"] = _F07; newrow1["F08"] = _F08; newrow1["F09"] = _F09; newrow1["F10"] = _F10; newrow1["F11"] = _F11;
               //newrow["Other"] = _other; 
                newrow1["ZL"] = _typettl; newrow1["ZJ"] = _defecttotal; newrow1["ChkTotal"] = _checktotal; newrow1["ProductTotal"] = _prodtotal;
                newrow1["FailQty"] = _failtotal;
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

               // int _other = (from aa in masterlist where aa.Customer == _cust select aa.OtherTotal).Sum();
                int _typettl = (from aa in masterlist where aa.Customer == _cust select aa.DefectTypeTotal).Sum();
                int _defecttotal = (from aa in masterlist where aa.Customer == _cust select aa.DefectTotal).Sum();
                int _checktotal = (from aa in masterlist where aa.Customer == _cust select aa.ChkTotal).Sum();
                int _prodtotal = (from aa in masterlist where aa.Customer == _cust select aa.ProductTotal).Sum();
                int _failtotal = (from aa in masterlist where aa.Customer == _cust select aa.FailQty).Sum();

                int _accsum = (from aa in masterlist where aa.Customer == _cust && aa.AuditResult == "P" select aa).Count();
                int _rejsum = (from aa in masterlist where aa.Customer == _cust && aa.AuditResult == "F" select aa).Count();
                Dict_CustomerSum.Add(_cust, new int[] { _accsum, _accsum });

                DataRow newrow = dtsub.NewRow();
                newrow["TypeId"] = "200"; newrow["Wscu"] = _cust;
                newrow["F01"] = _F01; newrow["F02"] = _F02; newrow["F03"] = _F03; newrow["F04"] = _F04; newrow["F05"] = _F05;
                newrow["F06"] = _F06; newrow["F07"] = _F07; newrow["F08"] = _F08; newrow["F09"] = _F09; newrow["F10"] = _F10; newrow["F11"] = _F11;

                //newrow["Other"]=_other;
                newrow["ZL"] = _typettl; newrow["ZJ"] = _defecttotal; newrow["ChkTotal"] = _checktotal; newrow["ProductTotal"] = _prodtotal;
                newrow["FailQty"] = _failtotal;

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

            DataColumn colOther = new DataColumn();
            colOther.DataType = System.Type.GetType("System.Int32");
            colOther.ColumnName = "Other";

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

            //  colType,colWKCU,colF01,colF02,colF03,colF04,colF05,colF06,colF07,colF08,colF09,colF10,colF11,colOther,colZL,colZJ,colQty1,colQty2
            DataColumn[] _columns = new DataColumn[] { colType, colWKCU, colF01, colF02, colF03, colF04, colF05, colF06, colF07, colF08, colF09, colF10, colF11, colOther, colZL, colZJ, colQty1, colQty2, colFailQty };
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
                xrChkTotal.Text = dr["checktotal"] != DBNull.Value ? dr["checktotal"].ToString() : "";
                xrQty.Text = dr["producttotal"] != DBNull.Value ? dr["producttotal"].ToString() : "";
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
            xrlPrint.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrSubTtl.Text = "Ws Sub-total/組裝工場小計(" + CurWorkshop + ") :";
           // xrPer.Text = 

            double aa = ProductTotal == 0 ? 0 : Convert.ToDouble(DefectTotal * 100.00 / ProductTotal);
            this.xrPer.Text = String.Format("{0:F}", aa);

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            AuditOffLine_AQL _current = this.GetCurrentRow() as AuditOffLine_AQL;
            CurWorkshop = _current.Workshop;
            DefectTotal = DefectTotal + _current.DefectTotal;
            ProductTotal = ProductTotal + _current.ProductTotal;
            string _ss = "";
            if (_current.AuditTimes == "1.0")
                _ss = "1st";

            if (_current.AuditTimes.Substring(1,1) == "2")
                _ss = "2nd";
            if (_current.AuditTimes.Substring(1, 1) == "3")
                _ss = "3rd";
            xrTableCell51.Text = _ss;
        }

        private void RptFullAuditOnLine_AQL_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrSubRpt.ReportSource = _subRpt;
            
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
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




    }
}
