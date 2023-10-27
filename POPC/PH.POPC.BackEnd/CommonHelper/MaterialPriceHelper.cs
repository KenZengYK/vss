using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.POPC.BackEnd.CommonHelper
{
    public class MaterialPriceHelper
    {

        public static Dictionary<string, string> ColorRanageDic
        {
            get
            {
                if (MaterialPriceHelper._colorRanageDic == null)
                {
                    _colorRanageDic = new Dictionary<string, string>();
                    _colorRanageDic.Add("DIF", "");
                    _colorRanageDic.Add("BLK", "BLACK");
                    _colorRanageDic.Add("GRG", "GREIGE");
                    _colorRanageDic.Add("SKN", "SKIN");
                    _colorRanageDic.Add("BWN", "");
                    _colorRanageDic.Add("PRP", "");
                    _colorRanageDic.Add("RED", "");
                    _colorRanageDic.Add("AQA", "");
                    _colorRanageDic.Add("MED", "MEDIUM");
                    _colorRanageDic.Add("PNK", "");
                    _colorRanageDic.Add("GLD", "GOLD");
                    _colorRanageDic.Add("CHM", "");
                    _colorRanageDic.Add("NVY", "");
                    _colorRanageDic.Add("BSK", "");
                    _colorRanageDic.Add("TRS", "TRANSPAREN");
                    _colorRanageDic.Add("DRK", "DARK");
                    _colorRanageDic.Add("LIT", "LIGHT");
                    _colorRanageDic.Add("SLV", "SILVER");
                    _colorRanageDic.Add("YLW", "");
                    _colorRanageDic.Add("WHT", "WHITE");

                    //2TONE 
                    //CLEAR
                    //DYETOMATCH
                    //NATURE
                    //NEON
                    //OTHER
                    //OTHER1
                    //OTHER2
                    //OTHER3
                    //OTHER4
                    //OTHER5
                    //PRINT
                    //RAW
                    //STANDARD
                }
                return _colorRanageDic;
            }
        }
        public static Dictionary<string, string> _colorRanageDic = null;


        public static int GetMaterialPriceRestLength(string SuppRef, string PriceType, string Category, string Color, string Size, string Cup)
        {
            int result = 0;
            string midcColorRange = null;
            string midcSize = null;
            string midcCup = null;

            PH.MIDc.BO.MIDcDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();


            //Xsj:ColorRange
            string sqlCmdTxt = string.Format("SELECT * FROM OPENQUERY([as400],'select CLTY02 from ault4f1.app02 where PCOL02=''{0}'' and CONO02=''P1'' fetch first 1 rows only')"
                                                , Color); 
            System.Collections.Generic.IEnumerable<string> rel = dcon.ExecuteQuery<string>(sqlCmdTxt);
            if (rel.Count() > 0)
            {
                KeyValuePair<string,string> val = MaterialPriceHelper.ColorRanageDic.FirstOrDefault(p => p.Key == rel.FirstOrDefault());
                if (val.Value !=  null)
                {
                    midcColorRange = val.Value;
                }
                else
                {
                    midcColorRange = "ALL";
                }
            }

            //Xsj:Size
            if (string.IsNullOrEmpty(Size) || Size == "")
            {
                midcSize = Size;
                for (int i = 0; i < 3 - Size.Length; i++)
                {
                    midcSize = "0" + midcSize;
                }
            }
            else
            {
                midcSize = "ALL";
            }

            //Xsj:Cup
            if (!string.IsNullOrEmpty(Cup) && Cup != "")
            { 
                midcSize = Cup;
            }
            else
            {
                midcSize = "ALL";
            }


            PH.MIDc.BO.MaterialPrice bo = dcon.MaterialPrices.Where(p => p.SuppRef == SuppRef 
                                                                         && p.PriceType == PriceType 
                                                                         && p.Category == Category 
                                                                         && p.ColorRange == midcColorRange 
                                                                         && p.Size == midcSize 
                                                                         && p.Cup == midcCup).OrderByDescending(p => p.Version).FirstOrDefault();

            if (bo != null)
            {
                result = bo.RestLength ?? 0;
            }

            return result;
        }
    }
}
