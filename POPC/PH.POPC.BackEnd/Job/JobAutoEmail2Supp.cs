using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.POPC.BO;
namespace PH.POPC.BackEnd.Job
{
    /// <summary>
    /// Xsj:POPC自動發送郵件通知Supplier交期提醒。
    /// </summary>
    public class JobAutoEmail2Supp : PH.Platform.BackEnd.BO.IServerJob
    {
        #region IServerJob Members

        public void BackEndJob(string parameters)
        {
            System.Diagnostics.Trace.WriteLine("Email Begin");
            AutoEmailAction();
            System.Diagnostics.Trace.WriteLine("Email End");
        }

        #endregion

        #region Fields
        //POPCDataContext _context;

        #endregion

        #region functions

        private void AutoEmailAction()
        {
            CheckPOPCData();

            //...

        }

        private void CheckPOPCData()
        {
            PH.POPC.BO.POEmailList emaillist = new PH.POPC.BO.POEmailList();
            emaillist.CurrentDataContext.CommandTimeout = 1000;
            emaillist.CurrentDataContext.Connection.Open();

            //Xsj20150829: For speedup system running。set the transaction to the lowest level。
            emaillist.CurrentDataContext.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

            ////_context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            ////_context.CommandTimeout = 1000;


            //Xsj20150829:Get POHeader infomation by the date condition(after 14 days).
            //---------------------Peter---------------
            //var aa = from a in emaillist.CurrentDataContext.POHeaders
            //         where a.PODetails.Any(p => (p.ConfirmETADate ?? DateTime.Today) == DateTime.Today.AddDays(14)  //Xsj20150831:Fix the day Range
            //             && (p.Flag == null || p.Flag == ""))   //Xsj20150831:filter detail cancel records.
            //             && (a.VersionFlag ?? false)   //Xsj20150831:Get the latest version.
            //             && a.POType == (int)POType.PO   //Xsj20150831:Just get the PO info.
            //             && (a.Flag == null || a.Flag == "")  //Xsj20150831:filter header cancel records.
            //         group a by new { Supp = a.Supplier, Division = a.Dept } into g
            //         orderby g.Key.Supp
            //         select new { g.Key };
            //--------------------Chandler-----------------
            //Xsj20150922:add
            int beforeDays = 14;
            var aa = from a in emaillist.CurrentDataContext.POHeaders
                     where a.PODetails.Any(p =>
                           (p.ConfirmETADate ?? DateTime.Today) <= DateTime.Today.AddDays(beforeDays)  //Xsj20150831:Fix the day Range
                         && (p.ConfirmETADate ?? DateTime.Today) >= DateTime.Today  //Xsj20150831:Fix the day Range
                         && (p.ConfirmETADate ?? DateTime.Today) >= new DateTime(2016, 2, 16) //Xsj20160215:處理從該天起的數據
                         && !(p.IsAutoEmailNote ?? false) //Xsj:20160215:獲取還沒有發送郵件的PODetail
                         && (p.VersionFlag ?? false) //Xsj20160215:add to Get latest podetai
                         && (p.Flag == null || p.Flag == ""))   //Xsj20150831:filter detail cancel records.
                         && (a.VersionFlag ?? false)   //Xsj20150831:Get the latest version.
                         && a.POType == (int)POType.PO   //Xsj20150831:Just get the PO info.
                         && (a.Flag == null || a.Flag == "")  //Xsj20150831:filter header cancel records.
                     group a by new { Supp = a.Supplier, Division = a.Dept } into g   //Xsj20150925:以供商，採購組進行分組。
                     orderby g.Key.Supp
                     select new { g.Key };

            string supp = "";
            string emailToNe = "";
            string emailTo = "";
            string emailCC = "";

            //Xsj20160216:遍歷涉及的組別
            foreach (var a in aa)
            {
                //------------------Peter-------------------------------
                #region to mail
                //Xsj20150831:Get supplier emial address.
                if (supp != a.Key.Supp)
                {
                    //Xsj:顯示供應商名
                    supp = a.Key.Supp;
                    var d = emaillist.GetEmailBySupp(supp);
                    if (d != null && !string.IsNullOrEmpty(d.Email))
                    {
                        //emailTo = string.Format("{0}, ", d.Email);
                        emailToNe = d.UserName;
                    }
                }
                #endregion

                #region cc mail
                //Xsj20150831:Get purchaser's inner  email addrsses of ph
                //a.Key.Division remove 'T'
                emailCC = "";
                var ph = emaillist.GetPHUsers(a.Key.Division, "", "", "");
                //Xsj:如果指定的組別沒有設置採購員，這發給所有的採購員。
                if (ph == null)
                {
                    ph = emaillist.GetPHUsers("", "", "", "");
                }
                if (ph != null)
                {
                    foreach (var p in ph)
                    {
                        emailCC += string.Format("{0}, ", p.Email);
                    }
                }
                #endregion

                //----------------Chandler Xiao For Testing---------------------
                emailTo = "ChandlerXiao@phgmt.com.hk";
                emailToNe = "PHTesting for auto email supplier";
                emailCC += "ChandlerXiao@phgmt.com.hk";


                #region get po data
                //-----------------------Peter------------------------------------------------------
                //var bb = from b in emaillist.CurrentDataContext.POColorSizeDetails
                //         where (b.PODetail.ConfirmETADate ?? DateTime.Today) == DateTime.Today.AddDays(14)
                //             && (b.PODetail.Flag == null || b.PODetail.Flag == "")
                //             && (b.VersionFlag ?? false)
                //             && b.PODetail.POHeader.POType == (int)POType.PO
                //             && (b.PODetail.POHeader.Flag == null || b.PODetail.POHeader.Flag == "")
                //             && b.PODetail.POHeader.Supplier == a.Key.Supp //Xsj20150831:filter by supplier
                //             && b.PODetail.POHeader.Dept == a.Key.Division  //Xsj20150831:filter  by PurchTeam
                //         group b by new { Supp = b.PODetail.POHeader.Supplier, Division = b.PODetail.POHeader.Dept, b.PONO, b.PODetail.ProjectNo, b.SupplierReference, b.ColorCode, b.ItemColorName, b.ColorShade, b.PODetail.SupplierUom, PODeliveryDate = b.PODetail.ConfirmETADate } into g
                //         orderby g.Key.PONO, g.Key.SupplierReference
                //         select new { g.Key, BalQty = g.Sum(p => (p.PHOutstandingQty / Convert.ToDecimal(p.PODetail.ConversionFactor ?? 1))) };


                //----------------------ChandlerXiao-------------------------------------------
                var bb = from b in emaillist.CurrentDataContext.POColorSizeDetails
                         where (b.PODetail.ConfirmETADate ?? DateTime.Today) <= DateTime.Today.AddDays(beforeDays)
                             && (b.PODetail.ConfirmETADate ?? DateTime.Today) >= DateTime.Today
                             && (b.PODetail.ConfirmETADate ?? DateTime.Today) >= new DateTime(2016, 2, 16) //Xsj20160215:處理從該天起的數據
                             && !(b.PODetail.IsAutoEmailNote ?? false)
                             && (b.PODetail.Flag == null || b.PODetail.Flag == "")
                             && (b.PODetail.VersionFlag ?? false)
                             && (b.VersionFlag ?? false)
                             && b.PODetail.POHeader.POType == (int)POType.PO
                             && (b.PODetail.POHeader.Flag == null || b.PODetail.POHeader.Flag == "")
                             && (b.PODetail.POHeader.VersionFlag ?? false)
                             && b.PODetail.POHeader.Supplier == a.Key.Supp //Xsj20150831:filter by supplier
                             && b.PODetail.POHeader.Dept == a.Key.Division  //Xsj20150831:filter by PurchTeam
                         group b by new
                         {
                             Supp = b.PODetail.POHeader.Supplier,
                             Division = b.PODetail.POHeader.Dept,
                             b.PONO,
                             b.PODetail.ProjectNo,
                             b.SupplierReference,
                             b.ColorCode,
                             b.ItemColorName,
                             b.ColorShade,
                             b.PODetail.SupplierUom,
                             PODeliveryDate = b.PODetail.ConfirmETADate
                         } into g
                         orderby g.Key.PONO, g.Key.SupplierReference
                         select new { g.Key, BalQty = g.Sum(p => (p.PHOutstandingQty / Convert.ToDecimal(p.PODetail.ConversionFactor ?? 1))) };

                List<AutoEmailDetail> details = new List<AutoEmailDetail>();
                foreach (var c in bb)
                {
                    //Xsj20160216:過濾掉待送數量為零的記錄
                    if ((c.BalQty ?? 0) == 0)
                    {
                        continue;
                    }

                    AutoEmailDetail d = new AutoEmailDetail();
                    d.Supp = c.Key.Supp;
                    d.Division = c.Key.Division;
                    d.PONO = c.Key.PONO;
                    d.ProjectNo = c.Key.ProjectNo;
                    d.SuppRef = c.Key.SupplierReference;
                    d.ColorCode = c.Key.ColorCode;
                    d.ColorName = c.Key.ItemColorName;
                    d.ColorShade = c.Key.ColorShade;
                    d.SuppBalanceQty = c.BalQty ?? 0;
                    d.SuppUnit = c.Key.SupplierUom;
                    d.DeliveryDate = c.Key.PODeliveryDate ?? DateTime.MinValue;

                    details.Add(d);
                }

                //Xsj20160216:過濾掉待送數量為零的記錄
                if (details.Count == 0)
                {
                    continue;
                }

                //Xsj:生成郵件Body
                string body = CreateBody(details, supp, emailToNe, emailTo, emailCC);

                #endregion

                #region Send email

                //Xsj20150831:Start to send Emailt by SMTP.
                string to = emailTo;
                string cc = emailCC;

                //Xsj20150831:Can change to be different subject here.
                string subject = "to do ...";

                if (string.IsNullOrEmpty(to))
                {
                    //MessageBox.Show("please select receiver(To)!", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    //this.ToEditor.Focus();
                    continue;
                }
                //if (string.IsNullOrEmpty(subject))
                //{
                //    //MessageBox.Show("please enter subject!", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //    //this.editSubject.Focus();
                //    continue;
                //}
                if (string.IsNullOrEmpty(body))
                {
                    //MessageBox.Show("please input body content!", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    //this.editSubject.Focus();
                    continue;
                }

                string[] fs = null;
                //if (m_pAttachments.Items.Count > 0)
                //{
                //    fs = new string[m_pAttachments.Items.Count];
                //    int i = 0;
                //    foreach (ListViewItem item in m_pAttachments.Items)
                //    {
                //        fs[i] = item.Tag.ToString();
                //        ++i;
                //    }
                //}


                ////-------Peter------------------
                AutoEmailHelper helper = new AutoEmailHelper();
                helper.EmailFrom = "PH_POPC@phgmt.com.hk";
                helper.EmailFromNe = "PH_POPC";
                helper.UserName = "PH_POPC";
                helper.Password = "654321";
                helper.Host = "svphhk01.phgmt.com.hk";

                //----------------Chandler-------------------
                //AutoEmailHelper helper = new AutoEmailHelper();
                //helper.EmailFrom = "chxsj@163.com";
                //helper.EmailFromNe = "PH_POPC";
                //helper.UserName = "chxsj";
                //helper.Password = "chxsj820219";
                //helper.Host = "smtp.163.com";


                ////helper.EmailFrom = "RWOAdministrator@phgmt.com.hk";
                ////helper.EmailFromNe = "RWO";
                ////helper.UserName = "RWOAdministrator";




                //helper.EmailFrom = "iqcresponseweb@phgmt.com.hk";
                //helper.EmailFromNe = "iqcresponseweb";
                //helper.UserName = "iqcresponseweb";
                //////helper.EmailFrom = "RWOAdministrator@phgmt.com.hk";
                //////helper.EmailFromNe = "RWO";
                //////helper.UserName = "RWOAdministrator";

                //helper.Password = "iqcresponseweb1";
                //helper.Host = "svphhk01.phgmt.com.hk";


                helper.EmailTo = to;
                helper.EmailCC = cc;
                helper.Subject = subject;
                helper.Body = body;
                helper.Files = fs;

                try
                {
                    helper.SendEmail();

                    //Xsj:Update Email Log 
                    PH.POPC.BO.POPCDataContext dcont = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    dcont.CommandTimeout = 1000;
                    var poDetailList = from c in dcont.PODetails
                                       where (c.ConfirmETADate ?? DateTime.Today) <= DateTime.Today.AddDays(beforeDays)
                                             && (c.ConfirmETADate ?? DateTime.Today) >= DateTime.Today
                                             && (c.ConfirmETADate ?? DateTime.Today) >= new DateTime(2016, 2, 16) //Xsj20160215:處理從該天起的數據
                                             && (c.Flag == null || c.Flag == "")
                                             && (c.VersionFlag ?? false)
                                             && c.POHeader.POType == (int)POType.PO
                                             && (c.POHeader.Flag == null || c.POHeader.Flag == "")
                                             && c.POHeader.Supplier == a.Key.Supp //Xsj20150831:filter by supplier
                                             && c.POHeader.Dept == a.Key.Division  //Xsj20150831:filter by supplier department
                                       select c;
                    foreach (var item in poDetailList)
                    {
                        item.IsAutoEmailNote = true;
                        item.AutoEmailNoteDate = DateTime.Now;
                    }
                    dcont.SubmitChanges();

                    System.Threading.Thread.Sleep(2000);
                }
                catch (Exception ex)
                {
                    //Xsj：寫日誌

                }

                #endregion

            }

        }


