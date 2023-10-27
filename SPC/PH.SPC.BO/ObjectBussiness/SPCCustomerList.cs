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
    public class SPCCustomerList : BaseEntityList<SPCCustomer, SPCDataContext>
    {
        public IEnumerable<SPCCustomer> GetSPCCustomers(string customer, int phase)
        {
            var lists = from a in CurrentDataContext.SPCCustomers
                        where a.Customer == customer
                        && a.Phase == phase
                        select a;
            return lists;
        }

        public IEnumerable<SPCCustomer> GetSPCCustomers(string sampleOrderID, string styleID, string sortID, int editionID)
        {
            var lists = from a in CurrentDataContext.SPCCustomers
                        where a.SampleOrderID == sampleOrderID
                        && a.StyleID == styleID
                        select a;
            return lists;
        }

        public IEnumerable<SPCCustomer> GetSPCCustomers(string sampleOrderID, string styleID, int phase, bool? completed)
        {
            var lists = from a in CurrentDataContext.SPCCustomers
                        where (string.IsNullOrEmpty(sampleOrderID) || a.SampleOrderID == sampleOrderID)
                        && (string.IsNullOrEmpty(styleID) || a.StyleID == styleID)
                        && a.Phase == phase
                        && (completed == null || a.Completed == completed)
                        select a;
            return lists;
        }

    }

}
