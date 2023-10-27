using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.LWPM.UI.IRepository;

namespace PH.LWPM.UI.Repository
{
    public  class WorkForceTrim : IWorkForceTrim
    {
      public  PH.LWPM.BO.WorkForce getWorkForceStrim(PH.LWPM.BO.WorkForce item)
        {
          
          if(item.ClsName!=null)
          {
              item.ClsName=item.ClsName.Trim();
          }
          else{
              item.ClsName="";
          }
          if(item.NameEn!=null)
          {
              item.NameEn=item.NameEn.Trim();
          }else
          {
              item.NameEn="";
          }
          if(item.NameCn!=null)
          {
              item.NameCn = item.NameCn.Trim();
          }else
          {
              item.NameCn = "";
          }
          if(item.Sex!=null)
          {
              item.Sex = item.Sex.Trim();
          }else
          {
              item.Sex = "";
          }
          if(item.Country!=null)
          {
              item.Country = item.Country.Trim();
          }else
          {
              item.Country = "";
          }
          if(item.CountryCn!=null)
          {
              item.CountryCn = item.CountryCn.Trim();
          }else
          {
              item.CountryCn = "";
          }
          if(item.Region!=null)
          {
              item.Region = item.Region.Trim();
          }else
          {
              item.Region = "";
          }
          if(item.RegionCn!=null)
          {
              item.RegionCn = item.RegionCn.Trim();
          }else
          {
              item.RegionCn = "";
          }
          if(item.Area!=null)
          {
              item.Area = item.Area.Trim();
          }
          else
          {
              item.Area = "";
          }
          if(item.AreaCn!=null)
          {
              item.AreaCn = item.AreaCn.Trim();
          }else
          {
              item.AreaCn = "";
          }
          if(item.Town!=null)
          {
              item.Town = item.Town.Trim();
          }
          else
          {
              item.Town = "";
          }
          if(item.TownCn!=null)
          {
              item.TownCn = item.TownCn.Trim();
          }
          else
          {
              item.TownCn = "";
          }
          if (item.JPDate != null)
          {
              item.JPDate = item.JPDate;
          }
          else
          {
          }
          if (item.ShortClass != null)
          {
              item.ShortClass = item.ShortClass.Trim();
          }
          else
          {
          }
          if (item.REDate != null)
          {
              item.REDate = item.REDate;
          }
          else
          {
          }
          if (item.Factory != null)
          {
            //  item.Factory = item.Factory.Trim();
          }
          else
          {
          }
          if(item.DeptName!=null)
          {
              item.DeptName = item.DeptName.Trim();
          }
          else
          {
              item.DeptName = "";
          }
          if(item.DeptNameCn!=null)
          {
              item.DeptNameCn = item.DeptNameCn.Trim();
          }else
          {
              item.DeptNameCn = "";
          }
          if(item.WFWhere!=null)
          {
              item.WFWhere = item.WFWhere.Trim();
          }else
          {
              item.WFWhere = "";
          }
          if(item.WFWhereCn!=null)
          {
              item.WFWhereCn = item.WFWhereCn.Trim();
          }
          else
          {
              item.WFWhereCn = "";
          }
          if(item.Sub_Section_FAE!=null)
          {
              item.Sub_Section_FAE = item.Sub_Section_FAE.Trim();
          }else
          {
              item.Sub_Section_FAE = "";
          }
          if(item.Sub_Section_FAECn!=null)
          {
              item.Sub_Section_FAECn = item.Sub_Section_FAECn.Trim();
          }else
          {
              item.Sub_Section_FAECn = "";
          }
          if(item.Co_Team!=null)
          {
              item.Co_Team = item.Co_Team.Trim();
          }
          else
          {
              item.Co_Team = "";
          }
          if(item.Co_TeamCn!=null)
          {
              item.Co_TeamCn = item.Co_TeamCn.Trim();
          }
          else
          {
              item.Co_TeamCn = "";
          }
          if(item.WFWhere_1!=null)
          {
              item.WFWhere_1 = item.WFWhere_1.Trim();
          }else{
              item.WFWhere_1 = "";
          }
          if(item.WFWhere_1Cn!=null)
          {
              item.WFWhere_1Cn = item.WFWhere_1Cn.Trim();
          }else
          {
              item.WFWhere_1Cn = "";
          }
          if(item.WFWhere_2!=null)
          {
              item.WFWhere_2 = item.WFWhere_2.Trim();
          }else{
              item.WFWhere_2 = "";
          }
          if(item.WFWhere_2Cn!=null)
          {
              item.WFWhere_2Cn = item.WFWhere_2Cn.Trim();
          }else
          {
              item.WFWhere_2Cn = "";
          }
          if(item.WorkForceTyEn!=null)
          {
              item.WorkForceTyEn = item.WorkForceTyEn.Trim();
          }
          else
          {
              item.WorkForceTyEn = "";
          }
          if(item.WorkForceTyCn!=null)
          {
              item.WorkForceTyCn = item.WorkForceTyCn.Trim();
          }else
          {
              item.WorkForceTyCn = "";
          }
          if(item.WorkerType!=null)
          {
              item.WorkerType = item.WorkerType.Trim();
          }else
          {
              item.WorkerType = "";
          }
          if(item.WorkerTypeCn!=null)
          {
              item.WorkerTypeCn = item.WorkerTypeCn.Trim();
          }else
          {
              item.WorkerTypeCn = "";
          }
          if(item.JobTitleEn!=null)
          {
              item.JobTitleEn = item.JobTitleEn.Trim();
          }else
          {
              item.JobTitleEn = "";
          }
          if(item.JobTitleCn!=null)
          {
              item.JobTitleCn = item.JobTitleCn.Trim();
          }else
          {
              item.JobTitleCn = "";
          }
          if(item.WFPart!=null)
          {
              item.WFPart = item.WFPart.Trim();
          }else
          {
              item.WFPart = "";
          }
          if(item.WFPartCn!=null)
          {
              item.WFPartCn = item.WFPartCn.Trim();
          }else
          {
              item.WFPartCn = "";
          }
          if(item.CrossRoleDcrp!=null)
          {
              item.CrossRoleDcrp = item.CrossRoleDcrp.Trim();
          }else
          {
              item.CrossRoleDcrp = "";
          }
          if(item.Grade!=null)
          {
              item.Grade = item.Grade.Trim();
          }
          else
          {
              item.Grade = "";
          }
          if(item.Stationed_at!=null)
          {
              item.Stationed_at = item.Stationed_at.Trim();
          }else
          {
              item.Stationed_at = "";
          }
          if(item.Standby!=null)
          {
              item.Standby = item.Standby.Trim();
          }else
          {
              item.Standby = "";
          }
          if(item.LineCode!=null)
          {
              item.LineCode = item.LineCode.Trim();
          }else
          {
              item.LineCode = "";
          }
          if(item.WFState!=null)
          {
              item.WFState = item.WFState.Trim();
          }else
          {
              item.WFState = "";
          }
          if (item.WFLevel != null)
          {
              item.WFLevel = item.WFLevel.Trim();
          }
          else
          {
              item.WFLevel = "";
          }
            return item;

        }
        public IList<PH.LWPM.BO.WorkForce> getWorkForceList(IList<PH.LWPM.BO.WorkForce> li)
      {
          
          foreach (var item in li)
          {
             
              if (item.Dept != null)
              {
                 
                  item.Dept = item.Dept.Trim();
              }
              if (item.Factory != null)
              {
                  item.Factory = item.Factory ;
              }
              if (item.DeptName != null)
              {
                  item.DeptName = item.DeptName.Trim() ;
              }
              if (item.DeptNameCn != null)
              {
                  item.DeptNameCn = item.DeptNameCn.Trim() ;
              }
              if (item.JobTitleCn != null)
              {
                  item.JobTitleCn = item.JobTitleCn.Trim() ;
              }
              if (item.JobTitleEn != null)
              {
                  item.JobTitleEn = item.JobTitleEn.Trim() ;
              }
              if (item.NameCn != null)
              {
                  item.NameCn = item.NameCn.Trim() ;
              }
              if (item.NameEn != null)
              {
                  item.NameEn = item.NameEn.Trim() ;
              }
              if (item.WFWhere != null)
              {
                  item.WFWhere = item.WFWhere.Trim() ;
              }
              if (item.WFWhereCn != null)
              {
                  item.WFWhereCn = item.WFWhereCn.Trim() ;
              }
              if (item.WFWhere_1 != null)
              {
                  item.WFWhere_1 = item.WFWhere_1.Trim() ;
              }
              if (item.WFWhere_1Cn != null)
              {
                  item.WFWhere_1Cn = item.WFWhere_1Cn.Trim() ;
              }
              if (item.LineCode != null)
              {
                  item.LineCode = item.LineCode.Trim() ;
              }
              if (item.WorkerType != null)
              {
                  item.WorkerType = item.WorkerType.Trim() ;
              }
              if (item.WorkerTypeCn != null)
              {
                  item.WorkerTypeCn = item.WorkerTypeCn.Trim() ;
              }
              if (item.WFPart != null)
              {
                  item.WFPart = item.WFPart.Trim() ;
              }
              if (item.WFPartCn != null)
              {
                  item.WFPartCn = item.WFPartCn.Trim() ;
              }
              if (item.NameCn != null)
              {
                  item.NameCn = item.NameCn.Trim();
              }
              if (item.NameEn != null)
              {
                  item.NameEn = item.NameEn.Trim();
              }
              if(item.Sex!=null)
              {
                  item.Sex=item.Sex.Trim();
              }
              if (item.Region != null)
              {
                  item.Region = item.Region.Trim();
              }
              if (item.RegionCn != null)
              {
                  item.RegionCn = item.RegionCn.Trim();
              }
              if (item.Sub_Section_FAE != null)
              {
                  item.Sub_Section_FAE = item.Sub_Section_FAE.Trim();
              }
              if (item.Sub_Section_FAECn != null)
              {
                  item.Sub_Section_FAECn = item.Sub_Section_FAECn.Trim();
              }
              if (item.TechType != null)
              {
                  item.TechType = item.TechType.Trim();
              }
              if (item.Town != null)
              {
                  item.Town = item.Town.Trim();
              }
              if (item.TownCn != null)
              {
                  item.TownCn = item.TownCn.Trim();
              }
              if (item.WFLevel != null)
              {
                  item.WFLevel = item.WFLevel.Trim();
              }
              if(item.WFWhere_2!=null)
              {
                  item.WFWhere_2=item.WFWhere_2.Trim();
              }
              if (item.WFWhere_2Cn != null)
              {
                  item.WFWhere_2Cn = item.WFWhere_2Cn.Trim();
              }
              if(item.HeadCount!=null)
              {
                  if (item.HeadCount == true)
                  {
                      item.NextLocation = "Y";
                  }
                  else
                  {
                      item.NextLocation = "N";
                  }
              }
              if (item.CrossRole != null)
              {
                  if (item.CrossRole == true)
                  {
                      item.ShortClass = "Y";
                  }
                  else
                  {
                      item.ShortClass = "N";
                  }
              }


             
          }
          return li;
      }
    }
}
