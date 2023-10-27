using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace PH.POPC.AutoUpdate.UI
{
    class UpdateErpDataToPOPCOther:IUpdateData
    {
        private string _as400TableLib = string.Empty;
        private bool _isLive = false;
        public UpdateErpDataToPOPCOther()
        {
            //PhSys.AppSetting appSettings = new PhSys.AppSetting("PH.Remoting");
            _isLive = false;// (bool)UISetting.GetSettingValueDefault(appSettings, "GoLive", false);
            _as400TableLib = _isLive ? "AULT" : "TSTT";
        }
        public UpdateErpDataToPOPCOther(bool islive)
        {
            //PhSys.AppSetting appSettings = new PhSys.AppSetting("PH.Remoting");
            _isLive = islive;// (bool)UISetting.GetSettingValueDefault(appSettings, "GoLive", false);
            _as400TableLib = _isLive ? "AULT" : "TSTT";
        }

        private void UpdatePOPCOther()
        {
            UpdateDictionary();
            UpdateCurrencyRate();
            UpdateSupplier();
            UpdateWOStartDate();
            UpdateCommodity();

        }
        /// <summary>
        /// 需要從FLP081中取Currency Rate,  對應的PHP98的字段是CRRT98		
        /// ERP 會通過WORK FILE (TSTT1F1/FLP081DL1)來通知PC currency rate發生變化了.
        /// </summary>
        private void UpdateCurrencyRate()
        {

            string sql = string.Format("select * from {0}1F1.FLP081DL1 where Status='0' order by TRGDATE", _as400TableLib);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            int i = 0;
            foreach (DataRow item in dt.Rows)
            {
                Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>doing CurrencyRate:Currency={0},Rate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["CRRT81"].ToString().Trim(), item["SRCR81"].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                
                sql1 = string.Format(@" update [PH.POPC].dbo.POheader
                                        set    Rate={0}
                                        where  Currency='{1}'
                                        and    POType=1
                                        and    PHOutstandingQty>0" + "\n", item["CRRT81"], Change2SQLStr(item["SRCR81"].ToString().Trim()));

                sql2 = string.Format(@"update {0}1F1.FLP081DL1
                                        set    Status='1'
                                        where  Status='0'
                                        and    SRCR81='{1}'
                                        and    timestamp(TRGDATE)<='{2:yyyy-MM-dd-HH.mm.ss.fffff}'
                                        " + "\n", _as400TableLib, Change2SQLStr(item["SRCR81"].ToString()), item["TRGDATE"]);

                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>Successed CurrencyRate:Currency={0},Rate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["CRRT81"].ToString().Trim(), item["SRCR81"].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>ERROR CurrencyRate:Currency={0},Rate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item["CRRT81"].ToString().Trim(), item["SRCR81"].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                }
            }

        }
        /// <summary>
        /// 需要從PLP05中取Supplier Name,Address , Fax Number , Primary contact , 對應的PHP98的字段分別是:SNAM98,(SAD198/SAD298/SAD398/SAD498/SAD598),FAXN98,PYCT98		
        /// ERP 會通過WORK FILE (TSTT1F1/PLP05DL1)來通知PC Supplier Name,Address , FaxNumber , Payment Method , Primary contact發生變化了. 		
        /// </summary>
        private void UpdateSupplier()
        {
            //TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Supplier Infor", ++_iProgress, _iProgressTotal);
            //this._progressValue = 0;
            string sql = string.Format("select * from {0}1F1.PLP05DL1 where Status='0' order by TRGDATE", _as400TableLib);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }

            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //this._progressValue = ++i;
                Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>doing Supplier:Supplier={0},SupplierName={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["SUPN05"].ToString().Trim(), item["SNAM05"].ToString().Trim(), item["TRGDATE"], DateTime.Now));

                sql1 = string.Format(@" update [PH.POPC].dbo.POheader
                                        set SupplierName='{0}',
                                            SupplierAddress='{1}'+'{2}'+'{3}'+'{4}'+'{5}',
                                            FaxNumber='{6}',
                                            PaymentMethod='{7}'
                                        where Supplier='{8}'
                                        and   POType=1
                                        and   PHOutstandingQty>0" + "\n", Change2SQLStr(item["SNAM05"].ToString().Trim()), Change2SQLStr(item["SAD105"].ToString().Trim()),
                                        Change2SQLStr(item["SAD205"].ToString().Trim()), Change2SQLStr(item["SAD305"].ToString().Trim()), Change2SQLStr(item["SAD405"].ToString().Trim()), Change2SQLStr(item["SAD505"].ToString().Trim())
                                        , Change2SQLStr(item["FAXN05"].ToString().Trim()), Change2SQLStr(item["PYCT05"].ToString().Trim()), Change2SQLStr(item["SUPN05"].ToString().Trim()));

                sql2 = string.Format(@"  update {0}1F1.PLP05DL1
                                    set    Status='1'
                                    where  Status='0'
                                    and    SUPN05='{1}'
                                    and    timestamp(TRGDATE)<='{2:yyyy-MM-dd-HH.mm.ss.fffff}'
                                    " + "\n", _as400TableLib, Change2SQLStr(item["SUPN05"].ToString()), item["TRGDATE"]);
                try
                {
                     SqlServer.DB.Execute(sql1);
          
                    DB.AS400DB.Execute(sql2);

                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>Successed Supplier:Supplier={0},SupplierName={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item["SUPN05"].ToString().Trim(), item["SNAM05"].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>ERROR Supplier:Supplier={0},SupplierName={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item["SUPN05"].ToString().Trim(), item["SNAM05"].ToString().Trim(), item["TRGDATE"], DateTime.Now));

                }
            }

        }
        /// <summary>
        /// 需要從INP35中取Color 的description , 對應的PHP98的字段是DCOL98		
        /// ERP 會通過WORK FILE (TSTT2F1/INP35DL1)來通知PC Color 的description  發生變化了.  4F1.APP10DL1
        /// </summary>
        private void UpdateColor(string as400TableName, string code, string desc)
        {
            //TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Color", ++_iProgress, _iProgressTotal);
            //this._progressValue = 0;

            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //更新數據字典的數據
                sql1 = string.Format(@"
if exists(select * from [PH.MIDC].dbo.Color  where  Color='{1}'  )
begin
    update [PH.MIDC].dbo.Color  
    set    Description='{0}' 
    where  Color='{1}'
end 
else
begin
   insert into [PH.MIDC].dbo.Color  (Color,Description)
   values('{1}','{0}')
end
" + "\n", Change2SQLStr(item[desc].ToString().Substring(17, 14)), Change2SQLStr(item[code].ToString().Substring(9, 3)));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, code, Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);

                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:{0}", ex.Message));
                }

            }

        }
        private void UpdateWOStartDate()
        {
           // TitleTips = string.Format("doing {0}:[{1}/{2}]...", "WOStartDate", ++_iProgress, _iProgressTotal);
            //this._progressValue = 0;
            string as400TableName = string.Format("{0}2f1.inp40dl1", _as400TableLib);
            string Company = "CONO40";
            string ProjectNo = "CUSO40";
            //string ItemCode = "ITEM40";
            string WOStartDate = "DTDR40";
            //string Commodity = "COMD40";
            string sql = string.Format(@"
select a.*
from {0} a
inner join  
(
select CONO40,CUSO40, Max(TRGDATE) as TRGDATE
from {0}
where Status='0' 
and    CUSO40<>''
and    DTDR40<>''
group by  CONO40,CUSO40
) b on a.CONO40=b.CONO40
and a.CUSO40=b.CUSO40
and a.TRGDATE=b.TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog,"       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;
            foreach (DataRow item in dt.Rows)
            {
                //this._progressValue = ++i;
                Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>doing WOStartDate:ProjectNo={0},WOStartDate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ProjectNo].ToString().Trim(), item[WOStartDate].ToString().Trim(), item["TRGDATE"], DateTime.Now));

                sql1 = string.Format(@"
update  a
set    WOStartDate= (case when isdate('{0}')=1 then convert(datetime,'{0}') else a.WOStartDate end) 
from   [PH.POPC].dbo.PODetail a
inner  join [PH.POPC].dbo.POHeader b on a.company=b.company and a.pono=b.pono and a.Version=b.Version  and a.AmendmentNo=b.AmendmentNo
where  a.Company='{1}'
and    a.ProjectNo='{2}'
and    b.POtype=1
and    b.PHOutstandingQty>0  
" + "\n", Change2SQLStr(item[WOStartDate].ToString().Trim()), item[Company].ToString(), item[ProjectNo].ToString().Trim());

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Company, item[Company].ToString(), ProjectNo, item[ProjectNo].ToString(), item["TRGDATE"]);
                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);

                    Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>Successed WOStartDate:ProjectNo={0},WOStartDate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ProjectNo].ToString().Trim(), item[WOStartDate].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>ERROR WOStartDate:ProjectNo={0},WOStartDate={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[ProjectNo].ToString().Trim(), item[WOStartDate].ToString().Trim(), item["TRGDATE"], DateTime.Now));

                }

            }

            //更新無傚數據
            sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and   ( CUSO40=''
or      DTDR40='')
 " + "\n", as400TableName);
            try
            {
                DB.AS400DB.Execute(sql2);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog,"       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }

        }
        private void UpdateCommodity()
        {
            //TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Commodity", ++_iProgress, _iProgressTotal);
            //this._progressValue = 0;
            string as400TableName = string.Format("{0}2f1.inp40dl1", _as400TableLib);
            string Company = "CONO40";
            //string ProjectNo = "CUSO40";
            string ItemCode = "ITEM40";
            //string WOStartDate = "DTDR40";
            string Commodity = "COMD40";
            string sql = string.Format(@"
select *
from {0} a
inner join  
(
select CONO40,ITEM40, Max(TRGDATE) as TRGDATE
from {0}
where Status='0' 
and    ITEM40<>''
and    COMD40<>''
group by  CONO40,ITEM40
) b on a.CONO40=b.CONO40
and a.ITEM40=b.ITEM40
and a.TRGDATE=b.TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //this._progressValue = ++i;
                Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>doing Commodity:ItemCode={0},Commodity={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ItemCode].ToString().Trim(), item[Commodity].ToString().Trim(), item["TRGDATE"], DateTime.Now));

                sql1 = string.Format(@"
update  a
set    Commodity='{0}'
from   [PH.POPC].dbo.PODetail a
inner  join [PH.POPC].dbo.POHeader b on a.company=b.company and a.pono=b.pono and a.Version=b.Version  and a.AmendmentNo=b.AmendmentNo
where  a.Company='{1}'
and    a.ItemCode='{2}'
and    b.POtype=1
and    b.PHOutstandingQty>0  
" + "\n", Change2SQLStr(item[Commodity].ToString().Trim()), item[Company].ToString().Trim(), Change2SQLStr(item[ItemCode].ToString().Trim()));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Company, item[Company].ToString(), ItemCode, item[ItemCode].ToString(), item["TRGDATE"]);
                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>Successed Commodity:ItemCode={0},Commodity={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[ItemCode].ToString().Trim(), item[Commodity].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>ERROR Commodity:ItemCode={0},Commodity={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[ItemCode].ToString().Trim(), item[Commodity].ToString().Trim(), item["TRGDATE"], DateTime.Now));
                }

            }

            //更新無傚數據
            sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and   ( ITEM40=''
or      COMD40='')
 " + "\n", as400TableName);
            try
            {
                DB.AS400DB.Execute(sql2);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
        }
        /// <summary>
        /// 數據字典的更新
        /// </summary>
        private void UpdateDictionary()
        {
            // 需要從CSP45中取Payment Method 的description , 對應的PHP98的字段是PMTH98
            // ERP 會通過WORK FILE (TSTT1F1/CSP45DL1)來通知PC payment Method 的description發生變化了.
           // TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Payment Method", ++_iProgress, _iProgressTotal);
            UpdatePaymentMethod(string.Format("{0}1F1.CSP45DL1", _as400TableLib), "PH.POPC.PaymentMethod", "PAYM45", "DESC45");


            // 需要從INP15中取DeliveryTerm 的description ,對應的PHP98的字段是SHPM98		
            // ERP 會通過WORK FILE (TSTT4F1/INP15DL1)來通知PC DeliveryTerm 的description 發生變化了. 
            //TitleTips = string.Format("doing {0}:[{1}/{2}]...", "DeliveryTerm", ++_iProgress, _iProgressTotal);
            UpdateDictionary(string.Format("{0}4F1.INP15DL1", _as400TableLib), "PH.MIDc.DeliveryTerms", "PSAR15", "PRMD15");

            //需要從PMP06中取PurchaseOfficer的名稱, 對應的PHP98的字段是PLNN98		
            //ERP 會通過WORK FILE (TSTT4F1/PMP06DL1)來通知PC PurchaseOfficer的名稱 發生變化了. 
            //TitleTips = string.Format("doing {0}:[{1}/{2}]...", "PurchaseOfficer", ++_iProgress, _iProgressTotal);
            UpdatePurchaseOfficer(string.Format("{0}4F1.PMP06DL1", _as400TableLib), "PH.PO.PurchaseOfficer", "PLAN06", "PLNN06", new string[] { "15" });

            //需要從APP15中取Size 的description ,  對應的PHP98的字段是DSIZ98		
            //ERP 會通過WORK FILE (TSTT4F1/APP15DL1)來通知PC  Size 的description   發生變化了. 
            //TitleTips = string.Format("doing {0}:[{1}/{2}]...", "Size", ++_iProgress, _iProgressTotal);
            UpdateDictionary(string.Format("{0}4F1.APP15DL1", _as400TableLib), "PH.MIDc.Size", "PSIZ15", "DSIZ15");

        }
        private void UpdateDictionary(string as400TableName, string DataType, string code, string desc, params string[] sub)
        {
            //this._progressValue = 0;
            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog,"       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //this._progressValue = ++i;
                Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>doing {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));

                //更新數據字典的數據
                sql1 = string.Format(@"
if exists(select * from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' )
begin
    update [PH.Platform.Misc].dbo.Misc_DataDictionary  
    set    DataName='{0}',Description='{0}' 
    where  DataCode='{1}'
    and    DataType='{2}' 
end 
else
begin
   insert into [PH.Platform.Misc].dbo.Misc_DataDictionary (DataType,DataCode,DataName,Description)
   values('{2}','{1}','{0}','{0}')
end
" + "\n", sub.Length != 1 ? Change2SQLStr(item[desc].ToString().Trim()) : Change2SQLStr(item[desc].ToString().Substring(0, Convert.ToInt16(sub[0])).Trim()), Change2SQLStr(item[code].ToString().Trim()), Change2SQLStr(DataType));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Change2SQLStr(code), Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>Dictionary {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog,string.Format("\r\n====>ERROR {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));

                }
            }

        }
        private void UpdatePurchaseOfficer(string as400TableName, string DataType, string code, string desc, params string[] sub)
        {
            //this._progressValue = 0;
            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //this._progressValue = ++i;
                Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>doing {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));

                //更新數據字典的數據
                sql1 = string.Format(@"
update [PH.POPC].dbo.POHeader
set    PurchaseOfficer='{0}'
where  PurchaseOfficerCode='{1}'
and    POtype=1
and    PHOutstandingQty>0  


if exists(select * from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' )
begin
    update [PH.Platform.Misc].dbo.Misc_DataDictionary  
    set    DataName='{0}',Description='{0}' 
    where  DataCode='{1}'
    and    DataType='{2}' 
end 
else
begin
   insert into [PH.Platform.Misc].dbo.Misc_DataDictionary (DataType,DataCode,DataName,Description)
   values('{2}','{1}','{0}','{0}')
end
" + "\n", sub.Length != 1 ? Change2SQLStr(item[desc].ToString().Trim()) : Change2SQLStr(item[desc].ToString().Substring(0, Convert.ToInt16(sub[0])).Trim()), Change2SQLStr(item[code].ToString().Trim()), Change2SQLStr(DataType));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Change2SQLStr(code), Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>Dictionary {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>ERROR {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));


                }

            }

        }
        private void UpdatePaymentMethod(string as400TableName, string DataType, string code, string desc, params string[] sub)
        {
            //this._progressValue = 0;
            string sql = string.Format("select * from {0}  where Status='0'  order by TRGDATE", as400TableName);
            DataTable dt;
            try
            {
                dt = DB.GetDataByPage_AS400(sql);
            }
            catch (Exception e)
            {
                //Helper.AddText(FileLog.UpdateOtherLog, string.Format("       ===> ERROR:  [{0}:JOBN={1}]  [Time:{2:yyyy'-'MM'-'dd HH:mm:ss}] Msg:{3}", "Get AS400 php98 Data:", this._jobn, DateTime.Now, e.Message);
                return;
            }
            string sql1 = string.Empty;
            string sql2 = string.Empty;
            //this._generateMax = dt.Rows.Count;
            int i = 0;

            foreach (DataRow item in dt.Rows)
            {
                //this._progressValue = ++i;
                Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>doing {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));



                //更新數據字典的數據
                sql1 = string.Format(@"
if exists(select * from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' )
begin

    declare @OldDescription varchar(50)
    select  @OldDescription =Description from [PH.Platform.Misc].dbo.Misc_DataDictionary   where  DataCode='{1}' and    DataType='{2}' 
    update  [PH.POPC].dbo.poheader set PaymentMethod='{0}' 
    where   potype=1 
    and     PHOutstandingQty>0 
    and     PaymentMethod=@OldDescription 
         

    update [PH.Platform.Misc].dbo.Misc_DataDictionary  
    set    DataName='{0}',Description='{0}' 
    where  DataCode='{1}'
    and    DataType='{2}' 
end 
else
begin
   insert into [PH.Platform.Misc].dbo.Misc_DataDictionary (DataType,DataCode,DataName,Description)
   values('{2}','{1}','{0}','{0}')
end
" + "\n", sub.Length != 1 ? Change2SQLStr(item[desc].ToString().Trim()) : Change2SQLStr(item[desc].ToString().Substring(0, Convert.ToInt16(sub[0])).Trim()), Change2SQLStr(item[code].ToString().Trim()), Change2SQLStr(DataType));

                //更新as400數據狀態
                sql2 = string.Format(@"
update {0}
set    Status='1'
where  Status='0'
and    {1}='{2}'
and    {3}='{4}'
and    timestamp(TRGDATE)<='{5:yyyy-MM-dd-HH.mm.ss.fffff}' " + "\n", as400TableName, Change2SQLStr(code), Change2SQLStr(item[code].ToString()), Change2SQLStr(desc), Change2SQLStr(item[desc].ToString()), item["TRGDATE"]);
                try
                {
                    SqlServer.DB.Execute(sql1);
                    DB.AS400DB.Execute(sql2);
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>Dictionary {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] ", item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));
                }
                catch (Exception ex)
                {
                    Helper.AddText(FileLog.UpdateOtherLog, string.Format("\r\n====>ERROR {4}:code={0},desc={1}]-ERP update time:{2:yyyy'-'MM'-'dd HH:mm:ss.fff}  [Time:{3:yyyy'-'MM'-'dd HH:mm:ss}] " + ex.Message, item[code].ToString().Trim(), item[desc].ToString().Trim(), item["TRGDATE"], DateTime.Now, DataType));


                }

            }

        }
        private string Change2SQLStr(string Source)
        {
            return Source.Replace("'", "''");
        }
        private string Change2SQLStr(object Source)
        {
            if (Source != null)
            {
                return Source.ToString().Replace("'", "''");
            }
            else
            {
                return string.Empty;
            }
        }
        //#endregion
        #region IUpdateData Members
        public void Run()
        {
            this.UpdatePOPCOther();
        }
        #endregion
    }
}
