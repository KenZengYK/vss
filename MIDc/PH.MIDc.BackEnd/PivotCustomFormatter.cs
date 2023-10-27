using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.BackEnd
{

    public class PivotSizeCustomFormatter : IFormatProvider, ICustomFormatter
    {
        // The GetFormat method of the IFormatProvider interface.
        // This must return an object that provides formatting services for the specified type.
        public object GetFormat(System.Type type)
        {
            return this;
        }
        // The Format method of the ICustomFormatter interface.
        // This must format the specified value according to the specified format settings.
        public string Format(string format, object arg, IFormatProvider formatProvider)
        {
            string formatValue = arg.ToString();
            string[] ss = formatValue.Split(new char[] { '|' });
            string seq = ss[0];
            string size = ss.Length > 1 ? ss[1] : seq;

            return size;

        }
    }

}
