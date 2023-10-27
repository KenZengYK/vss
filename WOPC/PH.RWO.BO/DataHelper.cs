using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.IO;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Data.Linq;
using System.Reflection;
using System.Diagnostics;

namespace PH.RWO.BO
{
    public class DataHelper
    {
        //public static RWOSOPCDataContext RWOContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();

        public RWOSOPCDataContext _rwoContext;
        public RWOSOPCDataContext RWOContext
        {
            get
            {
                if (_rwoContext == null)
                {
                    _rwoContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    _rwoContext.CommandTimeout = 1000;
                }
                return _rwoContext;
            }
        }


        public IEnumerable<WOSKURatio> GetRatio(string styleNo)
        {

            return RWOContext.WOSKURatios.Where(p => p.SytleNo == styleNo);
        }

        /// <summary>
        /// 獲取確認流程
        /// </summary>
        /// <param name="Cust">客戶號</param>
        /// <param name="Fty">工廠</param>
        /// <param name="Next">當前步驟</param>
        /// <returns></returns>
        public View_ConfirmWorkFlow GetConfirmWorkFlow(string Cust, string Fty, int Current, int phase, bool IsRWO)
        {
            return RWOContext.View_ConfirmWorkFlows.Where(p => p.CustomerCode == Cust && p.Factory == Fty && p.Current == Current && p.Phase == phase && (p.IsRWO) == IsRWO).FirstOrDefault();
        }

        public View_RejectWorkFlow GetRejectWorkFlow(string Cust, string Fty, int Current, int phase, bool IsRWO)
        {
            return RWOContext.View_RejectWorkFlows.Where(p => p.CustomerCode == Cust && p.Factory == Fty && p.Current == Current && p.Phase == phase && (p.IsRWO) == IsRWO).FirstOrDefault();
        }

        public IEnumerable<WorkOrder> GetWorkOrderList()
        {
            return RWOContext.WorkOrders;
        }

        public IEnumerable<Project> GetProject(string status)
        {
            if (status == "ALL")
                return RWOContext.Projects.Where(p => p.SoIssueDate >= DateTime.Now.AddYears(-1));
            else if (status == "C") //Completed
            {
                return RWOContext.Projects.Where(p => p.Status == status && p.SoIssueDate >= DateTime.Now.AddYears(-1));
            }
            else if (status == "O") //Incomplete
            {
                return RWOContext.Projects.Where(p => p.Status != "C" && p.Status != "X" && p.SoIssueDate >= DateTime.Now.AddYears(-1));
                //QueryParameter.FixedWherePart = " Status<>'C' and Status <> 'X' and SoIssueDate >= dateadd(year, -1, getdate()) "; //Outstand只取一年内的Project, 由David加入 2020-08-17

            }
            else
            {
                return RWOContext.Projects.Where(p => p.Status != "C");
            }
        }

        public IEnumerable<Project> GetProject(string Company, string SalesOrderNO)
        {
            return RWOContext.Projects.Where(p => p.Company == Company && p.SalesOrderNo == SalesOrderNO);
        }

        public IEnumerable<Right> GetRight()
        {
            return RWOContext.Rights;
        }

        public IEnumerable<CustomerCode> GetCustomerCode()
        {
            return RWOContext.CustomerCodes;
        }


        public IEnumerable<Style> GetStyles()
        {
            return RWOContext.Styles;
        }

        //customer--> TAMA,SARA , not TAMA1,SARA1
        public static bool IsFrenchCustomer(string customer)
        {
            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            string frenchCust = "ETAA, ETAM, MONO, DAXO, LARD, TAIL";
            return (frenchCust.Contains(customer));
        }

        public static string GetWeekdayForShort(DateTime? dt)
        {
            if (!dt.HasValue) return "";

            DayOfWeek i = dt.Value.DayOfWeek;
            switch (i)
            {
                case DayOfWeek.Friday:
                    return "Fri.";
                case DayOfWeek.Monday:
                    return "Mon.";
                case DayOfWeek.Saturday:
                    return "Sat.";
                case DayOfWeek.Sunday:
                    return "Sun.";
                case DayOfWeek.Thursday:
                    return "Thu.";
                case DayOfWeek.Tuesday:
                    return "Tue.";
                case DayOfWeek.Wednesday:
                    return "Wed.";
                default:
                    return "";
            }
        }
        /// <summary>
        /// 圖片轉換成二進制
        /// </summary>
        //public static byte[] ImageToByteArray(Image img)
        //{
        //    MemoryStream ms = new MemoryStream();
        //    img.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
        //    return ms.ToArray();
        //}

        /// <summary>
        /// 二進制轉換成圖片
        /// </summary>
        //public static Image ByteArrayToImage(byte[] bytes)
        //{
        //    if (bytes.Length > 0)
        //    {
        //        MemoryStream Ms = new MemoryStream();
        //        Ms.Write(bytes, 0, bytes.Length);
        //        return Image.FromStream(Ms);
        //    }
        //    return null;
        //}
        public List<MR> GetMIDcMaterial()
        {
            return RWOContext.ExecuteQuery<MR>("Get_MRs").ToList();
        }
        public DataTable GetDataTable(string CommandText)
        {
            SqlConnection Conn = new SqlConnection();
            Conn.ConnectionString = (PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>()).Connection.ConnectionString;
            Conn.Open();
            SqlCommand cmd = new SqlCommand(CommandText, Conn);
            cmd.CommandTimeout = 8000;
            cmd.ExecuteNonQuery();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            ad.Fill(tb);
            return tb;

        }
        //public static List<BF> GetBasicInfo(string datatype)
        //{

        //    return Context.ExecuteQuery<BF>(string.Format("select DataCode,DataName from [PH.platform.misc].dbo.Misc_DataDictionary where datatype = '{0}'", datatype)).ToList();
        //}



        #region SOSS

        public string GetSObyProject(string cono, string projectno)
        {
            string sql = string.Format("select ORDN40 from ault4f1.oep40 where cono40='{0}' and dtlc40=0 and stat40<>'X' and   CUSO40='{1}'", cono, projectno);
            sql = string.Format("select ORDN40 from openquery(AS400,'{0}')", ConvertToDBsql(sql));

            DataTable dt = GetDataTable(sql);
            if (dt.Rows.Count == 0) return "";

            return Convert.ToString(dt.Rows[0][0]);
        }
        public string GetProjectbySO(string cono, string so)
        {
            string sql = string.Format("select CUSO40 from ault4f1.oep40 where cono40='{0}' and dtlc40=0 and stat40<>'X' and   ORDN40='{1}'", cono, so);
            sql = string.Format("select CUSO40 from openquery(AS400,'{0}')", ConvertToDBsql(sql));

            DataTable dt = GetDataTable(sql);
            if (dt.Rows.Count == 0) return "";

            return Convert.ToString(dt.Rows[0][0]);
        }

        public void CallERPStoreProcedue(int dt, string tm, string cono, string so)
        {
            string sql = string.Format("call ZPHLIB_AUL.SP_PRINTSOSS('{0}','{1}',{2},'{3}')", cono, so, dt, tm);
            AS400DB.DB.Execute(sql);
        }

