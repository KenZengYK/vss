using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Reflection;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.Misc.BO;

namespace PH.SPC.BO
{

    public class DictionaryList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string dataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == dataType
                        orderby a.DataCode
                        select a;
            return lists;
        }

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string dataType, string dataCode)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == dataType && a.DataCode == dataCode
                       select a).FirstOrDefault();
            return dic;
        }

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string dataType, string dataCode, string dataName)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == dataType && a.DataCode == dataCode && a.DataName == dataName
                       select a).FirstOrDefault();
            return dic;
        }

        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionaryMutiLang(string dataType)
        {
            var dic = GetDataDictionary(dataType);
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
            MultiLanguageList lang = new MultiLanguageList();
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dic)
            {
                string text = lang.GetDictionaryLanguageText(dataType, item.DataCode, "Description", langID);
                if (string.IsNullOrEmpty(text)) continue;

                item.Description = text;
            }
            return dic;
        }

    }

}
