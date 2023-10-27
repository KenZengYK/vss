using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using PH.Platform.BO;

namespace PH.MIDc.BO
{
    public class SqlDataHelper
    {

        public static DataTable GetDataTable(string ASqlStr)
        {
            MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(context.Connection.ConnectionString);
            DataTable dt = new DataTable();
            da.SelectCommand = new SqlCommand(ASqlStr, cn);
            if (cn.State != ConnectionState.Open)
            {
                cn.Open();
            }

            da.Fill(dt);
            cn.Close();
            cn.Dispose();

            return dt;
        }


        public static DataSet GetSampleOrderPODetail(string sampleorderpo)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MIDC_SampleOrderPODetailSelect", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@sampleorderpo", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters["@sampleorderpo"].Value = sampleorderpo;
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds;

        }

        public static DataTable GetStockReport(string hscode, int dt)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            if (dt == 0)
            {

                da.SelectCommand = new SqlCommand("MIDC_StockReport", cn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
                da.SelectCommand.Parameters["@hsCode"].Value = hscode;
            }
            else
            {
                da.SelectCommand = new SqlCommand("MIDC_StockReport2", cn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
                da.SelectCommand.Parameters.Add(new SqlParameter("@dt", SqlDbType.Int));
                da.SelectCommand.Parameters["@hsCode"].Value = hscode;
                da.SelectCommand.Parameters["@dt"].Value = dt;
            }
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }

        public static DataTable GetStockReport3(string hscode, int dt)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();


            da.SelectCommand = new SqlCommand("MIDC_StockReport3", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@dt", SqlDbType.Int));
            da.SelectCommand.Parameters["@hsCode"].Value = hscode;
            da.SelectCommand.Parameters["@dt"].Value = dt;
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }

        public static DataTable GetStockReportSummary(string hscode, int dt)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();// ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;


            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            if (dt == 0)
            {
                da.SelectCommand = new SqlCommand("MIDc_StockReportSummary", cn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
                da.SelectCommand.Parameters["@hsCode"].Value = hscode;
            }
            else
            {
                da.SelectCommand = new SqlCommand("MIDc_StockReportSummary2", cn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
                da.SelectCommand.Parameters.Add(new SqlParameter("@dt", SqlDbType.Int));
                da.SelectCommand.Parameters["@hsCode"].Value = hscode;
                da.SelectCommand.Parameters["@dt"].Value = dt;
            }

            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }
        public static DataTable GetStockReportSummaryMeter(string hscode, int dt)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();// ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;


            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MIDc_StockReportSummaryMeter", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@dt", SqlDbType.Int));
            da.SelectCommand.Parameters["@hsCode"].Value = hscode;
            da.SelectCommand.Parameters["@dt"].Value = dt;

            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }
        public static DataTable GetStockReportSummaryStatus(string hscode)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();// ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;


            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MIDc_StockReportSummary_Status", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@hsCode"].Value = hscode;

            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }
        public static DataTable GetMaterialTypeWithCompostion(string materaltype, string suppref)
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MaterialTypeWithCompostion", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@MaterailTypeid", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SuppRef", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters["@MaterailTypeid"].Value = materaltype;
            da.SelectCommand.Parameters["@SuppRef"].Value = suppref;
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static DataTable GetStockReportWithCompostion(string hsCode)
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MIDc_StockReportWithCompostion", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@hsCode", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters["@hsCode"].Value = hsCode;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static DataTable GetSummaryOutStandingMatHSCode()
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("GetSummaryOutStandingMatHSCode", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@param", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters["@param"].Value = "";
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static DataTable GetTechnicalTestInfo(Spec obj)
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MIDC_TechnicalTestInfo", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@SuppRef", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Color", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@ColorCategory", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters["@SuppRef"].Value = obj.SuppRef;
            da.SelectCommand.Parameters["@Color"].Value = obj.Color;
            da.SelectCommand.Parameters["@ColorCategory"].Value = obj.ColorCategory;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static void AutoUpdateDetailHSCode(MaterialType obj)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.UpdateCommand = new SqlCommand("UpdateDetailHSCode", cn);
            da.UpdateCommand.CommandType = CommandType.StoredProcedure;
            da.UpdateCommand.Parameters.Add(new SqlParameter("@MaterialType", SqlDbType.VarChar, 50));
            da.UpdateCommand.Parameters.Add(new SqlParameter("@HsCode", SqlDbType.VarChar, 50));
            da.UpdateCommand.Parameters["@MaterialType"].Value = obj.MaterialType1;
            da.UpdateCommand.Parameters["@HsCode"].Value = obj.HsCode;
            da.UpdateCommand.CommandTimeout = 8000;

            cn.Open();
            da.UpdateCommand.ExecuteNonQuery();
            cn.Close();
            cn.Dispose();


        }

        /// <summary>
        /// 修改Material Type時，自動更改供應商物料中對應的HSCode， 需要按MaterType + Currency作為條件進行更新
        /// 由David 2017-11-10 加入
        /// </summary>
        /// <param name="AMaterialType">Materail Type</param>
        /// <param name="AHSCode">HSCode</param>
        /// <param name="ACurrency">Currency</param>
        public static void AutoUpdateDetailHSCode(string AMaterialType, string AHSCode, string ACurrency)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.UpdateCommand = new SqlCommand("UpdateDetailHSCodeCurrency", cn);
            da.UpdateCommand.CommandType = CommandType.StoredProcedure;
            da.UpdateCommand.Parameters.Add(new SqlParameter("@MaterialType", SqlDbType.VarChar, 50));
            da.UpdateCommand.Parameters.Add(new SqlParameter("@HsCode", SqlDbType.VarChar, 50));
            da.UpdateCommand.Parameters.Add(new SqlParameter("@Currency", SqlDbType.VarChar, 50));
            da.UpdateCommand.Parameters["@MaterialType"].Value = AMaterialType;
            da.UpdateCommand.Parameters["@HsCode"].Value = AHSCode;
            da.UpdateCommand.Parameters["@Currency"].Value = ACurrency;
            da.UpdateCommand.CommandTimeout = 8000;

            cn.Open();
            da.UpdateCommand.ExecuteNonQuery();
            cn.Close();
            cn.Dispose();


        }


        public static DataTable GetStockDate()
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            string sql = "select DT from openquery([as400], 'select distinct DT from zphlib_aul.StockValue  where  qty >0   and cono	=''P1''  and strc80	=''RM'' ')	order by DT desc";

            da.SelectCommand = new SqlCommand(sql, cn);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }


        public static DataTable GetESSEImportTariff(string projBegin, string projEnd, bool isSummary, bool rmb)
        {

            if (string.IsNullOrEmpty(projBegin)) projBegin = projEnd;
            if (string.IsNullOrEmpty(projEnd)) projEnd = projBegin;


            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();
            string sql = "";

            if (isSummary)
            {
                sql = @"
select *
into #temp
from
(
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2] a
	  inner join [PHGDB2].[dbo].[ido1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2_Unplanned] a
	  inner join [PHGDB2].[dbo].[ido1_Unplanned] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2_V1] a
	  inner join [PHGDB2].[dbo].[ido1_V1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2_Unplanned_V1] a
	  inner join [PHGDB2].[dbo].[ido1_Unplanned_V1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
) a
WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')

SELECT 
 m.HSCODE
 ,n.MaterialName
 ,sum(a.[ISSUE_QTY]) as Qty
 ,a.[UOM]
 ,WeightQty = sum((case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end) * a.[ISSUE_QTY])
FROM #temp a
  --inner join [PH.POPC].[dbo].[poheader] c on a.pono=c.pono and c.versionflag=1 and c.currency <> 'RMB'
  inner join [PH.MIDc].dbo.detail m on m.suppref=a.phism 
  inner join [PH.BasicInfo].[dbo].[SupplierProfile] d on d.Supplier=m.Supplier --and d.MaterialType=m.MaterialType
                                                        and d.currency {2} 'RMB'
  left join [PH.MIDc].dbo.CustomMaterial n	on m.HSCODE=n.midchscode
WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
  group by m.HSCODE,n.MaterialName,a.[UOM] 
  order by n.MaterialName
";
            }
            else
            {
                sql = @"
select *
into #temp
from
(
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2] a
	  inner join [PHGDB2].[dbo].[ido1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2_Unplanned] a
	  inner join [PHGDB2].[dbo].[ido1_Unplanned] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2_V1] a
	  inner join [PHGDB2].[dbo].[ido1_V1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
	FROM [PHGDB2].[dbo].[ido2_Unplanned_V1] a
	  inner join [PHGDB2].[dbo].[ido1_Unplanned_V1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
) a
WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')

SELECT 
 a.prjno as ProjectNo
 ,a.PHISM as SuppRef
 ,m.HSCODE
 ,n.MaterialName
 ,sum(a.[ISSUE_QTY]) as Qty
 ,a.[UOM]
 ,d.Currency
 ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end as HaveVAT
 ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end as VAT
 ,MIDcFactor=(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
 ,WeightQty = sum((case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end) * a.[ISSUE_QTY])
FROM #temp a
--  inner join [PH.POPC].[dbo].[poheader] c on a.pono=c.pono and c.versionflag=1 and c.currency <> 'RMB'
  inner join [PH.MIDc].dbo.detail m on m.suppref=a.phism 
  inner join [PH.BasicInfo].[dbo].[SupplierProfile] d on d.ERPSupplier=m.Supplier --and d.MaterialType=m.MaterialType
                                                        and d.currency {2} 'RMB'
  left join [PH.MIDc].dbo.CustomMaterial n	on m.HSCODE=n.midchscode
WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
  group by a.prjno,a.PHISM,m.HSCODE,n.MaterialName,a.[UOM],d.Currency
 ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end
 ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end
           ,(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
order by a.prjno,n.MaterialName
";
            }
            sql = string.Format(sql, projBegin, projEnd, rmb ? "=" : "<>");

            da.SelectCommand = new SqlCommand(sql, cn);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }
        public static DataTable GetESSEImportTariffByStyle(bool rmb)
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();
            string sql = "";


            sql = @"
select a.Company,a.SalesOrderNo,a.PHISM,a.prjno,a.wl,a.[ISSUE_QTY],a.[UOM],a.pono,b.WorkOrderNo,b.StyleNo,b.WOOrderQty
into #tempIDO
from
(
	select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
	FROM [PHGDB2].[dbo].[ido2] a
	  inner join [PHGDB2].[dbo].[ido1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
	FROM [PHGDB2].[dbo].[ido2_Unplanned] a
	  inner join [PHGDB2].[dbo].[ido1_Unplanned] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
    union
	select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
	FROM [PHGDB2].[dbo].[ido2_V1] a
	  inner join [PHGDB2].[dbo].[ido1_V1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1
	union
	select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
	FROM [PHGDB2].[dbo].[ido2_Unplanned_V1] a
	  inner join [PHGDB2].[dbo].[ido1_Unplanned_V1] b on a.bh=b.bh and b.prjno like 'ESSE%' and a.phism not in ('DLW201','DLW203')
	  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
												 and g.[ERPSuccess]=1

) a
  inner join 
(
	select w.Company,w.SalesOrderNo,w.WorkOrderNo,w.StyleNo,sum(s.[DespatchQty]) as WOOrderQty
	--into #tempWO
	from [PH.RWO1].dbo.WorkOrder w
	inner join [PH.RWO1].dbo.WorkOrderSKU s on w.Company=s.Company and w.[SalesOrderNo]=s.[SalesOrderNo] and w.[WorkOrderNo]=s.[WorkOrderNo]
		--and w.StyleNo like '%HK' --F68811AHK'
	group by w.Company,w.SalesOrderNo,w.WorkOrderNo,w.StyleNo
)  b     on a.Company=b.Company and a.SalesOrderNo=b.SalesOrderNo and (a.WorkOrderNo=b.WorkOrderNo or a.ParentWO=b.WorkOrderNo)


select Company,StyleNo,sum(WOOrderQty) as StyleOrderQty
into #tempStyle
from
(select distinct Company,WorkOrderNo,StyleNo,WOOrderQty
from #tempIDO) a
group by Company,StyleNo

select a.Company,a.SalesOrderNo,a.PHISM,a.prjno,a.wl,a.[ISSUE_QTY],a.[UOM],a.pono,a.WorkOrderNo,a.StyleNo,a.WOOrderQty,b.StyleOrderQty
into #temp
from #tempIDO a
inner join #tempStyle b on a.Company=b.Company and a.StyleNo=b.StyleNo

SELECT 
 a.StyleNo
 ,a.prjno as ProjectNo
 ,a.PHISM as SuppRef
 ,m.HSCODE
 ,n.MaterialName
 ,sum(a.[ISSUE_QTY]) as Qty
 --,a.WOOrderQty
 ,a.StyleOrderQty as OrderQty
 --,sum(a.OrderQty) as OrderQty
 ,a.[UOM]
 ,d.Currency
 ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end as HaveVAT
 ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end as VAT 
 ,MIDcFactor=(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
 ,WeightQty = sum((case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end) * a.[ISSUE_QTY])
 into #temp1
FROM #temp a
  --inner join [PH.POPC].[dbo].[poheader] c on a.pono=c.pono and c.versionflag=1 and c.currency <> 'RMB'
  inner join [PH.MIDc].dbo.detail m on m.suppref=a.phism 
  inner join [PH.BasicInfo].[dbo].[SupplierProfile] d on d.Supplier=m.Supplier --and d.MaterialType=m.MaterialType
               and (d.currency {0} 'RMB')
  left join [PH.MIDc].dbo.CustomMaterial n	on m.HSCODE=n.midchscode
  group by a.StyleNo,a.prjno,a.PHISM,m.HSCODE,n.MaterialName,a.[UOM],d.Currency,a.StyleOrderQty
 ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end
 ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end
 ,(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
order by a.StyleNo,a.prjno,n.MaterialName

select a.*,case when isnull(OrderQty,0)=0 then cast(null as decimal(18,6)) else Qty/OrderQty end as YY
from #temp1 a
order by a.StyleNo
";

            sql = string.Format(sql, rmb ? "=" : "<>");

            da.SelectCommand = new SqlCommand(sql, cn);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static DataTable GetCustImportTariff(string customer, string projBegin, string projEnd, bool isSummary, bool rmb)
        {

            if (string.IsNullOrEmpty(projBegin)) projBegin = projEnd;
            if (string.IsNullOrEmpty(projEnd)) projEnd = projBegin;


            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();
            string sql = "";

            //            if (isSummary)
            //            {
            //                sql = @"
            //                select *
            //                into #temp
            //                from
            //                (
            //	                select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //	                FROM [PHGDB2].[dbo].[ido2] a
            //	                  inner join [PHGDB2].[dbo].[ido1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                  inner join [PHGDB2].[dbo].pb_gatepass g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                 and g.[ERPSuccess]=1
            //	                union
            //	                select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //	                FROM [PHGDB2].[dbo].[ido2_Unplanned] a
            //	                  inner join [PHGDB2].[dbo].[ido1_Unplanned] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                 and g.[ERPSuccess]=1
            //	                union
            //	                select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //	                FROM [PHGDB2].[dbo].[ido2_V1] a
            //	                  inner join [PHGDB2].[dbo].[ido1_V1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                  inner join [PHGDB2].[dbo].pb_gatepass_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                 and g.[ERPSuccess]=1
            //	                union
            //	                select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //	                FROM [PHGDB2].[dbo].[ido2_Unplanned_V1] a
            //	                  inner join [PHGDB2].[dbo].[ido1_Unplanned_V1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                  inner join [PHGDB2].[dbo].pb_gatepass_Unplanned_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                 and g.[ERPSuccess]=1
            //                ) a
            //                WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
            //
            //                SELECT 
            //                 m.HSCODE
            //                 ,n.MaterialName
            //                 ,sum(a.[ISSUE_QTY]) as Qty
            //                 ,a.[UOM]
            //                 ,WeightQty = sum((case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end) * a.[ISSUE_QTY])
            //                FROM #temp a
            //                  --inner join [PH.POPC].[dbo].[poheader] c on a.pono=c.pono and c.versionflag=1 and c.currency <> 'RMB'
            //                  inner join [PH.MIDc].dbo.detail m on m.suppref=a.phism 
            //                  inner join [PH.BasicInfo].[dbo].[SupplierProfile] d on d.Supplier=m.Supplier --and d.MaterialType=m.MaterialType
            //                                                                        and d.currency {2} 'RMB'
            //                  left join [PH.MIDc].dbo.CustomMaterial n	on m.HSCODE=n.midchscode
            //                WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
            //                  group by m.HSCODE,n.MaterialName,a.[UOM] 
            //                  order by n.MaterialName
            //                ";
            //            }
            //            else
            //            {
            //                sql = @"
            //select *
            //into #temp
            //from
            //(
            //    select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //    FROM [PHGDB2].[dbo].[ido2] a
            //      inner join [PHGDB2].[dbo].[ido1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //      inner join [PHGDB2].[dbo].pb_gatepass g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //                                                 and g.[ERPSuccess]=1
            //    union
            //    select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //    FROM [PHGDB2].[dbo].[ido2_Unplanned] a
            //      inner join [PHGDB2].[dbo].[ido1_Unplanned] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //      inner join [PHGDB2].[dbo].pb_gatepass_Unplanned g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //                                                 and g.[ERPSuccess]=1
            //    union
            //    select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //    FROM [PHGDB2].[dbo].[ido2_V1] a
            //      inner join [PHGDB2].[dbo].[ido1_V1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //      inner join [PHGDB2].[dbo].pb_gatepass_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //                                                 and g.[ERPSuccess]=1
            //    union
            //    select a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono
            //    FROM [PHGDB2].[dbo].[ido2_Unplanned_V1] a
            //      inner join [PHGDB2].[dbo].[ido1_Unplanned_V1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //      inner join [PHGDB2].[dbo].pb_gatepass_Unplanned_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //                                                 and g.[ERPSuccess]=1
            //) a
            //WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')

            //SELECT 
            // a.prjno as ProjectNo
            // ,a.PHISM as SuppRef
            // ,m.HSCODE
            // ,n.MaterialName
            // ,sum(a.[ISSUE_QTY]) as Qty
            // ,a.[UOM]
            // ,d.Currency
            // ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end as HaveVAT
            // ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end as VAT
            // ,MIDcFactor=(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
            // ,WeightQty = sum((case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end) * a.[ISSUE_QTY])
            //FROM #temp a
            //--  inner join [PH.POPC].[dbo].[poheader] c on a.pono=c.pono and c.versionflag=1 and c.currency <> 'RMB'
            //  inner join [PH.MIDc].dbo.detail m on m.suppref=a.phism 
            //  inner join [PH.BasicInfo].[dbo].[SupplierProfile] d on d.ERPSupplier=m.Supplier --and d.MaterialType=m.MaterialType
            //                                                        and d.currency {2} 'RMB'
            //  left join [PH.MIDc].dbo.CustomMaterial n	on m.HSCODE=n.midchscode
            //WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
            //  group by a.prjno,a.PHISM,m.HSCODE,n.MaterialName,a.[UOM],d.Currency
            // ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end
            // ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end
            //           ,(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
            //order by a.prjno,n.MaterialName
            //                ";
            //            }
            //            sql = string.Format(sql, projBegin, projEnd, rmb ? "=" : "<>",customer); 
            //            da.SelectCommand = new SqlCommand(sql, cn);
            //            da.SelectCommand.CommandType = CommandType.Text;
            //            da.SelectCommand.CommandTimeout = 8000;

            //ChandlerXiao:20170216注釋掉以上代碼，添加以下代碼。將SQL語句放到數據庫存儲過程以便於修改。
            SqlCommand cmd = new SqlCommand();
            if (isSummary)
            {
                cmd.CommandText = "P_GetCustImportTariff_Summary";
            }
            else
            {
                cmd.CommandText = "P_GetCustImportTariff_Detail";
            }
            cmd.Connection = cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Customer", SqlDbType.NVarChar, 20);
            cmd.Parameters.Add("@ProjectBegin", SqlDbType.NVarChar, 20);
            cmd.Parameters.Add("@ProjectEnd", SqlDbType.NVarChar, 20);
            cmd.Parameters.Add("@IsRMB", SqlDbType.Bit);
            cmd.Parameters["@Customer"].Value = customer;
            cmd.Parameters["@ProjectBegin"].Value = projBegin;
            cmd.Parameters["@ProjectEnd"].Value = projEnd;
            cmd.Parameters["@IsRMB"].Value = rmb;
            cmd.CommandTimeout = 8000;
            da.SelectCommand = cmd;
            //---------------------End--------------------------------------------
            try
            {
                cn.Open();
                da.Fill(ds);
            }
            catch (Exception ex)
            {
            }
            finally
            {
                cn.Close();
                cn.Dispose();
            }

            return ds.Tables[0];
        }
        public static DataTable GetCustImportTariffByStyle(string customer, string projBegin, string projEnd, bool rmb)
        {
            if (string.IsNullOrEmpty(projBegin)) projBegin = projEnd;
            if (string.IsNullOrEmpty(projEnd)) projEnd = projBegin;

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();
            //            string sql = ""; 
            //            sql = @"select a.Company,a.SalesOrderNo,a.PHISM,a.prjno,a.wl,a.[ISSUE_QTY],a.[UOM],a.pono,b.WorkOrderNo,b.StyleNo,b.WOOrderQty
            //                    into #tempIDO
            //                    from
            //                    (
            //	                    select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
            //	                    FROM [PHGDB2].[dbo].[ido2] a
            //	                      inner join [PHGDB2].[dbo].[ido1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                      inner join [PHGDB2].[dbo].pb_gatepass g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                     and g.[ERPSuccess]=1
            //                          --LEFT JOIN [PHGDB2].[dbo].PB_RETURN r ON g.WORK_ORDER=r.WORK_ORDER AND g.LOT_ID=r.LOT_ID ---xsj20160317:add by chandlerxiao
            //	                    union ALL
            //	                    select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
            //	                    FROM [PHGDB2].[dbo].[ido2_Unplanned] a
            //	                      inner join [PHGDB2].[dbo].[ido1_Unplanned] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                      inner join [PHGDB2].[dbo].pb_gatepass_Unplanned g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                     and g.[ERPSuccess]=1
            //                          --LEFT JOIN [PHGDB2].[dbo].PB_RETURN r ON g.WORK_ORDER=r.WORK_ORDER AND g.LOT_ID=r.LOT_ID
            //                        union ALL
            //	                    select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
            //	                    FROM [PHGDB2].[dbo].[ido2_V1] a
            //	                      inner join [PHGDB2].[dbo].[ido1_V1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                      inner join [PHGDB2].[dbo].pb_gatepass_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                     and g.[ERPSuccess]=1
            //                          --LEFT JOIN [PHGDB2].[dbo].PB_RETURN r ON g.WORK_ORDER=r.WORK_ORDER AND g.LOT_ID=r.LOT_ID
            //	                    union ALL
            //	                    select b.cono as Company,b.sopno as SalesOrderNo,a.PHISM,b.prjno,a.wl,g.[ISSUE_QTY],g.[UOM],a.pono,a.zdh as WorkOrderNo,a.ParentWO
            //	                    FROM [PHGDB2].[dbo].[ido2_Unplanned_V1] a
            //	                      inner join [PHGDB2].[dbo].[ido1_Unplanned_V1] b on a.bh=b.bh and b.prjno like '{3}%' and a.phism not in ('DLW201','DLW203')
            //	                      inner join [PHGDB2].[dbo].pb_gatepass_Unplanned_V1 g on g.ido=a.bh and g.[WORK_ORDER]=a.zdh and g.[LOT_ID]=a.idno and g.[ITEM_CODE]=a.wl and g.[COMPANY]=b.cono and g.[Stockroom]=a.[Stockroom]
            //												                     and g.[ERPSuccess]=1
            //                          --LEFT JOIN [PHGDB2].[dbo].PB_RETURN r ON g.WORK_ORDER=r.WORK_ORDER AND g.LOT_ID=r.LOT_ID
            //
            //                    ) a
            //                      inner join 
            //                    (
            //	                    select w.Company,w.SalesOrderNo,w.WorkOrderNo,w.StyleNo,sum(s.[DespatchQty]) as WOOrderQty
            //	                    --into #tempWO
            //	                    from [PH.RWO1].dbo.WorkOrder w
            //	                    inner join [PH.RWO1].dbo.WorkOrderSKU s on w.Company=s.Company and w.[SalesOrderNo]=s.[SalesOrderNo] and w.[WorkOrderNo]=s.[WorkOrderNo]
            //		                    --and w.StyleNo like '%HK' --F68811AHK'
            //	                    group by w.Company,w.SalesOrderNo,w.WorkOrderNo,w.StyleNo
            //                    )  b     on a.Company=b.Company and a.SalesOrderNo=b.SalesOrderNo and (a.WorkOrderNo=b.WorkOrderNo or a.ParentWO=b.WorkOrderNo)
            //                    WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
            //
            //                    ------Xsj20160613:Add 
            //                    IF object_id('tempdb..#tempIssueSummary')>0
            //                    BEGIN
            //	                    DROP TABLE #tempIssueSummary
            //                    END  
            //                    SELECT a.Company,a.SalesOrderNo,a.PHISM,a.prjno,--a.wl,
            //                    SUM(ISNULL(a.[ISSUE_QTY],0)) AS ISSUE_QTY,
            //                    a.[UOM],a.pono,a.WorkOrderNo,a.StyleNo,a.WOOrderQty 
            //                    Into #tempIssueSummary
            //                    FROM #tempIDO a 
            //                    GROUP by  a.Company,a.SalesOrderNo,a.PHISM,a.prjno,--a.wl, 
            //                    a.[UOM],a.pono,a.WorkOrderNo,a.StyleNo,a.WOOrderQty 
            //
            //                    IF object_id('tempdb..#tempReturn')>0
            //                    BEGIN
            //	                    DROP TABLE #tempReturn
            //                    END  
            //                    SELECT DISTINCT RETURN_NO,WORK_ORDER,LOT_ID, Return_Qty,CASE WHEN ISNULL(B.PHISM,'')='' THEN  
            //											                       CASE When ISNULL(C.PHISM,'')='' THEN 
            //												                       CASE When ISNULL(D.PHISM,'')='' THEN 
            //														                    CASE When ISNULL(E.PHISM,'')='' THEN '' ELSE  E.PHISM END 
            //												                       ELSE  D.PHISM END
            //											                       ELSE  C.PHISM END  
            //                                                               ELSE  B.PHISM End AS PHISM 
            //                     INTO #tempReturn                                          
            //                     From  [PHGDB2].[dbo].PB_RETURN A
            //                            LEFT JOIN [PHGDB2].dbo.ido2 B ON A.WORK_ORDER=B.Zdh AND A.LOT_ID=B.Idno
            //                            LEFT JOIN [PHGDB2].dbo.ido2_Unplanned C ON A.WORK_ORDER=C.Zdh AND A.LOT_ID=C.Idno
            //                            LEFT JOIN [PHGDB2].dbo.ido2_V1 D ON A.WORK_ORDER=D.Zdh AND A.LOT_ID=D.Idno 
            //                            LEFT JOIN [PHGDB2].dbo.ido2_Unplanned_V1 E ON A.WORK_ORDER=E.Zdh AND A.LOT_ID=E.Idno 
            //                     WHERE ISNULL(A.ERPSuccess,0)=1 
            //                             ----Xsj:add 20170106
            //                             AND A.WORK_ORDER IN (SELECT DISTINCT WorkOrderNo FROM #tempIDO)
            //                     
            //                    IF object_id('tempdb..#tempReturnSummary')>0
            //                    BEGIN
            //	                    DROP TABLE #tempReturnSummary
            //                    END  
            //                    SELECT  WORK_ORDER,PHISM,SUM(Return_Qty) AS Return_Qty
            //                    INTO #tempReturnSummary
            //                    FROM #tempReturn
            //                    GROUP BY WORK_ORDER,PHISM 
            //                     
            //                    UPDATE #tempIssueSummary
            //                    SET ISSUE_QTY=ISSUE_QTY-Return_Qty
            //                    FROM #tempReturnSummary
            //                    WHERE #tempIssueSummary.WorkOrderNO=#tempReturnSummary.WORK_ORDER
            //                          AND #tempIssueSummary.PHISM=#tempReturnSummary.PHISM 
            //                     -----------------------------
            //
            //                    select Company,StyleNo,sum(WOOrderQty) as StyleOrderQty
            //                    into #tempStyle
            //                    from
            //                    (select distinct Company,WorkOrderNo,StyleNo,WOOrderQty
            //                    from #tempIssueSummary --#tempIDO
            //                    ) a
            //                    group by Company,StyleNo
            //
            //                    select a.Company,a.SalesOrderNo,a.PHISM,a.prjno,--a.wl,
            //                         a.[ISSUE_QTY],a.[UOM],a.pono,a.WorkOrderNo,a.StyleNo,a.WOOrderQty,b.StyleOrderQty
            //                    into #temp
            //                    from #tempIssueSummary a --#tempIDO a
            //                    inner join #tempStyle b on a.Company=b.Company and a.StyleNo=b.StyleNo
            //
            //                    SELECT 
            //                     a.StyleNo
            //                     ,a.prjno as ProjectNo
            //                     ,a.pono
            //                     ,a.PHISM as SuppRef
            //                     ,m.HSCODE
            //                     ,n.MaterialName
            //                     ,sum(a.[ISSUE_QTY]) as Qty
            //                     --,a.WOOrderQty
            //                     ,a.StyleOrderQty as OrderQty
            //                     --,sum(a.OrderQty) as OrderQty
            //                     ,a.[UOM]
            //                     ,d.Currency
            //                     ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end as HaveVAT
            //                     ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end as VAT 
            //                     ,MIDcFactor=(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
            //                     ,WeightQty = sum((case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end) * a.[ISSUE_QTY])
            //                    Into #temp1
            //                    FROM #temp a
            //                      --inner join [PH.POPC].[dbo].[poheader] c on a.pono=c.pono and c.versionflag=1 and c.currency <> 'RMB'
            //                      inner join [PH.MIDc].dbo.detail m on m.suppref=a.phism 
            //                      inner join [PH.BasicInfo].[dbo].[SupplierProfile] d on d.Supplier=m.Supplier --and d.MaterialType=m.MaterialType
            //                                   and (d.currency {2} 'RMB')
            //                      left join [PH.MIDc].dbo.CustomMaterial n	on m.HSCODE=n.midchscode
            //                    WHERE '{0}'='' or (a.prjno between '{0}' and '{1}')
            //                      group by a.StyleNo,a.prjno,a.pono,a.PHISM,m.HSCODE,n.MaterialName,a.[UOM],d.Currency,a.StyleOrderQty
            //                     ,case when isnull(d.VAT,0)>0 then cast(1 as bit) else cast(0 as bit) end
            //                     ,case when isnull(d.VAT,0)>0 then d.VAT else cast(null as numeric(18,3)) end
            //                     ,(case when ISNUMERIC(m.WeightHsCode)=1 then cast(m.WeightHsCode as decimal(18,6)) else 0 end)
            //                    order by a.StyleNo,a.prjno,a.pono,n.MaterialName
            //
            //                    select a.*,case when isnull(OrderQty,0)=0 then cast(null as decimal(18,6)) else Qty/OrderQty end as YY
            //                    , ( SELECT AVG(Price) 
            //                        FROM [PH.POPC].dbo.POColorSizeDetail b
            //                        WHERE b.PONO=a.pono
            //                           AND ( b.SupplierReference=a.SuppRef OR rtrim(b.SupplierReference)=RTRIM(ISNULL(a.SuppRef,''))+'H')
            //                           AND b.VersionFlag=1)  AS   price
            //                    , ( SELECT TOP 1 Currency 
            //                        FROM [PH.POPC].dbo.POHeader b
            //                        WHERE b.PONO=a.pono 
            //                           AND b.VersionFlag=1 )  AS   POCurrency
            //                    from #temp1 a
            //                    order by a.StyleNo,a.ProjectNo,a.PONO,a.SuppRef
            //                    ";

            //            sql = string.Format(sql, projBegin, projEnd, rmb ? "=" : "<>", customer);

            //            da.SelectCommand = new SqlCommand(sql, cn);
            //            da.SelectCommand.CommandType = CommandType.Text;
            //            da.SelectCommand.CommandTimeout = 8000;

            //ChandlerXiao:20170216注釋掉以上代碼，添加以下代碼。將SQL語句放到數據庫存儲過程以便於修改。
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "P_GetCustImportTariff_ByType";
            cmd.Connection = cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Customer", SqlDbType.NVarChar, 20);
            cmd.Parameters.Add("@ProjectBegin", SqlDbType.NVarChar, 20);
            cmd.Parameters.Add("@ProjectEnd", SqlDbType.NVarChar, 20);
            cmd.Parameters.Add("@IsRMB", SqlDbType.Bit);
            cmd.Parameters["@Customer"].Value = customer;
            cmd.Parameters["@ProjectBegin"].Value = projBegin;
            cmd.Parameters["@ProjectEnd"].Value = projEnd;
            cmd.Parameters["@IsRMB"].Value = rmb;
            cmd.CommandTimeout = 8000;
            da.SelectCommand = cmd;
            //---------------------End--------------------------------------------

            try
            {
                cn.Open();
                da.Fill(ds);
            }
            catch (Exception ex)
            {
            }
            finally
            {
                cn.Close();
                cn.Dispose();
            }
            return ds.Tables[0];
        }

    }
}
