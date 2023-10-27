using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.BackEnd.Job
{
    #region IServerJob Members
    public class JobChangeCurrencyRate : PH.Platform.BackEnd.BO.IServerJob
    {
        public void BackEndJob(string parameters)
        {
            ChangeCurrency cc = new ChangeCurrency();
            cc.ChangeCurrencyRate();
        }
    }
    #endregion
}