        /// <summary>
        /// Xsj20150831:Make up email body.
        /// </summary>
        /// <param name="details"></param>
        /// <param name="supp"></param>
        /// <param name="emailToNe"></param>
        /// <param name="emailTo"></param>
        /// <param name="emailCC"></param>
        /// <returns></returns>
        private string CreateBody(List<AutoEmailDetail> details, string supp, string emailToNe, string emailTo, string emailCC)
        {

            string emailContent = "<html>";

            #region Style

            emailContent += "<style>";
            emailContent += "html{word-wrap:break-word;}";
            emailContent += "body{font-size:14px;font-family:arial,verdana,sans-serif;line-height:1.666;padding:8px 10px;margin:0;}";
            emailContent += "pre {";
            emailContent += "white-space: pre-wrap; ";
            emailContent += "white-space: -moz-pre-wrap; ";
            emailContent += "white-space: -pre-wrap;";
            emailContent += "white-space: -o-pre-wrap;";
            emailContent += "word-wrap: break-word;";
            emailContent += "}";
            emailContent += "</style>";

            #endregion

            emailContent += "<body>";
            emailContent += "<div style=\"FONT-FAMILY: 'Verdana','sans-serif';FONT-SIZE: 8pt;\">";
            emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Supplier:&nbsp;&nbsp;" + supp;



            emailContent += "<br /><br />";

            emailContent += "<br /><b>PO Information:&nbsp;-</b><br /><br />";

            emailContent += CreateHtmlTable(details);

            emailContent += "<br><font size=\"1\" face=\"Verdana\">&nbsp;</font>";

            emailContent += "<br />";
            emailContent += "</div>";
            emailContent += "</body></html>";

            return emailContent;
        }

