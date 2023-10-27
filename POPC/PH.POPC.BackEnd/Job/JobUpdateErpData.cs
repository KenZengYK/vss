using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.POPC.BO;
namespace PH.POPC.BackEnd.Job
{
    class JobUpdateErpData : PH.Platform.BackEnd.BO.IServerJob
    {
        #region IServerJob Members

        public void BackEndJob(string parameters)
        {
            System.Diagnostics.Trace.WriteLine("Update Begin");
            ColorShade.UpdateErpData();
            System.Diagnostics.Trace.WriteLine("Update Begin");
        }

        #endregion
    }
}