        public SOSSHeader GetSOSSes(int dt, string tm, string cono, string so)
        {
            #region SQL
            string sStatus = "case WSTA40 when '0' then 'Enquiry'"
               + " when '1' then 'PLAN' "
               + "when '2' then 'CONFIRM' "
               + "when '3' then 'RELEASE' "
               + "when '4' then 'ACTIVE' "
               + "when '8' then 'COMPLETE' "
               + "when '9' then 'CANCEL' else '' end as WOStatus";

            string strWhere = string.Format(" and a.cono='{0}' and a.dt={1} and a.tm='{2}' and a.scno='{3}'", cono, dt, tm, so);

            string sqlERP = "select a.*, b.clr1 ,b.clr2 ,b.clr3 ,b.clr4 ,b.clr5 ,b.clr6 ,b.clr7 ,b.clr8 ,b.clr9 ,b.clr10 ,b.clr11 ,b.clr12 ,b.clr13 ,b.clr14 ,b.clr15 ,b.clr16 "
                + ",b.clr17 ,b.clr18 ,b.clr19 ,b.clr20 ,b.clr21 ,b.clr22 ,b.clr23 ,b.clr24 ,b.clr25 ,b.clr26 ,b.clr27"
                + "  from zphlib_aul.oes1 a,zphlib_aul.oes2 b where a.cono=b.cono and a.dt=b.dt and a.tm=b.tm and a.scno=b.scno " + strWhere;

            string sql = string.Format(@"
select 
DT 
,TM 
,CONO as Company
,SCNO as SalesOrderNo
,ORDL as SalesOrderLine
,STYLNO as StyleNo
,CSTYLNO as CustomerStyleNo
,CUSN as Customer
,DSEQ as DSEQ
,CUSO as ProjectNo
,DTSO as SoIssueDate1
,DTDR as DeliveryDate1
,WORDER as WorkOrderNo
,PAYM as PaymentTerm
,SHPM as ShipMode
,SSON as Season
,DTERM as DeliveryTerm
,CURN as Currency
,CACCOST as CACCost
,TMCOST 
,SPCOST as SpecialCost
,QACOST as DocAdminCost
,UPRC as UnitPrice
,Q1 as Qty1
,Q2 as Qty2
,Q3 as Qty3
,Q4 as Qty4
,Q5 as Qty5
,Q6 as Qty6
,Q7 as Qty7
,Q8 as Qty8
,Q9 as Qty9
,Q10 as Qty10
,Q11 as Qty11
,Q12 as Qty12
,Q13 as Qty13
,Q14 as Qty14
,Q15 as Qty15
,Q16 as Qty16
,Q17 as Qty17
,Q18 as Qty18
,Q19 as Qty19
,Q20 as Qty20
,Q21 as Qty21
,Q22 as Qty22
,Q23 as Qty23
,Q24 as Qty24
,Q25 as Qty25
,Q26 as Qty26
,Q27 as Qty27
,DEV as Deviation
,EXFTY as ExftyDate1
,MDUE as CoreMaterialETADate1
,DISC as Commission
,CURT as ExRate
,AMOUNT as Amount
,MARGIN as ProfitMargin
,TQTY as TotalQty
,CAT as CatNo
,MARGIN1 as ProfitMargin1
,FACTORY as Factory
,FPRICE as FPrice
,WSTA40 
,PrdCog as Category
,CustCollection as CollectionName
,corder as CustomerOrderNo
,delterm as FRTCode
,clr1 as Color1
,clr2 as Color2
,clr3 as Color3
,clr4 as Color4
,clr5 as Color5
,clr6 as Color6
,clr7 as Color7
,clr8 as Color8
,clr9 as Color9
,clr10 as Color10
,clr11 as Color11
,clr12 as Color12
,clr13 as Color13
,clr14 as Color14
,clr15 as Color15
,clr16 as Color16
,clr17 as Color17
,clr18 as Color18
,clr19 as Color19
,clr20 as Color20
,clr21 as Color21
,clr22 as Color22
,clr23 as Color23
,clr24 as Color24
,clr25 as Color25
,clr26 as Color26
,clr27 as Color27
,CAST(0 as DECIMAL(11, 3)) as TotalSampleQty  
,CAST('' as varchar(10)) as PE  
,CAST(0 as DECIMAL(11, 3)) as MCQ  
,CAST(0 as DECIMAL(11, 3)) as MOQ  
,CAST(0 as DECIMAL(11, 3)) as Subcharge  
,CAST('' as varchar(2)) as ClassCode  
,CAST(0 as DECIMAL(11, 3)) as MarginPercent
,{0}
from openquery(AS400,'{1}') 
"
                , sStatus, ConvertToDBsql(sqlERP));

            #endregion

            DataTable dtable = GetDataTable(sql);

            List<SOSSDetail> details = TableORM.GetObjects<SOSSDetail>(dtable, true);
            SOSSHeader header = GetSOSSHeader(cono, so);
            header.Details = details;
            List<SOSSDetail> margins = GetSOSSDetailProfitMargin(cono, so);
            List<WorkOrderColor> samples = GetSampleQtys(cono, so);//by color

            foreach (var sd in details)
            {
                sd.Header = header;
                header.ProjectNo = sd.ProjectNo;
                header.Customer = sd.Customer;
                header.Factory = sd.Factory;
                header.SoIssueDate1 = sd.SoIssueDate1;
                header.SoIssueDate = sd.SoIssueDate;
                header.Season = sd.Season;
                header.Currency = sd.Currency;
                header.PaymentTerm = sd.PaymentTerm;
                header.DeliveryTerm = sd.DeliveryTerm;
                header.ExRate = sd.ExRate;
                header.PrjStatus = sd.PrjStatus;


                #region CAC Cost
                int dt1 = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
                string tm1 = DateTime.Now.ToString("HHmmssfff");
                string jobn = string.Format("{0}{1}.{2}", dt1, tm1.Substring(0, 2), tm1.Substring(2, 4));

                sd.CACCost = GetCACCostFromCACPrint(cono, so, sd.SalesOrderLine ?? 0, sd.StyleNo, sd.Factory, jobn, dt1, tm1);
                #endregion

                #region ProfitMargin
                SOSSDetail sd1 = margins.Find(delegate(SOSSDetail sd2)
                {
                    return sd2.Company == sd.Company && sd2.SalesOrderNo == sd.SalesOrderNo && sd2.SalesOrderLine == sd.SalesOrderLine;
                });

                if (sd1 != null)
                {
                    sd.PE = sd1.PE;
                    sd.Commission = sd1.Commission * 100;
                    sd.Deviation = sd1.Deviation * 100;
                    sd.SpecialCost = sd1.SpecialCost;
                    sd.DocAdminCost = sd1.DocAdminCost;
                    sd.MCQ = sd1.MCQ;
                    sd.MOQ = sd1.MOQ;
                    sd.SubCharge = sd1.SubCharge;
                    sd.ClassCode = sd1.ClassCode;

                }

                #endregion

                #region Handle Qty 0 to null
                sd.Qty1 = QtyZero2Null(sd.Qty1);
                sd.Qty2 = QtyZero2Null(sd.Qty2);
                sd.Qty3 = QtyZero2Null(sd.Qty3);
                sd.Qty4 = QtyZero2Null(sd.Qty4);
                sd.Qty5 = QtyZero2Null(sd.Qty5);
                sd.Qty6 = QtyZero2Null(sd.Qty6);
                sd.Qty7 = QtyZero2Null(sd.Qty7);
                sd.Qty8 = QtyZero2Null(sd.Qty8);
                sd.Qty9 = QtyZero2Null(sd.Qty9);
                sd.Qty10 = QtyZero2Null(sd.Qty10);
                sd.Qty11 = QtyZero2Null(sd.Qty11);
                sd.Qty12 = QtyZero2Null(sd.Qty12);
                sd.Qty13 = QtyZero2Null(sd.Qty13);
                sd.Qty14 = QtyZero2Null(sd.Qty14);
                sd.Qty15 = QtyZero2Null(sd.Qty15);
                sd.Qty16 = QtyZero2Null(sd.Qty16);
                sd.Qty17 = QtyZero2Null(sd.Qty17);
                sd.Qty18 = QtyZero2Null(sd.Qty18);
                sd.Qty19 = QtyZero2Null(sd.Qty19);
                sd.Qty20 = QtyZero2Null(sd.Qty20);
                sd.Qty21 = QtyZero2Null(sd.Qty21);
                sd.Qty22 = QtyZero2Null(sd.Qty22);
                sd.Qty23 = QtyZero2Null(sd.Qty23);
                sd.Qty24 = QtyZero2Null(sd.Qty24);
                sd.Qty25 = QtyZero2Null(sd.Qty25);
                sd.Qty26 = QtyZero2Null(sd.Qty26);
                sd.Qty27 = QtyZero2Null(sd.Qty27);
                #endregion

                #region Cat No
                string catno = GetQuotaCat(cono, sd.Customer, sd.StyleNo);
                if (!string.IsNullOrEmpty(catno))
                    sd.CatNo = catno;
                #endregion

            }

            #region Sample Qty

            foreach (var item in samples)
            {
                decimal sQty = item.SampleQty ?? 0;
                if (sQty == 0) continue;

                SOSSDetail d = details.Find(delegate(SOSSDetail d1)
                {
                    return item.SalesOrderNo == d1.SalesOrderNo && item.SalesOrderLine == d1.SalesOrderLine;
                });

                if (d == null) continue;

                SetSampleByColor(d, item.ColorCode, sQty);
            }
            #endregion

            return header;
        }

        #region CAC Cost

        private decimal? GetCACCostFromCACPrint(string cono, string so, int soLine, string style, string factory, string jobn, int dt, string tm)
        {
            string route = (factory == "SHILONG") ? "1" : "2";
            DoSalesOrderInsert(cono, so, soLine, style, route, jobn);
            ActionFTP(cono, so, soLine, style, route, jobn, dt, tm);
            string sql = "select (CST1WA + CST2WA + CST3WA + CST4WA + CST5WA + CST6WA + CST7WA + CST8WA + CST9WA + CSTAWA + CSTBWA) as CACCost from AULT4F1.PHPWA where JOBNWA=" + jobn;
            object obj = AS400DB.DB.GetScalar(sql);

            if (Convert.IsDBNull(obj))
                return null;
            else return Convert.ToDecimal(obj);
        }
        private void DoSalesOrderInsert(string cono, string so, int soLine, string style, string route, string jobn)
        {
            string sql1 = "insert into AULT4F1.PHPWH (conowh,jobnwh,prntwh,rtcdwh,ordnwh,ordlwh)"
                + " values('{0}',{1},'{2}','{3}','{4}',{5})";
            string sql = string.Format(sql1, cono, jobn, style, route, so, soLine);
            AS400DB.DB.Execute(sql);
        }

