using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    public class FloatUtil
    {
        public static bool IsFloat(string src)
        {
            try
            {
                Convert.ToDecimal(src);
                return true;
            }
            catch {
                return false;
            }
            
        }
        
    }
}
