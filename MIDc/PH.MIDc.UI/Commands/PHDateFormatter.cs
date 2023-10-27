using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI 
{
    public class PHDateFormatter : IFormatProvider, ICustomFormatter
    {
        // The GetFormat method of the IFormatProvider interface.
        // This must return an object that provides formatting services for the specified type.
        public object GetFormat(Type format)
        {
            if (format == typeof(ICustomFormatter)) return this;
            else return null;
        }
        // The Format method of the ICustomFormatter interface.
        // This must format the specified value according to the specified format settings.
        public string Format(string format, object arg, IFormatProvider provider)
        {
            if (format == null || Type.GetTypeCode(arg.GetType()) != TypeCode.DateTime)
            {
                if (arg is IFormattable)
                    return ((IFormattable)arg).ToString(format, provider);
                else
                    return arg.ToString();
            }
            DateTime dt = (DateTime)arg;
            if (dt == DateTime.MinValue || dt == Convert.ToDateTime("1899/12/30"))
                return "";
            else
                return dt.ToString(format);// Convert.ToString(dt, provider);
        }
    }

}