        #region FTP
        private void ActionFTP(string cono, string so, int soLine, string style, string route, string jobn, int dt, string tm)
        {
            string ftp = "";
            //string ENV = "PHG";//PHG = Live, TST = Test
            int typeFormat = 1;

            //----------go live------------
            //quote rcmd CALL PGM(AULPHGTST/PH392CLP) PARM(&ENV &CONO &STYLE &ROUTE &COLOR &SIZE &FIT &MARKER &TYPE &USER &YEAR &DATE &TIME
            //quote rcmd CALL PGM(AULPHGTST/PH392CLP) PARM(&ENV &CONO &STYLE &ROUTE &COLOR &SIZE &FIT &MARKER &TYPE &USER &YEAR &DATE &TIME
            //deng chang hua 20080627 debug quote rcmd CALL PGM(AULPHGMODS/PH392CLP) --- T)
            //AULPHGTST/PH392CLP
            //AULPHGMODS/PH392CLPT
            ftp += string.Format("quote rcmd CALL PGM(AULPHGMODS/PH392CLPT) PARM('{0}' '{1}' '{2}' '{3}' '{4}' '{5}' '{6}' '{7}' '{8}' '{9}' '{10}' '{11}' '{12}')",
                "PHG", cono, style, route, "", "", "", "", typeFormat, "ODBC", dt / 10000, dt.ToString().Substring(4, 4), tm.Substring(0, 6));

            string sdt = DateTime.Now.ToString("yyyyMMdd-HHmmssfff");//8.3
            string path1 = string.Format(@"c:\temp\CAC-{0}.txt", sdt);
            string path2 = string.Format(@"c:\temp\CAC-{0}.bat", sdt);

            bool dirExists = Directory.Exists(@"c:\temp");
            if (!dirExists)
            {
                Directory.CreateDirectory(@"c:\temp");
            }

            //Create the file.
            using (FileStream fs = File.Create(path1))
            {
                AddText(fs, "ODBC\n");
                AddText(fs, "mq3hx6gc3t\n");
                AddText(fs, ftp);
                AddText(fs, "\n");
                AddText(fs, "quote quit\n");
                AddText(fs, "quit");
            }

            //Create the file.
            using (FileStream fs = File.Create(path2))
            {
                AddText(fs, string.Format(@"ftp -s:{0} {1}", path1, "10.1.1.8"));
                //AddText(fs, string.Format(@"ftp -s:{0} {1}", path1, "202.155.217.150"));
            }
            //run bat
            ProcessStartInfo psi = new ProcessStartInfo(path2);
            psi.WindowStyle = ProcessWindowStyle.Hidden;
            Process currentProcess = Process.Start(psi);


            //check RPG run finish
            bool bDone = false;
            while (!bDone)
            {
                bDone = CheckHasDone(cono, jobn);
            }

            #region delete temp file
            DeleteTempFile(@"c:\temp\", "CAC-200?????-*", dt);
            DeleteTempFile(path1);
            DeleteTempFile(path2);
            #endregion

        }
        private static void AddText(FileStream fs, string value)
        {
            byte[] info = new UTF8Encoding(true).GetBytes(value);
            fs.Write(info, 0, info.Length);
        }
        private bool CheckHasDone(string cono, string jobn)
        {
            string sSQL = string.Format("select conow6 from ault4f1.PHPW6 where conow6='{0}' and jobnw6={1}", cono, jobn);
            object obj = AS400DB.DB.GetScalar(sSQL);
            return (!(Convert.IsDBNull(obj) || obj == null));
            //return true;
        }
        private void DeleteTempFile(string file)
        {
            //"POPC-20070315-102755288.bat"
            //int adt = this._dt - 1;
            try
            {
                if (File.Exists(file))
                {
                    File.Delete(file);
                }
            }
            catch
            { }
        }
        private void DeleteTempFile(string path, string searchPattern, int dt)
        {
            //"RMR-20070404-200238680.txt"            
            FileInfo fi;
            try
            {
                string[] root = Directory.GetFiles(path, searchPattern);
                foreach (string s in root)
                {
                    fi = new FileInfo(s);
                    string ddd = fi.Name.Substring(4, 8);
                    int dtTemp = 0;
                    try
                    {
                        dtTemp = Convert.ToInt32(ddd);
                        if (dtTemp < dt)
                            File.Delete(s);
                    }
                    catch { }
                }
            }
            catch { }
        }
        #endregion
        #endregion

        private SOSSHeader GetSOSSHeader(string cono, string so)
        {
            string sql = string.Format(@"
SELECT [Cono] as Company
      ,[SOPNO] as SalesOrderNo
      ,[Prepared_By] as PreparedBy
      ,[Confirmed_By] as ConfirmedBy
      ,[Approved_By] as ApprovedBy
      ,[Remarks] as Remark
      ,[Confirmed_Date] as ConfirmedDate
      ,[Approved_Date] as ApprovedBDate
FROM [PHGDB2].[dbo].[OES_Report]
where cono='{0}' and sopno='{1}'", cono, so);

            DataTable dtable = GetDataTable(sql);

            List<SOSSHeader> hs = TableORM.GetObjects<SOSSHeader>(dtable, true);

            return hs.Count > 0 ? hs[0] : new SOSSHeader() { Company = cono, SalesOrderNo = so };
        }
        public string ConvertToDBsql(string sql)
        {
            return sql.Replace("'", "''");
        }
        private List<SOSSDetail> GetSOSSDetailProfitMargin(string cono, string so)
        {
            string sql = string.Format(@"
SELECT [Cono] as Company
      ,[SOPNO] as SalesOrderNo
      ,[OrderLine] as SalesOrderLine
      ,[WorkOrder] as WorkOrderNo
      ,[CUST] as Customer
      ,[DSEQ]
      ,[Commission]
      ,cast([DEV] as decimal(15,3)) as Deviation
      ,cast([SpecialCost] as decimal(15,3)) as SpecialCost
      ,cast([DocumentAdmindCost] as decimal(15,3)) as DocAdminCost
      ,cast([MCQ]  as decimal(15,3)) as MCQ
      ,cast([MOQ] as decimal(15,3)) as MOQ
      ,cast([Subcharge] as decimal(15,3)) as SubCharge
      ,[PE]
      ,[Style] as StyleNo
      ,[Class] as ClassCode
      --,[TQTY]
  FROM [PHGDB2].[dbo].[OES_ProfitMargin]
where cono='{0}' and sopno='{1}'", cono, so);

            DataTable dtable = GetDataTable(sql);

            List<SOSSDetail> ds = TableORM.GetObjects<SOSSDetail>(dtable, true);
            return ds;
        }

        public List<SOSSClassCode> GetSOSSClassCodes(int dt, string tm)
        {
            string sql = string.Format(@"
select  distinct Stylno, TYPE38  
from AULT4F1.PHP38 a
inner join zphlib_aul.oes1 b on a.cono38=b.cono and a.PSTL38=b.STYLNO
where dt={0} and tm='{1}'
order by Stylno, TYPE38", dt, tm);
            sql = string.Format("select Stylno as StyleNo,TYPE38 as ClassCode from openquery(AS400,'{0}')", ConvertToDBsql(sql));

            DataTable dtable = GetDataTable(sql);
            List<SOSSClassCode> ds = TableORM.GetObjects<SOSSClassCode>(dtable, true);
            return ds;
        }
        private decimal? QtyZero2Null(decimal? d)
        {
            return (d ?? 0) == 0 ? (decimal?)null : d;
        }
        private List<WorkOrderColor> GetSampleQtys(string cono, string so)
        {
            //            string sql = string.Format(@"select a.Company,a.SalesOrderNo,b.SalesOrderLine,
            //      a.ColorCode,a.WorkOrderNo,sum(ISNULL(a.SampleQty,0)) as SampleQty
            //       from [PH.RWO1].[dbo].[WorkOrderSample] a
            //       inner join [PH.RWO1].[dbo].[WorkOrder] b
            //        on a.Company=b.Company and a.SalesOrderNo=b.SalesOrderNo and a.WorkOrderNo=b.WorkOrderNo
            //        where   a.Company='{0}'  and  a.SalesOrderNo='{1}'  and (a.SampleQty<>0) and (a.SampleQty is Not Null)
            //       group by a.Company,a.SalesOrderNo,b.SalesOrderLine,a.ColorCode,a.WorkOrderNo", cono, so);
            //            var samples = RWOContext.ExecuteQuery<PH.RWO.BO.WorkOrderSample>(sql);

            var samples = from a in RWOContext.WorkOrderColors
                          where a.Company == cono && a.SalesOrderNo == so
                          select a;
            return samples.ToList<WorkOrderColor>();
        }

        private void SetSampleByColor(object obj, string color, decimal? sampleQty)
        {
            foreach (PropertyInfo pi in typeof(SOSSDetail).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
            {

                if (pi.CanWrite)
                {
                    string colorField = pi.Name;
                    if (colorField.StartsWith("Color"))
                    {
                        string colorValue = Convert.ToString(pi.GetValue(obj, null));
                        if (colorValue != color) continue;

                        int index = Convert.ToInt32(colorField.Replace("Color", ""));
                        string qtyField = string.Format("Qty{0}", index);
                        string sampleQtyField = string.Format("SampleQty{0}", index);

                        PropertyInfo piQty = obj.GetType().GetProperty(qtyField);
                        decimal qty = (decimal?)piQty.GetValue(obj, null) ?? 0;
                        qty -= (sampleQty ?? 0);
                        if (qty < 0) qty = 0;
                        piQty.SetValue(obj, qty, null);

                        PropertyInfo piSampleQty = obj.GetType().GetProperty(sampleQtyField);
                        piSampleQty.SetValue(obj, sampleQty, null);

                    }

                }

            }
        }
        private string GetQuotaCat(string cono, string cust, string styleno)
        {
            string sql = string.Format(@"select CAT from [phgdb2].dbo.CC_CustCat where cono='{0}' and RTrim(Cusn)='{1}' and  RTrim(Stylno)='{2}'", cono, cust, styleno);
            DataTable dtable = GetDataTable(sql);
            if (dtable.Rows.Count > 0)
            {
                return Convert.ToString(dtable.Rows[0][0]);
            }
            return "";
        }

        #endregion


        public DataSet GetAmendData(string AmendNo, int Verid)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            string ConnStr = RWOContext.Connection.ConnectionString;
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_AmendRpt", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@AmendNo", SqlDbType.VarChar, 8));
            da.SelectCommand.Parameters.Add(new SqlParameter("@VerId", SqlDbType.Int));


            da.SelectCommand.Parameters["@AmendNo"].Value = AmendNo;
            da.SelectCommand.Parameters["@VerId"].Value = Verid;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            // return ds.Tables[0];
            return ds;

        }



    }
    public class WorkOrderList : BaseEntityList<WorkOrder, RWOSOPCDataContext>
    {
        public IEnumerable<WorkOrder> GetWorkOrders(string wo)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.WorkOrders
                        where a.WorkOrderNo == wo
                        select a;
            return lists;
        }
        public WorkOrder GetWorkOrder(string wo)
        {
            var obj = (from a in CurrentDataContext.WorkOrders
                       where a.WorkOrderNo == wo
                       select a).FirstOrDefault();
            return obj;
        }
        public IEnumerable<WorkOrder> GetWorkOrderT3NotDone()
        {
            //DateTime dt = new DateTime(2009, 9, 1);
            DateTime dt = DateTime.Now; //由David修改 202008-18

            var lists = from a in CurrentDataContext.WorkOrders
                        where (a.AjustT3DateConfirm == null || a.AjustT3DateConfirm == "") && (a.DeliveryShipCompleted.HasValue && a.DeliveryShipCompleted.Value >= dt)
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
                        select a;
            return lists;
        }
        public IEnumerable<WorkOrder> GetWorkOrderT3Done()
        {
            DateTime dt = new DateTime(2009, 9, 1);
            var lists = from a in CurrentDataContext.WorkOrders
                        where (a.AjustT3DateConfirm != null && a.AjustT3DateConfirm != "") && (a.DeliveryShipCompleted.HasValue && a.DeliveryShipCompleted.Value >= dt)
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
                        select a;
            return lists;
        }
        public IEnumerable<WorkOrder> GetWorkOrderERPNotConfirm()
        {
            var lists = from a in CurrentDataContext.WorkOrders
                        where !a.WorkOrderNo.StartsWith("W")
                        && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
                        select a;
            //foreach (var wo in lists)
            //{
            //    wo.GetIEBInfor();
            //}
            return lists;
        }
        public IEnumerable<WorkOrder> GetWorkOrderFWOption2NotDone()
        {
            // cancel, complete 不用取出来
            //var lists = from a in CurrentDataContext.WorkOrders
            //            where !a.WOChooseFWs.Any(p => (p.Chosen ?? false) && p.Seq != 1)
            //            && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
            //            select a;
            var lists = from a in CurrentDataContext.WorkOrders
                        //where !a.WOChooseFWs.Any(p => p.Seq == 2 && !p.FactoryWork.HasValue)
                        where a.Project.SoIssueDate >= DateTime.Now.AddYears(-1)
                        && a.WOChooseFWs.Any(p => p.Seq == 2 && !p.FactoryWork.HasValue)
                        && a.WorkOrderNo.StartsWith("W")
                        && !a.WOChooseFWs.Any(p => p.Chosen ?? false)
                        && !a.Project.ProjectNo.StartsWith("NO")
                        && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
                        select a;
            //foreach (var wo in lists)
            //{
            //    wo.GetIEBInfor();
            //}
            return lists;
        }
        public IEnumerable<WorkOrder> GetWorkOrderFWOption3NotDone()
        {
            // cancel, complete 不用取出来
            var lists = from a in CurrentDataContext.WorkOrders
                        where a.WOChooseFWs.Any(p => (p.Seq == 2 && p.FactoryWork.HasValue))
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WOChooseFWs.Any(p => p.Seq == 3 && !p.FactoryWork.HasValue)
                        && !a.WOChooseFWs.Any(p => p.Chosen ?? false)
                        && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
                        select a;
            //foreach (var wo in lists)
            //{
            //    wo.GetIEBInfor();
            //}
            return lists;
        }
        public IEnumerable<WorkOrder> GetWorkOrderFWOption4NotDone()
        {
            // cancel, complete 不用取出来
            var lists = from a in CurrentDataContext.WorkOrders
                        where a.Project.SoIssueDate >= DateTime.Now.AddYears(-1)
                        && a.WOChooseFWs.Any(p => (p.Seq == 2 && p.FactoryWork.HasValue))
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WOChooseFWs.Any(p => (p.Seq == 3 && p.FactoryWork.HasValue))
                        && a.WOChooseFWs.Any(p => (p.Seq == 4 && !p.FactoryWork.HasValue))
                        && !a.WOChooseFWs.Any(p => p.Chosen ?? false)
                        && a.WOStatus != "-1" && a.WOStatus != "8" && a.Project.Status != "C"
                        select a;
            //foreach (var wo in lists)
            //{
            //    wo.GetIEBInfor();
            //}
            return lists;
        }
        public IEnumerable<WOChooseFW> GetWOChooseFWNotDone()
        {
            // cancel, complete 不用取出来
            var lists = from a in CurrentDataContext.WOChooseFWs
                        where a.WorkOrder.WOChooseFWs.Any(p => (p.Seq == 2 && p.FactoryWork.HasValue))
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WorkOrder.WOChooseFWs.Any(p => (p.Seq == 3 && p.FactoryWork.HasValue))
                        && a.WorkOrder.WOChooseFWs.All(p => !(p.Chosen ?? false))
                        && a.WorkOrder.WOStatus != "-1" && a.WorkOrder.WOStatus != "8" && a.WorkOrder.Project.Status != "C"
                        select a;
            //foreach (var wo in lists)
            //{
            //    wo.GetIEBInfor();
            //}
            return lists;
        }
        public IEnumerable<WOChooseFW> GetWOChooseFWDone()
        {
            // cancel, complete 不用取出来
            var lists = from a in CurrentDataContext.WOChooseFWs
                        //where a.WorkOrder.WOChooseFWs.Any(p => (p.Chosen ?? false))
                        where (a.Chosen ?? false) == true //由David修改 2020-08-18
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WorkOrder.WOStatus != "-1" && a.WorkOrder.WOStatus != "8" && a.WorkOrder.Project.Status != "C"
                        select a;


            //foreach (var wo in lists)
            //{
            //    wo.GetIEBInfor();
            //}
            return lists;
        }

        public string GetCustomerCode(string wo)
        {
            WorkOrder workorder = GetWorkOrder(wo);
            if (workorder == null) return "";
            return workorder.Project.Customer;
        }
        public IEnumerable<WorkOrder> GetWorkOrders(string cust, DateTime exfty1, DateTime exfty2, DateTime delDate1, DateTime delDate2)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.Projects
                        from b in CurrentDataContext.WorkOrders
                        from c in CurrentDataContext.CustomerCodes
                        where a.Company == b.Company && a.SalesOrderNo == b.SalesOrderNo && b.WOStatus != "-1"
                        && a.Customer == c.CustomerCode1
                        && (cust == "" || c.Customer == cust)
                        && (exfty1 == DateTime.MinValue
                            //|| (c.Customer == "TAMA" && b.ShipMode.ToUpper().Contains("BOAT")
                            //    && b.FCLExFtyShipCompleted >= exfty1 && b.FCLExFtyShipCompleted <= exfty2)
                           || (b.LCLExFtyShipCompleted >= exfty1 && b.LCLExFtyShipCompleted <= exfty2)
                           )
                            //&& (exfty1 == DateTime.MinValue || (b.LCLExFtyShipCompleted >= exfty1 && b.LCLExFtyShipCompleted <= exfty2))
                        && (delDate1 == DateTime.MinValue || (b.DeliveryShipCompleted >= delDate1 && b.DeliveryShipCompleted <= delDate2))
                        select b;
            return lists;
        }
        public IEnumerable<WorkOrder> GetWorkOrdersByProject(string projectNo)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.WorkOrders
                        where a.Project.ProjectNo == projectNo
                        && a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1"
                        orderby a.WorkOrderNo
                        select a;
            return lists;
        }
        public sp_IEBystyleResult GetIEBystyle(string custStyle, string factory, string category)
        {
            RWOSOPCDataContext context = CurrentDataContext;
            context.CommandTimeout = 6000;

            ISingleResult<sp_IEBystyleResult> lists = context.sp_IEBystyle(custStyle, factory);
            List<sp_IEBystyleResult> qns = lists.ToList<sp_IEBystyleResult>();

            sp_IEBystyleResult rs;
            if (qns != null && qns.Count > 0)
            {
                rs = qns[0];
                if ((rs.EFF ?? 0) == 0)
                {
                    //sp_IEBystyleResult qn = AssignIEBystyleFromDef(category, factory);
                    //Xsj:20170214 注釋掉以上代碼，添加以下代碼，用於獲取指定款的SAH而不是取平均值。
                    sp_IEBystyleResult qn = AssignIEBystyleFromDef(category, factory, custStyle);

                    if (qn != null) rs.EFF = qn.EFF;
                }
                return rs;
            }
            else
            {
                //return AssignIEBystyleFromDef(category, factory);
                //Xsj:20170214 注釋掉以上代碼，添加以下代碼，用於獲取指定款的SAH而不是取平均值。
                return AssignIEBystyleFromDef(category, factory, custStyle);
            }

            //{
            //    sp_IEBystyle_DefResult qndef = GetIEBystyleDef(category, factory);
            //    if (qndef != null)
            //    {
            //        sp_IEBystyleResult qn = new sp_IEBystyleResult();
            //        qn.Factory = qndef.Factory;
            //        qn.CustomerStyle = qndef.Category;
            //        qn.CU = qndef.CU;
            //        qn.EFF = qndef.EFF;
            //        qn.SAH = qndef.SAH;
            //        qn.WF = qndef.WF;
            //        qn.IsDef = true;
            //        return qn;
            //    }
            //    else return null;
            //}
        }

