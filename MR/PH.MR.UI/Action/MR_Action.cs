using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Runtime.InteropServices;
using System.Reflection;
using System.Windows.Forms;
using PH.MR.BO;

namespace PH.MR.UI
{
   
    public class MR_ActionDataController
    {
        public MR_ActionDataController()
        {

        }
        public static List<MRCACAction> Getdata(string cono, string project)
        {
            List<MRCACAction> _enquiries_MRCACs;
            string strSQL = string.Format("exec SP_MR_COMPARE_ACTION '{0}','{1}'", cono, project);
            DataTable Ta = PH.MR.BO.DB.GetDataByPage_SQL2000(strSQL);
            _enquiries_MRCACs = TableORM.GetObjects<MRCACAction>(Ta, true);

            foreach (MRCACAction ca in _enquiries_MRCACs)
            {
                ca.IsDirty = false;
            }
            return _enquiries_MRCACs;

        }

    }
   
}
