using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.BO.Helper
{
    /// <summary>
    /// 操作Organization類的助手類
    /// </summary>
    public partial class OrganizationHelper : BaseEntityList<Organization, BasicInfoDataContext>
    {

        /// <summary>
        /// 根據用戶代碼取得其所在的組織代碼
        /// </summary>
        /// <param name="sUserID">用戶代碼</param>
        /// <returns>組織結構記錄</returns>
        public IEnumerable<Organization> GetOrganizationByUserID(string sUserID)
        {
            //BasicInfoDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            IEnumerable<EmployeeUser> sm = this.CurrentDataContext.EmployeeUsers.Where(c => c.UserID == sUserID);
            if (sm != null)
            {
                //取得雇員ID
                List<string> lstEmpID = new List<string>();
                foreach (EmployeeUser cs in sm)
                {
                    lstEmpID.Add(cs.EmpID);
                }

                //取得組織結構ID
                List<long> lstOrgID = new List<long>();
                IEnumerable<OrgEmployee> rs = from g in this.CurrentDataContext.OrgEmployees
                                              where (lstEmpID.Contains(g.EmpID))
                                              select g;
                foreach (OrgEmployee oe in rs)
                {
                    lstOrgID.Add(oe.OrgID);
                }

                IEnumerable<Organization> q = from ss in this.CurrentDataContext.Organizations
                                              where (lstOrgID.Contains(ss.OrgID))
                                              select ss;
                return q;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 獲取用戶所在廠區(SL,HK,TH,FJ)
        /// </summary>
        /// <param name="userid"></param>
        /// <returns></returns>
        public string GetFactoryByUser(string userid)
        {
            //先獲取用戶的OrgID
           // string sqlstr="select top 1  b.orgid from  dbo.EmployeeUser a, dbo.OrgEmployee b where a.empid=b.empid and a.userid=@userid ";
            string sfactory = "";
            var p = from orgemp in this.CurrentDataContext.OrgEmployees                  
                    join empuser in this.CurrentDataContext.EmployeeUsers 
                    on orgemp.EmpID equals empuser.EmpID
                    where empuser.UserID == userid                    
                    select orgemp.OrgID;
            if (p == null || p.Count()==0)
                return sfactory;

            long orgid =p.FirstOrDefault();
            List<Organization> orglist = GetAllParentOrg(orgid);
            var m = from bb in orglist where bb.OrgType == "Factory" select bb;
            
            if (m != null&&m.Count()>0)
            {
                sfactory = m.FirstOrDefault().OrgCode;
            }
            return sfactory;
           
        }

        public List<Organization> GetAllParentOrg(long orgid)
        {
            bool find = true;
            long curorgid = orgid;
            Organization curorgparent=null;
            List<Organization> parentlist=new List<Organization>();

            while (find)
            {
                curorgparent = GetParent(curorgid);
                if (curorgparent == null)
                    find = false;
                else
                {
                    parentlist.Add(curorgparent);
                    curorgid = curorgparent.PID.GetValueOrDefault();
                }
            }

            return parentlist;
        }

        private Organization GetParent(long orgchild)
        {
            var p = from aa in this.CurrentDataContext.Organizations where aa.OrgID == orgchild select aa;
            if (p == null)
                return null;
            else
                return p.FirstOrDefault();  
        }

    }
}
