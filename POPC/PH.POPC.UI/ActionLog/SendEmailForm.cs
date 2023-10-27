using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.Platform.BO;
using PH.Platform.Email.BO;
using PH.POPC.BO;
using PH.MIDc.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class SendEmailForm : DevExpress.XtraEditors.XtraForm
    {
        PH.POPC.BO.ActionLogDetail _ActionLogDetail;
        POPCDataContext db;
        //string Subject;
        ActionLogProcessModes _ProcessMode;
        PH.POPC.BO.ActionLogHeader _ActionLogHeader;
        IEnumerable<ActionLogHeader> _ActionLogHeaderList;
        IEnumerable<ActionLogDetail> _ActionLogDetailList;

        bool _LastStageIsCompleted;
        string _ActionLogCompleteReason;
        //string _SuppCode;
        //string _PONO;


        //public SendEmailForm(ActionLogProcessModes AProcessMode, POPCDataContext ADB, IEnumerable<ActionLogHeader> AActionLogHeaderList, PH.POPC.BO.ActionLogHeader AActionLogHeader,
        //    IEnumerable<ActionLogDetail> AActionLogDetailList, PH.POPC.BO.ActionLogDetail AActionLogDetail, bool ALastStageIsCompleted, string AActionLogCompleteReason, string ASuppCode, string APONO)

        public SendEmailForm(ActionLogProcessModes AProcessMode, POPCDataContext ADB, IEnumerable<ActionLogHeader> AActionLogHeaderList, PH.POPC.BO.ActionLogHeader AActionLogHeader,
            IEnumerable<ActionLogDetail> AActionLogDetailList, PH.POPC.BO.ActionLogDetail AActionLogDetail, bool ALastStageIsCompleted, string AActionLogCompleteReason)
        {
            InitializeComponent();

            db = ADB;
            _ProcessMode = AProcessMode;
            _ActionLogHeaderList = AActionLogHeaderList;
            _ActionLogHeader = AActionLogHeader;
            _ActionLogDetailList = AActionLogDetailList;
            _ActionLogDetail = AActionLogDetail;
            _LastStageIsCompleted = ALastStageIsCompleted;
            _ActionLogCompleteReason = AActionLogCompleteReason;
            //_SuppCode = ASuppCode;
            //_PONO = APONO;

            if (ALastStageIsCompleted)
            {
                _ActionLogHeader.CompleteSendEmailCount = (_ActionLogHeader.CompleteSendEmailCount ?? 0) + 1;
            }

            this.GenerateEmailData();
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            this.SendMail(true);

            //保存最后一次的邮件列表到ActionLogHeader
            _ActionLogHeader.EmailTo = cbTo.Text;
            _ActionLogHeader.EmailCc = cbcc.Text;

            //保存ActionLogDetail的邮件列表
            _ActionLogDetail.EmailTo = cbTo.Text;
            _ActionLogDetail.EmailCc = cbcc.Text;

            db.SubmitChanges();

            this.DialogResult = DialogResult.OK;
        }

        void GenerateEmailData()
        {
            StringBuilder sb = new StringBuilder();

            PH.POPC.BO.ActionLogHeader header = _ActionLogHeader; //this._ActionLogDetail.ActionLogHeader;

            cbTo.Properties.Items.Clear();
            cbcc.Properties.Items.Clear();

            PH.LWPM.BO.RAPLQDataContext RAPDB = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
            var lists = RAPDB.Emails.Select(p => p.EmailAddress).OrderBy(p => p);
            foreach (var o in lists)
            {
                cbTo.Properties.Items.Add(o);
                cbcc.Properties.Items.Add(o);
            }

            ActionLogEmail obj = this.bsActionLogEmail.AddNew() as ActionLogEmail;
            obj.From = "PH_POPC@phgmt.com.hk";  //虚拟的邮箱
            obj.To = string.IsNullOrEmpty(_ActionLogDetail.EmailTo) ? _ActionLogHeader.EmailTo : _ActionLogDetail.EmailTo;
            obj.cc = string.IsNullOrEmpty(_ActionLogDetail.EmailCc) ? _ActionLogHeader.EmailCc : _ActionLogDetail.EmailCc;

            cbTo.EditValue = obj.To;
            cbcc.EditValue = obj.cc;
            string ProjectNo = "(" + string.Join("/", _ActionLogHeaderList.Select(dr => dr.ProjectNo).Distinct().ToArray()) + ")";

            var SameActionLogList = _ActionLogHeaderList.Where(p => p.ActionLogSeqNo == _ActionLogHeader.ActionLogSeqNo);
            int TotalColor = SameActionLogList.Select(p => p.ColorCode).Distinct().Count();

            //string ProjectNo = string.Join(", ", SameActionLogList.Select(p => p.ProjectNo).Distinct().ToArray());
            string CustCode = string.Join(", ", SameActionLogList.Select(p => p.ProjectNo.Substring(0, 4)).Distinct().ToArray());
            string ItemCode = string.Join(", ", SameActionLogList.Select(p => p.ItemCode).Distinct().ToArray());
            //string SuppRef = string.Join(", ", SameActionLogList.Select(p => p.SuppRef).Distinct().ToArray());
            int TotalItem = SameActionLogList.Select(p => p.SuppRef).Distinct().Count();



            string CompletedDate = header.CompletedDate == null ? "" : (header.CompletedDate ?? DateTime.MinValue).ToString("yyyy-MM-dd").Trim();
            string PlanEndDate = header.PlanEndDate == null ? "" : (header.PlanEndDate ?? DateTime.MinValue).ToString("yyyy-MM-dd").Trim();

            var IMQEobj = db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == header.ActionLogID);

            string DataCrossTransferredDate = IMQEobj == null ? "" : (IMQEobj.DataCrossTransferredDate ?? DateTime.MinValue).ToString("yyyy-MM-dd");
            obj.Subject = string.Format("({0}) L3 Log#{1} ({2}), {3} ({4}), {5} / {6} / {7} clr / Cat. Cde {8} - {9}",
                header.PrdnSite,                     //0  Prdn Site
                header.ActionLogSeqNoShow,           //1  Action log seq#
                header.ActionLogType,                //2. Grpg
                header.PONO,                         //3  P/O #
                CustCode,                            //4  Cust Cde
                header.SuppCode,                     //5  Supp cde
                ItemCode,                            //6  Our Item Code
                TotalColor,                          //7  Color Total
                header.ItemNo,                       //8  Category Code
                GetFollowUpSeqNo(_ActionLogDetail.FollowCount) // 9 后缀
                );

            obj.Subject = obj.Subject.Trim();
            string SendDate = "";

            var ActionLogList = _ActionLogDetailList.Where(p => p.OID <= _ActionLogDetail.OID).OrderByDescending(p => p.FollowCount);
            foreach (var actionLog in ActionLogList)
            {
                SendDate = actionLog.StartFollowDate.HasValue ? (actionLog.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                sb.AppendLine(SameLength("【Sender】") + actionLog.Sender.Trim());
                sb.AppendLine(SameLength("【dd/time】") + SendDate.Trim());
                sb.AppendLine(SameLength("【Follow up seq.】") + actionLog.FollowCount.ToString().Trim());

                //sb.AppendLine("【Sender】                            " + actionLog.Sender.Trim());
                //sb.AppendLine("【dd/time】                           " + SendDate.Trim());
                //sb.AppendLine("【Follow up seq.】                    " + actionLog.FollowCount.ToString().Trim());

                if (ActionLogList.Last().OID == actionLog.OID) //首行
                {
                    sb.AppendLine(SameLength("【PO# (Sole Item)】") + header.PONO.ToString().Trim());

                    sb.AppendLine(SameLength("【Item standby ahead sch (days)】") + header.RWO_DaysDiff.ToString().Trim());
                    sb.AppendLine(SameLength("【Proj#】") + ProjectNo);//header.ProjectNo.Trim());
                    sb.AppendLine(SameLength("【FW Start dd】") + (header.WOFWStartDate ?? DateTime.MinValue).ToString("yyyy-MM-dd").Trim());
                    sb.AppendLine(SameLength("【Prdn Site】") + header.PrdnSite);
                    //sb.AppendLine("【Extra time to RX as at dd】         " + (header.ExtraTimeToRXDate.HasValue ? header.ExtraTimeToRXDate.Value.ToString("yyyy-MM-dd") : "--").Trim());
                    sb.AppendLine(SameLength("【Supp Item Cde】") + header.SuppRef.Trim());
                    sb.AppendLine(SameLength("【Cat. desc.】") + header.ItemSubject.Trim());

                    sb.AppendLine(SameLength("【Target cmpl dd】") + PlanEndDate);
                    sb.AppendLine(SameLength("【Actual cmpl dd】") + CompletedDate);
                    sb.AppendLine(SameLength("【Data cross received dd. (if any)】") + DataCrossTransferredDate.Trim());

                    sb.AppendLine(SameLength("【Remarks】:"));


                    //sb.AppendLine("【PO# (Sole Item)】                   " + header.PONO.ToString().Trim());

                    //sb.AppendLine("【Item standby ahead sch (days)】     " + header.RWO_DaysDiff.ToString().Trim());
                    //sb.AppendLine("【Proj#】                             " + ProjectNo);//header.ProjectNo.Trim());
                    //sb.AppendLine("【FW Start dd】                       " + (header.WOFWStartDate ?? DateTime.MinValue).ToString("yyyy-MM-dd").Trim());
                    //sb.AppendLine("【Prdn Site】                         " + header.PrdnSite);
                    ////sb.AppendLine("【Extra time to RX as at dd】         " + (header.ExtraTimeToRXDate.HasValue ? header.ExtraTimeToRXDate.Value.ToString("yyyy-MM-dd") : "--").Trim());
                    //sb.AppendLine("【Supp Item Cde】                     " + header.SuppRef.Trim());
                    //sb.AppendLine("【Cat. desc.】                        " + header.ItemSubject.Trim());

                    //sb.AppendLine("【Target cmpl dd】                    " + PlanEndDate);
                    //sb.AppendLine("【Actual cmpl dd】                    " + CompletedDate);
                    //sb.AppendLine("【Data cross received dd. (if any)】  " + DataCrossTransferredDate.Trim());

                    //sb.AppendLine("【Remarks】:                          ");


                    if (header.PrdnSite == "CN?" || header.PrdnSite == "RX*")
                    {
                        string RemarkText = db.ActionLogRemarks.FirstOrDefault(p => p.Code == "ActionLogPrdnSiteRemarkText").Remark;
                        sb.AppendLine(" " + RemarkText);
                    }
                }

                //sb.AppendLine("【Follow up content (in seq.)】:   ");
                sb.AppendLine(SameLength("【Follow up content (in seq.)】:"));
                sb.AppendLine(" " + actionLog.FollowSummary);

                sb.AppendLine("=================================================");

            }
            obj.Message = sb.ToString();
        }

        public void SendMail(bool ANeedMessage)
        {
            //string From = "PH_PDN@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string From = "PH_POPC@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string Password = "phpdn";
            string SmtpServer = "svphhk01.phgmt.com.hk";  //"10.1.1.236";

            PH.POPC.BO.ActionLogEmail obj = this.bsActionLogEmail.Current as PH.POPC.BO.ActionLogEmail;
            obj.To = cbTo.Text;
            obj.cc = cbcc.Text;

            string To = string.IsNullOrEmpty(obj.To) ? "" : obj.To.Replace(" ", "");  //多個郵件中間有空格時，發郵件不成功
            string cc = string.IsNullOrEmpty(obj.cc) ? "" : obj.cc.Replace(" ", "");

            MailHelper mail = new MailHelper(From, Password, To, cc, "", obj.Subject, obj.Message, this.edtAttachment.Text, SmtpServer, 25, ANeedMessage);
            //mail.IsBodyHtml = true;
            mail.SendMail("POPC");
        }

        private void edtAttachment_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Multiselect = true;
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.edtAttachment.Text))
                {
                    this.edtAttachment.Text = string.Join(",", dialog.FileNames);
                }
                else
                {
                    this.edtAttachment.Text = this.edtAttachment.Text + "," + string.Join(",", dialog.FileNames);
                }
            }
        }

        public string GetFollowUpSeqNo(int? AFollowUpSeqNo)
        {
            if (!AFollowUpSeqNo.HasValue)
            {
                return null;
            }
            else if (AFollowUpSeqNo == 1)
            {
                return " Started";
            }
            else if (AFollowUpSeqNo == 2)
            {
                return "2nd";
            }
            else if (AFollowUpSeqNo == 3)
            {
                return "3rd";
            }
            else
            {
                return AFollowUpSeqNo.ToString() + "th";
            }
        }

        /// <summary>
        /// 字符串统一为36个字符长
        /// </summary>
        /// <param name="AString">需要统一长度的字符串</param>
        /// <returns></returns>
        string SameLength(string AString)
        {
            return AString.PadRight(36, ' ');
        }

        //public string GetMaterialType(string AItemCode)
        //{
        //    MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
        //    var MaterialGroup = MIDcDB.MaterialTypes.Where(p => p.MaterialType1 == AItemCode.Substring(0, 3)).Select(p => p.MaterialGroup).FirstOrDefault();
        //    if (MaterialGroup == "M") return "Allover Mat'l";
        //    else if (MaterialGroup == "L") return "Band Lace/Embo";
        //    else if (MaterialGroup == "E") return "Elastic tape";
        //    else if (MaterialGroup == "C") return "Bras cups' items";
        //    else if (MaterialGroup == "A") return "Acc.";

        //    return "Other";

        //    //Allover Mat'l  M
        //    //Band Lace/Embo L
        //    //Elastic tape   E
        //    //Bras cups' items C
        //    //Accessories      A
        //}
    }
}