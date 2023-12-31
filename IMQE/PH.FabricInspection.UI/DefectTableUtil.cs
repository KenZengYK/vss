using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using PH.FabricInspection.BO;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    /// <summary>
    /// DefectsMaster  Fabric Defects master file
    /// </summary>

    public class DefectTableUtil
    {
        public DefectTableUtil()
        {


        }

/*

        //public static List<DefectsMaster> GetAllDefects(IOoDb db)
	public static List<DefectsMaster> GetAllDefects(IOoDb db)
        {
            try
            {
                // List<DefectsMaster> tempIQC02s = DataStore.Db.GetAllObjects<DefectsMaster>();
                List<DefectsMaster> tempIQC02s = db.GetAllObjects<DefectsMaster>();

                return tempIQC02s;
            }
            catch (Exception ex)
            {
                return null;
            }

        }

        public static List<DefectsMaster> GetDefectsWithCompany(IOoDb db,string currentCompanyNo)
        {
            try
            {
                DefectsMasterCompanyQuery companyQuery = new DefectsMasterCompanyQuery(currentCompanyNo);
                List<DefectsMaster> tempIQC02s = db.GetAll<DefectsMaster>(companyQuery);
                return tempIQC02s;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
	*/

        public static int GetMaxDefectCode(PH.FabricInspection.BO.FabricInspectionDataContext paramContext, string currentCompanyNo, string strStyleCode)
        {
            try
            {
                var tempIQC02s = from p in paramContext.Fabric_Defect_Files
                               where p.Company.Equals(currentCompanyNo) &&  p.Style_Code.Equals(strStyleCode)
                               select p;

                if (tempIQC02s == null)
                {
                    return 1;
                }

                int maxNo = 0;
                foreach (Fabric_Defect_File defect in tempIQC02s)
                {
                    if (defect.Defect_Code > maxNo)
                    {
                        maxNo = (int)defect.Defect_Code;
                    }
                }
                maxNo = maxNo + 1;
                return maxNo;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load Defects \n" + ex.Message);
            }
            return 1;

        }


        public static int GetMaxSeqNoStep10(PH.FabricInspection.BO.FabricInspectionDataContext paramContext, string currentCompanyNo)
        {
            try
            {
                var tempIQC02s = from p in paramContext.Fabric_Defect_Files
                                 where p.Company.Equals(currentCompanyNo) 
                                 select p;

                if (tempIQC02s == null)
                {
                    return 10;
                }

                int maxNo = 0;
                foreach (Fabric_Defect_File defect in tempIQC02s)
                {
                    try
                    {
                        if (defect.Seq_No > maxNo)
                        {
                            maxNo = (int)defect.Seq_No;
                        }
                    }
                    catch { 
                    }
                }
                maxNo = maxNo + 10;
                return maxNo;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load Defects \n" + ex.Message);
            }
            return 1;

        }
    
    }
}
