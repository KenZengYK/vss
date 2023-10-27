using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MobileQC.UI.Helper
{
    public class QCRoleHelper
    {

        public List<PH.MobileQC.BO.QC_QCRole> GetQCRoleDataSource()
        {
            List<PH.MobileQC.BO.QC_QCRole> boList = new List<PH.MobileQC.BO.QC_QCRole>();
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            boList=dcon.QC_QCRoles.Where(p => p.AppName == "NLMobileQESystem").OrderBy(p=>p.OrderSeq).ToList();
            return boList;
        }
    }
}
