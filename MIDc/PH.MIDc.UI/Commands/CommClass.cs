using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    //[Serializable]
    //public enum MIDc_MIDStatus
    //{
    //    //NonApproved, TMID, PMID
    //    TMID_WIP,
    //    TMID_Completed,
    //    PMID_WIP,
    //    PMID_Completed
    //}

    public class MIDc_MIDStatus
    {
        public static readonly string TMID_WIP = "TMID-WIP";
        public static readonly string TMID_Completed = "TMID-Completed";
        public static readonly string PMID_WIP = "PMID-WIP";
        public static readonly string PMID_Completed = "PMID-Completed";
    }

}
