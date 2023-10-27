using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using PH.MIDc.BO;
using System.Reflection;
using PH.Platform.BO;


namespace PH.MIDc.UI
{
    public class ImportDBData
    {

        private static MIDcDataContext CurMIDcDataContext
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
                return context;
            }
        }

        //private static PH.BasicInfo.BO.BasicInfoDataContext CurBasicInfoDataContext
        //{
        //    get
        //    {
        //        PH.BasicInfo.BO.BasicInfoDataContext context = ContextBuilder.CreateContext < PH.BasicInfo.BO.BasicInfoDataContext>();                
        //        return context;
        //    }
        //}

        public static MaterialType GetMaterialType(string MaterialTypeno)
        {
            MaterialType retobj = new MaterialType();

            foreach (MaterialType obj in CurMIDcDataContext.MaterialTypes)
            {
                if (obj.MaterialType1 == MaterialTypeno)
                {
                    retobj = obj;
                }
            }

            return retobj;

        }

        public static string GetMaterialCodeFromSQL2005(string suppref, string supplier)
        {
            //string sSQL = string.Format("select distinct substring(item01,1,9) as MaterialCode from [10.2.1.10\\sqlserver2005].AS400DB.dbo.PMP01 where cono01='P1' and vcat01='{0}'", suppref);
            string sSQL = string.Format("select distinct substring(item01,1,9) as MaterialCode from AS400DB.dbo.PMP01 where cono01='P1' and vcat01='{0}' and VNDR01='{1}'", suppref, supplier);
            try
            {
                object obj = Controller.SQL2005DB.GetScalar(sSQL);
                return (obj == null || Convert.IsDBNull(obj)) ? "" : Convert.ToString(obj).ToUpper();
            }
            catch
            {
                return "";
            }
        }


        public static void Insert4DItemCode2AS400()
        {
            //var aa = from a in CurMIDcDataContext.Details
            //         where a.MaterialCode != "" && a.Dimension == "4"
            //         select a;
            //string sql = "delete from ZPHLIB_AUL.MIDcTempItemCode";
            //Controller.AS400DB.Execute(sql);
            //foreach (var a in aa)
            //{
            //    sql = string.Format("insert into ZPHLIB_AUL.MIDcTempItemCode (Suppref,ItemCode) values ('{0}','{1}')", a.SuppRef, a.MaterialCode);
            //    Controller.AS400DB.Execute(sql);
            //}

//select * from  [PH.MIDc].[dbo].detail b 
//where b.Dimension=4 and supplier<>'P008-CUP'
//and not exists (select * from [PH.MIDc].[dbo].SizeDetail c where b.suppref=c.suppref)
//order by suppref

            //var aa = from a in CurMIDcDataContext.Details
            //         where a.MaterialCode != "" && a.Dimension == "4" && a.Supplier != "P008-CUP" && a.SizeDetails.Count == 0
            //         select a;
            var aa = from a in CurMIDcDataContext.Details
                     where a.MaterialCode != ""  && (a.MaterialType=="BHE"||a.MaterialType=="NHE")
                     select a;
            string sql = "delete from ZPHLIB_AUL.MIDcTempItemCode";
            Controller.AS400DB.Execute(sql);
            foreach (var a in aa)
            {
                sql = string.Format("insert into ZPHLIB_AUL.MIDcTempItemCode (Suppref,ItemCode) values ('{0}','{1}')", ConvertToSQLData(a.SuppRef), a.MaterialCode);
                Controller.AS400DB.Execute(sql);
            }

        }

        public static string ConvertToSQLData(string s)
        {
            return s.Replace("'", "''");
        }
        

    }
}
