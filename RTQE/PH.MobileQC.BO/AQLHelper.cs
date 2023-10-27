using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;

namespace PH.MobileQC.BO
{
    /// <summary>
    /// AQL幫助者
    /// </summary>
    public class AQLHelper
    {
        /// <summary>
        /// 按AQL的Level得到需要檢查的數量
        /// </summary>
        /// <param name="ADB">MobileQCDataContext實例</param>
        /// <param name="AExamQty">檢查的數量</param>
        /// <param name="AAQLLevel">AQL Level</param>
        /// <returns></returns>
        public static int GetAcceptQty(MobileQCDataContext ADB, int AExamQty, AQLLevels AAQLLevel)
        {
            if (ADB == null)
            {
                ADB = ContextBuilder.CreateContext<MobileQCDataContext>();
            }

            var obj = ADB.QC_AuditQtyRanges.Where(p => p.Flag == "FinalCheck" && p.Qty1 <= AExamQty && p.Qty2 >= AExamQty).FirstOrDefault();
            if (obj == null) return 0;

            int AcceptQty = 0;
            switch (AAQLLevel)
            {
                case AQLLevels.AQL10:
                    AcceptQty = obj.AQty_10 ?? 0;
                    break;

                case AQLLevels.AQL15:
                    AcceptQty = obj.AQty_15 ?? 0;
                    break;

                case AQLLevels.AQL25:
                    AcceptQty = obj.AQty ?? 0;
                    break;

                case AQLLevels.AQL40:
                    AcceptQty = obj.MQty ?? 0;
                    break;

                case AQLLevels.AQL65:
                    AcceptQty = obj.AQty_65 ?? 0;
                    break;

                case AQLLevels.AQL065:
                    AcceptQty = obj.AQty_065 ?? 0;
                    break;

                default:
                    AcceptQty = 0;
                    break;
            }

            return AcceptQty;

        }
    }

    /// <summary>
    /// AQL Level
    /// </summary>
    public enum AQLLevels
    {
        AQL10 = 0,
        AQL15 = 1,
        AQL25 = 2,
        AQL40 = 3,
        AQL65 = 4,
        AQL065 = 5,
    }
}
