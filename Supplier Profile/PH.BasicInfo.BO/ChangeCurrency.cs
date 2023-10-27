using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Data;
using System.Data.SqlClient;


namespace PH.BasicInfo.BO
{
    public class ChangeCurrency
    {
        /// <summary>
        /// 更新汇率
        /// </summary>
        public void ChangeCurrencyRate()
        {
            string msg = "";
            
            try
            {
                BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
                var data = from c in context.V_CurrencyRates select c;
                List<MessageBody> lmb = new List<MessageBody>();
                foreach (V_CurrencyRate c in data)
                {
                    bool isChanged = false;
                    using (BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>())
                    {
                        #region change rate
                        bool isdo = false;
                        MessageBody mb = new MessageBody();
                        var curr = db.Currencies.SingleOrDefault<Currency>(s => s.Currency1 == c.SRCR81);
                        if (curr != null)
                        {
                            isChanged = false;                         
                            mb.currency = c.SRCR81;
                            if (curr.StdBuyRate != c.BUY)
                            {
                                InsertIntoRecord(c.SRCR81, "Standard buy", curr.StdBuyRate, c.BUY);
                                mb.sboldrate = ((double)((curr.StdBuyRate == null) ? 0 : curr.StdBuyRate)).ToString("f4");
                                mb.sbnewrate = ((double)((c.BUY == null) ? 0 : c.BUY)).ToString("f4");
                                curr.StdBuyRate = c.BUY;
                                isdo = true;
                            }
                            if (curr.CurrBuyRate != c.SPBU)
                            {
                                InsertIntoRecord(c.SRCR81, "Current buy", curr.CurrBuyRate, c.SPBU);
                                mb.cboldrate = ((double)((curr.CurrBuyRate == null) ? 0 : curr.CurrBuyRate)).ToString("f4");
                                mb.cbnewrate = ((double)((c.SPBU == null) ? 0 : c.SPBU)).ToString("f4");
                                curr.CurrBuyRate = c.SPBU;
                                isdo = true;
                            }
                            if (curr.StdSellRate != c.SELL)
                            {
                                InsertIntoRecord(c.SRCR81, "Standard sell", curr.StdSellRate, c.SELL);
                                mb.ssoldrate = ((double)((curr.StdSellRate == null) ? 0 : curr.StdSellRate)).ToString("f4");
                                mb.ssnewrate = ((double)((c.SELL == null) ? 0 : c.SELL)).ToString("f4");
                                curr.StdSellRate = c.SELL;
                                isdo = true;
                                isChanged = true;
                            }
                            if (curr.CurrSellRate != c.SPSE)
                            {
                                InsertIntoRecord(c.SRCR81, "Current sell", curr.CurrSellRate, c.SPSE);
                                mb.csoldrate = ((double)((curr.CurrSellRate == null) ? 0 : curr.CurrSellRate)).ToString("f4");
                                mb.csnewrate = ((double)((c.SPSE == null) ? 0 : c.SPSE)).ToString("f4");
                                curr.CurrSellRate = c.SPSE;
                                isdo = true;
                            }
                            if (isdo)
                            {
                                db.SubmitChanges();
                                if (isChanged)
                                    db.ExecuteNonQuery(string.Format("exec [PH.BasicInfo].[dbo].[sp_UpdateQuotationByCurrency] '{0}'", curr.Currency1));
                            }
                        }
                        if (isdo)
                            lmb.Add(mb);
                        #endregion
                    }
                }
                if (lmb.Count > 0)
                {
                    msg = GetEmailBody(lmb);
                    SendEamil(msg);
                }               
            }
            catch (Exception e)
            {
                Console.WriteLine("An error occurred: '{0}'", e);
            }
        }

