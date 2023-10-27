using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.Platform.BO.Interface;

namespace PH.FabricInspection.BO
{
    public class RN_HeaderList : BaseEntityList<RN_Header, FabricInspectionDataContext>
    {
        public IEnumerable<RN_Header> GetRN_HeaderList()
        {
            //var dataList = from c in CurrentDataContext.RN_Headers select c;

            //由David改写 2021-02-23
            var dataList = from c in CurrentDataContext.RN_Headers
                           where c.Change_Date >= DateTime.Now.AddYears(-1)
                           orderby c.RN_number descending
                           select c;
            return dataList;

        }
    }
}
