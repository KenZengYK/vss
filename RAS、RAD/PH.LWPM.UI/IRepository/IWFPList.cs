using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;

namespace PH.LWPM.UI.IRepository
{
    interface IWFPList
    {
        void Confirm(Barbtitem barbtitem, BindingSource bindingsource, DataContext context);
    }

      public enum Barbtitem
    {
        ImmHead,
        BedHead,
        HR
    };
      interface IMFPList:IWFPList
      {
         
      }

  
   
}
