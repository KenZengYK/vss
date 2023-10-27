using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using PH.Platform.Email.BO;
namespace PH.POPC.BackEnd
{
    public class SendReport:PH.Platform.Email.BO.SendMail.ISendReport
    {
        private PH.POPC.BO.POHeader _poheader;
        public SendReport(PH.POPC.BO.POHeader poheader)
        {
            _poheader = poheader;

        }
   
        #region ISendReport Members
        public void Execute(MemoryStream stream)
        {
            try
            {
                string sql = " delete POPDF where Company={0} and PONO={1} and Version={2} and AmendmentNo={3}";
                sql += " Insert into POPDF (Company,PONO,Version,AmendmentNo,PDF) values ({0},{1},{2},{3},{4}) ";
                object[] oparams = new object[5];
                oparams[0] = _poheader.Company;
                oparams[1] = _poheader.PONO;
                oparams[2] = _poheader.Version;
                oparams[3] = _poheader.AmendmentNo;
                oparams[4] = stream.ToArray();
                POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1800;
                context.ExecuteCommand(sql, oparams);
            }
            catch
            { }
        }

        #endregion
    }
}
