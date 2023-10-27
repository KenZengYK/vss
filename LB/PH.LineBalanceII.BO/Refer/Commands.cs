using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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

    public static class Commands
    {

        public static LBPhare ConvertLBPhare(string str)
        {

            if (str == "NoneLB")
            {
                return LBPhare.NoneLB;
            }
            else if (str == "CJLB")
            {
                return LBPhare.CJLB;
            }
            else if (str == "YHLB")
            {
                return LBPhare.YHLB;
            }
            else if (str == "BisYHLB")
            {
                return LBPhare.BisYHLB;
            }
            else if (str == "JSCLB")
            {
                return LBPhare.JSCLB;
            }
            else //if (str = "PJHLB")
            {
                return LBPhare.PJHLB;
            }
           
        }

    }
}
