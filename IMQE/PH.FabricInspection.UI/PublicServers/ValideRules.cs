using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    public class ValideRules
    {

        public static void IsNotBlank(string strValue, string description)
        {
            if ((strValue  == null) || (strValue.Trim().Length == 0) )
            {
                throw new Exception(String.Format("{0} value can't be blank.", description));
            }
           
        }

    }
}
