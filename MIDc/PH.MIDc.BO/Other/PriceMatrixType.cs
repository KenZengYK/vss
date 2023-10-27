using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.BO
{
    public enum PriceMatrixTypeEnum
    {
        LastPrice = 0,
        CurrPrice = 1,
        FuturePrice = 2
    }

    public class PriceHeaderInfo
    {
        /// <summary>
        /// 获取最近的单价MaterialHeader信息
        /// </summary>
        /// <param name="CurrDetail"></param>
        /// <returns></returns>
        public PH.MIDc.BO.MaterialPriceHeader GetLastPriceHeader(PH.MIDc.BO.Detail CurrDetail, string PriceTypeStr, string Category)
        {
            List<PH.MIDc.BO.MaterialPriceHeader> mPHList = CurrDetail.MaterialPriceHeaders.Where(p => p.PriceType == PriceTypeStr && p.Category == Category).OrderBy(p => p.EffectFromDate).ToList();
            if (mPHList.Count == 0) return null;
            PH.MIDc.BO.MaterialPriceHeader resultMPH = mPHList[0];
            int n = 0;
            for (int i = 0; i < mPHList.Count; i++)
            {
                if (mPHList[i].EffectFromDate.Date > resultMPH.EffectFromDate.Date && mPHList[i].EffectFromDate.Date <= DateTime.Now.Date)
                {
                    n = i;
                    resultMPH = mPHList[i];
                }
            }
            if (n > 0)
            {
                resultMPH = mPHList[n - 1];
            }
            else
            {
                resultMPH = null;
            }
            return resultMPH;
        }

        /// <summary>
        /// 获取当前正在使用的单价MaterialHeader信息
        /// </summary>
        /// <param name="CurrDetail"></param>
        /// <returns></returns>
        public PH.MIDc.BO.MaterialPriceHeader GetCurrPriceHeader(PH.MIDc.BO.Detail CurrDetail, string PriceTypeStr, string Category)
        {
            List<PH.MIDc.BO.MaterialPriceHeader> mPHList = CurrDetail.MaterialPriceHeaders.Where(p => p.PriceType == PriceTypeStr && p.Category == Category).OrderBy(p => p.EffectFromDate).ToList();
            if (mPHList.Count == 0) return null;
            PH.MIDc.BO.MaterialPriceHeader resultMPH = mPHList[0];
            for (int i = 0; i < mPHList.Count; i++)
            {
                if (mPHList[i].EffectFromDate.Date > resultMPH.EffectFromDate.Date && mPHList[i].EffectFromDate.Date <= DateTime.Now.Date)
                {
                    resultMPH = mPHList[i];
                }
            }
            
            return resultMPH;
        }


        /// <summary>
        /// 获取当前正在使用的单价MaterialHeader信息
        /// </summary>
        /// <param name="CurrDetail"></param>
        /// <returns></returns>
        public PH.MIDc.BO.MaterialPriceHeader GetFuturePriceHeader(PH.MIDc.BO.Detail CurrDetail, string PriceTypeStr, string Category)
        {
            List<PH.MIDc.BO.MaterialPriceHeader> mPHList = CurrDetail.MaterialPriceHeaders.Where(p => p.PriceType == PriceTypeStr && p.Category == Category).OrderBy(p => p.EffectFromDate).ToList();
            if (mPHList.Count == 0) return null;
            PH.MIDc.BO.MaterialPriceHeader resultMPH = mPHList[0];
            int n = 0;
            for (int i = 0; i < mPHList.Count; i++)
            {
                if (mPHList[i].EffectFromDate.Date > resultMPH.EffectFromDate.Date && mPHList[i].EffectFromDate.Date <= DateTime.Now.Date)
                {
                    n = i;
                    resultMPH = mPHList[i];
                }
            }
            if (n >= 0 && n < mPHList.Count - 1)
            {
                resultMPH = mPHList[n + 1];
            }
            else
            {
                resultMPH = null;
            }
            return resultMPH;
        }

    }

}
