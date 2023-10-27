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

    public class MultiLanguageList : BaseEntityList<PH.Platform.Lang.BO.Lang_Record, PH.Platform.Lang.BO.LangDataContext>
    {
        public PH.Platform.Lang.BO.Lang_Record GetLanguageRecord(Guid docID, string columnName, string langID)
        {
            var r = (from a in this.CurrentDataContext.Lang_Records
                     where a.DocID == docID && a.ColumnName == columnName && a.LangID == langID
                     select a).FirstOrDefault();
            return r;
        }

        public IEnumerable<PH.Platform.Lang.BO.Lang_Record> GetLanguageRecordList(Guid docID, string columnName)
        {
            var rs = from a in this.CurrentDataContext.Lang_Records
                     where a.DocID == docID && a.ColumnName == columnName
                     select a;
            return rs;
        }

        public string GetDictionaryLanguageText(string dataType, string dataCode, string columnName, string langID)
        {
            DictionaryList dicList = new DictionaryList();
            PH.Platform.Misc.BO.Misc_DataDictionary d = dicList.GetDataDictionary(dataType, dataCode);
            if (d == null) return string.Empty;

            PH.Platform.Lang.BO.Lang_Record r = (from a in this.CurrentDataContext.Lang_Records
                                                 where a.DocID == d.DocID && a.ColumnName == columnName && a.LangID == langID
                                                 select a).FirstOrDefault();
            if (r == null) return d.Description;

            return r.Text;
        }
    }
}
