using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using PH.Platform.BO;
using System.Data.Linq.Mapping;
namespace PH.HDO.BO
{
    public class Command
    {
        protected string linkserver
        {
            get
            {
                string env = PH.Platform.AuthMgr.BO.Environment.Instance.SysteParameter.Environment;
                if (!string.IsNullOrEmpty(env) && env.ToLower() != "live")
                    return @"[10.2.1.10\SQLSERVER2005].";
                else
                    return "";
            }
        }
        private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();

        public List<temp> Gettemplist(string company, string hdoFrom, string hdoTo, int rdocheckeds)
        {
            return HdoR(company, hdoFrom, hdoTo, rdocheckeds);
        }

        public DataTable tb() 
        {
            HDODataContext dateContext = ContextBuilder.CreateContext<HDODataContext>();

            if (this.context == null) 
            {
                context = dateContext;
            }
            int GetDate = Convert.ToInt32(DateTime.Now.AddDays(-90).ToString("yyyyMMdd")) - 19000000;

            string SQl = @"
select PAKL64 as HDONo,
       case when stat64='' then 'PLANNED' else 'RELEASED' end as [Status],
       CONVERT(varchar(10),CAST(CAST(DATE64+19000000 AS varchar) AS datetime),111) as Createddd,
       DESC64 as Whse, USER64 as Creator
from openquery(as400,'select pakl64,stat64,date64, DESC64, USER64 from ault4f1.qtp64 where cono64=''P1'' and date64>={0}')
order by CAST(CAST(DATE64+19000000 AS varchar) AS datetime), PAKL64 ";

            //order by CAST(CAST(DATE64+19000000 AS varchar) AS datetime),120), PAKL64  ";
            SQl = string.Format(SQl, GetDate);
            DataTable tb = context.ExecuteDataTable(SQl, "tb");
            return tb;
        }


        public List<Tempa> Gettemp1list(string company, string hdoFrom, string hdoTo, int ordbys)
        {
            string orderbys = "";
            if (ordbys == 1) orderbys = " order by Material,MaterialGroup,projectno";
            else if (ordbys == 2) orderbys = " order by projectno,Material,MaterialGroup";
            else if (ordbys == 3) orderbys = " order by MaterialGroup,Material,projectno";
            else orderbys = " ";
            context.CommandTimeout = 6000;
            string sqls = string.Format("exec [sp_HDOSummery]  '{0}','{1}','{2}','{3}','{4}'", company, hdoFrom, hdoTo, linkserver, orderbys);
           List<Tempa> aa=  context.ExecuteQuery<Tempa>(sqls).ToList();

           return aa;
        }

        public List<HDOSummary> GetStockSummary(string StockRoom)
        {
            context.CommandTimeout = 6000;
            DB.AS400DB.Execute("Call aulphgmods.ph992");
            string sqls = string.Format("exec [GetStockSummary] '{0}'", StockRoom);
            return context.ExecuteQuery<HDOSummary>(sqls).ToList();
        }

