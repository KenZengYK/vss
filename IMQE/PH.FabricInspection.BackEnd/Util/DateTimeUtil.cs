using System;
using System.Collections.Generic;
using System.Text;
using System.Globalization;

namespace PH.FabricInspection.BackEnd
{
    public class DateTimeUtil
    {
        public static DateTime StringToDateTime(string strDateTime, string strFormat, string strCultureName) {
            CultureInfo culture = new CultureInfo(strCultureName);
            DateTime dt = DateTime.ParseExact(strDateTime, strFormat, culture);
            return dt;
        }

        public static DateTime StringToDateTime(string strDateTime, string strFormat)
        {
            DateTime dt = DateTime.ParseExact(strDateTime, strFormat, System.Globalization.CultureInfo.CurrentCulture);
            return dt;
            
        }
    }
}
