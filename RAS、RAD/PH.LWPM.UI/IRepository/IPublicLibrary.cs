using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;

namespace PH.LWPM.UI.IRepository
{
   interface   IPublicLibrary
    {
      string[] getItems(string type,DataContext context);
      string[] getItems(string type, string[] Code, DataContext context);

      Dictionary<string, string> GetCodeName(string type, DataContext context);

      string getSelectIndex(string type, string description, string name, DataContext context);
      string getSelectIndex(string type, LangType langtype , string name, DataContext context);
      string getSelectIndex(string type, LangType langtype, string name, string Code, DataContext context);
      void ExportXlsSummy(string excelfile, int groupcount, int rowcount);

    }
    public enum LangType{
    En,
    Chn,
    Bd
    }


     
  
}
