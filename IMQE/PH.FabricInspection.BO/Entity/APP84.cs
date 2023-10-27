///============================================================================
///Builder:Yunyi
///Build Date :2008-08-15
///Description:Entity class
///============================================================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.FabricInspection.BO
{

    /// <summary>
    /// 判断因颜色原因是否Return的业务实体类
    /// </summary>
   public class APP84
    {
       //字段
       private string _Lotn84;
       private string _Ch4t84;
       //构造函数
       public APP84(string lotn84,string ch4t84)
       {
           this._Lotn84=lotn84;
           this._Ch4t84=ch4t84;

       }
       //属性
       /// <summary>
       /// ID
       /// </summary>
       public string Lotn84
       {
           get 
           {
               return this._Lotn84; 
           }
           set
           {
               this._Lotn84=value;
           }
       }
       /// <summary>
       /// Return与否
       /// </summary>
       public string Ch4t84
   {
       get
       {
           return this._Ch4t84;
       }
       set
       {
           this._Ch4t84 = value;
       }
       
       }
       
    }
}