        //private sp_IEBystyle_DefResult GetIEBystyleDef(string category, string factory)
        //{
        //    RWOSOPCDataContext context = CurrentDataContext;
        //    context.CommandTimeout = 6000;

        //    ISingleResult<sp_IEBystyle_DefResult> lists = context.sp_IEBystyle_Def(category, factory);
        //    List<sp_IEBystyle_DefResult> qns = lists.ToList<sp_IEBystyle_DefResult>();

        //    if (qns != null && qns.Count > 0)
        //        return qns[0];
        //    else return null;
        //}
        //private sp_IEBystyleResult AssignIEBystyleFromDef(string category, string factory)
        //{
        //    sp_IEBystyle_DefResult qndef = GetIEBystyleDef(category, factory);
        //    if (qndef != null)
        //    {
        //        sp_IEBystyleResult qn = new sp_IEBystyleResult();
        //        qn.Factory = qndef.Factory;
        //        qn.CustomerStyle = qndef.Category;
        //        qn.CU = qndef.CU;
        //        qn.EFF = qndef.EFF;
        //        qn.SAH = qndef.SAH;
        //        qn.WF = qndef.WF;
        //        qn.IsDef = true;
        //        return qn;
        //    }
        //    return null;
        //}
        //Xsj:註銷以上代碼，添加以下代碼：獲取Style的SAH時，不使用平均值而精確為IE的款。
        private sp_IEBystyle_DefResult GetIEBystyleDef(string category, string factory, string style)
        {
            RWOSOPCDataContext context = CurrentDataContext;
            context.CommandTimeout = 6000;

            ISingleResult<sp_IEBystyle_DefResult> lists = context.sp_IEBystyle_Def(category, factory, style);
            List<sp_IEBystyle_DefResult> qns = lists.ToList<sp_IEBystyle_DefResult>();

            if (qns != null && qns.Count > 0)
                return qns[0];
            else return null;
        }

