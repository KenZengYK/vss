using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.Email.BO;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.BackEnd
{
    public class RedQNSendEMail : PH.Platform.BackEnd.BO.IServerJob
    {

        #region IServerJob Members

        public void BackEndJob(string parameters)
        {
            QNHelper.RedQNSendEMail();
        }

        #endregion
    }
}
