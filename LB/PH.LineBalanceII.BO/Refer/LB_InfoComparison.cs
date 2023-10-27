using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.LineBalanceII.BO
{
    /// <summary>
    /// StyleProcedure比較類
    /// </summary>
    [Serializable]
    public class StyleProcedureComparison //zrtag: IComparison<StyleProcedure>
    {
        /// <summary>
        /// 比較類方法
        /// </summary>
        /// <param name="x">x object</param>
        /// <param name="y">y object</param>
        /// <returns></returns>
        public int Comparison(StyleProcedure x, StyleProcedure y)
        {
            if (x.XH > y.XH)
            {
                return 1;
            }
            else if (x.XH < y.XH)
            {
                return -1;
            }
            else
            {
                return 0;
            }
        }
    }
}
