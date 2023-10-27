using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using PH.Platform.BO;
using PH.BasicInfo.BO;
using PH.Platform.AuthMgr.BO;

namespace PH.BasicInfo.BO
{
   public class ClsFun
    {
      public static BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
      public static Boolean GetUserRight(long menuid, string action)
      {          
          Auth_FunRight funright = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(menuid, action);
          return funright != null ? true : false;
      }
       public static decimal GetNumber(string str)
       {
           decimal result =-1;
           if (str != null && str != string.Empty)
           {
               str = Regex.Replace(str, @"[^\d.\d]", "");
               if (Regex.IsMatch(str, @"^[+-]?\d*[.]?\d*$"))
               {
                   if (str != "")
                   {
                       result = decimal.Parse(str);
                   }
               }
           }
           return result;
       }
       public static List<MaterialType> GetMaterilType()
       {
           string sql = @"select * from [PH.Midc].dbo.MaterialType";
           return  context.ExecuteQuery<MaterialType>(sql).ToList();          
       }

    }
}
