using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.BO.Helper
{
    /// <summary>
    /// 用於操作Employee類的助手類
    /// </summary>
    public partial class EmployeeHelper : BaseEntityList<Employee, BasicInfoDataContext>
    {

        /// <summary>
        /// 根據組織結構代碼取得該組織下的人員名單
        /// </summary>
        /// <param name="sOrgCode">組織結構代碼</param>
        /// <returns>該組織下的人員名單</returns>
        public IEnumerable<Employee> GetEmployeeByOrgCode(string sOrgCode)
        {
            BasicInfoDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<BasicInfoDataContext>();
            Organization so = context.Organizations.Where(c => c.OrgCode == sOrgCode).First();
            if (so != null)
            {
                long lOrgID = so.OrgID;
                var q = from s in context.OrgEmployees
                        where s.OrgID == lOrgID
                        select s;
                List<string> lstEmployees = new List<string>();
                foreach (OrgEmployee oe in q)
                {
                    lstEmployees.Add(oe.EmpID);
                }

                IEnumerable<Employee> rs = from g in context.Employees
                                           where (lstEmployees.Contains(g.EmpID) && g.Expired == false)
                                           select g;
                return rs;
            }
            else
            {
                return null;
            }
        }

    }


}
