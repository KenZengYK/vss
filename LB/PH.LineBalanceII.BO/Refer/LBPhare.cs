using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;


namespace PH.LineBalanceII.BO
{
    /// LB階段
    /// <summary>
    /// LB階段
    /// </summary>
    public enum LBPhare
    {
        /// <summary>
        /// 未作LB
        /// </summary>
        NoneLB,
        /// <summary>
        /// 拆夾LB,
        /// </summary>
        CJLB,
        /// <summary>
        /// 優化LB
        /// </summary>
        YHLB,
        /// <summary>
        /// 二度優化
        /// </summary>
        BisYHLB,
        /// <summary>
        /// 間時拆
        /// </summary>
        JSCLB,
        /// <summary>
        /// 平准化
        /// </summary>
        PJHLB
    }
}
