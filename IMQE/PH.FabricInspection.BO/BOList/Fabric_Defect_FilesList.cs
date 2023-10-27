using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using System.Windows.Forms;


namespace PH.FabricInspection.BO
{
    public class Fabric_Defect_FileList : BaseEntityList<Fabric_Defect_File, FabricInspectionDataContext>
    {
        public IEnumerable<Fabric_Defect_File> GetFabric_Defect_FilesList()
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            //var dataList = from c in context.Fabric_Defect_Files select c;
            var dataList = from c in CurrentDataContext.Fabric_Defect_Files select c;
            //return dataList.ToList<Fabric_Defect_File>();
            return dataList;
            

        }

        public IEnumerable<Fabric_Defect_File> GetDefectFilesListWith(string currentCompanyNo, string strStyleCode)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //this.CurrentDataContext = context;
            var dataList = from p in CurrentDataContext.Fabric_Defect_Files
                           where p.Company.Equals(currentCompanyNo) && p.Style_Code.Equals(strStyleCode)
                           orderby p.Seq_No ascending
                           select p;

            //return dataList.ToList<Fabric_Defect_File>();
            return dataList;
        }


        //public string GetMaxDefectCode(string currentCompanyNo, string strStyleCode)
        //{
        //    try
        //    {
        //        //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //        //this.CurrentDataContext = context;

        //        var tempIQC02s = from p in CurrentDataContext.Fabric_Defect_Files
        //                         where p.Company.Equals(currentCompanyNo) && p.Style_Code.Equals(strStyleCode)
        //                         select p;

        //        if (tempIQC02s == null)
        //        {
        //            return "1";
        //        }

        //        string maxNo = "1";
        //        foreach (Fabric_Defect_File defect in tempIQC02s)
        //        {
        //            //if (defect.Defect_Code > maxNo)
        //            //{
        //                maxNo = defect.Defect_Code;
        //            //}
        //        }
        //        maxNo = maxNo + "1";
        //        return maxNo;
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load Defects \n" + ex.Message);
        //    }
        //    return "1";

        //}

        public int GetMaxSeqNoStep10(string currentCompanyNo)
        {
            try
            {
                //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //this.CurrentDataContext = context;

                var tempIQC02s = from p in CurrentDataContext.Fabric_Defect_Files
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
                    catch
                    {
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