        /// <summary>
        /// 发送邮件
        /// </summary>
        /// <param name="msg"></param>
        public void SendEamil(string msg)
        {
            string logMsg = null;
            string subjectStr = "Currency Rate Changed Notice";
            try
            {
                BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
                //to 收件人
                List<string> toUserNameList = (from val in context.EmailNames
                                               where ((val.Available == true) && (val.TOORCC=="TO"))
                                               select val.EmailName1).ToList();
                string toUserNameStr = null;
                foreach (string val in toUserNameList)
                {
                    toUserNameStr += toUserNameStr == null ? val : "," + val;
                }

                //cc 收件人
                List<string> ccUserNameList = (from val in context.EmailNames
                                               where ((val.Available == true) && (val.TOORCC == "CC"))
                                               select val.EmailName1).ToList();
                string ccUserNameStr = null;
                if (ccUserNameList != null && ccUserNameList.Count != 0)
                {
                    foreach (string val in ccUserNameList)
                    {
                        ccUserNameStr += ccUserNameStr == null ? val : "," + val;
                    }
                }

                EmailAction emailAction = new EmailAction();
                emailAction.Format = PH.Platform.Email.BO.MailFormat.Html;
                emailAction.EmailBody = msg;
                emailAction.ToUserNames = toUserNameStr;
                emailAction.CCUserNames = ccUserNameStr;
                emailAction.Subject = subjectStr;
                emailAction.Send();
            }
            catch (Exception ex)
            {
                logMsg = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName + "發送[" + subjectStr + "]郵件錯誤：\r\n" + ex.ToString();
            }
        }
        /// <summary>
        /// 将变更内容插入SQL数据库
        /// </summary>
        /// <param name="cucy"></param>
        /// <param name="type"></param>
        /// <param name="oldv"></param>
        /// <param name="newv"></param>
        public void InsertIntoRecord(string cucy, string type, decimal? oldv, decimal? newv)
        {
            CurrencyRecord cr = new CurrencyRecord();
            cr.ChangeTime = DateTime.Now;
            cr.Currency = cucy;
            cr.Changetype = type;
            cr.OldValue = oldv;
            cr.NewValue = newv;
            try
            {
                using (BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>())
                {
                    db.CurrencyRecords.InsertOnSubmit(cr);
                    db.SubmitChanges();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("An error occurred: '{0}'", e);
            }
        }
        /// <summary>
        /// 获取EMAIL内容
        /// </summary>
        /// <param name="mb"></param>
        /// <returns></returns>
        public string GetEmailBody(List<MessageBody> mb)
        {
            string titleColor = "#f7f7f7";
            string strbody = "<b>Citrix匯率變更通知<b><br/>請注意以下匯率發生變化<br/><br/>";

            strbody += @"<table style='border: 0px solid #a4e2c6; ;  border-collapse:collapse; font-size:12px;'>
                <tr style='text-align:center; background-color:#f7f7f7; '>
                <td style='border: 1px solid Black;' width=50px rowspan=2>
                   <b>Currency</b>
                                </td>
                <td style='border: 1px solid Black;' width=80px colspan=2>
                    <b>Standard Buy Rate</b> 
                               </td>
                <td style='border: 1px solid Black;' width=80px colspan=2>
                    <b>Standard Sell Rate</b>
                               </td>
                <td style='border: 1px solid Black;' width=80px colspan=2>
                    <b>Current Buy Rate</b>
                               </td>
		        <td style='border: 1px solid Black;' width=80px colspan=2>
                    <b>Current Sell Rate</b>
                               </td>
                </tr> 

		<tr style='text-align:center; background-color:#f7f7f7; '>
                <td style='border: 1px solid Black;' width=40px>
                    <b>Old</b> 
                               </td>
                <td style='border: 1px solid Black;' width=40px>
                    <b>New</b>
                               </td>
                <td style='border: 1px solid Black;' width=40px>
                    <b>Old</b> 
                               </td>
                <td style='border: 1px solid Black;' width=40px>
                    <b>New</b>
                               </td>
		        <td style='border: 1px solid Black;' width=40px>
                    <b>Old</b> 
                               </td>
                <td style='border: 1px solid Black;' width=40px>
                    <b>New</b>
                               </td>
		        <td style='border: 1px solid Black;' width=40px>
                    <b>Old</b> 
                               </td>
                <td style='border: 1px solid Black;' width=40px>
                    <b>New</b>
                               </td>
                </tr>";
            int rowIndex = 0;
            string rowColor;
            foreach (MessageBody m in mb)
            {
                //隔行色
                rowColor = (rowIndex % 2 == 0) ? "#f1fefd" : "#ffffe6";
                rowIndex++;
                //内容行
                strbody += @"<tr style='text-align:center; background-color:" + titleColor + @"; '>
                <td style='border: 1px solid Black;' width=50px>" + m.currency +
                   @" </td>
                <td style='border: 1px solid Black;' width=40px>" +
                 ((m.sboldrate == null) ? " " : m.sboldrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                    ((m.sbnewrate == null) ? " " : m.sbnewrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                    ((m.ssoldrate == null) ? " " : m.ssoldrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                    ((m.ssnewrate == null) ? " " : m.ssnewrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                 ((m.cboldrate == null) ? " " : m.cboldrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                    ((m.cbnewrate == null) ? " " : m.cbnewrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                    ((m.csoldrate == null) ? " " : m.csoldrate) + @" </td>

                <td style='border: 1px solid Black;' width=40px>" +
                    ((m.csnewrate == null) ? " " : m.csnewrate) + @" </td>
                </tr> ";
            }
            strbody += @"</table><br /><br />";
            strbody += "  &nbsp;<br /><br />";
            strbody += "  &nbsp;This is mail generated by system,please don't reply to this mail directly!<br /><br />";
            strbody += "  &nbsp;系統自動發送,請勿回復!";
            return strbody;
        }

        public class MessageBody
        {
            public string currency { get; set; }
            public string sboldrate { get; set; }
            public string sbnewrate { get; set; }
            public string ssoldrate { get; set; }
            public string ssnewrate { get; set; }
            public string cboldrate { get; set; }
            public string cbnewrate { get; set; }
            public string csoldrate { get; set; }
            public string csnewrate { get; set; }
        }
    }
}
