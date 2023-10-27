using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class ComboBoxItem
    {
        #region ComboBoxItem

        private object _value;
        private string _text;

        public object Value
        {
            get { return _value; }
        }

        public string Text
        {
            get { return _text; }
        }

        public override string ToString()
        {
            return this._text;
        }

        public ComboBoxItem(string text, object value)
        {
            this._value = value;
            this._text = text;
        }

        #endregion

    }

    public static class Command
    {


        public static bool CompareByteEquals(object o1, object o2)
        {
            if(o1!=null)
                if(o1.ToString()=="")
                    o1=null;

            if (o2 == null && o1 == null) return true;
            if (o2 != null && o1 == null) return false;
            if (o2 == null && o1 != null) return false;

            byte[] b1 = (byte[])o1;
            byte[] b2 = (byte[])o2;

            if (b1.Length != b2.Length) return false;
 
            for (int i = 0; i < b1.Length; i++)
                if (b1[i] != b2[i]) 
                    return false; 

            return true;
        }


    
    }
}
