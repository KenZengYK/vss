

namespace PH.LineBalanceII.BO
{

    using System;
    using System.Collections.Generic;
    using System.Text;
    using System.Collections;
    using System.Windows.Forms;
    using System.Data.Linq;
    using System.Data;
    using System.Linq;
    using PH.Platform.BO;
    using PH.Platform.BO.Interface;

    public partial class LineBalanceIIDataContext : System.Data.Linq.DataContext

    {

        public string GetParamVaue(string AParamName)
        {

            string SqlStr = "select ParamValue from [PH.LWPM.WP]..Param where ParamName = '{0}'";
            SqlStr = string.Format(SqlStr, AParamName);
            DataTable dt= this.ExecuteDataTable(SqlStr, "");

            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["ParamValue"].ToString();
            }

            return "";
        }

        public List<OpsSpecSheetMaster> GetOpsSpecSheetMasterList(string AKHKH, string APHKH, int AEdition, string AZH)
        {
            List<OpsSpecSheetMaster> lists = new List<OpsSpecSheetMaster>();
            var AllDataList = this.StyleProcedures.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).OrderBy(p => p.XH ?? 0);
            foreach (var obj in AllDataList.Where(p => (p.GZW ?? 0) == 1))
            {
                OpsSpecSheetMaster master = new OpsSpecSheetMaster();

                //插入基本信息
                master.CustStyle = obj.KHKH;
                master.PHStyle = obj.PHKH;
                master.Line = "";
                master.Cust = "";
                master.AL_GZWCount = 0;
                master.AL_GZWCount = 0;

                //插入機修校車要求
                master.GuageThrow = 0;
                master.GuageThrowUnit = "";
                master.StitchDensity = "";
                master.StitchDensityUnit = "";

                //插入工作位當前這條工序
                master.OpsSpecSheetOperationDetailList.Add(new OpsSpecSheetOperationDetail()
                {
                    MachineCode = obj.YCDM,
                    MachineType = obj.YCType,
                    OperationCode = obj.WorkSN,
                    OperationName = obj.WorkName,
                    OperationSeqNo = obj.XH ?? 0
                });

                //插入與當前工作位夾過的工序
                var GZWOtherOpsList = AllDataList.Where(p => p.JFlag == obj.JFlag && p.GZW == 0);
                foreach (var o in GZWOtherOpsList)
                {
                    master.OpsSpecSheetOperationDetailList.Add(new OpsSpecSheetOperationDetail()
                    {
                        MachineCode = o.YCDM,
                        MachineType = o.YCType,
                        OperationCode = o.WorkSN,
                        OperationName = o.WorkName,
                        OperationSeqNo = o.XH ?? 0
                    });
                }

                //插入工序重點要求
                //master.OpsImportantRequirementList.Add();


                lists.Add(master);
            }