        private sp_IEBystyleResult AssignIEBystyleFromDef(string category, string factory, string style)
        {
            sp_IEBystyle_DefResult qndef = GetIEBystyleDef(category, factory, style);
            if (qndef != null)
            {
                sp_IEBystyleResult qn = new sp_IEBystyleResult();
                qn.Factory = qndef.Factory;
                qn.CustomerStyle = qndef.Category;
                qn.CU = qndef.CU;
                qn.EFF = qndef.EFF;
                qn.SAH = qndef.SAH;
                qn.WF = qndef.WF;
                qn.IsDef = true;
                return qn;
            }
            return null;
        }

    }
    public class WorkOrderColorList : BaseEntityList<WorkOrderColor, RWOSOPCDataContext>
    {
        public IEnumerable<RoundWorkOrder> GetWorkOrderColorsNotDoneRWO()
        {
            //移去completed and cancelled 
            //WO 已經做過Chosen ,
            //RWO 沒有做過 Chosen (NumberOfLine is null)
            //DateTime dt = new DateTime(2011, 12, 31);
            //var lists = from a in CurrentDataContext.WorkOrderColors
            //            where a.WorkOrder.WOStatus != "-1" && a.WorkOrder.WOStatus != "8" && a.WorkOrder.Project.Status != "C"
            //            && a.RoundWorkOrders.Count > 0
            //            && a.RoundWorkOrders.All(p => (!p.NumberOfLine.HasValue))
            //                //&& a.WorkOrder.DeliveryShipCompleted > dt
            //            && a.WorkOrder.WOChooseFWs.Any(p => (p.Chosen ?? false))
            //            select a;



            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WorkOrderColor.RoundWorkOrders.Count > 0
                            //&& a.WorkOrderColor.RoundWorkOrders.All(p => (!p.NumberOfLine.HasValue))
                        && a.RWOChooseFWs.All(p => !(p.Chosen ?? false))
                        && a.WorkOrderColor.WorkOrder.WOChooseFWs.Any(p => (p.Chosen ?? false))
                        select a;

            return lists;
        }
        public IEnumerable<RoundWorkOrder> GetWorkOrderColorsHasDoneRWO()
        {
            //移去completed and cancelled 
            //WO 已經做過Chosen ,
            //RWO 已經做過 Chosen (NumberOfLine is not null)
            //var lists = from a in CurrentDataContext.WorkOrderColors
            //            where a.WorkOrder.WOStatus != "-1" && a.WorkOrder.WOStatus != "8" && a.WorkOrder.Project.Status != "C"
            //            && a.RoundWorkOrders.Count > 0
            //            && a.RoundWorkOrders.All(p => (p.NumberOfLine.HasValue))
            //            && a.WorkOrder.WOChooseFWs.Any(p => (p.Chosen ?? false))
            //            select a;


            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WorkOrderColor.RoundWorkOrders.Count > 0
                            //&& a.RoundWorkOrders.All(p => (p.NumberOfLine.HasValue))
                        && a.RWOChooseFWs.Any(p => (p.Chosen ?? false))
                        && a.WorkOrderColor.WorkOrder.WOChooseFWs.Any(p => (p.Chosen ?? false))
                        select a;

            return lists;
        }

        public IEnumerable<WorkOrderColor> GetWorkOrderColors(string wo)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.WorkOrderColors
                        where a.WorkOrderNo == wo
                        select a;
            return lists;
        }
        public WorkOrderColor GetWorkOrderColor(string wo, string colorCode)
        {
            var aa = from a in CurrentDataContext.WorkOrderColors
                     where a.WorkOrderNo == wo && a.ColorCode == colorCode
                     select a;

            var obj = aa.FirstOrDefault();
            return obj;
        }
        public WorkOrderColor GetWorkOrderColor(WorkOrderColor woc)
        {
            var aa = from a in CurrentDataContext.WorkOrderColors
                     where a.Company == woc.Company && a.SalesOrderNo == woc.SalesOrderNo && a.WorkOrderNo == woc.WorkOrderNo && a.ColorCode == woc.ColorCode
                     select a;

            var obj = aa.FirstOrDefault();
            return obj;
        }

    }

    public class WorkOrderVersionList : BaseEntityList<WorkOrderVersion, RWOSOPCDataContext>
    {
        public WorkOrderVersion GetWorkOrderVersion(string wo, int version)
        {
            var aa = (from a in CurrentDataContext.WorkOrderVersions
                      where a.WorkOrderNo == wo && a.Version == version
                      select a).FirstOrDefault();
            return aa;
        }

    }
    public class WorkOrderSKUList : BaseEntityList<WorkOrderSKU, RWOSOPCDataContext>
    {
        public IEnumerable<WorkOrderSKU> GetWorkOrderSKUBulk(string wo)
        {
            var lists = from a in CurrentDataContext.WorkOrderSKUs
                        where a.WorkOrderNo == wo
                        orderby a.ColorCode, a.CustCup
                        select a;
            return lists;
        }
        public List<WorkOrderSKU> GetWorkOrderSKUBulkWithSort(string wo)
        {
            var aa = GetWorkOrderSKUBulk(wo);
            List<WorkOrderSKU> lists = aa.ToList<WorkOrderSKU>();
            lists.Sort(SortColorCup);
            return lists;
        }

        private int SortColorCup(WorkOrderSKU x, WorkOrderSKU y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    string a = x.ColorCode == null ? "" : x.ColorCode;
                    string b = y.ColorCode == null ? "" : y.ColorCode;

                    i = a.CompareTo(b);
                    //i = x.ColorCode.CompareTo(y.ColorCode);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.CupOrder - y.CupOrder;
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

        //public IEnumerable<WorkOrderSKU> GetWorkOrderSKUSample(string wo)
        //{
        //    var lists = from a in CurrentDataContext.WorkOrderSKUs
        //                where a.WorkOrderNo == wo && (a.SampleQty.HasValue && a.SampleQty.Value > 0)
        //                orderby a.ColorCode, a.Cup
        //                select a;
        //    return lists;
        //}
        public string GetCustCup(string wo, string color, string size, string cup)
        {
            var lists = from a in CurrentDataContext.WorkOrderSKUs
                        where a.WorkOrderNo == wo && a.ColorCode == color && a.Size == size && a.Cup == cup
                        select a;
            string custCup = cup;
            foreach (WorkOrderSKU item in lists)
            {
                custCup = item.CustCup;
            }
            return custCup;
        }
    }
    public class WorkOrderSampleList : BaseEntityList<WorkOrderSample, RWOSOPCDataContext>
    {
        public IEnumerable<WorkOrderSample> GetWorkOrderSample(string wo)
        {
            var lists = from a in CurrentDataContext.WorkOrderSamples
                        where a.WorkOrderNo == wo && (a.SampleQty.HasValue && a.SampleQty.Value > 0)
                        orderby a.ColorCode, a.Cup
                        select a;
            return lists;
        }

        public List<WorkOrderSample> GetWorkOrderSampleWithSort(string wo)
        {
            var aa = GetWorkOrderSample(wo);
            List<WorkOrderSample> lists = aa.ToList<WorkOrderSample>();
            lists.Sort(SortColorCup);
            return lists;
        }

        //用于WO Report Sample部分需要增加Despatch Qty,  由David增加本方法 2022-11-12
        public List<WorkOrderSample> GetWorkOrderSampleWithSort1(string wo)
        {
            var AllSampleList = CurrentDataContext.WorkOrderSamples.Where(p => p.WorkOrderNo == wo && (p.SampleQty ?? 0) > 0).ToList();
            foreach (var obj in AllSampleList)
            {
                obj.TotalDespatchQty = AllSampleList.Where(p => p.Symbol == obj.Symbol && p.SampleType == obj.SampleType && p.SLevel == obj.SLevel &&
                    p.WorkShop == obj.WorkShop && p.AddressTo == obj.AddressTo &&
                    (p.SampleDespatchDate ?? DateTime.MinValue) == (obj.SampleDespatchDate ?? DateTime.MinValue) &&
                    p.ColorCode == obj.ColorCode && p.Cup == obj.Cup).Sum(p => (p.SampleQty ?? 0) - (p.KeepQty ?? 0));
            }

            List<WorkOrderSample> lists = AllSampleList.ToList<WorkOrderSample>();
            lists.Sort(SortColorCup);
            return lists;
        }

        private int SortColorCup(WorkOrderSample x, WorkOrderSample y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = ((x.SampleDespatchDate ?? DateTime.MinValue) - (y.SampleDespatchDate ?? DateTime.MinValue)).Days;
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.ColorCode.CompareTo(y.ColorCode);
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else
                        {
                            i = x.CupOrder - y.CupOrder;
                            if (i < 0) return -1;
                            else if (i > 0) return 1;
                            else
                            {
                                string a = x.SampleType == null ? "" : x.SampleType;
                                string b = y.SampleType == null ? "" : y.SampleType;

                                // i = x.SampleType.CompareTo(y.SampleType);
                                i = a.CompareTo(b);
                                if (i < 0) return -1;
                                else if (i > 0) return 1;
                                else
                                {
                                    a = x.WorkShop == null ? "" : x.WorkShop;
                                    b = y.WorkShop == null ? "" : y.WorkShop;
                                    //i = x.WorkShop.CompareTo(y.WorkShop);
                                    i = a.CompareTo(b);
                                    if (i < 0) return -1;
                                    else if (i > 0) return 1;
                                    else return 0;

                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public class RoundWorkOrderList : BaseEntityList<RoundWorkOrder, RWOSOPCDataContext>
    {
        public IEnumerable<RoundWorkOrder> GetRoundWorkOrders(string wo, string color, int round)
        {
            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderNo == wo && a.ColorCode == color && a.RoundNo == round
                        select a;
            return lists;
        }
        public RoundWorkOrder GetRoundWorkOrder(string wo, string color, int round)
        {
            var obj = (from a in CurrentDataContext.RoundWorkOrders
                       where a.WorkOrderNo == wo && a.ColorCode == color && a.RoundNo == round
                       select a).FirstOrDefault();
            return obj;
        }
        public IEnumerable<RoundWorkOrder> GetRoundWorkOrdersByProject(string projectNo)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderColor.WorkOrder.Project.ProjectNo == projectNo
                        orderby a.WorkOrderNo, a.RoundNo
                        select a;
            return lists;
        }

        public IEnumerable<RoundWorkOrder> GetRoundWorkOrderT3NotDone()
        {
            //DateTime dt = new DateTime(2009, 9, 1);
            DateTime dt = DateTime.Now; //由David修改 2020-08-30

            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where (a.AjustT3DateConfirm == null || a.AjustT3DateConfirm == "") && (a.DeliveryDate.HasValue && a.DeliveryDate >= dt)
                        && (a.AjustT3DateConfirm == null || a.AjustT3DateConfirm == "") //由David修改 2020-08-30
                        && (a.NeedAdjustT3Date == null || a.NeedAdjustT3Date == "" || a.NeedAdjustT3Date == "N" || a.NeedAdjustT3Date == "!") //由David修改 2020-08-30 a.NeedAdjustT3Date == "N"
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        orderby a.NeedAdjustT3Date
                        select a;
            return lists;
        }
        public IEnumerable<RoundWorkOrder> GetRoundWorkOrderT3Done()
        {
            //DateTime dt = new DateTime(2009, 9, 1);
            DateTime dt = DateTime.Now.AddMonths(-6); //由David修改 2020-08-30
            var lists = from a in CurrentDataContext.RoundWorkOrders
                        //where (a.AjustT3DateConfirm != null && a.AjustT3DateConfirm != "") && (a.DeliveryDate.HasValue && a.DeliveryDate >= dt)
                        where (a.DeliveryDate.HasValue && a.DeliveryDate >= dt)
                        && (a.NeedAdjustT3Date == "Y")  //由David修改 2020-08-30
                        && a.WorkOrderNo.StartsWith("W")
                        && a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        orderby a.AjustT3DateConfirm    //由David修改 2020-08-30
                        select a;
            return lists;
        }

        public IEnumerable<RoundWorkOrder> GetRWOsNotConfirm()
        {
            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        && a.WorkOrderNo.StartsWith("W")
                        && (a.OAConfirm == null || a.OAConfirm == "")
                        select a;
            return lists;
        }

        public IEnumerable<RoundWorkOrder> GetRWOsERPNotConfirm()
        {
            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        && !a.WorkOrderNo.StartsWith("W")
                        //&& (a.OAConfirm == null || a.OAConfirm == "")
                        select a;
            return lists;
        }
        public IEnumerable<RoundWorkOrder> GetRWOsHasDoneOption()
        {
            //移去completed and cancelled 
            //WO 已經做過Chosen ,
            //RWO 已經做過 Chosen (NumberOfLine is not null)
            var lists = from a in CurrentDataContext.RoundWorkOrders
                        where a.WorkOrderColor.WorkOrder.WOStatus != "-1" && a.WorkOrderColor.WorkOrder.WOStatus != "8" && a.WorkOrderColor.WorkOrder.Project.Status != "C"
                        && a.WorkOrderNo.StartsWith("W")
                            //&& a.RoundWorkOrders.Count > 0
                        && a.WorkOrderColor.RoundWorkOrders.All(p => (p.NumberOfLine.HasValue))
                        && a.WorkOrderColor.WorkOrder.WOChooseFWs.Any(p => (p.Chosen ?? false))
                        select a;
            return lists;
        }

    }


    public class RoundWorkOrderSKUList : BaseEntityList<RoundWorkOrderDetail, RWOSOPCDataContext>
    {
        public IEnumerable<RoundWorkOrderDetail> GetRoundWorkOrderSKUBulk(string wo, string color, int round)
        {
            var lists = from a in CurrentDataContext.RoundWorkOrderDetails
                        where a.WorkOrderNo == wo && a.ColorCode == color && a.RoundNo == round
                        orderby a.ColorCode, a.Cup
                        select a;
            return lists;
        }

        public List<RoundWorkOrderDetail> GetRoundWorkOrderSKUBulkWithSort(string wo, string color, int round)
        {
            var aa = GetRoundWorkOrderSKUBulk(wo, color, round);
            List<RoundWorkOrderDetail> lists = aa.ToList<RoundWorkOrderDetail>();
            lists.Sort(SortColorCup);
            return lists;
        }

        private int SortColorCup(RoundWorkOrderDetail x, RoundWorkOrderDetail y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.ColorCode.CompareTo(y.ColorCode);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.CupOrder - y.CupOrder;
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

    }

    public class RoundWorkOrderIIList : BaseEntityList<RoundWorkOrderII, RWOSOPCDataContext>
    {
        public IEnumerable<RoundWorkOrderII> GetRoundWorkOrderIIs(string wo, string color, int round, string subFactory)
        {
            var lists = from a in CurrentDataContext.RoundWorkOrderIIs
                        where a.WorkOrderNo == wo && a.ColorCode == color && a.RoundNo == round && a.SubFactory == subFactory
                        select a;
            foreach (var item in lists)
            {
                item.GetNonWorkingdays();
            }
            return lists;
        }
        public RoundWorkOrderII GetRoundWorkOrder(string wo, string color, int round, string subFactory)
        {
            var obj = (from a in CurrentDataContext.RoundWorkOrderIIs
                       where a.WorkOrderNo == wo && a.ColorCode == color && a.RoundNo == round && a.SubFactory == subFactory
                       select a).FirstOrDefault();
            return obj;
        }

        public IEnumerable<RoundWorkOrderII> GetRoundWorkOrderT3NotDone()
        {
            DateTime dt = new DateTime(2009, 9, 1);
            var lists = from a in CurrentDataContext.RoundWorkOrderIIs
                        where (a.AjustT3DateConfirm == null || a.AjustT3DateConfirm == "") && (a.DeliveryDate.HasValue && a.DeliveryDate >= dt)
                        select a;
            return lists;
        }
    }
    public class RoundWorkOrderIISKUList : BaseEntityList<RoundWorkOrderDetailII, RWOSOPCDataContext>
    {
        public IEnumerable<RoundWorkOrderDetailII> GetRoundWorkOrderIISKUBulk(string wo, string color, int round, string subFactory)
        {
            var lists = from a in CurrentDataContext.RoundWorkOrderDetailIIs
                        where a.WorkOrderNo == wo && a.ColorCode == color && a.RoundNo == round && a.SubFactory == subFactory
                        orderby a.ColorCode, a.Cup
                        select a;
            return lists;
        }

        public List<RoundWorkOrderDetailII> GetRoundWorkOrderIISKUBulkWithSort(string wo, string color, int round, string subFactory)
        {
            var aa = GetRoundWorkOrderIISKUBulk(wo, color, round, subFactory);
            List<RoundWorkOrderDetailII> lists = aa.ToList<RoundWorkOrderDetailII>();
            lists.Sort(SortColorCup);
            return lists;
        }

        private int SortColorCup(RoundWorkOrderDetailII x, RoundWorkOrderDetailII y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.ColorCode.CompareTo(y.ColorCode);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.CupOrder - y.CupOrder;
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

    }

    public class WOSKURatioList : BaseEntityList<WOSKURatio, RWOSOPCDataContext>
    {
        public IEnumerable<WOSKURatio> GetWOSKURatio(string styleNo)
        {
            var lists = this.CurrentDataContext.WOSKURatios.Where(p => p.SytleNo == styleNo);
            return lists;
        }
    }

    public class StyleList : BaseEntityList<Style, RWOSOPCDataContext>
    {
        public IEnumerable<Style> GetStyleList(string company, string styleno)
        {
            return CurrentDataContext.Styles.Where(p => p.Company == company && p.StyleNo == styleno);
        }
    }

    public class CustomerList : BaseEntityList<CustomerCode, RWOSOPCDataContext>
    {
        public IEnumerable<CustomerCode> GetCustomer(string customerCode)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.CustomerCodes
                        where a.CustomerCode1 == customerCode
                        select a;
            return lists;
        }
        public IEnumerable<string> GetDistinctCustomers()
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = (from a in CurrentDataContext.CustomerCodes
                         orderby a.Customer
                         select a.Customer).Distinct();
            return lists;
        }
        public IEnumerable<CustomerCode> GetCustomerCodes(string customer)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = from a in CurrentDataContext.CustomerCodes
                        where a.Customer == customer
                        select a;
            return lists;
        }
        public string[] GetCustomerCodesByCustomer(string customer)
        {
            var aa = GetCustomerCodes(customer);
            string[] ss = new string[aa.Count()];
            int i = 0;
            foreach (CustomerCode item in aa)
            {
                ss[i] = item.CustomerCode1;
                i++;
            }
            return ss;
        }

        public string GetCustomerByCode(string customerCode)
        {
            CurrentDataContext.CommandTimeout = 1000;
            var lists = GetCustomer(customerCode);
            string cust = "";
            foreach (CustomerCode item in lists)
            {
                cust = item.Customer;
            }
            return cust;
        }
        public string GetTeamByCustomerCode(string customerCode)
        {
            var lists = GetCustomer(customerCode);
            string team = "";
            foreach (CustomerCode item in lists)
            {
                team = item.Team;
            }
            return team;
        }
        public bool IsFrenchCustomer(string customerCode)
        {
            var lists = GetCustomer(customerCode);
            string cust = " ";
            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            string frenchCust = "ETAA, ETAM, MONO, DAXO, LARD, TAIL";
            foreach (CustomerCode item in lists)
            {
                cust = item.Customer;
            }
            return (frenchCust.Contains(cust));

        }
    }

    public class DictionaryList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string dataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == dataType
                        orderby a.DataCode
                        select a;
            return lists;
        }

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string dataType, string dataCode)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == dataType && a.DataCode == dataCode
                       select a).FirstOrDefault();
            return dic;
        }
        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string dataType, string dataCode, string dataName)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == dataType && a.DataCode == dataCode && a.DataName == dataName
                       select a).FirstOrDefault();
            return dic;
        }

        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionaryMutiLang(string dataType)
        {
            var dic = GetDataDictionary(dataType);
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
            MultiLanguageList lang = new MultiLanguageList();
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dic)
            {
                string text = lang.GetDictionaryLanguageText(dataType, item.DataCode, "Description", langID);
                if (string.IsNullOrEmpty(text)) continue;

                item.Description = text;
            }
            return dic;
        }

    }

    public class MultiLanguageList : BaseEntityList<PH.Platform.Lang.BO.Lang_Record, PH.Platform.Lang.BO.LangDataContext>
    {
        public PH.Platform.Lang.BO.Lang_Record GetLanguageRecord(Guid docID, string columnName, string langID)
        {
            var r = (from a in this.CurrentDataContext.Lang_Records
                     where a.DocID == docID && a.ColumnName == columnName && a.LangID == langID
                     select a).FirstOrDefault();
            return r;
        }

        public IEnumerable<PH.Platform.Lang.BO.Lang_Record> GetLanguageRecordList(Guid docID, string columnName)
        {
            var rs = from a in this.CurrentDataContext.Lang_Records
                     where a.DocID == docID && a.ColumnName == columnName
                     select a;
            return rs;
        }

        public string GetDictionaryLanguageText(string dataType, string dataCode, string columnName, string langID)
        {
            DictionaryList dicList = new DictionaryList();
            PH.Platform.Misc.BO.Misc_DataDictionary d = dicList.GetDataDictionary(dataType, dataCode);
            if (d == null) return string.Empty;

            PH.Platform.Lang.BO.Lang_Record r = (from a in this.CurrentDataContext.Lang_Records
                                                 where a.DocID == d.DocID && a.ColumnName == columnName && a.LangID == langID
                                                 select a).FirstOrDefault();
            if (r == null) return d.Description;

            return r.Text;
        }


    }

    //public class BF
    //{
    //    public string DataCode { get; set; }
    //    public string DataName { get; set; }

    //}
    //public class  MRs
    // {
    //    public string SuppRef { get; set; }
    //    public string MaterialGroup { get; set; }
    //    public string MaterialType { get; set; }
    //    public string MaterialCode { get; set; }
    //    public string SupplierUnit { get; set; }
    //    public decimal WastageOnCAC { get; set; }
    //    public decimal AllInPrice { get; set; }
    //    public int MOQ { get; set; }
    //    public string ERPSupplier { get; set; }
    //    public string Currency { get; set; }
    //    public decimal ExchangeRate { get; set; }

    // }

    public class AS400DB
    {
        #region AS400 DB connection
        private static AS400Interface.IDataAccess _AS400DB;
        public static AS400Interface.IDataAccess DB
        {
            get
            {
                if (_AS400DB == null)
                {
                    string as400url = GetSettings();
                    _AS400DB = (AS400Interface.IDataAccess)Activator.GetObject(typeof(AS400Interface.IDataAccess), as400url);
                }
                return _AS400DB;
            }
        }
        private static string GetSettings()
        {
            int AS400ServerPort = 14100;
            string AS400ServerName = "As400Server";
            string AS400ServerIP = "10.2.1.242";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            return string.Format("tcp://{0}:{1}/{2}",
                AS400ServerIP,
                AS400ServerPort,
                AS400ServerName);
        }
        public static DataTable GetDataByPage_AS400(string ASQL)
        {
            Guid gkey;
            gkey = Guid.NewGuid();  // 对于不同的SQL语句，必须生成不同的KEY
            // 预处理SQL语句
            DB.GetTablePrepare(ASQL /* SQL 语句 */, gkey /* 该条语句的KEY */, 100 /* 每页的数据行数 */);
            // 取出第一页数据
            DataTable returnTable = DB.GetNextTable(gkey /* 根据上面的KEY去取得第一页数据 */);
            DataTable table = DB.GetNextTable(gkey);// 取下一页数据
            //if (table == null)// 已经无新的数据
            while (table != null)
            {
                foreach (DataRow row in table.Rows)
                {
                    returnTable.Rows.Add(row.ItemArray);
                }
                // 取下一页数据
                table = DB.GetNextTable(gkey);
            }
            //关闭上次未取完的数据连接
            DB.EndGetTable(gkey);
            returnTable.AcceptChanges();
            return returnTable;
        }
        //public static void Execute_BatchSql(string sql, string split)
        //{
        //    Execute_BatchSql(sql, split, split.ToCharArray());
        //}
        //public static void Execute_BatchSql(string sql)
        //{
        //    string split = ";";
        //    char[] chars = new char[] { ';' };
        //    Execute_BatchSql(sql, split, chars);
        //}
        //private static void Execute_BatchSql(string sql, string split, char[] chars)
        //{
        //    int maxlen = 29000;
        //    sql = sql.Replace("\'", "\''");
        //    while (sql.Length > 0)
        //    {
        //        string sql1 = string.Empty;
        //        string sql2 = string.Empty;
        //        if (sql.Length > maxlen)
        //        {
        //            sql1 = sql.Substring(0, maxlen);
        //            int last = sql1.LastIndexOfAny(chars);
        //            if (last < maxlen) last = last + 1;
        //            sql1 = sql1.Substring(0, last);
        //            sql2 = string.Format("call ZPHLIB_AUL.SP_BatchSql ('{0}','{1}') ", sql1, split);
        //            DB.Execute(sql2);
        //            sql = sql.Substring(last, sql.Length - last);
        //        }
        //        else
        //        {
        //            sql = string.Format("call ZPHLIB_AUL.SP_BatchSql ('{0}','{1}') ", sql, split);
        //            DB.Execute(sql);
        //            sql = string.Empty;
        //        }
        //    }
        //}
        #endregion
    }

    public class TableORM
    {
        public static List<EntityType> GetObjects<EntityType>(DataTable tb)
        {
            return GetObjects<EntityType>(tb, false);
        }
        public static List<EntityType> GetObjects<EntityType>(DataTable tb, bool ignoreCase)
        {
            List<EntityType> objects = new List<EntityType>();
            string fieldName;
            try
            {
                EntityType newObj = default(EntityType);
                //Controller.HandleInsertMax = tb.Rows.Count;
                int i = 0;
                //Controller.ProgressValue_Insert = 0;

                foreach (System.Data.DataRow row in tb.Rows)
                {
                    i++;
                    newObj = (EntityType)typeof(EntityType).GetConstructor(new Type[0]).Invoke(null);
                    //Controller.ProgressValue_Insert = i;


                    try
                    {
                        foreach (PropertyInfo pi in typeof(EntityType).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
                        {
                            //if (pi.Name == "IsNew")
                            //{
                            //    pi.SetValue(newObj, false, null);
                            //}
                            //else
                            //{
                            fieldName = GetColumnName(tb, pi.Name, ignoreCase);
                            if (fieldName == null) continue;
                            if (pi.CanWrite)
                            {
                                if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Double")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "Double" && pi.PropertyType.Name == "Decimal")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Int32")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "String" && pi.PropertyType.Name == "Int32")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]), null);
                                else if (pi.PropertyType.Name == "String")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]).Trim(), null);
                                else if (pi.PropertyType.Name == "Boolean" && row[fieldName].GetType().Name == "Decimal")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? false : Convert.ToBoolean(row[fieldName]), null);
                                else
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);
                            }
                            //}

                        }

                        objects.Add(newObj);
                        //IGuidObject obj = newObj as IGuidObject;
                        //EditableObjectBase obj = newObj as EditableObjectBase;
                        //obj.Save(db);
                        //db.Add<EntityType>(newObj);
                    }
                    catch (Exception err)
                    {
                        throw new Exception(string.Format("{0}:{1}", err.Message, err.InnerException));
                        //MessageBox.Show(string.Format("{0}:{1}", err.Message, err.InnerException), "Error");
                    }
                }

                // Controller.ProgressValue_Insert = 0;
                return objects;

            }
            catch (Exception err)
            {
            }

            return objects;

        }
        public static string GetColumnName(DataTable tb, string propertyName, bool ignoreCase)
        {
            foreach (DataColumn col in tb.Columns)
            {
                if (string.Compare(propertyName, col.ColumnName, ignoreCase) == 0) return col.ColumnName;
            }
            return null;
        }

        public static List<EntityType> AddObjects<EntityType>(DataTable tb, bool ignoreCase)
        {
            List<EntityType> objects = new List<EntityType>();
            string fieldName;
            try
            {
                EntityType newObj = default(EntityType);

                foreach (System.Data.DataRow row in tb.Rows)
                {
                    newObj = (EntityType)typeof(EntityType).GetConstructor(new Type[0]).Invoke(null);


                    try
                    {
                        foreach (PropertyInfo pi in typeof(EntityType).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
                        {
                            fieldName = GetColumnName(tb, pi.Name, ignoreCase);
                            if (fieldName == null) continue;
                            if (pi.CanWrite)
                            {
                                if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Double")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "Double" && pi.PropertyType.Name == "Decimal")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Int32")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "String" && pi.PropertyType.Name == "Int32")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]), null);
                                else if (pi.PropertyType.Name == "String")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]).Trim(), null);
                                else if (pi.PropertyType.Name == "Boolean" && row[fieldName].GetType().Name == "Decimal")
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? false : Convert.ToBoolean(row[fieldName]), null);
                                else
                                    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);
                            }

                        }

                        objects.Add(newObj);
                        //EditableObjectBase obj = newObj as EditableObjectBase;//Commented by Shadow on 20080508
                        //obj.Save(db);//Commented by Shadow on 20080508
                    }
                    catch (Exception e)
                    {
                        //MessageBox.Show(string.Format("{0}:{1}", e.Message, e.InnerException));
                    }
                }

                return objects;

            }
            catch (Exception err)
            {
                //if (ShowErrorMessage)
                // MessageBox.Show(string.Format("{0}:{1}", err.Message, err.InnerException), "Error");
            }

            return objects;

        }

    }

}