        private string AddTableCell(string value, bool isBlue)
        {
            return AddTableCell(value, isBlue, 0);
        }
        private string AddTableCell(string value, bool isBlue, int width)
        {
            if (string.IsNullOrEmpty(value)) value = "&nbsp";
            string[] ss = value.Split(new string[] { ";" }, StringSplitOptions.RemoveEmptyEntries);

            string s = "";
            if (width == 0)
                s += string.Format("<td>");
            else
                s += string.Format("<td  style='width:{0}'>", width);

            s += "<div align=\"center\">";

            for (int i = 0; i < ss.Length; i++)
            {
                if (i > 0)
                    s += "<br>";
                s += string.Format("<font size=\"1\" {1} face=\"Verdana\">{0}</font>", ss[i], isBlue ? "color=\"blue\"" : "");
            }

            s += "</div></td>";
            return s;
        }

        public string CreateHtmlTable(List<AutoEmailDetail> details)
        {
            int[] ii = new int[] { 64, 90, 48, 118, 59, 78, 78, 59, 40, 87 };//10

            int ttl = 1;
            foreach (int item in ii)
            {
                ttl += item + 1;
            }

            string resultStr = @"<table style=' border-style:none ;  border-color:Black; border-width:1px; border-collapse :collapse ; font-size:10px; text-align:center; word-wrap: break-word; ' width={0}>
            <tr style='color:blue'>

                <td  style=' border:solid  Black 1px;' width={1}>
                    	PO No.	</td>
                <td  style=' border:solid  Black 1px;' width={2}>
                   PH<br>Project No.	</td>
                <td  style=' border:solid  Black 1px;' width={3}>
                     Supp<br>Code</td>
                <td  style=' border:solid  Black 1px;' width={4}>
                   Supp<br>Item Ref.	</td>


                <td  style=' border:solid  Black 1px;' width={5}>
                   	Our Item<br>Color<br>Code</td> 
                <td  style=' border:solid  Black 1px;' width={6}>
                    Our Item<br>Color Name <br>(if any)</td>
                <td  style=' border:solid  Black 1px;' width={7}>
                    Supp Item<br>Color<br>Shade</td>


                <td  style=' border:solid  Black 1px;' width={8}>
                  Supp Bal<br>Qty	</td>
                <td  style=' border:solid  Black 1px;' width={9}>
                   Supp<br>Unit</td>
                <td  style=' border:solid  Black 1px;' width={10}>                    
                    PO<br>Delivery<br>Date</td>



            </tr>";

            //Xsj20150831:Format table style.
            resultStr = string.Format(resultStr, ttl, ii[0], ii[1], ii[2], ii[3], ii[4], ii[5], ii[6], ii[7], ii[8], ii[9]);

            //Xsj20150831:Create table body.
            string newRow = "";
            foreach (var p in details)
            {
                string s = @"<tr style='background-color:white';>" +
                                   @"<td style=' border:solid  Black 1px;'>
                                       {0}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {1}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {2}	</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {3}	</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {4}	</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {5} </td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {6}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {7}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {8}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {9}</td>

                                </tr>";

                newRow += string.Format(s,
                    p.PONO,
                    p.ProjectNo,
                    p.Supp,
                    p.SuppRef,
                    p.ColorCode,
                    p.ColorName,
                    p.ColorShade,
                    string.Format("{0:#,0.##}", p.SuppBalanceQty),
                    p.SuppUnit,
                    //string.Format("{0:yyyy/MM/dd}", p.POReqDeliveryDate),
                    string.Format("{0:yyyy/MM/dd}", p.DeliveryDate)
                    );

            }
            resultStr += newRow;
            resultStr += @"</table>";

            return resultStr;
        }

        #endregion
    }
}
