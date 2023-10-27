using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MIDc.BO;

namespace PH.MIDc.BackEnd
{
    #region Xsj20110817:为完善历史多单价而添加
    public class ColorCupSizeOrderBy
    {
        public List<PH.MIDc.BO.MaterialPrice> PriceOrderByColorCupSize(PH.MIDc.BO.MaterialPriceHeader currMPH)
        {
            PH.MIDc.BO.MIDcDataContext MIDcContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            List<PH.MIDc.BO.MaterialPrice> aa = new List<PH.MIDc.BO.MaterialPrice>();
            List<PH.MIDc.BO.MaterialPrice> mPList = currMPH.MaterialPrices.ToList();
            var ColorVar = from a in MIDcContext.ColorSizeCupRanges
                           where a.Category == "ColorRange"
                           orderby a.Seq
                           select new { ColorCode = a.DataCode, ColorName = "", Desc = a.DataCode, IsRange = a.IsRange, Seq = a.Seq };

            var CupVar = from a in MIDcContext.ColorSizeCupRanges
                         where a.Category == "Cup"
                         orderby a.Seq
                         select new { CupCode = a.DataCode, CupName = "", Desc = a.DataCode, IsRange = a.IsRange, Seq = a.Seq };

            PH.MIDc.BO.Detail dtl = new Detail();
            dtl.SuppRef = currMPH.SuppRef;
            
            dtl.Supplier = currMPH.Detail.Supplier; //不加這句，下面這一句就會報錯 2017-11-20 由David 加入

            dtl.MaterialType = currMPH.Detail.MaterialType;
            PH.MIDc.BO.MaterialPriceHeader mph = new MaterialPriceHeader();
            mph.SuppRef = currMPH.SuppRef;
            mph.PriceType = currMPH.PriceType;
            mph.Detail = dtl;

            aa = (from a in mPList
                  join b in ColorVar on a.ColorRange equals b.ColorCode into c
                  from d in c.DefaultIfEmpty()
                  orderby d == null ? 0 : (d.Seq ?? 0)
                  //where a.PriceType == "Standard"
                  select new PH.MIDc.BO.MaterialPrice
                  {
                      SuppRef = a.SuppRef,
                      PriceType = a.PriceType,
                      Category = a.Category,
                      EffectFromDate = a.EffectFromDate,
                      EffectEndDate = a.EffectEndDate,
                      Price = a.Price,
                      Ratio = a.Ratio,
                      ColorRange = a.ColorRange,
                      Cup = a.Cup,
                      Size = a.Size,
                      ColorSeq = (d == null ? 0 : (d.Seq ?? 0)),
                      MaterialPriceHeader = mph
                  }).ToList<PH.MIDc.BO.MaterialPrice>();

            aa = (from a in aa
                  join b in CupVar on a.Cup equals b.CupCode into c
                  from d in c.DefaultIfEmpty()
                  orderby a.ColorSeq, (d == null ? 0 : (d.Seq ?? 0)) //
                  //where a.PriceType == "Standard"
                  select new PH.MIDc.BO.MaterialPrice
                  {
                      SuppRef = a.SuppRef,
                      PriceType = a.PriceType,
                      Category = a.Category,
                      EffectFromDate = a.EffectFromDate,
                      EffectEndDate = a.EffectEndDate,
                      Price = a.Price,
                      Ratio = a.Ratio,
                      ColorRange = a.ColorRange,
                      Cup = a.Cup,
                      Size = a.Size,
                      ColorSeq = a.ColorSeq,
                      CupSeq = (d == null ? 0 : (d.Seq ?? 0)),
                      MaterialPriceHeader = mph
                  }).ToList<PH.MIDc.BO.MaterialPrice>();

            return aa;
        }
    }
    #endregion
}
