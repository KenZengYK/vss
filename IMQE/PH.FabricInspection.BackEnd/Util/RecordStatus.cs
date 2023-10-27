using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.BackEnd
{
    /// <summary>
    /// Record status (RC'=ACTIVE,'RZ'=DELETE)
    /// </summary>
    public class RecordStatus
    {
        public const string RECORD_STATUS_ACTIVE = "RC";
        public const string RECORD_STATUS_DELETE = "RZ";

        public const string OK_DESCRIPTION = "OK";
        public const string DEDUCTIVE_DESCRIPTION = "ø€îµ";
        public const string REJECT_DESCRIPTION = "ÕÀ¡œ";

        public const string MOULD_TRIAL_OK_DESCRIPTION = "Ok";
        public const string MOULD_TRIAL_REJECT_DESCRIPTION = "Reject";
        public const string MOULD_TRIAL_NOMOULDTRIAL_DESCRIPTION = "No Mould Trial";

        public const string STATUS_ALL = "0";
        public const string STATUS_OK = "1";
        public const string STATUS_DEDUCTIVE = "2";
        public const string STATUS_REJECT = "3";

        public const string PROC_STATUS_OK = "1";
        public const string PROC_STATUS_REJECT = "2";
        public const string PROC_STATUS_SPECIAL_MARK = "3";
        
        public const string USE_STATUS_USED = "1";
        public const string USE_STATUS_UNUSED = "";

        public const string CONFIRMED = "1";
        public const string UNCONFIRMED = "";

        public const string Exist = "Y";
        public const string Inexistence = "N";

        public static string StatusIDToName(string id) {
            if (id == STATUS_OK) {
                return OK_DESCRIPTION;
            } else  if (id == STATUS_DEDUCTIVE) {
                return DEDUCTIVE_DESCRIPTION;
            } else  if (id == STATUS_REJECT) {
                return REJECT_DESCRIPTION;
            } else {
                return "";
            }
        }

    } 

    
}
