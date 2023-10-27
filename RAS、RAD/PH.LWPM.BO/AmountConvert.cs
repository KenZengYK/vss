using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.LWPM.BO
{
    /// <summary>
    /// 將數字金額轉換為英文大寫
    /// </summary>
    public static class AmountConvert
    {
        static string[] tensNames = { "", " ten", " twenty", " thirty", " forty", " fifty", " sixty", " seventy", " eighty", " ninety" };

        static string[] numNames = {  "", " one",  " two",  " three",  " four",  " five",  " six",  " seven",  " eight",  " nine",  " ten",  " eleven",  " twelve",  
                                      " thirteen",  " fourteen",  " fifteen",  " sixteen",  " seventeen",  " eighteen",  " nineteen"  };

        private static string convertLessThanOneThousand(int number)
        {
            String soFar;

            if (number % 100 < 20)
            {
                soFar = numNames[number % 100];
                number /= 100;
            }
            else
            {
                soFar = numNames[number % 10];
                number /= 10;

                if (string.IsNullOrEmpty(soFar))
                {
                    soFar = tensNames[number % 10];
                }
                else
                {
                    soFar = tensNames[number % 10] + "-" + soFar.Replace(" ", "");
                }

                //if (string.IsNullOrEmpty(soFar))
                //{
                //    soFar = tensNames[number % 10] + soFar;
                //}
                //else
                //{
                //    soFar = tensNames[number % 10] + " and " + soFar;
                //}

                number /= 10;
            }
            if (number == 0)
            {
                return soFar;
            }
            return numNames[number] + " hundred" + soFar;
        }


        public static string Convert(double number)
        {
            // 0 to 999 999 999 999  
            if (number == 0) { return "zero"; }

            String snumber = System.Convert.ToString(number);

            // pad with "0"  
            //String mask = "000000000000";

            //DecimalFormat df = new DecimalFormat(mask);  
            //snumber = df.format(number);  
            snumber = number.ToString("000000000000.00");

            //double a=10.0010001;
            //a.ToString(".00");

            // XXXnnnnnnnnn   
            //int billions = int.Parse(snumber.Substring(0, 3));
            //// nnnXXXnnnnnn  
            //int millions = int.Parse(snumber.Substring(3, 6));
            //// nnnnnnXXXnnn  
            //int hundredThousands = Convert.ToInt32(snumber.Substring(6, 9));
            //// nnnnnnnnnXXX  
            //int thousands = int.Parse(snumber.Substring(9, 12));

            int billions = int.Parse(snumber.Substring(0, 3));
            // nnnXXXnnnnnn  
            int millions = int.Parse(snumber.Substring(3, 3));
            // nnnnnnXXXnnn  
            int hundredThousands = int.Parse(snumber.Substring(6, 3));
            // nnnnnnnnnXXX  
            int thousands = int.Parse(snumber.Substring(9, 3));

            //小數位
            int cents = int.Parse(snumber.Substring(13, 2));

            String tradBillions;
            switch (billions)
            {
                case 0:
                    tradBillions = "";
                    break;
                case 1:
                    tradBillions = convertLessThanOneThousand(billions) + " billion ";
                    break;
                default:
                    tradBillions = convertLessThanOneThousand(billions) + " billion ";
                    break;
            }
            String result = tradBillions;

            String tradMillions;
            switch (millions)
            {
                case 0:
                    tradMillions = "";
                    break;
                case 1:
                    tradMillions = convertLessThanOneThousand(millions) + " million ";
                    break;
                default:
                    tradMillions = convertLessThanOneThousand(millions) + " million ";
                    break;
            }

            string tradCents;
            tradCents = " and cents" + convertLessThanOneThousand(cents);

            result = result + tradMillions;

            String tradHundredThousands;
            switch (hundredThousands)
            {
                case 0:
                    tradHundredThousands = "";
                    break;
                case 1:
                    tradHundredThousands = "one thousand ";
                    break;
                default:
                    tradHundredThousands = convertLessThanOneThousand(hundredThousands) + " thousand ";
                    break;
            }
            result = result + tradHundredThousands;

            String tradThousand;
            tradThousand = convertLessThanOneThousand(thousands);
            result = result + tradThousand;

            if (cents > 0)
            {
                result += tradCents;
            }

            // remove extra spaces!  
            string Str = result.Replace("^\\s+", "").Replace("\\b\\s{2,}\\b", " ").Replace("  ", " ");
            return Str.ToUpper();
        }
    }
}