            return lists;
        }


        #region  Report_Text1.2
        //public List<OpsSpecSheetMaster> GetOpsSpecSheetMasterList2(string AKHKH, string APHKH, int AEdition, string AZH)
        //{

        //    List<OpsSpecSheetMaster> lists = new List<OpsSpecSheetMaster>();
        //    var AllDataList = this.StyleProcedures.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).OrderBy(p => p.XH ?? 0);
        //    foreach (var obj in AllDataList.Where(p => (p.GZW ?? 0) == 1))
        //    {
        //        OpsSpecSheetMaster master = new OpsSpecSheetMaster();

        //        StyleMaster master_l = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH);
        //        master_l.CalSummary();
        //        //


        //        //插入基本信息
        //        master.CustStyle = obj.KHKH;
        //        master.PHStyle = GetPH(obj.PHKH);

        //        master.Line = "";
        //        master.Cust = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).CustNo;
        //        master.AL_GZWCount = master_l.CJGZW1;
        //        master.GZWCount = this.StyleProcedure_Fs.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + this.StyleProcedure_Es.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + Convert.ToInt32(string.IsNullOrEmpty(master_l.CJGZW) ? 0 : master_l.CJGZW1);

        //        //處理Top3工序
        //        master.HW1 = obj.YCDM + "\r" + obj.YCType;
        //        master.OptNo1 = obj.SN.ToString();
        //        master.OptDes1 = obj.WorkName;
        //        master.CFYQCode = master.OptNo1;
        //        master.ECFYQCode = master.OptNo1;
        //        DataTable tb_Operation = GetOperationDes(obj.KHKH, obj.PHKH, obj.Edition, obj.ZH);
        //        if (tb_Operation.Rows.Count == 1)
        //        {
        //            master.HW2 = tb_Operation.Rows[0]["YCDM"].ToString() + "\r" + tb_Operation.Rows[0]["YCType"].ToString();
        //            master.OptNo2 = tb_Operation.Rows[0]["SN"].ToString();
        //            master.OptDes2 = tb_Operation.Rows[0]["WorkName"].ToString();

        //            DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[0]["PHKH"].ToString(), tb_Operation.Rows[0]["WorkSN"].ToString());
        //            if (tb_Mech1.Rows.Count > 0)
        //            {
        //                master.ECFYQ2 = tb_Mech1.Rows[0]["ECFYQ"].ToString();
        //                master.ECFYQCode2 = tb_Operation.Rows[0]["SN"].ToString();
        //                master.CFYQ1 = tb_Mech1.Rows[0]["CFYQ"].ToString();
        //                master.CFYQCode1 = tb_Operation.Rows[0]["SN"].ToString();
        //            }

        //        }
        //        else if (tb_Operation.Rows.Count == 2)
        //        {
        //            master.HW2 = tb_Operation.Rows[0]["YCDM"].ToString() + "\r" + tb_Operation.Rows[0]["YCType"].ToString();
        //            master.OptNo2 = tb_Operation.Rows[0]["SN"].ToString();
        //            master.OptDes2 = tb_Operation.Rows[0]["WorkName"].ToString();
        //            master.HW3 = tb_Operation.Rows[1]["YCDM"].ToString() + "\r" + tb_Operation.Rows[1]["YCType"].ToString();
        //            master.OptNo3 = tb_Operation.Rows[1]["SN"].ToString();
        //            master.OptDes3 = tb_Operation.Rows[1]["WorkName"].ToString();

        //            DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[0]["PHKH"].ToString(), tb_Operation.Rows[0]["WorkSN"].ToString());
        //            if (tb_Mech1.Rows.Count > 0)
        //            {
        //                master.ECFYQ2 = tb_Mech1.Rows[0]["ECFYQ"].ToString();
        //                master.ECFYQCode2 = tb_Operation.Rows[0]["SN"].ToString();
        //                master.CFYQ1 = tb_Mech1.Rows[0]["CFYQ"].ToString();
        //                master.CFYQCode1 = tb_Operation.Rows[0]["SN"].ToString();
        //            }

        //            DataTable tb_Mech2 = GetMechanic(tb_Operation.Rows[1]["PHKH"].ToString(), tb_Operation.Rows[1]["WorkSN"].ToString());
        //            if (tb_Mech1.Rows.Count > 0)
        //            {
        //                master.ECFYQ3 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
        //                master.ECFYQCode3 = tb_Operation.Rows[1]["SN"].ToString();
        //                master.CFYQ2 = tb_Mech2.Rows[0]["CFYQ"].ToString();
        //                master.CFYQCode2 = tb_Operation.Rows[1]["SN"].ToString();
        //            }


        //        }
        //        else
        //        {
        //            master.HW2 = ""; master.OptNo2 = ""; master.OptDes2 = "";
        //            master.HW3 = ""; master.OptNo3 = ""; master.OptDes3 = "";
        //        }

        //        //處理Unit
        //        DataTable tb_Unit = GetUnit(obj.PHKH);
        //        if (tb_Unit.Rows.Count > 0)
        //        {
        //            //if (tb_Unit.Rows[0]["Lenz"].ToString() == "MM" || tb_Unit.Rows[0]["Lenz"].ToString() == "2.5CM" || tb_Unit.Rows[0]["Lenz"].ToString() == "3CM")
        //            //{
        //            //    master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
        //            //    master.GuageThrowUnit = "mm"; master.SeamAllowanceUnit = "mm"; master.TypeOfSAUnit = "mm";
        //            //}
        //            //else 
        //            if (tb_Unit.Rows[0]["Lenz"].ToString() == "INCH")
        //            {
        //                master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
        //                master.GuageThrowUnit = "INCH"; master.SeamAllowanceUnit = "INCH"; master.TypeOfSAUnit = "INCH";
        //            }
        //            else
        //            {
        //                master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
        //                master.GuageThrowUnit = "MM"; master.SeamAllowanceUnit = "MM"; master.TypeOfSAUnit = "MM";
        //            }
        //        }
        //        else { master.StitchDensityUnit = ""; master.GuageThrowUnit = ""; master.SeamAllowanceUnit = ""; master.TypeOfSAUnit = ""; }

        //        DataTable tb_Mech = GetMechanic(obj.PHKH, obj.WorkSN);
        //        if (tb_Mech.Rows.Count > 0)
        //        {
        //            for (int i = 0; i < tb_Mech.Rows.Count; i++)
        //            {
        //                if (!string.IsNullOrEmpty(tb_Mech.Rows[i]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[i]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[i]["GUID_PLATE"].ToString()))
        //                {
        //                    master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech.Rows[i]["ZF"].ToString()) ? "" : tb_Mech.Rows[i]["ZF"].ToString();
        //                    master.StitchDensity = tb_Mech.Rows[i]["ZF"].ToString();
        //                    master.NeedleNoUnit = tb_Mech.Rows[i]["ZH"].ToString();
        //                    master.NeedleThreads = tb_Mech.Rows[i]["MX"].ToString();
        //                    master.BobbinLopper = tb_Mech.Rows[i]["DX"].ToString();
        //                    master.GuidingPlate = tb_Mech.Rows[i]["GUID_PLATE"].ToString();
        //                    master.FeedingDevice = tb_Mech.Rows[i]["YCFJ"].ToString();
        //                    master.ThroatPlateSet = tb_Mech.Rows[i]["TPS_Q"].ToString();
        //                    master.ThroatPlateSetCode = tb_Mech.Rows[i]["TPS_C"].ToString();
        //                    master.SeamAllowance = tb_Mech.Rows[i]["ZKCC"].ToString();
        //                    master.TypeOfSAName = tb_Mech.Rows[i]["SEAM_T"].ToString();
        //                    master.TypeOfSANumb = tb_Mech.Rows[i]["SEAM_W"].ToString();
        //                    master.ECFYQ = tb_Mech.Rows[i]["ECFyq"].ToString();

        //                    master.CFYQ = tb_Mech.Rows[i]["CFYQ"].ToString();


        //                }
        //            }
        //        }

        //        ////插入機修校車要求
        //        //master.GuageThrow = 0;
        //        //master.GuageThrowUnit = "";
        //        //master.StitchDensity = "";
        //        //master.StitchDensityUnit = "";

        //        //插入工作位當前這條工序
        //        //master.OpsSpecSheetOperationDetailList.Add(new OpsSpecSheetOperationDetail()
        //        //{
        //        //    MachineCode = obj.YCDM,
        //        //    MachineType = obj.YCType,
        //        //    OperationCode = obj.WorkSN,
        //        //    OperationName = obj.WorkName,
        //        //    OperationSeqNo = obj.XH ?? 0
        //        //});

        //        ////插入與當前工作位夾過的工序
        //        //var GZWOtherOpsList = AllDataList.Where(p => p.JFlag == obj.JFlag && p.GZW == 0);
        //        //foreach (var o in GZWOtherOpsList)
        //        //{
        //        //    master.OpsSpecSheetOperationDetailList.Add(new OpsSpecSheetOperationDetail()
        //        //    {
        //        //        MachineCode = o.YCDM,
        //        //        MachineType = o.YCType,
        //        //        OperationCode = o.WorkSN,
        //        //        OperationName = o.WorkName,
        //        //        OperationSeqNo = o.XH ?? 0
        //        //    });
        //        //}

        //        //插入工序重點要求
        //        //master.OpsImportantRequirementList.Add();


        //        lists.Add(master);
        //    }

        //    return lists;
        //}
        //public List<OpsSpecSheetMaster> GetOpsSpecSheetMasterList3(string AKHKH, string APHKH, int AEdition, string AZH)
        //{                       


        //    DataTable tb_Operation = GetOperationDes(AKHKH, APHKH, AEdition, AZH);
        //    List<OpsSpecSheetMaster> lists = new List<OpsSpecSheetMaster>();
        //    if (tb_Operation.Rows.Count > 0)
        //    {
        //        for (int i = 0; i < tb_Operation.Rows.Count; i++) 
        //        {                   
        //            OpsSpecSheetMaster master = new OpsSpecSheetMaster();

        //            if (tb_Operation.Rows[i]["GZW"].ToString() == "1") 
        //            {
        //                /*處理工序*/
        //                master.CustStyle = tb_Operation.Rows[i]["KHKH"].ToString();
        //                master.PHStyle =GetPH(tb_Operation.Rows[i]["PHKH"].ToString());
        //                master.Cust = master.Cust = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).CustNo;
        //                StyleMaster master_l = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH);
        //                master_l.CalSummary();
        //                master.AL_GZWCount = master_l.CJGZW1;
        //                master.GZWCount = this.StyleProcedure_Fs.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + this.StyleProcedure_Es.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + Convert.ToInt32(string.IsNullOrEmpty(master_l.CJGZW) ? 0 : master_l.CJGZW1);
        //                master.HW1 = tb_Operation.Rows[i]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i]["YCType"].ToString();
        //                master.OptNo1 = tb_Operation.Rows[i]["SN"].ToString();
        //                master.OptDes1 = tb_Operation.Rows[i]["WorkName"].ToString();

        //                /*處理機修與操作員*/
        //                DataTable tb_Mech = GetMechanic(tb_Operation.Rows[i]["PHKH"].ToString(), tb_Operation.Rows[i]["WorkSN"].ToString());
        //                if (tb_Mech.Rows.Count > 0)
        //                {
        //                    if (!string.IsNullOrEmpty(tb_Mech.Rows[0]["ECFYQ"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["CFYQ"].ToString()))
        //                    {
        //                        master.ECFYQ = tb_Mech.Rows[0]["ECFYQ"].ToString();
        //                        master.CFYQ = tb_Mech.Rows[0]["CFYQ"].ToString();
        //                        master.CFYQCode = master.OptNo1;
        //                        master.ECFYQCode = master.OptNo1;
        //                    }

        //                    if (!string.IsNullOrEmpty(tb_Mech.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["GUID_PLATE"].ToString()))
        //                    {
        //                        master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech.Rows[0]["ZF"].ToString()) ? "" : tb_Mech.Rows[0]["ZF"].ToString();
        //                        master.StitchDensity = tb_Mech.Rows[0]["ZF"].ToString();
        //                        master.NeedleNoUnit = tb_Mech.Rows[0]["ZH"].ToString();
        //                        master.NeedleThreads = tb_Mech.Rows[0]["MX"].ToString();
        //                        master.BobbinLopper = tb_Mech.Rows[0]["DX"].ToString();
        //                        master.GuidingPlate = tb_Mech.Rows[0]["GUID_PLATE"].ToString();
        //                        master.FeedingDevice = tb_Mech.Rows[0]["YCFJ"].ToString();
        //                        master.ThroatPlateSet = tb_Mech.Rows[0]["TPS_Q"].ToString();
        //                        master.ThroatPlateSetCode = tb_Mech.Rows[0]["TPS_C"].ToString();
        //                        master.SeamAllowance = tb_Mech.Rows[0]["ZKCC"].ToString();
        //                        master.TypeOfSAName = tb_Mech.Rows[0]["SEAM_T"].ToString();
        //                        master.TypeOfSANumb = tb_Mech.Rows[0]["SEAM_W"].ToString();
        //                    }

        //                }


        //                /*處理Unit*/
        //                DataTable tb_Unit = GetUnit(tb_Operation.Rows[i]["PHKH"].ToString());
        //                if (tb_Unit.Rows.Count > 0)
        //                {

        //                    if (tb_Unit.Rows[0]["Lenz"].ToString() == "INCH")
        //                    {
        //                        master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
        //                        master.GuageThrowUnit = "INCH"; master.SeamAllowanceUnit = "INCH"; master.TypeOfSAUnit = "INCH";
        //                    }
        //                    else
        //                    {
        //                        master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
        //                        master.GuageThrowUnit = "MM"; master.SeamAllowanceUnit = "MM"; master.TypeOfSAUnit = "MM";
        //                    }
        //                }


        //                if (i + 1 < tb_Operation.Rows.Count) 
        //            {                   
        //                 if (tb_Operation.Rows[i + 1]["GZW"].ToString() == "0") 
        //                {
        //                    master.HW2 = tb_Operation.Rows[i + 1]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i + 1]["YCType"].ToString();
        //                    master.OptNo2 = tb_Operation.Rows[i + 1]["SN"].ToString();
        //                    master.OptDes2 = tb_Operation.Rows[i + 1]["WorkName"].ToString();

        //                    DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[i+1]["PHKH"].ToString(), tb_Operation.Rows[i+1]["WorkSN"].ToString());
        //                if (tb_Mech1.Rows.Count > 0)
        //                {
        //                    if (!string.IsNullOrEmpty(master.ECFYQ) || !string.IsNullOrEmpty(master.CFYQ))
        //                    {
        //                        master.ECFYQ2 = tb_Mech1.Rows[0]["ECFYQ"].ToString();
        //                        master.ECFYQCode2 = master.OptNo2;
        //                        master.CFYQ1 = tb_Mech1.Rows[0]["CFYQ"].ToString();
        //                        master.CFYQCode1 = master.OptNo2;
        //                    }
        //                    else 
        //                    {
        //                        master.ECFYQ = tb_Mech1.Rows[0]["ECFYQ"].ToString();
        //                        master.ECFYQCode = master.OptNo2;
        //                        master.CFYQ = tb_Mech1.Rows[0]["CFYQ"].ToString();
        //                        master.CFYQCode = master.OptNo2;
        //                    }
        //                }

        //                i++;
        //                if (i + 1 < tb_Operation.Rows.Count)
        //                {
        //                    if (tb_Operation.Rows[i + 1]["GZW"].ToString() == "0")
        //                 {
        //                    master.HW3 = tb_Operation.Rows[i + 1]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i + 1]["YCType"].ToString();
        //                    master.OptNo3 = tb_Operation.Rows[i + 1]["SN"].ToString();
        //                    master.OptDes3 = tb_Operation.Rows[i + 1]["WorkName"].ToString();

        //                    DataTable tb_Mech2 = GetMechanic(tb_Operation.Rows[i + 1]["PHKH"].ToString(), tb_Operation.Rows[i + 1]["WorkSN"].ToString());
        //                    if (tb_Mech2.Rows.Count > 0)
        //                    {
        //                        if ((!string.IsNullOrEmpty(master.ECFYQ) || !string.IsNullOrEmpty(master.CFYQ)) && (!string.IsNullOrEmpty(master.ECFYQ2) || !string.IsNullOrEmpty(master.CFYQ1)))
        //                        {
        //                            master.ECFYQ3 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
        //                            master.ECFYQCode3 = master.OptNo3;
        //                            master.CFYQ2 = tb_Mech2.Rows[0]["CFYQ"].ToString();
        //                            master.CFYQCode2 = master.OptNo3;
        //                        }
        //                        else if ((!string.IsNullOrEmpty(master.ECFYQ) || !string.IsNullOrEmpty(master.CFYQ)) && (string.IsNullOrEmpty(master.ECFYQ2) || string.IsNullOrEmpty(master.CFYQ1)))
        //                        {
        //                            master.ECFYQ2 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
        //                            master.ECFYQCode2 = master.OptNo3;
        //                            master.CFYQ1 = tb_Mech2.Rows[0]["CFYQ"].ToString();
        //                            master.CFYQCode1 = master.OptNo3;
        //                        }
        //                        else 
        //                        {
        //                            master.ECFYQ = tb_Mech2.Rows[0]["ECFYQ"].ToString();
        //                            master.ECFYQCode = master.OptNo3;
        //                            master.CFYQ = tb_Mech2.Rows[0]["CFYQ"].ToString();
        //                            master.CFYQCode = master.OptNo3;
        //                        }
        //                    }

        //                    i++;
        //                   }
        //                }
        //            }
        //          }
        //        }


        //            lists.Add(master);
        //        }
        //    }

        //    return lists;
        //}
        #endregion

        #region StyMasterReport

        public List<OpsSpecSheetMaster> GetOpsSpecSheetMasterList1(string AKHKH, string APHKH, int AEdition, string AZH, string Mark)
        {


            DataTable tb_Operation = GetOperationDes(AKHKH, APHKH, AEdition, AZH, Mark);
            List<OpsSpecSheetMaster> lists = new List<OpsSpecSheetMaster>();
            if (tb_Operation.Rows.Count > 0)
            {
                for (int i = 0; i < tb_Operation.Rows.Count; i++)
                {
                    OpsSpecSheetMaster master = new OpsSpecSheetMaster();
                    if (tb_Operation.Rows[i]["GZW_Floater"].ToString() == "1")/*處理支援區*/
                    {
                        /*處理工序*/
                        master.CustStyle = tb_Operation.Rows[i]["KHKH"].ToString();
                        master.PHStyle = GetPH(tb_Operation.Rows[i]["PHKH"].ToString());
                        master.Cust = master.Cust = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).CustNo;
                        StyleMaster master_l = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH);
                        master_l.CalSummary();
                        master.AL_GZWCount = master_l.CJGZW1;
                        master.GZWCount = this.StyleProcedure_Fs.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + this.StyleProcedure_Es.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + Convert.ToInt32(string.IsNullOrEmpty(master_l.CJGZW) ? 0 : master_l.CJGZW1);
                        master.HW1 = tb_Operation.Rows[i]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i]["YCType"].ToString();
                        master.OptNo1 = tb_Operation.Rows[i]["SN"].ToString();
                        master.OptDes1 = tb_Operation.Rows[i]["WorkName"].ToString();

                        /*處理機修與操作員*/
                        DataTable tb_Mech = GetMechanic(tb_Operation.Rows[i]["KHKH"].ToString(), tb_Operation.Rows[i]["WorkSN"].ToString());
                        if (tb_Mech.Rows.Count > 0)
                        {
                            master.OptDes_Eng1 = tb_Mech.Rows[0]["egxm"].ToString();
                            if ((tb_Mech.Rows[0]["ECFYQ"].ToString() != "" && tb_Mech.Rows[0]["ECFYQ"].ToString() != null) || (tb_Mech.Rows[0]["CFYQ"].ToString() != null && tb_Mech.Rows[0]["CFYQ"].ToString() != ""))
                            {
                                master.ECFYQ = tb_Mech.Rows[0]["ECFYQ"].ToString();
                                master.CFYQ = tb_Mech.Rows[0]["CFYQ"].ToString();
                                master.CFYQCode = master.OptNo1;
                                master.ECFYQCode = master.OptNo1;
                            }
                            else 
                            {
                                master.ECFYQ = "No key requirement at present.";
                                master.CFYQ = "暫時無重點要求";
                                master.CFYQCode = master.OptNo1;
                                master.ECFYQCode = master.OptNo1;
                            }

                            if (!string.IsNullOrEmpty(tb_Mech.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["GUID_PLATE"].ToString()))
                            {
                                master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech.Rows[0]["ZF"].ToString()) ? "" : tb_Mech.Rows[0]["ZF"].ToString();
                                master.StitchDensity = tb_Mech.Rows[0]["YZJB"].ToString();
                                master.NeedleNoUnit = tb_Mech.Rows[0]["ZH"].ToString();
                                master.ZJ = tb_Mech.Rows[0]["zj"].ToString();
                                master.NeedleThreads = tb_Mech.Rows[0]["MX"].ToString();
                                master.BobbinLopper = tb_Mech.Rows[0]["DX"].ToString();
                                master.GuidingPlate = tb_Mech.Rows[0]["GUID_PLATE"].ToString();
                                master.FeedingDevice = tb_Mech.Rows[0]["YCFJ"].ToString();
                                master.ThroatPlateSet = tb_Mech.Rows[0]["TPS_Q"].ToString();
                                master.ThroatPlateSetCode = tb_Mech.Rows[0]["TPS_C"].ToString();
                                master.SeamAllowance = tb_Mech.Rows[0]["ZKCC"].ToString();
                                master.TypeOfSAName = tb_Mech.Rows[0]["SEAM_T"].ToString();
                                master.TypeOfSANumb = tb_Mech.Rows[0]["SEAM_W"].ToString();
                                DataTable tb_Needle = GetNeedleNo(tb_Operation.Rows[i]["YCType"].ToString());
                                if (tb_Needle.Rows.Count > 0)
                                {
                                    master.NeedleNo = tb_Needle.Rows[0]["Code"].ToString();
                                }
                            }

                        }


                        /*處理Unit*/
                        DataTable tb_Unit = GetUnit(tb_Operation.Rows[i]["KHKH"].ToString());
                        if (tb_Unit.Rows.Count > 0)
                        {

                            if (tb_Unit.Rows[0]["Lenz"].ToString() == "INCH")
                            {
                                master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                master.GuageThrowUnit = "INCH"; master.SeamAllowanceUnit = "INCH"; master.TypeOfSAUnit = "INCH";
                            }
                            else
                            {
                                master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                master.GuageThrowUnit = "MM"; master.SeamAllowanceUnit = "MM"; master.TypeOfSAUnit = "MM";
                            }
                        }
                    }
                    else //處理一樣夾位
                    {
                        if (i + 1 < tb_Operation.Rows.Count)
                        {
                            /*處理首個工序*/
                            if (tb_Operation.Rows[i]["JFlag"].ToString() == tb_Operation.Rows[i + 1]["JFlag"].ToString() && !string.IsNullOrEmpty(tb_Operation.Rows[i]["JFlag"].ToString()) && !string.IsNullOrEmpty(tb_Operation.Rows[i + 1]["JFlag"].ToString()))
                            {
                                if ((tb_Operation.Rows[i]["GZW"].ToString() == "1" || tb_Operation.Rows[i]["GZW"].ToString() == "0"))
                                {
                                    /*處理工序*/
                                    master.CustStyle = tb_Operation.Rows[i]["KHKH"].ToString();
                                    master.PHStyle = GetPH(tb_Operation.Rows[i]["PHKH"].ToString());
                                    master.Cust = master.Cust = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).CustNo;
                                    StyleMaster master_l = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH);
                                    master_l.CalSummary();
                                    master.AL_GZWCount = master_l.CJGZW1;
                                    master.GZWCount = this.StyleProcedure_Fs.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + this.StyleProcedure_Es.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + Convert.ToInt32(string.IsNullOrEmpty(master_l.CJGZW) ? 0 : master_l.CJGZW1);
                                    master.HW1 = tb_Operation.Rows[i]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i]["YCType"].ToString();
                                    master.OptNo1 = tb_Operation.Rows[i]["SN"].ToString();
                                    master.OptDes1 = tb_Operation.Rows[i]["WorkName"].ToString();

                                    /*處理機修與操作員*/
                                    DataTable tb_Mech = GetMechanic(tb_Operation.Rows[i]["KHKH"].ToString(), tb_Operation.Rows[i]["WorkSN"].ToString());
                                    if (tb_Mech.Rows.Count > 0)
                                    {
                                        master.OptDes_Eng1 = tb_Mech.Rows[0]["egxm"].ToString();


                                        if ((tb_Mech.Rows[0]["ECFYQ"].ToString() != "" && tb_Mech.Rows[0]["ECFYQ"].ToString() != null) || (tb_Mech.Rows[0]["CFYQ"].ToString() != null && tb_Mech.Rows[0]["CFYQ"].ToString() != ""))
                                        {
                                            master.ECFYQ = tb_Mech.Rows[0]["ECFYQ"].ToString();
                                            master.CFYQ = tb_Mech.Rows[0]["CFYQ"].ToString();
                                            master.CFYQCode = master.OptNo1;
                                            master.ECFYQCode = master.OptNo1;
                                        }

                                         else 
                                         {
                                             DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[i + 1]["KHKH"].ToString(), tb_Operation.Rows[i + 1]["WorkSN"].ToString());

                                             master.ECFYQ = "No key requirement at present.";
                                             master.CFYQ = "暫時無重點要求";
                                             //master.ECFYQ = tb_Mech1.Rows[0]["ECFYQ"].ToString();
                                             //master.CFYQ = tb_Mech1.Rows[0]["CFYQ"].ToString();
                                             master.CFYQCode = master.OptNo1;
                                             master.ECFYQCode = master.OptNo1;
                                         }

                                       
                                    }
                                    /*數據中針線/梭線/傍位之一存在數值，則取該數據*/
                                    if (tb_Mech.Rows.Count > 0 && (!string.IsNullOrEmpty(tb_Mech.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["GUID_PLATE"].ToString())))
                                    {
                                       
                                        if (!string.IsNullOrEmpty(tb_Mech.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["GUID_PLATE"].ToString()))
                                        {
                                            master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech.Rows[0]["ZF"].ToString()) ? "" : tb_Mech.Rows[0]["ZF"].ToString();
                                            master.StitchDensity = tb_Mech.Rows[0]["YZJB"].ToString();
                                            master.ZJ = tb_Mech.Rows[0]["zj"].ToString();
                                            master.NeedleNoUnit = tb_Mech.Rows[0]["ZH"].ToString();
                                            master.NeedleThreads = tb_Mech.Rows[0]["MX"].ToString();
                                            master.BobbinLopper = tb_Mech.Rows[0]["DX"].ToString();
                                            master.GuidingPlate = tb_Mech.Rows[0]["GUID_PLATE"].ToString();
                                            master.FeedingDevice = tb_Mech.Rows[0]["YCFJ"].ToString();
                                            master.ThroatPlateSet = tb_Mech.Rows[0]["TPS_Q"].ToString();
                                            master.ThroatPlateSetCode = tb_Mech.Rows[0]["TPS_C"].ToString();
                                            master.SeamAllowance = tb_Mech.Rows[0]["ZKCC"].ToString();
                                            master.TypeOfSAName = tb_Mech.Rows[0]["SEAM_T"].ToString();
                                            master.TypeOfSANumb = tb_Mech.Rows[0]["SEAM_W"].ToString();

                                            DataTable tb_Needle = GetNeedleNo(tb_Operation.Rows[i]["YCType"].ToString());
                                            if (tb_Needle.Rows.Count > 0)
                                            {
                                                master.NeedleNo = tb_Needle.Rows[0]["Code"].ToString();
                                            }
                                        }

                                    }
                                    else
                                    {
                                        /*獲取第二個工序的機修*/
                                        DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[i + 1]["KHKH"].ToString(), tb_Operation.Rows[i + 1]["WorkSN"].ToString());

                                        if (tb_Mech1.Rows.Count > 0 && (!string.IsNullOrEmpty(tb_Mech1.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech1.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech1.Rows[0]["GUID_PLATE"].ToString())))
                                        {
                                            

                                            if (!string.IsNullOrEmpty(tb_Mech1.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech1.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech1.Rows[0]["GUID_PLATE"].ToString()))
                                            {
                                                master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech1.Rows[0]["ZF"].ToString()) ? "" : tb_Mech1.Rows[0]["ZF"].ToString();
                                                master.ZJ = tb_Mech.Rows[0]["zj"].ToString();
                                                master.StitchDensity = tb_Mech1.Rows[0]["YZJB"].ToString();
                                                master.NeedleNoUnit = tb_Mech1.Rows[0]["ZH"].ToString();
                                                master.NeedleThreads = tb_Mech1.Rows[0]["MX"].ToString();
                                                master.BobbinLopper = tb_Mech1.Rows[0]["DX"].ToString();
                                                master.GuidingPlate = tb_Mech1.Rows[0]["GUID_PLATE"].ToString();
                                                master.FeedingDevice = tb_Mech1.Rows[0]["YCFJ"].ToString();
                                                master.ThroatPlateSet = tb_Mech1.Rows[0]["TPS_Q"].ToString();
                                                master.ThroatPlateSetCode = tb_Mech1.Rows[0]["TPS_C"].ToString();
                                                master.SeamAllowance = tb_Mech1.Rows[0]["ZKCC"].ToString();
                                                master.TypeOfSAName = tb_Mech1.Rows[0]["SEAM_T"].ToString();
                                                master.TypeOfSANumb = tb_Mech1.Rows[0]["SEAM_W"].ToString();
                                                DataTable tb_Needle = GetNeedleNo(tb_Operation.Rows[i + 1]["YCType"].ToString());
                                                if (tb_Needle.Rows.Count > 0)
                                                {
                                                    master.NeedleNo = tb_Needle.Rows[0]["Code"].ToString();
                                                }
                                            }

                                        }

                                    }


                                    /*處理Unit*/
                                    DataTable tb_Unit = GetUnit(tb_Operation.Rows[i]["KHKH"].ToString());
                                    if (tb_Unit.Rows.Count > 0)
                                    {

                                        if (tb_Unit.Rows[0]["Lenz"].ToString() == "INCH")
                                        {
                                            master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                            master.GuageThrowUnit = "INCH"; master.SeamAllowanceUnit = "INCH"; master.TypeOfSAUnit = "INCH";
                                        }
                                        else
                                        {
                                            master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                            master.GuageThrowUnit = "MM"; master.SeamAllowanceUnit = "MM"; master.TypeOfSAUnit = "MM";
                                        }
                                    }

                                    /*處理第二個工序*/
                                    if (i + 1 < tb_Operation.Rows.Count)
                                    {
                                        if (tb_Operation.Rows[i + 1]["GZW"].ToString() == "0" || (tb_Operation.Rows[i + 1]["GZW"].ToString() == "1" && tb_Operation.Rows[i]["GZW"].ToString() == "0"))
                                        {
                                            master.HW2 = tb_Operation.Rows[i + 1]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i + 1]["YCType"].ToString();
                                            master.OptNo2 = tb_Operation.Rows[i + 1]["SN"].ToString();
                                            master.OptDes2 = tb_Operation.Rows[i + 1]["WorkName"].ToString();

                                            DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[i + 1]["KHKH"].ToString(), tb_Operation.Rows[i + 1]["WorkSN"].ToString());
                                            if (tb_Mech1.Rows.Count > 0)
                                            {
                                                master.OptDes_Eng2 = tb_Mech1.Rows[0]["egxm"].ToString();

                                                if ((tb_Mech1.Rows[0]["ECFYQ"].ToString() != "" && tb_Mech1.Rows[0]["ECFYQ"].ToString() != null) || (tb_Mech1.Rows[0]["CFYQ"].ToString() != null && tb_Mech1.Rows[0]["CFYQ"].ToString() != ""))
                                                {
                                                    master.ECFYQ2 = tb_Mech1.Rows[0]["ECFYQ"].ToString();
                                                    master.ECFYQCode2 = master.OptNo2;
                                                    master.CFYQ1 = tb_Mech1.Rows[0]["CFYQ"].ToString();
                                                    master.CFYQCode1 = master.OptNo2;
                                                }
                                                else
                                                {
                                                    master.ECFYQ2 = "No key requirement at present.";
                                                    master.ECFYQCode2 = master.OptNo2;
                                                    master.CFYQ1 = "暫時無重點要求";
                                                    master.CFYQCode1 = master.OptNo2;
                                                    //master.ECFYQ = tb_Mech1.Rows[0]["ECFYQ"].ToString();
                                                    //master.ECFYQCode = master.OptNo2;
                                                    //master.CFYQ = tb_Mech1.Rows[0]["CFYQ"].ToString();
                                                    //master.CFYQCode = master.OptNo2;
                                                }
                                            }

                                            i++;
                                            if (i + 1 < tb_Operation.Rows.Count)
                                            {
                                                /*處理第三個工序*/
                                                if ((tb_Operation.Rows[i + 1]["GZW"].ToString() == "0" || (tb_Operation.Rows[i + 1]["GZW"].ToString() == "1" && tb_Operation.Rows[i]["GZW"].ToString() == "0" && tb_Operation.Rows[i - 1]["GZW"].ToString() == "0")) && (tb_Operation.Rows[i + 1]["JFlag"].ToString() == tb_Operation.Rows[i]["JFlag"].ToString()) && !string.IsNullOrEmpty(tb_Operation.Rows[i]["JFlag"].ToString()) && !string.IsNullOrEmpty(tb_Operation.Rows[i + 1]["JFlag"].ToString()))
                                                {
                                                    master.HW3 = tb_Operation.Rows[i + 1]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i + 1]["YCType"].ToString();
                                                    master.OptNo3 = tb_Operation.Rows[i + 1]["SN"].ToString();
                                                    master.OptDes3 = tb_Operation.Rows[i + 1]["WorkName"].ToString();

                                                    DataTable tb_Mech2 = GetMechanic(tb_Operation.Rows[i + 1]["KHKH"].ToString(), tb_Operation.Rows[i + 1]["WorkSN"].ToString());
                                                    if (tb_Mech2.Rows.Count > 0)
                                                    {

                                                        master.OptDes_Eng3 = tb_Mech2.Rows[0]["egxm"].ToString();
                                                        if ((tb_Mech2.Rows[0]["ECFYQ"].ToString() != "" && tb_Mech2.Rows[0]["ECFYQ"].ToString() != null) || (tb_Mech2.Rows[0]["CFYQ"].ToString() != null && tb_Mech2.Rows[0]["CFYQ"].ToString() != ""))
                                                        {
                                                            master.ECFYQ3 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
                                                            master.ECFYQCode3 = master.OptNo3;
                                                            master.CFYQ2 = tb_Mech2.Rows[0]["CFYQ"].ToString();
                                                            master.CFYQCode2 = master.OptNo3;
                                                        }
                                                        else
                                                        {
                                                            master.ECFYQ3 = "No key requirement at present.";
                                                            master.ECFYQCode3 = master.OptNo3;
                                                            master.CFYQ2 = "暫時無重點要求";
                                                            master.CFYQCode2 = master.OptNo3;
                                                            //master.ECFYQ = tb_Mech2.Rows[0]["ECFYQ"].ToString();
                                                            //master.ECFYQCode = master.OptNo3;
                                                            //master.CFYQ = tb_Mech2.Rows[0]["CFYQ"].ToString();
                                                            //master.CFYQCode = master.OptNo3;
                                                        }
                                                        //if ((string.IsNullOrEmpty(master.ECFYQ2) || string.IsNullOrEmpty(master.CFYQ1)))
                                                        //{
                                                        //    master.ECFYQ2 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
                                                        //    master.ECFYQCode2 = master.OptNo3;
                                                        //    master.CFYQ1 = tb_Mech2.Rows[0]["CFYQ"].ToString();
                                                        //    master.CFYQCode1 = master.OptNo3;
                                                        //}
                                                        //else 
                                                        //{
                                                        //    master.ECFYQ2 = "No key requirement at present.";
                                                        //    master.ECFYQCode2 = master.OptNo3;
                                                        //    master.CFYQ1 = "暫時無重點要求";
                                                        //    master.CFYQCode1 = master.OptNo3;
                                                        //}
                                                       

                                                        //if ((!string.IsNullOrEmpty(master.ECFYQ) || !string.IsNullOrEmpty(master.CFYQ)) && (!string.IsNullOrEmpty(master.ECFYQ2) || !string.IsNullOrEmpty(master.CFYQ1)))
                                                        //{
                                                        //    master.ECFYQ3 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
                                                        //    master.ECFYQCode3 = master.OptNo3;
                                                        //    master.CFYQ2 = tb_Mech2.Rows[0]["CFYQ"].ToString();
                                                        //    master.CFYQCode2 = master.OptNo3;
                                                        //}
                                                        //else if ((!string.IsNullOrEmpty(master.ECFYQ) || !string.IsNullOrEmpty(master.CFYQ)) && (string.IsNullOrEmpty(master.ECFYQ2) || string.IsNullOrEmpty(master.CFYQ1)))
                                                        //{
                                                        //    master.ECFYQ2 = tb_Mech2.Rows[0]["ECFYQ"].ToString();
                                                        //    master.ECFYQCode2 = master.OptNo3;
                                                        //    master.CFYQ1 = tb_Mech2.Rows[0]["CFYQ"].ToString();
                                                        //    master.CFYQCode1 = master.OptNo3;
                                                        //}
                                                        //else
                                                        //{
                                                        //    master.ECFYQ3 = "No key requirement at present.";
                                                        //    master.ECFYQCode3 = master.OptNo3;
                                                        //    master.CFYQ2 = "暫時無重點要求";
                                                        //    master.CFYQCode2 = master.OptNo3;
                                                        //    //master.ECFYQ = tb_Mech2.Rows[0]["ECFYQ"].ToString();
                                                        //    //master.ECFYQCode = master.OptNo3;
                                                        //    //master.CFYQ = tb_Mech2.Rows[0]["CFYQ"].ToString();
                                                        //    //master.CFYQCode = master.OptNo3;
                                                        //}
                                                    }

                                                    i++;
                                                }
                                            }
                                        }
                                        /*處理夾位1-1-0，同時0與1種類相同的情況*/
                                        else if (i + 2 < tb_Operation.Rows.Count && (tb_Operation.Rows[i + 2]["GZW"].ToString() == "0" && tb_Operation.Rows[i]["GZW"].ToString() == "1") && (tb_Operation.Rows[i + 2]["JFlag"].ToString() == tb_Operation.Rows[i]["JFlag"].ToString()) && (tb_Operation.Rows[i + 2]["YCDM"].ToString() == tb_Operation.Rows[i]["YCDM"].ToString()))
                                        {

                                            master.HW2 = tb_Operation.Rows[i + 2]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i + 1]["YCType"].ToString();
                                            master.OptNo2 = tb_Operation.Rows[i + 2]["SN"].ToString();
                                            master.OptDes2 = tb_Operation.Rows[i + 2]["WorkName"].ToString();

                                            DataTable tb_Mech1 = GetMechanic(tb_Operation.Rows[i + 2]["KHKH"].ToString(), tb_Operation.Rows[i + 2]["WorkSN"].ToString());
                                            if (tb_Mech1.Rows.Count > 0)
                                            {
                                                master.OptDes_Eng2 = tb_Mech1.Rows[0]["egxm"].ToString();
                                                if ((tb_Mech1.Rows[0]["ECFYQ"].ToString() != "" && tb_Mech1.Rows[0]["ECFYQ"].ToString() != null) || (tb_Mech1.Rows[0]["CFYQ"].ToString() != null && tb_Mech1.Rows[0]["CFYQ"].ToString() != ""))
                                                {
                                                    master.ECFYQ2 = tb_Mech1.Rows[0]["ECFYQ"].ToString();
                                                    master.ECFYQCode2 = master.OptNo2;
                                                    master.CFYQ1 = tb_Mech1.Rows[0]["CFYQ"].ToString();
                                                    master.CFYQCode1 = master.OptNo2;
                                                }
                                                else
                                                {

                                                    master.ECFYQ2 = "No key requirement at present.";
                                                    master.ECFYQCode2 = master.OptNo2;
                                                    master.CFYQ1 = "暫時無重點要求";
                                                    master.CFYQCode1 = master.OptNo2;
                                                    //master.ECFYQ = tb_Mech1.Rows[0]["ECFYQ"].ToString();
                                                    //master.ECFYQCode = master.OptNo2;
                                                    //master.CFYQ = tb_Mech1.Rows[0]["CFYQ"].ToString();
                                                    //master.CFYQCode = master.OptNo2;
                                                }
                                            }
                                        }

                                    }
                                }
                            }
                            else
                            {
                                if (tb_Operation.Rows[i]["GZW"].ToString() != "0")
                                /*處理Jflag夾位爲NUll,也是就是單獨的工序*/
                                {
                                    master.CustStyle = tb_Operation.Rows[i]["KHKH"].ToString();
                                    master.PHStyle = GetPH(tb_Operation.Rows[i]["PHKH"].ToString());
                                    master.Cust = master.Cust = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).CustNo;
                                    StyleMaster master_l = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH);
                                    master_l.CalSummary();
                                    master.AL_GZWCount = master_l.CJGZW1;
                                    master.GZWCount = this.StyleProcedure_Fs.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + this.StyleProcedure_Es.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + Convert.ToInt32(string.IsNullOrEmpty(master_l.CJGZW) ? 0 : master_l.CJGZW1);
                                    master.HW1 = tb_Operation.Rows[i]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i]["YCType"].ToString();
                                    master.OptNo1 = tb_Operation.Rows[i]["SN"].ToString();
                                    master.OptDes1 = tb_Operation.Rows[i]["WorkName"].ToString();

                                    /*處理機修與操作員*/
                                    DataTable tb_Mech = GetMechanic(tb_Operation.Rows[i]["KHKH"].ToString(), tb_Operation.Rows[i]["WorkSN"].ToString());
                                    if (tb_Mech.Rows.Count > 0)
                                    {

                                        master.OptDes_Eng1 = tb_Mech.Rows[0]["egxm"].ToString();
                                        if ((tb_Mech.Rows[0]["ECFYQ"].ToString().Replace(" ", "") != "" && !string.IsNullOrEmpty(tb_Mech.Rows[0]["ECFYQ"].ToString())) || (!string.IsNullOrEmpty(tb_Mech.Rows[0]["CFYQ"].ToString()) && tb_Mech.Rows[0]["CFYQ"].ToString().Replace(" ", "") != ""))
                                        {
                                            master.ECFYQ = tb_Mech.Rows[0]["ECFYQ"].ToString();
                                            master.CFYQ = tb_Mech.Rows[0]["CFYQ"].ToString();
                                            master.CFYQCode = master.OptNo1;
                                            master.ECFYQCode = master.OptNo1;
                                        }
                                        else
                                        {
                                            master.ECFYQ = "No key requirement at present.";
                                            master.CFYQ = "暫時無重點要求";
                                            master.CFYQCode = master.OptNo1;
                                            master.ECFYQCode = master.OptNo1;
                                        }


                                        if (!string.IsNullOrEmpty(tb_Mech.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["GUID_PLATE"].ToString()))
                                        {
                                            master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech.Rows[0]["ZF"].ToString()) ? "" : tb_Mech.Rows[0]["ZF"].ToString();
                                            master.ZJ = tb_Mech.Rows[0]["zj"].ToString();
                                            master.StitchDensity = tb_Mech.Rows[0]["YZJB"].ToString();
                                            master.NeedleNoUnit = tb_Mech.Rows[0]["ZH"].ToString();
                                            master.NeedleThreads = tb_Mech.Rows[0]["MX"].ToString();
                                            master.BobbinLopper = tb_Mech.Rows[0]["DX"].ToString();
                                            master.GuidingPlate = tb_Mech.Rows[0]["GUID_PLATE"].ToString();
                                            master.FeedingDevice = tb_Mech.Rows[0]["YCFJ"].ToString();
                                            master.ThroatPlateSet = tb_Mech.Rows[0]["TPS_Q"].ToString();
                                            master.ThroatPlateSetCode = tb_Mech.Rows[0]["TPS_C"].ToString();
                                            master.SeamAllowance = tb_Mech.Rows[0]["ZKCC"].ToString();
                                            master.TypeOfSAName = tb_Mech.Rows[0]["SEAM_T"].ToString();
                                            master.TypeOfSANumb = tb_Mech.Rows[0]["SEAM_W"].ToString();
                                            DataTable tb_Needle = GetNeedleNo(tb_Operation.Rows[i]["YCType"].ToString());
                                            if (tb_Needle.Rows.Count > 0)
                                            {
                                                master.NeedleNo = tb_Needle.Rows[0]["Code"].ToString();
                                            }
                                        }

                                    }
                                    else 
                                    {
                                        master.ECFYQ = "No key requirement at present.";
                                        master.CFYQ = "暫時無重點要求";
                                        master.CFYQCode = master.OptNo1;
                                        master.ECFYQCode = master.OptNo1;
                                    }


                                    /*處理Unit*/
                                    DataTable tb_Unit = GetUnit(tb_Operation.Rows[i]["KHKH"].ToString());
                                    if (tb_Unit.Rows.Count > 0)
                                    {

                                        if (tb_Unit.Rows[0]["Lenz"].ToString() == "INCH")
                                        {
                                            master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                            master.GuageThrowUnit = "INCH"; master.SeamAllowanceUnit = "INCH"; master.TypeOfSAUnit = "INCH";
                                        }
                                        else
                                        {
                                            master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                            master.GuageThrowUnit = "MM"; master.SeamAllowanceUnit = "MM"; master.TypeOfSAUnit = "MM";
                                        }
                                    }
                                }
                                else { continue; }
                            }
                        }
                        else
                        {
                            /*處理最後一行*/
                            if (tb_Operation.Rows[i]["GZW"].ToString() != "0")
                            {
                                master.CustStyle = tb_Operation.Rows[i]["KHKH"].ToString();
                                master.PHStyle = GetPH(tb_Operation.Rows[i]["PHKH"].ToString());
                                master.Cust = master.Cust = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).CustNo;
                                StyleMaster master_l = this.StyleMasters.FirstOrDefault(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH);
                                master_l.CalSummary();
                                master.AL_GZWCount = master_l.CJGZW1;
                                master.GZWCount = this.StyleProcedure_Fs.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + this.StyleProcedure_Es.Where(p => p.KHKH == AKHKH && p.PHKH == APHKH && p.Edition == AEdition && p.ZH == AZH).Count() + Convert.ToInt32(string.IsNullOrEmpty(master_l.CJGZW) ? 0 : master_l.CJGZW1);
                                master.HW1 = tb_Operation.Rows[i]["YCDM"].ToString() + "\r" + tb_Operation.Rows[i]["YCType"].ToString();
                                master.OptNo1 = tb_Operation.Rows[i]["SN"].ToString();
                                master.OptDes1 = tb_Operation.Rows[i]["WorkName"].ToString();

                                /*處理機修與操作員*/
                                DataTable tb_Mech = GetMechanic(tb_Operation.Rows[i]["KHKH"].ToString(), tb_Operation.Rows[i]["WorkSN"].ToString());
                                if (tb_Mech.Rows.Count > 0)
                                {
                                    master.OptDes_Eng1 = tb_Mech.Rows[0]["egxm"].ToString();
                                    if ((tb_Mech.Rows[0]["ECFYQ"].ToString() != "" && tb_Mech.Rows[0]["ECFYQ"].ToString() != null) || (tb_Mech.Rows[0]["CFYQ"].ToString() != null && tb_Mech.Rows[0]["CFYQ"].ToString() != ""))
                                    {
                                        master.ECFYQ = tb_Mech.Rows[0]["ECFYQ"].ToString();
                                        master.CFYQ = tb_Mech.Rows[0]["CFYQ"].ToString();
                                        master.CFYQCode = master.OptNo1;
                                        master.ECFYQCode = master.OptNo1;
                                    }
                                    else
                                    {
                                        master.ECFYQ = "No key requirement at present.";
                                        master.CFYQ = "暫時無重點要求";
                                        master.CFYQCode = master.OptNo1;
                                        master.ECFYQCode = master.OptNo1;
                                    }

                                    if (!string.IsNullOrEmpty(tb_Mech.Rows[0]["MX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["DX"].ToString()) || !string.IsNullOrEmpty(tb_Mech.Rows[0]["GUID_PLATE"].ToString()))
                                    {
                                        master.GuageThrow1 = string.IsNullOrEmpty(tb_Mech.Rows[0]["ZF"].ToString()) ? "" : tb_Mech.Rows[0]["ZF"].ToString();
                                        master.ZJ = tb_Mech.Rows[0]["zj"].ToString();
                                        master.StitchDensity = tb_Mech.Rows[0]["YZJB"].ToString();
                                        master.NeedleNoUnit = tb_Mech.Rows[0]["ZH"].ToString();
                                        master.NeedleThreads = tb_Mech.Rows[0]["MX"].ToString();
                                        master.BobbinLopper = tb_Mech.Rows[0]["DX"].ToString();
                                        master.GuidingPlate = tb_Mech.Rows[0]["GUID_PLATE"].ToString();
                                        master.FeedingDevice = tb_Mech.Rows[0]["YCFJ"].ToString();
                                        master.ThroatPlateSet = tb_Mech.Rows[0]["TPS_Q"].ToString();
                                        master.ThroatPlateSetCode = tb_Mech.Rows[0]["TPS_C"].ToString();
                                        master.SeamAllowance = tb_Mech.Rows[0]["ZKCC"].ToString();
                                        master.TypeOfSAName = tb_Mech.Rows[0]["SEAM_T"].ToString();
                                        master.TypeOfSANumb = tb_Mech.Rows[0]["SEAM_W"].ToString();
                                        DataTable tb_Needle = GetNeedleNo(tb_Operation.Rows[i]["YCType"].ToString());
                                        if (tb_Needle.Rows.Count > 0)
                                        {
                                            master.NeedleNo = tb_Needle.Rows[0]["Code"].ToString();
                                        }
                                    }

                                }


                                /*處理Unit*/
                                DataTable tb_Unit = GetUnit(tb_Operation.Rows[i]["KHKH"].ToString());
                                if (tb_Unit.Rows.Count > 0)
                                {

                                    if (tb_Unit.Rows[0]["Lenz"].ToString() == "INCH")
                                    {
                                        master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                        master.GuageThrowUnit = "INCH"; master.SeamAllowanceUnit = "INCH"; master.TypeOfSAUnit = "INCH";
                                    }
                                    else
                                    {
                                        master.StitchDensityUnit = tb_Unit.Rows[0]["Lenz"].ToString();
                                        master.GuageThrowUnit = "MM"; master.SeamAllowanceUnit = "MM"; master.TypeOfSAUnit = "MM";
                                    }
                                }
                            }
                            else { continue; }
                        }
                    }


                    lists.Add(master);
                }
            }

            return lists;
        }

        #endregion

        /*StyleMasterReport--處理不同類型的表格並獲取Header工序*/
        public DataTable GetOperationDes(string AKHKH, string APHKH, int AEdition, string AZH, string Mark)
        {
            string SqlStr = "";
            if (Mark == "A")
            {
                SqlStr = "select  * from StyleProcedure where KHKH = '{0}'  and  PHKH ='{1}'  and Edition = '{2}'  and  ZH = '{3}' order by XH";

            }
            else if (Mark == "All")
            {
                SqlStr = "exec sp_GetAllDataStyleProcedure '{0}', '{1}', {2}, '{3}'";
            }
            else if (Mark == "E")
            {
                SqlStr = "select  * from StyleProcedure_E where KHKH = '{0}'  and  PHKH ='{1}'  and Edition = '{2}'  and  ZH = '{3}' order by XH";

            }
            else if (Mark == "F")
            {
                SqlStr = "select  * from StyleProcedure_F where KHKH = '{0}'  and  PHKH ='{1}'  and Edition = '{2}'  and  ZH = '{3}' and TeamGSD = 'F' order by XH";

            }
            else if (Mark == "PB")
            {
                SqlStr = "select  * from StyleProcedure_F where KHKH = '{0}'  and  PHKH ='{1}'  and Edition = '{2}'  and  ZH = '{3}' and (TeamGSD ='P' or TeamGSD = 'B')  order by XH";
            }

            string SqlStr1 = string.Format(SqlStr, AKHKH, APHKH, AEdition, AZH);
            return this.ExecuteDataTable(SqlStr1, "");
        }

        /*StyleMasterReport--處理機修欄位*/
        public DataTable GetMechanic(string AKHKH, string Gxdh)
        {
            string SqlStr = @"select b.zj,b.egxm,b.ECFyq,b.CFYQ,b.ZF,b.YZJB,b.ZH,b.MX,b.DX,b.GUID_PLATE,b.YCFJ,b.TPS_Q,b.TPS_C,b.ZKCC,b.SEAM_T,b.SEAM_W 
                              from phgdb..ie_zygx as a,phgdb..ie_zygx1  as b 
                              where (a.ZD='{0}' or a.zd1='{0}' or a.zd2='{0}' or a.zd3='{0}' or a.zd4='{0}' or a.zd5='{0}') and 
                                     b.Gxdh = '{1}' and a.seq=b.seq";

            SqlStr = string.Format(SqlStr, AKHKH, Gxdh);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /*獲取NeedleNo*/
        public DataTable GetNeedleNo(string YCType)
        {
            if (YCType.Length > 2)
            {
                YCType = YCType.Substring(0, 2);
            }
            string SqlStr = "select * from [PH.LWPM.WP]..BaseCode where name  like  '{0}%' and Type = 'NeedleType'";
            SqlStr = string.Format(SqlStr, YCType);
            return this.ExecuteDataTable(SqlStr, "");

        }

        /*StyleMasterReport--處理操作員欄位*/
        public DataTable GetUnit(string AKHKH)
        {
            string SqlStr = "select * from phgdb..ie_zygx where ZD='{0}' or zd1='{0}' or zd2='{0}' or zd3='{0}' or zd4='{0}' or zd5='{0}'";
            SqlStr = string.Format(SqlStr, AKHKH);
            return this.ExecuteDataTable(SqlStr, "");
        }

        /*StyleMasterReport--處理換行*/
        public string GetPH(string PH)
        {

            //string PH_re = PH.Replace("-", "\r -");
            //return PH_re;

            PH = PH.Trim();

            if (PH.IndexOf("-") <= 0)
            {
                return PH;
            }

            int Index = 0;
            for (int i = 0; i < PH.Length; i++)
            {
                if (PH[i] == '-')
                {
                    Index++;
                }

                if (Index == 2)
                {
                    string front = PH.Substring(0, PH.Length - i);
                    return front + "\r" + PH.Substring(i, PH.Length - front.Length);
                }
            }

            return PH;
        }

    }

    partial class StyleProcedure : BaseEntity
    {
        public string WorkNameShow
        {
            get;
            set;
        }
        public string YCTypeShow { get; set; }


        public string MoveShow { get; set; }

        #region CloneTo
        /// <summary>
        /// override CloneTo Method
        /// </summary>
        /// <param name="obj"></param>
        public void CloneTo(object obj)
        {
            //zrtag  base.CloneTo(obj);
            if (obj == null || !(obj is StyleProcedure))
            {
                return;
            }

            StyleProcedure info = obj as StyleProcedure;
            info.XH = this._XH;
            info.KHKH = this._KHKH;
            info.PHKH = this._PHKH;
            info.ZH = this._ZH;
            info.BNCX = this.BNCX;
            info.YHBNCX = this.YHBNCX;
            info.Edition = this._Edition;
            info._TeamGSD = this._TeamGSD;
            info._TeamYH = this._TeamYH;
            info._SN = this._SN;
            info._WorkSN = this._WorkSN;
            info._GSDBN = this._GSDBN;
            info._CJBH = this._CJBH;
            info._YHBN = this._YHBN;
            info._GSDCP = this._GSDCP;
            info._CJCP = this._CJCP;
            info._YHCP = this._YHCP;
            info._WorkName = this._WorkName;
            info._YCType = this._YCType;
            info._YCAdj = this._YCAdj;
            info._GSDSAHSN = this._GSDSAHSN;
            info._JSCL = this._JSCL;
            info._CWorkSN = this._CWorkSN;
            info._JWorkSN = this._JWorkSN;
            info._CJQR = this._CJQR;
            info._Move = this._Move;
            info._LDL = this._LDL;
            info._GZW = this._GZW;
            info._GZW_Support = this._GZW_Support;
            info._GZW_Floater = this._GZW_Floater;
            info._GRDH = this._GRDH;
            info._CFlag = this._CFlag;
            info._JFlag = this._JFlag;
            info._YHMTM = this._YHMTM;
            info._YHSAHSN = this._YHSAHSN;
            info._BisYHMTM = this._BisYHMTM;
            info._BisYHSAHSN = this._BisYHSAHSN;
            info._JSCSAHSN = this._JSCSAHSN;
            info._PJHMTM = this._PJHMTM;
            info._PJHSAHSN = this._PJHSAHSN;
            info._JGJJ = this._JGJJ;
            info._YCDM = this._YCDM;
            info._YCSD = this._YCSD;
            info._BeforeJSCCFlag = this._BeforeJSCCFlag;
            info._BeforeJSCJFlag = this._BeforeJSCJFlag;
            info.FAE = this._FAE;
        }
        #endregion

        #region 拆操作
        /// <summary>
        /// 拆操作
        /// </summary>
        /// <param name="AShowGuideForm">顯示拆操作向導表單</param>
        /// <param name="ACurInfoIndex">當前要進行拆操作LB_Info的Index</param>
        /// <param name="ALB_Master">LB主表</param>
        public void SplitOperation(bool AShowGuideForm, int ACurInfoIndex, StyleMaster AStyleMaster)
        {
            decimal oldValue = Convert.ToDecimal(this.CWorkSN);
            frmDismantle fDismantle = new frmDismantle(oldValue);
            if (fDismantle.ShowDialog() == DialogResult.OK)
            {
                string SaveCFlag = (this.CFlag == null ? "" : this.CFlag) == "" ? this.XH.ToString() : this.CFlag;

                AStyleMaster.ResetXH(ACurInfoIndex + 1, 1);

                this.CWorkSN = fDismantle.NewValue1;
                this.JWorkSN = Convert.ToDecimal(this.CWorkSN);
                this.XH = ACurInfoIndex + 1;
                this.CFlag = SaveCFlag;
                StyleProcedure CInfo = new StyleProcedure();
                this.CloneTo(CInfo);

                CInfo.CWorkSN = fDismantle.NewValue2;
                CInfo.JWorkSN = Convert.ToDecimal(CInfo.CWorkSN);
                CInfo.XH = ACurInfoIndex + 2;
                CInfo.CFlag = SaveCFlag;

                AStyleMaster.StyleProcedures.Insert(ACurInfoIndex + 1, CInfo);


                //this.StyleMaster.StyleProcedures.Insert(ACurInfoIndex + 1, CInfo);
            }
        }

        /// <summary>
        /// 拆操作
        /// </summary>
        /// <param name="ANewValue1">Split First Value</param>
        /// <param name="ANewValue2">Split Second Value</param>
        /// <param name="AJSCNewValue1">Split First JSC Value</param>
        /// <param name="AJSCNewValue2">Split Second JSC Value</param>
        /// <param name="ACurInfoIndex">當前要進行拆操作StyleProcedure的Index></param>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="AIncIndex">Inc Index</param>
        public void SplitOperation(decimal ANewValue1, decimal ANewValue2, decimal AJSCNewValue1, decimal AJSCNewValue2, int ACurInfoIndex, StyleMaster AStyleMaster, int AIncIndex)
        {
            //MessageBox.Show("拆SAH " + this.JWorkSN.ToString() + " 开始间时拆:" + this.XH.ToString() + "  记录条数:" + AStyleMaster.StyleProcedures.Count.ToString());


            //string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? this.XH.ToString() : this.JFlag;
            AStyleMaster.ResetXH(ACurInfoIndex + 1 - AIncIndex, 1);

            StyleProcedure CInfo = new StyleProcedure();
            this.CloneTo(CInfo);

            CInfo.CWorkSN = ANewValue2;
            CInfo.XH = this.XH + 1;
            //string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? CInfo.XH.ToString() : this.JFlag;
            string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? this.XH.ToString() : this.JFlag;

            CInfo.CFlag = string.IsNullOrEmpty(this.CFlag) ? this.XH.ToString() : this.CFlag;
            //CInfo.CFlag = string.IsNullOrEmpty(CInfo.CFlag) ? CInfo.XH.ToString() : CInfo.CFlag;
            CInfo.JSCSAHSN = AJSCNewValue2;
            CInfo.JFlag = SaveJFlag; //(ACurInfoIndex + 2).ToString();
            CInfo.YCDM = this.YCDM;
            AStyleMaster.StyleProcedures.Insert(ACurInfoIndex + 1 - AIncIndex, CInfo);

            this.CWorkSN = ANewValue1;
            //this.JWorkSN = this.JWorkSN;
            this.XH = CInfo.XH - 1;//this.XH;
            //this.CFlag = this.XH.ToString();
            this.CFlag = CInfo.CFlag; //CInfo.XH.ToString();
            this.JSCSAHSN = AJSCNewValue1;
            this.GRDH = "Floater";
            this.JGJJ = Convert.ToInt32(Math.Ceiling((Convert.ToDecimal(this.JSCSAHSN) / Convert.ToDecimal(this.GSDSAHSN) * Convert.ToDecimal(this.JSCL))));
            int JGJJ = Convert.ToInt32(this.JGJJ);
            decimal JSCL = Convert.ToDecimal(this.JSCL);
            this.LDL = Math.Round(JGJJ / JSCL, 2);


            //Info.JFlag = this.XH.ToString();
            this.JFlag = SaveJFlag; //(ACurInfoIndex + 2).ToString();
            this.GZW_Floater = 1;
            this.GZW_Support = 0;
            this.GZW = 0;


            //MessageBox.Show("拆SAH " + this.JWorkSN.ToString() + " 结束间时拆:" + this.XH.ToString() + "  记录条数:" + AStyleMaster.StyleProcedures.Count.ToString());
            //MessageBox.Show("完成一次间时拆:" + this.XH.ToString());
        }
        #endregion

        #region 車間確認
        /// <summary>
        /// 車間確認
        /// </summary>
        public void WorkshopConfirm()
        {
            this.CJQR = "√";
        }
        #endregion

        #region 取消車間確認
        /// <summary>
        /// 取消車間確認
        /// </summary>
        public void CancelWorkShopConfirm()
        {
            this.CJQR = "";
        }
        #endregion

        #region CP工序
        /// <summary>
        ///標記CP工序
        /// </summary>
        /// <param name="AStyleMaster"></param>
        public void FlagCPGS(StyleMaster AStyleMaster)
        {
            this.SetCPGSFlag(AStyleMaster, "CP");
        }

        /// <summary>
        /// 取消CP工序
        /// </summary>
        /// <param name="AStyleMaster"></param>
        public void CancelCPGS(StyleMaster AStyleMaster)
        {
            this.SetCPGSFlag(AStyleMaster, "");
        }

        private void SetCPGSFlag(StyleMaster AStyleMaster, string AFlagStr)
        {
            if (string.IsNullOrEmpty(this.CFlag))
            {
                this.CPGS = AFlagStr;
                return;
            }

            int index = AStyleMaster.StyleProcedures.IndexOf(this);
            for (int i = index; i >= 0; i--)
            {
                if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || (AStyleMaster.StyleProcedures[i].CFlag == null ? "" : AStyleMaster.StyleProcedures[i].CFlag) != (this.CFlag == null ? "" : this.CFlag))
                {
                    break;
                }
                else
                {
                    AStyleMaster.StyleProcedures[i].CPGS = AFlagStr;
                }
            }

            for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
            {
                if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                {
                    break;
                }
                else
                {
                    AStyleMaster.StyleProcedures[i].CPGS = AFlagStr;
                }
            }

        }
        #endregion

        #region  修改人工代號(勞動力代號)
        /// <summary>
        ///  修改人工代號(勞動力代號)
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource"> 修改人工代號(勞動力代號)</param>
        public void SetGRDHFlag(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Workfoce Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.JFlag))
                {
                    this.GRDH = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedures.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].JFlag) || AStyleMaster.StyleProcedures[i].JFlag != this.JFlag)
                    {
                        break;
                    }
                    else
                    {
                        if (AStyleMaster.StyleProcedures[i].GRDH.ToUpper() != "FLOATER")
                        {
                            AStyleMaster.StyleProcedures[i].GRDH = fSetFieldValue.NewValue;
                        }
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].JFlag) || AStyleMaster.StyleProcedures[i].JFlag != this.JFlag)
                    {
                        break;
                    }
                    else
                    {
                        if (AStyleMaster.StyleProcedures[i].GRDH.ToUpper() != "FLOATER")
                        {
                            AStyleMaster.StyleProcedures[i].GRDH = fSetFieldValue.NewValue;
                        }
                    }
                }
            }

        }
        #endregion

        #region 修改衣車代碼
        /// <summary>
        /// 修改衣車代碼
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource">要設置的新衣車代碼</param>
        public void SetYCDM(StyleMaster AStyleMaster, string ANewSource)
        {

            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                string SaveCFlag = this.CFlag;
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCDM = fSetFieldValue.NewValue;
                    return;
                }

                foreach (StyleProcedure obj in AStyleMaster.StyleProcedures)
                {
                    if (obj.CFlag == SaveCFlag)
                    {
                        obj.YCDM = fSetFieldValue.NewValue;
                    }

                }

                //int index = AStyleMaster.StyleProcedures.IndexOf(this);
                //for (int i = index; i >= 0; i--)
                //{
                //    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                //    {
                //        break;
                //    }
                //    else
                //    {
                //        AStyleMaster.StyleProcedures[i].YCDM = fSetFieldValue.NewValue;
                //    }
                //}

                //for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
                //{
                //    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                //    {
                //        break;
                //    }
                //    else
                //    {
                //        AStyleMaster.StyleProcedures[i].YCDM = fSetFieldValue.NewValue;
                //    }
                //}
            }
        }
        #endregion

        #region 修改衣車附件
        /// <summary>
        /// 修改衣車附件
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource">要修改的新的衣車附件</param>
        public void SetYCAdj(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code Attach", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCAdj = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedures.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedures[i].YCAdj = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].JFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedures[i].YCAdj = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        public void SetYCSD(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code Attach", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCSD = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedures.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedures[i].YCSD = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].JFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedures[i].YCSD = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        public void SetYCType(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCType = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedures.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedures[i].YCType = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedures[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedures[i].YCType = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        #endregion

    }


    partial class StyleProcedure_E : BaseEntity
    {
        public string WorkNameShow
        {
            get;
            set;
        }
        public string YCTypeShow { get; set; }

        public string MoveShow { get; set; }

        #region CloneTo
        /// <summary>
        /// override CloneTo Method
        /// </summary>
        /// <param name="obj"></param>
        public void CloneTo(object obj)
        {
            //zrtag  base.CloneTo(obj);
            if (obj == null || !(obj is StyleProcedure_E))
            {
                return;
            }

            StyleProcedure_E info = obj as StyleProcedure_E;
            info.XH = this._XH;
            info.KHKH = this._KHKH;
            info.PHKH = this._PHKH;
            info.ZH = this._ZH;
            info.BNCX = this.BNCX;
            info.YHBNCX = this.YHBNCX;
            info.Edition = this._Edition;
            info._TeamGSD = this._TeamGSD;
            info._TeamYH = this._TeamYH;
            info._SN = this._SN;
            info._WorkSN = this._WorkSN;
            info._GSDBN = this._GSDBN;
            info._CJBH = this._CJBH;
            info._YHBN = this._YHBN;
            info._GSDCP = this._GSDCP;
            info._CJCP = this._CJCP;
            info._YHCP = this._YHCP;
            info._WorkName = this._WorkName;
            info._YCType = this._YCType;
            info._YCAdj = this._YCAdj;
            info._GSDSAHSN = this._GSDSAHSN;
            info._JSCL = this._JSCL;
            info._CWorkSN = this._CWorkSN;
            info._JWorkSN = this._JWorkSN;
            info._CJQR = this._CJQR;
            info._Move = this._Move;
            info._LDL = this._LDL;
            info._GZW = this._GZW;
            info._GZW_Support = this._GZW_Support;
            info._GZW_Floater = this._GZW_Floater;
            info._GRDH = this._GRDH;
            info._CFlag = this._CFlag;
            info._JFlag = this._JFlag;
            info._YHMTM = this._YHMTM;
            info._YHSAHSN = this._YHSAHSN;
            info._BisYHMTM = this._BisYHMTM;
            info._BisYHSAHSN = this._BisYHSAHSN;
            info._JSCSAHSN = this._JSCSAHSN;
            info._PJHMTM = this._PJHMTM;
            info._PJHSAHSN = this._PJHSAHSN;
            info._JGJJ = this._JGJJ;
            info._YCDM = this._YCDM;
            info._YCSD = this._YCSD;
            info._BeforeJSCCFlag = this._BeforeJSCCFlag;
            info._BeforeJSCJFlag = this._BeforeJSCJFlag;
            info.FAE = this.FAE;
        }
        #endregion

        #region 拆操作
        /// <summary>
        /// 拆操作
        /// </summary>
        /// <param name="AShowGuideForm">顯示拆操作向導表單</param>
        /// <param name="ACurInfoIndex">當前要進行拆操作LB_Info的Index</param>
        /// <param name="ALB_Master">LB主表</param>
        public void SplitOperation(bool AShowGuideForm, int ACurInfoIndex, StyleMaster AStyleMaster)
        {
            decimal oldValue = Convert.ToDecimal(this.CWorkSN);
            frmDismantle fDismantle = new frmDismantle(oldValue);
            if (fDismantle.ShowDialog() == DialogResult.OK)
            {
                string SaveCFlag = (this.CFlag == null ? "" : this.CFlag) == "" ? this.XH.ToString() : this.CFlag;

                AStyleMaster.ResetXH_E(ACurInfoIndex + 1, 1);

                this.CWorkSN = fDismantle.NewValue1;
                this.JWorkSN = Convert.ToDecimal(this.CWorkSN);
                this.XH = ACurInfoIndex + 1;
                this.CFlag = SaveCFlag;
                StyleProcedure_E CInfo = new StyleProcedure_E();
                this.CloneTo(CInfo);

                CInfo.CWorkSN = fDismantle.NewValue2;
                CInfo.JWorkSN = Convert.ToDecimal(CInfo.CWorkSN);
                CInfo.XH = ACurInfoIndex + 2;
                CInfo.CFlag = SaveCFlag;

                AStyleMaster.StyleProcedure_Es.Insert(ACurInfoIndex + 1, CInfo);

                //this.StyleMaster.StyleProcedures.Insert(ACurInfoIndex + 1, CInfo);
            }
        }

        /// <summary>
        /// 拆操作
        /// </summary>
        /// <param name="ANewValue1">Split First Value</param>
        /// <param name="ANewValue2">Split Second Value</param>
        /// <param name="AJSCNewValue1">Split First JSC Value</param>
        /// <param name="AJSCNewValue2">Split Second JSC Value</param>
        /// <param name="ACurInfoIndex">當前要進行拆操作StyleProcedure的Index></param>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="AIncIndex">Inc Index</param>
        public void SplitOperation(decimal ANewValue1, decimal ANewValue2, decimal AJSCNewValue1, decimal AJSCNewValue2, int ACurInfoIndex, StyleMaster AStyleMaster, int AIncIndex)
        {
            //MessageBox.Show("拆SAH " + this.JWorkSN.ToString() + " 开始间时拆:" + this.XH.ToString() + "  记录条数:" + AStyleMaster.StyleProcedures.Count.ToString());


            //string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? this.XH.ToString() : this.JFlag;
            AStyleMaster.ResetXH_E(ACurInfoIndex + 1 - AIncIndex, 1);

            StyleProcedure_E CInfo = new StyleProcedure_E();
            this.CloneTo(CInfo);

            CInfo.CWorkSN = ANewValue2;
            CInfo.XH = this.XH + 1;
            //string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? CInfo.XH.ToString() : this.JFlag;
            string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? this.XH.ToString() : this.JFlag;

            CInfo.CFlag = string.IsNullOrEmpty(this.CFlag) ? this.XH.ToString() : this.CFlag;
            //CInfo.CFlag = string.IsNullOrEmpty(CInfo.CFlag) ? CInfo.XH.ToString() : CInfo.CFlag;
            CInfo.JSCSAHSN = AJSCNewValue2;
            CInfo.JFlag = SaveJFlag; //(ACurInfoIndex + 2).ToString();
            CInfo.YCDM = this.YCDM;
            AStyleMaster.StyleProcedure_Es.Insert(ACurInfoIndex + 1 - AIncIndex, CInfo);

            this.CWorkSN = ANewValue1;
            //this.JWorkSN = this.JWorkSN;
            this.XH = CInfo.XH - 1;//this.XH;
            //this.CFlag = this.XH.ToString();
            this.CFlag = CInfo.CFlag; //CInfo.XH.ToString();
            this.JSCSAHSN = AJSCNewValue1;
            this.GRDH = "Floater";
            this.JGJJ = Convert.ToInt32(Math.Ceiling((Convert.ToDecimal(this.JSCSAHSN) / Convert.ToDecimal(this.GSDSAHSN) * Convert.ToDecimal(this.JSCL))));
            int JGJJ = Convert.ToInt32(this.JGJJ);
            decimal JSCL = Convert.ToDecimal(this.JSCL);
            this.LDL = Math.Round(JGJJ / JSCL, 2);


            //Info.JFlag = this.XH.ToString();
            this.JFlag = SaveJFlag; //(ACurInfoIndex + 2).ToString();
            this.GZW_Floater = 1;
            this.GZW_Support = 0;
            this.GZW = 0;


            //MessageBox.Show("拆SAH " + this.JWorkSN.ToString() + " 结束间时拆:" + this.XH.ToString() + "  记录条数:" + AStyleMaster.StyleProcedures.Count.ToString());
            //MessageBox.Show("完成一次间时拆:" + this.XH.ToString());
        }
        #endregion

        #region 車間確認
        /// <summary>
        /// 車間確認
        /// </summary>
        public void WorkshopConfirm()
        {
            this.CJQR = "√";
        }
        #endregion

        #region 取消車間確認
        /// <summary>
        /// 取消車間確認
        /// </summary>
        public void CancelWorkShopConfirm()
        {
            this.CJQR = "";
        }
        #endregion

        #region CP工序
        /// <summary>
        ///標記CP工序
        /// </summary>
        /// <param name="AStyleMaster"></param>
        public void FlagCPGS(StyleMaster AStyleMaster)
        {
            this.SetCPGSFlag(AStyleMaster, "CP");
        }

        /// <summary>
        /// 取消CP工序
        /// </summary>
        /// <param name="AStyleMaster"></param>
        public void CancelCPGS(StyleMaster AStyleMaster)
        {
            this.SetCPGSFlag(AStyleMaster, "");
        }

        private void SetCPGSFlag(StyleMaster AStyleMaster, string AFlagStr)
        {
            if (string.IsNullOrEmpty(this.CFlag))
            {
                this.CPGS = AFlagStr;
                return;
            }

            int index = AStyleMaster.StyleProcedure_Es.IndexOf(this);
            for (int i = index; i >= 0; i--)
            {
                if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || (AStyleMaster.StyleProcedure_Es[i].CFlag == null ? "" : AStyleMaster.StyleProcedure_Es[i].CFlag) != (this.CFlag == null ? "" : this.CFlag))
                {
                    break;
                }
                else
                {
                    AStyleMaster.StyleProcedure_Es[i].CPGS = AFlagStr;
                }
            }

            for (int i = index + 1; i < AStyleMaster.StyleProcedure_Es.Count; i++)
            {
                if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedure_Es[i].CFlag != this.CFlag)
                {
                    break;
                }
                else
                {
                    AStyleMaster.StyleProcedure_Es[i].CPGS = AFlagStr;
                }
            }

        }
        #endregion

        #region  修改人工代號(勞動力代號)
        /// <summary>
        ///  修改人工代號(勞動力代號)
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource"> 修改人工代號(勞動力代號)</param>
        public void SetGRDHFlag(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Workfoce Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.JFlag))
                {
                    this.GRDH = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Es.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].JFlag) || AStyleMaster.StyleProcedure_Es[i].JFlag != this.JFlag)
                    {
                        break;
                    }
                    else
                    {
                        if (AStyleMaster.StyleProcedure_Es[i].GRDH.ToUpper() != "FLOATER")
                        {
                            AStyleMaster.StyleProcedure_Es[i].GRDH = fSetFieldValue.NewValue;
                        }
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Es.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].JFlag) || AStyleMaster.StyleProcedure_Es[i].JFlag != this.JFlag)
                    {
                        break;
                    }
                    else
                    {
                        if (AStyleMaster.StyleProcedure_Es[i].GRDH.ToUpper() != "FLOATER")
                        {
                            AStyleMaster.StyleProcedure_Es[i].GRDH = fSetFieldValue.NewValue;
                        }
                    }
                }
            }

        }
        #endregion

        #region 修改衣車代碼
        /// <summary>
        /// 修改衣車代碼
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource">要設置的新衣車代碼</param>
        public void SetYCDM(StyleMaster AStyleMaster, string ANewSource)
        {

            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                string SaveCFlag = this.CFlag;
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCDM = fSetFieldValue.NewValue;
                    return;
                }

                foreach (StyleProcedure_E obj in AStyleMaster.StyleProcedure_Es)
                {
                    if (obj.CFlag == SaveCFlag)
                    {
                        obj.YCDM = fSetFieldValue.NewValue;
                    }

                }

            }
        }
        #endregion

        #region 修改衣車附件
        /// <summary>
        /// 修改衣車附件
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource">要修改的新的衣車附件</param>
        public void SetYCAdj(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code Attach", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCAdj = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Es.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedures[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Es[i].YCAdj = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Es.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedure_Es[i].JFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Es[i].YCAdj = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        public void SetYCSD(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code Attach", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCSD = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Es.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedure_Es[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Es[i].YCSD = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Es.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedure_Es[i].JFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Es[i].YCSD = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        public void SetYCType(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCType = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Es.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedure_Es[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Es[i].YCType = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedures.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Es[i].CFlag) || AStyleMaster.StyleProcedure_Es[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Es[i].YCType = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        #endregion

    }

    partial class StyleProcedure_F : BaseEntity
    {
        public string WorkNameShow{ get; set;}

        public string YCTypeShow { get; set; }

        public string MoveShow { get; set; }
        #region CloneTo
        /// <summary>
        /// override CloneTo Method
        /// </summary>
        /// <param name="obj"></param>
        public void CloneTo(object obj)
        {
            //zrtag  base.CloneTo(obj);
            if (obj == null || !(obj is StyleProcedure_F))
            {
                return;
            }

            StyleProcedure_F info = obj as StyleProcedure_F;
            info.XH = this._XH;
            info.KHKH = this._KHKH;
            info.PHKH = this._PHKH;
            info.ZH = this._ZH;
            info.BNCX = this.BNCX;
            info.YHBNCX = this.YHBNCX;
            info.Edition = this._Edition;
            info._TeamGSD = this._TeamGSD;
            info._TeamYH = this._TeamYH;
            info._SN = this._SN;
            info._WorkSN = this._WorkSN;
            info._GSDBN = this._GSDBN;
            info._CJBH = this._CJBH;
            info._YHBN = this._YHBN;
            info._GSDCP = this._GSDCP;
            info._CJCP = this._CJCP;
            info._YHCP = this._YHCP;
            info._WorkName = this._WorkName;
            info._YCType = this._YCType;
            info._YCAdj = this._YCAdj;
            info._GSDSAHSN = this._GSDSAHSN;
            info._JSCL = this._JSCL;
            info._CWorkSN = this._CWorkSN;
            info._JWorkSN = this._JWorkSN;
            info._CJQR = this._CJQR;
            info._Move = this._Move;
            info._LDL = this._LDL;
            info._GZW = this._GZW;
            info._GZW_Support = this._GZW_Support;
            info._GZW_Floater = this._GZW_Floater;
            info._GRDH = this._GRDH;
            info._CFlag = this._CFlag;
            info._JFlag = this._JFlag;
            info._YHMTM = this._YHMTM;
            info._YHSAHSN = this._YHSAHSN;
            info._BisYHMTM = this._BisYHMTM;
            info._BisYHSAHSN = this._BisYHSAHSN;
            info._JSCSAHSN = this._JSCSAHSN;
            info._PJHMTM = this._PJHMTM;
            info._PJHSAHSN = this._PJHSAHSN;
            info._JGJJ = this._JGJJ;
            info._YCDM = this._YCDM;
            info._YCSD = this._YCSD;
            info._BeforeJSCCFlag = this._BeforeJSCCFlag;
            info._BeforeJSCJFlag = this._BeforeJSCJFlag;
            info.FAE = this.FAE;
        }
        #endregion

        #region 拆操作
        /// <summary>
        /// 拆操作
        /// </summary>
        /// <param name="AShowGuideForm">顯示拆操作向導表單</param>
        /// <param name="ACurInfoIndex">當前要進行拆操作LB_Info的Index</param>
        /// <param name="ALB_Master">LB主表</param>
        public void SplitOperation(bool AShowGuideForm, int ACurInfoIndex, StyleMaster AStyleMaster)
        {
            decimal oldValue = Convert.ToDecimal(this.CWorkSN);
            frmDismantle fDismantle = new frmDismantle(oldValue);
            if (fDismantle.ShowDialog() == DialogResult.OK)
            {
                string SaveCFlag = (this.CFlag == null ? "" : this.CFlag) == "" ? this.XH.ToString() : this.CFlag;

                AStyleMaster.ResetXH_F(ACurInfoIndex + 1, 1);

                this.CWorkSN = fDismantle.NewValue1;
                this.JWorkSN = Convert.ToDecimal(this.CWorkSN);
                this.XH = ACurInfoIndex + 1;
                this.CFlag = SaveCFlag;
                StyleProcedure_F CInfo = new StyleProcedure_F();
                this.CloneTo(CInfo);

                CInfo.CWorkSN = fDismantle.NewValue2;
                CInfo.JWorkSN = Convert.ToDecimal(CInfo.CWorkSN);
                CInfo.XH = ACurInfoIndex + 2;
                CInfo.CFlag = SaveCFlag;

                AStyleMaster.StyleProcedure_Fs.Insert(ACurInfoIndex + 1, CInfo);

                //this.StyleMaster.StyleProcedures.Insert(ACurInfoIndex + 1, CInfo);
            }
        }

        /// <summary>
        /// 拆操作
        /// </summary>
        /// <param name="ANewValue1">Split First Value</param>
        /// <param name="ANewValue2">Split Second Value</param>
        /// <param name="AJSCNewValue1">Split First JSC Value</param>
        /// <param name="AJSCNewValue2">Split Second JSC Value</param>
        /// <param name="ACurInfoIndex">當前要進行拆操作StyleProcedure的Index></param>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="AIncIndex">Inc Index</param>
        public void SplitOperation(decimal ANewValue1, decimal ANewValue2, decimal AJSCNewValue1, decimal AJSCNewValue2, int ACurInfoIndex, StyleMaster AStyleMaster, int AIncIndex)
        {
            //MessageBox.Show("拆SAH " + this.JWorkSN.ToString() + " 开始间时拆:" + this.XH.ToString() + "  记录条数:" + AStyleMaster.StyleProcedures.Count.ToString());


            //string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? this.XH.ToString() : this.JFlag;
            AStyleMaster.ResetXH_F(ACurInfoIndex + 1 - AIncIndex, 1);

            StyleProcedure_F CInfo = new StyleProcedure_F();
            this.CloneTo(CInfo);

            CInfo.CWorkSN = ANewValue2;
            CInfo.XH = this.XH + 1;
            //string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? CInfo.XH.ToString() : this.JFlag;
            string SaveJFlag = string.IsNullOrEmpty(this.JFlag) ? this.XH.ToString() : this.JFlag;

            CInfo.CFlag = string.IsNullOrEmpty(this.CFlag) ? this.XH.ToString() : this.CFlag;
            //CInfo.CFlag = string.IsNullOrEmpty(CInfo.CFlag) ? CInfo.XH.ToString() : CInfo.CFlag;
            CInfo.JSCSAHSN = AJSCNewValue2;
            CInfo.JFlag = SaveJFlag; //(ACurInfoIndex + 2).ToString();
            CInfo.YCDM = this.YCDM;
            AStyleMaster.StyleProcedure_Fs.Insert(ACurInfoIndex + 1 - AIncIndex, CInfo);

            this.CWorkSN = ANewValue1;
            //this.JWorkSN = this.JWorkSN;
            this.XH = CInfo.XH - 1;//this.XH;
            //this.CFlag = this.XH.ToString();
            this.CFlag = CInfo.CFlag; //CInfo.XH.ToString();
            this.JSCSAHSN = AJSCNewValue1;
            this.GRDH = "Floater";
            this.JGJJ = Convert.ToInt32(Math.Ceiling((Convert.ToDecimal(this.JSCSAHSN) / Convert.ToDecimal(this.GSDSAHSN) * Convert.ToDecimal(this.JSCL))));
            int JGJJ = Convert.ToInt32(this.JGJJ);
            decimal JSCL = Convert.ToDecimal(this.JSCL);
            this.LDL = Math.Round(JGJJ / JSCL, 2);


            //Info.JFlag = this.XH.ToString();
            this.JFlag = SaveJFlag; //(ACurInfoIndex + 2).ToString();
            this.GZW_Floater = 1;
            this.GZW_Support = 0;
            this.GZW = 0;


            //MessageBox.Show("拆SAH " + this.JWorkSN.ToString() + " 结束间时拆:" + this.XH.ToString() + "  记录条数:" + AStyleMaster.StyleProcedures.Count.ToString());
            //MessageBox.Show("完成一次间时拆:" + this.XH.ToString());
        }
        #endregion

        #region 車間確認
        /// <summary>
        /// 車間確認
        /// </summary>
        public void WorkshopConfirm()
        {
            this.CJQR = "√";
        }
        #endregion

        #region 取消車間確認
        /// <summary>
        /// 取消車間確認
        /// </summary>
        public void CancelWorkShopConfirm()
        {
            this.CJQR = "";
        }
        #endregion

        #region CP工序
        /// <summary>
        ///標記CP工序
        /// </summary>
        /// <param name="AStyleMaster"></param>
        public void FlagCPGS(StyleMaster AStyleMaster)
        {
            this.SetCPGSFlag(AStyleMaster, "CP");
        }

        /// <summary>
        /// 取消CP工序
        /// </summary>
        /// <param name="AStyleMaster"></param>
        public void CancelCPGS(StyleMaster AStyleMaster)
        {
            this.SetCPGSFlag(AStyleMaster, "");
        }

        private void SetCPGSFlag(StyleMaster AStyleMaster, string AFlagStr)
        {
            if (string.IsNullOrEmpty(this.CFlag))
            {
                this.CPGS = AFlagStr;
                return;
            }

            int index = AStyleMaster.StyleProcedure_Fs.IndexOf(this);
            for (int i = index; i >= 0; i--)
            {
                if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || (AStyleMaster.StyleProcedure_Fs[i].CFlag == null ? "" : AStyleMaster.StyleProcedure_Fs[i].CFlag) != (this.CFlag == null ? "" : this.CFlag))
                {
                    break;
                }
                else
                {
                    AStyleMaster.StyleProcedure_Fs[i].CPGS = AFlagStr;
                }
            }

            for (int i = index + 1; i < AStyleMaster.StyleProcedure_Fs.Count; i++)
            {
                if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].CFlag != this.CFlag)
                {
                    break;
                }
                else
                {
                    AStyleMaster.StyleProcedure_Fs[i].CPGS = AFlagStr;
                }
            }

        }
        #endregion

        #region  修改人工代號(勞動力代號)
        /// <summary>
        ///  修改人工代號(勞動力代號)
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource"> 修改人工代號(勞動力代號)</param>
        public void SetGRDHFlag(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Workfoce Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.JFlag))
                {
                    this.GRDH = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Fs.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].JFlag) || AStyleMaster.StyleProcedure_Fs[i].JFlag != this.JFlag)
                    {
                        break;
                    }
                    else
                    {
                        if (AStyleMaster.StyleProcedure_Fs[i].GRDH.ToUpper() != "FLOATER")
                        {
                            AStyleMaster.StyleProcedure_Fs[i].GRDH = fSetFieldValue.NewValue;
                        }
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Fs.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].JFlag) || AStyleMaster.StyleProcedure_Fs[i].JFlag != this.JFlag)
                    {
                        break;
                    }
                    else
                    {
                        if (AStyleMaster.StyleProcedure_Fs[i].GRDH.ToUpper() != "FLOATER")
                        {
                            AStyleMaster.StyleProcedure_Fs[i].GRDH = fSetFieldValue.NewValue;
                        }
                    }
                }
            }

        }
        #endregion

        #region 修改衣車代碼
        /// <summary>
        /// 修改衣車代碼
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource">要設置的新衣車代碼</param>
        public void SetYCDM(StyleMaster AStyleMaster, string ANewSource)
        {

            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                string SaveCFlag = this.CFlag;
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCDM = fSetFieldValue.NewValue;
                    return;
                }

                foreach (StyleProcedure_F obj in AStyleMaster.StyleProcedure_Fs)
                {
                    if (obj.CFlag == SaveCFlag)
                    {
                        obj.YCDM = fSetFieldValue.NewValue;
                    }

                }

            }
        }
        #endregion

        #region 修改衣車附件
        /// <summary>
        /// 修改衣車附件
        /// </summary>
        /// <param name="AStyleMaster">StyleMaster</param>
        /// <param name="ANewSource">要修改的新的衣車附件</param>
        public void SetYCAdj(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code Attach", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCAdj = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Fs.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Fs[i].YCAdj = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Es.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].JFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Fs[i].YCAdj = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        public void SetYCSD(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code Attach", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCSD = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Fs.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Fs[i].YCSD = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Fs.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].JFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Fs[i].YCSD = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        public void SetYCType(StyleMaster AStyleMaster, string ANewSource)
        {
            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify Machine Code", ANewSource);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                if (string.IsNullOrEmpty(this.CFlag))
                {
                    this.YCType = fSetFieldValue.NewValue;
                    return;
                }

                int index = AStyleMaster.StyleProcedure_Fs.IndexOf(this);
                for (int i = index; i >= 0; i--)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Fs[i].YCType = fSetFieldValue.NewValue;
                    }
                }

                for (int i = index + 1; i < AStyleMaster.StyleProcedure_Fs.Count; i++)
                {
                    if (string.IsNullOrEmpty(AStyleMaster.StyleProcedure_Fs[i].CFlag) || AStyleMaster.StyleProcedure_Fs[i].CFlag != this.CFlag)
                    {
                        break;
                    }
                    else
                    {
                        AStyleMaster.StyleProcedure_Fs[i].YCType = fSetFieldValue.NewValue;
                    }
                }
            }

        }
        #endregion

    }

    partial class StyleMaster : BaseEntity
    {
        /// <summary>
        /// 得到款對應的所有工序信息，包括PM、Bonding、F、AL、E 五個工場的工序 由David加入 2018-08-21
        /// </summary>
        /// <returns></returns>
        public IEnumerable<StyleProcedure> GetAllDataStyleProcedure()
        {
            string SqlStr = "exec sp_GetAllDataStyleProcedure '{0}', '{1}', {2}, '{3}'";
            SqlStr = string.Format(SqlStr, this.KHKH, this.PHKH, this.Edition, this.ZH);

            LineBalanceIIDataContext db = this.CurrentDataContext as LineBalanceIIDataContext;
            return db.ExecuteQuery<StyleProcedure>(SqlStr);
        }

        public List<StyleProcedure> OrderByXH_StyleProcedures
        {
            get
            {
                return this.StyleProcedures.OrderBy(a => a.XH).ToList();
            }
        }

        public List<StyleProcedure_E> OrderByXH_StyleProcedureEs
        {
            get
            {
                return this.StyleProcedure_Es.OrderBy(a => a.XH).ToList();
            }
        }

        public List<StyleProcedure_F> OrderByXH_StyleProcedureFs
        {
            get
            {
                return this.StyleProcedure_Fs.OrderBy(a => a.XH).ToList();
            }

        }

        #region 添加的屬性

        public int PM_OptsCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "P").Select(p => p.WorkSN).Distinct().Count(); }
        }

        /// <summary>
        /// PM WorkStation Count (PM: Part Making Workshop)
        /// </summary>
        public int PM_WSTCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "P").Sum(p => p.GZW ?? 0); }
        }

        public int PM_WFCount
        {

            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "P").Select(p => p.GRDH).Distinct().Count(); }
            //get 
            //{
            //decimal WFCount = this.StyleProcedure_Fs.Where(p => p.TeamGSD == "P").Select(p => new { p.LDL, p.JFlag }).Distinct().Sum() ?? 0;
            //return 
            ////return  this.StyleProcedure_Fs.Where(p => p.TeamGSD == "P").Select(p => new { p.LDL, p.JFlag }).Distinct().Sum(); }

        }

        public decimal PM_SAHTotal
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "P").Sum(p => p.GSDSAHSN ?? 0); }
        }


        public int B_OptsCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "B").Select(p => p.WorkSN).Distinct().Count(); }
        }

        /// <summary>
        /// Bonding WorkStation Count (PM: Part Making Workshop)
        /// </summary>
        public int B_WSTCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "B").Sum(p => p.GZW ?? 0); }
        }

        public int B_WFCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "B").Select(p => p.GRDH).Distinct().Count(); }
        }

        public decimal B_SAHTotal
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "B").Select(p => new { p.JFlag, p.JWorkSN }).Distinct().Sum(p => p.JWorkSN ?? 0); }
        }



        public int F_OptsCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "F").Select(p => p.WorkSN).Distinct().Count(); }
        }

        /// <summary>
        /// Stitching Front Phase WorkStation Count (PM: Part Making Workshop)
        /// </summary>
        public int F_WSTCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "F").Sum(p => p.GZW ?? 0); }
        }

        public int F_WFCount
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "F").Select(p => p.GRDH).Distinct().Count(); }
        }

        public decimal F_SAHTotal
        {
            get { return this.StyleProcedure_Fs.Where(p => p.TeamGSD == "F").Select(p => new { p.JFlag, p.JWorkSN }).Distinct().Sum(p => p.JWorkSN ?? 0); }
        }






        public int E_OptsCount
        {
            get { return this.StyleProcedure_Es.Where(p => p.TeamGSD == "E").Select(p => p.WorkSN).Distinct().Count(); }
        }

        /// <summary>
        /// Stitching End Phase WorkStation Count (PM: Part Making Workshop)
        /// </summary>
        public int E_WSTCount
        {
            get { return this.StyleProcedure_Es.Where(p => p.TeamGSD == "E").Sum(p => p.GZW ?? 0); }
        }

        public int E_WFCount
        {
            get { return this.StyleProcedure_Es.Where(p => p.TeamGSD == "E").Select(p => p.GRDH).Distinct().Count(); }
        }

        public decimal E_SAHTotal
        {
            get { return this.StyleProcedure_Es.Where(p => p.TeamGSD == "E").Select(p => new { p.JFlag, p.JWorkSN }).Distinct().Sum(p => p.JWorkSN ?? 0); }
        }


        public int A_OptsCount
        {
            get { return this.StyleProcedures.Where(p => p.TeamGSD == "A").Select(p => p.WorkSN).Distinct().Count(); }
        }

        /// <summary>
        /// Stitching Assembly Line WorkStation Count (PM: Part Making Workshop)
        /// </summary>
        public int A_WSTCount
        {
            get { return this.StyleProcedures.Sum(p => p.GZW ?? 0); }
        }

        public int A_WFCount
        {
            get { return this.StyleProcedures.Where(p => p.TeamGSD == "A").Select(p => p.GRDH).Distinct().Count(); }
        }

        public decimal A_SAHTotal
        {
            get { return this.StyleProcedures.Where(p => p.TeamGSD == "A").Select(p => new { p.JFlag, p.JWorkSN }).Distinct().Sum(p => p.JWorkSN ?? 0); }
        }

        public decimal A_LBSAHIndex
        {
            get;
            set;
        }

        public decimal A_LBLoss
        {
            get
            {
                this.CalSummary();

                if (this.A_SAHTotal == 0 || this.CJLPHS == 0) //CJLPHS==0時不能作除數(沒有導入工序的時候就為0)， 由david加入 2018-10-13
                {
                    this.A_LBSAHIndex = 0;
                }
                else
                {
                    this.A_LBSAHIndex = decimal.Round(this.A_SAHTotal / (this.CJLPHS / 100), 4);
                }

                return this.CJLPHS == 0 ? 0 : ((100 - this.CJLPHS) / 100);
            }
        }


        public int Total_OptsCount
        {
            get { return this.PM_OptsCount + this.B_OptsCount + this.F_OptsCount + this.A_OptsCount + this.E_OptsCount; }
        }

        public int Total_WSTCount
        {
            get { return this.PM_WSTCount + this.B_WSTCount + this.F_WSTCount + this.A_WSTCount + this.E_WSTCount; }
        }

        public int Total_WFCount
        {
            get { return this.PM_WFCount + this.B_WFCount + this.F_WFCount + this.A_WFCount + this.E_WFCount; }
        }

        public decimal Total_SAHTotal
        {
            get { return this.PM_SAHTotal + this.B_SAHTotal + this.F_SAHTotal + this.A_SAHTotal + this.E_SAHTotal; }
        }


        public string Statu_Disp
        {
            get
            {
                //if (this.Statu == 0)
                //    return "D";
                if (this.Statu == 0 || this.Statu == 1)
                    return "A";
                else if (this.Statu == 2)
                    return "I";
                else if (this.Statu == 3)
                    return "D";
                else
                    return "A";
            }

            set
            {
                //if (value == "D")
                //    this.Statu = 0;
                if (value == "A")
                    this.Statu = 1;
                else if (value == "I")
                    this.Statu = 2;
                else if (value == "D")
                    this.Statu = 3;
                else
                    this.Statu = 1;
            }
        }

        public char JzDiff
        {
            get
            {

                if (string.IsNullOrEmpty(this.SizeYJ) && string.IsNullOrEmpty(this.SizeYJ_Prod))
                    return 'N';
                else if (!string.IsNullOrEmpty(this.SizeYJ) && this.SizeYJ.Equals(this.SizeYJ_Prod))
                    return 'N';
                else
                    return 'Y';
            }
        }

        public decimal GsdTotal //縫合
        {
            get
            {

                return this.StyleProcedures.Sum(p => p.CWorkSN).GetValueOrDefault() +
                    this.StyleProcedure_Es.Sum(p => p.CWorkSN).GetValueOrDefault() +
                    this.StyleProcedure_Fs.Sum(p => p.CWorkSN).GetValueOrDefault();
            }
        }


        public string SahDiff
        {
            get
            {

                if (PRODSAH.GetValueOrDefault() > 0)
                {

                    string result = "";
                    decimal aa = Convert.ToDecimal((this.GsdTotal - this.PRODSAH.GetValueOrDefault()) * 100 / this.PRODSAH.GetValueOrDefault());
                    if (aa > 0)
                        result = Math.Round(aa, 2).ToString(); //String.Format("{0:N2}", aa.ToString());
                    else
                        result = "0.00";
                    // this.xrAverage.Text = String.Format("{0:F}", aa);   
                    return result + "%";
                }
                else
                    return "0.00%";
            }
        }

        public string CupStyle_Disp
        {
            get
            {

                if (this.CupStyle.GetValueOrDefault() == 0)
                    return "普杯";
                else if (this.CupStyle.GetValueOrDefault() == 1)
                    return "大杯";
                else if (this.CupStyle.GetValueOrDefault() == 2)
                    return "超杯";
                else
                    return "";

            }
        }

        private List<Summary> _SummaryList;

        /// <summary>
        /// 工作位列表
        /// </summary>
        public List<Summary> SummaryList
        {
            get
            {
                if (_SummaryList == null)
                {
                    _SummaryList = new List<Summary>();
                }
                return _SummaryList;
            }

            set
            {
                _SummaryList = value;
            }
        }
        private void OnPropertyChanged(string str)
        {

        }
        #endregion

        #region 實現IKeyObject接口
        /// <summary>
        /// 實現IKeyObject接口
        /// </summary>
        /// <param name="m"></param>
        /// <returns></returns>
        public bool KeyEquals(StyleMaster m)
        {
            if (m == null)
            {
                return false;
            }
            return this._KHKH == m.KHKH && this._PHKH == m._PHKH && this._ZH == m.ZH && this._Edition == m._Edition;
        }
        #endregion

        #region CloneTo
        /// <summary>
        /// override CloneTo Method
        /// </summary>
        /// <param name="obj"></param>
        public void CloneTo(object obj)
        {
            if (obj == null || !(obj is StyleMaster)) return;

            StyleMaster m = obj as StyleMaster;
            m._KHKH = this.KHKH;
            m._PHKH = this.PHKH;
            m._BKH = this.BKH;
            m._CPLB = this.CPLB;
            m._SizeYJ = this.SizeYJ;
            m._ZH = this.ZH;
            m._Edition = this.Edition;
            m._IsUsed = this.IsUsed;
            m._Phase = this.Phase;
            m._Auditor = this.Auditor;
            System.Data.Linq.EntitySet<StyleProcedure> list = new System.Data.Linq.EntitySet<StyleProcedure>();
            System.Data.Linq.EntitySet<StyleProcedure_E> list_e = new System.Data.Linq.EntitySet<StyleProcedure_E>();
            System.Data.Linq.EntitySet<StyleProcedure_F> list_f = new System.Data.Linq.EntitySet<StyleProcedure_F>();

            foreach (StyleProcedure info in this._StyleProcedures)
            {
                StyleProcedure SaveStyleProcedure = new StyleProcedure();
                info.CloneTo(SaveStyleProcedure);
                list.Add(SaveStyleProcedure);
            }
            m.StyleProcedures = list;

            /*E&F*/
            foreach (StyleProcedure_E info in this.StyleProcedure_Es)
            {
                StyleProcedure_E SaveStyleProcedure = new StyleProcedure_E();
                info.CloneTo(SaveStyleProcedure);
                list_e.Add(SaveStyleProcedure);
            }
            m.StyleProcedure_Es = list_e;

            foreach (StyleProcedure_F info in this.StyleProcedure_Fs)
            {
                StyleProcedure_F SaveStyleProcedure = new StyleProcedure_F();
                info.CloneTo(SaveStyleProcedure);
                list_f.Add(SaveStyleProcedure);
            }
            m.StyleProcedure_Fs = list_f;
            /*E&F*/
        }
        #endregion

        #region 重算序號方法
        /// <summary>
        /// 重算序號方法
        /// </summary>
        /// <param name="AIndex">開始的序號</param>
        /// <param name="AInc">每次遞增數</param>
        public void ResetXH(int AIndex, int AInc)
        {
            //for (int i = AIndex; i < this.OrderByXH_StyleProcedures.Count; i++)
            //{

            //    this.OrderByXH_StyleProcedures[i].XH = this.OrderByXH_StyleProcedures[i].XH + AInc;
            //    if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedures[i].CFlag)) && this.OrderByXH_StyleProcedures[i].CFlag != this.OrderByXH_StyleProcedures[i - 1].CFlag)
            //    {
            //        this.OrderByXH_StyleProcedures[i].CFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedures[i].CFlag) + AInc).ToString();
            //    }

            //    if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedures[i].JFlag)) && this.OrderByXH_StyleProcedures[i].JFlag != this.OrderByXH_StyleProcedures[i - 1].JFlag)
            //    {
            //        this.OrderByXH_StyleProcedures[i].JFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedures[i].JFlag) + AInc).ToString();
            //    }


            //MessageBox.Show(this.OrderByXH_StyleProcedures[i].XH.ToString());

            //}

            for (int i = this.OrderByXH_StyleProcedures.Count - 1; i >= AIndex; i--)
            {

                this.OrderByXH_StyleProcedures[i].XH = this.OrderByXH_StyleProcedures[i].XH + AInc;
                //if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedures[i].CFlag)) && this.OrderByXH_StyleProcedures[i].CFlag != this.OrderByXH_StyleProcedures[i + 1].CFlag)



                if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedures[i].CFlag)))
                {
                    // if (!((i == AIndex) && (this.OrderByXH_StyleProcedures[i].CFlag == this.OrderByXH_StyleProcedures[i - 1].CFlag)))
                    if (this.OrderByXH_StyleProcedures[i].CFlag != this.OrderByXH_StyleProcedures[AIndex].CFlag)
                    {
                        this.OrderByXH_StyleProcedures[i].CFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedures[i].CFlag) + AInc).ToString();
                    }
                }

                //這個判斷極其重要,每次在間時拆之前重算序號時,如果遇到可以做間時拆並且本來已經夾了工序,
                //他的JFlag不發生變化,保證間時拆後還是夾在一起  Add by David 2009-3-26 11:00
                if ((this.OrderByXH_StyleProcedures[i].JWorkSN > this.BestLineValue) &&
                    //(i == AIndex) &&
                     (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedures[i].JFlag))) &&
                     (this.OrderByXH_StyleProcedures[i].JFlag == this.OrderByXH_StyleProcedures[AIndex].JFlag))
                {
                    continue;
                }

                if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedures[i].JFlag)))
                {
                    this.OrderByXH_StyleProcedures[i].JFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedures[i].JFlag) + AInc).ToString();
                }


            }

        }



        /// <summary>
        /// 重算序號方法(E類工序)
        /// </summary>
        /// <param name="AIndex">開始的序號</param>
        /// <param name="AInc">每次遞增數</param>
        public void ResetXH_E(int AIndex, int AInc)
        {
            for (int i = this.OrderByXH_StyleProcedureEs.Count - 1; i >= AIndex; i--)
            {

                this.OrderByXH_StyleProcedureEs[i].XH = this.OrderByXH_StyleProcedureEs[i].XH + AInc;
                if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedureEs[i].CFlag)))
                {
                    // if (!((i == AIndex) && (this.OrderByXH_StyleProcedures[i].CFlag == this.OrderByXH_StyleProcedures[i - 1].CFlag)))
                    if (this.OrderByXH_StyleProcedureEs[i].CFlag != this.OrderByXH_StyleProcedureEs[AIndex].CFlag)
                    {
                        this.OrderByXH_StyleProcedureEs[i].CFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedureEs[i].CFlag) + AInc).ToString();
                    }
                }

                //這個判斷極其重要,每次在間時拆之前重算序號時,如果遇到可以做間時拆並且本來已經夾了工序,
                //他的JFlag不發生變化,保證間時拆後還是夾在一起  Add by David 2009-3-26 11:00
                if ((this.OrderByXH_StyleProcedureEs[i].JWorkSN > this.BestLineValue) &&
                    //(i == AIndex) &&
                     (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedureEs[i].JFlag))) &&
                     (this.OrderByXH_StyleProcedureEs[i].JFlag == this.OrderByXH_StyleProcedureEs[AIndex].JFlag))
                {
                    continue;
                }

                if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedureEs[i].JFlag)))
                {
                    this.OrderByXH_StyleProcedureEs[i].JFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedureEs[i].JFlag) + AInc).ToString();
                }


            }

        }


        /// <summary>
        /// 重算序號方法(F類工序)
        /// </summary>
        /// <param name="AIndex">開始的序號</param>
        /// <param name="AInc">每次遞增數</param>
        public void ResetXH_F(int AIndex, int AInc)
        {
            for (int i = this.OrderByXH_StyleProcedureFs.Count - 1; i >= AIndex; i--)
            {

                this.OrderByXH_StyleProcedureFs[i].XH = this.OrderByXH_StyleProcedureFs[i].XH + AInc;
                if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedureFs[i].CFlag)))
                {
                    // if (!((i == AIndex) && (this.OrderByXH_StyleProcedures[i].CFlag == this.OrderByXH_StyleProcedures[i - 1].CFlag)))
                    if (this.OrderByXH_StyleProcedureFs[i].CFlag != this.OrderByXH_StyleProcedureFs[AIndex].CFlag)
                    {
                        this.OrderByXH_StyleProcedureFs[i].CFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedureFs[i].CFlag) + AInc).ToString();
                    }
                }

                //這個判斷極其重要,每次在間時拆之前重算序號時,如果遇到可以做間時拆並且本來已經夾了工序,
                //他的JFlag不發生變化,保證間時拆後還是夾在一起  Add by David 2009-3-26 11:00
                if ((this.OrderByXH_StyleProcedureFs[i].JWorkSN > this.BestLineValue) &&
                    //(i == AIndex) &&
                     (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedureFs[i].JFlag))) &&
                     (this.OrderByXH_StyleProcedureFs[i].JFlag == this.OrderByXH_StyleProcedureFs[AIndex].JFlag))
                {
                    continue;
                }

                if (!(string.IsNullOrEmpty(this.OrderByXH_StyleProcedureFs[i].JFlag)))
                {
                    this.OrderByXH_StyleProcedureFs[i].JFlag = (Convert.ToInt32(this.OrderByXH_StyleProcedureFs[i].JFlag) + AInc).ToString();
                }

            }

        }



        private void ResetXH()
        {
            int i = 0;
            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                obj.XH = ++i;
            }
        }

        private void ResetXH_E()
        {
            int i = 0;
            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                obj.XH = ++i;
            }
        }

        private void ResetXH_F()
        {
            int i = 0;
            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                obj.XH = ++i;
            }
        }


        #endregion

        #region 自動間時拆

        ///// <summary>
        ///// 用於排序(內部使用)
        ///// </summary>
        ///// <param name="x"></param>
        ///// <param name="y"></param>
        ///// <returns></returns>
        //public int BisYHSAHSNComparison(StyleProcedure x, StyleProcedure y)
        //{
        //    if (x.BisYHMTM > y.BisYHMTM)
        //    {
        //        return -1;
        //    }
        //    else if (x.BisYHMTM < y.BisYHMTM)
        //    {
        //        return 1;
        //    }
        //    else
        //    {
        //        return 0;
        //    }
        //}

        /// <summary>
        /// 自動間時拆
        /// </summary>
        public void AutoJSC()
        {
            //在間時拆時才讓用戶選擇優化線
            frmSetBestLine fSetBestLine = new frmSetBestLine(this.OrderByXH_StyleProcedures);
            if (fSetBestLine.ShowDialog() == DialogResult.OK)
            {
                //MessageBox.Show("您設置的優化優為: " + fSetBestLine.SelectedValue);
                this.BestLineValue = fSetBestLine.SelectedValue; //優化優值


                System.Data.Linq.EntitySet<StyleProcedure> FloaterList = new System.Data.Linq.EntitySet<StyleProcedure>();
                string SaveJFlag = "-19";
                foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
                {
                    obj.BeforeJSCCFlag = obj.CFlag;
                    obj.BeforeJSCJFlag = obj.JFlag;

                    //if (obj.BisYHSAHSN > (this.BestLineValue ?? 0))
                    if (obj.JWorkSN > (this.BestLineValue ?? 0))
                    {
                        obj.JSCSAHSN = (this.BestLineValue ?? 0);
                        if ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag))
                        {
                            //obj.BeforeJSCCFlag = obj.CFlag;
                            //obj.BeforeJSCJFlag = obj.JFlag;
                            FloaterList.Add(obj);
                        }
                        else if ((obj.JFlag == null) || (obj.JFlag == ""))
                        {
                            //obj.BeforeJSCCFlag = obj.CFlag;
                            //obj.BeforeJSCJFlag = obj.JFlag;
                            FloaterList.Add(obj);
                        }

                        SaveJFlag = obj.JFlag;
                    }
                    else
                    {
                        //obj.JSCSAHSN = (obj.BisYHSAHSN ?? 0);
                        obj.JSCSAHSN = (obj.JWorkSN ?? 0);
                        SaveJFlag = "-19";
                    }
                }

                #region 處理Floater
                for (int i = 0; i < FloaterList.Count; i++)
                {
                    decimal FloaterSAH = Math.Round(((FloaterList[i].JWorkSN ?? 0) - (this.BestLineValue ?? 0)), 4); //Floater SAH
                    FloaterList[i].SplitOperation(FloaterSAH, (FloaterList[i].CWorkSN ?? 0) - FloaterSAH, FloaterSAH, (this.BestLineValue ?? 0), this.OrderByXH_StyleProcedures.IndexOf(FloaterList[i]) + i, this, i);
                }
                #endregion

                this.Phase = LBPhare.JSCLB.ToString();
                this.CalJSCBNCX();

            }

        }

        ////

        public void AutoJSC_E()
        {
            //在間時拆時才讓用戶選擇優化線
            frmSetBestLine fSetBestLine = new frmSetBestLine(this.OrderByXH_StyleProcedureEs);
            if (fSetBestLine.ShowDialog() == DialogResult.OK)
            {
                //MessageBox.Show("您設置的優化優為: " + fSetBestLine.SelectedValue);
                this.BestLineValue = fSetBestLine.SelectedValue; //優化優值


                System.Data.Linq.EntitySet<StyleProcedure_E> FloaterList = new System.Data.Linq.EntitySet<StyleProcedure_E>();
                string SaveJFlag = "-19";
                foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
                {
                    obj.BeforeJSCCFlag = obj.CFlag;
                    obj.BeforeJSCJFlag = obj.JFlag;

                    //if (obj.BisYHSAHSN > (this.BestLineValue ?? 0))
                    if (obj.JWorkSN > (this.BestLineValue ?? 0))
                    {
                        obj.JSCSAHSN = (this.BestLineValue ?? 0);
                        if ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag))
                        {
                            //obj.BeforeJSCCFlag = obj.CFlag;
                            //obj.BeforeJSCJFlag = obj.JFlag;
                            FloaterList.Add(obj);
                        }
                        else if ((obj.JFlag == null) || (obj.JFlag == ""))
                        {
                            //obj.BeforeJSCCFlag = obj.CFlag;
                            //obj.BeforeJSCJFlag = obj.JFlag;
                            FloaterList.Add(obj);
                        }

                        SaveJFlag = obj.JFlag;
                    }
                    else
                    {
                        //obj.JSCSAHSN = (obj.BisYHSAHSN ?? 0);
                        obj.JSCSAHSN = (obj.JWorkSN ?? 0);
                        SaveJFlag = "-19";
                    }
                }

                #region 處理Floater
                for (int i = 0; i < FloaterList.Count; i++)
                {
                    decimal FloaterSAH = Math.Round(((FloaterList[i].JWorkSN ?? 0) - (this.BestLineValue ?? 0)), 4); //Floater SAH
                    FloaterList[i].SplitOperation(FloaterSAH, (FloaterList[i].CWorkSN ?? 0) - FloaterSAH, FloaterSAH, (this.BestLineValue ?? 0), this.OrderByXH_StyleProcedureEs.IndexOf(FloaterList[i]) + i, this, i);
                }
                #endregion

                this.Phase = LBPhare.JSCLB.ToString();
                this.CalJSCBNCX_E();

            }

        }


        public void AutoJSC_F()
        {
            //在間時拆時才讓用戶選擇優化線
            frmSetBestLine fSetBestLine = new frmSetBestLine(this.OrderByXH_StyleProcedureFs);
            if (fSetBestLine.ShowDialog() == DialogResult.OK)
            {
                //MessageBox.Show("您設置的優化優為: " + fSetBestLine.SelectedValue);
                this.BestLineValue = fSetBestLine.SelectedValue; //優化優值


                System.Data.Linq.EntitySet<StyleProcedure_F> FloaterList = new System.Data.Linq.EntitySet<StyleProcedure_F>();
                string SaveJFlag = "-19";
                foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
                {
                    obj.BeforeJSCCFlag = obj.CFlag;
                    obj.BeforeJSCJFlag = obj.JFlag;

                    //if (obj.BisYHSAHSN > (this.BestLineValue ?? 0))
                    if (obj.JWorkSN > (this.BestLineValue ?? 0))
                    {
                        obj.JSCSAHSN = (this.BestLineValue ?? 0);
                        if ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag))
                        {
                            //obj.BeforeJSCCFlag = obj.CFlag;
                            //obj.BeforeJSCJFlag = obj.JFlag;
                            FloaterList.Add(obj);
                        }
                        else if ((obj.JFlag == null) || (obj.JFlag == ""))
                        {
                            //obj.BeforeJSCCFlag = obj.CFlag;
                            //obj.BeforeJSCJFlag = obj.JFlag;
                            FloaterList.Add(obj);
                        }

                        SaveJFlag = obj.JFlag;
                    }
                    else
                    {
                        //obj.JSCSAHSN = (obj.BisYHSAHSN ?? 0);
                        obj.JSCSAHSN = (obj.JWorkSN ?? 0);
                        SaveJFlag = "-19";
                    }
                }

                #region 處理Floater
                for (int i = 0; i < FloaterList.Count; i++)
                {
                    decimal FloaterSAH = Math.Round(((FloaterList[i].JWorkSN ?? 0) - (this.BestLineValue ?? 0)), 4); //Floater SAH
                    FloaterList[i].SplitOperation(FloaterSAH, (FloaterList[i].CWorkSN ?? 0) - FloaterSAH, FloaterSAH, (this.BestLineValue ?? 0), this.OrderByXH_StyleProcedureFs.IndexOf(FloaterList[i]) + i, this, i);
                }
                #endregion

                this.Phase = LBPhare.JSCLB.ToString();
                this.CalJSCBNCX_F();

            }

        }


        #region 取消自動間時拆
        /// <summary>
        /// 取消自動間時拆
        /// </summary>
        public void CancelAutoJSC()
        {
            decimal SaveFloater = -19;
            //string SaveBeforeJSCCFlag = "-19";
            //string SaveBeforeJSCJFlag = "-19";

            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                //obj.JSCSAHSN = 0;
                //obj.JSCBNCX = "";

                if (SaveFloater != -19)
                {
                    obj.CWorkSN = (obj.CWorkSN ?? 0) + SaveFloater;
                    SaveFloater = -19;
                }

                if (obj.GRDH.ToUpper() == "FLOATER")
                {
                    SaveFloater = (obj.CWorkSN ?? 0);
                    //    SaveBeforeJSCCFlag = obj.BeforeJSCCFlag;
                    //    SaveBeforeJSCJFlag = obj.BeforeJSCJFlag;
                }
                obj.CFlag = obj.BeforeJSCCFlag;
                obj.JFlag = obj.BeforeJSCJFlag;
            }

            for (int i = this.OrderByXH_StyleProcedures.Count - 1; i >= 0; i--)
            {
                if (this.OrderByXH_StyleProcedures[i].GRDH.ToUpper() == "FLOATER")
                {
                    //this.ResetXH(i + 1, -1);
                    this.StyleProcedures.Remove(this.OrderByXH_StyleProcedures[i]);
                }
            }
            this.ResetXH();

            //this.Phase = LBPhare.BisYHLB.ToString();
            this.Phase = LBPhare.CJLB.ToString();
        }



        //E工序

        public void CancelAutoJSC_E()
        {
            decimal SaveFloater = -19;
            //string SaveBeforeJSCCFlag = "-19";
            //string SaveBeforeJSCJFlag = "-19";

            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                //obj.JSCSAHSN = 0;
                //obj.JSCBNCX = "";

                if (SaveFloater != -19)
                {
                    obj.CWorkSN = (obj.CWorkSN ?? 0) + SaveFloater;
                    SaveFloater = -19;
                }

                if (obj.GRDH.ToUpper() == "FLOATER")
                {
                    SaveFloater = (obj.CWorkSN ?? 0);
                    //    SaveBeforeJSCCFlag = obj.BeforeJSCCFlag;
                    //    SaveBeforeJSCJFlag = obj.BeforeJSCJFlag;
                }
                obj.CFlag = obj.BeforeJSCCFlag;
                obj.JFlag = obj.BeforeJSCJFlag;
            }

            for (int i = this.OrderByXH_StyleProcedureEs.Count - 1; i >= 0; i--)
            {
                if (this.OrderByXH_StyleProcedureEs[i].GRDH.ToUpper() == "FLOATER")
                {
                    //this.ResetXH(i + 1, -1);
                    this.StyleProcedure_Es.Remove(this.OrderByXH_StyleProcedureEs[i]);
                }
            }
            this.ResetXH_E();
            //this.Phase = LBPhare.BisYHLB.ToString();
            this.Phase = LBPhare.CJLB.ToString();
        }


        //F工序

        public void CancelAutoJSC_F()
        {
            decimal SaveFloater = -19;
            //string SaveBeforeJSCCFlag = "-19";
            //string SaveBeforeJSCJFlag = "-19";

            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                if (SaveFloater != -19)
                {
                    obj.CWorkSN = (obj.CWorkSN ?? 0) + SaveFloater;
                    SaveFloater = -19;
                }

                if (obj.GRDH.ToUpper() == "FLOATER")
                {
                    SaveFloater = (obj.CWorkSN ?? 0);
                }
                obj.CFlag = obj.BeforeJSCCFlag;
                obj.JFlag = obj.BeforeJSCJFlag;
            }

            for (int i = this.OrderByXH_StyleProcedureFs.Count - 1; i >= 0; i--)
            {
                if (this.OrderByXH_StyleProcedureFs[i].GRDH.ToUpper() == "FLOATER")
                {
                    //this.ResetXH(i + 1, -1);
                    this.StyleProcedure_Fs.Remove(this.OrderByXH_StyleProcedureFs[i]);
                }
            }
            this.ResetXH_F();
            this.Phase = LBPhare.CJLB.ToString();
        }



        #endregion

        #endregion

        #region 自動平准化

        /// <summary>
        /// 自動平准化
        /// </summary>
        public void AutoPJH()
        {

            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                if (obj.TeamGSD.ToUpper() == "O")
                {
                    continue;
                }

                if (obj.GRDH != "Floater")
                {
                    obj.PJHMTM = Convert.ToInt32(obj.JSCSAHSN / this.BestLineValue * 100);
                    obj.PJHSAHSN = this.BestLineValue;

                }
                else
                {
                    obj.PJHMTM = 100;
                    obj.PJHSAHSN = this.BestLineValue;
                }
            }
            this.Phase = LBPhare.PJHLB.ToString();
        }



        public void AutoPJH_E()
        {
            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                if (obj.TeamGSD.ToUpper() == "O")
                {
                    continue;
                }

                if (obj.GRDH != "Floater")
                {
                    obj.PJHMTM = Convert.ToInt32(obj.JSCSAHSN / this.BestLineValue * 100);
                    obj.PJHSAHSN = this.BestLineValue;
                }
                else
                {
                    obj.PJHMTM = 100;
                    obj.PJHSAHSN = this.BestLineValue;
                }
            }
            this.Phase = LBPhare.PJHLB.ToString();
        }

        public void AutoPJH_F()
        {
            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                if (obj.TeamGSD.ToUpper() == "O")
                {
                    continue;
                }

                if (obj.GRDH != "Floater")
                {
                    obj.PJHMTM = Convert.ToInt32(obj.JSCSAHSN / this.BestLineValue * 100);
                    obj.PJHSAHSN = this.BestLineValue;
                }
                else
                {
                    obj.PJHMTM = 100;
                    obj.PJHSAHSN = this.BestLineValue;
                }
            }
            this.Phase = LBPhare.PJHLB.ToString();
        }

        /// <summary>
        /// 取消自動平准化
        /// </summary>
        public void CancelAutoPJH()
        {
            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                obj.PJHMTM = 0;
                obj.PJHSAHSN = 0;
            }
            this.Phase = LBPhare.JSCLB.ToString();
        }

        public void CancelAutoPJH_E()
        {
            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                obj.PJHMTM = 0;
                obj.PJHSAHSN = 0;
            }
            this.Phase = LBPhare.JSCLB.ToString();
        }

        public void CancelAutoPJH_F()
        {
            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                obj.PJHMTM = 0;
                obj.PJHSAHSN = 0;
            }
            this.Phase = LBPhare.JSCLB.ToString();
        }


        #endregion

        #region 计算拆夾後BN次序
        /// <summary>
        /// 计算拆夾後BN次序
        /// </summary>
        public void CalBNCX()
        {
            string SaveJFlag = "-19";
            int SaveWorkDH = 0;
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                if (obj.TeamGSD.ToUpper() != "O" && !list.Contains((obj.JWorkSN ?? 0)))
                {
                    list.Add((obj.JWorkSN ?? 0));
                }


                #region 計算工人代號
                if (obj.TeamGSD.ToUpper() == "O")
                {
                    obj.GRDH = "";
                }
                else
                {
                    if (string.IsNullOrEmpty(obj.JFlag) || ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag)))
                    {
                        SaveJFlag = obj.JFlag;
                        SaveWorkDH++;
                    }
                    if (SaveWorkDH < 10)
                    {
                        obj.GRDH = "W0" + SaveWorkDH;
                    }
                    else
                    {
                        obj.GRDH = "W" + SaveWorkDH;
                    }
                }
                #endregion

                #region 計算間時産量
                if (obj.GSDSAHSN == 0)
                {
                    obj.JSCL = 0;
                }
                else
                {
                    obj.JSCL = Math.Round((0.5M / (obj.GSDSAHSN ?? 0)), 2);
                }
                #endregion
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
                {
                    if (obj.TeamGSD.ToUpper() == "O") continue;

                    if ((obj.JWorkSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.BNCX = "N.A.";
                        }
                        else
                        {
                            obj.BNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }


        }




        #region E工序
        public void CalBNCX_E()
        {
            string SaveJFlag = "-19";
            int SaveWorkDH = 0;
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                if (obj.TeamGSD.ToUpper() != "O" && !list.Contains((obj.JWorkSN ?? 0)))
                {
                    list.Add((obj.JWorkSN ?? 0));
                }


                #region 計算工人代號
                if (obj.TeamGSD.ToUpper() == "O")
                {
                    obj.GRDH = "";
                }
                else
                {
                    if (string.IsNullOrEmpty(obj.JFlag) || ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag)))
                    {
                        SaveJFlag = obj.JFlag;
                        SaveWorkDH++;
                    }
                    if (SaveWorkDH < 10)
                    {
                        obj.GRDH = "W0" + SaveWorkDH;
                    }
                    else
                    {
                        obj.GRDH = "W" + SaveWorkDH;
                    }
                }
                #endregion

                #region 計算間時産量
                if (obj.GSDSAHSN == 0)
                {
                    obj.JSCL = 0;
                }
                else
                {
                    obj.JSCL = Math.Round((0.5M / (obj.GSDSAHSN ?? 0)), 2);
                }
                #endregion
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
                {
                    if (obj.TeamGSD.ToUpper() == "O") continue;

                    if ((obj.JWorkSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.BNCX = "N.A.";
                        }
                        else
                        {
                            obj.BNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }


        }
        #endregion

        #region F工序
        public void CalBNCX_F()
        {
            string SaveJFlag = "-19";
            int SaveWorkDH = 0;
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                if (obj.TeamGSD.ToUpper() != "O" && !list.Contains((obj.JWorkSN ?? 0)))
                {
                    list.Add((obj.JWorkSN ?? 0));
                }


                #region 計算工人代號
                if (obj.TeamGSD.ToUpper() == "O")
                {
                    obj.GRDH = "";
                }
                else
                {
                    if (string.IsNullOrEmpty(obj.JFlag) || ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag)))
                    {
                        SaveJFlag = obj.JFlag;
                        SaveWorkDH++;
                    }
                    if (SaveWorkDH < 10)
                    {
                        obj.GRDH = "W0" + SaveWorkDH;
                    }
                    else
                    {
                        obj.GRDH = "W" + SaveWorkDH;
                    }
                }
                #endregion

                #region 計算間時産量
                if (obj.GSDSAHSN == 0)
                {
                    obj.JSCL = 0;
                }
                else
                {
                    obj.JSCL = Math.Round((0.5M / (obj.GSDSAHSN ?? 0)), 2);
                }
                #endregion
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
                {
                    if (obj.TeamGSD.ToUpper() == "O") continue;

                    if ((obj.JWorkSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.BNCX = "N.A.";
                        }
                        else
                        {
                            obj.BNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }


        }
        #endregion



        #endregion

        #region 计算優化後BN次序
        /// <summary>
        /// 计算優化後BN次序
        /// </summary>
        public void CalYHBNCX()
        {
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                if (obj.TeamGSD.ToUpper() != "O" && !list.Contains((obj.YHSAHSN ?? 0)))
                {
                    list.Add((obj.YHSAHSN ?? 0));
                }
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            string SaveJFlag = "-19";
            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
                {
                    if (obj.TeamGSD.ToUpper() == "O") continue;

                    if ((obj.YHSAHSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.YHBNCX = "N.A.";
                        }
                        else
                        {
                            obj.YHBNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }
        }


        //E工序
        public void CalYHBNCX_E()
        {
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                if (obj.TeamGSD.ToUpper() != "O" && !list.Contains((obj.YHSAHSN ?? 0)))
                {
                    list.Add((obj.YHSAHSN ?? 0));
                }
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            string SaveJFlag = "-19";
            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
                {
                    if (obj.TeamGSD.ToUpper() == "O") continue;

                    if ((obj.YHSAHSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.YHBNCX = "N.A.";
                        }
                        else
                        {
                            obj.YHBNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }
        }

        //F工序
        public void CalYHBNCX_F()
        {
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                if (obj.TeamGSD.ToUpper() != "O" && !list.Contains((obj.YHSAHSN ?? 0)))
                {
                    list.Add((obj.YHSAHSN ?? 0));
                }
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            string SaveJFlag = "-19";
            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
                {
                    if (obj.TeamGSD.ToUpper() == "O") continue;

                    if ((obj.YHSAHSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.YHBNCX = "N.A.";
                        }
                        else
                        {
                            obj.YHBNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }
        }


        private int CompareBNCX(decimal x, decimal y)
        {
            if (x > y)
            {
                return -1;
            }
            else if (x < y)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }

        #endregion

        #region 计算間時拆後BN次序
        /// <summary>
        /// 计算間時拆後BN次序
        /// </summary>
        public void CalJSCBNCX()
        {
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                if (obj.TeamGSD.ToUpper() != "O" && obj.GRDH.ToUpper() != "FLOATER" && !list.Contains((obj.JSCSAHSN ?? 0)))
                {
                    list.Add((obj.JSCSAHSN ?? 0));
                }
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            string SaveJFlag = "-19";
            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
                {
                    if (obj.TeamGSD.ToUpper() == "O" || obj.GRDH.ToUpper() == "FLOATER") continue;

                    if ((obj.JSCSAHSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.JSCBNCX = "N.A.";
                        }
                        else
                        {
                            obj.JSCBNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }
        }



        public void CalJSCBNCX_E()
        {
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
            {
                if (obj.TeamGSD.ToUpper() != "O" && obj.GRDH.ToUpper() != "FLOATER" && !list.Contains((obj.JSCSAHSN ?? 0)))
                {
                    list.Add((obj.JSCSAHSN ?? 0));
                }
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            string SaveJFlag = "-19";
            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure_E obj in this.OrderByXH_StyleProcedureEs)
                {
                    if (obj.TeamGSD.ToUpper() == "O" || obj.GRDH.ToUpper() == "FLOATER") continue;

                    if ((obj.JSCSAHSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.JSCBNCX = "N.A.";
                        }
                        else
                        {
                            obj.JSCBNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }
        }


        public void CalJSCBNCX_F()
        {
            List<decimal> list = new List<decimal>();
            foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
            {
                if (obj.TeamGSD.ToUpper() != "O" && obj.GRDH.ToUpper() != "FLOATER" && !list.Contains((obj.JSCSAHSN ?? 0)))
                {
                    list.Add((obj.JSCSAHSN ?? 0));
                }
            }
            list.Sort(CompareBNCX);
            decimal MinBNCXValue = list[list.Count - 1];

            string SaveJFlag = "-19";
            int tempCount = 0;
            int RealBNCX = 1;

            for (int i = 0; i < list.Count; i++)
            {
                RealBNCX += tempCount;
                tempCount = 0;
                foreach (StyleProcedure_F obj in this.OrderByXH_StyleProcedureFs)
                {
                    if (obj.TeamGSD.ToUpper() == "O" || obj.GRDH.ToUpper() == "FLOATER") continue;

                    if ((obj.JSCSAHSN ?? 0) == list[i])
                    {
                        if (list[i] == MinBNCXValue)
                        {
                            obj.JSCBNCX = "N.A.";
                        }
                        else
                        {
                            obj.JSCBNCX = "BN" + RealBNCX;
                        }

                        if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                        {
                            tempCount++;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }
            }
        }




        #endregion

        #region 計算摘要

        /// <summary>
        /// 計算摘要
        /// </summary>
        public void CalSummary()
        {
            List<StyleProcedure> InfoList = OrderByXH_StyleProcedures;

            if (InfoList.Count == 0) return;


            string SaveCFlag = "-19";     //保存拆標誌
            string SaveJFlag = "-19";     //保存夾標誌

            #region 需要計算的值先清零
            this._Sum_GSDLDL = 0;
            this._Sum_GSDSAH = 0;
            this._Sum_GSDSAH_A = 0;
            this._Sum_GSDSAH_B = 0;
            this._Sum_GSDSAH_C = 0;

            this._Sum_CJLDL = 0;
            this._Sum_GSDLDL = 0;
            this._CJJSCL = 0;

            //this._Sum_YHSAH = 0;
            //this._Sum_YHSAH_A = 0;
            //this._Sum_YHSAH_B = 0;
            //this._Sum_YHSAH_C = 0;

            //this._Sum_BisYHSAH = 0;
            //this._Sum_BisYHSAH_A = 0;
            //this._Sum_BisYHSAH_B = 0;
            //this._Sum_BisYHSAH_C = 0;

            this._Sum_JSCSAH = 0;
            this._Sum_JSCLDL = 0;
            this._Sum_JSCFloater = 0;

            this._FloaterCount_PR = 0;
            this._FloaterCount_DZ = 0;

            //this._YHMTMCount = 0;
            //this._BisYHMaxMTM = 0;
            //this._BisYHDownLDL = 0;
            //this._YHMaxMTM = 0;

            #endregion

            List<decimal> GSDSAHList = new List<decimal>();
            List<decimal> CJSAHList = new List<decimal>();
            List<decimal> YHSAHList = new List<decimal>();
            List<decimal> BisYHSAHList = new List<decimal>();
            List<decimal> JSCSAHList = new List<decimal>();
            List<decimal> PJHSAHList = new List<decimal>();

            Summary CurSummary;
            this.SummaryList.Clear();

            foreach (StyleProcedure obj in InfoList)
            {
                //首先看有沒有這种衣車，沒有就增加到SummaryList
                if (this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; }) == null)
                {
                    Summary summary = new Summary();
                    summary.YCDM = obj.YCDM;
                    summary.YCType = obj.YCType;
                    this.SummaryList.Add(summary);
                }


                if (string.IsNullOrEmpty(obj.TeamGSD) || obj.TeamGSD.ToUpper() == "O" || obj.GRDH == "Floater")
                {
                    if (obj.GRDH == "Floater")
                    {
                        JSCSAHList.Add((obj.JSCSAHSN ?? 0));
                        PJHSAHList.Add((obj.PJHSAHSN ?? 0));
                        this._Sum_JSCSAH += (obj.JSCSAHSN ?? 0);
                        this._Sum_JSCFloater += (obj.LDL ?? 0);

                        //Floater工作位
                        CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                        if (CurSummary != null)
                        {
                            CurSummary.BestLBFloaterAreaYCCount++;
                        }

                    }
                    //SaveCFlag = obj.CFlag;
                    //SaveJFlag = obj.JFlag;
                    continue;
                }
                //else
                //{
                //    //得到優化後的最大MTM
                //    if ((obj.YHMTM??0) > this._YHMaxMTM)
                //    {
                //        this._YHMaxMTM = (obj.YHMTM ?? 0);
                //    }

                //    //得到二度優化的最大MTM
                //    if ((obj.BisYHMTM??0) > this._BisYHMaxMTM)
                //    {
                //        this._BisYHMaxMTM = (obj.BisYHMTM ?? 0);
                //    }
                //}

                if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                {

                    CJSAHList.Add((obj.JWorkSN ?? 0));
                    JSCSAHList.Add((obj.JSCSAHSN ?? 0));

                    ////if (obj.TeamGSD.ToUpper() != "O" && obj.TeamGSD.ToUpper() != "O")
                    ////{
                    this._Sum_CJLDL++; //拆夾後 勞動力合

                    //if (obj.YHMTM >= 104 && obj.YHMTM <= 120)
                    //{
                    //    this._YHMTMCount++;  //優化後MTM(104-120)人數
                    //}

                    //if (obj.BisYHMTM >= 104 && obj.BisYHMTM <= 120)
                    //{
                    //    this._BisYHDownLDL++; //二度優化後MTM(104-120)人數
                    //}
                    ////}

                    //if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.YHLB)
                    //{
                    //    YHSAHList.Add((obj.YHSAHSN ?? 0));
                    //    this._Sum_YHSAH += (obj.YHSAHSN ?? 0);        //優化SAH合計(不含包裝SAH)


                    //    if (obj.TeamGSD.ToUpper() == "A")
                    //    {
                    //        this._Sum_YHSAH_A += (obj.YHSAHSN ?? 0);  //優化SAH A組SAH小值
                    //    }

                    //    if (obj.TeamGSD.ToUpper() == "B")
                    //    {
                    //        this._Sum_YHSAH_B += (obj.YHSAHSN ?? 0);  //優化SAH B組SAH小計
                    //    }

                    //    if (obj.TeamGSD.ToUpper() == "C")
                    //    {
                    //        this._Sum_YHSAH_C += (obj.YHSAHSN ?? 0);  //優化SAH C組SAH小計
                    //    }
                    //}
                    //if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.BisYHLB)
                    //{
                    //    BisYHSAHList.Add((obj.BisYHSAHSN ?? 0));
                    //    this._Sum_BisYHSAH += (obj.BisYHSAHSN ?? 0);
                    //}
                }

                if (string.IsNullOrEmpty(obj.CFlag) || obj.CFlag != SaveCFlag)
                {
                    GSDSAHList.Add((obj.GSDSAHSN ?? 0));

                    this._Sum_GSDSAH += (obj.GSDSAHSN ?? 0); //標準SAH合計(不含包裝SAH)
                    this._Sum_GSDLDL++;               //標準SAH 勞動力合計


                    if (obj.TeamGSD.ToUpper() == "A")
                    {
                        this._Sum_GSDSAH_A += (obj.GSDSAHSN ?? 0);  //標準SAH A組SAH小計
                    }

                    if (obj.TeamGSD.ToUpper() == "B")
                    {
                        this._Sum_GSDSAH_B += (obj.GSDSAHSN ?? 0);  //標準SAH B組SAH小計
                    }

                    if (obj.TeamGSD.ToUpper() == "C")
                    {
                        this._Sum_GSDSAH_C += (obj.GSDSAHSN ?? 0);  //標準SAH C組SAH小計
                    }

                    //未拆夾工作位
                    CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                    if (CurSummary != null)
                    {
                        CurSummary.NoneLBYCCount++;
                    }
                }

                //拆夾後工作位
                CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                if ((obj.GZW ?? 0) != 0) //主區
                {
                    if (CurSummary != null)
                    {
                        CurSummary.CJLBMainAreaYCCount++;
                    }
                }
                else if ((obj.GZW_Support ?? 0) != 0)  //else if (obj.GZW_Support != 0) //支援區
                {
                    if (CurSummary != null)
                    {
                        CurSummary.CJLBSupportAreaYCCount++;
                    }
                }
                else if ((obj.GZW_Floater ?? 0) != 0)
                {
                    if (CurSummary != null)
                    {
                        CurSummary.BestLBFloaterAreaYCCount++;
                    }
                }

                SaveCFlag = obj.CFlag;
                SaveJFlag = obj.JFlag;
            }

            #region ?算A組、B組、C組 SAH 小計(自動平衡) B?也跟著算出來 (不用了)
            //計算A組、B組、C組 SAH 小計(自動平衡)
            //計算方法：
            //  1.先計算出T項優化SAH/工序的合計(不包含 組別GSD = O) 上面已經計算出來了Sum_YHSAHSN
            //  2.要保證：Sum(A) < Sum(B) < Sum(C)
            //  3.Sum(A)要最大限度的接近 Sum_YHSAHSN / 3
            //  4.Sum(B)要大於 Sum_YHSAHSN / 3
            //SaveJFlag = "-19";
            //int SaveAXH = 0, SaveBXH = 0;
            //decimal Sum_BisYHSAHSN_AVG = this._Sum_BisYHSAH / 3;
            //decimal temp = 0;
            //string SaveTempTeamYH = "";
            //bool hasTeamC = this.HasTeamC();
            //foreach (StyleProcedure obj in InfoList)
            //{
            //    if (string.IsNullOrEmpty(obj.JFlag) || ((obj.JFlag == null ? "" : obj.JFlag) != (SaveJFlag == null ? "" : SaveJFlag)))
            //    {
            //        if (obj.TeamGSD.ToUpper() != "O" && temp < Sum_BisYHSAHSN_AVG)
            //        {
            //            this._Sum_BisYHSAH_A += (obj.BisYHSAHSN ?? 0); //計算二度優化SAH/工序的合計(組別優化後 = A)
            //            SaveAXH = (obj.XH ?? 0);
            //            obj.TeamYH = "A";
            //            temp += (obj.BisYHSAHSN ?? 0);
            //            SaveTempTeamYH = "A";
            //        }
            //        else
            //        {
            //            this._Sum_BisYHSAH_B += (obj.BisYHSAHSN ?? 0); //計算二度優化SAH/工序的合計(組別優化後 = B)
            //            obj.TeamYH = "B";
            //            SaveTempTeamYH = "B";
            //            if (hasTeamC && this._Sum_BisYHSAH_B > Sum_BisYHSAHSN_AVG)
            //            {
            //                SaveBXH = (obj.XH ?? 0);
            //                for (int j = SaveBXH - 1; j < InfoList.Count; j++)
            //                {
            //                    if (InfoList[j].TeamGSD.ToUpper() != "O")
            //                    {
            //                        InfoList[j].TeamYH = "C";
            //                    }
            //                }
            //                break;
            //            }
            //        }
            //    }
            //    else
            //    {
            //        obj.TeamYH = SaveTempTeamYH;
            //    }
            //    SaveJFlag = obj.JFlag;
            //}
            //if (hasTeamC)
            //{
            //    this._Sum_BisYHSAH_C += this._Sum_BisYHSAH - this._Sum_BisYHSAH_A - this._Sum_BisYHSAH_B; //計算二度優化SAH/工序的合計(組別優化後 = C)
            //}
            //else
            //{
            //    this._Sum_BisYHSAH_C = 0;
            //}

            ////平衡演算法
            //if (hasTeamC)
            //{
            //    if (!(this._Sum_BisYHSAH_A == 0 && this._Sum_BisYHSAH_B == 0 && this._Sum_BisYHSAH_C == 0))
            //    {
            //        while (!(this._Sum_BisYHSAH_A < this._Sum_BisYHSAH_B && this._Sum_BisYHSAH_B < this._Sum_BisYHSAH_C))
            //        {
            //            StyleProcedure objA = InfoList[SaveAXH - 1];
            //            this._Sum_BisYHSAH_A -= (objA.BisYHSAHSN ?? 0);
            //            objA.TeamYH = "B";
            //            //objA.Save();//zrtag 

            //            StyleProcedure objB = StyleProcedures[SaveBXH - 1];
            //            this._Sum_BisYHSAH_B = this._Sum_BisYHSAH_B - (objB.BisYHSAHSN ?? 0) + (objA.BisYHSAHSN ?? 0);
            //            objB.TeamYH = "C";
            //            //zrtag objB.Save();
            //            this._Sum_BisYHSAH_C += (InfoList[SaveBXH - 1].BisYHSAHSN ?? 0);

            //            SaveAXH--;
            //            SaveBXH--;
            //        }
            //    }
            //}
            #endregion

            GSDSAHList.Sort();                                     //標準GSDSAH升序排列
            this._GSDMaxZJ = GSDSAHList[GSDSAHList.Count - 1];     //標準SAH 最大樽頸
            this._GSDMinZJ = GSDSAHList[1];                        //標準SAH 最小樽頸 
            this._GSDMinSAH = GSDSAHList[0];                       //標準SAH 最小SAH
            this._GSDJSCL = this._Sum_GSDSAH * this.Sum_GSDLDL == 0 ? 0 : Math.Round(0.5M / this._Sum_GSDSAH * this.Sum_GSDLDL, 2); //標準SAH 拉節時産量(件)
            //this._GSDJSCL = Math.Round(this.Sum_GSDSAH * this.Sum_GSDLDL, 2);           //標準SAH 拉節時産量(件)
            this._GSDLPHS = this._GSDMaxZJ * this._Sum_GSDLDL == 0 ? 0 : Math.Round(this._Sum_GSDSAH / (this._GSDMaxZJ * this._Sum_GSDLDL) * 100, 2);   //標準SAH LB%拉平衡率
            this._GSDSAHZWS = this._Sum_GSDLDL == 0 ? 0 : Math.Round(this._Sum_GSDSAH / this._Sum_GSDLDL, 4);     //標準SAH中位數(參考) 

            //if (Commands.ConvertLBPhare(this.Phase) > LBPhare.NoneLB)
            //{
            CJSAHList.Sort();                                      //拆夾後GSDSAH升序排列
            this._CJMaxZJ = CJSAHList[CJSAHList.Count - 1];        //拆夾後SAH 最大樽頸
            this._CJMinZJ = CJSAHList[1];                          //拆夾後SAH 最小樽頸 
            this._CJMinSAH = CJSAHList[0];                         //拆夾後SAH 最小SAH   
            this._CJJSCL = this.Sum_CJSAH * this._Sum_CJLDL == 0 ? 0 : Math.Round(0.5M / this.Sum_CJSAH * this._Sum_CJLDL, 2);  //拆夾後 拉節時産量(件)
            //this._CJJSCL = Math.Round(this.Sum_CJSAH * this._Sum_CJLDL, 2);           //拆夾後 拉節時産量(件)
            this._CJLPHS = this._CJMaxZJ * this._Sum_CJLDL == 0 ? 0 : Math.Round(this.Sum_CJSAH / (this._CJMaxZJ * this._Sum_CJLDL) * 100, 2);   //拆夾後SAH LB%拉平衡率
            this._CJSAHZWS = this._Sum_CJLDL == 0 ? 0 : Math.Round(this.Sum_CJSAH / this._Sum_CJLDL, 4);      //拆夾後SAH中位數(參考) 
            //}

            //if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.YHLB)
            //{
            //    YHSAHList.Sort();                                      //優化後GSDSAH升序排列
            //    this._YHMaxZJ = YHSAHList[YHSAHList.Count - 1];        //優化後SAH 最大樽頸
            //    this._YHMinZJ = YHSAHList[1];                          //優化後SAH 最小樽頸 
            //    this._YHMinSAH = YHSAHList[0];                         //優化後SAH 最小SAH   
            //    this._YHJSCL = (this.Sum_YHSAH * this.Sum_YHLDL == 0) ? 0 :
            //        Math.Round(0.5M / this.Sum_YHSAH * this.Sum_YHLDL, 2);    //優化後 拉節時産量(件)
            //    //this._YHJSCL = Math.Round(this.Sum_YHSAH * this.Sum_YHLDL, 2);  //優化後 拉節時産量(件)

            //    this._YHLPHS = Math.Round(this.Sum_YHSAH / (this._YHMaxZJ * this.Sum_YHLDL) * 100, 2);   //優化後SAH LB%拉平衡率
            //    this._YHSAHZWS = Math.Round(this.Sum_YHSAH / this.Sum_YHLDL, 4);      //優化後SAH中位數(參考) 
            //}
            //if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.BisYHLB)
            //{
            //    BisYHSAHList.Sort();                                      //優化後GSDSAH升序排列
            //    this._BisYHMaxZJ = BisYHSAHList[BisYHSAHList.Count - 1];  //優化後SAH 最大樽頸
            //    this._BisYHMinZJ = BisYHSAHList[1];                       //優化後SAH 最小樽頸 
            //    this._BisYHMinSAH = BisYHSAHList[0];                      //優化後SAH 最小SAH   
            //    this._BisYHJSCL = (this.Sum_BisYHSAH * this.Sum_BisYHLDL == 0) ? 0 :
            //        Math.Round(0.5M / this.Sum_BisYHSAH * this.Sum_BisYHLDL, 2);  //優化後 拉節時産量(件)
            //    //this._BisYHJSCL = Math.Round(this.Sum_BisYHSAH * this.Sum_BisYHLDL, 2);  //優化後 拉節時産量(件)
            //    this._BisYHLPHS = Math.Round(this.Sum_BisYHSAH / (this._BisYHMaxZJ * this.Sum_BisYHLDL) * 100, 2);   //優化後SAH LB%拉平衡率
            //    this._BisYHSAHZWS = Math.Round(this.Sum_BisYHSAH / this.Sum_BisYHLDL, 4);      //優化後SAH中位數(參考) 
            //}
            if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.JSCLB)
            {
                //this._Sum_JSCSAH += this.Sum_YHSAH;
                //this._Sum_JSCLDL += this.Sum_BisYHLDL;
                this._Sum_JSCSAH += this.Sum_CJSAH;
                this._Sum_JSCLDL += this.Sum_CJLDL;

                JSCSAHList.Sort();
                this._JSCMaxZJ = JSCSAHList[JSCSAHList.Count - 1];    //間時拆SAH 最大樽頸
                this._JSCMinZJ = JSCSAHList[1];                       //間時拆SAH 最小樽頸 
                this._JSCMinSAH = JSCSAHList[0];                      //間時拆SAH 最小SAH   
                this._JSCJSCL = (this.Sum_JSCSAH * this._Sum_JSCLDL == 0) ? 0 :
                    Math.Round(0.5M / this.Sum_JSCSAH * this.Sum_JSCLDL, 2);       //間時拆 拉節時産量(件)
                //this._JSCJSCL = Math.Round(this.Sum_YHSAH * this.Sum_JSCLDL, 2);  //間時拆 拉節時産量(件)
                this._JSCLPHS = this._JSCMaxZJ * this.Sum_JSCLDL == 0 ? 0 : Math.Round(this.Sum_JSCSAH / (this._JSCMaxZJ * this.Sum_JSCLDL) * 100, 2);   //間時拆SAH LB%拉平衡率
                this._JSCSAHZWS = this.Sum_JSCLDL == 0 ? 0 : Math.Round(this.Sum_JSCSAH / this.Sum_JSCLDL, 4); //間時拆SAH中位數(參考) 
            }
            if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.PJHLB)
            {
                PJHSAHList.Sort();
                if (PJHSAHList.Count == 0)//所有工序的平准化SAH都是相等的，且等于優化指標線值的情况。
                {
                    this._PJHMaxZJ = this.BestLineValue ?? 0;
                    this._PJHMinZJ = this._PJHMaxZJ;
                    this._PJHMinSAH = this._PJHMinZJ;
                }
                else  //正常情况
                {
                    this._PJHMaxZJ = PJHSAHList[PJHSAHList.Count - 1];   //平准化SAH 最大樽頸zrtag

                    if (PJHSAHList.Count > 1)
                    {
                        this._PJHMinZJ = PJHSAHList[1];                  //平准化SAH 最小樽頸 
                    }
                    else
                    {
                        this._PJHMinZJ = 0;// PJHSAHList[0];             //平准化SAH 最小樽頸 

                    }

                    this._PJHMinSAH = PJHSAHList[0];                     //平准化SAH 最小SAH     
                }
                this._PJHJSCL = this.Sum_PJHSAH * this.Sum_PJHLDL == 0 ? 0 : Math.Round(0.5M / this.Sum_PJHSAH * this.Sum_PJHLDL, 2);  //平准化 拉節時産量(件)
                this._PJHLPHS = this._PJHMaxZJ * this.Sum_PJHLDL == 0 ? 0 : Math.Round(this.Sum_PJHSAH / (this._PJHMaxZJ * this.Sum_PJHLDL) * 100, 2);  //平准化SAH LB%拉平衡率
                this._PJHSAHZWS = this.Sum_PJHLDL == 0 ? 0 : Math.Round(this.Sum_PJHSAH / this.Sum_PJHLDL, 4);                         //平准化SAH中位數(參考) 
            }

        }


        //工序E --計算摘要
        public void CalSummary_E()
        {
            List<StyleProcedure_E> InfoList = OrderByXH_StyleProcedureEs;

            if (InfoList.Count == 0) return;


            string SaveCFlag = "-19";     //保存拆標誌
            string SaveJFlag = "-19";     //保存夾標誌

            #region 需要計算的值先清零
            this._Sum_GSDLDL = 0;
            this._Sum_GSDSAH = 0;
            this._Sum_GSDSAH_A = 0;
            this._Sum_GSDSAH_B = 0;
            this._Sum_GSDSAH_C = 0;

            this._Sum_CJLDL = 0;
            this._Sum_GSDLDL = 0;
            this._CJJSCL = 0;

            this._Sum_JSCSAH = 0;
            this._Sum_JSCLDL = 0;
            this._Sum_JSCFloater = 0;

            this._FloaterCount_PR = 0;
            this._FloaterCount_DZ = 0;


            #endregion

            List<decimal> GSDSAHList = new List<decimal>();
            List<decimal> CJSAHList = new List<decimal>();
            List<decimal> YHSAHList = new List<decimal>();
            List<decimal> BisYHSAHList = new List<decimal>();
            List<decimal> JSCSAHList = new List<decimal>();
            List<decimal> PJHSAHList = new List<decimal>();

            Summary CurSummary;
            this.SummaryList.Clear();

            foreach (StyleProcedure_E obj in InfoList)
            {
                //首先看有沒有這种衣車，沒有就增加到SummaryList
                if (this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; }) == null)
                {
                    Summary summary = new Summary();
                    summary.YCDM = obj.YCDM;
                    summary.YCType = obj.YCType;
                    this.SummaryList.Add(summary);
                }


                if (string.IsNullOrEmpty(obj.TeamGSD) || obj.TeamGSD.ToUpper() == "O" || obj.GRDH == "Floater")
                {
                    if (obj.GRDH == "Floater")
                    {
                        JSCSAHList.Add((obj.JSCSAHSN ?? 0));
                        PJHSAHList.Add((obj.PJHSAHSN ?? 0));
                        this._Sum_JSCSAH += (obj.JSCSAHSN ?? 0);
                        this._Sum_JSCFloater += (obj.LDL ?? 0);

                        //Floater工作位
                        CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                        if (CurSummary != null)
                        {
                            CurSummary.BestLBFloaterAreaYCCount++;
                        }

                    }
                    continue;
                }


                if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                {

                    CJSAHList.Add((obj.JWorkSN ?? 0));
                    JSCSAHList.Add((obj.JSCSAHSN ?? 0));
                    this._Sum_CJLDL++; //拆夾後 勞動力合

                }

                if (string.IsNullOrEmpty(obj.CFlag) || obj.CFlag != SaveCFlag)
                {
                    GSDSAHList.Add((obj.GSDSAHSN ?? 0));

                    this._Sum_GSDSAH += (obj.GSDSAHSN ?? 0); //標準SAH合計(不含包裝SAH)
                    this._Sum_GSDLDL++;               //標準SAH 勞動力合計


                    if (obj.TeamGSD.ToUpper() == "A")
                    {
                        this._Sum_GSDSAH_A += (obj.GSDSAHSN ?? 0);  //標準SAH A組SAH小計
                    }

                    if (obj.TeamGSD.ToUpper() == "B")
                    {
                        this._Sum_GSDSAH_B += (obj.GSDSAHSN ?? 0);  //標準SAH B組SAH小計
                    }

                    if (obj.TeamGSD.ToUpper() == "C")
                    {
                        this._Sum_GSDSAH_C += (obj.GSDSAHSN ?? 0);  //標準SAH C組SAH小計
                    }

                    //未拆夾工作位
                    CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                    if (CurSummary != null)
                    {
                        CurSummary.NoneLBYCCount++;
                    }
                }

                //拆夾後工作位
                CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                if ((obj.GZW ?? 0) != 0) //主區
                {
                    if (CurSummary != null)
                    {
                        CurSummary.CJLBMainAreaYCCount++;
                    }
                }
                else if ((obj.GZW_Support ?? 0) != 0)  //else if (obj.GZW_Support != 0) //支援區
                {
                    if (CurSummary != null)
                    {
                        CurSummary.CJLBSupportAreaYCCount++;
                    }
                }
                else if ((obj.GZW_Floater ?? 0) != 0)
                {
                    if (CurSummary != null)
                    {
                        CurSummary.BestLBFloaterAreaYCCount++;
                    }
                }

                SaveCFlag = obj.CFlag;
                SaveJFlag = obj.JFlag;
            }


            GSDSAHList.Sort();                                     //標準GSDSAH升序排列
            this._GSDMaxZJ = GSDSAHList[GSDSAHList.Count - 1];     //標準SAH 最大樽頸
            this._GSDMinZJ = GSDSAHList[1];                        //標準SAH 最小樽頸 
            this._GSDMinSAH = GSDSAHList[0];                       //標準SAH 最小SAH
            this._GSDJSCL = this._Sum_GSDSAH * this.Sum_GSDLDL == 0 ? 0 : Math.Round(0.5M / this._Sum_GSDSAH * this.Sum_GSDLDL, 2); //標準SAH 拉節時産量(件)
            //this._GSDJSCL = Math.Round(this.Sum_GSDSAH * this.Sum_GSDLDL, 2);           //標準SAH 拉節時産量(件)
            this._GSDLPHS = this._GSDMaxZJ * this._Sum_GSDLDL == 0 ? 0 : Math.Round(this._Sum_GSDSAH / (this._GSDMaxZJ * this._Sum_GSDLDL) * 100, 2);   //標準SAH LB%拉平衡率
            this._GSDSAHZWS = this._Sum_GSDLDL == 0 ? 0 : Math.Round(this._Sum_GSDSAH / this._Sum_GSDLDL, 4);     //標準SAH中位數(參考) 

            //if (Commands.ConvertLBPhare(this.Phase) > LBPhare.NoneLB)
            //{
            CJSAHList.Sort();                                      //拆夾後GSDSAH升序排列
            this._CJMaxZJ = CJSAHList[CJSAHList.Count - 1];        //拆夾後SAH 最大樽頸
            this._CJMinZJ = CJSAHList[1];                          //拆夾後SAH 最小樽頸 
            this._CJMinSAH = CJSAHList[0];                         //拆夾後SAH 最小SAH   
            this._CJJSCL = this.Sum_CJSAH * this._Sum_CJLDL == 0 ? 0 : Math.Round(0.5M / this.Sum_CJSAH * this._Sum_CJLDL, 2);  //拆夾後 拉節時産量(件)
            //this._CJJSCL = Math.Round(this.Sum_CJSAH * this._Sum_CJLDL, 2);           //拆夾後 拉節時産量(件)
            this._CJLPHS = (this._CJMaxZJ * this._Sum_CJLDL == 0) ? 0 : Math.Round(this.Sum_CJSAH / (this._CJMaxZJ * this._Sum_CJLDL) * 100, 2);   //拆夾後SAH LB%拉平衡率
            this._CJSAHZWS = this._Sum_CJLDL == 0 ? 0 : Math.Round(this.Sum_CJSAH / this._Sum_CJLDL, 4);      //拆夾後SAH中位數(參考) 
            //}

            if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.JSCLB)
            {
                //this._Sum_JSCSAH += this.Sum_YHSAH;
                //this._Sum_JSCLDL += this.Sum_BisYHLDL;
                this._Sum_JSCSAH += this.Sum_CJSAH;
                this._Sum_JSCLDL += this.Sum_CJLDL;

                JSCSAHList.Sort();
                this._JSCMaxZJ = JSCSAHList[JSCSAHList.Count - 1];    //間時拆SAH 最大樽頸
                this._JSCMinZJ = JSCSAHList[1];                       //間時拆SAH 最小樽頸 
                this._JSCMinSAH = JSCSAHList[0];                      //間時拆SAH 最小SAH   
                this._JSCJSCL = (this.Sum_JSCSAH * this._Sum_JSCLDL == 0) ? 0 :
                    Math.Round(0.5M / this.Sum_JSCSAH * this.Sum_JSCLDL, 2);       //間時拆 拉節時産量(件)
                //this._JSCJSCL = Math.Round(this.Sum_YHSAH * this.Sum_JSCLDL, 2);  //間時拆 拉節時産量(件)
                this._JSCLPHS = (this._JSCMaxZJ * this.Sum_JSCLDL == 0) ? 0 : Math.Round(this.Sum_JSCSAH / (this._JSCMaxZJ * this.Sum_JSCLDL) * 100, 2);   //間時拆SAH LB%拉平衡率
                this._JSCSAHZWS = this.Sum_JSCLDL == 0 ? 0 : Math.Round(this.Sum_JSCSAH / this.Sum_JSCLDL, 4); //間時拆SAH中位數(參考) 
            }
            if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.PJHLB)
            {
                PJHSAHList.Sort();
                if (PJHSAHList.Count == 0)//所有工序的平准化SAH都是相等的，且等于優化指標線值的情况。
                {
                    this._PJHMaxZJ = this.BestLineValue ?? 0;
                    this._PJHMinZJ = this._PJHMaxZJ;
                    this._PJHMinSAH = this._PJHMinZJ;
                }
                else  //正常情况
                {
                    this._PJHMaxZJ = PJHSAHList[PJHSAHList.Count - 1];   //平准化SAH 最大樽頸zrtag

                    if (PJHSAHList.Count > 1)
                    {
                        this._PJHMinZJ = PJHSAHList[1];                  //平准化SAH 最小樽頸 
                    }
                    else
                    {
                        this._PJHMinZJ = 0;// PJHSAHList[0];             //平准化SAH 最小樽頸 

                    }

                    this._PJHMinSAH = PJHSAHList[0];                     //平准化SAH 最小SAH     
                }
                this._PJHJSCL = this.Sum_PJHSAH * this.Sum_PJHLDL == 0 ? 0 : Math.Round(0.5M / this.Sum_PJHSAH * this.Sum_PJHLDL, 2);  //平准化 拉節時産量(件)
                this._PJHLPHS = this._PJHMaxZJ * this.Sum_PJHLDL == 0 ? 0 : Math.Round(this.Sum_PJHSAH / (this._PJHMaxZJ * this.Sum_PJHLDL) * 100, 2);  //平准化SAH LB%拉平衡率
                this._PJHSAHZWS = this.Sum_PJHLDL == 0 ? 0 : Math.Round(this.Sum_PJHSAH / this.Sum_PJHLDL, 4);                         //平准化SAH中位數(參考) 
            }

        }

        //F工序
        public void CalSummary_F()
        {
            List<StyleProcedure_F> InfoList = OrderByXH_StyleProcedureFs;

            if (InfoList.Count == 0) return;


            string SaveCFlag = "-19";     //保存拆標誌
            string SaveJFlag = "-19";     //保存夾標誌

            #region 需要計算的值先清零
            this._Sum_GSDLDL = 0;
            this._Sum_GSDSAH = 0;
            this._Sum_GSDSAH_A = 0;
            this._Sum_GSDSAH_B = 0;
            this._Sum_GSDSAH_C = 0;

            this._Sum_CJLDL = 0;
            this._Sum_GSDLDL = 0;
            this._CJJSCL = 0;

            this._Sum_JSCSAH = 0;
            this._Sum_JSCLDL = 0;
            this._Sum_JSCFloater = 0;

            this._FloaterCount_PR = 0;
            this._FloaterCount_DZ = 0;


            #endregion

            List<decimal> GSDSAHList = new List<decimal>();
            List<decimal> CJSAHList = new List<decimal>();
            List<decimal> YHSAHList = new List<decimal>();
            List<decimal> BisYHSAHList = new List<decimal>();
            List<decimal> JSCSAHList = new List<decimal>();
            List<decimal> PJHSAHList = new List<decimal>();

            Summary CurSummary;
            this.SummaryList.Clear();

            foreach (StyleProcedure_F obj in InfoList)
            {
                //首先看有沒有這种衣車，沒有就增加到SummaryList
                if (this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; }) == null)
                {
                    Summary summary = new Summary();
                    summary.YCDM = obj.YCDM;
                    summary.YCType = obj.YCType;
                    this.SummaryList.Add(summary);
                }


                if (string.IsNullOrEmpty(obj.TeamGSD) || obj.TeamGSD.ToUpper() == "O" || obj.GRDH == "Floater")
                {
                    if (obj.GRDH == "Floater")
                    {
                        JSCSAHList.Add((obj.JSCSAHSN ?? 0));
                        PJHSAHList.Add((obj.PJHSAHSN ?? 0));
                        this._Sum_JSCSAH += (obj.JSCSAHSN ?? 0);
                        this._Sum_JSCFloater += (obj.LDL ?? 0);

                        //Floater工作位
                        CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                        if (CurSummary != null)
                        {
                            CurSummary.BestLBFloaterAreaYCCount++;
                        }

                    }
                    continue;
                }


                if (string.IsNullOrEmpty(obj.JFlag) || obj.JFlag != SaveJFlag)
                {

                    CJSAHList.Add((obj.JWorkSN ?? 0));
                    JSCSAHList.Add((obj.JSCSAHSN ?? 0));
                    this._Sum_CJLDL++; //拆夾後 勞動力合

                }

                if (string.IsNullOrEmpty(obj.CFlag) || obj.CFlag != SaveCFlag)
                {
                    GSDSAHList.Add((obj.GSDSAHSN ?? 0));

                    this._Sum_GSDSAH += (obj.GSDSAHSN ?? 0); //標準SAH合計(不含包裝SAH)
                    this._Sum_GSDLDL++;               //標準SAH 勞動力合計


                    if (obj.TeamGSD.ToUpper() == "A")
                    {
                        this._Sum_GSDSAH_A += (obj.GSDSAHSN ?? 0);  //標準SAH A組SAH小計
                    }

                    if (obj.TeamGSD.ToUpper() == "B")
                    {
                        this._Sum_GSDSAH_B += (obj.GSDSAHSN ?? 0);  //標準SAH B組SAH小計
                    }

                    if (obj.TeamGSD.ToUpper() == "C")
                    {
                        this._Sum_GSDSAH_C += (obj.GSDSAHSN ?? 0);  //標準SAH C組SAH小計
                    }

                    //未拆夾工作位
                    CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                    if (CurSummary != null)
                    {
                        CurSummary.NoneLBYCCount++;
                    }
                }

                //拆夾後工作位
                CurSummary = this.SummaryList.Find(delegate(Summary ASummary) { return ASummary.YCDM == obj.YCDM; });
                if ((obj.GZW ?? 0) != 0) //主區
                {
                    if (CurSummary != null)
                    {
                        CurSummary.CJLBMainAreaYCCount++;
                    }
                }
                else if ((obj.GZW_Support ?? 0) != 0)  //else if (obj.GZW_Support != 0) //支援區
                {
                    if (CurSummary != null)
                    {
                        CurSummary.CJLBSupportAreaYCCount++;
                    }
                }
                else if ((obj.GZW_Floater ?? 0) != 0)
                {
                    if (CurSummary != null)
                    {
                        CurSummary.BestLBFloaterAreaYCCount++;
                    }
                }

                SaveCFlag = obj.CFlag;
                SaveJFlag = obj.JFlag;
            }


            GSDSAHList.Sort();                                     //標準GSDSAH升序排列
            this._GSDMaxZJ = GSDSAHList[GSDSAHList.Count - 1];     //標準SAH 最大樽頸
            this._GSDMinZJ = GSDSAHList[1];                        //標準SAH 最小樽頸 
            this._GSDMinSAH = GSDSAHList[0];                       //標準SAH 最小SAH
            this._GSDJSCL = this._Sum_GSDSAH * this.Sum_GSDLDL == 0 ? 0 : Math.Round(0.5M / this._Sum_GSDSAH * this.Sum_GSDLDL, 2); //標準SAH 拉節時産量(件)
            //this._GSDJSCL = Math.Round(this.Sum_GSDSAH * this.Sum_GSDLDL, 2);           //標準SAH 拉節時産量(件)
            this._GSDLPHS = this._GSDMaxZJ * this._Sum_GSDLDL == 0 ? 0 : Math.Round(this._Sum_GSDSAH / (this._GSDMaxZJ * this._Sum_GSDLDL) * 100, 2);   //標準SAH LB%拉平衡率
            this._GSDSAHZWS = this._Sum_GSDLDL == 0 ? 0 : Math.Round(this._Sum_GSDSAH / this._Sum_GSDLDL, 4);     //標準SAH中位數(參考) 

            //if (Commands.ConvertLBPhare(this.Phase) > LBPhare.NoneLB)
            //{
            CJSAHList.Sort();                                      //拆夾後GSDSAH升序排列
            this._CJMaxZJ = CJSAHList[CJSAHList.Count - 1];        //拆夾後SAH 最大樽頸
            this._CJMinZJ = CJSAHList[1];                          //拆夾後SAH 最小樽頸 
            this._CJMinSAH = CJSAHList[0];                         //拆夾後SAH 最小SAH   
            this._CJJSCL = this.Sum_CJSAH * this._Sum_CJLDL == 0 ? 0 : Math.Round(0.5M / this.Sum_CJSAH * this._Sum_CJLDL, 2);  //拆夾後 拉節時産量(件)
            //this._CJJSCL = Math.Round(this.Sum_CJSAH * this._Sum_CJLDL, 2);           //拆夾後 拉節時産量(件)
            this._CJLPHS = this._CJMaxZJ * this._Sum_CJLDL == 0 ? 0 : Math.Round(this.Sum_CJSAH / (this._CJMaxZJ * this._Sum_CJLDL) * 100, 2);   //拆夾後SAH LB%拉平衡率
            this._CJSAHZWS = this._Sum_CJLDL == 0 ? 0 : Math.Round(this.Sum_CJSAH / this._Sum_CJLDL, 4);      //拆夾後SAH中位數(參考) 
            //}

            if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.JSCLB)
            {
                //this._Sum_JSCSAH += this.Sum_YHSAH;
                //this._Sum_JSCLDL += this.Sum_BisYHLDL;
                this._Sum_JSCSAH += this.Sum_CJSAH;
                this._Sum_JSCLDL += this.Sum_CJLDL;

                JSCSAHList.Sort();
                this._JSCMaxZJ = JSCSAHList[JSCSAHList.Count - 1];    //間時拆SAH 最大樽頸
                this._JSCMinZJ = JSCSAHList[1];                       //間時拆SAH 最小樽頸 
                this._JSCMinSAH = JSCSAHList[0];                      //間時拆SAH 最小SAH   
                this._JSCJSCL = (this.Sum_JSCSAH * this._Sum_JSCLDL == 0) ? 0 :
                    Math.Round(0.5M / this.Sum_JSCSAH * this.Sum_JSCLDL, 2);       //間時拆 拉節時産量(件)


                //this._JSCJSCL = Math.Round(this.Sum_YHSAH * this.Sum_JSCLDL, 2);  //間時拆 拉節時産量(件)
                this._JSCLPHS = this._JSCMaxZJ * this.Sum_JSCLDL == 0 ? 0 : Math.Round(this.Sum_JSCSAH / (this._JSCMaxZJ * this.Sum_JSCLDL) * 100, 2);   //間時拆SAH LB%拉平衡率
                this._JSCSAHZWS = this.Sum_JSCLDL == 0 ? 0 : this.Sum_JSCLDL == 0 ? 0 : Math.Round(this.Sum_JSCSAH / this.Sum_JSCLDL, 4); //間時拆SAH中位數(參考) 
            }
            if (Commands.ConvertLBPhare(this.Phase) >= LBPhare.PJHLB)
            {
                PJHSAHList.Sort();
                if (PJHSAHList.Count == 0)//所有工序的平准化SAH都是相等的，且等于優化指標線值的情况。
                {
                    this._PJHMaxZJ = this.BestLineValue ?? 0;
                    this._PJHMinZJ = this._PJHMaxZJ;
                    this._PJHMinSAH = this._PJHMinZJ;
                }
                else  //正常情况
                {
                    this._PJHMaxZJ = PJHSAHList[PJHSAHList.Count - 1];   //平准化SAH 最大樽頸zrtag

                    if (PJHSAHList.Count > 1)
                    {
                        this._PJHMinZJ = PJHSAHList[1];                  //平准化SAH 最小樽頸 
                    }
                    else
                    {
                        this._PJHMinZJ = 0;// PJHSAHList[0];             //平准化SAH 最小樽頸 

                    }

                    this._PJHMinSAH = PJHSAHList[0];                     //平准化SAH 最小SAH     
                }
                this._PJHJSCL = this.Sum_PJHSAH * this.Sum_PJHLDL == 0 ? 0 : Math.Round(0.5M / this.Sum_PJHSAH * this.Sum_PJHLDL, 2);  //平准化 拉節時産量(件)
                this._PJHLPHS = this._PJHMaxZJ * this.Sum_PJHLDL == 0 ? 0 : Math.Round(this.Sum_PJHSAH / (this._PJHMaxZJ * this.Sum_PJHLDL) * 100, 2);  //平准化SAH LB%拉平衡率
                this._PJHSAHZWS = this.Sum_PJHLDL == 0 ? 0 : Math.Round(this.Sum_PJHSAH / this.Sum_PJHLDL, 4);                         //平准化SAH中位數(參考) 
            }

        }




        #endregion

        #region 判斷 組別GSD中是否有"C"
        /// <summary>
        /// 判斷 組別GSD中是否有"C"
        /// </summary>
        /// <returns></returns>
        private bool HasTeamC()
        {
            foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
            {
                if (obj.TeamGSD.ToUpper() == "C")
                {
                    return true;
                }
            }
            return false;
        }
        #endregion

        #region 標準SAH摘要資訊(定義成屬性)
        [NonSerialized]
        private decimal _Sum_GSDSAH = 0;
        /// <summary>
        /// 標準SAH合計(不含包裝SAH)
        /// </summary>
        public decimal Sum_GSDSAH
        {
            get
            {
                return _Sum_GSDSAH;
            }
        }

        [NonSerialized]
        private decimal _Sum_GSDSAH_A = 0;
        /// <summary>
        /// 標準SAH A組SAH小計
        /// </summary>
        public decimal Sum_GSDSAH_A
        {
            get
            {
                return _Sum_GSDSAH_A;
            }
        }

        [NonSerialized]
        private decimal _Sum_GSDSAH_B = 0;
        /// <summary>
        /// 標準SAH B組SAH小計
        /// </summary>
        public decimal Sum_GSDSAH_B
        {
            get
            {
                return _Sum_GSDSAH_B;
            }
        }

        [NonSerialized]
        private decimal _Sum_GSDSAH_C = 0;
        /// <summary>
        /// 標準SAH C組SAH小計
        /// </summary>
        public decimal Sum_GSDSAH_C
        {
            get
            {
                return _Sum_GSDSAH_C;
            }
        }

        [NonSerialized]
        private decimal _GSDJSCL = 0;
        /// <summary>
        /// 標準SAH 拉節時産量(件)
        /// </summary>
        public decimal GSDJSCL
        {
            get
            {
                return _GSDJSCL;
            }
        }

        [NonSerialized]
        private int _Sum_GSDLDL = 0;
        /// <summary>
        /// 標準SAH 勞動力合計
        /// </summary>
        public int Sum_GSDLDL
        {
            get
            {
                return _Sum_GSDLDL;
            }
        }

        /// <summary>
        /// 標準SAH 工作位(衣車+手工台)合計
        /// </summary>
        public string GSDGZW
        {
            get
            {
                int Sum_RS = 0;
                foreach (Summary obj in this.SummaryList)
                {
                    if (obj.YCDM != null)
                    {
                        if (obj.YCDM.ToUpper() == "HD1" || obj.YCDM.ToUpper() == "HD2")
                        {
                            Sum_RS += obj.NoneLBYCCount;
                        }
                    }
                }
                string temp = "{0}({1}+{2})";
                return string.Format(temp, this.Sum_GSDLDL, this.Sum_GSDLDL - Sum_RS, Sum_RS);
            }
        }

        [NonSerialized]
        private decimal _GSDMaxZJ = 0;
        /// <summary>
        /// 標準SAH 最大樽頸
        /// </summary>
        public decimal GSDMaxZJ
        {
            get
            {
                return _GSDMaxZJ;
            }
        }

        [NonSerialized]
        private decimal _GSDMinZJ = 0;
        /// <summary>
        /// 標準SAH 最小樽頸
        /// </summary>
        public decimal GSDMinZJ
        {
            get
            {
                return _GSDMinZJ;
            }
        }

        [NonSerialized]
        private decimal _GSDMinSAH = 0;
        /// <summary>
        /// 標準SAH 最小SAH
        /// </summary>
        public decimal GSDMinSAH
        {
            get
            {
                return _GSDMinSAH;
            }
        }

        [NonSerialized]
        private decimal _GSDLPHS = 0;
        /// <summary>
        /// 標準SAH LB%拉平衡率
        /// </summary>
        public decimal GSDLPHS
        {
            get
            {
                return _GSDLPHS;
            }
        }
        [NonSerialized]
        private decimal _GSDSAHZWS = 0;
        /// <summary>
        /// 標準SAH中位數(參考)
        /// </summary>
        public decimal GSDSAHZWS
        {
            get
            {
                return _GSDSAHZWS;
            }
        }
        #endregion

        #region 拆夾SAH 摘要資訊(定義成屬性)
        /// <summary>
        /// 拆夾SAH合計(不含包裝SAH)
        /// </summary>
        public decimal Sum_CJSAH
        {
            get
            {
                return this._Sum_GSDSAH;
            }
        }

        /// <summary>
        /// 拆夾SAH A組SAH小計
        /// </summary>
        public decimal Sum_CJSAH_A
        {
            get
            {
                return this._Sum_GSDSAH_A;
            }
        }

        /// <summary>
        /// 拆夾SAH B組SAH小計
        /// </summary>
        public decimal Sum_CJSAH_B
        {
            get
            {
                return this._Sum_GSDSAH_B;
            }
        }

        /// <summary>
        /// 拆夾SAH C組SAH小計
        /// </summary>
        public decimal Sum_CJSAH_C
        {
            get
            {
                return this._Sum_GSDSAH_C;
            }
        }

        [NonSerialized]
        private decimal _CJJSCL = 0;
        /// <summary>
        /// 拆夾SAH 拉節時産量(件)
        /// </summary>
        public decimal CJJSCL
        {
            get
            {
                return _CJJSCL;
            }
        }

        [NonSerialized]
        private int _Sum_CJLDL = 0;
        /// <summary>
        /// 拆夾SAH 勞動力合計
        /// </summary>
        public int Sum_CJLDL
        {
            get
            {
                return _Sum_CJLDL;
            }
        }

        //[NonSerialized]
        //private int _CJGZW;
        /// <summary>
        /// 拆夾SAH 工作位(衣車+手工台)合計
        /// </summary>
        public string CJGZW
        {
            get
            {
                int Sum_RS = 0;
                int Sum_CJGZW = 0;
                foreach (Summary obj in this.SummaryList)
                {
                    Sum_CJGZW += obj.CJLBYCCount;
                    if (obj.YCDM.ToUpper() == "HD1" || obj.YCDM.ToUpper() == "HD2")
                    {
                        Sum_RS += obj.CJLBYCCount;
                    }
                }


                string temp = "{0}({1}+{2})";
                return string.Format(temp, Sum_CJGZW, Sum_CJGZW - Sum_RS, Sum_RS);
            }
        }

        public int CJGZW1
        {

            get
            {
                int Sum_RS = 0;
                int Sum_CJGZW = 0;
                foreach (Summary obj in this.SummaryList)
                {
                    Sum_CJGZW += obj.CJLBYCCount;
                    if (obj.YCDM.ToUpper() == "HD1" || obj.YCDM.ToUpper() == "HD2")
                    {
                        Sum_RS += obj.CJLBYCCount;
                    }
                }

                return Sum_CJGZW;
            }
        }
        /// <summary>
        /// 中檢員(半産品)的人數,即衣車代碼等於HD2的合計
        /// </summary>
        public int CJHD2
        {
            get
            {
                int temp = 0;
                foreach (Summary obj in this.SummaryList)
                {
                    if (obj.YCDM.ToUpper() == "HD2")
                    {
                        temp += obj.CJLBYCCount;
                    }
                }
                return temp;
            }
        }

        /// <summary>
        /// 手工人員人數,即衣車代碼等於HD1的合計
        /// </summary>
        public int CJHD1
        {
            get
            {
                int temp = 0;
                foreach (Summary obj in this.SummaryList)
                {
                    if (obj.YCDM.ToUpper() == "HD1")
                    {
                        temp += obj.CJLBYCCount;
                    }
                }
                return temp;
            }
        }

        [NonSerialized]
        private decimal _CJMaxZJ = 0;
        /// <summary>
        /// 拆夾SAH 最大樽頸
        /// </summary>
        public decimal CJMaxZJ
        {
            get
            {
                return _CJMaxZJ;
            }
        }

        [NonSerialized]
        private decimal _CJMinZJ = 0;
        /// <summary>
        /// 拆夾SAH 最小樽頸
        /// </summary>
        public decimal CJMinZJ
        {
            get
            {
                return _CJMinZJ;
            }
        }

        [NonSerialized]
        private decimal _CJMinSAH = 0;
        /// <summary>
        /// 拆夾SAH 最小SAH
        /// </summary>
        public decimal CJMinSAH
        {
            get
            {
                return _CJMinSAH;
            }
        }

        [NonSerialized]
        private decimal _CJLPHS = 0;
        /// <summary>
        /// 拆夾SAH LB%拉平衡率
        /// </summary>
        public decimal CJLPHS
        {
            get
            {
                return _CJLPHS;
            }
        }

        [NonSerialized]
        private decimal _CJSAHZWS = 0;
        /// <summary>
        /// 拆夾SAH中位數(參考)
        /// </summary>
        public decimal CJSAHZWS
        {
            get
            {
                return _CJSAHZWS;
            }
        }
        #endregion

        #region 優化SAH 摘要資訊(定義成屬性)  (不用了)
        //[NonSerialized]
        //private decimal _Sum_YHSAH = 0;
        ///// <summary>
        ///// 優化SAH合計(不含包裝SAH)
        ///// </summary>
        //public decimal Sum_YHSAH
        //{
        //    get
        //    {
        //        return _Sum_YHSAH;
        //    }
        //}

        //[NonSerialized]
        //private decimal _Sum_YHSAH_A = 0;
        ///// <summary>
        ///// 優化SAH A組SAH小計
        ///// </summary>
        //public decimal Sum_YHSAH_A
        //{
        //    get
        //    {
        //        return _Sum_YHSAH_A;
        //    }
        //}

        //[NonSerialized]
        //private decimal _Sum_YHSAH_B = 0;
        ///// <summary>
        ///// 優化SAH B組SAH小計
        ///// </summary>
        //public decimal Sum_YHSAH_B
        //{
        //    get
        //    {
        //        return _Sum_YHSAH_B;
        //    }
        //}

        //[NonSerialized]
        //private decimal _Sum_YHSAH_C = 0;
        ///// <summary>
        ///// 優化SAH C組SAH小計
        ///// </summary>
        //public decimal Sum_YHSAH_C
        //{
        //    get
        //    {
        //        return _Sum_YHSAH_C;
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHJSCL = 0;
        ///// <summary>
        ///// 優化SAH 拉節時産量(件)
        ///// </summary>
        //public decimal YHJSCL
        //{
        //    get
        //    {
        //        return _YHJSCL;
        //    }
        //}

        ///// <summary>
        ///// 優化SAH 勞動力合計
        ///// </summary>
        //public int Sum_YHLDL
        //{
        //    get
        //    {
        //        return this.Sum_CJLDL; //與拆夾後的勞動力相等
        //    }
        //}

        ///// <summary>
        ///// 優化SAH 工作位(衣車+手工台)合計
        ///// </summary>
        //public string YHGZW
        //{
        //    get
        //    {
        //        return this.CJGZW; //與拆夾後的工作位相等
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHMaxZJ = 0;
        ///// <summary>
        ///// 優化SAH 最大樽頸
        ///// </summary>
        //public decimal YHMaxZJ
        //{
        //    get
        //    {
        //        return _YHMaxZJ;
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHMinZJ = 0;
        ///// <summary>
        ///// 優化SAH 最小樽頸
        ///// </summary>
        //public decimal YHMinZJ
        //{
        //    get
        //    {
        //        return _YHMinZJ;
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHMinSAH = 0;
        ///// <summary>
        ///// 優化SAH 最小SAH
        ///// </summary>
        //public decimal YHMinSAH
        //{
        //    get
        //    {
        //        return _YHMinSAH;
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHLPHS = 0;
        ///// <summary>
        ///// 優化SAH LB%拉平衡率
        ///// </summary>
        //public decimal YHLPHS
        //{
        //    get
        //    {
        //        return _YHLPHS;
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHSAHZWS = 0;
        ///// <summary>
        ///// 優化SAH中位數(參考)
        ///// </summary>
        //public decimal YHSAHZWS
        //{
        //    get
        //    {
        //        return _YHSAHZWS;
        //    }
        //}

        ///// <summary>
        ///// 優化線值
        ///// </summary>
        //public decimal YHLineValue
        //{
        //    get
        //    {
        //        return YHMaxZJ;
        //    }
        //}


        ///// <summary>
        ///// 確定優化線時可下浮的人數[MTM(104-120)人數](用於計算)
        ///// </summary>
        //public int YHDownLDL
        //{
        //    get
        //    {
        //        return Convert.ToInt32(Math.Truncate(this.Sum_CJLDL * 0.3M));
        //        //return Convert.ToInt32(this.Sum_CJLDL * 0.3M);
        //    }
        //}

        //[NonSerialized]
        //private int _YHMTMCount = 0;
        ///// <summary>
        ///// 優化後 MTM(104-120)人數
        ///// </summary>
        //public int YHMTMCount
        //{
        //    get
        //    {
        //        return this._YHMTMCount;
        //    }
        //}

        ///// <summary>
        ///// MTM(104 - 120)人數百分比
        ///// </summary>
        //public decimal YHMTMPercent
        //{
        //    get
        //    {
        //        //decimal temp = Convert.ToDecimal(this.YHDownLDL) / this.Sum_YHLDL * 100;
        //        decimal temp = Convert.ToDecimal(this.YHMTMCount) / this.Sum_YHLDL * 100;
        //        return Math.Round(temp, 2);
        //    }
        //}

        //[NonSerialized]
        //private int _YHMaxMTM;
        ///// <summary>
        ///// 優化後最大MTM(不用計算)
        ///// </summary>
        //public int YHMaxMTM
        //{
        //    get
        //    {
        //        return _YHMaxMTM;
        //    }
        //}

        //[NonSerialized]
        //private decimal _YHLineVale;
        ///// <summary>
        ///// 優化線
        ///// </summary>
        //public decimal YHLineVale
        //{
        //    get
        //    {
        //        this._YHLineVale = this.CJMaxZJ / 120 * 100; 

        //    Found:
        //        List<decimal> ListTemp = new List<decimal>();
        //        string SaveJFlag = "-19";
        //        foreach (StyleProcedure obj in StyleProcedures)
        //        {
        //            //if (obj.TeamGSD.ToUpper() != "O" && obj.JFlag != "" && obj.JFlag != SaveJFlag && (obj.JWorkSN ?? 0) != this.CJMaxZJ && (obj.JWorkSN ?? 0) > Max_YHSAHSN)
        //            if (obj.TeamGSD.ToUpper() != "O" && (string.IsNullOrEmpty(obj.JFlag) || (obj.JFlag == null ? "" : obj.JFlag) != SaveJFlag))
        //            {
        //                decimal tempMTM = (obj.JWorkSN ?? 0) / this._YHLineVale * 100;
        //                if (tempMTM >= 103.5M && tempMTM <= 120)
        //                {
        //                    ListTemp.Add((obj.JWorkSN ?? 0));
        //                }
        //            }
        //            SaveJFlag = obj.JFlag;
        //        }
        //        //if (ListTemp.Count <= YHDownLDL) //如果人数小于等于30%
        //        //{
        //        //    //this._YHLineVale = Max_YHSAHSN;
        //        //    //this._YHMaxMTM = 120;
        //        //}
        //        //else 
        //        if (ListTemp.Count > YHDownLDL) //如果人数大于30%时,重新設定優化線(保證人數小於等於30%)
        //        {
        //            //this._YHMaxMTM = 120;
        //            //decimal Max_YHSAHSN = this.CJMaxZJ / _YHMaxMTM * 100;     //計算T項優化SAH/工序的最大值(R項最大值 * 120)
        //            this._YHLineVale += 0.0001M;
        //            goto Found;



        //            //ListTemp.Sort();
        //            //this._YHLineVale = ListTemp[ListTemp.Count - 4];
        //            ////this._YHMaxMTM = Convert.ToInt32(ListTemp[ListTemp.Count - 4] / this._YHLineVale * 100);
        //            //this._YHMaxMTM = Convert.ToInt32(this.CJMaxZJ / this._YHLineVale * 100);

        //        }
        //        //this._YHLineVale = Math.Round(this._YHLineVale, 4);
        //        //MessageBox.Show("优化线为: " + YHLineVale.ToString());
        //        return this._YHLineVale;
        //    }
        //}
        #endregion

        #region 二度優化 摘要資訊(定義成屬性) (不用了)
        //[NonSerialized]
        //private decimal _Sum_BisYHSAH = 0;
        ///// <summary>
        ///// 二度優化SAH合計(不含包裝SAH)
        ///// </summary>
        //public decimal Sum_BisYHSAH
        //{
        //    get
        //    {
        //        return _Sum_BisYHSAH;
        //    }
        //}

        //[NonSerialized]
        //private decimal _Sum_BisYHSAH_A = 0;
        ///// <summary>
        ///// 二度優化SAH A組SAH小計
        ///// </summary>
        //public decimal Sum_BisYHSAH_A
        //{
        //    get
        //    {
        //        return _Sum_BisYHSAH_A;
        //    }
        //}

        //[NonSerialized]
        //private decimal _Sum_BisYHSAH_B = 0;
        ///// <summary>
        ///// 二度優化SAH B組SAH小計
        ///// </summary>
        //public decimal Sum_BisYHSAH_B
        //{
        //    get
        //    {
        //        return _Sum_BisYHSAH_B;
        //    }
        //}

        //[NonSerialized]
        //private decimal _Sum_BisYHSAH_C = 0;
        ///// <summary>
        ///// 二度優化SAH C組SAH小計
        ///// </summary>
        //public decimal Sum_BisYHSAH_C
        //{
        //    get
        //    {
        //        return _Sum_BisYHSAH_C;
        //    }
        //}

        //[NonSerialized]
        //private decimal _BisYHJSCL = 0;
        ///// <summary>
        ///// 二度優化SAH 拉節時産量(件)
        ///// </summary>
        //public decimal BisYHJSCL
        //{
        //    get
        //    {
        //        return _BisYHJSCL;
        //    }
        //}

        ///// <summary>
        ///// 二度優化SAH 勞動力合計
        ///// </summary>
        //public int Sum_BisYHLDL
        //{
        //    get
        //    {
        //        return this.Sum_YHLDL;
        //    }
        //}

        ///// <summary>
        ///// 二度優化SAH 工作位(衣車+手工台)合計
        ///// </summary>
        //public string BisYHGZW
        //{
        //    get
        //    {
        //        //string temp = "{0}({1}+{2})";
        //        //return string.Format(temp, this._Sum_BisYHLDL, this._Sum_BisYHLDL - this._BisYHCount_RS, this._BisYHCount_RS);
        //        return this.YHGZW; //與優化的工作位相等
        //    }
        //}

        //[NonSerialized]
        //private decimal _BisYHMaxZJ = 0;
        ///// <summary>
        ///// 二度優化SAH 最大樽頸
        ///// </summary>
        //public decimal BisYHMaxZJ
        //{
        //    get
        //    {
        //        return _BisYHMaxZJ;
        //    }
        //}

        //[NonSerialized]
        //private decimal _BisYHMinZJ = 0;
        ///// <summary>
        ///// 二度優化SAH 最小樽頸
        ///// </summary>
        //public decimal BisYHMinZJ
        //{
        //    get
        //    {
        //        return _BisYHMinZJ;
        //    }
        //}

        //[NonSerialized]
        //private decimal _BisYHMinSAH = 0;
        ///// <summary>
        ///// 二度優化SAH 最小SAH
        ///// </summary>
        //public decimal BisYHMinSAH
        //{
        //    get
        //    {
        //        return _BisYHMinSAH;
        //    }
        //}

        //[NonSerialized]
        //private decimal _BisYHLPHS = 0;
        ///// <summary>
        ///// 二度優化SAH LB%拉平衡率
        ///// </summary>
        //public decimal BisYHLPHS
        //{
        //    get
        //    {
        //        return _BisYHLPHS;
        //    }
        //}

        //[NonSerialized]
        //private decimal _BisYHSAHZWS = 0;
        ///// <summary>
        ///// 二度優化SAH中位數(參考)
        ///// </summary>
        //public decimal BisYHSAHZWS
        //{
        //    get
        //    {
        //        return _BisYHSAHZWS;
        //    }
        //}

        //[NonSerialized]
        //private int _BisYHDownLDL = 0;
        ///// <summary>
        ///// 二度優化時下浮的人數[MTM(104-120)人數]
        ///// </summary>
        //public int BisYHDownLDL
        //{
        //    get
        //    {
        //        //return this.YHDownLDL;
        //        return this._BisYHDownLDL;
        //    }
        //}

        //[NonSerialized]
        //private int _BisYHMaxMTM = 0;
        ///// <summary>
        ///// 二度優化後最大MTM
        ///// </summary>
        //public int BisYHMaxMTM
        //{
        //    get
        //    {
        //        //return this.YHMaxMTM;
        //        return this._BisYHMaxMTM;
        //    }
        //}

        ///// <summary>
        ///// 二度優化拆後 MTM(104 - 120)人數百分比
        ///// </summary>
        //public decimal BisYHMTMPercent
        //{
        //    get
        //    {
        //        decimal temp = Convert.ToDecimal(this.BisYHDownLDL) / this.Sum_BisYHLDL * 100;
        //        return Math.Round(temp, 2);
        //    }
        //}
        #endregion

        #region 間時拆 摘要資訊(定義成屬性)
        [NonSerialized]
        private decimal _Sum_JSCSAH = 0;
        /// <summary>
        /// 間時拆SAH合計(不含包裝SAH)
        /// </summary>
        public decimal Sum_JSCSAH
        {
            get
            {
                //算法描述
                //所有勞動力代碼是Floater的間時拆SAH + 下面一個的SAH - 二次優化的SAH
                string SaveJFlag = "-19";
                decimal temp = 0;
                bool IsFloater = false;
                foreach (StyleProcedure obj in this.OrderByXH_StyleProcedures)
                {
                    if (!string.IsNullOrEmpty(obj.JFlag) && (obj.JFlag == null ? "" : obj.JFlag) != SaveJFlag)
                    {
                        if (obj.GRDH.ToUpper() == "FLOATER")
                        {
                            //temp += (obj.JSCSAHSN ?? 0) - (obj.BisYHSAHSN ?? 0);
                            temp += (obj.JSCSAHSN ?? 0) - (obj.JWorkSN ?? 0);
                            IsFloater = true;
                            continue;
                        }
                        if (IsFloater)
                        {
                            temp += (obj.JSCSAHSN ?? 0);
                            IsFloater = false;
                        }
                    }

                    SaveJFlag = obj.JFlag;
                }

                //return this.Sum_BisYHSAH + temp;
                return this.Sum_CJSAH + temp;
            }
        }

        [NonSerialized]
        private decimal _JSCJSCL = 0;
        /// <summary>
        /// 間時拆SAH 拉節時産量(件)
        /// </summary>
        public decimal JSCJSCL
        {
            get
            {
                return _JSCJSCL;
            }
        }

        [NonSerialized]
        private decimal _Sum_JSCLDL = 0;
        /// <summary>
        /// 間時拆SAH 勞動力合計
        /// </summary>
        public decimal Sum_JSCLDL
        {
            get
            {
                return Math.Round(this._Sum_JSCLDL + this._Sum_JSCFloater, 2);
            }
        }

        //[NonSerialized]
        //private int _JSCGZW;
        /// <summary>
        /// 間時拆SAH 工作位(衣車+手工台)合計
        /// </summary>
        public string JSCGZW
        {
            get
            {
                int Sum_RS = 0;
                int Sum_JSCGZW = 0;
                foreach (Summary obj in this.SummaryList)
                {
                    Sum_JSCGZW += obj.BestLBYCCount;
                    if (obj.YCDM.ToUpper() == "HD1" || obj.YCDM.ToUpper() == "HD2")
                    {
                        Sum_RS += obj.BestLBYCCount;
                    }
                }

                //foreach (Summary obj in this.SummaryList)
                //{
                //    Sum_JSCGZW += obj.BestLBYCCount;
                //    if (obj.YCType == "人手")
                //    {
                //        Sum_RS += obj.BestLBYCCount;
                //    }
                //}

                string temp = "{0}({1}+{2})";
                //                return string.Format(temp, this._JSCGZW, this._JSCGZW - Sum_RS, Sum_RS);
                return string.Format(temp, Sum_JSCGZW, Sum_JSCGZW - Sum_RS, Sum_RS);
            }
        }


        [NonSerialized]
        private decimal _JSCMaxZJ = 0;
        /// <summary>
        /// 間時拆SAH 最大樽頸
        /// </summary>
        public decimal JSCMaxZJ
        {
            get
            {
                return _JSCMaxZJ;
            }
        }

        [NonSerialized]
        private decimal _JSCMinZJ = 0;
        /// <summary>
        /// 間時拆SAH 最小樽頸
        /// </summary>
        public decimal JSCMinZJ
        {
            get
            {
                return _JSCMinZJ;
            }
        }

        [NonSerialized]
        private decimal _JSCMinSAH = 0;
        /// <summary>
        /// 間時拆SAH 最小SAH
        /// </summary>
        public decimal JSCMinSAH
        {
            get
            {
                return _JSCMinSAH;
            }
        }

        [NonSerialized]
        private decimal _JSCLPHS = 0;
        /// <summary>
        /// 間時拆SAH LB%拉平衡率
        /// </summary>
        public decimal JSCLPHS
        {
            get
            {
                return _JSCLPHS;
            }
        }

        [NonSerialized]
        private decimal _JSCSAHZWS = 0;
        /// <summary>
        /// 間時拆SAH中位數(參考)
        /// </summary>
        public decimal JSCSAHZWS
        {
            get
            {
                return _JSCSAHZWS;
            }
        }

        ///// <summary>
        ///// 間時拆時下浮的人數[MTM(104-120)人數]
        ///// </summary>
        //public int JSCDownLDL
        //{
        //    get
        //    {
        //        return this.BisYHDownLDL;
        //    }
        //}

        ///// <summary>
        ///// 間時拆後最大MTM
        ///// </summary>
        //public int JSCMaxMTM
        //{
        //    get
        //    {
        //        return this.BisYHMaxMTM;
        //    }
        //}

        ///// <summary>
        ///// 間時拆後 MTM(104 - 120)人數百分比
        ///// </summary>
        //public decimal JSCMTMPercent
        //{
        //    get
        //    {
        //        decimal temp = Convert.ToDecimal(this.PJHDownLDL) / this.Sum_JSCLDL * 100;
        //        return Math.Round(temp, 2);
        //    }
        //}

        private decimal _Sum_JSCFloater;
        /// <summary>
        /// 間時拆後Floater的合計
        /// </summary>
        public decimal Sum_JSCFloater
        {
            get
            {
                return _Sum_JSCFloater;
            }

            set
            {
                _Sum_JSCFloater = value;
            }
        }

        #endregion

        #region 平准化 摘要資訊(定義成屬性)
        /// <summary>
        /// 平准化SAH合計(不含包裝SAH)
        /// </summary>
        public decimal Sum_PJHSAH
        {
            get
            {
                return this.Sum_JSCSAH;
            }
        }

        [NonSerialized]
        private decimal _PJHJSCL = 0;
        /// <summary>
        /// 平准化SAH 拉節時産量(件)
        /// </summary>
        public decimal PJHJSCL
        {
            get
            {
                return _PJHJSCL;
            }
        }

        /// <summary>
        /// 平准化SAH 勞動力合計
        /// </summary>
        public decimal Sum_PJHLDL
        {
            get
            {
                return this.Sum_JSCLDL;
            }
        }

        /// <summary>
        /// 平准化SAH 工作位(衣車+手工台)合計
        /// </summary>
        public string PJHGZW
        {
            get
            {
                //string temp = "{0}({1}+{2})";
                //return string.Format(temp, this._Sum_PJHLDL, this._Sum_PJHLDL - this._BisYHCount_RS, this._PJHCount_RS);
                return this.JSCGZW; //與間時拆的工作位相等
            }
        }

        [NonSerialized]
        private decimal _PJHMaxZJ = 0;
        /// <summary>
        /// 平准化SAH 最大樽頸
        /// </summary>
        public decimal PJHMaxZJ
        {
            get
            {
                return _PJHMaxZJ;
            }
        }

        [NonSerialized]
        private decimal _PJHMinZJ = 0;
        /// <summary>
        /// 平准化SAH 最小樽頸
        /// </summary>
        public decimal PJHMinZJ
        {
            get
            {
                return _PJHMinZJ;
            }
        }

        [NonSerialized]
        private decimal _PJHMinSAH = 0;
        /// <summary>
        /// 平准化SAH 最小SAH
        /// </summary>
        public decimal PJHMinSAH
        {
            get
            {
                return _PJHMinSAH;
            }
        }

        [NonSerialized]
        private decimal _PJHLPHS = 0;
        /// <summary>
        /// 平准化SAH LB%拉平衡率
        /// </summary>
        public decimal PJHLPHS
        {
            get
            {
                return _PJHLPHS;
            }
        }

        [NonSerialized]
        private decimal _PJHSAHZWS = 0;
        /// <summary>
        /// 平准化SAH中位數(參考)
        /// </summary>
        public decimal PJHSAHZWS
        {
            get
            {
                return _PJHSAHZWS;
            }
        }

        #endregion

        #region 平准化SAH 摘要資之工作位(定義成屬性)
        [NonSerialized]
        private int _FloaterCount_DZ;
        /// <summary>
        /// 平准化後 尖工工作位之"單針"的數量
        /// </summary>
        public int FloaterCount_DZ
        {
            get
            {
                return _FloaterCount_DZ;
            }

            set
            {
                _FloaterCount_DZ = value;
            }
        }

        [NonSerialized]
        private int _FloaterCount_PR;
        /// <summary>
        /// 平准化後 尖工工作位之"平仚"的數量 
        /// </summary>
        public int FloaterCount_PR
        {
            get
            {
                return _FloaterCount_PR;
            }

            set
            {
                _FloaterCount_PR = value;
            }
        }

        /// <summary>
        /// 平准化後 尖工工作位之"合計" 
        /// </summary>
        public int FloaterGZWSum
        {
            get
            {
                return this._FloaterCount_DZ + this._FloaterCount_PR;
            }
        }

        ///// <summary>
        ///// 平准化時下浮的人數[MTM(104-120)人數]
        ///// </summary>
        //public int PJHDownLDL
        //{
        //    get
        //    {
        //        return this.BisYHDownLDL;
        //    }
        //}

        ///// <summary>
        ///// 平准化後最大MTM
        ///// </summary>
        //public int PJHMaxMTM
        //{
        //    get
        //    {
        //        return this.BisYHMaxMTM;
        //    }
        //}

        ///// <summary>
        ///// 平准化後 MTM(104 - 120)人數百分比
        ///// </summary>
        //public decimal PJHMTMPercent
        //{
        //    get
        //    {
        //        decimal temp = Convert.ToDecimal(this.PJHDownLDL) / this.Sum_PJHLDL * 100;
        //        return Math.Round(temp, 2);
        //    }
        //}
        #endregion

        #region 審批
        /// <summary>
        /// 審批
        /// </summary>
        /// <param name="AAuditor">審批人</param>
        /// <param name="AAuditFlag">審批標誌</param>
        public void AuditOperation(string AAuditor, bool AAuditFlag)
        {
            this.AuditFlag = AAuditFlag;
            this.Auditor = AAuditor;
            this.IsUsed = AAuditFlag;
            //zrtag this.Save();
            if (AAuditFlag)
            {
                this.ProcessIsUsedEdition();
            }
        }

        /// <summary>
        /// 處理使用的版本,如果當前記錄審批通過,則使用本版本
        /// </summary>
        private void ProcessIsUsedEdition()
        {
            LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<LineBalanceIIDataContext>();

            var Masters = from bb in context.StyleMasters
                          where bb.KHKH == this.KHKH && bb.PHKH == this.PHKH && bb.ZH == this.ZH
                          select bb;

            foreach (StyleMaster obj in Masters)
            {
                if (obj.Edition != this.Edition)
                {
                    obj.IsUsed = false;
                    //zrtag obj.Save();
                }
            }
        }

        #endregion

        #region 得到一個新的版本號
        /// <summary>
        /// 得到一個新的版本號
        /// </summary>
        /// <returns></returns>
        public int GetNewEdition()
        {

            LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            //var master = from a in context.StyleMasters
            //             where a.KHKH == this.KHKH && a.PHKH.Trim() == this.PHKH.Trim() && a.ZH == this.ZH
            //             select a;

            //int temp = 0;
            //foreach (StyleMaster obj in master)
            //{
            //    if (obj.Edition > temp)
            //    {
            //        temp = obj.Edition;
            //    }
            //}

            int temp = 0; int? _max = 0;
            var ss = from a in context.StyleMasters
                     where a.KHKH == this.KHKH && a.PHKH.Trim() == this.PHKH.Trim() && a.ZH == this.ZH
                     select a;
            if (ss != null)
            {
                var q = ss.Max(p => p.Edition as int?);
                if (q != null)
                    temp = q.Value;
            }

            //int _max = (from a in context.StyleMasters
            //             where a.KHKH == this.KHKH && a.PHKH.Trim() == this.PHKH.Trim() && a.ZH == this.ZH
            //             select a).Max(p=>p.Edition);




            return temp + 1;

            //return master.Max(a => a.Edition) + 1;

        }
        #endregion

    }
    public partial class MachineCodeMatch : BaseEntity
    {

    }


    public partial class BondingMcStyle : BaseEntity
    {
    }
    public partial class BondingOper : BaseEntity
    {
    }
    public partial class BondingSpec : BaseEntity
    {
    }
    public partial class LcType : BaseEntity
    {
    }
    public partial class BondingSpecItem : BaseEntity
    {
        public int GroupSeq { get; set; }


        //public int SeqNumber 
        //{
        //    get { return Convert.ToInt32(this._GroupNo); }
        //}

        public string McName
        {
            get
            {

                if (!string.IsNullOrEmpty(this.McStyleNo))
                //return this.BondingMcStyle.McName;
                {
                    BondingMcStyle bms = LBHelper.LbCtx.BondingMcStyles.SingleOrDefault(p => p.McStyleNo == this.McStyleNo);
                    return bms != null ? bms.McName : "--";
                }
                else
                    return "--";
            }
        }
        //public string GroupNo
        //{
        //    get {
        //        //if (this.BondingOper != null)
        //        //    return this.BondingOper.GroupNo;
        //        if (!string.IsNullOrEmpty(this.OperNo))
        //        {
        //            BondingOper oper = LBHelper.LbCtx.BondingOpers.SingleOrDefault(p => p.OperNo == this.OperNo);
        //            return oper != null ? oper.GroupNo : "";
        //        }
        //        else
        //            return "";
        //    }
        //}

        public string LcType
        {
            get
            {
                if (!string.IsNullOrEmpty(this._Glue_Model))
                {
                    //if (this._Glue_Model.Length >= 4)
                    //{
                    //    return this._Glue_Model.ToString().Substring(0, 4);
                    //}
                    //else
                    //{
                        return this._Glue_Model;
                    //}
                }
                else { return ""; }
            }
        }

        //工序名
        public string OperName
        {
            get
            {
                if (!string.IsNullOrEmpty(this.OperNo))
                {
                    BondingOper oper = LBHelper.LbCtx.BondingOpers.SingleOrDefault(p => p.OperNo == this.OperNo);
                    return oper != null ? oper.OperName : "--";
                }
                else
                    return "";
            }
        }

        public string OperNameRptShow
        {
            get
            {
                if (!string.IsNullOrEmpty(this.OperNo))
                {
                    BondingOper oper = LBHelper.LbCtx.BondingOpers.SingleOrDefault(p => p.OperNo == this.OperNo);
                    return oper != null ? oper.OperName +"\r\n" + this.OperNameEN : "--";
                }
                else
                    return "";
            }
        }


        //下皮帶*
        public string Disp_IsXpd
        {
            get
            {
                if (IsXpd.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }

        //壓靴*
        public string Disp_IsYx
        {
            get
            {
                if (IsYx.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }

        //上壓輪*
        public string Disp_IsSyl
        {
            get
            {
                if (IsSyl.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }

        //下壓輪*
        public string Disp_IsXyl
        {
            get
            {
                if (IsXyl.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }

        //差動*
        public string Disp_IsCd
        {
            get
            {
                if (IsCd.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }


        //前靴*
        public string Disp_IsQx
        {
            get
            {
                if (IsQx.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }

        //後靴*
        public string Disp_IsHx
        {
            get
            {
                if (IsHx.GetValueOrDefault())
                    return "*";
                else
                    return "";
            }
        }



    }

    public partial class MasterDB : BaseEntity
    {
    }



    public class LB3Info
    {
        public string FAE { get; set; }
        public int SN { get; set; }
        public string OptCode { get; set; }
        public string OptDesc { get; set; }
        public double GSD_SAH { get; set; }
        public string McType { get; set; }
        public string MoveType { get; set; }
        public int SortId { get; set; }

    }


    public class StyleSuffix
    {
        public string MP { get; set; }
        public string Suffix { get; set; }
        public string Country { get; set; }
        public string Hangtag { get; set; }
        public string Remark { get; set; }
    }

    public class StyleRange
    {
        public string MP { get; set; }
        public string RangeName { get; set; }
    }

    public class CupStyle
    {
        public int StyleId { get; set; }
        public string StyleDesc { get; set; }
    }

    public class SizeStyle
    {
        public int StyleId { get; set; }
        public string StyleDesc { get; set; }
    }

    public class EquationType
    {
        public int TypeId { get; set; }
        public string TypeDesc { get; set; }
    }

    public class LBHelper
    {
        static LineBalanceIIDataContext _lbdc;
        public static LineBalanceIIDataContext LbCtx
        {
            get
            {
                if (_lbdc == null)
                {
                    _lbdc = PH.Platform.BO.ContextBuilder.CreateContext<LineBalanceIIDataContext>();
                    _lbdc.CommandTimeout = 1000;
                }
                return _lbdc;
            }

        }


    }

    #region OP6: Operation Specifiaction Sheet 工序規格明細表用到的類

    /// <summary>
    /// 主表，一個工作位對應一條記錄，打印一張工序規格明細表
    /// </summary>
    public class OpsSpecSheetMaster
    {
        /// <summary>
        /// 客戶款號
        /// </summary>
        public string CustStyle { get; set; }
        /// <summary>
        /// PH款號
        /// </summary>
        public string PHStyle { get; set; }
        /// <summary>
        /// 拉號
        /// </summary>
        public string Line { get; set; }
        /// <summary>
        /// 客戶
        /// </summary>
        public string Cust { get; set; }
        /// <summary>
        /// 拉工作位
        /// </summary>
        public int AL_GZWCount { get; set; }
        public string AL_GZWCount1 { get; set; }
        /// <summary>
        /// 總工作位
        /// </summary>
        public int GZWCount { get; set; }


        /// <summary>
        /// 針距
        /// </summary>
        public string ZJ { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public int GuageThrow { get; set; }

        /// <summary>
        /// 振幅
        /// </summary>
        public string GuageThrow1 { get; set; }
        /// <summary>
        /// 針距與振幅(單位)
        /// </summary>
        public string GuageThrowUnit { get; set; }
        /// <summary>
        /// 針數
        /// </summary>
        public string StitchDensity { get; set; }
        /// 針數(單位)
        /// </summary>
        public string StitchDensityUnit { get; set; }
        /// <summary>
        /// 車針型號
        /// </summary>
        public string NeedleNo { get; set; }
        /// 車針型號(單位)
        /// </summary>
        public string NeedleNoUnit { get; set; }
        /// <summary>
        /// 針線
        /// </summary>
        public string NeedleThreads { get; set; }
        /// 鉤/梭線
        /// </summary>
        public string BobbinLopper { get; set; }
        /// <summary>
        /// 傍位
        /// </summary>
        public string GuidingPlate { get; set; }
        /// </summary>
        /// 輸送器
        /// </summary>
        public string FeedingDevice { get; set; }
        /// </summary>
        /// 針板套裝（件數）
        /// </summary>
        public string ThroatPlateSet { get; set; }
        /// </summary>
        /// 針板套裝（編號）
        /// </summary>
        public string ThroatPlateSetCode { get; set; }
        /// </summary>
        /// 止口
        /// </summary>
        public string SeamAllowance { get; set; }
        /// </summary>
        /// 止口(單位)
        /// </summary>
        public string SeamAllowanceUnit { get; set; }
        /// </summary>
        /// 三類止口及相關寬度(Name)
        /// </summary>
        public string TypeOfSAName { get; set; }
        /// </summary>
        /// 三類止口及相關寬度(Numb)
        /// </summary>
        public string TypeOfSANumb { get; set; }
        /// </summary>
        /// 三類止口及相關寬度(Unit)
        /// </summary>
        public string TypeOfSAUnit { get; set; }
        /// </summary>
        /// English(英語)
        /// </summary>
        public string ECFYQ { get; set; }
        public string ECFYQ2 { get; set; }
        public string ECFYQ3 { get; set; }
        /// </summary>
        /// EnglishCode(英語)
        /// </summary>
        public string ECFYQCode { get; set; }
        public string ECFYQCode2 { get; set; }
        public string ECFYQCode3 { get; set; }
        /// </summary>
        /// LocalLanguage
        /// </summary>
        public string CFYQ { get; set; }
        public string CFYQ1 { get; set; }
        public string CFYQ2 { get; set; }
        /// </summary>
        /// LocalLanguage
        /// </summary>
        public string CFYQCode { get; set; }
        public string CFYQCode1 { get; set; }
        public string CFYQCode2 { get; set; }

        /// </summary>
        ///處理Top3工序
        /// </summary>
        public string HW1 { get; set; }
        public string OptNo1 { get; set; }
        public string OptDes1 { get; set; }
        public string OptDes_Eng1 { get; set; }
        public string HW2 { get; set; }
        public string OptNo2 { get; set; }
        public string OptDes2 { get; set; }
        public string OptDes_Eng2 { get; set; }
        public string HW3 { get; set; }
        public string OptNo3 { get; set; }
        public string OptDes3 { get; set; }
        public string OptDes_Eng3 { get; set; }



        List<OpsSpecSheetOperationDetail> _OpsSpecSheetOperationDetailList;
        /// <summary>
        /// 工作位對應的工序信息集合
        /// </summary>
        public List<OpsSpecSheetOperationDetail> OpsSpecSheetOperationDetailList
        {
            get
            {
                if (this._OpsSpecSheetOperationDetailList == null)
                {
                    this._OpsSpecSheetOperationDetailList = new List<OpsSpecSheetOperationDetail>();
                }
                return this._OpsSpecSheetOperationDetailList;
            }

            set
            {
                this._OpsSpecSheetOperationDetailList = value;
            }
        }

        List<OpsImportantRequirement> _OpsImportantRequirementList;
        /// <summary>
        ///工作位對應工序中的工序重點要求集合 
        /// </summary>
        public List<OpsImportantRequirement> OpsImportantRequirementList
        {
            get
            {
                if (this._OpsImportantRequirementList == null)
                {
                    this.OpsImportantRequirementList = new List<OpsImportantRequirement>();
                }
                return this._OpsImportantRequirementList;
            }
            set
            {
                this._OpsImportantRequirementList = value;
            }
        }

    }

    /// <summary>
    /// 從表1, 用于保存工作位對應的工序信息
    /// </summary>
    public class OpsSpecSheetOperationDetail
    {
        /// <summary>
        /// 衣車代號
        /// </summary>
        public string MachineCode { get; set; }
        /// <summary>
        /// 衣車種類
        /// </summary>
        public string MachineType { get; set; }
        /// <summary>
        /// 工序代號
        /// </summary>
        public string OperationCode { get; set; }
        /// <summary>
        /// 工序序號，用于排序
        /// </summary>
        public int OperationSeqNo { get; set; }
        /// <summary>
        /// 工序名稱
        /// </summary>
        public string OperationName { get; set; }



    }

    /// <summary>
    /// 從表2，用于保存工作位對應工序中的工序重點要求
    /// </summary>
    public class OpsImportantRequirement
    {
        /// <summary>
        /// 工序序號，用于排序
        /// </summary>
        public int OperationSeqNo { get; set; }
        /// <summary>
        /// 工序重點要求（英文）
        /// </summary>
        public string ImportantRequirementEn { get; set; }
        /// <summary>
        /// 工序重點要求（本土語言）
        /// </summary>
        public string ImportantRequirementLocal { get; set; }
    }

    #endregion




    //if (this.Statu == 0)
    //      return "Dvp";
    //  else if (this.Statu == 1)
    //      return "Active";
    //  else if (this.Statu == 2)
    //      return "Inactive";
    //  else if (this.Statu == 3)
    //      return "Drop";
    //  else
    //      return "Active";

}