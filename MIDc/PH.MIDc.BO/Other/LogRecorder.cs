using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.BO
{
    public class LogRecorder
    {
        PH.MIDc.BO.MIDcDataContext midcDc
        {
            get
            {
                if (this._midcDc == null)
                {
                    this._midcDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                }
                return this._midcDc;
            }
        }
        private PH.MIDc.BO.MIDcDataContext _midcDc;


        public void  LogRecord(string LogType,string LogTxt)
        {
            try
            { 
                PH.MIDc.BO.LogMsg newLogMsg = new LogMsg();
                newLogMsg.TimeId = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                newLogMsg.LogType = LogType;
                newLogMsg.LogTxt = LogTxt;
                newLogMsg.CreateOr = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                this.midcDc.LogMsgs.InsertOnSubmit(newLogMsg);
                this.midcDc.SubmitChanges();
            }
            catch (Exception ex)
            {
            }
        }
    }
}