        public List<Stock> GetStockList(string WareHouse, string Material, string Invoice, string Location, string MaterialName, string ProjectNo,
             string Date1, string Date2, string LotNo)
        {
            context.CommandTimeout = 8000;
            string sCond = string.Format(" and strc80=''{0}'' ", WareHouse);
            if (!string.IsNullOrEmpty(Material))
            {
                sCond = sCond + string.Format(" and vatc15=''{0}'' ", Material);
            }
            //if (!string.IsNullOrEmpty(Invoice))
            //{
            //    sCond = sCond + string.Format(" and tlin30=''{0}'' ", Invoice);
            //}
            if (!string.IsNullOrEmpty(Location))
            {
                sCond = sCond + string.Format(" and substr(ch9t84,1,7) like ''{0}%'' ", Location);
            }
            if (!string.IsNullOrEmpty(MaterialName))
            {
                sCond = sCond + string.Format(" and vcat59=''{0}'' ", MaterialName);
            }
            if (!string.IsNullOrEmpty(ProjectNo))
            {
                sCond = sCond + string.Format(" and ch3t84=''{0}'' ", ProjectNo);
            }
            if (!string.IsNullOrEmpty(Date1) && !string.IsNullOrEmpty(Date2))
            {
                sCond = sCond + string.Format(" and substr(locn80,1,6)>=''{0}'' and substr(locn80,1,6)<=''{1}''", Date1, Date2);
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.SysteParameter.Location == "KB")
            {
                DB.AS400DB.Execute("Call aulphgmods.ph992");
            }

            //dt1 yymmdd dt2 yymmdd substr(locn80,1,6)>=dt1 and substr(locn80,1,6)<=dt2


            //2012-03-06 修改
            //   string sql = " select CH1T84 as HDO,''20''||substr(locn80,1,2)||''/''||substr(locn80,3,2)||''/''||substr(locn80,5,2) as Receiving, vndr01 as Supplier,ch3t84 as Project,vatc15 as MaterialGroup, " +
            //  "substr(pnum80,1,3) as Type,vcat01 as material,substr(pnum80,10,3) as Color,substr(pnum80,13,3) as Size,locn80 as LotNo, " +
            // " sphy80 as Qty,sunt35 as UoM,avg(csor83) as Price,''HKD'' as Currency,sphy80*avg(csor83) as Total,crrtkb as Rate,substr(ch9t84,1,7) as Loc " +
            // " from ault2f1.inp80,ault2f1.inp83,ault4f1.app84,ault4f1.phpkb,ault2f1.inp35,ault4f1.inp15,ault4f1.pmp01 " +
            //" where cono80=cono83 and pnum80=pnum83 and locn80=locn83 and strc80=strc83 and cono80=cono84 and pnum80=pnum84 and locn80=lotn84 " +
            //" and cono80=cono01 and pnum80=item01  and cono80=cono35 " +
            //" and pnum80=pnum35 and actf35<>''D'' and cono80=cono15 and psar15=pgmn35 and prmt15=''PGMN''  " +
            // " and cono80=conokb and pnum80=pnumkb and strc80=strckb and locn80=locnkb and cono80=''P1'' and sphy80>0 " + sCond +
            // " group by vndr01,ch3t84,vatc15,pnum80,vcat01,locn80,sphy80,sunt35,crrtkb,substr(ch9t84,1,7),CH1T84";


            string sql = "select distinct CH1T84 as HDO,''20''||substr(locn80,1,2)||''/''||substr(locn80,3,2)||''/''||substr(locn80,5,2) as Receiving, vndr59 as Supplier,ch3t84 as Project,ch2t84 as PONO,vatc15 as MaterialGroup, " +
                        " substr(pnum80,1,3) as Type,vcat59 as material,substr(pnum80,10,3) as Color,substr(pnum80,13,3) as Size,locn80 as LotNo,  " +
                        " sphy80 as Qty,sunt35 as UoM,avg(csor83) as Price,''HKD'' as Currency,sphy80*avg(csor83) as Total,crrtkb as Rate,substr(ch9t84,1,7) as Loc,pnum80 as ItemCode  " +
                        " from ault2f1.inp80,ault2f1.inp83,ault4f1.phpkb,ault2f1.inp35,ault4f1.inp15, " +
                        " ault4f1.app84 left join ault4f1.pmp59 on (cono84=cono59 and pnum84=item59 and substr(ch2t84,1,7)=ordn59 and whse59=strc80 ) " + //and trin59=lotn84
                        " where cono80=cono83 and pnum80=pnum83 and locn80=locn83 and strc80=strc83 and cono80=cono84 and pnum80=pnum84 and locn80=lotn84  " +
                        " and cono80=cono35  " +
                        " and pnum80=pnum35 and actf35<>''D'' and cono80=cono15 and psar15=pgmn35 and prmt15=''PGMN''   " +
                        " and cono80=conokb and pnum80=pnumkb and strc80=strckb and locn80=locnkb and cono80=''P1'' and sphy80>0 " + sCond +
                        " group by vndr59,ch3t84,vatc15,pnum80,vcat59,locn80,sphy80,sunt35,crrtkb,substr(ch9t84,1,7),CH1T84,ch2t84 ";
            //    string sql = " select CH1T84 as HDO,''20''||substr(locn80,1,2)||''/''||substr(locn80,3,2)||''/''||substr(locn80,5,2) as Receiving, vndr59 as Supplier,ch3t84 as Project,vatc15 as MaterialGroup, " +
            //  "substr(pnum80,1,3) as Type,vcat59 as material,substr(pnum80,10,3) as Color,substr(pnum80,13,3) as Size,locn80 as LotNo, " +
            // " sphy80 as Qty,suom59 as UoM,avg(csor83) as Price,''HKD'' as Currency,sphy80*avg(csor83) as Total,crrtkb as Rate,substr(ch9t84,1,7) as Loc " +
            // " from ault2f1.inp80,ault2f1.inp83,ault4f1.pmp59,ault4f1.app84,ault4f1.phpkb,ault2f1.inp35,ault4f1.inp15 " +
            //" where cono80=cono83 and pnum80=pnum83 and locn80=locn83 and strc80=strc83 and cono80=cono84 and pnum80=pnum84 and locn80=lotn84 " +
            //" and cono80=cono59 and pnum80=item59 and substr(locn80,1,12)=substr(trin59,1,12) and trnq59>0 and cono80=cono35 " +
            //" and pnum80=pnum35 and actf35<>''D'' and cono80=cono15 and psar15=pgmn35 and prmt15=''PGMN''  " +
            // " and cono80=conokb and pnum80=pnumkb and strc80=strckb and locn80=locnkb and cono80=''P1'' and sphy80>0 " + sCond +
            // " group by vndr59,ch3t84,vatc15,pnum80,vcat59,locn80,sphy80,suom59,crrtkb,substr(ch9t84,1,7),CH1T84";
            if (LotNo == "0")
            {
                sql = sql + " order by locn80 ";
            }

            string sqls = string.Format("   select distinct c.*,d.Invoice as IDInvoice from (select a.*,b.Invoice from openquery (as400,'{0}') a left join [PH.HDO].dbo.HDOInvoice b on (a.HDO{1}=b.HDO)) c left join [PH.HDO].dbo.IDInvoice d on (c.LotNo{1}=d.ID)", sql,
                PH.Platform.AuthMgr.BO.Environment.Instance.SysteParameter.Location == "KB" ? " collate Chinese_Taiwan_Stroke_CI_AS" : "");
            if (!string.IsNullOrEmpty(Invoice))
            {
                sqls = string.Format(" select distinct e.* from ({0}) e where e.Invoice='{1}' or e.IDInvoice='{2}'", sqls, Invoice, Invoice);
            }
            return context.ExecuteQuery<Stock>(sqls).ToList();
        }


