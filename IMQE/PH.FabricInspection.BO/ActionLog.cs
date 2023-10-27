using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.MIDc.BO;

namespace PH.FabricInspection.BO
{
    public partial class ActionLogHeader : BaseEntity
    {
        public string OddEvenRowFlag { get; set; }

        public IEnumerable<ActionLogDetail> ActionLogDetailList
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }
                return (CurrentDataContext as FabricInspectionDataContext).ActionLogDetails.Where(p => p.ActionLogID == ActionLogID && p.ActionLogSeqNo == ActionLogSeqNo);
            }
        }

        public string ActionLogSeqNoShow
        {
            get
            {
                if (string.IsNullOrEmpty(ActionLogSeqNo))
                {
                    return null;
                }

                if (ActionLogSeqNo.Contains("Seq"))
                {
                    return ActionLogSeqNo;
                }

                return string.IsNullOrEmpty(ActionLogSeqNo) ? "" : ActionLogSeqNo.Substring(2);
            }
        }

        public string ActionLogNoStageShow
        {
            get
            {
                if (string.IsNullOrEmpty(ActionLogSeqNoShow))
                {
                    return null;
                }
                return ActionLogSeqNoShow.TrimEnd('*');
            }
        }

        public string ActionLogIsCompletedShow
        {
            get
            {
                if (string.IsNullOrEmpty(ActionLogSeqNoShow))
                {
                    return null;
                }
                return ActionLogSeqNoShow.EndsWith("*") ? "*" : null;
            }
        }


        partial void OnIsCompletedChanged()
        {
            this.CompletedDate = (this.IsCompleted ?? false) ? DateTime.Now : new Nullable<DateTime>();

            NeedActionLogSendCompletedEmail = (this.IsCompleted ?? false);
        }

        partial void OnLastStageIsCompletedChanged()
        {
            //if (!(this.IsCompleted ?? false))
            //{
            //    this.LastStageCompletedDate = null;
            //    throw new Exception("Can't complete, 1st stage is incomplete");
            //}

            this.LastStageCompletedDate = (this.LastStageIsCompleted ?? false) ? DateTime.Now : new Nullable<DateTime>();

            //NeedActionLogSendCompletedEmail = (this.LastStageIsCompleted ?? false);
        }

        //是否需要发送Action Log Completed邮件
        public bool NeedActionLogSendCompletedEmail { get; set; }
    }

    public partial class ActionLogDetail : BaseEntity
    {
    }

    public partial class ActionLogCategory : BaseEntity
    {
    }

    public partial class ActionLogSubjectCategory : BaseEntity
    {
    }

    public partial class ActionLogCompleteReason : BaseEntity
    {
    }

}
