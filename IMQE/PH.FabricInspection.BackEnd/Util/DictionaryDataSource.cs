using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;

namespace PH.FabricInspection.BackEnd

{
    public class DictionaryDataSource : ArrayList, DevExpress.Data.IDataDictionary
    {
        string DevExpress.Data.IDataDictionary.GetDataSourceDisplayName()
        {
            return "RNInfo";
        }
        string DevExpress.Data.IDataDictionary.GetObjectDisplayName(string dataMember)
        {
            return dataMember = String.Format("{0}", dataMember);
        }
    }
}
