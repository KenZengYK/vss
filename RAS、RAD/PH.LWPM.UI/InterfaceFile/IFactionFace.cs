using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;

namespace PH.LWPM.UI.InterfaceFile
{

    public interface IFactionFace
    {

        int dowork(string[] arg);
        int dowork(string arg);
        string dowfreport();
        string domcreport();


    }
    public class BaseClass
    {
        public static PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        public string[] ftys = context.BaseCodes.Where(p => p.Type == "Factory").Select(s => s.Name).ToArray();
        public string[] ClsNames = context.BaseCodes.Where(p => p.Type == "WFClass").Select(s => s.Name).ToArray();
    }
    public class MCFactionFaceSL : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => arg.Contains(p.Factory) && p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return string.Format(" exec SP_SUMMARY_WF_JOBTITLE_ENAndCN '{0}'", "SL");
        }
        public string domcreport()
        {
            return null;
        }

    }
    public class MCFactionFaceFJ : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => p.Factory == "FJ" && p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class MCFactionFaceKB : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => p.Factory == "KB" && p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class MCFactionFaceGG : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => p.Factory == "GG" && p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }

    public class MCFactionFaceCHINA : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => (new string[] { "SL", "GG", "FJ" }).Contains(p.Factory) && p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class MCFactionFaceOffshore : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => (new string[] { "KB", "CG" }).Contains(p.Factory) && p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class MCFactionFaceGROUP : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {
            return context.Machines.Where(p => p.Class != "Mc-Dead Stock Room").Count();
        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }

    //wf
    public class WFFactionFaceSL : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {

            return context.WorkForces.Where(p => p.Factory == "SL" && (arg).Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();


        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class WFFactionFaceFJ : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {

            return context.WorkForces.Where(p => p.Factory == "FJ" && arg.Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();

        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class WFFactionFaceKB : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {

            return context.WorkForces.Where(p => p.Factory == "KB" && arg.Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();

        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class WFFactionFaceGG : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {

            return context.WorkForces.Where(p => p.Factory == "GG" && arg.Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();

        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }

    public class WFFactionFaceCHINA : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {


            return context.WorkForces.Where(p => (ftys).Contains(p.Factory) && arg.Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();

        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class WFFactionFaceOffshore : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {

            return context.WorkForces.Where(p => (new string[] { "KB", "CG" }).Contains(p.Factory) && arg.Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();

        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }
    public class WFFactionFaceGROUP : BaseClass, IFactionFace
    {
        public int dowork(string arg)
        {
            return 0;
        }
        public int dowork(string[] arg)
        {

            return context.WorkForces.Where(p => p.InActive == false && arg.Contains(p.WFPart) && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();

        }
        public string dowfreport()
        {
            return null;
        }
        public string domcreport()
        {
            return null;
        }
    }

    public class ShareClass
    {
        public static int GetCount(string arg)
        {
            int count = 0;
            Dictionary<string, int> dict = new Dictionary<string, int>()
        {
            {"SL", new  PH.LWPM.UI.InterfaceFile.MCFactionFaceSL().dowork(arg)},
            {"FJ",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceFJ().dowork(arg)},
            {"KB",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceKB().dowork(arg)},
            {"GG",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceGG().dowork(arg)},
            {"CHINA",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceCHINA().dowork(arg)},
            {"Off-shore",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceOffshore().dowork(arg)},
            {"GROUP",new PH.LWPM.UI.InterfaceFile.MCFactionFaceGROUP().dowork(arg)}
        };
            string parm = arg;
            if (dict.ContainsKey(parm))
            {
                count = dict[parm];
            }
            return count;
        }
        public static int GetCountwf(string arg, string[] arg1)
        {
            int count = 0;
            Dictionary<string, int> dict = new Dictionary<string, int>()
        {
            {"SL", new  PH.LWPM.UI.InterfaceFile.WFFactionFaceSL().dowork(arg1)},
            {"FJ",new  PH.LWPM.UI.InterfaceFile.WFFactionFaceFJ().dowork(arg1)},
            {"KB",new  PH.LWPM.UI.InterfaceFile.WFFactionFaceKB().dowork(arg1)},
            {"GG",new  PH.LWPM.UI.InterfaceFile.WFFactionFaceGG().dowork(arg1)},
            {"CHINA",new  PH.LWPM.UI.InterfaceFile.WFFactionFaceCHINA().dowork(arg1)},
            {"Off-shore",new  PH.LWPM.UI.InterfaceFile.WFFactionFaceOffshore().dowork(arg1)},
            {"GROUP",new PH.LWPM.UI.InterfaceFile.WFFactionFaceGROUP().dowork(arg1)}
        };
            string parm = arg;
            if (dict.ContainsKey(parm))
            {
                count = dict[parm];
            }
            return count;
        }
        public static string GetwfSql(string arg)
        {
            string strsql = "";
            Dictionary<string, string> dict = new Dictionary<string, string>()
          {
             {"SL", new  PH.LWPM.UI.InterfaceFile.MCFactionFaceSL().dowfreport()},
            {"FJ",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceFJ().dowfreport()},
            {"KB",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceKB().dowfreport()},
            {"GG",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceGG().dowfreport()},
            {"CHINA",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceCHINA().dowfreport()},
            {"Off-shore",new  PH.LWPM.UI.InterfaceFile.MCFactionFaceOffshore().dowfreport()},
            {"GROUP",new PH.LWPM.UI.InterfaceFile.MCFactionFaceGROUP().dowfreport()}
          };
            string parm = arg;
            if (dict.ContainsKey(parm))
            {
                strsql = dict[parm];
            }
            return strsql;
        }

        public enum Enum_ftyGroup
        {
            SL = 1, FJ = 2, KB = 3, GG = 4, CHINA = 5, Offshore = 6, GROUP = 7
        }

    }

}
