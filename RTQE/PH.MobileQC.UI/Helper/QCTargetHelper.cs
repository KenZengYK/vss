using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Helper
{
    public class QCTargetHelper
    {
        public List<PH.MobileQC.BO.QC_FirstPassRatioTarget> GetQCTargetDataSource(string Factory, DateTime DTFrom, DateTime DTTO)
        {
            //Xsj:区间内的
            List<PH.MobileQC.BO.QC_FirstPassRatioTarget> boList = new List<PH.MobileQC.BO.QC_FirstPassRatioTarget>();
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            boList = dcon.QC_FirstPassRatioTargets.Where(p => p.Factory == Factory
                && p.EffectFromDate.Value.Date >= DTFrom.Date && p.EffectFromDate.Value.Date <= DTTO.Date).OrderBy(p => p.EffectFromDate).ToList();

            //Xsj:特别处理区间外的开始第一个
            PH.MobileQC.BO.QC_FirstPassRatioTarget firstBO = dcon.QC_FirstPassRatioTargets.Where(p => p.Factory == Factory
                && p.EffectFromDate.Value.Date <= DTFrom.Date).OrderByDescending(p => p.EffectFromDate).FirstOrDefault();
            if (firstBO != null)
            {
                firstBO.EffectFromDate = DTFrom;
                boList.Add(firstBO);
            }
            else if (boList.Count != 0)
            {
                firstBO = boList.OrderBy(p => p.EffectFromDate).FirstOrDefault();
                boList.Add(new QC_FirstPassRatioTarget { Factory = Factory, EffectFromDate = DTFrom, TargetValue = firstBO.TargetValue });
            }

            //Xsj:结束点
            PH.MobileQC.BO.QC_FirstPassRatioTarget lastBO = null;
            if (boList.Count > 0)
            {
                lastBO = boList.OrderByDescending(p => p.EffectFromDate).FirstOrDefault();
                boList.Add(new QC_FirstPassRatioTarget { Factory = Factory, EffectFromDate = DTTO, TargetValue = lastBO.TargetValue });
            } 
            return boList;
        }
    }
}
