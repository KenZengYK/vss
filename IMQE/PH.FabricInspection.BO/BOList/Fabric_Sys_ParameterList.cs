using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.Platform.BO.Interface;

namespace PH.FabricInspection.BO
{
    public class Fabric_Sys_ParameterList : BaseEntityList<Fabric_Sys_Parameter, FabricInspectionDataContext>
    {
        public IEnumerable<Fabric_Sys_Parameter> GetFabric_Sys_ParameterList()
        {
           //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from c in CurrentDataContext.Fabric_Sys_Parameters select c;
            //return dataList.ToList<Fabric_Sys_Parameter>();
            return dataList;

        }

        public IEnumerable<Fabric_Sys_Parameter> GetFabric_Sys_ParameterListWith(string strParameter_Type)
        {
            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from p in CurrentDataContext.Fabric_Sys_Parameters
                               where p.Parameter_Type.ToUpper().StartsWith(strParameter_Type.ToUpper())
                               select p;
            //return dataList.ToList<Fabric_Sys_Parameter>();
            return dataList;

        }
    }
}
