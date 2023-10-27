using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;
using System.Collections;
using System.Net.Mail;
using PH.Platform.Email.BO;


namespace PH.RWO.UI.Amend
{
    public partial class FrmConfirm : Form
    {

        public ArrayList AmendList = new ArrayList();
        public ArrayList ProjList = new ArrayList();

        private string AmendStr = "", CurrentUser = "";
        private string SendBody = "";

        PHPlatformMiscDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();


        public FrmConfirm(ArrayList AmendItems, string User, string sendbody, ArrayList projlist)
        {
            InitializeComponent();
            AmendList = AmendItems;
            ProjList = projlist;
            GetAmendItems();
            CurrentUser = User;
            SendBody = sendbody;
            //WO = wo;
            this.BindEmailTo();
            this.BindEmailCC();
            //this.splitContainerControl1.Panel1.Text = "以下為您本次需要確認的通知單號 :" + AmendStr +" \r\n請注意檢查,確保無誤后再發送郵件 !";
            this.medtRemark.Text = "以下為您本次需要確認的更改通知單號列表 :" + AmendStr + " \r\n\r\n 請注意檢查,確保無誤后再發送郵件(括號中為版本號) !";
        }
        public void GetAmendItems()
        {
            //string ss = "";
            for (int i = 0; i < AmendList.Count; i++)
            {
                if (i < AmendList.Count - 1)
                    AmendStr = AmendStr + AmendList[i] + ";";
                else
                    AmendStr = AmendStr + AmendList[i];

            }

        }



        private void BindEmailTo()
        {
            if (mdc != null)
            {
                // var emailto = from d in mdc.Misc_DataDictionaries where d.DataType == "RWO.Amend.EmailTo" select d;
                string sqlto = "select dataname,Description from Misc_DataDictionary where datatype='RWO.Amend.EmailTo'";
                DataTable dt = mdc.ExecuteDataTable(sqlto, "tbemail");
                dt.Columns.Add("fchk1", System.Type.GetType("System.Boolean"));
                gcSendTo.DataSource = dt;
            }

        }

        private void BindEmailCC()
        {
            if (mdc != null)
            {
                string sqlto = "select dataname,Description from Misc_DataDictionary where datatype='RWO.Amend.EmailCC'";
                DataTable dt = mdc.ExecuteDataTable(sqlto, "tbemailcc");
                dt.Columns.Add("fchk2", System.Type.GetType("System.Boolean"));
                gcSendCC.DataSource = dt;
            }

        }

        private ArrayList GetToList()
        {
            ArrayList ToList = new ArrayList();

            for (int i = 0; i < this.gvTo.RowCount; i++)
            {
                string value = gvTo.GetDataRow(i)["fchk1"].ToString();
                if (value == "True")
                {
                    ToList.Add(gvTo.GetRowCellValue(i, "dataname"));

                }
            }

            return ToList;

        }

        private ArrayList GetCCList()
        {
            ArrayList cclist = new ArrayList();
            for (int i = 0; i < this.gvTo.RowCount; i++)
            {
                string value = gvTo.GetDataRow(i)["fchk1"].ToString();
                if (value == "True")
                {
                    cclist.Add(gvTo.GetRowCellValue(i, "dataname"));

                }
            }

            return cclist;

        }

        private string GetCC()
        {
            string ss = "";
            ArrayList al = GetCCList();
            for (int k = 0; k < al.Count; k++)
            {
                if (k < al.Count - 1)
                    ss = ss + al[k] + ",";
                else
                    ss = ss + al[k];

            }
            return ss;

        }

        private string GetTo()
        {
            string ss = "";
            ArrayList al = GetToList();
            for (int k = 0; k < al.Count; k++)
            {
                if (k < al.Count - 1)
                    ss = ss + al[k] + ",";
                else
                    ss = ss + al[k];

            }
            return ss;

        }



        private string SendMail(string from, string fromname, string to, string cc, string subject, string body, string server, string username, string password, string fujian)
        {
            string _succ = "N";
            try
            {

                //邮件发送类 

                MailMessage mail = new MailMessage();

                //是谁发送的邮件 

                mail.From = new MailAddress(from, fromname);

                //发送给谁 

                mail.To.Add(to);

                mail.CC.Add(cc);

                //标题 

                mail.Subject = subject;

                //内容编码 

                mail.BodyEncoding = Encoding.Default;

                //发送优先级 

                mail.Priority = MailPriority.High;

                //邮件内容 

                mail.Body = body;

                //是否HTML形式发送 

                mail.IsBodyHtml = true;

                //附件 

                if (fujian.Length > 0)
                {

                    mail.Attachments.Add(new Attachment(fujian));

                }

                //邮件服务器和端口 

                SmtpClient smtp = new SmtpClient(server, 25);

                smtp.UseDefaultCredentials = false;

                //指定发送方式 

                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                //smtp.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;

                //指定登录名和密码 

                smtp.Credentials = new System.Net.NetworkCredential(username, password);

                //超时时间             
                smtp.Timeout = 10000;
                smtp.EnableSsl = false;
                //smtp.Send(mail);


                smtp.SendAsync(mail, "制單更改確認郵件通知"); // (mail);

                _succ = "Y";

                return _succ;

            }

            catch (Exception exp)
            {

                return exp.Message;

            }

        }

        public bool SendMail(string tolist, string cclist, string emailbody)
        {
            //get subject
            string _proj = "";
            for (int k = 0; k < ProjList.Count; k++)
            {
                _proj = _proj + ProjList[k] + ",";
            }
            _proj = _proj.Remove(_proj.Length - 1, 1);

             //NoteMailHelper mail = new NoteMailHelper("", tolist, cclist, "", "制單更改確認郵件通知,相關Project如下:"+_proj, emailbody, "", "", "", true);
            //bool _issucc = mail.SendMail();
            //return _issucc;



            string MailTo = string.IsNullOrEmpty(tolist) ? "" : tolist.Replace(" ", "");  //多個郵件中間有空格時，發郵件不成功
            string Mailcc = string.IsNullOrEmpty(cclist) ? "" : cclist.Replace(" ", "");
            PH.Platform.Email.BO.MailHelper mail = new PH.Platform.Email.BO.MailHelper("WOAdministrator@phgmt.com.hk", "woadmin", MailTo, Mailcc, "",
                "制單更改確認郵件通知,相關Project如下:" + _proj, emailbody, "", "svphhk01.phgmt.com.hk", 25, false);

            return mail.SendMail("WO Administrator");
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            string _tolist = GetTo();
            string _cclist = GetCC();
            if (_tolist != "" || _cclist != "")
            {
                string _body = "Dear All:\r\n\r\n    以下制單更改通知單:\r\n\r\n" + "     " + SendBody + "\r\n     己被 " + CurrentUser + " 所批核,\r\n\t\n     請后繼相關人員及時跟進并確認(注意:尖括號中為通知單版本,中括號中為此通知單中所包含Project No.&WO) \r\n\r\n Best Regards!";
                SendMail(_tolist, _cclist, _body);
            }

        }


        /*
         
                string YNOk = "N";

                YNOk = SendMail("PH_MSA@phgmt.com.hk",
                      "PH_MSA",
                       dt.Rows[i]["SendTo"].ToString(),
                       dt.Rows[i]["Subject"].ToString(),
                       dt.Rows[i]["EmailBody"].ToString(),
                      "PH_MSA",
                      "PHMSA",
                      "svphhk01.phgmt.com.hk",
                      ""
                      );         
         
         */


    }
}