        private List<temp> HdoR(string company, string hdoFrom, string hdoTo, int rdocheckeds)
        {
            string ordeby = "";
            if (rdocheckeds == 1) ordeby = " order by Material,MaterialGroup,projectno";
            else if (rdocheckeds == 2) ordeby = " order by projectno,Material,MaterialGroup";
            else if (rdocheckeds == 3) ordeby = " order by MaterialGroup,Material,projectno";
            else ordeby = " ";
            context.CommandTimeout = 6000;
            string sql = string.Format("exec  [sp_hdoreporttest] '{0}','{1}','{2}','{3}','{4}'", company, hdoFrom, hdoTo, linkserver, ordeby);
            return context.ExecuteQuery<temp>(sql).ToList();
        }


        private List<HDOTempBO> GetRGNnoHDO()
        {
            string sql = string.Format(@"select * from openquery (as400,
                            'SELECT * 
                            FROM AULT4F1.PMP59L17 
                            WHERE cono59=''P1'' and GRNO59 <> 0  and not exists
                            (
                            SELECT * 
                            FROM AULT4F1.QTP65L04 
                            WHERE CONO59 = CONO65 AND ORDN59 = ORDN65 AND LINE59 = LINE65 
                            AND GRNO59 = GRNO65 AND DLIN59 = DLIN65 AND ITEM59 = ITEM65  
                            )' )  ");
            return context.ExecuteQuery<HDOTempBO>(sql).ToList();
        }

        public List<StockInfoOut> GetStockInfoOut(string Material, string Project_No)
        {
            string sql = "select * from Stock_Balance ";
            if (Material == "0")
            {
                sql = sql + "  order by Material_name ";
            }
            if (Project_No == "0")
            {
                sql = sql + " order by Project_No ";
            }
            return context.ExecuteQuery<StockInfoOut>(sql).ToList();
        }

        public List<HDOTempBO> GetGRNList(GRNReportType reportType)
        {
            int received = 0;
            string location = "";
            switch (reportType)
            {
                case GRNReportType.ReceivingALL:
                    received = 0;
                    location = "ALL";
                    break;
                case GRNReportType.ReceivingSL:
                    location = "SL";
                    received = 0;
                    break;
                case GRNReportType.ReceivingHK:
                    location = "HK";
                    received = 0;
                    break;
                case GRNReportType.ReceivedALL:
                    location = "ALL";
                    received = 1;
                    break;
                case GRNReportType.ReceivedSL:
                    location = "SL";
                    received = 1;
                    break;
                case GRNReportType.ReceivedHK:
                    received = 1;
                    location = "HK";
                    break;
                default:
                    break;
            }
            string sql = string.Format("exec dbo.[sp_GRNHDO] 'P1',{0},'{1}'", received, location);
            context.CommandTimeout = 60000;
            return context.ExecuteQuery<HDOTempBO>(sql).ToList();
        }


        // ChandlerXiao:20160325 add for Packing HDO with HSCode 
        public List<HDOTempBO_Packing> GetGRNListForPacking(GRNReportType reportType)
        {
            int received = 0;
            string location = "";
            string sql = "";
            switch (reportType)
            {
                case GRNReportType.ReceivedPackingSummary:
                case GRNReportType.ReceivedPackingDetail:
                    received = 1;
                    location = "HK";
                    break;

                default:
                    break;
            }
            sql = string.Format("exec dbo.[sp_GRNHDO_Packing] 'P1',{0},'{1}'", received, location);
            context.CommandTimeout = 60000;
            return context.ExecuteQuery<HDOTempBO_Packing>(sql).ToList();

        }

        //public List<HSHDOSummaryResult> GetHSHDOSummaryData()
        public DataTable GetHSHDOSummaryData()
        {
            string sql = string.Format("exec dbo.[sp_GRNHDO_Packing] 'P1', 1,'HK','Y'");
            context.CommandTimeout = 60000;
            return context.ExecuteDataTable(sql, "dtHSHDOSummary");
        }

    }


}
