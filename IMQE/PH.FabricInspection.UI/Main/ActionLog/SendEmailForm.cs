using System;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.Platform.Email.BO;

namespace PH.FabricInspection.UI.Main
{
    public partial class SendEmailForm : DevExpress.XtraEditors.XtraForm
    {
        ActionLogDetail _ActionLogDetail;
        FabricInspectionDataContext db;
        //string Subject;
        ActionLogProcessModes _ProcessMode;
        ActionLogHeader _ActionLogHeader;
        bool _NeedActionLogSendCompletedEmail;
        string _ActionLogCompleteReason;
        ActionLogIMQE _ActionLogIMQE;

        public SendEmailForm(ActionLogProcessModes AProcessMode, FabricInspectionDataContext ADB, ActionLogIMQE AActionLogIMQE, ActionLogHeader AActionLogHeader, ActionLogDetail AActionLogDetail,
            bool ANeedActionLogSendCompletedEmail, string AActionLogCompleteReason)
        {
            InitializeComponent();

            db = ADB;
            _ProcessMode = AProcessMode;
            //_ActionLogHeader = AActionLogDetail.ActionLogHeader;

            _ActionLogIMQE = AActionLogIMQE;
            _ActionLogHeader = AActionLogHeader;

            _ActionLogDetail = AActionLogDetail;
            _NeedActionLogSendCompletedEmail = ANeedActionLogSendCompletedEmail;
            _ActionLogCompleteReason = AActionLogCompleteReason;

            if (ANeedActionLogSendCompletedEmail)
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

            ActionLogHeader header = _ActionLogHeader;//  this._ActionLogDetail.ActionLogHeader;

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
            obj.From = "PH_IMQE@phgmt.com.hk";  //虚拟的邮箱
            obj.To = string.IsNullOrEmpty(_ActionLogDetail.EmailTo) ? _ActionLogHeader.EmailTo : _ActionLogDetail.EmailTo;
            obj.cc = string.IsNullOrEmpty(_ActionLogDetail.EmailCc) ? _ActionLogHeader.EmailCc : _ActionLogDetail.EmailCc;

            cbTo.EditValue = obj.To;
            cbcc.EditValue = obj.cc;

            //const int RowTitleLength = 31;
            //const char Space = ' ';

            string Whse = "";
            string RefNo = "";
            string ProjectNo = "";
            string SuppCode = "";
            string CustCode = "";
            string SuppItemRef = "";
            string ColorCode = "";
            string SendDate = "";
            string TargetCompleteDate = "";
            string LastStageCompletedDate = "";
            //string LastStageRevisedTargetCompletedDate = "";
            string DueDays = "";
            string FWStartDate = "";
            string ERPItemCde = "";

            string DataCrossTransferCmplDate = (_ActionLogIMQE.DataCrossTransferCmplDate.HasValue ? (_ActionLogIMQE.DataCrossTransferCmplDate ?? DateTime.MinValue).ToString("MM-dd") : "");

            if (_ProcessMode == ActionLogProcessModes.Fabric) // 1. Fabric
            {
                var HeaderLists = db.Fabric_Insp_Headers.Where(p => p.ActionLogID == _ActionLogHeader.ActionLogID).OrderByDescending(p => p.RefNo).ThenBy(p => p.Lot_Id).ToList();
                var FabricObj = HeaderLists.FirstOrDefault();

                Whse = HeaderLists.FirstOrDefault().Warehouse;
                RefNo = HeaderLists.FirstOrDefault().AuditNo1;
                ProjectNo = FabricHelper.GetProjectFormatString(HeaderLists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");

                SuppCode = FabricObj.Supplier_Code;
                //CustCode = string.Join("/", HeaderLists.Select(p => p.ProjectNo.Substring(0, 4)).Distinct().ToArray());

                CustCode = string.Join("/", HeaderLists.
                    Select(p => (p.ProjectNo.Substring(0,3).ToString()=="EX-"?p.ProjectNo.Substring(0, 7): p.ProjectNo.Substring(0, 4) ) ).Distinct().ToArray());

                SuppItemRef = string.Join("/", HeaderLists.Select(p => p.SuppItemRef).Distinct().ToArray());
                ColorCode = string.Join("/", HeaderLists.Select(p => p.ColorCodeShow).Distinct().ToArray());
                SendDate = _ActionLogDetail.StartFollowDate.HasValue ? (_ActionLogDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                TargetCompleteDate = (_ActionLogHeader.PlanEndDate.HasValue ? (_ActionLogHeader.PlanEndDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                LastStageCompletedDate = (_ActionLogHeader.LastStageTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                //LastStageRevisedTargetCompletedDate = (_ActionLogHeader.LastStageReviseTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageReviseTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                DueDays = HeaderLists.Select(p => p.DueDay).Max().ToString();
                FWStartDate = HeaderLists.FirstOrDefault().FWStartDate.HasValue ? (HeaderLists.FirstOrDefault().FWStartDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") : "";
                ERPItemCde = string.Join("/", HeaderLists.Select(p => p.Item_No.Substring(0, 9)).Distinct().ToArray());

                var SubjectCategory = db.ActionLogSubjectCategories.FirstOrDefault(p => p.Flag == "Fabric");
                string ActionLogFlag = SubjectCategory == null ? "" : SubjectCategory.ShortName + " - ";
                obj.Subject = GetSubject(Whse, FabricObj.MissingAudit, FabricObj.AuditNo1, CustCode, SuppCode, ERPItemCde, ColorCode, header.ItemNo, header.ItemSubject) + GetSeq(this._ActionLogDetail);

                ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetailList.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                //ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetails.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                //StringBuilder sb = new StringBuilder();
                //var ActionLogList = _ActionLogHeader.ActionLogDetails.Where(p => p.OID <= _ActionLogDetail.OID && p.OID != FirstDetail.OID).OrderByDescending(p => p.FollowCount);
                var ActionLogList = _ActionLogHeader.ActionLogDetailList.Where(p => p.OID <= _ActionLogDetail.OID && p.OID != FirstDetail.OID).OrderByDescending(p => p.FollowCount);
                foreach (var actionLog in ActionLogList)
                {
                    SendDate = actionLog.StartFollowDate.HasValue ? (actionLog.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                    sb.AppendLine("【Sender】                       " + actionLog.Sender);
                    sb.AppendLine("【dd/time】                      " + SendDate);
                    sb.AppendLine("【Follow up seq.】               " + actionLog.FollowCount);
                    sb.AppendLine("【Follow up content (in seq.)】: ");
                    sb.AppendLine(" " + actionLog.FollowSummary);
                    sb.AppendLine("=================================================");
                }

                //加入首行的记录
                SendDate = FirstDetail.StartFollowDate.HasValue ? (FirstDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                //sb.AppendLine("【Whse】                         " + Whse);
                sb.AppendLine("【Sender】                       " + FirstDetail.Sender);
                sb.AppendLine("【dd/time】                      " + SendDate);
                sb.AppendLine("【Follow up seq.】               " + FirstDetail.FollowCount);
                sb.AppendLine("【Audit# (Sole Item/Clr)】       " + RefNo);
                sb.AppendLine("【Audit due days】               " + DueDays);
                sb.AppendLine("【Proj#】                        " + ProjectNo);
                sb.AppendLine("【1st WO FW start dd】           " + FWStartDate);
                //sb.AppendLine("【Supp Cde】                     " + SuppCode);
                sb.AppendLine("【Supp Item Cde】                " + SuppItemRef);
                //sb.AppendLine("【Clr Cde】                      " + ColorCode);
                sb.AppendLine("【Cat. desc.】                   " + _ActionLogHeader.ItemSubject);
                sb.AppendLine("【Negotiation target cmpl dd】   " + TargetCompleteDate);
                sb.AppendLine("【Negotiation cmpl dd】          " + LastStageCompletedDate);
                sb.AppendLine("【Data cross transferred dd】    " + DataCrossTransferCmplDate);
                sb.AppendLine("【Follow up content (in seq.)】: ");
                sb.AppendLine(" " + FirstDetail.FollowSummary);
                if (ActionLogList.Count() > 0)
                {
                    sb.AppendLine("=================================================");
                }

                obj.Message = sb.ToString();
            }
            else if (_ProcessMode == ActionLogProcessModes.BandLace) // 2. Band Lace
            {
                //var HeaderLists = db.BandLaceHeaders.Where(p => p.ActionLogOID == _ActionLogHeader.OID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.LotID).ToList();
                var HeaderLists = db.BandLaceHeaders.Where(p => p.ActionLogID == _ActionLogHeader.ActionLogID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.LotID).ToList();
                var BandLaceObj = HeaderLists.FirstOrDefault();

                Whse = HeaderLists.FirstOrDefault().Whse;
                RefNo = HeaderLists.FirstOrDefault().AuditNo1;
                ProjectNo = FabricHelper.GetProjectFormatString(HeaderLists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");

                SuppCode = BandLaceObj.SuppCode;
                //CustCode = string.Join("/", HeaderLists.Select(p => p.ProjectNo.Substring(0, 4)).Distinct().ToArray());
                CustCode = string.Join("/", HeaderLists.
                    Select(p => (p.ProjectNo.StartsWith("EX-") ? p.ProjectNo.Substring(0, 7) : p.ProjectNo.Substring(0, 4))).Distinct().ToArray());

                SuppItemRef = string.Join("/", HeaderLists.Select(p => p.SuppItemRef).Distinct().ToArray());
                ColorCode = string.Join("/", HeaderLists.Select(p => p.ColorCode).Distinct().ToArray());
                SendDate = _ActionLogDetail.StartFollowDate.HasValue ? (_ActionLogDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                TargetCompleteDate = (_ActionLogHeader.PlanEndDate.HasValue ? (_ActionLogHeader.PlanEndDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                LastStageCompletedDate = (_ActionLogHeader.LastStageTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                //LastStageRevisedTargetCompletedDate = (_ActionLogHeader.LastStageReviseTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageReviseTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                DueDays = HeaderLists.Select(p => p.DueDay).Max().ToString();
                FWStartDate = HeaderLists.FirstOrDefault().FWStartDate.HasValue ? (HeaderLists.FirstOrDefault().FWStartDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") : "";
                ERPItemCde = string.Join("/", HeaderLists.Select(p => p.ItemCode).Distinct().ToArray());

                var SubjectCategory = db.ActionLogSubjectCategories.FirstOrDefault(p => p.Flag == "BandLace");
                string ActionLogFlag = SubjectCategory == null ? "" : SubjectCategory.ShortName + " - ";

                obj.Subject = GetSubject(Whse, BandLaceObj.ActionLogSeqNo, BandLaceObj.AuditNo1, CustCode, SuppCode, ERPItemCde, ColorCode, header.ItemNo, header.ItemSubject) + GetSeq(this._ActionLogDetail);

                //ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetails.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetailList.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                var ActionLogList = _ActionLogHeader.ActionLogDetailList.Where(p => p.OID <= _ActionLogDetail.OID && p.OID != FirstDetail.OID).OrderByDescending(p => p.FollowCount);
                foreach (var actionLog in ActionLogList)
                {
                    SendDate = actionLog.StartFollowDate.HasValue ? (actionLog.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                    sb.AppendLine("【Sender】                       " + actionLog.Sender);
                    sb.AppendLine("【dd/time】                      " + SendDate);
                    sb.AppendLine("【Follow up seq.】               " + actionLog.FollowCount);
                    sb.AppendLine("【Follow up content (in seq.)】: ");
                    sb.AppendLine(" " + actionLog.FollowSummary);
                    sb.AppendLine("=================================================");
                }

                //加入首行的记录
                SendDate = FirstDetail.StartFollowDate.HasValue ? (FirstDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                //sb.AppendLine("【Whse】                         " + Whse);
                sb.AppendLine("【Sender】                       " + FirstDetail.Sender);
                sb.AppendLine("【dd/time】                      " + SendDate);
                sb.AppendLine("【Follow up seq.】               " + FirstDetail.FollowCount);
                sb.AppendLine("【Audit# (Sole Item/Clr)】       " + RefNo);
                sb.AppendLine("【Audit due days】               " + DueDays);
                sb.AppendLine("【Proj#】                        " + ProjectNo);
                sb.AppendLine("【1st WO FW start dd】           " + FWStartDate);
                //sb.AppendLine("【Supp Cde】                     " + SuppCode);
                sb.AppendLine("【Supp Item Cde】                " + SuppItemRef);
                //sb.AppendLine("【Clr Cde】                      " + ColorCode);
                sb.AppendLine("【Cat. desc.】                   " + _ActionLogHeader.ItemSubject);
                sb.AppendLine("【Negotiation target cmpl dd】   " + TargetCompleteDate);
                sb.AppendLine("【Negotiation cmpl dd】          " + LastStageCompletedDate);
                sb.AppendLine("【Data cross transferred dd】    " + DataCrossTransferCmplDate);
                sb.AppendLine("【Follow up content (in seq.)】:           ");
                sb.AppendLine(" " + FirstDetail.FollowSummary);
                if (ActionLogList.Count() > 0)
                {
                    sb.AppendLine("=================================================");
                }

                obj.Message = sb.ToString();
            }
            else if (_ProcessMode == ActionLogProcessModes.Elastic) // 3. Elastic
            {
                //var HeaderLists = db.ElasticHeaders.Where(p => p.ActionLogOID == _ActionLogHeader.OID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.LotID).ToList();
                var HeaderLists = db.ElasticHeaders.Where(p => p.ActionLogID == _ActionLogHeader.ActionLogID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.LotID).ToList();
                var ElasticObj = HeaderLists.FirstOrDefault();

                Whse = HeaderLists.FirstOrDefault().Whse;
                RefNo = HeaderLists.FirstOrDefault().AuditNo1;
                ProjectNo = FabricHelper.GetProjectFormatString(HeaderLists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");

                SuppCode = ElasticObj.SuppCode;
                //CustCode = string.Join("/", HeaderLists.Select(p => p.ProjectNo.Substring(0, 4)).Distinct().ToArray());
                CustCode = string.Join("/", HeaderLists.
                    Select(p => (p.ProjectNo.StartsWith("EX-") ? p.ProjectNo.Substring(0, 7) : p.ProjectNo.Substring(0, 4))).Distinct().ToArray());

                SuppItemRef = string.Join("/", HeaderLists.Select(p => p.SuppItemRef).Distinct().ToArray());
                ColorCode = string.Join("/", HeaderLists.Select(p => p.ColorCode).Distinct().ToArray());
                SendDate = _ActionLogDetail.StartFollowDate.HasValue ? (_ActionLogDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                TargetCompleteDate = (_ActionLogHeader.PlanEndDate.HasValue ? (_ActionLogHeader.PlanEndDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                LastStageCompletedDate = (_ActionLogHeader.LastStageTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                //LastStageRevisedTargetCompletedDate = (_ActionLogHeader.LastStageReviseTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageReviseTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                DueDays = HeaderLists.Select(p => p.DueDay).Max().ToString();
                FWStartDate = HeaderLists.FirstOrDefault().FWStartDate.HasValue ? (HeaderLists.FirstOrDefault().FWStartDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") : "";
                ERPItemCde = string.Join("/", HeaderLists.Select(p => p.ItemCode).Distinct().ToArray());

                var SubjectCategory = db.ActionLogSubjectCategories.FirstOrDefault(p => p.Flag == "Elastic");
                string ActionLogFlag = SubjectCategory == null ? "" : SubjectCategory.ShortName + " - ";
                obj.Subject = GetSubject(Whse, ElasticObj.ActionLogSeqNo, ElasticObj.AuditNo1, CustCode, SuppCode, ERPItemCde, ColorCode, header.ItemNo, header.ItemSubject) + GetSeq(this._ActionLogDetail);

                //ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetails.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetailList.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                var ActionLogList = _ActionLogHeader.ActionLogDetailList.Where(p => p.OID <= _ActionLogDetail.OID && p.OID != FirstDetail.OID).OrderByDescending(p => p.FollowCount);
                foreach (var actionLog in ActionLogList)
                {
                    SendDate = actionLog.StartFollowDate.HasValue ? (actionLog.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                    sb.AppendLine("【Sender】                       " + actionLog.Sender);
                    sb.AppendLine("【dd/time】                      " + SendDate);
                    sb.AppendLine("【Follow up seq.】               " + actionLog.FollowCount);
                    sb.AppendLine("【Follow up content (in seq.)】: ");
                    sb.AppendLine(" " + actionLog.FollowSummary);
                    sb.AppendLine("=================================================");
                }

                //加入首行的记录
                SendDate = FirstDetail.StartFollowDate.HasValue ? (FirstDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                //sb.AppendLine("【Whse】                         " + Whse);
                sb.AppendLine("【Sender】                       " + FirstDetail.Sender);
                sb.AppendLine("【dd/time】                      " + SendDate);
                sb.AppendLine("【Follow up seq.】               " + FirstDetail.FollowCount);
                sb.AppendLine("【Audit# (Sole Item/Clr)】       " + RefNo);
                sb.AppendLine("【Audit due days】               " + DueDays);
                sb.AppendLine("【Proj#】                        " + ProjectNo);
                sb.AppendLine("【1st WO FW start dd】           " + FWStartDate);
                //sb.AppendLine("【Supp Cde】                     " + SuppCode);
                sb.AppendLine("【Supp Item Cde】                " + SuppItemRef);
                //sb.AppendLine("【Clr Cde】                      " + ColorCode);
                sb.AppendLine("【Cat. desc.】                   " + _ActionLogHeader.ItemSubject);
                sb.AppendLine("【Negotiation target cmpl dd】   " + TargetCompleteDate);
                sb.AppendLine("【Negotiation cmpl dd】          " + LastStageCompletedDate);
                sb.AppendLine("【Data cross transferred dd】    " + DataCrossTransferCmplDate);
                sb.AppendLine("【Follow up content (in seq.)】:           ");
                sb.AppendLine(" " + FirstDetail.FollowSummary);
                if (ActionLogList.Count() > 0)
                {
                    sb.AppendLine("=================================================");
                }

                obj.Message = sb.ToString();
            }
            else if (_ProcessMode == ActionLogProcessModes.Accessories) // 4. Accessory
            {
                //var HeaderLists = db.AccessoryHeaders.Where(p => p.ActionLogOID == _ActionLogHeader.OID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.ItemIDNO).ToList();
                //var AccessoryObj = db.AccessoryHeaders.FirstOrDefault(p => p.ActionLogOID == _ActionLogHeader.OID);
                var HeaderLists = db.AccessoryHeaders.Where(p => p.ActionLogID == _ActionLogHeader.ActionLogID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.ItemIDNO).ToList();
                var AccessoryObj = HeaderLists.FirstOrDefault();

                Whse = AccessoryObj.Whse;
                RefNo = AccessoryObj.AuditNo1;
                ProjectNo = FabricHelper.GetProjectFormatString(HeaderLists.Where(p => !string.IsNullOrEmpty(p.ProjectNO)).Select(p => p.ProjectNO.Trim()).ToList(), "/");
                SuppCode = AccessoryObj.SuppCode;
                //CustCode = string.Join("/", HeaderLists.Select(p => p.ProjectNO.Substring(0, 4)).Distinct().ToArray());
                CustCode = string.Join("/", HeaderLists.
                    Select(p => (p.ProjectNO.StartsWith("EX-") ? p.ProjectNO.Substring(0, 7) : p.ProjectNO.Substring(0, 4))).Distinct().ToArray());

                SuppItemRef = string.Join("/", HeaderLists.Select(p => p.SuppRef).Distinct().ToArray());
                ColorCode = string.Join("/", HeaderLists.Select(p => p.ColorCode).Distinct().ToArray());
                SendDate = _ActionLogDetail.StartFollowDate.HasValue ? (_ActionLogDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                TargetCompleteDate = (_ActionLogHeader.PlanEndDate.HasValue ? (_ActionLogHeader.PlanEndDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                LastStageCompletedDate = (_ActionLogHeader.LastStageTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                //LastStageRevisedTargetCompletedDate = (_ActionLogHeader.LastStageReviseTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageReviseTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                DueDays = HeaderLists.Select(p => p.DueDay).Max().ToString();
                FWStartDate = AccessoryObj.FWStartDate.HasValue ? (AccessoryObj.FWStartDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") : "";
                ERPItemCde = string.Join("/", HeaderLists.Select(p => p.ItemCode).Distinct().ToArray());

                var SubjectCategory = db.ActionLogSubjectCategories.FirstOrDefault(p => p.Flag == "Accessories");
                string ActionLogFlag = SubjectCategory == null ? "" : SubjectCategory.ShortName + " - ";

                obj.Subject = GetSubject(Whse, AccessoryObj.ActionLogNO, AccessoryObj.AuditNo1, CustCode, SuppCode, ERPItemCde, ColorCode, header.ItemNo, header.ItemSubject) + GetSeq(this._ActionLogDetail);

                //ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetails.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetailList.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                var ActionLogList = _ActionLogHeader.ActionLogDetailList.Where(p => p.OID <= _ActionLogDetail.OID && p.OID != FirstDetail.OID).OrderByDescending(p => p.FollowCount);
                foreach (var actionLog in ActionLogList)
                {
                    SendDate = actionLog.StartFollowDate.HasValue ? (actionLog.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                    sb.AppendLine("【Sender】                       " + actionLog.Sender);
                    sb.AppendLine("【dd/time】                      " + SendDate);
                    sb.AppendLine("【Follow up seq.】               " + actionLog.FollowCount);
                    sb.AppendLine("【Follow up content (in seq.)】: ");
                    sb.AppendLine(" " + actionLog.FollowSummary);
                    sb.AppendLine("=================================================");
                }

                //加入首行的记录
                SendDate = FirstDetail.StartFollowDate.HasValue ? (FirstDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                //sb.AppendLine("【Whse】                          " + Whse);
                sb.AppendLine("【Sender】                        " + FirstDetail.Sender);
                sb.AppendLine("【dd/time】                       " + SendDate);
                sb.AppendLine("【Follow up seq.】                " + FirstDetail.FollowCount);
                sb.AppendLine("【Audit# (Sole Item/Clr)】        " + RefNo);
                sb.AppendLine("【Audit due days】                " + DueDays);
                sb.AppendLine("【Proj#】                         " + ProjectNo);
                sb.AppendLine("【1st WO FW start dd】            " + FWStartDate);
                //sb.AppendLine("【Supp Cde】                     " + SuppCode);
                sb.AppendLine("【Supp Item Cde】                 " + SuppItemRef);
                //sb.AppendLine("【Clr Cde】                      " + ColorCode);
                sb.AppendLine("【Cat. desc.】                    " + _ActionLogHeader.ItemSubject);
                sb.AppendLine("【Negotiation target cmpl dd】    " + TargetCompleteDate);
                sb.AppendLine("【Negotiation cmpl dd】           " + LastStageCompletedDate);
                sb.AppendLine("【Data cross transferred dd】     " + DataCrossTransferCmplDate);
                sb.AppendLine("【Follow up content (in seq.)】:  ");
                sb.AppendLine(" " + FirstDetail.FollowSummary);
                if (ActionLogList.Count() > 0)
                {
                    sb.AppendLine("=================================================");
                }
                obj.Message = sb.ToString();
            }
            else if (_ProcessMode == ActionLogProcessModes.BraCup) // 5. Bra Cup
            {
                //var HeaderLists = db.BraCupHeaders.Where(p => p.ActionLogOID == _ActionLogHeader.OID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.ItemIDNO).ToList();
                //var BraCupObj = db.BraCupHeaders.FirstOrDefault(p => p.ActionLogOID == _ActionLogHeader.OID);
                var HeaderLists = db.BraCupHeaders.Where(p => p.ActionLogID == _ActionLogHeader.ActionLogID).OrderByDescending(p => p.AuditNo).ThenBy(p => p.ItemIDNO).ToList();
                var BraCupObj = HeaderLists.FirstOrDefault();

                Whse = BraCupObj.Whse;
                RefNo = BraCupObj.AuditNo1;
                ProjectNo = FabricHelper.GetProjectFormatString(HeaderLists.Where(p => !string.IsNullOrEmpty(p.ProjectNO)).Select(p => p.ProjectNO.Trim()).ToList(), "/");
                SuppCode = BraCupObj.SuppCode;

                //CustCode = string.Join("/", HeaderLists.Select(p => p.ProjectNO.Substring(0, 4)).Distinct().ToArray());
                CustCode = string.Join("/", HeaderLists.
                    Select(p => (p.ProjectNO.StartsWith("EX-") ? p.ProjectNO.Substring(0, 7) : p.ProjectNO.Substring(0, 4))).Distinct().ToArray());

                SuppItemRef = string.Join("/", HeaderLists.Select(p => p.SuppRef).Distinct().ToArray());
                ColorCode = string.Join("/", HeaderLists.Select(p => p.ColorCode).Distinct().ToArray());
                SendDate = _ActionLogDetail.StartFollowDate.HasValue ? (_ActionLogDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                TargetCompleteDate = (_ActionLogHeader.PlanEndDate.HasValue ? (_ActionLogHeader.PlanEndDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                LastStageCompletedDate = (_ActionLogHeader.LastStageTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                //LastStageRevisedTargetCompletedDate = (_ActionLogHeader.LastStageReviseTargetCompleteDate.HasValue ? (_ActionLogHeader.LastStageReviseTargetCompleteDate ?? DateTime.MinValue).ToString("MM-dd") : "");
                DueDays = HeaderLists.Select(p => p.DueDay).Max().ToString();
                FWStartDate = BraCupObj.FWStartDate.HasValue ? (BraCupObj.FWStartDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") : "";
                ERPItemCde = string.Join("/", HeaderLists.Select(p => p.ItemCode).Distinct().ToArray());

                var SubjectCategory = db.ActionLogSubjectCategories.FirstOrDefault(p => p.Flag == "BraCup");
                string ActionLogFlag = SubjectCategory == null ? "" : SubjectCategory.ShortName + " - ";
                obj.Subject = GetSubject(Whse, BraCupObj.ActionLogNO, BraCupObj.AuditNo1, CustCode, SuppCode, ERPItemCde, ColorCode, header.ItemNo, header.ItemSubject) + GetSeq(this._ActionLogDetail);

                //ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetails.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                ActionLogDetail FirstDetail = _ActionLogHeader.ActionLogDetailList.OrderBy(p => p.OID).FirstOrDefault(); //首行记录
                var ActionLogList = _ActionLogHeader.ActionLogDetailList.Where(p => p.OID <= _ActionLogDetail.OID && p.OID != FirstDetail.OID).OrderByDescending(p => p.FollowCount);
                foreach (var actionLog in ActionLogList)
                {
                    SendDate = actionLog.StartFollowDate.HasValue ? (actionLog.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                    sb.AppendLine("【Sender】                       " + actionLog.Sender);
                    sb.AppendLine("【dd/time】                      " + SendDate);
                    sb.AppendLine("【Follow up seq.】               " + actionLog.FollowCount);
                    sb.AppendLine("【Follow up content (in seq.)】: ");
                    sb.AppendLine(" " + actionLog.FollowSummary);
                    sb.AppendLine("=================================================");
                }

                //加入首行的记录
                SendDate = FirstDetail.StartFollowDate.HasValue ? (FirstDetail.StartFollowDate ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";
                //sb.AppendLine("【Whse】                         " + Whse);
                sb.AppendLine("【Sender】                       " + FirstDetail.Sender);
                sb.AppendLine("【dd/time】                      " + SendDate);
                sb.AppendLine("【Follow up seq.】               " + FirstDetail.FollowCount);
                sb.AppendLine("【Audit# (Sole Item/Clr)】       " + RefNo);
                sb.AppendLine("【Audit due days】               " + DueDays);
                sb.AppendLine("【Proj#】                        " + ProjectNo);
                sb.AppendLine("【1st WO FW start dd】           " + FWStartDate);
                //sb.AppendLine("【Supp Cde】                     " + SuppCode);
                sb.AppendLine("【Supp Item Cde】                " + SuppItemRef);
                //sb.AppendLine("【Clr Cde】                      " + ColorCode);
                sb.AppendLine("【Cat. desc.】                   " + _ActionLogHeader.ItemSubject);
                sb.AppendLine("【Negotiation target cmpl dd】   " + TargetCompleteDate);
                sb.AppendLine("【Negotiation cmpl dd】          " + LastStageCompletedDate);
                sb.AppendLine("【Data cross transferred dd】    " + DataCrossTransferCmplDate);
                sb.AppendLine("【Follow up content (in seq.)】: ");
                sb.AppendLine(" " + FirstDetail.FollowSummary);
                if (ActionLogList.Count() > 0)
                {
                    sb.AppendLine("=================================================");
                }
                obj.Message = sb.ToString();
            }

            if (_NeedActionLogSendCompletedEmail) //Last Stage Complete勾选后，自动发邮件
            {
                sb.Insert(0, "=================================================" + Environment.NewLine);
                if (_ActionLogHeader.CompleteSendEmailCount > 1) //Last stage Complete勾选发了邮件后，又取消再Complete时的情况
                {
                    obj.Subject += " - Completed (amendment)";
                }
                else
                {
                    obj.Subject += " - Completed";
                }
                sb.Insert(0, _ActionLogCompleteReason + Environment.NewLine);

                obj.Message = sb.ToString();
            }


            ////此行代码会覆盖上面各种物料生成的Subject信息，可在王生确定Subject的写法后，注释掉本行 2021-03-06
            //obj.Subject = RefNo + " " + ProjectNo + " " + SuppItemRef + " " + ColorCode + " " + _ActionLogHeader.ItemSubject;
        }

        public void SendMail(bool ANeedMessage)
        {
            //string From = "PH_PDN@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string From = "PH_IMQE@phgmt.com.hk"; //真正在后台发邮件的邮箱地址
            string Password = "phpdn";
            string SmtpServer = "svphhk01.phgmt.com.hk";  //"10.1.1.236";

            ActionLogEmail obj = this.bsActionLogEmail.Current as ActionLogEmail;
            obj.To = cbTo.Text;
            obj.cc = cbcc.Text;

            string To = string.IsNullOrEmpty(obj.To) ? "" : obj.To.Replace(" ", "");  //多個郵件中間有空格時，發郵件不成功
            string cc = string.IsNullOrEmpty(obj.cc) ? "" : obj.cc.Replace(" ", "");

            MailHelper mail = new MailHelper(From, Password, To, cc, "", obj.Subject, obj.Message, this.edtAttachment.Text, SmtpServer, 25, ANeedMessage);
            //mail.IsBodyHtml = true;
            mail.SendMail("IMQE");
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

        public string GetSeq(ActionLogDetail obj)
        {
            if (obj.FollowCount == null || _NeedActionLogSendCompletedEmail)
            {
                return "";
            }
            else if (obj.FollowCount == 1)
            {
                return " - Started";
            }
            else if (obj.FollowCount == 2)
            {
                return " - 2nd";
            }
            else if (obj.FollowCount == 3)
            {
                return " - 3rd";
            }
            else
            {
                return " - " + obj.FollowCount.ToString() + "th";
            }
        }

        public string GetSubject(string Whse, string ActionlogSeq, string AuditNo, string CustCode, string Suppcde, string Erpitemcde, string Clrcde, string Catcde, string Catdesc)
        {
            string Str = string.Format("({0}) Log#{1}, {2} ({3}), {4} / {5} / {6} / Cat. Cde {7}",
                Whse,              // 0 Whse
                //ActionlogSeq.Substring(ActionlogSeq.Length - 6, 6), //1 Action Log Seq#
                ActionlogSeq, //1 Action Log Seq#
                AuditNo,           //2 Audit#
                CustCode,          //3 CustCode
                Suppcde.Trim(),    //4 Supplier Code
                Erpitemcde,        //5 Item Code
                Clrcde,            //6 Color Code
                Catcde);           //7 Catetory Code
            return Str;
        }

        public string GetMatltype(ActionLogProcessModes _ProcessMode)
        {
            if (_ProcessMode == ActionLogProcessModes.BraCup)
            {
                return "BraCup";
            }
            else if (_ProcessMode == ActionLogProcessModes.Accessories)
            {
                return "Accessories";
            }
            else if (_ProcessMode == ActionLogProcessModes.Fabric)
            {
                return "Allover mat'l";
            }
            else if (_ProcessMode == ActionLogProcessModes.BandLace)
            {
                return "Lace";
            }
            else
            {
                return "Elastic Type";
            }
        }

    }
}