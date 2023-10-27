using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.LWPM.UI.PO
{
    ///// <summary>
    ///// PO 類型 
    ///// </summary>
    //public enum POTypes
    //{
    //    /// <summary>
    //    /// Machinery PO
    //    /// </summary>
    //    Machinery = 0,
    //    /// <summary>
    //    /// Equiqment PO
    //    /// </summary>
    //    Equiqment = 1
    //}

    /// <summary>
    /// PO報表類型
    /// </summary>
    public enum POReportTypes
    {
        /// <summary>
        /// PY向Eternal下PO
        /// </summary>
        PYToEteranl = 0,
        /// <summary>
        /// Eternal向PHHK下PO
        /// </summary>
        EternalToPHHK = 1,
        /// <summary>
        /// PHHK向Vendor下PO
        /// </summary>
        PHHKToVendor = 2,

        /// <summary>
        /// 普通PO
        /// </summary>
        GeneralPO = 3
    }

    /// <summary>
    /// 報表語言
    /// </summary>
    public enum ReportLanguages
    {
        /// <summary>
        /// 英文
        /// </summary>
        English = 0,
        /// <summary>
        /// 中文
        /// </summary>
        Chinese = 1
    }

}
