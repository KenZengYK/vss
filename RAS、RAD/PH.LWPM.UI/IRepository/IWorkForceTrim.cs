using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.LWPM.UI.IRepository
{
    interface IWorkForceTrim
    {
        PH.LWPM.BO.WorkForce getWorkForceStrim(PH.LWPM.BO.WorkForce item);

        IList<PH.LWPM.BO.WorkForce> getWorkForceList(IList<PH.LWPM.BO.WorkForce> IEable);
    }
}
