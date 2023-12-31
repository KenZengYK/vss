namespace PH.LWPM.BO
{
    using System;
    using System.Collections;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Data.Linq.SqlClient;
    using System.Data.Odbc;
    using System.Data.SqlClient;
    using System.Drawing;
    using System.Globalization;
    using System.IO;
    using System.Linq;
    using System.Reflection;
    using System.Threading;
    using PH.BasicInfo.BO.Helper;
    using PH.LineBalanceII.BO;
    using PH.Platform.AuthMgr.BO;
    using PH.Platform.BO;
    using PH.Platform.Common;
    using PH.Platform.Misc.BO;
    //partial class ItemTool
    //{
    //}

    //public class MiscHelper
    //{

    //    static PHPlatformMiscDataContext _misctx;
    //    public static PHPlatformMiscDataContext MiscCtx
    //    {
    //        get
    //        {
    //            if (_misctx == null)
    //            {
    //                _misctx = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
    //                _misctx.CommandTimeout = 1000;
    //            }
    //            return _misctx;
    //        }

    //    }
    //}

    //public class ReportHelper
    //{
    //    /// <summary>
    //    /// Opt Permit Report Verion (工序許可證報表的版本號)
    //    /// </summary>
    //    public static string OptPermitReportVersion = "v2.2";

    //    /// <summary>
    //    /// Opt Permit Report Verion
    //    /// </summary>
    //    public static string OptPermitSummaryReportVersion = "v2.2";

    //}

    public partial class LB5MatchingLog : BaseEntity
    {

    }

    //    public enum LB5MatchingLogFlags
    //    {
    //        /// <summary>
    //        /// 替代
    //        /// </summary>
    //        Substitute = "R1a",
    //        ChangeBack = "R1b",
    //        Added = "R2a",
    //        TakeAway = "R2b"


    ////1a) Code R1a =Substitute 替代
    ////1b) Code R1b =Change back 回復
    ////2a) Code R2a =Added 加入
    ////2b) Code R2b =Take away 減去
    //    }


    public class RapHelper
    {
        static RAPLQDataContext _rapctx;
        public static RAPLQDataContext RapCtx
        {
            get
            {
                if (_rapctx == null)
                {
                    _rapctx = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
                    _rapctx.CommandTimeout = 1000;
                }
                return _rapctx;
            }
        }

        public static List<RptMcClass> GetMcClass()
        {
            string sqlstr = @"select a.lang,a.name,a.description,b.name_en,b.name_cn,b.sortid  from basecode a left join mcclassdetail b  on a.code=b.code where a.type='McGroup'";
            SqlConnection cn = new SqlConnection(RapCtx.Connection.ConnectionString);
            SqlCommand com = new SqlCommand(sqlstr, cn);
            cn.Open();

            SqlDataReader reader = com.ExecuteReader();
            List<RptMcClass> _lst = new List<RptMcClass>();
            while (reader.Read())
            {
                RptMcClass rmc = new RptMcClass();
                rmc.Code = reader.GetString(0);
                rmc.Clss_En = reader.GetString(1);
                rmc.Class_Cn = reader.GetString(2);
                rmc.SubClass_En = reader.GetValue(3) != DBNull.Value ? reader.GetString(3) : "";
                rmc.SubClass_Cn = reader.GetValue(4) != DBNull.Value ? reader.GetString(4) : "";
                rmc.SortId = reader.GetValue(5) != DBNull.Value ? reader.GetString(5) : "";
                _lst.Add(rmc);
            }
            reader.Close();
            cn.Close();
            cn.Dispose();
            return _lst;
        }
    }

    public class RptMcClass
    {
        public string Code { get; set; }
        public string Clss_En { get; set; }
        public string Class_Cn { get; set; }
        public string SubClass_En { get; set; }
        public string SubClass_Cn { get; set; }
        public int Total { get; set; }
        public string SortId { get; set; }
    }

    public class McClass_Disp
    {
        public string Code
        {
            get;
            set;
        }
        public string Description
        {
            get;
            set;
        }
        public string DescriptionEn
        {
            get;
            set;
        }
    }


    //public enum LB5MatchingActions
    //{
    //    /// <summary>
    //    /// 換人
    //    /// </summary>
    //    ReArrangeWF,
    //    /// <summary>
    //    /// 加入
    //    /// </summary>
    //    AddWF,
    //    /// <summary>
    //    /// 減去加的人
    //    /// </summary>
    //    RemoveWF
    //}
    public partial class RAPLQDataContext : System.Data.Linq.DataContext
    {
        /// <summary>
        /// 在LB5加人換人減人時插入日誌信息 由David加入 2019-01-08
        /// </summary>
        /// <param name="AWFColumn">0: 修改LB5Matching中的WorkerID字段，1: 修改LB5Matching中的AddWorkerID1字段, 2: 修改LB5Matching中的AddWorkerID2字段</param>
        /// <param name="AFactory">工廠</param>
        /// <param name="ALineCode">生產線</param>
        /// <param name="AProject">工程號</param>
        /// <param name="AWO">制單號</param>
        /// <param name="ARWO">輪制單號</param>
        /// <param name="AQN">數頁號</param>
        /// <param name="AColor">顏色</param>
        /// <param name="AOperationSN">工序序號</param>
        /// <param name="AOperationName">工序名稱</param>
        /// <param name="AOperationCode">工序編號</param>
        /// <param name="AOriginalWF">原WFID或MachineID</param>
        /// <param name="ACurrentWF">當前選擇的WFID或MachineID</param>
        public void InsertLB5MatchingLog(string ALogType, int AWFColumn, string AFactory, string ALineCode, string AProject, string AWO, string ARWO, string AQN,
           string AColor, int? AOperationSN, string AOperationName, string AOperationCode, string AOriginalID, string ACurrentID)
        {
            ////1a) Code R1a =Substitute 替代
            ////1b) Code R1b =Change back 回復
            ////2a) Code R2a =Added 加入
            ////2b) Code R2b =Take away 減去
            bool IsEmptyOriginalWF = string.IsNullOrEmpty(AOriginalID);
            bool IsEmptyCurrentWF = string.IsNullOrEmpty(ACurrentID);

            if (IsEmptyOriginalWF && IsEmptyCurrentWF)
            {
                return;
            }

            if (AOriginalID.Trim() == ACurrentID.Trim())
            {
                return;
            }

            string flag = "R1a";
            if (IsEmptyOriginalWF && !IsEmptyCurrentWF)
            {
                flag = "R2a"; //加人
            }
            else if (!IsEmptyOriginalWF && IsEmptyCurrentWF)
            {
                flag = "R2b"; //減去
            }
            else if (!IsEmptyOriginalWF && !IsEmptyCurrentWF)
            {
                flag = "R1a"; //替代

                Matching LB4Matching = this.Matchings.FirstOrDefault(p => p.Factory == AFactory && p.LineCode == ALineCode && p.j_NO == AProject &&
                  p.J2_job == AWO && p.Rwo == ARWO && p.Qn == AQN && p.Bcolor == AColor);

                string ID = ALogType == "WF" ? LB4Matching.WorkerId : LB4Matching.MachineId;
                if (LB4Matching == null || string.IsNullOrEmpty(ID))
                {
                    flag = "R1a";
                }
                else if (ACurrentID.Trim() == ID.Trim()) //換的人與LB4中的人相同，標記為回復 R1b
                {
                    flag = "R1b";
                }
            }

            LB5MatchingLog log = new LB5MatchingLog()
            {
                LogType = ALogType,
                WFColumn = AWFColumn,
                Factory = AFactory,
                LineCode = ALineCode,
                j_NO = AProject,
                J2_job = AWO,
                Rwo = ARWO,
                Qn = AQN,
                Bcolor = AColor,
                OperationSN = AOperationSN ?? 0,
                OperationName = AOperationName,
                OperationCode = AOperationCode,
                OriginalWF = AOriginalID,
                CurrentWF = ACurrentID,
                Flag = flag,
            };

            //因為在選人界面，用戶可能多次選人，所以一個工作位上只保留一次日誌，通過先刪除后插入的方法實現
            object obj = this.GetChangeSet().Inserts.FirstOrDefault(p => p.GetType() == typeof(LB5MatchingLog) &&
                           (p as LB5MatchingLog).LogType == ALogType &&
                           (p as LB5MatchingLog).Factory == AFactory &&
                           (p as LB5MatchingLog).LineCode == ALineCode &&
                           (p as LB5MatchingLog).j_NO == AProject &&
                           (p as LB5MatchingLog).J2_job == AWO &&
                           (p as LB5MatchingLog).Rwo == ARWO &&
                           (p as LB5MatchingLog).Qn == AQN &&
                           (p as LB5MatchingLog).Bcolor == AColor &&
                           (p as LB5MatchingLog).OperationSN == AOperationSN &&
                           (p as LB5MatchingLog).OperationCode == AOperationCode &&
                           (p as LB5MatchingLog).WFColumn == AWFColumn);

            if (obj != null)
            {
                this.LB5MatchingLogs.DeleteOnSubmit(obj as LB5MatchingLog);
            }

            this.LB5MatchingLogs.InsertOnSubmit(log);
        }


        //public void InsertLB5MatchingLog(LB5MatchingActions AWFAction, string AFactory, string ALineCode, string AProject, string AWO, string ARWO, string AQN,
        //    string AColor, int? AOperationSN, string AOperationName, string AOperationCode, string AOriginalWF, string ACurrentWF)
        //{

        //    ////1a) Code R1a =Substitute 替代
        //    ////1b) Code R1b =Change back 回復
        //    ////2a) Code R2a =Added 加入
        //    ////2b) Code R2b =Take away 減去

        //    if (AOriginalWF.Trim() == ACurrentWF.Trim())
        //    {
        //        return;
        //    }

        //    string flag = "R1a";

        //    if (AWFAction == LB5MatchingActions.ReArrangeWF)
        //    {
        //        Matching LB4Matching = this.Matchings.FirstOrDefault(p => p.Factory == AFactory && p.LineCode == ALineCode && p.j_NO == AProject &&
        //            p.J2_job == AWO && p.Rwo == ARWO && p.Qn == AQN && p.Bcolor == AColor);

        //        if (LB4Matching == null || string.IsNullOrEmpty(LB4Matching.WorkerId))
        //        {
        //            flag = "R1a";
        //        }
        //        else if (ACurrentWF.Trim() == LB4Matching.WorkerId.Trim()) //換的人與LB4中的人相同，標記為回復 R1b
        //        {
        //            flag = "R1b";
        //        }

        //    }
        //    else if (AWFAction == LB5MatchingActions.AddWF)
        //    {
        //        flag = "R2a";
        //    }
        //    else if (AWFAction == LB5MatchingActions.RemoveWF)
        //    {
        //        flag = "R2b";
        //    }

        //    LB5MatchingLog log = new LB5MatchingLog()
        //    {
        //        Factory = AFactory,
        //        LineCode = ALineCode,
        //        j_NO = AProject,
        //        J2_job = AWO,
        //        Rwo = ARWO,
        //        Qn = AQN,
        //        Bcolor = AColor,
        //        OperationSN = AOperationSN ?? 0,
        //        OperationName = AOperationName,
        //        OperationCode = AOperationCode,
        //        OriginalWF = AOriginalWF,
        //        CurrentWF = ACurrentWF,
        //        Flag = flag,
        //    };

        //    object obj = this.GetChangeSet().Inserts.FirstOrDefault(p => p.GetType() == typeof(LB5MatchingLog) &&
        //                   (p as LB5MatchingLog).Factory == AFactory &&
        //                   (p as LB5MatchingLog).LineCode == ALineCode &&
        //                   (p as LB5MatchingLog).j_NO == AProject &&
        //                   (p as LB5MatchingLog).J2_job == AWO &&
        //                   (p as LB5MatchingLog).Rwo == ARWO &&
        //                   (p as LB5MatchingLog).Qn == AQN &&
        //                   (p as LB5MatchingLog).Bcolor == AColor &&
        //                   (p as LB5MatchingLog).OperationSN == AOperationSN &&
        //                   (p as LB5MatchingLog).OperationCode == AOperationCode &&
        //                   (p as LB5MatchingLog).Flag == flag);

        //    if (obj != null)
        //    {
        //        this.LB5MatchingLogs.DeleteOnSubmit(obj as LB5MatchingLog);
        //    }

        //    this.LB5MatchingLogs.InsertOnSubmit(log);
        //}


        /// <summary>
        /// 得到Purchase Contract Report的數據
        /// </summary>
        /// <param name="APCNO">Purchase Contract NO.</param>
        /// <returns></returns>
        public List<PCReportMerge> GetPCReportData(string APCNO)
        {
            int Index = 1;
            int CategoryIndex = 1;
            List<PCReportMerge> lists = new List<PCReportMerge>();
            PCHeader pcHeader = this.PCHeaders.FirstOrDefault(p => p.PCNO == APCNO);
            foreach (var pcDetail in pcHeader.PCDetails.OrderBy(p => p.SortID))
            {
                CategoryIndex = 1;
                var PODetails = this.PODetails.Where(p => p.PONO == pcDetail.PONO && p.AmendNo == pcDetail.AmendNo).OrderBy(p => p.SortID);

                var PODetail_OtherItems = this.PODetail_OtherItems.Where(p => p.PONO == pcDetail.PONO && p.AmendNo == pcDetail.AmendNo).OrderBy(p => p.SortID);
                bool HasMultiBigCategory = PODetails.Where(p => p.IsBigCategory ?? false).Count() > 1;
                foreach (var poDetail in PODetails)
                {
                    if (poDetail.IsBigCategory ?? false)
                    {
                        //插入大分類的Brand、Model
                        PCReportMerge obj = new PCReportMerge();
                        obj.SortID = Index;
                        if (HasMultiBigCategory)
                        {
                            obj.ItemNo = string.Format("{0}.{1}", pcDetail.SortID.ToString(), CategoryIndex.ToString());
                            CategoryIndex++;
                        }
                        else
                        {
                            obj.ItemNo = pcDetail.SortID.ToString();
                        }

                        obj.InternalGroupID = pcDetail.SortID;
                        obj.HSCode = poDetail.HSCode;
                        obj.DeliveryDate = poDetail.DeliveryDate ?? DateTime.MinValue;
                        obj.DeliveryDateShow = obj.DeliveryDate == DateTime.MinValue ? "" : obj.DeliveryDate.ToString("dd-MMM-yy", CultureInfo.CreateSpecificCulture("en-GB"));
                        obj.Description = string.Format("Brand: {0} / Model No.: {1}", poDetail.Brand, poDetail.ModelNo);
                        obj.IsOtherItem = false;
                        obj.Unit = poDetail.Unit;
                        lists.Add(obj);
                        Index++;

                        //插入大分類的描述信息
                        PCReportMerge obj1 = new PCReportMerge();
                        obj1.SortID = Index;
                        //ItemNo = pcDetail.SortID,
                        obj1.InternalGroupID = pcDetail.SortID;
                        obj1.Description = poDetail.Item_EN;
                        obj1.DeliveryDate = poDetail.DeliveryDate ?? DateTime.MinValue;
                        //obj1.DeliveryDateShow = obj1.DeliveryDate == DateTime.MinValue ? "" : obj1.DeliveryDate.ToString("dd-MMM-yy", CultureInfo.CreateSpecificCulture("en-GB"));
                        obj1.Qty = poDetail.Qty;
                        obj1.Unit = poDetail.Unit;
                        obj1.UnitPrice = poDetail.UnitPrice;
                        obj1.Amount = poDetail.Amount;
                        obj1.IsOtherItem = false;
                        lists.Add(obj1);

                        Index++;
                    }
                    else
                    {

                        PCReportMerge obj = new PCReportMerge();
                        obj.SortID = Index;
                        //obj.ItemNo = pcDetail.SortID;
                        obj.InternalGroupID = pcDetail.SortID;

                        if (poDetail.POHeader.POType == 1 && !string.IsNullOrEmpty(poDetail.ItemCodeVendor)) //Requiqment PO
                        {
                            obj.Description = string.Format("-{0} {1}", poDetail.ItemCodeVendor, poDetail.Item_EN);
                        }
                        else
                        {
                            obj.Description = poDetail.Item_EN;
                        }
                        obj.DeliveryDate = poDetail.DeliveryDate ?? DateTime.MinValue;
                        //obj.DeliveryDateShow = obj.DeliveryDate == DateTime.MinValue ? "" : obj.DeliveryDate.ToString("dd-MMM-yy", CultureInfo.CreateSpecificCulture("en-GB"));
                        obj.Qty = poDetail.Qty;
                        obj.Unit = poDetail.Unit;
                        obj.UnitPrice = poDetail.UnitPrice;
                        obj.Amount = poDetail.Amount;
                        obj.IsOtherItem = false;
                        lists.Add(obj);

                        Index++;
                    }
                }

                //插入其他費用項
                foreach (var poDetailOtherItem in PODetail_OtherItems)
                {
                    lists.Add(new PCReportMerge()
                    {
                        SortID = Index,
                        //ItemNo = pcDetail.SortID,
                        InternalGroupID = pcDetail.SortID,
                        Description = poDetailOtherItem.Description,
                        Amount = poDetailOtherItem.Amount,
                        IsOtherItem = true
                    });
                    Index++;
                }
            }
            //var LastRecord = lists.OrderByDescending(p => p.SortID).FirstOrDefault();
            //if (LastRecord != null) LastRecord.SortID = 999999999;
            return lists;
        }


        /// <summary>
        /// 导入QN数据到LB4
        /// </summary>
        /// <param name="AFactory">工厂</param>
        /// <param name="AWorkshop">车间</param>
        /// <param name="ALine">生产线</param>
        /// <param name="AQNCount">要导入QN的个数</param>
        /// <param name="ANoLB3">导入的QN里未做LB3的款号列表</param>
        public void ImportQNToLB4(string AFactory, string AWorkshop, string ALine, int AQNCount, ref List<string> ANoLB3)
        {
            if (string.IsNullOrEmpty(AFactory)) return;

            LineBalanceIIDataContext LB3DB = ContextBuilder.CreateContext<LineBalanceIIDataContext>();

            string SqlStrLine = @"SELECT distinct PLINE 
                                  FROM TBLSHEDULE 
                                  WHERE TPLANT =''{0}''  AND  
                                        (''{1}'' = '''' or TShop = ''{1}'')  AND  
                                        (''{2}'' = '''' or PLINE = ''{2}'')  AND   
                                        TShop not in (''SC1'', ''NSB'') and
                                        (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''')";

            // DataTable dtLine = DBAccess.GetInterBaseTable(string.Format("SELECT distinct PLINE FROM TBLSHEDULE WHERE (TPLANT =''{0}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", AFactory));
            DataTable dtLine = DBAccess.GetInterBaseTable(string.Format(SqlStrLine, AFactory, AWorkshop, ALine));
            for (int j = 0; j < dtLine.Rows.Count; j++)
            {
                //插入一條Line下10張QN
                string Line = dtLine.Rows[j]["PLINE"].ToString();
                string Str = string.Format("SELECT PLINE,j_no ,J2_JOB,RWO,CSTYLE,ACOL,SCQTY,ARTNO,CFKSJS,CKJS,CFKSRQ,CFWCRQ,FCCS,SEQ,TSHOP,CWO FROM TBLSHEDULE WHERE (TPLANT =''{0}'') AND (PLINE=''{1}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') and (CFKSRQ is not null) ORDER BY CFKSRQ", AFactory, Line);
                string SqlStr = string.Format("select top {0} convert(bit, 0) as CheckFlag, * from openquery(interbase, '{1}')", AQNCount, Str);

                DataTable dt = DBAccess.GetTable(SqlStr);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    //沒做LB3的，不導入到LB4中
                    if (LB3DB.StyleMasters.Where(p => p.KHKH == dt.Rows[i]["CSTYLE"].ToString().TrimEnd() && (p.Statu == null || p.Statu == 0 || p.Statu == 1)).Count() > 0)
                    {
                        InsertQNData(AFactory.TrimEnd(), AWorkshop.TrimEnd(), dt.Rows[i], LB3DB);
                    }
                    else
                    {
                        ANoLB3.Add(dt.Rows[i]["CSTYLE"].ToString().TrimEnd());
                    }
                }
            }
        }

        void InsertQNData(string AFactory, string AWorkshop, DataRow dr, LineBalanceIIDataContext LB3DB)
        {
            int Count = this.WPMasters.Where(p =>
                p.Factory == AFactory &&
                p.LineCode == dr["PLINE"].ToString().TrimEnd() &&
                p.j_NO == dr["j_no"].ToString().TrimEnd() &&
                p.J2_job == dr["j2_job"].ToString().TrimEnd() &&
                p.Rwo == dr["rwo"].ToString().TrimEnd() &&
                p.Qn == dr["fccs"].ToString().TrimEnd() &&
                p.Bcolor == dr["acol"].ToString().TrimEnd()).Count();

            if (Count > 0) //QN已經增加過了，不能重複增加
            {
                return;
            }

            WPMaster CurWPM = new WPMaster();
            CurWPM.Factory = AFactory;
            CurWPM.LineCode = dr["PLINE"].ToString().TrimEnd();
            CurWPM.StartTime = Convert.ToDateTime(dr["CFKSRQ"].ToString());
            CurWPM.EndTime = Convert.ToDateTime(dr["CFWCRQ"].ToString());
            CurWPM.STime = Convert.ToDecimal(dr["CFKSJS"].ToString());
            CurWPM.ETime = Convert.ToDecimal(dr["CKJS"].ToString());
            CurWPM.j_NO = dr["j_no"].ToString().TrimEnd();
            CurWPM.J2_job = dr["j2_job"].ToString().TrimEnd();
            CurWPM.Rwo = dr["rwo"].ToString().TrimEnd();
            CurWPM.Qn = dr["fccs"].ToString().TrimEnd();
            CurWPM.Seq = Convert.ToInt32(dr["seq"].ToString().TrimEnd());
            CurWPM.Bcolor = dr["acol"].ToString().TrimEnd();
            CurWPM.Location = dr["TSHOP"].ToString().TrimEnd();
            CurWPM.Woc = dr["CWO"].ToString().TrimEnd();

            if (!string.IsNullOrEmpty(dr["SCQTY"].ToString().TrimEnd()))
            {
                CurWPM.QNQty = Convert.ToInt32(dr["SCQTY"].ToString().TrimEnd());
            }


            //得到LB3資料
            string KH = dr["CSTYLE"].ToString().TrimEnd();

            StyleMaster CurStyleMaster = LB3DB.StyleMasters.FirstOrDefault(p => p.KHKH == KH && (p.Statu == null || p.Statu == 0 || p.Statu == 1));
            if (AFactory == "CL")
            {
                CurStyleMaster = LB3DB.StyleMasters.FirstOrDefault(p => p.KHKH == KH && p.Factory == "CL" && (p.Statu == null || p.Statu == 0 || p.Statu == 1));
            }
            //StyleMaster CurStyleMaster = LB3DB.StyleMasters.Where(P => P.KHKH == KH).OrderByDescending(p => p.Edition).FirstOrDefault();

            CurWPM.PHStyleCode = CurStyleMaster.PHKH;
            CurWPM.CustStyleCode = CurStyleMaster.KHKH;
            CurWPM.Version = CurStyleMaster.Edition;
            CurWPM.ZH = CurStyleMaster.ZH;
            CurWPM.IsBatchAdd = true;

            int xh = 0;
            var SPLst = CurStyleMaster.StyleProcedures.OrderBy(P => P.XH);

            foreach (StyleProcedure Ps in SPLst)
            {
                Matching Lf = new Matching();
                Lf.WPSN = ++xh;
                //Lf.WPSN = Convert.ToInt32(Ps.XH);
                Lf.OperationSN = Ps.SN;
                Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
                Lf.OperationCode = Ps.WorkSN;
                Lf.OperationName = Ps.WorkName;
                Lf.FAE = AWorkshop == "PPW" ? "PP" : Ps.FAE;
                Lf.MCType = Ps.YCDM;
                Lf.GSD_SAH = Ps.CWorkSN;
                Lf.Rpm = Ps.YCSD;
                Lf.mc = true;
                Lf.JFlag = Ps.JFlag;
                Lf.BestSAH = Ps.PJHSAHSN;
                Lf.BestMTM = Ps.PJHMTM;
                Lf.WorkforceNum = Ps.LDL;
                Lf.IsFloater = false;

                Lf.Move_LB3 = Ps.Move;
                Lf.CWorkSN_LB3 = Ps.CWorkSN;
                Lf.BN_Seq_LB3 = Ps.BNCX;
                Lf.CWorkSN_LB3 = Ps.CWorkSN;
                Lf.JWorkSN_LB3 = Ps.JWorkSN;
                Lf.WFCode_LB3 = Ps.GRDH;
                Lf.GZW_LB3 = Ps.GZW;
                Lf.StaitonCount_LB3 = Ps.GZW;
                // Lf.WKStaitonSeq_LB3 = Ps.WKStaitonSeq;

                Lf.Mtm_Suggest = Ps.PJHMTM;
                Lf.Move = Ps.Move;

                CurWPM.Matchings.Add(Lf);
            }

            var SPLst1 = CurStyleMaster.StyleProcedure_Es.OrderBy(P => P.XH);
            foreach (StyleProcedure_E Ps in SPLst1)
            {
                Matching Lf = new Matching();
                Lf.WPSN = ++xh;
                //Lf.WPSN = Convert.ToInt32(Ps.XH);
                Lf.OperationSN = Ps.SN;
                Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
                Lf.OperationCode = Ps.WorkSN;
                Lf.OperationName = Ps.WorkName;
                Lf.FAE = AWorkshop == "PPW" ? "PP" : Ps.FAE;
                Lf.MCType = Ps.YCDM;
                Lf.GSD_SAH = Ps.CWorkSN;
                Lf.Rpm = Ps.YCSD;
                Lf.mc = true;
                Lf.JFlag = Ps.JFlag;
                Lf.BestSAH = Ps.PJHSAHSN;
                Lf.BestMTM = Ps.PJHMTM;
                Lf.WorkforceNum = Ps.LDL;
                Lf.Mtm_Suggest = Ps.PJHMTM;
                Lf.Move = Ps.Move;
                Lf.IsFloater = false;
                CurWPM.Matchings.Add(Lf);
            }

            var SPLst2 = CurStyleMaster.StyleProcedure_Fs.OrderBy(P => P.XH);
            foreach (StyleProcedure_F Ps in SPLst2)
            {
                Matching Lf = new Matching();
                Lf.WPSN = ++xh;
                //Lf.WPSN = Convert.ToInt32(Ps.XH);
                Lf.OperationSN = Ps.SN;
                Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
                Lf.OperationCode = Ps.WorkSN;
                Lf.OperationName = Ps.WorkName;
                Lf.FAE = AWorkshop == "PPW" ? "PP" : Ps.FAE;
                Lf.MCType = Ps.YCDM;
                Lf.GSD_SAH = Ps.CWorkSN;
                Lf.Rpm = Ps.YCSD;
                Lf.mc = true;
                Lf.JFlag = Ps.JFlag;
                Lf.BestSAH = Ps.PJHSAHSN;
                Lf.BestMTM = Ps.PJHMTM;
                Lf.WorkforceNum = Ps.LDL;
                Lf.Mtm_Suggest = Ps.PJHMTM;
                Lf.Move = Ps.Move;
                Lf.IsFloater = false;
                CurWPM.Matchings.Add(Lf);
            }

            this.WPMasters.InsertOnSubmit(CurWPM);
            this.SubmitChanges();
        }


        public string GetParamVaue(string AParamName)
        {

            string SqlStr = "select ParamValue from [PH.LWPM.WP]..Param where ParamName = '{0}'";
            SqlStr = string.Format(SqlStr, AParamName);
            DataTable dt = this.ExecuteDataTable(SqlStr, "");

            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["ParamValue"].ToString();
            }

            return "";
        }


        public DataSet GetAllSource(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {
            this.CommandTimeout = 8000;
            string SqlStr = "exec LB4PListFrmReport '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");
            return ds;
        }

        public List<OpsSpecSheetMaster> GetDataSet(DataSet ds)
        //(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {
            //RAPLQDataContext Context = ContextBuilder.CreateContext<RAPLQDataContext>();
            //SqlCommand da = new SqlCommand();
            //DataSet ds = new DataSet();
            //da.Connection = new SqlConnection(Context.Connection.ConnectionString);
            //da.CommandType = CommandType.StoredProcedure;
            //da.CommandText = "LB4PListFrmReport";

            //da.Parameters.Add("@RWO", SqlDbType.NVarChar, 150);
            //da.Parameters["@RWO"].Value = Rwo;

            //da.Parameters.Add("@Qn", SqlDbType.NVarChar, 150);
            //da.Parameters["@Qn"].Value = Qn;

            //da.Parameters.Add("@ProjectNo", SqlDbType.NVarChar, 150);
            //da.Parameters["@ProjectNo"].Value = j_NO;

            //da.Parameters.Add("@Line", SqlDbType.NVarChar, 50);
            //da.Parameters["@Line"].Value = LineCode;

            //da.Parameters.Add("@Color", SqlDbType.NVarChar, 50);
            //da.Parameters["@Color"].Value = Bcolor;

            //da.Parameters.Add("@Wo", SqlDbType.NVarChar, 50);
            //da.Parameters["@Wo"].Value = J2_job;

            //da.Parameters.Add("@Factory", SqlDbType.NVarChar, 50);
            //da.Parameters["@Factory"].Value = Factory;

            //da.Parameters.Add("@OptsType", SqlDbType.NVarChar, 50);
            //da.Parameters["@OptsType"].Value = OptionType;

            //da.Parameters.Add("@StepType", SqlDbType.NVarChar, 50);
            //da.Parameters["@StepType"].Value = Steptype;

            //da.Parameters.Add("@OTN", SqlDbType.NVarChar, 50);
            //da.Parameters["@OTN"].Value = OTN;

            //da.Parameters.Add("@dateTime", SqlDbType.DateTime);
            //da.Parameters["@dateTime"].Value = dateTime;


            //da.Parameters.Add("@OpetCode", SqlDbType.NVarChar, 50);
            //da.Parameters["@OpetCode"].Value = OperationCode;

            //da.Parameters.Add("@WorkId", SqlDbType.NVarChar, 50);
            //da.Parameters["@WorkId"].Value = WorkId;


            //SqlDataAdapter dap = new SqlDataAdapter();
            //dap.SelectCommand = da;

            //dap.Fill(ds);

            //@RWO  varchar(150),
            //@Qn  varchar(150),
            //@ProjectNo  varchar(150),
            //@Line  varchar(150),
            //@Color  varchar(150),
            //@Wo  varchar(150),
            //@Factory  varchar(150),
            //@OptsType  varchar(150),
            //@StepType varchar(150),
            //@OTN varchar(150),
            //@dateTime DateTime,
            //@OpetCode varchar(150),
            //@WorkId varchar(150)

            //this.CommandTimeout = 8000;
            //string SqlStr = "exec LB4PListFrmReport '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            //SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            //DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

            int b = ds.Tables[0].Rows.Count;
            List<OpsSpecSheetMaster> MasterList = new List<OpsSpecSheetMaster>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    OpsSpecSheetMaster MasterObj = new OpsSpecSheetMaster();
                    MasterObj.CustStyle = ds.Tables[0].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[0].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[0].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[0].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[0].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[0].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[0].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[0].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[0].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[0].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[0].Rows[i]["GuageThrow1"].ToString();
                    //MasterObj.GuageThrowUnit = ds.Tables[0].Rows[i]["GuageThrowUnit"].ToString();
                    MasterObj.StitchDensity = ds.Tables[0].Rows[i]["StitchDensity"].ToString();
                    //MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                    MasterObj.NeedleNo = ds.Tables[0].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[0].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[0].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[0].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[0].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[0].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[0].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[0].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[0].Rows[i]["SeamAllowance"].ToString();

                    //MasterObj.SeamAllowanceUnit = ds.Tables[0].Rows[i]["SeamAllowanceUnit"].ToString();
                    MasterObj.TypeOfSAName = ds.Tables[0].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[0].Rows[i]["TypeOfSANumb"].ToString();
                    //MasterObj.TypeOfSAUnit = ds.Tables[0].Rows[i]["TypeOfSAUnit"].ToString();
                    MasterObj.ECFYQ = ds.Tables[0].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[0].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[0].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[0].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[0].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[0].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[0].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[0].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[0].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[0].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[0].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[0].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[0].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[0].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[0].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[0].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[0].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[0].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[0].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[0].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[0].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[0].Rows[i]["OptDes_Eng3"].ToString();

                    //MasterObj.WorkerId = "";
                    //MasterObj.MachineId = "";
                    MasterObj.WorkerId = ds.Tables[0].Rows[i]["WorkerId"].ToString();
                    MasterObj.MachineId = ds.Tables[0].Rows[i]["MachineId"].ToString();
                    MasterObj.WorkerName = ds.Tables[0].Rows[i]["WorkerName"].ToString();
                    MasterObj.FAE = ds.Tables[0].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[0].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[0].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[0].Rows[i]["CSID3"].ToString();

                    MasterObj.HWCode1 = ds.Tables[0].Rows[i]["HW1"].ToString();
                    MasterObj.HWCode2 = ds.Tables[0].Rows[i]["HW2"].ToString();
                    MasterObj.HWCode3 = ds.Tables[0].Rows[i]["HW3"].ToString();

                    MasterObj.Tcfyq1 = ds.Tables[0].Rows[i]["Tcfyq1"].ToString();
                    MasterObj.Tcfyq2 = ds.Tables[0].Rows[i]["Tcfyq2"].ToString();
                    MasterObj.Tcfyq3 = ds.Tables[0].Rows[i]["Tcfyq3"].ToString();

                    MasterObj.Tgxm1 = ds.Tables[0].Rows[i]["Tgxm1"].ToString();
                    MasterObj.Tgxm2 = ds.Tables[0].Rows[i]["Tgxm2"].ToString();
                    MasterObj.Tgxm3 = ds.Tables[0].Rows[i]["Tgxm3"].ToString();

                    MasterObj.Tyczl1 = ds.Tables[0].Rows[i]["Tyczl1"].ToString();
                    MasterObj.Tyczl2 = ds.Tables[0].Rows[i]["Tyczl2"].ToString();
                    MasterObj.Tyczl3 = ds.Tables[0].Rows[i]["Tyczl3"].ToString();



                    MasterObj.QualAuditor = ds.Tables[0].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[0].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[0].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[0].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[0].Rows[i]["Superintendent"].ToString();


                    MasterObj.headernumber = int.Parse(ds.Tables[0].Rows[i]["headernumber"].ToString());

                    if (ds.Tables[0].Rows[i]["Flag"].ToString() == "ChangeMC")
                    {
                        MasterObj.FlagName = "換車"; MasterObj.Flag = "Changed HW";
                    }

                    else if (ds.Tables[0].Rows[i]["Flag"].ToString() == "ChangeWF")
                    {
                        MasterObj.FlagName = "Substitute 替代"; MasterObj.Flag = "R1a";
                    }
                    //回复
                    //else if (ds.Tables[0].Rows[i]["Flag"].ToString() == "ChangeWF")
                    //{
                    //    MasterObj.FlagName = "Change back 回復"; MasterObj.Flag = "R1b";
                    //}
                    //減去
                    //else if (ds.Tables[0].Rows[i]["Flag"].ToString() == "ChangeWF")
                    //{

                    //    MasterObj.FlagName = "Take away 減去"; MasterObj.Flag = "R2b";
                    //}

                    else if (ds.Tables[0].Rows[i]["Flag"].ToString() == "AddWF")
                    {
                        MasterObj.FlagName = "Added 加入"; MasterObj.Flag = "R2a";
                    }
                    else
                    { MasterObj.FlagName = ""; MasterObj.Flag = ""; }


                    if (ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {

                        if (MasterObj.NeedleThreads != "" || MasterObj.BobbinLopper != "" || MasterObj.GuidingPlate != "")
                        {
                            MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                            MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                        }
                        else
                        {
                            MasterObj.StitchDensityUnit = "";
                            MasterObj.GuageThrowUnit = ""; MasterObj.SeamAllowanceUnit = ""; MasterObj.TypeOfSAUnit = "";
                        }
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }



        public List<OpsSpecSheetMaster2> GetDataSet2(DataSet ds)
        //(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {

            //this.CommandTimeout = 8000;
            //string SqlStr = "exec LB4PListFrmReport '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            //SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            //DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

            int b = ds.Tables[1].Rows.Count;



            List<OpsSpecSheetMaster2> MasterList = new List<OpsSpecSheetMaster2>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    OpsSpecSheetMaster2 MasterObj = new OpsSpecSheetMaster2();
                    MasterObj.CustStyle = ds.Tables[1].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[1].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[1].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[1].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[1].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[1].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[1].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[1].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[1].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[1].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[1].Rows[i]["GuageThrow1"].ToString();
                    //MasterObj.GuageThrowUnit = ds.Tables[0].Rows[i]["GuageThrowUnit"].ToString();
                    MasterObj.StitchDensity = ds.Tables[1].Rows[i]["StitchDensity"].ToString();
                    //MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                    MasterObj.NeedleNo = ds.Tables[1].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[1].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[1].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[1].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[1].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[1].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[1].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[1].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[1].Rows[i]["SeamAllowance"].ToString();

                    //MasterObj.SeamAllowanceUnit = ds.Tables[0].Rows[i]["SeamAllowanceUnit"].ToString();
                    MasterObj.TypeOfSAName = ds.Tables[1].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[1].Rows[i]["TypeOfSANumb"].ToString();
                    //MasterObj.TypeOfSAUnit = ds.Tables[0].Rows[i]["TypeOfSAUnit"].ToString();
                    MasterObj.ECFYQ = ds.Tables[1].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[1].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[1].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[1].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[1].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[1].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[1].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[1].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[1].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[1].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[1].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[1].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[1].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[1].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[1].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[1].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[1].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[1].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[1].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[1].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[1].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[1].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[1].Rows[i]["WorkerId"].ToString();
                    MasterObj.WorkerName = ds.Tables[1].Rows[i]["WorkerName"].ToString();
                    MasterObj.MachineId = ds.Tables[1].Rows[i]["MachineId"].ToString();
                    MasterObj.FAE = ds.Tables[1].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[1].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[1].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[1].Rows[i]["CSID3"].ToString();

                    MasterObj.HWCode1 = ds.Tables[1].Rows[i]["HW1"].ToString();
                    MasterObj.HWCode2 = ds.Tables[1].Rows[i]["HW2"].ToString();
                    MasterObj.HWCode3 = ds.Tables[1].Rows[i]["HW3"].ToString();

                    MasterObj.Tcfyq1 = ds.Tables[1].Rows[i]["Tcfyq1"].ToString();
                    MasterObj.Tcfyq2 = ds.Tables[1].Rows[i]["Tcfyq2"].ToString();
                    MasterObj.Tcfyq3 = ds.Tables[1].Rows[i]["Tcfyq3"].ToString();

                    MasterObj.Tgxm1 = ds.Tables[1].Rows[i]["Tgxm1"].ToString();
                    MasterObj.Tgxm2 = ds.Tables[1].Rows[i]["Tgxm2"].ToString();
                    MasterObj.Tgxm3 = ds.Tables[1].Rows[i]["Tgxm3"].ToString();

                    MasterObj.Tyczl1 = ds.Tables[1].Rows[i]["Tyczl1"].ToString();
                    MasterObj.Tyczl2 = ds.Tables[1].Rows[i]["Tyczl2"].ToString();
                    MasterObj.Tyczl3 = ds.Tables[1].Rows[i]["Tyczl3"].ToString();

                    MasterObj.QualAuditor = ds.Tables[1].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[1].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[1].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[1].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[1].Rows[i]["Superintendent"].ToString();

                    //table2
                    MasterObj.Glue_Model = ds.Tables[1].Rows[i]["Glue_Model"].ToString();
                    MasterObj.Glue_Thick = ds.Tables[1].Rows[i]["Glue_Thick"].ToString();
                    MasterObj.Glue_Width = ds.Tables[1].Rows[i]["Glue_Width"].ToString();
                    MasterObj.SingleOrDouble = ds.Tables[1].Rows[i]["SingleOrDouble"].ToString();
                    MasterObj.Temp_SP = ds.Tables[1].Rows[i]["Temp_SP"].ToString();
                    MasterObj.Temp_XP = ds.Tables[1].Rows[i]["Temp_XP"].ToString();
                    MasterObj.TempMeterStrap = ds.Tables[1].Rows[i]["TempMeterStrap"].ToString();
                    MasterObj.Temp_SC = ds.Tables[1].Rows[i]["Temp_SC"].ToString();
                    MasterObj.Temp_XC = ds.Tables[1].Rows[i]["Temp_XC"].ToString();
                    MasterObj.Temp_FRC = ds.Tables[1].Rows[i]["Temp_FRC"].ToString();
                    MasterObj.Temp_YX = ds.Tables[1].Rows[i]["Temp_YX"].ToString();
                    MasterObj.Temp_BW = ds.Tables[1].Rows[i]["Temp_BW"].ToString();
                    MasterObj.Sped_SY = ds.Tables[1].Rows[i]["Sped_SY"].ToString();
                    MasterObj.Disp_IsSyl = ds.Tables[1].Rows[i]["Disp_IsSyl"].ToString();
                    MasterObj.Sped_XY = ds.Tables[1].Rows[i]["Sped_XY"].ToString();
                    MasterObj.Disp_IsXyl = ds.Tables[1].Rows[i]["Disp_IsXyl"].ToString();
                    MasterObj.Sped_CD = ds.Tables[1].Rows[i]["Sped_CD"].ToString();
                    MasterObj.Pres_QX = ds.Tables[1].Rows[i]["Pres_QX"].ToString();
                    MasterObj.Pres_HX = ds.Tables[1].Rows[i]["Pres_HX"].ToString();
                    MasterObj.Pres_SPD = ds.Tables[1].Rows[i]["Pres_SPD"].ToString();
                    MasterObj.Pres_SCF = ds.Tables[1].Rows[i]["Pres_SCF"].ToString();
                    MasterObj.PressureStrap = ds.Tables[1].Rows[i]["PressureStrap"].ToString();



                    MasterObj.headernumber = int.Parse(ds.Tables[1].Rows[i]["headernumber"].ToString());

                    if (ds.Tables[1].Rows[i]["Flag"].ToString() == "ChangeMC")
                    {
                        MasterObj.FlagName = "換車"; MasterObj.Flag = "Changed HW";
                    }
                    else if (ds.Tables[1].Rows[i]["Flag"].ToString() == "ChangeWF")
                    {
                        MasterObj.FlagName = "Substitute 替代"; MasterObj.Flag = "R1a";
                    }
                    else if (ds.Tables[1].Rows[i]["Flag"].ToString() == "AddWF")
                    {
                        MasterObj.FlagName = "Added 加入"; MasterObj.Flag = "R2a";
                    }
                    else
                    { MasterObj.FlagName = ""; MasterObj.Flag = ""; }


                    if (ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }


        public List<OpsSpecSheetMaster3> GetDataSet3(DataSet ds)
        //(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {

            //this.CommandTimeout = 8000;
            //string SqlStr = "exec LB4PListFrmReport  '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            //SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            //DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

            int b = ds.Tables[2].Rows.Count;



            List<OpsSpecSheetMaster3> MasterList = new List<OpsSpecSheetMaster3>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
                {
                    OpsSpecSheetMaster3 MasterObj = new OpsSpecSheetMaster3();
                    MasterObj.CustStyle = ds.Tables[2].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[2].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[2].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[2].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[2].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[2].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[2].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[2].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[2].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[2].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[2].Rows[i]["GuageThrow1"].ToString();
                    //MasterObj.GuageThrowUnit = ds.Tables[0].Rows[i]["GuageThrowUnit"].ToString();
                    MasterObj.StitchDensity = ds.Tables[2].Rows[i]["StitchDensity"].ToString();
                    //MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                    MasterObj.NeedleNo = ds.Tables[2].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[2].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[2].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[2].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[2].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[2].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[2].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[2].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[2].Rows[i]["SeamAllowance"].ToString();

                    //MasterObj.SeamAllowanceUnit = ds.Tables[0].Rows[i]["SeamAllowanceUnit"].ToString();
                    MasterObj.TypeOfSAName = ds.Tables[2].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[2].Rows[i]["TypeOfSANumb"].ToString();
                    //MasterObj.TypeOfSAUnit = ds.Tables[0].Rows[i]["TypeOfSAUnit"].ToString();
                    MasterObj.ECFYQ = ds.Tables[2].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[2].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[2].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[2].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[2].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[2].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[2].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[2].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[2].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[2].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[2].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[2].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[2].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[2].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[2].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[2].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[2].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[2].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[2].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[2].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[2].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[2].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[2].Rows[i]["WorkerId"].ToString();
                    MasterObj.WorkerName = ds.Tables[2].Rows[i]["WorkerName"].ToString();
                    MasterObj.MachineId = ds.Tables[2].Rows[i]["MachineId"].ToString();
                    MasterObj.FAE = ds.Tables[2].Rows[i]["FAE"].ToString();

                    MasterObj.CSID1 = ds.Tables[2].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[2].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[2].Rows[i]["CSID3"].ToString();

                    MasterObj.HWCode1 = ds.Tables[2].Rows[i]["HW1"].ToString();
                    MasterObj.HWCode2 = ds.Tables[2].Rows[i]["HW2"].ToString();
                    MasterObj.HWCode3 = ds.Tables[2].Rows[i]["HW3"].ToString();

                    MasterObj.Tcfyq1 = ds.Tables[2].Rows[i]["Tcfyq1"].ToString();
                    MasterObj.Tcfyq2 = ds.Tables[2].Rows[i]["Tcfyq2"].ToString();
                    MasterObj.Tcfyq3 = ds.Tables[2].Rows[i]["Tcfyq3"].ToString();

                    MasterObj.Tgxm1 = ds.Tables[2].Rows[i]["Tgxm1"].ToString();
                    MasterObj.Tgxm2 = ds.Tables[2].Rows[i]["Tgxm2"].ToString();
                    MasterObj.Tgxm3 = ds.Tables[2].Rows[i]["Tgxm3"].ToString();

                    MasterObj.Tyczl1 = ds.Tables[2].Rows[i]["Tyczl1"].ToString();
                    MasterObj.Tyczl2 = ds.Tables[2].Rows[i]["Tyczl2"].ToString();
                    MasterObj.Tyczl3 = ds.Tables[2].Rows[i]["Tyczl3"].ToString();

                    MasterObj.QualAuditor = ds.Tables[2].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[2].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[2].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[2].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[2].Rows[i]["Superintendent"].ToString();

                    //table3
                    MasterObj.UltrasonicTimeDelay = ds.Tables[2].Rows[i]["UltrasonicTimeDelay"].ToString();
                    MasterObj.UltrasonicTimeWelding = ds.Tables[2].Rows[i]["UltrasonicTimeWelding"].ToString();
                    MasterObj.UltrasonicTimeHarden = ds.Tables[2].Rows[i]["UltrasonicTimeHarden"].ToString();
                    MasterObj.UltrasonicRevolution = ds.Tables[2].Rows[i]["UltrasonicRevolution"].ToString();
                    MasterObj.UltrasonicPressure = ds.Tables[2].Rows[i]["UltrasonicPressure"].ToString();
                    MasterObj.Spec_Temp = ds.Tables[2].Rows[i]["Spec_Temp"].ToString();
                    MasterObj.Spec_Time = ds.Tables[2].Rows[i]["Spec_Time"].ToString();
                    MasterObj.Spec_Pres = ds.Tables[2].Rows[i]["Spec_Pres"].ToString();




                    MasterObj.headernumber = int.Parse(ds.Tables[2].Rows[i]["headernumber"].ToString());

                    if (ds.Tables[2].Rows[i]["Flag"].ToString() == "ChangeMC")
                    {
                        MasterObj.FlagName = "換車"; MasterObj.Flag = "Changed HW";
                    }
                    else if (ds.Tables[2].Rows[i]["Flag"].ToString() == "ChangeWF")
                    {
                        MasterObj.FlagName = "Substitute 替代"; MasterObj.Flag = "R1a";
                    }
                    else if (ds.Tables[2].Rows[i]["Flag"].ToString() == "AddWF")
                    {
                        MasterObj.FlagName = "Added 加入"; MasterObj.Flag = "R2a";
                    }
                    else
                    { MasterObj.FlagName = ""; MasterObj.Flag = ""; }


                    if (ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }



        public List<OpsSpecSheetMaster> GetDataSet(DataSet ds, int ALanguage)
        {
            int b = ds.Tables[0].Rows.Count;
            List<OpsSpecSheetMaster> MasterList = new List<OpsSpecSheetMaster>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    OpsSpecSheetMaster MasterObj = new OpsSpecSheetMaster();
                    MasterObj.CustStyle = ds.Tables[0].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[0].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[0].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[0].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[0].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[0].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[0].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[0].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[0].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[0].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[0].Rows[i]["GuageThrow1"].ToString();
                    MasterObj.StitchDensity = ds.Tables[0].Rows[i]["StitchDensity"].ToString();
                    MasterObj.NeedleNo = ds.Tables[0].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[0].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[0].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[0].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[0].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[0].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[0].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[0].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[0].Rows[i]["SeamAllowance"].ToString();

                    MasterObj.TypeOfSAName = ds.Tables[0].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[0].Rows[i]["TypeOfSANumb"].ToString();
                    MasterObj.ECFYQ = ds.Tables[0].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[0].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[0].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[0].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[0].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[0].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[0].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[0].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[0].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[0].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[0].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[0].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[0].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[0].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[0].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[0].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[0].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[0].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[0].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[0].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[0].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[0].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[0].Rows[i]["WorkerId"].ToString();
                    MasterObj.MachineId = ds.Tables[0].Rows[i]["MachineId"].ToString();
                    MasterObj.WorkerName = ds.Tables[0].Rows[i]["WorkerName"].ToString();
                    MasterObj.FAE = ds.Tables[0].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[0].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[0].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[0].Rows[i]["CSID3"].ToString();

                    MasterObj.HWCode1 = ds.Tables[0].Rows[i]["HW1"].ToString();
                    MasterObj.HWCode2 = ds.Tables[0].Rows[i]["HW2"].ToString();
                    MasterObj.HWCode3 = ds.Tables[0].Rows[i]["HW3"].ToString();

                    MasterObj.Tcfyq1 = ds.Tables[0].Rows[i]["CFYQ"].ToString();
                    MasterObj.Tcfyq2 = ds.Tables[0].Rows[i]["CFYQ1"].ToString();
                    MasterObj.Tcfyq3 = ds.Tables[0].Rows[i]["CFYQ2"].ToString();

                    MasterObj.Tgxm1 = ds.Tables[0].Rows[i]["OptDes1"].ToString();
                    MasterObj.Tgxm2 = ds.Tables[0].Rows[i]["OptDes2"].ToString();
                    MasterObj.Tgxm3 = ds.Tables[0].Rows[i]["OptDes3"].ToString();

                    MasterObj.Tyczl1 = ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.Tyczl2 = ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.Tyczl3 = ds.Tables[0].Rows[i]["CFYQCode2"].ToString();



                    MasterObj.QualAuditor = ds.Tables[0].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[0].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[0].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[0].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[0].Rows[i]["Superintendent"].ToString();


                    MasterObj.headernumber = int.Parse(ds.Tables[0].Rows[i]["headernumber"].ToString());

                    MasterObj.FlagName = TypeName(ds.Tables[0].Rows[i]["Flag"].ToString(), ALanguage);
                    MasterObj.Flag = ds.Tables[0].Rows[i]["Flag"].ToString();


                    if (ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {

                        if (MasterObj.NeedleThreads != "" || MasterObj.BobbinLopper != "" || MasterObj.GuidingPlate != "")
                        {
                            MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                            MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                        }
                        else
                        {
                            MasterObj.StitchDensityUnit = "";
                            MasterObj.GuageThrowUnit = ""; MasterObj.SeamAllowanceUnit = ""; MasterObj.TypeOfSAUnit = "";
                        }
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }



        public List<OpsSpecSheetMaster2> GetDataSet2(DataSet ds, int ALanguage)
        {

            int b = ds.Tables[1].Rows.Count;
            List<OpsSpecSheetMaster2> MasterList = new List<OpsSpecSheetMaster2>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    OpsSpecSheetMaster2 MasterObj = new OpsSpecSheetMaster2();
                    MasterObj.CustStyle = ds.Tables[1].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[1].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[1].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[1].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[1].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[1].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[1].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[1].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[1].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[1].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[1].Rows[i]["GuageThrow1"].ToString();
                    MasterObj.StitchDensity = ds.Tables[1].Rows[i]["StitchDensity"].ToString();
                    MasterObj.NeedleNo = ds.Tables[1].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[1].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[1].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[1].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[1].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[1].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[1].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[1].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[1].Rows[i]["SeamAllowance"].ToString();


                    MasterObj.TypeOfSAName = ds.Tables[1].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[1].Rows[i]["TypeOfSANumb"].ToString();
                    MasterObj.ECFYQ = ds.Tables[1].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[1].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[1].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[1].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[1].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[1].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[1].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[1].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[1].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[1].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[1].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[1].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[1].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[1].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[1].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[1].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[1].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[1].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[1].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[1].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[1].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[1].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[1].Rows[i]["WorkerId"].ToString();
                    MasterObj.WorkerName = ds.Tables[1].Rows[i]["WorkerName"].ToString();
                    MasterObj.MachineId = ds.Tables[1].Rows[i]["MachineId"].ToString();
                    MasterObj.FAE = ds.Tables[1].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[1].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[1].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[1].Rows[i]["CSID3"].ToString();

                    MasterObj.HWCode1 = ds.Tables[1].Rows[i]["HW1"].ToString();
                    MasterObj.HWCode2 = ds.Tables[1].Rows[i]["HW2"].ToString();
                    MasterObj.HWCode3 = ds.Tables[1].Rows[i]["HW3"].ToString();

                    MasterObj.Tcfyq1 = ds.Tables[1].Rows[i]["CFYQ"].ToString();
                    MasterObj.Tcfyq2 = ds.Tables[1].Rows[i]["CFYQ1"].ToString();
                    MasterObj.Tcfyq3 = ds.Tables[1].Rows[i]["CFYQ2"].ToString();

                    MasterObj.Tgxm1 = ds.Tables[1].Rows[i]["OptDes1"].ToString();
                    MasterObj.Tgxm2 = ds.Tables[1].Rows[i]["OptDes2"].ToString();
                    MasterObj.Tgxm3 = ds.Tables[1].Rows[i]["OptDes3"].ToString();

                    MasterObj.Tyczl1 = ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.Tyczl2 = ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.Tyczl3 = ds.Tables[1].Rows[i]["CFYQCode2"].ToString();

                    MasterObj.QualAuditor = ds.Tables[1].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[1].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[1].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[1].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[1].Rows[i]["Superintendent"].ToString();

                    //table2
                    MasterObj.Glue_Model = ds.Tables[1].Rows[i]["Glue_Model"].ToString();
                    MasterObj.Glue_Thick = ds.Tables[1].Rows[i]["Glue_Thick"].ToString();
                    MasterObj.Glue_Width = ds.Tables[1].Rows[i]["Glue_Width"].ToString();
                    MasterObj.SingleOrDouble = ds.Tables[1].Rows[i]["SingleOrDouble"].ToString();
                    MasterObj.Temp_SP = ds.Tables[1].Rows[i]["Temp_SP"].ToString();
                    MasterObj.Temp_XP = ds.Tables[1].Rows[i]["Temp_XP"].ToString();
                    MasterObj.TempMeterStrap = ds.Tables[1].Rows[i]["TempMeterStrap"].ToString();
                    MasterObj.Temp_SC = ds.Tables[1].Rows[i]["Temp_SC"].ToString();
                    MasterObj.Temp_XC = ds.Tables[1].Rows[i]["Temp_XC"].ToString();
                    MasterObj.Temp_FRC = ds.Tables[1].Rows[i]["Temp_FRC"].ToString();
                    MasterObj.Temp_YX = ds.Tables[1].Rows[i]["Temp_YX"].ToString();
                    MasterObj.Temp_BW = ds.Tables[1].Rows[i]["Temp_BW"].ToString();
                    MasterObj.Sped_SY = ds.Tables[1].Rows[i]["Sped_SY"].ToString();
                    MasterObj.Disp_IsSyl = ds.Tables[1].Rows[i]["Disp_IsSyl"].ToString();
                    MasterObj.Sped_XY = ds.Tables[1].Rows[i]["Sped_XY"].ToString();
                    MasterObj.Disp_IsXyl = ds.Tables[1].Rows[i]["Disp_IsXyl"].ToString();
                    MasterObj.Sped_CD = ds.Tables[1].Rows[i]["Sped_CD"].ToString();
                    MasterObj.Pres_QX = ds.Tables[1].Rows[i]["Pres_QX"].ToString();
                    MasterObj.Pres_HX = ds.Tables[1].Rows[i]["Pres_HX"].ToString();
                    MasterObj.Pres_SPD = ds.Tables[1].Rows[i]["Pres_SPD"].ToString();
                    MasterObj.Pres_SCF = ds.Tables[1].Rows[i]["Pres_SCF"].ToString();
                    MasterObj.PressureStrap = ds.Tables[1].Rows[i]["PressureStrap"].ToString();



                    MasterObj.headernumber = int.Parse(ds.Tables[1].Rows[i]["headernumber"].ToString());

                    MasterObj.FlagName = TypeName(ds.Tables[1].Rows[i]["Flag"].ToString(), ALanguage);
                    MasterObj.Flag = ds.Tables[1].Rows[i]["Flag"].ToString();


                    if (ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }


        public List<OpsSpecSheetMaster3> GetDataSet3(DataSet ds, int ALanguage)
        {
            int b = ds.Tables[2].Rows.Count;
            List<OpsSpecSheetMaster3> MasterList = new List<OpsSpecSheetMaster3>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
                {
                    OpsSpecSheetMaster3 MasterObj = new OpsSpecSheetMaster3();
                    MasterObj.CustStyle = ds.Tables[2].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[2].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[2].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[2].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[2].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[2].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[2].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[2].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[2].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[2].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[2].Rows[i]["GuageThrow1"].ToString();
                    MasterObj.StitchDensity = ds.Tables[2].Rows[i]["StitchDensity"].ToString();
                    MasterObj.NeedleNo = ds.Tables[2].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[2].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[2].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[2].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[2].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[2].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[2].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[2].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[2].Rows[i]["SeamAllowance"].ToString();

                    MasterObj.TypeOfSAName = ds.Tables[2].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[2].Rows[i]["TypeOfSANumb"].ToString();
                    MasterObj.ECFYQ = ds.Tables[2].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[2].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[2].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[2].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[2].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[2].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[2].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[2].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[2].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[2].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[2].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[2].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[2].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[2].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[2].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[2].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[2].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[2].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[2].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[2].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[2].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[2].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[2].Rows[i]["WorkerId"].ToString();
                    MasterObj.WorkerName = ds.Tables[2].Rows[i]["WorkerName"].ToString();
                    MasterObj.MachineId = ds.Tables[2].Rows[i]["MachineId"].ToString();
                    MasterObj.FAE = ds.Tables[2].Rows[i]["FAE"].ToString();

                    MasterObj.CSID1 = ds.Tables[2].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[2].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[2].Rows[i]["CSID3"].ToString();

                    MasterObj.HWCode1 = ds.Tables[2].Rows[i]["HW1"].ToString();
                    MasterObj.HWCode2 = ds.Tables[2].Rows[i]["HW2"].ToString();
                    MasterObj.HWCode3 = ds.Tables[2].Rows[i]["HW3"].ToString();

                    MasterObj.Tcfyq1 = ds.Tables[2].Rows[i]["CFYQ"].ToString();
                    MasterObj.Tcfyq2 = ds.Tables[2].Rows[i]["CFYQ1"].ToString();
                    MasterObj.Tcfyq3 = ds.Tables[2].Rows[i]["CFYQ2"].ToString();

                    MasterObj.Tgxm1 = ds.Tables[2].Rows[i]["OptDes1"].ToString();
                    MasterObj.Tgxm2 = ds.Tables[2].Rows[i]["OptDes2"].ToString();
                    MasterObj.Tgxm3 = ds.Tables[2].Rows[i]["OptDes3"].ToString();

                    MasterObj.Tyczl1 = ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.Tyczl2 = ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.Tyczl3 = ds.Tables[2].Rows[i]["CFYQCode2"].ToString();

                    MasterObj.QualAuditor = ds.Tables[2].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[2].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[2].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[2].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[2].Rows[i]["Superintendent"].ToString();

                    //table3
                    MasterObj.UltrasonicTimeDelay = ds.Tables[2].Rows[i]["UltrasonicTimeDelay"].ToString();
                    MasterObj.UltrasonicTimeWelding = ds.Tables[2].Rows[i]["UltrasonicTimeWelding"].ToString();
                    MasterObj.UltrasonicTimeHarden = ds.Tables[2].Rows[i]["UltrasonicTimeHarden"].ToString();
                    MasterObj.UltrasonicRevolution = ds.Tables[2].Rows[i]["UltrasonicRevolution"].ToString();
                    MasterObj.UltrasonicPressure = ds.Tables[2].Rows[i]["UltrasonicPressure"].ToString();
                    MasterObj.Spec_Temp = ds.Tables[2].Rows[i]["Spec_Temp"].ToString();
                    MasterObj.Spec_Time = ds.Tables[2].Rows[i]["Spec_Time"].ToString();
                    MasterObj.Spec_Pres = ds.Tables[2].Rows[i]["Spec_Pres"].ToString();
                    MasterObj.headernumber = int.Parse(ds.Tables[2].Rows[i]["headernumber"].ToString());

                    MasterObj.FlagName = TypeName(ds.Tables[2].Rows[i]["Flag"].ToString(), ALanguage);
                    MasterObj.Flag = ds.Tables[2].Rows[i]["Flag"].ToString();


                    if (ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }





        public List<OpsSpecSheetMaster> Step5GetDataSet(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {

            this.CommandTimeout = 8000;
            string SqlStr = "exec LB4PListFrmReportStep5 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

            int b = ds.Tables[0].Rows.Count;

            List<OpsSpecSheetMaster> MasterList = new List<OpsSpecSheetMaster>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    OpsSpecSheetMaster MasterObj = new OpsSpecSheetMaster();
                    MasterObj.CustStyle = ds.Tables[0].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[0].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[0].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[0].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[0].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[0].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[0].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[0].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[0].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[0].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[0].Rows[i]["GuageThrow1"].ToString();
                    //MasterObj.GuageThrowUnit = ds.Tables[0].Rows[i]["GuageThrowUnit"].ToString();
                    MasterObj.StitchDensity = ds.Tables[0].Rows[i]["StitchDensity"].ToString();
                    //MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                    MasterObj.NeedleNo = ds.Tables[0].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[0].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[0].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[0].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[0].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[0].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[0].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[0].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[0].Rows[i]["SeamAllowance"].ToString();

                    //MasterObj.SeamAllowanceUnit = ds.Tables[0].Rows[i]["SeamAllowanceUnit"].ToString();
                    MasterObj.TypeOfSAName = ds.Tables[0].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[0].Rows[i]["TypeOfSANumb"].ToString();

                    MasterObj.ECFYQ = ds.Tables[0].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[0].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[0].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[0].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[0].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[0].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[0].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[0].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[0].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[0].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[0].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[0].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[0].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[0].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[0].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[0].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[0].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[0].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[0].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[0].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[0].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[0].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[0].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[0].Rows[i]["WorkerId"].ToString();
                    MasterObj.MachineId = ds.Tables[0].Rows[i]["MachineId"].ToString();
                    MasterObj.WorkerName = ds.Tables[0].Rows[i]["WorkerName"].ToString();
                    MasterObj.FAE = ds.Tables[0].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[0].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[0].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[0].Rows[i]["CSID3"].ToString();

                    MasterObj.QualAuditor = ds.Tables[0].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[0].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[0].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[0].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[0].Rows[i]["Superintendent"].ToString();


                    MasterObj.headernumber = int.Parse(ds.Tables[0].Rows[i]["headernumber"].ToString());

                    MasterObj.FlagName = TypeName(ds.Tables[0].Rows[i]["Flag"].ToString(), 2);
                    MasterObj.Flag = ds.Tables[0].Rows[i]["Flag"].ToString();

                    if (ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {

                        if (MasterObj.NeedleThreads != "" || MasterObj.BobbinLopper != "" || MasterObj.GuidingPlate != "")
                        {
                            MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                            MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                        }
                        else
                        {
                            MasterObj.StitchDensityUnit = "";
                            MasterObj.GuageThrowUnit = ""; MasterObj.SeamAllowanceUnit = ""; MasterObj.TypeOfSAUnit = "";
                        }
                    }

                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }

        public List<OpsSpecSheetMaster2> Step5GetDataSet2(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {

            this.CommandTimeout = 8000;
            string SqlStr = "exec LB4PListFrmReportStep5 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

            int b = ds.Tables[1].Rows.Count;

            List<OpsSpecSheetMaster2> MasterList = new List<OpsSpecSheetMaster2>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    OpsSpecSheetMaster2 MasterObj = new OpsSpecSheetMaster2();
                    MasterObj.CustStyle = ds.Tables[1].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[1].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[1].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[1].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[1].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[1].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[1].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[1].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[1].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[1].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[1].Rows[i]["GuageThrow1"].ToString();
                    //MasterObj.GuageThrowUnit = ds.Tables[0].Rows[i]["GuageThrowUnit"].ToString();
                    MasterObj.StitchDensity = ds.Tables[1].Rows[i]["StitchDensity"].ToString();
                    //MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                    MasterObj.NeedleNo = ds.Tables[1].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[1].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[1].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[1].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[1].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[1].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[1].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[1].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[1].Rows[i]["SeamAllowance"].ToString();

                    //MasterObj.SeamAllowanceUnit = ds.Tables[0].Rows[i]["SeamAllowanceUnit"].ToString();
                    MasterObj.TypeOfSAName = ds.Tables[1].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[1].Rows[i]["TypeOfSANumb"].ToString();
                    //MasterObj.TypeOfSAUnit = ds.Tables[0].Rows[i]["TypeOfSAUnit"].ToString();
                    MasterObj.ECFYQ = ds.Tables[1].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[1].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[1].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[1].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[1].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[1].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[1].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[1].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[1].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[1].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[1].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[1].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[1].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[1].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[1].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[1].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[1].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[1].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[1].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[1].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[1].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[1].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[1].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[1].Rows[i]["WorkerId"].ToString();
                    MasterObj.WorkerName = ds.Tables[1].Rows[i]["WorkerName"].ToString();
                    MasterObj.MachineId = ds.Tables[1].Rows[i]["MachineId"].ToString();
                    MasterObj.FAE = ds.Tables[1].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[1].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[1].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[1].Rows[i]["CSID3"].ToString();

                    MasterObj.QualAuditor = ds.Tables[1].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[1].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[1].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[1].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[1].Rows[i]["Superintendent"].ToString();

                    //table2
                    MasterObj.Glue_Model = ds.Tables[1].Rows[i]["Glue_Model"].ToString();
                    MasterObj.Glue_Thick = ds.Tables[1].Rows[i]["Glue_Thick"].ToString();
                    MasterObj.Glue_Width = ds.Tables[1].Rows[i]["Glue_Width"].ToString();
                    MasterObj.SingleOrDouble = ds.Tables[1].Rows[i]["SingleOrDouble"].ToString();
                    MasterObj.Temp_SP = ds.Tables[1].Rows[i]["Temp_SP"].ToString();
                    MasterObj.Temp_XP = ds.Tables[1].Rows[i]["Temp_XP"].ToString();
                    MasterObj.TempMeterStrap = ds.Tables[1].Rows[i]["TempMeterStrap"].ToString();
                    MasterObj.Temp_SC = ds.Tables[1].Rows[i]["Temp_SC"].ToString();
                    MasterObj.Temp_XC = ds.Tables[1].Rows[i]["Temp_XC"].ToString();
                    MasterObj.Temp_FRC = ds.Tables[1].Rows[i]["Temp_FRC"].ToString();
                    MasterObj.Temp_YX = ds.Tables[1].Rows[i]["Temp_YX"].ToString();
                    MasterObj.Temp_BW = ds.Tables[1].Rows[i]["Temp_BW"].ToString();
                    MasterObj.Sped_SY = ds.Tables[1].Rows[i]["Sped_SY"].ToString();
                    MasterObj.Disp_IsSyl = ds.Tables[1].Rows[i]["Disp_IsSyl"].ToString();
                    MasterObj.Sped_XY = ds.Tables[1].Rows[i]["Sped_XY"].ToString();
                    MasterObj.Disp_IsXyl = ds.Tables[1].Rows[i]["Disp_IsXyl"].ToString();
                    MasterObj.Sped_CD = ds.Tables[1].Rows[i]["Sped_CD"].ToString();
                    MasterObj.Pres_QX = ds.Tables[1].Rows[i]["Pres_QX"].ToString();
                    MasterObj.Pres_HX = ds.Tables[1].Rows[i]["Pres_HX"].ToString();
                    MasterObj.Pres_SPD = ds.Tables[1].Rows[i]["Pres_SPD"].ToString();
                    MasterObj.Pres_SCF = ds.Tables[1].Rows[i]["Pres_SCF"].ToString();
                    MasterObj.PressureStrap = ds.Tables[1].Rows[i]["PressureStrap"].ToString();

                    MasterObj.headernumber = int.Parse(ds.Tables[1].Rows[i]["headernumber"].ToString());


                    MasterObj.FlagName = TypeName(ds.Tables[1].Rows[i]["Flag"].ToString(), 2);
                    MasterObj.Flag = ds.Tables[1].Rows[i]["Flag"].ToString();

                    if (ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[1].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                    }



                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }


        public List<OpsSpecSheetMaster3> Step5GetDataSet3(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string WPSN)
        {

            this.CommandTimeout = 8000;
            string SqlStr = "exec LB4PListFrmReportStep5  '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}'";
            SqlStr = string.Format(SqlStr, Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime.ToString("yyyy-MM-dd HH:mm:ss"), OperationCode, WorkId, WPSN);
            DataSet ds = this.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

            int b = ds.Tables[2].Rows.Count;



            List<OpsSpecSheetMaster3> MasterList = new List<OpsSpecSheetMaster3>();
            if (b > 0)
            {

                for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
                {
                    OpsSpecSheetMaster3 MasterObj = new OpsSpecSheetMaster3();
                    MasterObj.CustStyle = ds.Tables[2].Rows[i]["CustStyle"].ToString();
                    MasterObj.PHStyle = GetPH(ds.Tables[2].Rows[i]["PHStyle"].ToString());
                    MasterObj.Line = ds.Tables[2].Rows[i]["Line"].ToString();
                    MasterObj.Cust = ds.Tables[2].Rows[i]["Cust"].ToString();
                    MasterObj.AL_GZWCount = Convert.ToInt32(ds.Tables[2].Rows[i]["AL_GZWCount"].ToString());
                    MasterObj.AL_GZWCount1 = ds.Tables[2].Rows[i]["AL_GZWCount1"].ToString();
                    MasterObj.GZWCount = Convert.ToInt32(ds.Tables[2].Rows[i]["GZWCount"].ToString());
                    MasterObj.ZJ = ds.Tables[2].Rows[i]["ZJ"].ToString();
                    MasterObj.GuageThrow = ds.Tables[2].Rows[i]["GuageThrow"] != DBNull.Value ? int.Parse(ds.Tables[2].Rows[i]["GuageThrow"].ToString()) : 0;
                    MasterObj.GuageThrow1 = ds.Tables[2].Rows[i]["GuageThrow1"].ToString();
                    //MasterObj.GuageThrowUnit = ds.Tables[0].Rows[i]["GuageThrowUnit"].ToString();
                    MasterObj.StitchDensity = ds.Tables[2].Rows[i]["StitchDensity"].ToString();
                    //MasterObj.StitchDensityUnit = ds.Tables[0].Rows[i]["StitchDensityUnit"].ToString();
                    MasterObj.NeedleNo = ds.Tables[2].Rows[i]["NeedleNo"].ToString();
                    MasterObj.NeedleNoUnit = ds.Tables[2].Rows[i]["NeedleNoUnit"].ToString();
                    MasterObj.NeedleThreads = ds.Tables[2].Rows[i]["NeedleThreads"].ToString();

                    MasterObj.BobbinLopper = ds.Tables[2].Rows[i]["BobbinLopper"].ToString();
                    MasterObj.GuidingPlate = ds.Tables[2].Rows[i]["GuidingPlate"].ToString();
                    MasterObj.FeedingDevice = ds.Tables[2].Rows[i]["FeedingDevice"].ToString();
                    MasterObj.ThroatPlateSet = ds.Tables[2].Rows[i]["ThroatPlateSet"].ToString();
                    MasterObj.ThroatPlateSetCode = ds.Tables[2].Rows[i]["ThroatPlateSetCode"].ToString();
                    MasterObj.SeamAllowance = ds.Tables[2].Rows[i]["SeamAllowance"].ToString();

                    //MasterObj.SeamAllowanceUnit = ds.Tables[0].Rows[i]["SeamAllowanceUnit"].ToString();
                    MasterObj.TypeOfSAName = ds.Tables[2].Rows[i]["TypeOfSAName"].ToString();
                    MasterObj.TypeOfSANumb = ds.Tables[2].Rows[i]["TypeOfSANumb"].ToString();
                    //MasterObj.TypeOfSAUnit = ds.Tables[0].Rows[i]["TypeOfSAUnit"].ToString();
                    MasterObj.ECFYQ = ds.Tables[2].Rows[i]["ECFYQ"].ToString();
                    MasterObj.ECFYQ2 = ds.Tables[2].Rows[i]["ECFYQ2"].ToString();

                    MasterObj.ECFYQ3 = ds.Tables[2].Rows[i]["ECFYQ3"].ToString();
                    MasterObj.ECFYQCode = ds.Tables[2].Rows[i]["ECFYQCode"].ToString();
                    MasterObj.ECFYQCode2 = ds.Tables[2].Rows[i]["ECFYQCode2"].ToString();
                    MasterObj.ECFYQCode3 = ds.Tables[2].Rows[i]["ECFYQCode3"].ToString();
                    MasterObj.CFYQ = ds.Tables[2].Rows[i]["CFYQ"].ToString();
                    MasterObj.CFYQ1 = ds.Tables[2].Rows[i]["CFYQ1"].ToString();

                    MasterObj.CFYQ2 = ds.Tables[2].Rows[i]["CFYQ2"].ToString();
                    MasterObj.CFYQCode = ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.CFYQCode1 = ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.CFYQCode2 = ds.Tables[2].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.HW1 = ds.Tables[2].Rows[i]["HW1"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode"].ToString();
                    MasterObj.OptNo1 = ds.Tables[2].Rows[i]["OptNo1"].ToString();

                    MasterObj.OptDes1 = ds.Tables[2].Rows[i]["OptDes1"].ToString();
                    MasterObj.OptDes_Eng1 = ds.Tables[2].Rows[i]["OptDes_Eng1"].ToString();
                    MasterObj.HW2 = ds.Tables[2].Rows[i]["HW2"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode1"].ToString();
                    MasterObj.OptNo2 = ds.Tables[2].Rows[i]["OptNo2"].ToString();
                    MasterObj.OptDes2 = ds.Tables[2].Rows[i]["OptDes2"].ToString();
                    MasterObj.OptDes_Eng2 = ds.Tables[2].Rows[i]["OptDes_Eng2"].ToString();

                    MasterObj.HW3 = ds.Tables[2].Rows[i]["HW3"].ToString() + "\r" + ds.Tables[2].Rows[i]["CFYQCode2"].ToString();
                    MasterObj.OptNo3 = ds.Tables[2].Rows[i]["OptNo3"].ToString();
                    MasterObj.OptDes3 = ds.Tables[2].Rows[i]["OptDes3"].ToString();
                    MasterObj.OptDes_Eng3 = ds.Tables[2].Rows[i]["OptDes_Eng3"].ToString();

                    MasterObj.WorkerId = ds.Tables[2].Rows[i]["WorkerId"].ToString();
                    MasterObj.WorkerName = ds.Tables[2].Rows[i]["WorkerName"].ToString();
                    MasterObj.MachineId = ds.Tables[2].Rows[i]["MachineId"].ToString();
                    MasterObj.FAE = ds.Tables[2].Rows[i]["FAE"].ToString();


                    MasterObj.CSID1 = ds.Tables[2].Rows[i]["CSID1"].ToString();
                    MasterObj.CSID2 = ds.Tables[2].Rows[i]["CSID2"].ToString();
                    MasterObj.CSID3 = ds.Tables[2].Rows[i]["CSID3"].ToString();

                    MasterObj.QualAuditor = ds.Tables[2].Rows[i]["QualAuditor"].ToString();
                    MasterObj.Mechanic = ds.Tables[2].Rows[i]["Mechanic"].ToString();
                    MasterObj.LineLeader = ds.Tables[2].Rows[i]["LineLeader"].ToString();
                    MasterObj.Supervisor = ds.Tables[2].Rows[i]["Supervisor"].ToString();
                    MasterObj.Superintendent = ds.Tables[2].Rows[i]["Superintendent"].ToString();

                    //table3
                    MasterObj.UltrasonicTimeDelay = ds.Tables[2].Rows[i]["UltrasonicTimeDelay"].ToString();
                    MasterObj.UltrasonicTimeWelding = ds.Tables[2].Rows[i]["UltrasonicTimeWelding"].ToString();
                    MasterObj.UltrasonicTimeHarden = ds.Tables[2].Rows[i]["UltrasonicTimeHarden"].ToString();
                    MasterObj.UltrasonicRevolution = ds.Tables[2].Rows[i]["UltrasonicRevolution"].ToString();
                    MasterObj.UltrasonicPressure = ds.Tables[2].Rows[i]["UltrasonicPressure"].ToString();
                    MasterObj.Spec_Temp = ds.Tables[2].Rows[i]["Spec_Temp"].ToString();
                    MasterObj.Spec_Time = ds.Tables[2].Rows[i]["Spec_Time"].ToString();
                    MasterObj.Spec_Pres = ds.Tables[2].Rows[i]["Spec_Pres"].ToString();

                    MasterObj.headernumber = int.Parse(ds.Tables[2].Rows[i]["headernumber"].ToString());

                    MasterObj.FlagName = TypeName(ds.Tables[2].Rows[i]["Flag"].ToString(), 2);
                    MasterObj.Flag = ds.Tables[2].Rows[i]["Flag"].ToString();

                    if (ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString() == "INCH")
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "INCH"; MasterObj.SeamAllowanceUnit = "INCH"; MasterObj.TypeOfSAUnit = "INCH";
                    }
                    else
                    {
                        MasterObj.StitchDensityUnit = ds.Tables[2].Rows[i]["StitchDensityUnit"].ToString();
                        MasterObj.GuageThrowUnit = "MM"; MasterObj.SeamAllowanceUnit = "MM"; MasterObj.TypeOfSAUnit = "MM";
                    }

                    MasterList.Add(MasterObj);
                }

            }
            return MasterList;
        }

        /// <summary>
        /// ALanguage 0为英文；1为孟加拉文；2为中文
        /// </summary>
        /// <param name="Type"></param>
        /// <param name="ALanguage"></param>
        /// <returns></returns>
        public string TypeName(string Type, int ALanguage)
        {

            var obj = this.BaseCodes.Where(p => p.Type == "RFlag" && p.Name == Type).FirstOrDefault();
            return ALanguage == 0 ? obj.NameEN : (ALanguage == 1 ? obj.NameBd : obj.ExtraField1);

            //if (Type == "R1a")
            //{
            //    return "替換人";
            //}
            //else if (Type == "R2a")
            //{
            //    return "替換車";
            //}
            //else if (Type == "R3a")
            //{
            //    return "齊替換(換人和車)";
            //}
            //else if (Type == "R4a")
            //{
            //    return "齊加進(加人和車)";
            //}
            //else if (Type == "R1b")
            //{
            //    return "回復人";
            //}
            //else if (Type == "R2b")
            //{
            //    return "回復車";
            //}
            //else if (Type == "R3b1")
            //{
            //    return "齊回復";
            //}
            //else if (Type == "R4b")
            //{
            //    return "齊減回";
            //}
            //else if (Type == "R3b2")
            //{
            //    return "只回復人";
            //}
            //else
            //{
            //    return "";
            //}
        }

        public string GetPH(string PH)
        {

            //string PH_re = PH.Replace("-", "\r -");
            //return PH_re;
            try
            {
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
                        //string front = PH.Substring(0, PH.Length - i);
                        string front = PH.Substring(0, i); //由David修改 2019-02-20
                        return front + "\r" + PH.Substring(i, PH.Length - front.Length);
                    }
                }
            }
            catch
            {
                return PH;
            }

            return PH;
        }



        public static string GetDisplay(string paraType, string paraCode, bool? result)
        {
            string strresult = string.Empty;
            var q = (ContextBuilder.CreateContext<RAPLQDataContext>()).BaseCodes.Where(P => P.Type == paraType && P.Code == paraCode).Single();
            if (q != null)
            {
                if (result == true)
                {
                    strresult = q.Name;
                }
                else
                {
                    strresult = q.Description;
                }
            }
            return strresult;
        }

        public static string GetDispalyTypeCode(string paraTitleTypeEn)
        {
            int count = (ContextBuilder.CreateContext<RAPLQDataContext>()).Master_data_For_Job_Titles.Where(p => p.TitleTypeEn == paraTitleTypeEn).Count();
            if (count > 0)
            {
                return (ContextBuilder.CreateContext<RAPLQDataContext>()).Master_data_For_Job_Titles.Where(p => p.TitleTypeEn == paraTitleTypeEn).First().Code;
            }
            else
            {
                return "";
            }
        }

        public static string GetDispalyJobTitleCode(string paraJobTitleEn)
        {
            int count = (ContextBuilder.CreateContext<RAPLQDataContext>()).Master_data_For_Job_Titles.Where(p => p.JobTitleEn == paraJobTitleEn).Count();
            if (count > 0)
            {
                return (ContextBuilder.CreateContext<RAPLQDataContext>()).Master_data_For_Job_Titles.Where(p => p.JobTitleEn == paraJobTitleEn).First().JTCode;
            }
            else
            {
                return "";
            }
        }


        //[Function(Name = "GetCurrentDate", IsComposable = true)]
        //public System.DateTime GetServerDate()
        //{
        //    return ((System.DateTime)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod()))).ReturnValue));
        //}

        [Function(Name = "dbo.GetLBSAH")]
        public ISingleResult<GetLBSAHResult> GetLBSAH([Parameter(Name = "Dt", DbType = "Int")] System.Nullable<int> dt, [Parameter(Name = "Tm", DbType = "VarChar(10)")] string tm, [Parameter(DbType = "NChar(5)")] string fac, [Parameter(DbType = "VarChar(50)")] string lincode, [Parameter(DbType = "NChar(15)")] string j_no, [Parameter(DbType = "NChar(15)")] string j2_job, [Parameter(DbType = "NChar(10)")] string rwo, [Parameter(DbType = "NChar(10)")] string qn, [Parameter(DbType = "NChar(10)")] string bcolor)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dt, tm, fac, lincode, j_no, j2_job, rwo, qn, bcolor);
            return ((ISingleResult<GetLBSAHResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.GetLBSAHSum")]
        public ISingleResult<GetSummaryResult> GetLBSAHSum([Parameter(Name = "Dt", DbType = "Int")] System.Nullable<int> dt, [Parameter(Name = "Tm", DbType = "VarChar(10)")] string tm)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dt, tm);
            return ((ISingleResult<GetSummaryResult>)(result.ReturnValue));
        }
        [Function(Name = "dbo.GetSummaryWF")]
        public ISingleResult<GetWFResult> GetSummaryWF([Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "LineCode", DbType = "VarChar(10)")] string lineCode, [Parameter(Name = "WorkerType", DbType = "VarChar(15)")] string workerType, [Parameter(Name = "Location", DbType = "VarChar(15)")] string location, [Parameter(Name = "Dept", DbType = "VarChar(10)")] string dept, [Parameter(DbType = "VarChar(20)")] string jobtitleEn, [Parameter(Name = "Id", DbType = "VarChar(10)")] string id, [Parameter(Name = "Area", DbType = "VarChar(20)")] string area)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), factory, lineCode, workerType, location, dept, jobtitleEn, id, area);
            return ((ISingleResult<GetWFResult>)(result.ReturnValue));
        }
    }


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
        /// HW_Code
        /// </summary>
        public string HWCode1 { get; set; }
        public string HWCode2 { get; set; }
        public string HWCode3 { get; set; }

        /// <summary>
        /// HW_BD
        /// </summary>
        public string Tyczl1 { get; set; }
        public string Tyczl2 { get; set; }
        public string Tyczl3 { get; set; }


        /// <summary>
        /// OptDesc_BD
        /// </summary>
        public string Tgxm1 { get; set; }
        public string Tgxm2 { get; set; }
        public string Tgxm3 { get; set; }

        /// <summary>
        /// LocalLanguage_BD
        /// </summary>
        public string Tcfyq1 { get; set; }
        public string Tcfyq2 { get; set; }
        public string Tcfyq3 { get; set; }

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


        public string WorkerId { get; set; }
        public string WorkerName { get; set; }
        public string MachineId { get; set; }
        public string FAE { get; set; }


        /// </summary>
        ///處理SCID
        /// </summary>
        public string CSID1 { get; set; }
        public string CSID2 { get; set; }
        public string CSID3 { get; set; }


        /// </summary>
        ///加人加車的標記
        /// </summary>
        public string Flag { get; set; }
        public string FlagName { get; set; }

        /// </summary>
        ///計算表頭Number標記
        /// </summary>
        public int headernumber { get; set; }


        /// </summary>
        ///簽名
        /// </summary>
        public string QualAuditor { get; set; }
        public string Mechanic { get; set; }
        public string LineLeader { get; set; }
        public string Supervisor { get; set; }
        public string Superintendent { get; set; }
    }



    public class OpsSpecSheetMaster2
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
        /// HW_Code
        /// </summary>
        public string HWCode1 { get; set; }
        public string HWCode2 { get; set; }
        public string HWCode3 { get; set; }

        /// <summary>
        /// HW_BD
        /// </summary>
        public string Tyczl1 { get; set; }
        public string Tyczl2 { get; set; }
        public string Tyczl3 { get; set; }


        /// <summary>
        /// OptDesc_BD
        /// </summary>
        public string Tgxm1 { get; set; }
        public string Tgxm2 { get; set; }
        public string Tgxm3 { get; set; }

        /// <summary>
        /// LocalLanguage_BD
        /// </summary>
        public string Tcfyq1 { get; set; }
        public string Tcfyq2 { get; set; }
        public string Tcfyq3 { get; set; }

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


        public string WorkerId { get; set; }
        public string WorkerName { get; set; }
        public string MachineId { get; set; }
        public string FAE { get; set; }


        /// </summary>
        ///處理SCID
        /// </summary>
        public string CSID1 { get; set; }
        public string CSID2 { get; set; }
        public string CSID3 { get; set; }


        /// </summary>
        ///加人加車的標記
        /// </summary>
        public string Flag { get; set; }
        public string FlagName { get; set; }

        /// </summary>
        ///計算表頭Number標記
        /// </summary>
        public int headernumber { get; set; }


        /// </summary>
        ///簽名
        /// </summary>
        public string QualAuditor { get; set; }
        public string Mechanic { get; set; }
        public string LineLeader { get; set; }
        public string Supervisor { get; set; }
        public string Superintendent { get; set; }

        /// <summary>
        ///Bonding-- 粘縫規格
        /// </summary>
        public string Glue_Model { get; set; }
        public string Glue_Thick { get; set; }
        public string Glue_Width { get; set; }
        public string SingleOrDouble { get; set; }
        public string Temp_SP { get; set; }
        public string Temp_XP { get; set; }
        public string TempMeterStrap { get; set; }
        public string Temp_SC { get; set; }
        public string Temp_XC { get; set; }
        public string Temp_FRC { get; set; }
        public string Temp_YX { get; set; }
        public string Temp_BW { get; set; }
        public string Sped_SY { get; set; }
        public string Disp_IsSyl { get; set; }
        public string Sped_XY { get; set; }
        public string Disp_IsXyl { get; set; }
        public string Sped_CD { get; set; }
        public string Pres_QX { get; set; }
        public string Pres_HX { get; set; }
        public string Pres_SPD { get; set; }
        public string Pres_SCF { get; set; }
        public string PressureStrap { get; set; }
    }





    public class OpsSpecSheetMaster3
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
        /// HW_Code
        /// </summary>
        public string HWCode1 { get; set; }
        public string HWCode2 { get; set; }
        public string HWCode3 { get; set; }

        /// <summary>
        /// HW_BD
        /// </summary>
        public string Tyczl1 { get; set; }
        public string Tyczl2 { get; set; }
        public string Tyczl3 { get; set; }


        /// <summary>
        /// OptDesc_BD
        /// </summary>
        public string Tgxm1 { get; set; }
        public string Tgxm2 { get; set; }
        public string Tgxm3 { get; set; }

        /// <summary>
        /// LocalLanguage_BD
        /// </summary>
        public string Tcfyq1 { get; set; }
        public string Tcfyq2 { get; set; }
        public string Tcfyq3 { get; set; }

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


        public string WorkerId { get; set; }
        public string WorkerName { get; set; }
        public string MachineId { get; set; }
        public string FAE { get; set; }


        /// </summary>
        ///處理SCID
        /// </summary>
        public string CSID1 { get; set; }
        public string CSID2 { get; set; }
        public string CSID3 { get; set; }


        /// </summary>
        ///加人加車的標記
        /// </summary>
        public string Flag { get; set; }
        public string FlagName { get; set; }

        /// </summary>
        ///計算表頭Number標記
        /// </summary>
        public int headernumber { get; set; }


        /// </summary>
        ///簽名
        /// </summary>
        public string QualAuditor { get; set; }
        public string Mechanic { get; set; }
        public string LineLeader { get; set; }
        public string Supervisor { get; set; }
        public string Superintendent { get; set; }

        /// <summary>
        /// 機械校車要求
        /// </summary>
        public string UltrasonicTimeDelay { get; set; }
        public string UltrasonicTimeWelding { get; set; }
        public string UltrasonicTimeHarden { get; set; }
        public string UltrasonicRevolution { get; set; }
        public string UltrasonicPressure { get; set; }
        public string Spec_Temp { get; set; }
        public string Spec_Time { get; set; }
        public string Spec_Pres { get; set; }

    }


    public partial class GetLBSAHResult
    {

        private string _team;

        private string _employeeid;

        private string _name;

        private string _movetype;

        private string _wftype;

        private System.Nullable<char> _isspec;

        private System.Nullable<decimal> _years;

        private int _opercode;

        private string _opername;

        private System.Nullable<decimal> _sah;

        private System.Nullable<decimal> _sahtotal;

        private string _operflag;

        private string _perdiv;

        private string _sah_team;

        private string _order_team;

        private string _sah_line;

        private string _order_line;

        private System.Nullable<decimal> _type_cs;

        private System.Nullable<decimal> _type_dn;

        private System.Nullable<decimal> _type_zz;

        private System.Nullable<decimal> _type_ov;

        private System.Nullable<decimal> _type_sn;

        private System.Nullable<decimal> _type_bt;

        private System.Nullable<decimal> _type_hd;
        private System.Nullable<int> _rcount; //某個team中,同一人的記錄條數
        private System.Nullable<int> _tcount; //某個team記錄條數
        private System.Nullable<int> _totalcount; //總記錄數

        private string _MCType;

        private string _skill;

        public GetLBSAHResult()
        {
        }

        [Column(Storage = "_tcount", DbType = "int")]
        public System.Nullable<int> tcount
        {
            get
            {
                return this._tcount;
            }
            set
            {
                if ((this._tcount != value))
                {
                    this._tcount = value;
                }
            }
        }

        [Column(Storage = "_rcount", DbType = "int")]
        public System.Nullable<int> rcount
        {
            get
            {
                return this._rcount;
            }
            set
            {
                if ((this._rcount != value))
                {
                    this._rcount = value;
                }
            }
        }

        [Column(Storage = "_totalcount", DbType = "int")]
        public System.Nullable<int> totalcount
        {
            get
            {
                return this._totalcount;
            }
            set
            {
                if ((this._totalcount != value))
                {
                    this._totalcount = value;
                }
            }
        }

        [Column(Storage = "_team", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string team
        {
            get
            {
                return this._team;
            }
            set
            {
                if ((this._team != value))
                {
                    this._team = value;
                }
            }
        }

        [Column(Storage = "_employeeid", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string employeeid
        {
            get
            {
                return this._employeeid;
            }
            set
            {
                if ((this._employeeid != value))
                {
                    this._employeeid = value;
                }
            }
        }

        [Column(Storage = "_name", DbType = "NVarChar(50)")]
        public string name
        {
            get
            {
                return this._name;
            }
            set
            {
                if ((this._name != value))
                {
                    this._name = value;
                }
            }
        }

        [Column(Storage = "_movetype", DbType = "VarChar(50)")]
        public string movetype
        {
            get
            {
                return this._movetype;
            }
            set
            {
                if ((this._movetype != value))
                {
                    this._movetype = value;
                }
            }
        }

        [Column(Storage = "_wftype", DbType = "VarChar(8)")]
        public string wftype
        {
            get
            {
                return this._wftype;
            }
            set
            {
                if ((this._wftype != value))
                {
                    this._wftype = value;
                }
            }
        }

        [Column(Storage = "_MCType", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string MCType
        {
            get
            {
                return this._MCType;
            }
            set
            {
                if ((this._MCType != value))
                {
                    this._MCType = value;
                }
            }
        }

        [Column(Storage = "_isspec", DbType = "Char(1)")]
        public System.Nullable<char> isspec
        {
            get
            {
                return this._isspec;
            }
            set
            {
                if ((this._isspec != value))
                {
                    this._isspec = value;
                }
            }
        }

        [Column(Storage = "_years", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> years
        {
            get
            {
                return this._years;
            }
            set
            {
                if ((this._years != value))
                {
                    this._years = value;
                }
            }
        }

        [Column(Storage = "_opercode", DbType = "Int NOT NULL")]
        public int opercode
        {
            get
            {
                return this._opercode;
            }
            set
            {
                if ((this._opercode != value))
                {
                    this._opercode = value;
                }
            }
        }

        [Column(Storage = "_opername", DbType = "NVarChar(100)")]
        public string opername
        {
            get
            {
                return this._opername;
            }
            set
            {
                if ((this._opername != value))
                {
                    this._opername = value;
                }
            }
        }

        [Column(Storage = "_sah", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> sah
        {
            get
            {
                return this._sah;
            }
            set
            {
                if ((this._sah != value))
                {
                    this._sah = value;
                }
            }
        }

        [Column(Storage = "_sahtotal", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> sahtotal
        {
            get
            {
                return this._sahtotal;
            }
            set
            {
                if ((this._sahtotal != value))
                {
                    this._sahtotal = value;
                }
            }
        }

        [Column(Storage = "_operflag", DbType = "VarChar(3)")]
        public string operflag
        {
            get
            {
                return this._operflag;
            }
            set
            {
                if ((this._operflag != value))
                {
                    this._operflag = value;
                }
            }
        }

        [Column(Storage = "_perdiv", DbType = "VarChar(10)")]
        public string perdiv
        {
            get
            {
                return this._perdiv;
            }
            set
            {
                if ((this._perdiv != value))
                {
                    this._perdiv = value;
                }
            }
        }

        [Column(Storage = "_sah_team", DbType = "VarChar(10)")]
        public string sah_team
        {
            get
            {
                return this._sah_team;
            }
            set
            {
                if ((this._sah_team != value))
                {
                    this._sah_team = value;
                }
            }
        }

        [Column(Storage = "_order_team", DbType = "VarChar(5)")]
        public string order_team
        {
            get
            {
                return this._order_team;
            }
            set
            {
                if ((this._order_team != value))
                {
                    this._order_team = value;
                }
            }
        }

        [Column(Storage = "_sah_line", DbType = "VarChar(10)")]
        public string sah_line
        {
            get
            {
                return this._sah_line;
            }
            set
            {
                if ((this._sah_line != value))
                {
                    this._sah_line = value;
                }
            }
        }

        [Column(Storage = "_order_line", DbType = "VarChar(5)")]
        public string order_line
        {
            get
            {
                return this._order_line;
            }
            set
            {
                if ((this._order_line != value))
                {
                    this._order_line = value;
                }
            }
        }

        [Column(Storage = "_type_cs", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_cs
        {
            get
            {
                return this._type_cs;
            }
            set
            {
                if ((this._type_cs != value))
                {
                    this._type_cs = value;
                }
            }
        }

        [Column(Storage = "_type_dn", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_dn
        {
            get
            {
                return this._type_dn;
            }
            set
            {
                if ((this._type_dn != value))
                {
                    this._type_dn = value;
                }
            }
        }

        [Column(Storage = "_type_zz", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_zz
        {
            get
            {
                return this._type_zz;
            }
            set
            {
                if ((this._type_zz != value))
                {
                    this._type_zz = value;
                }
            }
        }

        [Column(Storage = "_type_ov", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_ov
        {
            get
            {
                return this._type_ov;
            }
            set
            {
                if ((this._type_ov != value))
                {
                    this._type_ov = value;
                }
            }
        }

        [Column(Storage = "_type_sn", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_sn
        {
            get
            {
                return this._type_sn;
            }
            set
            {
                if ((this._type_sn != value))
                {
                    this._type_sn = value;
                }
            }
        }

        [Column(Storage = "_type_bt", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_bt
        {
            get
            {
                return this._type_bt;
            }
            set
            {
                if ((this._type_bt != value))
                {
                    this._type_bt = value;
                }
            }
        }

        [Column(Storage = "_type_hd", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> type_hd
        {
            get
            {
                return this._type_hd;
            }
            set
            {
                if ((this._type_hd != value))
                {
                    this._type_hd = value;
                }
            }
        }




        [Column(Storage = "_skill", DbType = "VarChar(5)")]
        public string skill
        {
            get
            {
                return this._skill;
            }
            set
            {
                if ((this._skill != value))
                {
                    this._skill = value;
                }
            }
        }


    }

    public partial class GetSummaryResult
    {

        private string _team;

        private System.Nullable<int> _wfCount;

        private System.Nullable<int> _bThree;

        private System.Nullable<int> _ThreeToTwelve;

        private System.Nullable<int> _OneToThreeYear;

        private System.Nullable<int> _ThreeToFiveYear;

        private System.Nullable<int> _FiveToNineYear;

        private System.Nullable<int> _NineToFourTeen;

        private System.Nullable<int> _FourTeenToNineTeen;

        private System.Nullable<int> _NineTeenToTwenty;

        private string _match;

        private string _Higher;

        private string _Lower;

        private string _NoInfo;

        private System.Nullable<int> _high_per;

        private System.Nullable<int> _match_per;

        private System.Nullable<int> _lower_per;

        private System.Nullable<int> _NoInfo_per;

        private System.Nullable<int> _total;

        [Column(Storage = "_team", DbType = "VarChar(50) NOT NULL")]
        public string team
        {
            get
            {
                return this._team;
            }
            set
            {
                if ((this._team != value))
                {
                    this._team = value;
                }
            }
        }

        [Column(Storage = "_wfCount", DbType = "int")]
        public System.Nullable<int> wfCount
        {
            get
            {
                return this._wfCount;
            }
            set
            {
                if ((this._wfCount != value))
                {
                    this._wfCount = value;
                }
            }
        }


        [Column(Storage = "_bThree", DbType = "int")]
        public System.Nullable<int> bThree
        {
            get
            {
                return this._bThree;
            }
            set
            {
                if ((this._bThree != value))
                {
                    this._bThree = value;
                }
            }
        }

        [Column(Storage = "_ThreeToTwelve", DbType = "int")]
        public System.Nullable<int> ThreeToTwelve
        {
            get
            {
                return this._ThreeToTwelve;
            }
            set
            {
                if ((this._ThreeToTwelve != value))
                {
                    this._ThreeToTwelve = value;
                }
            }
        }

        [Column(Storage = "_OneToThreeYear", DbType = "int")]
        public System.Nullable<int> OneToThreeYear
        {
            get
            {
                return this._OneToThreeYear;
            }
            set
            {
                if ((this._OneToThreeYear != value))
                {
                    this._OneToThreeYear = value;
                }
            }
        }

        [Column(Storage = "_ThreeToFiveYear", DbType = "int")]
        public System.Nullable<int> ThreeToFiveYear
        {
            get
            {
                return this._ThreeToFiveYear;
            }
            set
            {
                if ((this._ThreeToFiveYear != value))
                {
                    this._ThreeToFiveYear = value;
                }
            }
        }

        [Column(Storage = "_FiveToNineYear", DbType = "int")]
        public System.Nullable<int> FiveToNineYear
        {
            get
            {
                return this._FiveToNineYear;
            }
            set
            {
                if ((this._FiveToNineYear != value))
                {
                    this._FiveToNineYear = value;
                }
            }
        }

        [Column(Storage = "_NineToFourTeen", DbType = "int")]
        public System.Nullable<int> NineToFourTeen
        {
            get
            {
                return this._NineToFourTeen;
            }
            set
            {
                if ((this._NineToFourTeen != value))
                {
                    this._NineToFourTeen = value;
                }
            }
        }

        [Column(Storage = "_FourTeenToNineTeen", DbType = "int")]
        public System.Nullable<int> FourTeenToNineTeen
        {
            get
            {
                return this._FourTeenToNineTeen;
            }
            set
            {
                if ((this._FourTeenToNineTeen != value))
                {
                    this._FourTeenToNineTeen = value;
                }
            }
        }

        [Column(Storage = "_NineTeenToTwenty", DbType = "int")]
        public System.Nullable<int> NineTeenToTwenty
        {
            get
            {
                return this._NineTeenToTwenty;
            }
            set
            {
                if ((this._NineTeenToTwenty != value))
                {
                    this._NineTeenToTwenty = value;
                }
            }
        }

        [Column(Storage = "_high_per", DbType = "int")]
        public System.Nullable<int> high_per
        {
            get
            {
                return this._high_per;
            }
            set
            {
                if ((this._high_per != value))
                {
                    this._high_per = value;
                }
            }
        }

        [Column(Storage = "_match_per", DbType = "int")]
        public System.Nullable<int> match_per
        {
            get
            {
                return this._match_per;
            }
            set
            {
                if ((this._match_per != value))
                {
                    this._match_per = value;
                }
            }
        }

        [Column(Storage = "_lower_per", DbType = "int")]
        public System.Nullable<int> lower_per
        {
            get
            {
                return this._lower_per;
            }
            set
            {
                if ((this._lower_per != value))
                {
                    this._lower_per = value;
                }
            }
        }

        [Column(Storage = "_NoInfo_per", DbType = "int")]
        public System.Nullable<int> NoInfo_per
        {
            get
            {
                return this._NoInfo_per;
            }
            set
            {
                if ((this._NoInfo_per != value))
                {
                    this._NoInfo_per = value;
                }
            }
        }

        [Column(Storage = "_total", DbType = "int")]
        public System.Nullable<int> total
        {
            get
            {
                return this._total;
            }
            set
            {
                if ((this._total != value))
                {
                    this._total = value;
                }
            }
        }

        [Column(Storage = "_Higher", DbType = "varchar(20)")]
        public string Higher
        {
            get
            {
                return this._Higher;
            }
            set
            {
                if ((this._Higher != value))
                {
                    this._Higher = value;
                }
            }
        }

        [Column(Storage = "_match", DbType = "varchar(20)")]
        public string match
        {
            get
            {
                return this._match;
            }
            set
            {
                if ((this._match != value))
                {
                    this._match = value;
                }
            }
        }

        [Column(Storage = "_Lower", DbType = "varchar(20)")]
        public string Lower
        {
            get
            {
                return this._Lower;
            }
            set
            {
                if ((this._Lower != value))
                {
                    this._Lower = value;
                }
            }
        }

        [Column(Storage = "_NoInfo", DbType = "varchar(20)")]
        public string NoInfo
        {
            get
            {
                return this._NoInfo;
            }
            set
            {
                if ((this._NoInfo != value))
                {
                    this._NoInfo = value;
                }
            }
        }

    }

    public partial class GetWFResult
    {
        private string _Id;

        private string _NameCn;

        private string _WorkerType;

        private string _Seniority;

        private string _Region;

        private string _Sex;

        private string _WFLevel;

        private string _JobTitleEn;

        private string _OperationSN;

        private string _OperationCode;

        private string _MachineId;

        private string _Location;

        private string _NextLocation;

        private string _Dept;

        private string _NextDept;

        private string _LineCode;

        private string _NextLine;

        private int _countId;

        private int _countMC;

        private int _countOPT;

        private int _countLine;

        private int _countLoc;

        private string _DateLineNow;

        private string _DateLineNext;

        [Column(Storage = "_Id", DbType = "VarChar(20) NOT NULL")]
        public string Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                if ((this._Id != value))
                {
                    this._Id = value;
                }
            }
        }

        [Column(Storage = "_NameCn", DbType = "VarChar(20) NOT NULL")]
        public string NameCn
        {
            get
            {
                return this._NameCn;
            }
            set
            {
                if ((this._NameCn != value))
                {
                    this._NameCn = value;
                }
            }
        }

        [Column(Storage = "_WorkerType", DbType = "VarChar(20) NOT NULL")]
        public string WorkerType
        {
            get
            {
                return this._WorkerType;
            }
            set
            {
                if ((this._WorkerType != value))
                {
                    this._WorkerType = value;
                }
            }
        }

        [Column(Storage = "_Seniority", DbType = "VarChar(20) NOT NULL")]
        public string Seniority
        {
            get
            {
                return this._Seniority;
            }
            set
            {
                if ((this._Seniority != value))
                {
                    this._Seniority = value;
                }
            }
        }

        [Column(Storage = "_Region", DbType = "VarChar(20) NOT NULL")]
        public string Region
        {
            get
            {
                return this._Region;
            }
            set
            {
                if ((this._Region != value))
                {
                    this._Region = value;
                }
            }
        }

        [Column(Storage = "_Sex", DbType = "VarChar(20) NOT NULL")]
        public string Sex
        {
            get
            {
                return this._Sex;
            }
            set
            {
                if ((this._Sex != value))
                {
                    this._Sex = value;
                }
            }
        }

        [Column(Storage = "_WFLevel", DbType = "VarChar(20) NOT NULL")]
        public string WFLevel
        {
            get
            {
                return this._WFLevel;
            }
            set
            {
                if ((this._WFLevel != value))
                {
                    this._WFLevel = value;
                }
            }
        }

        [Column(Storage = "_JobTitleEn", DbType = "VarChar(20) NOT NULL")]
        public string JobTitleEn
        {
            get
            {
                return this._JobTitleEn;
            }
            set
            {
                if ((this._JobTitleEn != value))
                {
                    this._JobTitleEn = value;
                }
            }
        }

        [Column(Storage = "_OperationSN", DbType = "VarChar(20) NOT NULL")]
        public string OperationSN
        {
            get
            {
                return this._OperationSN;
            }
            set
            {
                if ((this._OperationSN != value))
                {
                    this._OperationSN = value;
                }
            }
        }

        [Column(Storage = "_OperationCode", DbType = "VarChar(20) NOT NULL")]
        public string OperationCode
        {
            get
            {
                return this._OperationCode;
            }
            set
            {
                if ((this._OperationCode != value))
                {
                    this._OperationCode = value;
                }
            }
        }

        [Column(Storage = "_MachineId", DbType = "VarChar(20) NOT NULL")]
        public string MachineId
        {
            get
            {
                return this._MachineId;
            }
            set
            {
                if ((this._MachineId != value))
                {
                    this._MachineId = value;
                }
            }
        }

        [Column(Storage = "_Location", DbType = "VarChar(20) NOT NULL")]
        public string Location
        {
            get
            {
                return this._Location;
            }
            set
            {
                if ((this._Location != value))
                {
                    this._Location = value;
                }
            }
        }

        [Column(Storage = "_NextLocation", DbType = "VarChar(20) NOT NULL")]
        public string NextLocation
        {
            get
            {
                return this._NextLocation;
            }
            set
            {
                if ((this._NextLocation != value))
                {
                    this._NextLocation = value;
                }
            }
        }

        [Column(Storage = "_Dept", DbType = "VarChar(20) NOT NULL")]
        public string Dept
        {
            get
            {
                return this._Dept;
            }
            set
            {
                if ((this._Dept != value))
                {
                    this._Dept = value;
                }
            }
        }

        [Column(Storage = "_NextDept", DbType = "VarChar(20) NOT NULL")]
        public string NextDept
        {
            get
            {
                return this._NextDept;
            }
            set
            {
                if ((this._NextDept != value))
                {
                    this._NextDept = value;
                }
            }
        }

        [Column(Storage = "_LineCode", DbType = "VarChar(20) NOT NULL")]
        public string LineCode
        {
            get
            {
                return this._LineCode;
            }
            set
            {
                if ((this._LineCode != value))
                {
                    this._LineCode = value;
                }
            }
        }

        [Column(Storage = "_NextLine", DbType = "VarChar(20) NOT NULL")]
        public string NextLine
        {
            get
            {
                return this._NextLine;
            }
            set
            {
                if ((this._NextLine != value))
                {
                    this._NextLine = value;
                }
            }
        }
        [Column(Storage = "_countId", DbType = "int")]
        public int countId
        {
            get
            {
                return this._countId;
            }
            set
            {
                if ((this._countId != value))
                {
                    this._countId = value;
                }
            }
        }
        [Column(Storage = "_countMC", DbType = "int")]
        public int countMC
        {
            get
            {
                return this._countMC;
            }
            set
            {
                if ((this._countMC != value))
                {
                    this._countMC = value;
                }
            }
        }
        [Column(Storage = "_countOPT", DbType = "int")]
        public int countOPT
        {
            get
            {
                return this._countOPT;
            }
            set
            {
                if ((this._countOPT != value))
                {
                    this._countOPT = value;
                }
            }
        }
        [Column(Storage = "_countLine", DbType = "int")]
        public int countLine
        {
            get
            {
                return this._countLine;
            }
            set
            {
                if ((this._countLine != value))
                {
                    this._countLine = value;
                }
            }
        }
        [Column(Storage = "_countLoc", DbType = "int")]
        public int countLoc
        {
            get
            {
                return this._countLoc;
            }
            set
            {
                if ((this._countLoc != value))
                {
                    this._countLoc = value;
                }
            }
        }
        [Column(Storage = "_DateLineNow", DbType = "nvarchar(50) NOT NULL")]
        public string DateLineNow
        {
            get
            {
                return this._DateLineNow;
            }
            set
            {
                if ((this._DateLineNow != value))
                {
                    this._DateLineNow = value;
                }
            }

        }
        [Column(Storage = "_DateLineNext", DbType = "nvarchar(50) NOT NULL")]
        public string DateLineNext
        {
            get
            {
                return this._DateLineNext;
            }
            set
            {
                if ((this._DateLineNext != value))
                {
                    this._DateLineNext = value;
                }
            }

        }
    }
    public partial class GetMadeSummary
    {
        private string Dept;

        private string Sex;

        private string _SWF;

        private string _MWF;

        private string _FWF;

        private string _SpWF;

        private string _Fundamental;

        public int Total { get; set; }
        public double OverTotal { get; set; }
        //private int _Total;

        //private float _OverTotal;

        [Column(Storage = "Dept", DbType = "nChar(30) NOT NULL")]
        public string dept
        {
            get
            {
                return this.Dept;
            }
            set
            {
                if ((this.Dept != value))
                {
                    this.Dept = value;
                }
            }
        }

        [Column(Storage = "Sex", DbType = "nvarchar(20) NOT NULL")]
        public string sex
        {
            get
            {
                return this.Sex;
            }
            set
            {
                if ((this.Sex != value))
                {
                    this.Sex = value;
                }
            }
        }

        [Column(Storage = "_SWF", DbType = "nvarchar(50) NOT NULL")]
        public string SWF
        {
            get
            {
                return this._SWF;
            }
            set
            {
                if ((this._SWF != value))
                {
                    this._SWF = value;
                }
            }
        }
        [Column(Storage = "_MWF", DbType = "nvarchar(50) NOT NULL")]
        public string MWF
        {
            get
            {
                return this._MWF;
            }
            set
            {
                if ((this._MWF != value))
                {
                    this._MWF = value;
                }
            }
        }
        [Column(Storage = "_FWF", DbType = "nvarchar(50) NOT NULL")]
        public string FWF
        {
            get
            {
                return this._FWF;
            }
            set
            {
                if ((this._FWF != value))
                {
                    this._FWF = value;
                }
            }
        }
        [Column(Storage = "_SpWF", DbType = "nvarchar(50) NOT NULL")]
        public string SpWF
        {
            get
            {
                return this._SpWF;
            }
            set
            {
                if ((this._SpWF != value))
                {
                    this._SpWF = value;
                }
            }
        }

        [Column(Storage = "_Fundamental", DbType = "nvarchar(50) NOT NULL")]
        public string Fundamental
        {
            get
            {
                return this._Fundamental;
            }
            set
            {
                if ((this._Fundamental != value))
                {
                    this._Fundamental = value;
                }
            }
        }
        //[Column(Storage = "_Total", DbType = "int NOT NULL")]
        //public string Total
        //{
        //    get
        //    {
        //        return this._Total;
        //    }
        //    set
        //    {
        //        if ((this._Total != value))
        //        {
        //            this._Total = value;
        //        }
        //    }
        //}
        //[Column(Storage = "_OverTotal", DbType = "float NOT NULL")]
        //public string OverTotal
        //{
        //    get
        //    {
        //        return this._OverTotal;
        //    }
        //    set
        //    {
        //        if ((this._OverTotal != value))
        //        {
        //            this._OverTotal = value;
        //        }
        //    }
        //}
    }

    public partial class GetdWFSummary
    {
        public string WFPart { get; set; }
        public string Factory { get; set; }
        public string clsname { get; set; }
        public string WFType { get; set; }
        public string DeptName { get; set; }
        public string jobtitleen { get; set; }
        public int Total { get; set; }
        public int STeam { get; set; }
        public int BTeam { get; set; }
        public int MTeam { get; set; }
        public int LTeam { get; set; }
        public int TTeam { get; set; }

    }
    public partial class GetdWFSummaryEnAndCn
    {
        public string WFPart { get; set; }
        public string Factory { get; set; }
        public string clsname { get; set; }
        public string WFType { get; set; }
        public string DeptName { get; set; }
        public string jobtitlecode { get; set; } //add by joseph
        public string jobtitleen { get; set; }
        public string jobtitlecn { get; set; }
        public int Total { get; set; }
        public int STeam { get; set; }
        public int BTeam { get; set; }
        public int MTeam { get; set; }
        public int LTeam { get; set; }
        public int TTeam { get; set; }

        // public int SortID { get; set; }

    }
    public partial class GSDreport
    {
        public string Factory { get; set; }
        public string JobTitle { get; set; }
        public string JobTitleCn { get; set; }
        public string Code { get; set; }
        public int? Stationedcut { get; set; }
        public int? Mobilecut { get; set; }
        public int? Floatingcut { get; set; }
        public int? SMFcut { get; set; }
        public int F { get; set; }
        public int A { get; set; }
        public int E { get; set; }
        public int ppB { get; set; }
        public int ppS { get; set; }
        public int ppM { get; set; }
        public int LongLeave { get; set; }
        public int station_FAE { get; set; }
        public int mobile_FAE { get; set; }
        public int floating_FAE { get; set; }
        public int tbtotal { get; set; }

        public string strStationedcut { get; set; }
        public string strMobilecut { get; set; }
        public string strFloatingcut { get; set; }
        public string strppB { get; set; }
        public string strppS { get; set; }
        public string strppM { get; set; }
        public string strF { get; set; }
        public string strA { get; set; }
        public string strE { get; set; }

        public string strLongLeave { get; set; }
        public int FactorySortID { get; set; }

    }

    public partial class GetFactoryTotalSummary
    {
        public string WFPart { get; set; }
        public string Factory { get; set; }
        public string clsname { get; set; }
        public string WFType { get; set; }
        public string DeptName { get; set; }
        public string jobtitleen { get; set; }
        public string jobtitlecn { get; set; }
        public int Total { get; set; }
        public int STeam { get; set; }
        public int BTeam { get; set; }
        public int MTeam { get; set; }
        public int LTeam { get; set; }
        public int TTeam { get; set; }

    }

    public partial class GetPerSenSummary
    {
        private string _Performance;

        private int _SWFSen;

        private int _MWFSen;

        private int _FWFSen;

        private int _SpWFSen;

        private int _FundamentalSen;

        private int _Total;

        private string _Overall;

        [Column(Storage = "_Performance", DbType = "VarChar(20) NOT NULL")]
        public string Performance
        {
            get
            {
                return this._Performance;
            }
            set
            {
                if ((this._Performance != value))
                {
                    this._Performance = value;
                }
            }
        }

        [Column(Storage = "_SWFSen", DbType = "int")]
        public int SWFSen
        {
            get
            {
                return this._SWFSen;
            }
            set
            {
                if ((this._SWFSen != value))
                {
                    this._SWFSen = value;
                }
            }
        }
        [Column(Storage = "_MWFSen", DbType = "int")]
        public int MWFSen
        {
            get
            {
                return this._MWFSen;
            }
            set
            {
                if ((this._MWFSen != value))
                {
                    this._MWFSen = value;
                }
            }
        }
        [Column(Storage = "_FWFSen", DbType = "int")]
        public int FWFSen
        {
            get
            {
                return this._FWFSen;
            }
            set
            {
                if ((this._FWFSen != value))
                {
                    this._FWFSen = value;
                }
            }
        }
        [Column(Storage = "_SpWFSen", DbType = "int")]
        public int SpWFSen
        {
            get
            {
                return this._SpWFSen;
            }
            set
            {
                if ((this._SpWFSen != value))
                {
                    this._SpWFSen = value;
                }
            }
        }

        [Column(Storage = "_FundamentalSen", DbType = "int")]
        public int FundamentalSen
        {
            get
            {
                return this._FundamentalSen;
            }
            set
            {
                if ((this._FundamentalSen != value))
                {
                    this._FundamentalSen = value;
                }
            }
        }
        [Column(Storage = "_Total", DbType = "int")]
        public int Total
        {
            get
            {
                return this._Total;
            }
            set
            {
                if ((this._Total != value))
                {
                    this._Total = value;
                }
            }
        }
        [Column(Storage = "_Overall", DbType = "VarChar(20) NOT NULL")]
        public string Overall
        {
            get
            {
                return this._Overall;
            }
            set
            {
                if ((this._Overall != value))
                {
                    this._Overall = value;
                }
            }
        }
    }

    public partial class GetSenioritySummary
    {
        private string _Seniority;

        private int _SWFSen;

        private int _MWFSen;

        private int _FWFSen;

        private int _SpWFSen;

        private int _FundamentalSen;

        private int _Total;

        private string _Overall;


        [Column(Storage = "_Seniority", DbType = "VarChar(20) NOT NULL")]
        public string Seniority
        {
            get
            {
                return this._Seniority;
            }
            set
            {
                if ((this._Seniority != value))
                {
                    this._Seniority = value;
                }
            }
        }
        [Column(Storage = "_SWFSen", DbType = "int")]
        public int SWFSen
        {
            get
            {
                return this._SWFSen;
            }
            set
            {
                if ((this._SWFSen != value))
                {
                    this._SWFSen = value;
                }
            }
        }
        [Column(Storage = "_MWFSen", DbType = "int")]
        public int MWFSen
        {
            get
            {
                return this._MWFSen;
            }
            set
            {
                if ((this._MWFSen != value))
                {
                    this._MWFSen = value;
                }
            }
        }
        [Column(Storage = "_FWFSen", DbType = "int")]
        public int FWFSen
        {
            get
            {
                return this._FWFSen;
            }
            set
            {
                if ((this._FWFSen != value))
                {
                    this._FWFSen = value;
                }
            }
        }
        [Column(Storage = "_SpWFSen", DbType = "int")]
        public int SpWFSen
        {
            get
            {
                return this._SpWFSen;
            }
            set
            {
                if ((this._SpWFSen != value))
                {
                    this._SpWFSen = value;
                }
            }
        }

        [Column(Storage = "_FundamentalSen", DbType = "int")]
        public int FundamentalSen
        {
            get
            {
                return this._FundamentalSen;
            }
            set
            {
                if ((this._FundamentalSen != value))
                {
                    this._FundamentalSen = value;
                }
            }
        }
        [Column(Storage = "_Total", DbType = "int")]
        public int Total
        {
            get
            {
                return this._Total;
            }
            set
            {
                if ((this._Total != value))
                {
                    this._Total = value;
                }
            }
        }
        [Column(Storage = "_Overall", DbType = "VarChar(20) NOT NULL")]
        public string Overall
        {
            get
            {
                return this._Overall;
            }
            set
            {
                if ((this._Overall != value))
                {
                    this._Overall = value;
                }
            }
        }
    }

    public partial class GetRegionSummary
    {
        private string _Region;

        private int _SWFSen;

        private int _MWFSen;

        private int _FWFSen;

        private int _SpWFSen;

        private int _FundamentalSen;

        private int _Total;

        private string _Overall;


        [Column(Storage = "_Region", DbType = "VarChar(20) NOT NULL")]
        public string Region
        {
            get
            {
                return this._Region;
            }
            set
            {
                if ((this._Region != value))
                {
                    this._Region = value;
                }
            }
        }
        [Column(Storage = "_SWFSen", DbType = "int")]
        public int SWFSen
        {
            get
            {
                return this._SWFSen;
            }
            set
            {
                if ((this._SWFSen != value))
                {
                    this._SWFSen = value;
                }
            }
        }
        [Column(Storage = "_MWFSen", DbType = "int")]
        public int MWFSen
        {
            get
            {
                return this._MWFSen;
            }
            set
            {
                if ((this._MWFSen != value))
                {
                    this._MWFSen = value;
                }
            }
        }
        [Column(Storage = "_FWFSen", DbType = "int")]
        public int FWFSen
        {
            get
            {
                return this._FWFSen;
            }
            set
            {
                if ((this._FWFSen != value))
                {
                    this._FWFSen = value;
                }
            }
        }
        [Column(Storage = "_SpWFSen", DbType = "int")]
        public int SpWFSen
        {
            get
            {
                return this._SpWFSen;
            }
            set
            {
                if ((this._SpWFSen != value))
                {
                    this._SpWFSen = value;
                }
            }
        }

        [Column(Storage = "_FundamentalSen", DbType = "int")]
        public int FundamentalSen
        {
            get
            {
                return this._FundamentalSen;
            }
            set
            {
                if ((this._FundamentalSen != value))
                {
                    this._FundamentalSen = value;
                }
            }
        }
        [Column(Storage = "_Total", DbType = "int")]
        public int Total
        {
            get
            {
                return this._Total;
            }
            set
            {
                if ((this._Total != value))
                {
                    this._Total = value;
                }
            }
        }
        [Column(Storage = "_Overall", DbType = "VarChar(20) NOT NULL")]
        public string Overall
        {
            get
            {
                return this._Overall;
            }
            set
            {
                if ((this._Overall != value))
                {
                    this._Overall = value;
                }
            }
        }
    }


    public partial class GetMCDeptSummary
    {
        //factory,convert(nvarchar(50),class) as class,type1,type2,count(*) as Total,0 as SYear,0 as BYear,0 as MYear,0 as LYear,0 as TYear 
        public string Factory { get; set; }
        public string Class { get; set; }
        public string Type1 { get; set; }
        public string Type2 { get; set; }
        public string Type { get; set; }
        public int Total { get; set; }
        public int SYear { get; set; }
        public int BYear { get; set; }
        public int MYear { get; set; }
        public int LYear { get; set; }
        public int TYear { get; set; }

        public int T1 { get; set; }
        public int T2 { get; set; }
        public int T3 { get; set; }
        public int T4 { get; set; }
        public int T5 { get; set; }

        public int Tf1 { get; set; }
        public int Tf2 { get; set; }
        public int Tf3 { get; set; }
        public int Tf4 { get; set; }
        public int Tf5 { get; set; }

        public int Tg1 { get; set; }
        public int Tg2 { get; set; }
        public int Tg3 { get; set; }
        public int Tg4 { get; set; }
        public int Tg5 { get; set; }

        public int Tk1 { get; set; }
        public int Tk2 { get; set; }
        public int Tk3 { get; set; }
        public int Tk4 { get; set; }
        public int Tk5 { get; set; }

        public int Ts1 { get; set; }
        public int Ts2 { get; set; }
        public int Ts3 { get; set; }
        public int Ts4 { get; set; }
        public int Ts5 { get; set; }

        public string GRPType { get; set; }

    }
    public partial class GetMCTypeSummary
    {
        public string SeqNo { get; set; }
        public string Factory { get; set; }
        public string MachineClass { get; set; }
        public string Type1 { get; set; }
        public string Type2 { get; set; }
        public string Type { get; set; }
        public string typeen { get; set; }
        public int Total { get; set; }
        public int SYear { get; set; }
        public int BYear { get; set; }
        public int MYear { get; set; }
        public int LYear { get; set; }
        public int TYear { get; set; }

        public int cnt { get; set; }
        public int seniority1 { get; set; }
        public int seniority2 { get; set; }
        public int seniority3 { get; set; }
        public int seniority4 { get; set; }
        public int seniority5 { get; set; }
        public string machineclassd { get; set; }
        public string mtype { get; set; }
        public int mtypes { get; set; }

        public int T1 { get; set; }
        public int T2 { get; set; }
        public int T3 { get; set; }
        public int T4 { get; set; }
        public int T5 { get; set; }

        public int Tf1 { get; set; }
        public int Tf2 { get; set; }
        public int Tf3 { get; set; }
        public int Tf4 { get; set; }
        public int Tf5 { get; set; }

        public int Tg1 { get; set; }
        public int Tg2 { get; set; }
        public int Tg3 { get; set; }
        public int Tg4 { get; set; }
        public int Tg5 { get; set; }

        public int Tk1 { get; set; }
        public int Tk2 { get; set; }
        public int Tk3 { get; set; }
        public int Tk4 { get; set; }
        public int Tk5 { get; set; }


        public int Ts1 { get; set; }
        public int Ts2 { get; set; }
        public int Ts3 { get; set; }
        public int Ts4 { get; set; }
        public int Ts5 { get; set; }

        public decimal st1 { get; set; }
        public decimal st2 { get; set; }
        public decimal st3 { get; set; }
        public decimal st4 { get; set; }
        public decimal st5 { get; set; }

        public string GRPType { get; set; }

    }

    public partial class GetMCResult
    {
        private string _id;
        private string _name;
        private string _type;
        private string _type2;
        private string _type3;
        private string _UYear;
        private string _InPeroid;
        private string _Own;
        private string _Borrow;
        private string _TypeOfNeedle;
        private string _NeedleGauge;
        private string _SawingSpeed;
        private string _BOI_proj1;
        private string _LineCode;
        private string _NextLIne;
        private string _Location;
        private string _NextLocation;
        private string _Marks;
        private string _Buyer;

        [Column(Storage = "_id", DbType = "VarChar(20) NOT NULL")]
        public string id
        {
            get
            {
                return this._id;
            }
            set
            {
                if ((this._id != value))
                {
                    this._id = value;
                }
            }
        }

        [Column(Storage = "_name", DbType = "VarChar(50) NOT NULL")]
        public string name
        {
            get
            {
                return this._name;
            }
            set
            {
                if ((this._name != value))
                {
                    this._name = value;
                }
            }
        }
        [Column(Storage = "_type", DbType = "VarChar(50) ")]
        public string type
        {
            get
            {
                return this._type;
            }
            set
            {
                if ((this._type != value))
                {
                    this._type = value;
                }
            }
        }
        [Column(Storage = "_type2", DbType = "VarChar(20) ")]
        public string type2
        {
            get
            {
                return this._type2;
            }
            set
            {
                if ((this._type2 != value))
                {
                    this._type2 = value;
                }
            }
        }
        [Column(Storage = "_type3", DbType = "VarChar(20)")]
        public string type3
        {
            get
            {
                return this._type3;
            }
            set
            {
                if ((this._type3 != value))
                {
                    this._type3 = value;
                }
            }
        }
        [Column(Storage = "_UYear", DbType = "VarChar(20) NOT NULL")]
        public string UYear
        {
            get
            {
                return this._UYear;
            }
            set
            {
                if ((this._UYear != value))
                {
                    this._UYear = value;
                }
            }
        }
        [Column(Storage = "_InPeroid", DbType = "VarChar(20) NOT NULL")]
        public string InPeroid
        {
            get
            {
                return this._InPeroid;
            }
            set
            {
                if ((this._InPeroid != value))
                {
                    this._InPeroid = value;
                }
            }
        }
        [Column(Storage = "_Own", DbType = "VarChar(20) NOT NULL")]
        public string Own
        {
            get
            {
                return this._Own;
            }
            set
            {
                if ((this._Own != value))
                {
                    this._Own = value;
                }
            }
        }

        [Column(Storage = "_Borrow", DbType = "VarChar(20) NOT NULL")]
        public string Borrow
        {
            get
            {
                return this._Borrow;
            }
            set
            {
                if ((this._Borrow != value))
                {
                    this._Borrow = value;
                }
            }
        }

        [Column(Storage = "_TypeOfNeedle", DbType = "VarChar(20) NOT NULL")]
        public string TypeOfNeedle
        {
            get
            {
                return this._TypeOfNeedle;
            }
            set
            {
                if ((this._TypeOfNeedle != value))
                {
                    this._TypeOfNeedle = value;
                }
            }
        }

        [Column(Storage = "_NeedleGauge", DbType = "VarChar(20) NOT NULL")]
        public string NeedleGauge
        {
            get
            {
                return this._NeedleGauge;
            }
            set
            {
                if ((this._NeedleGauge != value))
                {
                    this._NeedleGauge = value;
                }
            }
        }

        [Column(Storage = "_SawingSpeed", DbType = "VarChar(20) NOT NULL")]
        public string SawingSpeed
        {
            get
            {
                return this._SawingSpeed;
            }
            set
            {
                if ((this._SawingSpeed != value))
                {
                    this._SawingSpeed = value;
                }
            }
        }

        [Column(Storage = "_BOI_proj1", DbType = "VarChar(20) NOT NULL")]
        public string BOI_proj1
        {
            get
            {
                return this._BOI_proj1;
            }
            set
            {
                if ((this._BOI_proj1 != value))
                {
                    this._BOI_proj1 = value;
                }
            }
        }

        [Column(Storage = "_LineCode", DbType = "VarChar(20) NOT NULL")]
        public string LineCode
        {
            get
            {
                return this._LineCode;
            }
            set
            {
                if ((this._LineCode != value))
                {
                    this._LineCode = value;
                }
            }
        }

        [Column(Storage = "_NextLIne", DbType = "VarChar(20) NOT NULL")]
        public string NextLIne
        {
            get
            {
                return this._NextLIne;
            }
            set
            {
                if ((this._NextLIne != value))
                {
                    this._NextLIne = value;
                }
            }
        }

        [Column(Storage = "_Location", DbType = "VarChar(20) NOT NULL")]
        public string Location
        {
            get
            {
                return this._Location;
            }
            set
            {
                if ((this._Location != value))
                {
                    this._Location = value;
                }
            }
        }

        [Column(Storage = "_NextLocation", DbType = "VarChar(20) NOT NULL")]
        public string NextLocation
        {
            get
            {
                return this._NextLocation;
            }
            set
            {
                if ((this._NextLocation != value))
                {
                    this._NextLocation = value;
                }
            }
        }

        [Column(Storage = "_Marks", DbType = "VarChar(20) NOT NULL")]
        public string Marks
        {
            get
            {
                return this._Marks;
            }
            set
            {
                if ((this._Marks != value))
                {
                    this._Marks = value;
                }
            }
        }
        [Column(Storage = "_Buyer", DbType = "VarChar(20) NOT NULL")]
        public string Buyer
        {
            get
            {
                return this._Buyer;
            }
            set
            {
                if ((this._Buyer != value))
                {
                    this._Buyer = value;
                }
            }
        }

    }

    public partial class GetMCSummary
    {
        private string _MCType;
        private string _Description;
        private int _ThreeMonth;
        private int _TwelveMonth;
        private int _OneYear;
        private int _ThreeYear;
        private int _FiveYear;
        private int _NineYear;
        private int _FourtyYear;
        private int _NinetyYear;
        private int _Qty;

        [Column(Storage = "_MCType", DbType = "VarChar(20) NOT NULL")]
        public string MCType
        {
            get
            {
                return this._MCType;
            }
            set
            {
                if ((this._MCType != value))
                {
                    this._MCType = value;
                }
            }
        }
        [Column(Storage = "_Description", DbType = "VarChar(50) NOT NULL")]
        public string Description
        {
            get
            {
                return this._Description;
            }
            set
            {
                if ((this._Description != value))
                {
                    this._Description = value;
                }
            }
        }

        [Column(Storage = "_ThreeMonth", DbType = "int")]
        public int ThreeMonth
        {
            get
            {
                return this._ThreeMonth;
            }
            set
            {
                if ((this._ThreeMonth != value))
                {
                    this._ThreeMonth = value;
                }
            }
        }
        [Column(Storage = "_TwelveMonth", DbType = "int")]
        public int TwelveMonth
        {
            get
            {
                return this._TwelveMonth;
            }
            set
            {
                if ((this._TwelveMonth != value))
                {
                    this._TwelveMonth = value;
                }
            }
        }
        [Column(Storage = "_OneYear", DbType = "int")]
        public int OneYear
        {
            get
            {
                return this._OneYear;
            }
            set
            {
                if ((this._OneYear != value))
                {
                    this._OneYear = value;
                }
            }
        }
        [Column(Storage = "_ThreeYear", DbType = "int")]
        public int ThreeYear
        {
            get
            {
                return this._ThreeYear;
            }
            set
            {
                if ((this._ThreeYear != value))
                {
                    this._ThreeYear = value;
                }
            }
        }
        [Column(Storage = "_FiveYear", DbType = "int")]
        public int FiveYear
        {
            get
            {
                return this._FiveYear;
            }
            set
            {
                if ((this._FiveYear != value))
                {
                    this._FiveYear = value;
                }
            }
        }

        [Column(Storage = "_NineYear", DbType = "int")]
        public int NineYear
        {
            get
            {
                return this._NineYear;
            }
            set
            {
                if ((this._NineYear != value))
                {
                    this._NineYear = value;
                }
            }
        }
        [Column(Storage = "_FourtyYear", DbType = "int")]
        public int FourtyYear
        {
            get
            {
                return this._FourtyYear;
            }
            set
            {
                if ((this._FourtyYear != value))
                {
                    this._FourtyYear = value;
                }
            }
        }
        [Column(Storage = "_NinetyYear", DbType = "int")]
        public int NinetyYear
        {
            get
            {
                return this._NinetyYear;
            }
            set
            {
                if ((this._NinetyYear != value))
                {
                    this._NinetyYear = value;
                }
            }
        }
        [Column(Storage = "_Qty", DbType = "int")]
        public int Qty
        {
            get
            {
                return this._Qty;
            }
            set
            {
                if ((this._Qty != value))
                {
                    this._Qty = value;
                }
            }
        }

    }

    public partial class McSummaryByRegionResult
    {
        public string McClass { get; set; }
        public string MCType { get; set; }
        public string Class_EN { get; set; }
        public string Class_CN { get; set; }
        public string Type_EN { get; set; }
        public string Type_CN { get; set; }


        public int Summy_SL { get; set; }
        public int Summy_SLSALE { get; set; }
        public int Summy_FJ { get; set; }
        public int Summy_GG { get; set; }
        public int Summy_RX { get; set; }
        public int Summy_CG { get; set; }

    }

    public partial class McSummaryByRegionSub
    {
        public string McClass { get; set; }
        public string McClass_EN { get; set; }
        public string McClass_CN { get; set; }

        public string MCType { get; set; }
        public string Desc_EN { get; set; }
        public string Desc_CN { get; set; }

        public int Summy_SL { get; set; }
        public int Summy_SLSALE { get; set; }
        public int Summy_FJ { get; set; }
        public int Summy_GG { get; set; }
        public int Summy_RX { get; set; }
        public int Summy_CG { get; set; }
        public int Summy_Class { get; set; }
        public int SubTotal { get; set; }

    }

    public partial class MFSummaryByRegionResult
    {
        public string Factory { get; set; }
        public string Description { get; set; }
        public string WFpart { get; set; }

        public string Workforcetyen { get; set; }
        public string Workforcetycn { get; set; }
        public string Jobtitleen { get; set; }
        public string Jobtitlecn { get; set; }
        public string Code { get; set; }
        public string JTCode { get; set; }

        public int Headcount { get; set; }
        public decimal Per1 { get; set; }
        public int Post { get; set; }
        public decimal Per2 { get; set; }

        public int FSeq { get; set; }
        public int LSeq { get; set; }

    }

    public partial class MFSummaryByRegionResult_Sub
    {
        public string Region { get; set; }
        public string Officefactory { get; set; }
        public string Location { get; set; }

        public int DeptCount { get; set; }
        public int S_Head { get; set; }
        public decimal S_Per { get; set; }

        public int P_Head { get; set; }
        public decimal P_Per { get; set; }

        public int N_Head { get; set; }
        public decimal N_Per { get; set; }

        public int SS_Head { get; set; }
        public decimal SS_Per { get; set; }

        public int HeadCount { get; set; }
        public decimal HC_Per { get; set; }


    }


    public partial class McSummaryByGroup
    {
        public string McGrpCode { get; set; }

        public int Total_SL { get; set; }
        public int Total_SaleOffice { get; set; }
        public int Total_GG { get; set; }
        public int Total_RX { get; set; }
        public int Total_CG { get; set; }
        public int Total_Group { get; set; }

        public int Total_China { get; set; }
        public decimal Per_China { get; set; }

        public int Total_OffShoe { get; set; }
        public decimal Per_OffShoe { get; set; }

    }

    public partial class McSummaryByDept
    {
        public string Factory { get; set; }
        public string DepartmentEn { get; set; }
        public string SectionEn { get; set; }
        //public string SubSectionEn { get; set; }
        public string Class { get; set; }
        public string TeamEn { get; set; }
        public string MCclass { get; set; }
        public string MCType { get; set; }
        public string TypeDesc { get; set; }

        public int total_bytype { get; set; }
        public int total_byteam { get; set; }
        public int total_byclass { get; set; }
        public int total_bysect { get; set; }
        public int total_bydept { get; set; }
        public int sortid { get; set; }

    }

    public partial class vw_workhistory : BaseEntity
    {

    }


    partial class CarEfficiency : BaseEntity { }

    partial class WorkForce_Comp : WorkForce
    {

        public string WorkRegion1
        {
            get
            {

                //List<DepartalSort> _departinfor = new List<DepartalSort>();
                //string _dept = this.DeptName;
                //string _section = this.WFWhere;
                //string _team = this.WFWhere_1;
                //string _class = this.WFWhere_2;
                //if (!string.IsNullOrEmpty(_dept))
                //{
                //    _departinfor = RapCtx.DepartalSorts.Where(p => p.Deptmental_EN == _dept).ToList();
                //}
                //if (!string.IsNullOrEmpty(_section))
                //{
                //    _departinfor = _departinfor.Where(p => p.Section_EN == _section).ToList();
                //}
                //if (!string.IsNullOrEmpty(_team))
                //{
                //    _departinfor = _departinfor.Where(p => p.Team_EN == _team).ToList();
                //}
                //if (!string.IsNullOrEmpty(_class))
                //{
                //    _departinfor = _departinfor.Where(p => p.Class_EN == _class).ToList();
                //}
                //if (_departinfor.Count() > 0)
                //    return _departinfor[0].WorkRegion;
                //else
                return "";

            }

        }

    }

    partial class WorkForce : BaseEntity
    {
        //用于显示T3) Off-site Remote Support栏位，由David增加 2020-04-24
        public string OffSiteRemoteSupportShow
        {
            get
            {
                if ((this.RemoteFuncControl ?? false) || (this.RemoteFuncSupport ?? false))
                {
                    return "Y";
                }
                else
                {
                    return "N";
                }
            }
        }


        public string IsDeploymentShow
        {
            get
            {
                return (this.IsDeployment ?? false) ? "Y" : "N";
            }
        }


        //用于LB4選人時排序，排序順序如下：  由David加入 2018-07-12
        //1.MWs   Mobile
        //2.ALWs  
        //3.FWs
        //4.EWs
        public string WsGroupNameSort
        {
            get
            {
                if (this.WFWhereCn == "黏縫課" || this.WFWhereCn == "組件加工課")
                {
                    return "6) SWF at PP by Ws";
                }

                if (this.WFPartCn.Contains("非生產性") || this.WFPartCn.Contains("間接性"))
                {
                    return "7) Indirect WF by factory";
                }

                //For grouping, we have 1) MWF by factory, 2) SWF at AL by Ws, 3) SWF at Front phase by Ws, 4) SWF at End phase by Ws, 5) SWF at other Ws (AL, FP and EP)
                if (string.IsNullOrEmpty(this.LineCode) || string.IsNullOrEmpty(this.WorkerType))
                {
                    return "8) Other";
                }

                //if (this.WorkerType.Contains("Mobile"))
                //{
                //    return "1) MWF by factory";
                //}

                //if (this.Location != this.CurrentWorkshop)  //不属于上面几种情况，又不是當前Workshop的，放在other Ws
                //{
                //    return "5) SWF at other Ws (AL, FP and EP)";
                //}


                if (this.WorkerType.Contains("Mobile"))
                {
                    return "1) MWF by factory";
                }
                else if (this.WorkerType.Contains("Standard"))
                {
                    if (string.IsNullOrEmpty(this.WFWhere_1))
                    {
                        return "8) Other";
                    }

                    if (this.WFWhere_1.Contains("Assembly"))
                    {
                        return "2) SWF at AL by Ws";
                    }
                    else if (this.WFWhere_1.Contains("Front"))
                    {
                        return "3) SWF at Front phase by Ws";
                    }
                    else if (this.WFWhere_1.Contains("End"))
                    {
                        return "4) SWF at End phase by Ws";
                    }
                }
                else
                {
                    return "5) SWF at other Ws (AL, FP and EP)";
                }

                return "8) Other";
            }
        }

        //用于LB4選人時排序（按車工、手工、查驗排序）， 由David加入 2018-07-12
        //1.車工
        //2.手工
        //3.查驗
        public string JobTitleSort
        {
            get
            {

                if (string.IsNullOrEmpty(this.JobTitleEn))
                {
                    return "4. Other";
                }

                //For dWF, we have 3 kinds, they are: sewers, hand-workers and inspectors
                if (this.JobTitleEn.Contains("Sewing Machinist"))
                {
                    return "1. Machinist";
                }
                else if (this.JobTitleEn.Contains("Sewing Manual") || this.JobTitleEn.Contains("Hand Held Ultrasonic"))
                {
                    return "2. Manual Worker";
                }
                else if (this.JobTitleEn.Contains("Quality Control"))
                {
                    return "3. Inspectors";
                }
                //else if (this.JobTitleEn.Contains("Hand Held Ultrasonic"))
                //{
                //    return "4. M/C Operator";
                //}

                return "4. Other";

                //Sewing Machinist - Stitching (Floating)
                //Sewing Machinist - Stitching (Mobile 1 - Assigned)
                //Sewing Machinist - Stitching (Mobile 2)
                //Sewing Machinist - Stitching (Stationed)
                //Sewing Manual Worker - Stitching (Mobile 2)
                //Sewing Manual Worker - Stitching (Stationed)
                //Quality Control (QC) Inspector - Sewn Products
                //Hand Held Ultrasonic Welding M/C Operator
            }
        }


        ////用于LB4選人時排序，排序順序如下：  由David加入 2018-07-12
        ////1.Mobile
        ////2.Stationed
        //public int WorkTypeSortID
        //{
        //    get
        //    {
        //        if (this.WorkerType.Contains("Mobile 1"))
        //        {
        //            return 1;
        //        }
        //        else if (this.WorkerType.Contains("Mobile 2"))
        //        {
        //            return 2;
        //        }

        //        else if (this.WorkerType.Contains("Stationed"))
        //        {
        //            return 3;
        //        }

        //        return 99;
        //    }
        //}

        ////用于LB4選人時排序，排序順序如下：  由David加入 2018-07-12
        ////1.MWF  Fty(Mobile)
        ////2.SWF  ALWs (Assemlby Line Team)
        ////3.SWF  FWs  (前段工場)
        ////4.FWF  EWs  (后段工場) 
        //public int WFWhere_1SortID
        //{
        //    get
        //    {
        //        if (this.WFWhere_1.Contains("Assembly"))
        //        {
        //            return 1;
        //        }
        //        else if (this.WFWhere_1.Contains("Front Phase Team"))
        //        {
        //            return 2;
        //        }
        //        else if (this.WFWhere_1.Contains("Front Phase Stitching"))
        //        {
        //            return 3;
        //        }
        //        else if (this.WFWhere_1.Contains("End Phase Team"))
        //        {
        //            return 4;
        //        }
        //        else if (this.WFWhere_1.Contains("End Phase Stitching"))
        //        {
        //            return 5;
        //        }

        //        return 99;
        //    }
        //1	1	Mobile 1	Assembly Line Team
        //2	2	Mobile 1	Assembly Team
        //3	3	Mobile 1	Front Phase Team
        //4	4	Mobile 1	End Phase Team
        //6	6	Mobile 2	Assembly Line Team
        //7	7	Mobile 2	Assembly Team
        //8	8	Mobile 2	End Phase Stitching Team
        //9	9	Mobile 2	End Phase Team
        //10	10	保留	保留
        //11	11	保留	保留
        //12	12	保留	保留
        //13	13	保留	保留
        //14	14	保留	保留
        //15	15	Stationed	Assembly Team
        //16	16	Stationed	Assembly Line Team
        //17	17	Stationed	Front Phase Team
        //18	18	Stationed	Front Phase Stitching Team2
        //19	19	Stationed	End Phase Team
        //20	20	Stationed	End Phase Stitching Team
        //}

        ////用于LB4選人時排序（按車工、手工、查驗排序）， 由David加入 2018-07-12
        //public int JobTitleSortID
        //{
        //    get
        //    {
        //        if (this.JobTitleEn.Contains("Sewing Machinist"))
        //        {
        //            return 1;
        //        }
        //        else if (this.JobTitleEn.Contains("Sewing Manual"))
        //        {
        //            return 2;
        //        }
        //        else if (this.JobTitleEn.Contains("Quality Control"))
        //        {
        //            return 3;
        //        }
        //        else if (this.JobTitleEn.Contains("Hand Held Ultrasonic"))
        //        {
        //            return 4;
        //        }

        //        return 99;

        //        //Sewing Machinist - Stitching (Floating)
        //        //Sewing Machinist - Stitching (Mobile 1 - Assigned)
        //        //Sewing Machinist - Stitching (Mobile 2)
        //        //Sewing Machinist - Stitching (Stationed)
        //        //Sewing Manual Worker - Stitching (Mobile 2)
        //        //Sewing Manual Worker - Stitching (Stationed)
        //        //Quality Control (QC) Inspector - Sewn Products
        //        //Hand Held Ultrasonic Welding M/C Operator
        //    }
        //}

        ////以前Department的SeqNO是保存在Workforce的SeqNO字段中的，現改為計算字段，由david改寫， 2018-09-10
        //public string SeqNO_Show
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
        //        }

        //        DepartalSort obj;
        //        var lists = (this.CurrentDataContext as RAPLQDataContext).DepartalSorts.Where(p => p.Deptmental_EN == this.DeptName &&
        //            p.Section_EN == this.WFWhere && p.Team_EN == this.WFWhere_1);

        //        if (string.IsNullOrEmpty(this.LineCode) || this.LineCode == "- -" || this.LineCode == "--")
        //        {
        //            obj = lists.FirstOrDefault();
        //        }
        //        else
        //        {
        //            obj = lists.FirstOrDefault(p => p.Class_EN == this.LineCode);
        //        }

        //        return obj == null ? "" : obj.SeqNo;

        //        //DepartalSort obj = (this.CurrentDataContext as RAPLQDataContext).DepartalSorts.FirstOrDefault(p =>
        //        //   p.Deptmental_EN == this.DeptName && p.Section_EN == this.WFWhere && p.Team_EN == this.WFWhere_1 && p.Class_EN == this.LineCode);

        //    }
        //}




        public string WFWhere_1_Disp
        {
            get
            {
                return this.WFWhere_1;
                //if (this.WFWhere != null && this.WFWhere.Contains("Stitching Section") && !WFWhere_2.Contains("Tranning"))
                //    return this.WFWhere_2;
                //else
                //    return WFWhere_1;

            }
        }

        public string WFWhere_1Cn_Disp
        {
            get
            {

                return WFWhere_1Cn;
                //if (this.WFWhere != null && this.WFWhere.Contains("Stitching Section") && !WFWhere_2.Contains("Tranning"))
                //    return this.WFWhere_2Cn;
                //else
                //    return WFWhere_1Cn;

            }
        }

        public string WFWhere_2_Disp
        {
            get
            {
                if (this.WFWhere != null && this.WFWhere.Contains("Stitching Section") && !WFWhere_2.Contains("Tranning"))
                    return "- -";
                else
                    return WFWhere_2;

            }
        }

        public string WFWhere_2Cn_Disp
        {
            get
            {
                if (this.WFWhere != null && this.WFWhere.Contains("Stitching Section") && !WFWhere_2.Contains("Tranning"))
                    return "- -";
                else
                    return WFWhere_2Cn;

            }

        }


        public string Disp_Vacancy
        {
            get
            {
                //由David修改 2020-03-18
                if (this.Vacancy == "OV") //Open Vacancy
                {
                    string Str = (this.VacancyDate ?? DateTime.MinValue) == DateTime.MinValue ? "" : (this.VacancyDate ?? DateTime.MinValue).ToString("MM\\/dd");
                    return string.Format("Open - {0}", Str);
                }
                if (this.Vacancy == "BV") //Budget Vacancy
                {
                    string Str = (this.VacancyDate ?? DateTime.MinValue) == DateTime.MinValue ? "" : (this.VacancyDate ?? DateTime.MinValue).ToString("MM\\/dd");
                    return string.Format("Plan - {0}", Str);
                }
                else
                {
                    return "No";
                }

                //return this.Vacancy == "OV" ? "Y" : "N"; //由David修改 2020-03-12

                //if (this.Vacancy == "SF")
                //    return "Y";
                //else
                //    return "N";
            }
        }

        public string Disp_EmpType
        {
            get
            {
                //由david修改 2020-03-18
                if (this.Vacancy == "SF" || this.Vacancy == "OSF" || this.Vacancy == "OV" || this.Vacancy == "BV")
                {
                    return "Staff";
                }
                else
                {
                    return "Labor";
                }

                //if (this.Vacancy == "SF")
                //    return "Staff";
                //else if (this.Vacancy == "LR")
                //    return "Labor";
                //else if (this.Vacancy == "TR")
                //    return "Temp Labor";
                //else if (this.Vacancy == "OSF")
                //    return "Off-site Staff";
                //else if (this.Vacancy == "BV") //由David加入 2020-03-12
                //    return "Budget Vacancy";
                //else
                //    return "";
            }
        }

        public string StrTypeCode
        {

            get
            {
                // return RAPLQDataContext.GetDispalyTypeCode(this.WorkForceTyEn);
                return this.TitleTypeCode;
                //乾三连 坤六断 震仰盂 艮覆碗 离中虚 坎中满 兑上缺 巽下断

            }

        }
        public string StrTitleCode
        {
            get
            {
                // return RAPLQDataContext.GetDispalyJobTitleCode(this.JobTitleEn);
                return this.JobTitleCode;

            }
        }

        public string WFPart_Desc
        {
            get
            {
                // return RAPLQDataContext.GetDisplay("WFPart",this.NextLineCode,false);
                return "";

            }
        }

        public string WFPart_En
        {
            get
            {
                // return RAPLQDataContext.GetDisplay("WFPart", this.NextLineCode, true);
                return "";


            }
        }

        public string WageTypeDesc
        {
            get
            {
                return RAPLQDataContext.GetDisplay("SalaryType", this.WageType, false);
                // return this.JobTitleCode;

            }
        }

        public string StrIsRegistAuxiliary
        {
            get
            {
                return RAPLQDataContext.GetDisplay("WF_TEMP", "WFT001", this.IsRegistAuxiliary);

            }
        }
        public string strHeadCount
        {
            get
            {
                return RAPLQDataContext.GetDisplay("HEAD_COUNT", "HC001", this.HeadCount);

            }
        }
        public string strCrossRole
        {
            get
            {
                return RAPLQDataContext.GetDisplay("CROSS_ROLE", "CR001", this.CrossRole);

            }
        }
        public string strIsRelated
        {
            get
            {
                return RAPLQDataContext.GetDisplay("GSD_WORKFORCE", "GW001", this.IsRelated);

            }
        }
        public string strLongLeave
        {
            get
            {
                return RAPLQDataContext.GetDisplay("LEAVE_STATUS", "LS001", this.LongLeave);

            }
        }
        public decimal SeniorityS
        {
            get
            {

                if (this.JPDate != null)
                    return Convert.ToDecimal((Convert.ToDecimal(Microsoft.VisualBasic.DateAndTime.DateDiff("m", this.JPDate.Value, DateTime.Now.Date, 0, 0)) / Convert.ToDecimal(12)).ToString("0.0"));
                else
                    return 0;
            }
        }

        public int SortID
        {
            get
            {
                int m = 0;
                return m = (this.Vacancy == "SF" ? m = 1 : (this.Vacancy == "LR" ? m = 2 : m = 3));

            }
        }
        public string SeniorityDisp
        {
            get
            {

                if (this.JPDate != null)
                {

                    int year = 0, mon = 0, totalmon = 0, days = 0;
                    DateTime start = JPDate.Value;
                    DateTime end = DateTime.Now;
                    DateTime dt = DateTime.Parse(DateTime.Now.Year.ToString() + "-12-31");  //先取得當年最后一天
                    //if (DateTime.Now.ToShortDateString() != dt.ToShortDateString())
                    //{
                    totalmon = end.Year * 12 + end.Month - start.Year * 12 - start.Month;
                    // }
                    //TimeSpan ts1 = new TimeSpan(this.JPDate.Value.Ticks);
                    //TimeSpan ts2 = new TimeSpan(DateTime.Now.Ticks);
                    //TimeSpan ts = ts2.Subtract(ts1).Duration();
                    year = int.Parse(Math.Floor(totalmon / 12.0).ToString());
                    mon = totalmon - 12 * year;

                    DateTime d1 = new DateTime(end.Year, end.Month, 1); //第一天
                    days = end.Subtract(d1).Days;
                    // DateTime d2 = d1.AddMonths(1).AddDays(-1); //當月最后一天
                    return year.ToString() + "年" + mon.ToString() + "月" + days.ToString() + "日";
                }
                else
                    return "0";

            }

        }





        partial void OnCreated()
        {
            this.dWF = true;
            this.LongLeave = false;
            this.InActive = false;
            this.TechType = string.Empty;
        }

        public override bool Save()
        {
            if (this.Vacancy == "OSF")
            {
                this.IsStaff = true;
            }
            return base.Save();
        }

        public bool LB4YNSel { get; set; }
        public bool Locked { get; set; }
        public bool Resered { get; set; }

        /// <summary>
        /// 在LB4選人時，當前選擇拉所在的車間 由David加入2018-07-12
        /// </summary>
        public string CurrentWorkshop { get; set; }

        private string _OperCode;
        public string OperationCode
        {

            get
            {
                return this._OperCode;
            }

            set
            {

                if (value != _OperCode)
                {
                    _OperCode = value;
                }
            }
        }



        //public int DidTime_InFac
        //{
        //    get
        //    {

        //        int icount = 0;

        //        if (this.CurrentDataContext != null)
        //        {
        //            RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
        //            icount = rdc.GetDidTime(this.Factory, this.OperationCode).GetValueOrDefault();
        //        }

        //        return icount;
        //    }
        //}

        public int DidTime_ByWf
        {
            get
            {

                int icount = 0;

                if (this.CurrentDataContext != null && !string.IsNullOrEmpty(this.Id) && !string.IsNullOrEmpty(this.OperationCode))
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    icount = rdc.GetCount(this.Id.Trim(), this.OperationCode.Trim()).GetValueOrDefault();
                }

                return icount;
            }
        }

        public decimal? PastMTM
        {
            get
            {
                decimal _mtm = 0;

                if (this.CurrentDataContext != null && !string.IsNullOrEmpty(this.Id) && !string.IsNullOrEmpty(this.OperationCode))
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    _mtm = rdc.GetPastMtm(this.Id.Trim(), this.OperationCode.Trim()).GetValueOrDefault();
                }

                return _mtm;

            }
        }

        public decimal? Per_FirsPass
        {

            get
            {
                decimal _mtm = 0;

                if (this.CurrentDataContext != null && !string.IsNullOrEmpty(this.Id) && !string.IsNullOrEmpty(this.OperationCode))
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    _mtm = rdc.GetPassFirst(this.Id.Trim(), this.OperationCode.Trim()).GetValueOrDefault();
                }

                return _mtm;

            }

        }

        //public Master_data_For_Job_Title JobTitle
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
        //        }
        //        return (this.CurrentDataContext as RAPLQDataContext).Master_data_For_Job_Titles.FirstOrDefault(p => p.JTCode == this.JobTitleCode);
        //    }
        //}

        //public string GradeCode
        //{
        //    get
        //    {
        //        return this.JobTitle == null ? "" : JobTitle.GradeCode;
        //    }
        //}

        //public string GradeSeq
        //{
        //    get
        //    {
        //        return this.JobTitle == null ? "" : JobTitle.GradeSeq;
        //    }
        //}


    }
    partial class OperationSkill : BaseEntity
    {

    }

    partial class WorkerAttendance : BaseEntity
    {
    }

    partial class WPMaster : BaseEntity
    {
        //public Boolean YNLB5
        //{
        //    get
        //    {
        //        if (this.PoolInfos.Count > 0)
        //        {
        //            foreach (PoolInfo item in this.PoolInfos)
        //            {
        //                return item.Lb5Matchings.Count == 0 ? true : false;
        //            }
        //        }

        //        return false;
        //    }
        //}


        partial void OnCreated()
        {
            this.Flag = string.Empty;
        }

        public string QNShow
        {
            get
            {
                if (this == null || this.Woc == null || this.Rwo == null || this.Qn == null) return "";
                return string.Format("{0}-{1}-{2}", this.Woc.Trim(), this.Rwo.Trim(), this.Qn.Trim());

                //if (this == null || this.J2_job == null || this.Woc == null || this.Rwo == null || this.Qn == null) return "";
                //return string.Format("{0}-{1}-{2}-{3}", this.J2_job.Trim(), this.Woc.Trim(), this.Rwo.Trim(), this.Qn.Trim());
            }
        }

        //public string StartedDateTime
        public string StartTimeShow
        {
            get
            {
                //return (this.StartTime ?? DateTime.MinValue).Date.AddHours(8).AddMinutes(Convert.ToDouble(this.STime ?? 0) * 30).ToString("yy-MM-dd HH:mm");
                //return StartDateTime.ToString("yy-MM-dd HH:mm");
                return StartDateTime.ToString("yy-MM-dd");
            }
        }

        public DateTime StartDateTime
        {
            //參考資料
            //SL:  
            //    08:00 ~ 12:00 中午休息1.5小時
            //    13:30 ~ 17:30
            //    17:30 ~ 18:00 下午休息1小時
            //    19:00 ~ 21:00

            //RX/GG
            //    08:00 ~ 12:30 中午休息45分鐘
            //    13:15 ~ 16:45
            //    16:45 ~ 18:45

            //CL廠按SL廠的算法


            get
            {
                if (string.IsNullOrEmpty(this.Factory))
                {
                    return (this.StartTime ?? DateTime.MinValue).Date.AddHours(8).AddMinutes(Convert.ToDouble(this.STime ?? 0) * 30);
                }

                double ActualSTime = Convert.ToDouble(this.STime ?? 0);
                if (this.Factory.Trim() == "SL" || this.Factory.Trim() == "CL")
                {
                    if ((this.STime ?? 0) > 4m * 2m)  //8:00 ~ 12:00, 超過8個節進度時，加1.5小時，即3節時, 13:30上班
                    {
                        ActualSTime += 3;
                    }

                    if ((this.STime ?? 0) > 8.5m * 2m)
                    {
                        ActualSTime += 2;
                    }
                }
                else //RX和GGs
                {
                    if ((this.STime ?? 0) > 4.5m * 2m)  //8:00 ~ 12:30, 超過9個節進度時，中午休息45分鐘
                    {
                        ActualSTime += 1.5;
                    }
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }

                if (this.Factory.Trim() == "CL" && QNHelper.IsFastMonth(this.CurrentDataContext as RAPLQDataContext, this))
                {
                    return (this.StartTime ?? DateTime.MinValue).Date.AddHours(7).AddMinutes(ActualSTime * 30);
                }

                return (this.StartTime ?? DateTime.MinValue).Date.AddHours(8).AddMinutes(ActualSTime * 30);

                //return (this.StartTime ?? DateTime.MinValue).Date.AddHours(8).AddMinutes(Convert.ToDouble(this.STime ?? 0) * 30);
            }
        }

        public string ReArrangingDateTimeShow
        {
            get
            {
                //if (this.UpdateTime.HasValue)
                //{
                //    return (this.UpdateTime ?? DateTime.MinValue).ToString("yy-MM-dd HH:mm");
                //}
                //else
                //{
                //    return this.StartTimeShow;
                //}
                return this.UpdateTime.HasValue ? (this.UpdateTime ?? DateTime.MinValue).ToString("yy-MM-dd HH:mm") : "";
            }
        }

        public string NeedReArranging
        {
            get
            {
                return ReArrangingDateTimeShow == "" ? "N" : "Y";
            }
        }

        //public string EndTimeShow
        //{
        //    get
        //    {
        //        return (this.EndTime ?? DateTime.MinValue).Date.AddHours(8).AddMinutes(Convert.ToDouble(this.ETime ?? 0) * 30).ToString("yy-MM-dd HH:mm");
        //    }
        //}

        public string Step
        {
            get
            {
                string Str = "Step3";
                if (this.IsConfirmed ?? false) Str = "Step4";
                if (Str == "Step4" && this.Flag.Contains("s")) Str = "Step5";
                if (Str == "Step4" && this.Flag.Contains("x")) Str = "Completed";

                return Str;
            }
        }

        public bool IsLB4 { get; set; }  //計算字段，用于標誌區分是LB5狀態但又需要在LB4中顯示的項，RD Processing顯示的文字不一樣

        /// <summary>
        /// LB4、LB5顯示狀態(選人)
        /// </summary>
        public string ConfirmShow
        {

            get
            {
                string Str = "";

                if (this.IsConfirmed == null ? false : this.IsConfirmed.Value)
                {
                    if (this.Flag.Contains("s"))
                    {
                        Str = (this.UpdateTime ?? DateTime.MinValue) == DateTime.MinValue ?
                            "5) Step 5.2 - RD rearranging need (if any)" :
                            "6) Step 5.3 - RD rearranging again (if any) & the rearranged records";
                    }
                    else
                    {
                        Str = "3) Step 4.0 - RD is cfmd & waiting to start";
                    }
                }
                else
                    Str = (this.ToBeConfirmedFlag ?? false) ? "2) Step 3.2 - RD completed" : "1) Step 3.1 - RD incomplete";

                if (this.IsLB4 && (Str == "5) Step 5.2 - RD rearranging need (if any)" || Str == "6) Step 5.3 - RD rearranging again (if any) & the rearranged records"))
                {
                    Str = "4) Step 5.1 - QN started";
                }

                return Str;
            }

            //get
            //{
            //    string Str = "";

            //    if (this.IsConfirmed == null ? false : this.IsConfirmed.Value)
            //        Str = this.Flag.Contains("s") ? "Resource deployment - Started & rearrange date/time" : "2) Resource deployment - confirmed & ready to start (Step 4)";
            //    else
            //        Str = (this.ToBeConfirmedFlag ?? false) ? "3) Resource deployment - completed (Step 3.2 Workforce)" : "4) Resource deployment - WF incomplete (Step 3.1 Workforce)";

            //    if (this.IsLB4 && Str == "Resource deployment - Started & rearrange date/time")
            //    {
            //        Str = "1) Resource deployment - Started (Step 5)";
            //    }

            //    return Str;
            //}




            //get
            //{
            //    if (this.IsConfirmed == null ? false : this.IsConfirmed.Value)
            //        return this.Flag.Contains("s") ? "Resource deployment - Started & rearrange date/time" : "3)Resource deployment - confirmed & ready to start";
            //    else
            //        return (this.ToBeConfirmedFlag ?? false) ? "2)Resource deployment - completed" : "1)Resource deployment - WF incomplete";
            //}
        }

        /// <summary>
        /// LB4、LB5顯示狀態(選車)
        /// </summary>
        public string ConfirmShow_MC
        {
            get
            {
                string Str = "";
                if (this.IsConfirmed == null ? false : this.IsConfirmed.Value)
                    Str = this.Flag.Contains("s") ? "4) Step 5.1 - QN Started" : "3) Step 4.0 - RD is cfmd & waiting to start";
                else
                    Str = (this.ToBeConfirmedFlag_MC ?? false) ? "2) Step 3.2 - RD completed" : "1) Step 3.1 - RD incomplete";

                if (this.IsLB4 && Str == "4) Step 5.1 - QN Started")
                {
                    Str = "4) Step 5.1 - QN Started";
                }

                return Str;
            }



            //get
            //{
            //    string Str = "";
            //    if (this.IsConfirmed == null ? false : this.IsConfirmed.Value)
            //        Str = this.Flag.Contains("s") ? "1) Resource deployment - Started & rearrange date/time (Step 5)" : "2) Resource deployment - confirmed & ready to start (Step 4)";
            //    else
            //        Str = (this.ToBeConfirmedFlag_MC ?? false) ? "3) Resource deployment - completed  (Step 3.2 HW)" : "4) Resource deployment - Workstation incomplete (Step 3.1 HW)";

            //    if (this.IsLB4 && Str == "Resource deployment - Started & rearrange date/time (Step 5)")
            //    {
            //        Str = "1) Resource deployment - Started (Step 5)";
            //    }

            //    return Str;
            //}



            //get
            //{
            //    if (this.IsConfirmed == null ? false : this.IsConfirmed.Value)
            //        return this.Flag.Contains("s") ? "Resource deployment - Started & rearrange date/time" : "3)Resource deployment - confirmed & ready to start";
            //    else
            //        return (this.ToBeConfirmedFlag_MC ?? false) ? "2)Resource deployment - completed" : "1)Resource deployment - Workstation incomplete";
            //}
        }

        /// <summary>
        /// QN有多少個工場(Ws)
        /// </summary>
        public int WsQty
        {
            get
            {
                return this.Matchings.Select(p => p.FAE).Distinct().Count();
            }
        }

        /// <summary>
        /// QN有多少個工作位，所有5個工場總共的工作位
        /// </summary>
        public int DeskQty
        {
            get
            {
                if ((this.IsConfirmed ?? false) && !this.Flag.Contains("s")) //Step4時
                {
                    return this.Matchings.Where(p => p.FAE != "A").Select(p => p.OperationCode).Count() +
                           this.Matchings.Where(p => p.FAE == "A" && (p.MachineId != null && p.MachineId != "")).Select(p => p.MachineId).Distinct().Count() +
                           this.Matchings.Where(p => p.FAE == "A" && (p.addMachineId1 != null && p.addMachineId1 != "")).Select(p => p.addMachineId1).Distinct().Count() +
                           this.Matchings.Where(p => p.FAE == "A" && (p.addMachineId2 != null && p.addMachineId2 != "")).Select(p => p.addMachineId2).Distinct().Count();
                }
                else //Step3時
                {
                    return this.Matchings.Where(p => p.FAE != "A").Select(p => p.OperationCode).Count() +
                           this.Matchings.Where(p => p.FAE == "A" && (p.JFlag == null || p.JFlag == "")).Count() +
                           this.Matchings.Where(p => p.FAE == "A" && (p.JFlag != null && p.JFlag != "")).Select(p => p.JFlag).Distinct().Count();
                }

            }
        }

        public string LocationShow
        {
            get
            {
                return (string.IsNullOrEmpty(this.Factory) ? "" : this.Factory.Trim()) + " - " + (string.IsNullOrEmpty(this.Location) ? "" : this.Location.Trim());
            }
        }




        public bool YNConfirme
        {
            get
            {
                //string flg = this.Flag != null ? this.Flag : string.Empty;
                //bool confrm = this.IsConfirmed != null ? this.IsConfirmed.Value : false;
                //if (flg.IndexOf("s") > 0 && !confrm)
                //    return true;
                //return false;

                ////由David修改算法 2018-07-19
                //string flg = string.IsNullOrEmpty(this.Flag) ? "" : this.Flag;
                //bool confrm = this.IsConfirmed ?? false;

                //return (!confrm && flg.IndexOf("s") > 0) ||
                //       (!confrm && ((this.EndTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days <= 0) ||
                //       (!confrm && ((this.StartTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days == 0);

                //由David修改算法 2018-10-17
                string flg = string.IsNullOrEmpty(this.Flag) ? "" : this.Flag;
                bool confrm = this.IsConfirmed ?? false;

                if (confrm && flg.IndexOf("s") > 0)
                {
                    return false;
                }

                return (((this.EndTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days <= 0) ||
                       (((this.StartTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days <= 1);

            }
        }
        public bool YNRunRpt { get; set; }
        public List<TypeList> WFs
        {
            get
            {
                if (YNRunRpt)
                {
                    List<WF> WFLst = new List<WF>();
                    List<TypeList> WCLst = new List<TypeList>();
                    foreach (Matching mg in this.Matchings)
                    {
                        #region WF

                        if (WFLst.Where(P => P.WFid == mg.WorkerId).Count() == 0)
                        {
                            WF fx = new WF();
                            fx.WFType = mg.WorkStyle;
                            fx.WFid = mg.WorkerId;
                            WFLst.Add(fx);
                        }


                        if (!string.IsNullOrEmpty(mg.addworkerId1))
                        {

                            if (WFLst.Where(P => P.WFid == mg.addworkerId1).Count() == 0)
                            {
                                WF fx1 = new WF();
                                fx1.WFType = mg.addWorkStyle1;
                                fx1.WFid = mg.addworkerId1;
                                WFLst.Add(fx1);
                            }
                        }
                        if (!string.IsNullOrEmpty(mg.addworkerId2))
                        {

                            if (WFLst.Where(P => P.WFid == mg.addworkerId2).Count() == 0)
                            {
                                WF fx2 = new WF();
                                fx2.WFType = mg.addWorkStyle2;
                                fx2.WFid = mg.addworkerId2;
                                WFLst.Add(fx2);
                            }
                        }
                        if (!string.IsNullOrEmpty(mg.addworkerId3))
                        {

                            if (WFLst.Where(P => P.WFid == mg.addworkerId3).Count() == 0)
                            {
                                WF fx3 = new WF();
                                fx3.WFType = mg.addWorkStyle3;
                                fx3.WFid = mg.addworkerId3;
                                WFLst.Add(fx3);
                            }
                        }
                        #endregion

                    }
                    var Grpwf = from p in WFLst group p by p.WFType into g select new { g.Key, Num = g.Count() };
                    foreach (var wc in Grpwf)
                    {
                        TypeList wx = new TypeList();
                        wx.Type = wc.Key;
                        wx.Num = wc.Num;
                        WCLst.Add(wx);
                    }
                    return WCLst;
                }
                return null;
            }
        }

        public List<TypeList> MCs
        {

            get
            {
                if (YNRunRpt)
                {

                    List<MC> MCLst = new List<MC>();
                    List<TypeList> TPLst = new List<TypeList>();

                    foreach (Matching mg in this.Matchings)
                    {

                        #region MC
                        if (mg.MCType.TrimEnd().IndexOf("HD") < 0)
                        {
                            if (mg.MachineId != null && mg.MachineId != "")
                            {
                                if (mg.MachineId.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.MachineId).Count() == 0)
                                    {
                                        MC mx = new MC();
                                        //mx.MCType = mg.MCType;
                                        mx.MCType = mg.MachineId.Substring(0, 3);
                                        mx.MCId = mg.MachineId;
                                        MCLst.Add(mx);
                                    }
                                }
                            }

                            //un.MachineId = mg.MachineId != null ? (mg.MachineId.TrimEnd().IndexOf("NA") > 0 ? "NA" : mg.MachineId) : "NA";

                            if (mg.addMachineId1 != null && mg.addMachineId1 != "")
                            {
                                if (mg.addMachineId1.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.addMachineId1).Count() == 0)
                                    {
                                        MC mx1 = new MC();
                                        //mx1.MCType = mg.MCType;
                                        mx1.MCType = mg.addMachineId1.Substring(0, 3);
                                        mx1.MCId = mg.addMachineId1;
                                        MCLst.Add(mx1);
                                    }
                                }
                            }
                            if (mg.addMachineId2 != null && mg.addMachineId2 != "")
                            {
                                if (mg.addMachineId2.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.addMachineId2).Count() == 0)
                                    {
                                        MC mx2 = new MC();
                                        //mx2.MCType = mg.MCType;
                                        mx2.MCType = mg.addMachineId2.Substring(0, 3);
                                        mx2.MCId = mg.addMachineId2;
                                        MCLst.Add(mx2);
                                    }
                                }
                            }
                            if (mg.addMachineId3 != null && mg.addMachineId3 != "")
                            {
                                if (mg.addMachineId3.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.addMachineId3).Count() == 0)
                                    {
                                        MC mx3 = new MC();
                                        //mx3.MCType = mg.MCType;
                                        mx3.MCType = mg.addMachineId3.Substring(0, 3);
                                        mx3.MCId = mg.addMachineId3;
                                        MCLst.Add(mx3);
                                    }
                                }
                            }

                        }

                        if (mg.MachineId != null)
                        {
                            if (mg.MCType.TrimEnd().IndexOf("HD") >= 0 && mg.MachineId.IndexOf("NA") >= 0)
                            {
                                if (MCLst.Where(P => P.MCType == mg.MCType && P.MCId == mg.MachineId).Count() == 0)
                                {
                                    MC mx4 = new MC();
                                    mx4.MCType = mg.MCType;
                                    mx4.MCId = mg.MachineId;
                                    MCLst.Add(mx4);
                                }

                            }
                        }

                        #endregion
                    }


                    var Grpwc = from p in MCLst group p by p.MCType into g select new { g.Key, Num = g.Count() };
                    foreach (var wc in Grpwc)
                    {
                        TypeList wx = new TypeList();
                        wx.Type = wc.Key;
                        wx.Num = wc.Num;
                        TPLst.Add(wx);
                    }
                    return TPLst;
                }
                return null;

            }
        }
        public decimal? BestSAH
        {
            get
            {
                return this.Matchings.Count > 0 ? this.Matchings[0].BestSAH : 0;
            }
        }
        public Boolean OneWeekFlag
        {
            get
            {
                if ((this.IsConfirmed ?? false) && this.Flag.IndexOf("s") > 0)
                {
                    return false;
                }

                if (this.YNConfirme)
                {
                    return false;
                }

                return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) >= 0 && Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) <= 7 ? true : false;
            }
        }
        public Boolean TwoWeekFlag
        {
            get
            {
                if ((this.IsConfirmed ?? false) && this.Flag.IndexOf("s") > 0)
                {
                    return false;
                }
                return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) >= 8 && Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) <= 14 ? true : false;
            }
        }

        public Boolean ThreeWeekFlag
        {
            get
            {
                if ((this.IsConfirmed ?? false) && this.Flag.IndexOf("s") > 0)
                {
                    return false;
                }
                return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) >= 15 && Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) <= 21 ? true : false;
            }
        }
        //public long Days
        //{
        //    get
        //    {
        //        return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1);
        //    }
        //}
        public Boolean YNHaveLB5Data
        {
            get
            {
                //return this.PoolInfos.Count;
                DateTime StartDate = Convert.ToDateTime(this.StartTime != null ? this.StartTime : null);
                DateTime EndDate = Convert.ToDateTime(this.EndTime != null ? this.EndTime : null);
                if (this.PoolInfos.Count > 0)
                {
                    var MinDate = this.PoolInfos.Select(S => S.Date).Min();
                    var MaxDate = this.PoolInfos.Select(S => S.Date).Max();
                    return MinDate > StartDate || MaxDate < EndDate;
                }
                else
                { return true; }
                //return false;
            }
        }

        /// <summary>
        /// 新增第一条Pool信息，由David加入 2018-07-27
        /// </summary>
        public void AddFirstPoolInfo()
        {
            if (this.PoolInfos.Count() > 0) return;

            //生成第一条Pool信息
            PoolInfo pi = new PoolInfo();
            pi.Factory = this.Factory;
            pi.j_NO = this.j_NO;
            pi.J2_job = this.J2_job;
            pi.Rwo = this.Rwo;
            pi.Qn = this.Qn;
            pi.Bcolor = this.Bcolor;
            pi.LineCode = this.LineCode;
            pi.Date = this.StartDateTime;
            pi.OTN = pi.Date.ToString("HH:mm");
            pi.IsConfirmed = false;
            pi.CurrentDataContext = this.CurrentDataContext;
            this.PoolInfos.Add(pi);

            //从LB4中取得工序、人车资料到LB5
            foreach (Matching Mg in this.Matchings)
            {
                Lb5Matching Lg = new Lb5Matching();
                Lg.Factory = Mg.Factory;
                Lg.j_NO = Mg.j_NO;
                Lg.J2_job = Mg.J2_job;
                Lg.Rwo = Mg.Rwo;
                Lg.Qn = Mg.Qn;
                Lg.Bcolor = Mg.Bcolor;
                Lg.LineCode = Mg.LineCode;
                Lg.Date = pi.Date;
                Lg.OTN = pi.OTN;
                Lg.WPSN = Mg.WPSN;
                Lg.OperationSN = Mg.OperationSN;
                Lg.OperationGroup = Mg.OperationGroup;
                Lg.OperationCode = Mg.OperationCode;
                Lg.OperationName = Mg.OperationName;
                Lg.MCType = Mg.MCType;
                Lg.GSD_SAH = Mg.GSD_SAH;
                Lg.BestSAH = Mg.BestSAH;
                Lg.BestMTM = Mg.BestMTM;
                Lg.WorkforceNum = Mg.WorkforceNum;
                Lg.Rpm = Mg.Rpm;
                Lg.WorkerName = Mg.WorkerName;
                Lg.WorkerId = Mg.WorkerId;
                Lg.WorkStyle = Mg.WorkStyle;
                Lg.MachineId = Mg.MachineId;
                Lg.addworker1 = Mg.addworker1;
                Lg.addworkerId1 = Mg.addworkerId1;
                Lg.addWorkStyle1 = Mg.addWorkStyle1;
                Lg.addMachineId1 = Mg.addMachineId1;
                Lg.addworker2 = Mg.addworker2;
                Lg.addworkerId2 = Mg.addworkerId2;
                Lg.addWorkStyle2 = Mg.addWorkStyle2;
                Lg.addMachineId2 = Mg.addMachineId2;
                Lg.addworker3 = Mg.addworker3;
                Lg.addworkerId3 = Mg.addworkerId3;
                Lg.addWorkStyle3 = Mg.addWorkStyle3;
                Lg.addMachineId3 = Mg.addMachineId3;
                Lg.Rpm0 = Mg.Rpm0;
                Lg.addRpm1 = Mg.addRpm1;
                Lg.addRpm2 = Mg.addRpm2;
                Lg.addRpm3 = Mg.addRpm3;
                Lg.Bcolor = Mg.Bcolor;
                Lg.mc = Mg.mc;
                Lg.JFlag = Mg.JFlag;
                Lg.FAE = Mg.FAE;

                Lg.Move_LB3 = Mg.Move;
                Lg.CWorkSN_LB3 = Mg.CWorkSN;
                Lg.BN_Seq_LB3 = Mg.BN_Seq_LB3;
                Lg.CWorkSN_LB3 = Mg.CWorkSN_LB3;
                Lg.JWorkSN_LB3 = Mg.JWorkSN_LB3;
                Lg.WFCode_LB3 = Mg.WFCode_LB3;
                Lg.StaitonCount_LB3 = Mg.StaitonCount_LB3;
                Lg.GZW_LB3 = Mg.GZW_LB3;
                Lg.WKStaitonSeq_LB3 = Mg.WKStaitonSeq_LB3;

                Lg.Move = Mg.Move;
                Lg.Mtm_Suggest = Mg.Mtm_Suggest;
                Lg.CurrentDataContext = this.CurrentDataContext;
                pi.Lb5Matchings.Add(Lg);
            }

            (this.CurrentDataContext as RAPLQDataContext).SubmitChanges();
        }

        /// <summary>
        /// 复制最新一条Pool信息作为一条新的Pool信息，同时复制LB5的资料
        /// </summary>
        public void CopyPreviousPoolInfo()
        {
            PoolInfo PreviousPI = this.PoolInfos.OrderByDescending(p => p.Date).FirstOrDefault();
            if (PreviousPI == null) return;

            PoolInfo pi = new PoolInfo();
            pi.Factory = PreviousPI.Factory;
            pi.j_NO = PreviousPI.j_NO;
            pi.J2_job = PreviousPI.J2_job;
            pi.Rwo = PreviousPI.Rwo;
            pi.Qn = PreviousPI.Qn;
            pi.Bcolor = PreviousPI.Bcolor;
            pi.LineCode = PreviousPI.LineCode;
            pi.Date = DateTime.Now;
            pi.OTN = pi.Date.ToString("HH:mm");
            pi.IsConfirmed = false;
            this.PoolInfos.Add(pi);


            //从LB4中取得工序、人车资料到LB5
            foreach (Lb5Matching Mg in PreviousPI.Lb5Matchings)
            {
                Lb5Matching Lg = new Lb5Matching()
                {
                    Factory = Mg.Factory,
                    j_NO = Mg.j_NO,
                    J2_job = Mg.J2_job,
                    Rwo = Mg.Rwo,
                    Qn = Mg.Qn,
                    Bcolor = Mg.Bcolor,
                    LineCode = Mg.LineCode,
                    Date = pi.Date,
                    OTN = pi.OTN,
                    WPSN = Mg.WPSN,
                    OperationSN = Mg.OperationSN,
                    OperationGroup = Mg.OperationGroup,
                    OperationCode = Mg.OperationCode,
                    OperationName = Mg.OperationName,
                    MCType = Mg.MCType,
                    GSD_SAH = Mg.GSD_SAH,
                    BestSAH = Mg.BestSAH,
                    BestMTM = Mg.BestMTM,
                    WorkforceNum = Mg.WorkforceNum,
                    Rpm = Mg.Rpm,
                    WorkerName = Mg.WorkerName,
                    WorkerId = Mg.WorkerId,
                    WorkStyle = Mg.WorkStyle,
                    MachineId = Mg.MachineId,
                    addworker1 = Mg.addworker1,
                    addworkerId1 = Mg.addworkerId1,
                    addWorkStyle1 = Mg.addWorkStyle1,
                    addMachineId1 = Mg.addMachineId1,
                    addworker2 = Mg.addworker2,
                    addworkerId2 = Mg.addworkerId2,
                    addWorkStyle2 = Mg.addWorkStyle2,
                    addMachineId2 = Mg.addMachineId2,
                    addworker3 = Mg.addworker3,
                    addworkerId3 = Mg.addworkerId3,
                    addWorkStyle3 = Mg.addWorkStyle3,
                    addMachineId3 = Mg.addMachineId3,
                    Rpm0 = Mg.Rpm0,
                    addRpm1 = Mg.addRpm1,
                    addRpm2 = Mg.addRpm2,
                    addRpm3 = Mg.addRpm3,
                    mc = Mg.mc,
                    JFlag = Mg.JFlag,
                    FAE = Mg.FAE,

                    Move_LB3 = Mg.Move,
                    BN_Seq_LB3 = Mg.BN_Seq_LB3,
                    CWorkSN_LB3 = Mg.CWorkSN_LB3,
                    JWorkSN_LB3 = Mg.JWorkSN_LB3,
                    WFCode_LB3 = Mg.WFCode_LB3,
                    StaitonCount_LB3 = Mg.StaitonCount_LB3,
                    GZW_LB3 = Mg.GZW_LB3,
                    WKStaitonSeq_LB3 = Mg.WKStaitonSeq_LB3,

                    Move = Mg.Move,
                    Mtm_Suggest = Mg.Mtm_Suggest
                };
                pi.Lb5Matchings.Add(Lg);
            }
            (this.CurrentDataContext as RAPLQDataContext).SubmitChanges();
        }

        public void CheckQNState()
        {
            DataTable InterBaseTb = DBAccess.GetInterBaseTable(string.Format(
@"SELECT  FLAG3 FROM TBLSHEDULE 
 WHERE (PLINE =''{0}'') AND (CSTYLE =''{1}'') AND (TPLANT = ''{2}'') AND (RWO = ''{3}'') AND (FCCS = ''{4}'') AND 
       (J_NO = ''{5}'') AND (J2_JOB = ''{6}'') and (ACOL=''{7}'') and CFKSRQ is not null",
        this.LineCode.TrimEnd(), this.CustStyleCode.TrimEnd(), this.Factory.TrimEnd(), this.Rwo.TrimEnd(), this.Qn.TrimEnd(),
        this.j_NO.TrimEnd(), this.J2_job.TrimEnd(), this.Bcolor.TrimEnd()));

            string QNs, FlagS;
            if (InterBaseTb.Rows.Count > 0)
            {
                string RAP_flag = this.Flag != null ? this.Flag.TrimEnd() : string.Empty;
                string IB_flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
                if (RAP_flag != IB_flag)
                {
                    this.Flag = IB_flag;
                }
            }
            else
            {
                RAPLQDataContext CurDataCx = this.CurrentDataContext as RAPLQDataContext;

                DataTable NOQN_IBTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,ACOL,CWO FROM TBLSHEDULE WHERE (PLINE = ''{0}'') AND (SEQ ={1}) and CFKSRQ is not null", this.LineCode.TrimEnd(), this.Seq.ToString()));
                if (NOQN_IBTb.Rows.Count > 0)
                {
                    QNs = NOQN_IBTb.Rows[0]["fccs"].ToString().TrimEnd();
                    if (CurDataCx.WPMasters.Where(P => P.LineCode == this.LineCode && P.Seq == this.Seq && P.Qn.Trim() == QNs).Count() > 0)
                    {
                        CurDataCx.ExecuteCommand(string.Format(" Exec LB4_Del_RwoQNSTDate '{0}','{1}','{2}','{3}','{4}','{5}'",
                            this.LineCode.Trim(), this.Seq, this.Qn, this.J2_job.Trim(), this.Rwo.Trim(), this.Bcolor.Trim()));
                    }
                    else
                    {
                        //CurWPmaster.Qn = QNs;
                        FlagS = NOQN_IBTb.Rows[0]["flag3"].ToString().TrimEnd();
                        CurDataCx.ExecuteCommand(string.Format(" Exec UPD_QN '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}'",
                            this.Rwo, QNs, this.Seq.ToString(),
                            Convert.ToDateTime(this.StartTime).ToString("yyyy/MM/dd"),
                            Convert.ToDateTime(this.EndTime).ToString("yyyy/MM/dd"),
                            FlagS, this.Factory, this.LineCode, this.j_NO, this.J2_job, this.Rwo, this.Qn, this.Bcolor));
                    }

                }
            }
        }
    }

    partial class BaseCode : BaseEntity
    {
        public static RAPLQDataContext rcontext;
        public string TypeRemark { get; set; }


        //public string HWGroupCodeOfHWType
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

        //        BaseCode obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McGroup" && p.Lang == this.Description);
        //        return obj == null ? "- -" : obj.Lang;
        //    }
        //}

        public string HWCategoryCodeOfHWType
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

                BaseCode obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McGroup" && p.Lang == this.Description);
                return obj == null ? "- -" : obj.HSCode;
            }
        }

        public string HWCategoryDescriptionLocal
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

                BaseCode obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McCategory" && p.Lang == this.HSCode);
                return obj == null ? "- -" : obj.Description;
            }
        }

        public string HWCategoryDescriptionEn
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

                BaseCode obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McCategory" && p.Lang == this.HSCode);
                return obj == null ? "- -" : obj.Name;
            }
        }


        public string HWCostDescriptionLocal
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

                BaseCode obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "MCPart" && p.Code == this.HSCode);
                return obj == null ? "- -" : obj.Description;
            }
        }
        public string HWCostDescriptionEn
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

                BaseCode obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "MCPart" && p.Code == this.HSCode);
                return obj == null ? "- -" : obj.Name;
            }
        }

        //Rec List对应的部门信息，由David加入 2020-02-22
        public string RECDepartment
        {
            get
            {
                if (this.Type != "cbbRecrole" || string.IsNullOrEmpty(this.ExtraField1) || this.ExtraField1 == "- -") //ExtraField1字段保存DepartalSort.RowID
                {
                    return "- -";
                }
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }

                string Str = "";
                foreach (var RowID in this.ExtraField1.Split(','))
                {
                    DepartalSort Dept = (this.CurrentDataContext as RAPLQDataContext).DepartalSorts.FirstOrDefault(p => p.RowID == Convert.ToInt32(RowID));
                    if (Dept != null) Str += Dept.RECDepartmentShow + " & ";
                }

                return Str.TrimEnd('&', ' ');
            }
        }

        ////Rec List对应的部门，由David加入 2020-02-25
        //public string RECDiffDept
        //{
        //    get
        //    {
        //        if (this.Type != "cbbRecrole" || string.IsNullOrEmpty(this.ExtraField1) || this.ExtraField1 == "- -") //ExtraField1字段保存DepartalSort.RowID
        //        {
        //            return "N";
        //        }

        //        return this.ExtraField1.Split(',').Count() > 1 ? "Y" : "N";
        //    }
        //}


        //public string Province
        //{
        //    get
        //    {
        //        if (rcontext == null) rcontext = ContextBuilder.CreateContext<RAPLQDataContext>();
        //        string lanid = PH.Platform.Common.SysParamHelper.Instance.LangID.ToLower();
        //        string ss = "--";
        //        if (this.Type != null &&
        //            (this.Type.ToLower() == "area" || this.Type.ToLower() == "region" || this.Type.ToLower() == "country"))
        //        {
        //            BaseCode bd = rcontext.BaseCodes.Where(p => p.Code == this.ParentCode).FirstOrDefault();

        //            if (bd != null)
        //            {
        //                switch (lanid)
        //                {
        //                    case "en":
        //                        ss = bd.Name;
        //                        break;
        //                    case "tw":
        //                        ss = bd.Description;
        //                        break;
        //                    case "bd":
        //                        ss = bd.NameBd;
        //                        break;
        //                    case "cn":
        //                        ss = bd.Description;
        //                        break;
        //                }
        //            }

        //            if (string.IsNullOrEmpty(ss))
        //                ss = "--";
        //        }
        //        return ss;
        //    }

        //}

        //public string Country
        //{
        //    get
        //    {
        //        if (rcontext == null) rcontext = ContextBuilder.CreateContext<RAPLQDataContext>();
        //        string lanid = PH.Platform.Common.SysParamHelper.Instance.LangID.ToLower();
        //        string ss = "--";
        //        if (this.Type != null &&
        //             (this.Type.ToLower() == "area" || this.Type.ToLower() == "region" || this.Type.ToLower() == "country"))
        //        {
        //            BaseCode bd = rcontext.BaseCodes.Where(p => p.Code == this.ParentCode && p.Type.ToLower() == "region").FirstOrDefault();

        //            if (bd != null)
        //            {
        //                //get country
        //                BaseCode bd1 = rcontext.BaseCodes.Where(p => p.Code == bd.ParentCode).FirstOrDefault();
        //                if (bd1 == null)
        //                    return "--";

        //                switch (lanid)
        //                {
        //                    case "en":
        //                        ss = bd1.Name;
        //                        break;
        //                    case "tw":
        //                        ss = bd1.Description;
        //                        break;
        //                    case "bd":
        //                        ss = bd1.NameBd;
        //                        break;
        //                    case "cn":
        //                        ss = bd1.Description;
        //                        break;
        //                }
        //            }

        //            if (string.IsNullOrEmpty(ss))
        //                ss = "--";
        //        }
        //        return ss;
        //    }

        //}


        public string CurName
        {
            get
            {
                string ss = "--";
                string lanid = PH.Platform.Common.SysParamHelper.Instance.LangID.ToLower();
                switch (lanid)
                {
                    case "en":
                        ss = this.Name;
                        break;
                    case "tw":
                        ss = this.Description;
                        break;
                    case "bd":
                        ss = this.NameBd;
                        break;
                    case "cn":
                        ss = this.Description;
                        break;
                }
                return ss;
            }
        }


    }
    partial class McBrandImg : BaseEntity
    {
    }
    partial class MachineImg : BaseEntity
    {

    }
    partial class WorkForceImg : BaseEntity
    {
    }

    partial class OpsPermitSign : BaseEntity
    {

    }

    partial class Matching : BaseEntity
    {


        public string LB4WFType
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string _wftype = string.Empty;
                    _wftype += !string.IsNullOrEmpty(this.WorkStyle) ? this.WorkStyle : string.Empty;
                    _wftype += !string.IsNullOrEmpty(this.addWorkStyle1) ? "\r\n" + this.addWorkStyle1 : string.Empty;
                    _wftype += !string.IsNullOrEmpty(this.addWorkStyle2) ? "\r\n" + this.addWorkStyle2 : string.Empty;
                    _wftype += !string.IsNullOrEmpty(this.addWorkStyle3) ? "\r\n" + this.addWorkStyle3 : string.Empty;
                    return _wftype;
                }
                return string.Empty;
            }
        }
        public string LB4MCID
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string _mcid = string.Empty;
                    _mcid += !string.IsNullOrEmpty(this.MachineId) ? this.MachineId : string.Empty;
                    _mcid += !string.IsNullOrEmpty(this.addMachineId1) ? "\r\n" + this.addMachineId1 : string.Empty;
                    _mcid += !string.IsNullOrEmpty(this.addMachineId2) ? "\r\n" + this.addMachineId2 : string.Empty;
                    _mcid += !string.IsNullOrEmpty(this.addMachineId3) ? "\r\n" + this.addMachineId3 : string.Empty;
                    return _mcid;
                }
                return string.Empty;
            }
        }
        public string LB4WFID
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string _wfid = string.Empty;
                    _wfid += !string.IsNullOrEmpty(this.WorkerId) ? this.WorkerId : string.Empty;
                    _wfid += !string.IsNullOrEmpty(this.addworkerId1) ? "\r\n" + this.addworkerId1 : string.Empty;
                    _wfid += !string.IsNullOrEmpty(this.addworkerId2) ? "\r\n" + this.addworkerId2 : string.Empty;
                    _wfid += !string.IsNullOrEmpty(this.addworkerId3) ? "\r\n" + this.addworkerId3 : string.Empty;
                    return _wfid;
                }
                return string.Empty;
            }
        }
        public string LB4WFName
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string _wfname = string.Empty;
                    _wfname += !string.IsNullOrEmpty(this.WorkerName) ? this.WorkerName : string.Empty;
                    _wfname += !string.IsNullOrEmpty(this.addworker1) ? "\r\n" + this.addworker1 : string.Empty;
                    _wfname += !string.IsNullOrEmpty(this.addworker2) ? "\r\n" + this.addworker2 : string.Empty;
                    _wfname += !string.IsNullOrEmpty(this.addworker3) ? "\r\n" + this.addworker3 : string.Empty;
                    return _wfname;
                }
                return string.Empty;
            }
        }

        public string LB5WFType
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string Result = string.Empty;
                    foreach (PoolInfo PI in this.WPMaster.PoolInfos)
                    {

                        Lb5Matching LB5 = PI.Lb5Matchings.Where(S => S.WPSN == this.WPSN).FirstOrDefault();
                        if (LB5 != null)
                        {

                            string _wftype = string.Empty;
                            _wftype += !string.IsNullOrEmpty(LB5.WorkStyle) ? LB5.WorkStyle : string.Empty;
                            _wftype += !string.IsNullOrEmpty(LB5.addWorkStyle1) ? "\r\n" + LB5.addWorkStyle1 : string.Empty;
                            _wftype += !string.IsNullOrEmpty(LB5.addWorkStyle2) ? "\r\n" + LB5.addWorkStyle2 : string.Empty;
                            _wftype += !string.IsNullOrEmpty(LB5.addWorkStyle3) ? "\r\n" + LB5.addWorkStyle3 : string.Empty;
                            if (Result != _wftype)
                            {
                                Result = _wftype;
                            }

                        }
                    }
                    return Result;
                }
                return string.Empty;

            }
        }
        public string LB5MCID
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string Result = string.Empty;
                    foreach (PoolInfo PI in this.WPMaster.PoolInfos)
                    {

                        Lb5Matching LB5 = PI.Lb5Matchings.Where(S => S.WPSN == this.WPSN).FirstOrDefault();
                        if (LB5 != null)
                        {

                            string _mcid = string.Empty;
                            _mcid += !string.IsNullOrEmpty(LB5.MachineId) ? LB5.MachineId : string.Empty;
                            _mcid += !string.IsNullOrEmpty(LB5.addMachineId1) ? "\r\n" + LB5.addMachineId1 : string.Empty;
                            _mcid += !string.IsNullOrEmpty(LB5.addMachineId2) ? "\r\n" + LB5.addMachineId2 : string.Empty;
                            _mcid += !string.IsNullOrEmpty(LB5.addMachineId3) ? "\r\n" + LB5.addMachineId3 : string.Empty;
                            if (Result != _mcid)
                            {
                                Result = _mcid;
                            }

                        }
                    }
                    return Result;
                }
                return string.Empty;

            }
        }

        public string LB5WFID
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string Result = string.Empty;
                    foreach (PoolInfo PI in this.WPMaster.PoolInfos)
                    {

                        Lb5Matching LB5 = PI.Lb5Matchings.Where(S => S.WPSN == this.WPSN).FirstOrDefault();
                        if (LB5 != null)
                        {

                            string _wfid = string.Empty;
                            _wfid += !string.IsNullOrEmpty(LB5.WorkerId) ? LB5.WorkerId : string.Empty;
                            _wfid += !string.IsNullOrEmpty(LB5.addworkerId1) ? "\r\n" + LB5.addworkerId1 : string.Empty;
                            _wfid += !string.IsNullOrEmpty(LB5.addworkerId2) ? "\r\n" + LB5.addworkerId2 : string.Empty;
                            _wfid += !string.IsNullOrEmpty(LB5.addworkerId3) ? "\r\n" + LB5.addworkerId3 : string.Empty;
                            if (Result != _wfid)
                            {
                                Result = _wfid;
                            }

                        }
                    }
                    return Result;
                }
                return string.Empty;

            }
        }

        public string LB5WFName
        {
            get
            {
                if (this.WPMaster.YNRunRpt)
                {
                    string Result = string.Empty;
                    foreach (PoolInfo PI in this.WPMaster.PoolInfos)
                    {

                        Lb5Matching LB5 = PI.Lb5Matchings.Where(S => S.WPSN == this.WPSN).FirstOrDefault();
                        if (LB5 != null)
                        {

                            string _wfname = string.Empty;
                            _wfname += !string.IsNullOrEmpty(LB5.WorkerName) ? LB5.WorkerName : string.Empty;
                            _wfname += !string.IsNullOrEmpty(LB5.addworker1) ? "\r\n" + LB5.addworker1 : string.Empty;
                            _wfname += !string.IsNullOrEmpty(LB5.addworker2) ? "\r\n" + LB5.addworker2 : string.Empty;
                            _wfname += !string.IsNullOrEmpty(LB5.addworker3) ? "\r\n" + LB5.addworker3 : string.Empty;
                            if (Result != _wfname)
                            {
                                Result = _wfname;
                            }

                        }
                    }
                    return Result;
                }
                return string.Empty;

            }
        }

        public string Disp_FAE
        {

            get
            {

                return string.IsNullOrEmpty(this.FAE) ? "F" : ((this.FAE != "A" && this.FAE != "E") ? "F" : this.FAE);
            }
        }

        public int DidTime_InFac
        {
            get
            {

                int icount = 0;

                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    icount = rdc.GetDidTime(this.Factory, this.OperationCode).GetValueOrDefault();
                }

                return icount;
            }
        }


        public int DidTime_ByWf
        {
            get
            {

                int icount = 0;

                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    icount = rdc.GetCount(this.WorkerId, this.OperationCode).GetValueOrDefault();
                }

                return icount;
            }
        }

        public decimal Past_SAH
        {
            get
            {
                if (this.Past_MTTM == 0)
                    return 0;
                else
                    return decimal.Round(this.GSD_SAH.GetValueOrDefault() * 100 / this.Past_MTTM, 4);
            }
        }


        public decimal Past_MTTM
        {
            get
            {
                decimal _mtm = 0;
                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    _mtm = rdc.GetPastMtm(this.WorkerId, this.OperationCode).GetValueOrDefault();
                }
                return _mtm;
            }
        }

        public decimal Sugg_SAH
        {
            get
            {

                if (this.Mtm_Suggest.GetValueOrDefault() == 0)
                    return 0;
                else
                    return decimal.Round(this.GSD_SAH.GetValueOrDefault() * 100 / this.Mtm_Suggest.GetValueOrDefault(), 4);

            }
        }

        public decimal? NoneCJ_LB3
        {
            get
            {

                if (this.CWorkSN_LB3.GetValueOrDefault() == 0 && this.JWorkSN_LB3.GetValueOrDefault() == 0)
                    return this.GSD_SAH.GetValueOrDefault();
                else
                    return null;


            }
        }

        public decimal? NoneCJ
        {
            get
            {

                if (this.CWorkSN.GetValueOrDefault() == 0 && this.JWorkSN.GetValueOrDefault() == 0)
                    return this.GSD_SAH.GetValueOrDefault();
                else
                    return null;
            }
        }

        public bool IsFloater_LB3
        {
            get { return string.IsNullOrEmpty(this.WFCode_LB3) ? false : this.WFCode_LB3.Equals("Floater"); }

        }


        public decimal HeadCount
        {
            get;
            set;
        }

        public decimal? JWorkSN_LB3_Disp { get; set; }
        public decimal? JWorkSN_Disp { get; set; }

        public int SortIndex { get; set; }


    }

    partial class QuatationInfo : BaseEntity
    {

        public string TypeDesc
        {
            get
            {

                BaseCode _bc = RapHelper.RapCtx.BaseCodes.Where(p => p.Type == "METHODTYPE" && p.Code == this.TypeCode).FirstOrDefault();
                if (_bc == null)
                    return "";
                else
                    return _bc.Name;

            }

        }

        public int TargetQty
        {
            get
            {

                // return RapHelper.RapCtx.QuatationInfos.Where(p => p.TypeCode == this.TypeCode).Count();
                return RapHelper.RapCtx.Machines.Where(p => p.Factory == this.Factory && p.Type1 == this.TypeCode).Count();
            }
        }

        public PH.LWPM.BO.Vendor VendorObject
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
            }
        }

        public string VendorNameEN
        {
            get
            {
                return this.VendorObject == null ? "" : this.VendorObject.Name_EN;
            }
        }

        public string VendorNameTW
        {
            get
            {
                return this.VendorObject == null ? "" : this.VendorObject.Name_TW;
            }
        }

        public string Beneficiary
        {
            get
            {
                return this.VendorObject == null ? "" : this.VendorObject.Beneficiary;
            }
        }


        public PH.LWPM.BO.BaseCode MachineTypeObject
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.TypeCode);
            }
        }

        public string HSCode
        {
            get
            {
                return this.MachineTypeObject == null ? "" : this.MachineTypeObject.HSCode;
            }
        }

        public string MachineTypeNameTW
        {
            get
            {
                return this.MachineTypeObject == null ? "" : this.MachineTypeObject.Name;
            }
        }

        public string MachineTypeNameEN
        {
            get
            {
                return this.MachineTypeObject == null ? "" : this.MachineTypeObject.NameEN;
            }
        }


    }

    partial class OpSkill : BaseEntity
    {

    }

    //public class SelectMachine : Machine
    //{
    //    public string SelectMachine_WsSort { get; set; }
    //}

    partial class Machine : BaseEntity
    {

        public string IsDeploymentShow
        {
            get
            {
                return (this.IsDeployment ?? false) ? "Y" : "N";
            }
        }


        #region 增加用于選車排序用的字段 由David中入 2019-01-17

        public string SelectMachine_Line { get; set; }
        public string SelectMachine_Ws { get; set; }

        public string SelectMachine_Where { get; set; }

        public string SelectMachine_WsSort
        {
            get
            {
                SelectMachine_Where = this.Line;

                if (this.MachineWhere == null)
                {
                    this.MachineWhere = "";
                }

                if (this.Line == this.SelectMachine_Line)
                {
                    return string.Format("1) Appointed AL ({0})", this.SelectMachine_Line);
                }
                else if (this.Location == this.SelectMachine_Ws)
                {
                    if (this.Line.StartsWith("F"))
                    {
                        SelectMachine_Where = "F";
                    }
                    else if (this.Line.StartsWith("E"))
                    {
                        SelectMachine_Where = "E";
                    }
                    else
                    {
                        SelectMachine_Where = "AL";
                    }

                    return string.Format("2) Same Stitching Ws ({0})", this.SelectMachine_Ws);
                }
                else if (this.Line.StartsWith("TSS"))
                {
                    return "3) TSS";
                }
                else if (this.Line.StartsWith("M&R Ws"))
                {
                    return "4) M&R Ws";
                }
                else if (this.Line.StartsWith("M/C Store House"))
                {
                    return "5) M/C Store House";
                }
                else
                {
                    if (this.Line.StartsWith("PP"))
                    {
                        SelectMachine_Where = this.Line;
                    }
                    else
                    {
                        SelectMachine_Where = this.Location;
                    }
                    return "6) Others Ws";
                }
                //else if (this.Line.StartsWith("PP - StrapMaking/2D"))

                //return "";
            }
        }

        #endregion



        public string HWCategoryCode
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                BaseCode Obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McGroup" && p.Lang == this.MachineClass);
                return Obj == null ? "" : Obj.HSCode;
            }
        }


        //由David中加入 2018-08-23
        public bool IsDeadStockRoom
        {
            get
            {
                return this.Class == "Mc-Dead Stock Room";
            }
            set
            {
                this.Class = value ? "Mc-Dead Stock Room" : "";
            }
        }

        public decimal UYearN
        {
            get
            {
                if (this.Bdt != null)
                    return Convert.ToDecimal((Convert.ToDecimal(Microsoft.VisualBasic.DateAndTime.DateDiff("m", this.Bdt.Value, DateTime.Now.Date, 0, 0)) / Convert.ToDecimal(12)).ToString("0.0"));
                else

                    return 0;

            }
        }

        public bool LB4YNSel { get; set; }
        public string strIsRelated
        {
            get
            {
                return RAPLQDataContext.GetDisplay("GSD_WORKFORCE", "GW001", this.IsRelated);

            }
        }


        public int QuaCount //報價次數:同一供應商對同一Type報多次只算一次
        {
            get
            {

                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext ctx = this.CurrentDataContext as RAPLQDataContext;
                    int j = ctx.QuatationInfos.Where(p => p.TypeCode == this.Type1).Count();
                    return j;
                }
                else return 0;
            }
        }

        public int Disp_VenderNumber //
        {
            get
            {

                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext ctx = this.CurrentDataContext as RAPLQDataContext;
                    var TA = ctx.QuatationInfos.Where(p => p.TypeCode == this.Type1);
                    var qs = from t in TA
                             group t by t.Vendor into g
                             select new
                             {
                                 name = g.Key,
                                 cnt = g.Count(),
                                 // scnt = (from t1 in g select t1.status).Distinct().Count()
                             };
                    int j = qs.Count();

                    return j;
                }
                else return 0;
            }
        }

        public decimal MRatio
        {
            get
            {

                if (this.KVA.HasValue && KVA > 0 && KW.HasValue && KW > 0)
                {
                    return Math.Round(KW.GetValueOrDefault() / KVA.GetValueOrDefault(), 2);
                }
                else
                    return 0;
            }

        }

        public string Engine_Disp
        {
            get
            {
                return this.IsEngine.GetValueOrDefault() ? "Y" : "N";
            }
        }

        public string HSCode
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.Type1).HSCode;
            }
        }

        public string Beneficiary
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Name_TW == this.Vndr).Beneficiary;
            }

        }
    }
    partial class McBrand : BaseEntity
    {
        public string HWCategoryCode
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWTypeCode);
                return obj == null ? "" : obj.HWCategoryCodeOfHWType;
            }
        }

        public string HWGroupCode
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWTypeCode);
                return obj == null ? "" : obj.Description;
            }
        }

        public string HWTypeCodeNameEN
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWTypeCode);
                return obj == null ? "" : obj.NameEN;
            }
        }

        public string HWTypeCodeNameCN
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWTypeCode);
                return obj == null ? "" : obj.Name;
            }
        }
    }
    partial class MedToMcPair : BaseEntity
    {
    }

    partial class WpView : BaseEntity
    {

    }

    partial class Vendor : BaseEntity { }

    partial class PoolInfo : BaseEntity
    {
        public string CustStyleCode
        {
            get
            {
                return this.WPMaster.CustStyleCode != null ? this.WPMaster.CustStyleCode.TrimEnd() : string.Empty;
            }

        }
        public string PHStyleCode
        {
            get
            {
                return this.WPMaster.PHStyleCode != null ? this.WPMaster.PHStyleCode.TrimEnd() : string.Empty;
            }

        }
        public string Woc
        {
            get
            {
                return this.WPMaster.Woc != null ? this.WPMaster.Woc.TrimEnd() : string.Empty;
            }

        }
        public int? Version
        {
            get
            {
                return this.WPMaster.Version;
            }

        }
        public DateTime? StartTime
        {
            get
            {
                return this.WPMaster.StartTime;
            }

        }
        public DateTime? EndTime
        {
            get
            {
                return this.WPMaster.EndTime;
            }

        }
        public bool YNRunRpt { get; set; }
        public List<TypeList> WFs
        {
            get
            {
                if (YNRunRpt)
                {
                    List<WF> WFLst = new List<WF>();
                    List<TypeList> WCLst = new List<TypeList>();
                    foreach (Lb5Matching mg in this.Lb5Matchings)
                    {
                        #region WF

                        if (WFLst.Where(P => P.WFid == mg.WorkerId).Count() == 0)
                        {
                            WF fx = new WF();
                            fx.WFType = mg.WorkStyle;
                            fx.WFid = mg.WorkerId;
                            WFLst.Add(fx);
                        }



                        if (mg.addworkerId1 != null && mg.addworkerId1 != "")
                        {

                            if (WFLst.Where(P => P.WFid == mg.addworkerId1).Count() == 0)
                            {
                                WF fx1 = new WF();
                                fx1.WFType = mg.addWorkStyle1;
                                fx1.WFid = mg.addworkerId1;
                                WFLst.Add(fx1);
                            }
                        }
                        if (mg.addworkerId2 != null && mg.addworkerId2 != "")
                        {

                            if (WFLst.Where(P => P.WFid == mg.addworkerId2).Count() == 0)
                            {
                                WF fx2 = new WF();
                                fx2.WFType = mg.addWorkStyle2;
                                fx2.WFid = mg.addworkerId2;
                                WFLst.Add(fx2);
                            }
                        }
                        if (mg.addworkerId3 != null && mg.addworkerId3 != "")
                        {

                            if (WFLst.Where(P => P.WFid == mg.addworkerId3).Count() == 0)
                            {
                                WF fx3 = new WF();
                                fx3.WFType = mg.addWorkStyle3;
                                fx3.WFid = mg.addworkerId3;
                                WFLst.Add(fx3);
                            }
                        }
                        #endregion

                    }
                    var Grpwf = from p in WFLst group p by p.WFType into g select new { g.Key, Num = g.Count() };
                    foreach (var wc in Grpwf)
                    {
                        TypeList wx = new TypeList();
                        wx.Type = wc.Key;
                        wx.Num = wc.Num;
                        WCLst.Add(wx);
                    }
                    return WCLst;
                }
                return null;

            }
        }

        public List<TypeList> MCs
        {
            get
            {
                if (YNRunRpt)
                {

                    List<MC> MCLst = new List<MC>();
                    List<TypeList> TPLst = new List<TypeList>();
                    foreach (Lb5Matching mg in this.Lb5Matchings)
                    {

                        #region MC
                        if (mg.MCType.TrimEnd().IndexOf("HD") < 0)
                        {
                            if (!string.IsNullOrEmpty(mg.MachineId))
                            {
                                if (mg.MachineId.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.MachineId).Count() == 0)
                                    {
                                        MC mx = new MC();
                                        //mx.MCType = mg.MCType;
                                        mx.MCType = mg.MachineId.Substring(0, 3);
                                        mx.MCId = mg.MachineId;
                                        MCLst.Add(mx);
                                    }
                                }
                            }

                            //un.MachineId = mg.MachineId != null ? (mg.MachineId.TrimEnd().IndexOf("NA") > 0 ? "NA" : mg.MachineId) : "NA";

                            if (!string.IsNullOrEmpty(mg.addMachineId1))
                            {
                                if (mg.addMachineId1.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.addMachineId1).Count() == 0)
                                    {
                                        MC mx1 = new MC();
                                        //mx1.MCType = mg.MCType;
                                        mx1.MCType = mg.addMachineId1.Substring(0, 3);
                                        mx1.MCId = mg.addMachineId1;
                                        MCLst.Add(mx1);
                                    }
                                }
                            }
                            if (!string.IsNullOrEmpty(mg.addMachineId2))
                            {
                                if (mg.addMachineId2.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.addMachineId2).Count() == 0)
                                    {
                                        MC mx2 = new MC();
                                        //mx2.MCType = mg.MCType;
                                        mx2.MCType = mg.addMachineId2.Substring(0, 3);
                                        mx2.MCId = mg.addMachineId2;
                                        MCLst.Add(mx2);
                                    }
                                }
                            }
                            if (!string.IsNullOrEmpty(mg.addMachineId3))
                            {
                                if (mg.addMachineId3.IndexOf("NA") < 0)
                                {
                                    if (MCLst.Where(P => P.MCId == mg.addMachineId3).Count() == 0)
                                    {
                                        MC mx3 = new MC();
                                        //mx3.MCType = mg.MCType;
                                        mx3.MCType = mg.addMachineId3.Substring(0, 3);
                                        mx3.MCId = mg.addMachineId3;
                                        MCLst.Add(mx3);
                                    }
                                }
                            }
                        }
                        if (mg.MachineId != null)
                        {
                            if (mg.MCType.TrimEnd().IndexOf("HD") >= 0 && mg.MachineId.IndexOf("NA") >= 0)
                            {
                                if (MCLst.Where(P => P.MCType == mg.MCType && P.MCId == mg.MachineId).Count() == 0)
                                {
                                    MC mx4 = new MC();
                                    mx4.MCType = mg.MCType;
                                    mx4.MCId = mg.MachineId;
                                    MCLst.Add(mx4);
                                }
                            }
                        }

                        #endregion
                    }

                    var Grpwc = from p in MCLst group p by p.MCType into g select new { g.Key, Num = g.Count() };
                    foreach (var wc in Grpwc)
                    {
                        TypeList wx = new TypeList();
                        wx.Type = wc.Key;
                        wx.Num = wc.Num;
                        TPLst.Add(wx);
                    }
                    return TPLst;
                }
                return null;

            }
        }
    }
    partial class Lb5Matching : BaseEntity
    {

        public string Disp_FAE
        {

            get
            {

                return string.IsNullOrEmpty(this.FAE) ? "F" : ((this.FAE != "A" && this.FAE != "E") ? "F" : this.FAE);
            }
        }

        public int DidTime_InFac
        {
            get
            {

                int icount = 0;

                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    icount = rdc.GetDidTime(this.Factory, this.OperationCode).GetValueOrDefault();
                }

                return icount;
            }
        }

        public int DidTime_ByWf
        {

            get
            {

                int icount = 0;

                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    icount = rdc.GetCount(this.WorkerId, this.OperationCode).GetValueOrDefault();
                }

                return icount;
            }

        }




        public decimal Past_SAH
        {
            get
            {
                if (this.Past_MTTM == 0)
                    return 0;
                else
                    return decimal.Round(this.GSD_SAH.GetValueOrDefault() * 100 / this.Past_MTTM, 4);
            }
        }


        public decimal Past_MTTM
        {
            get
            {
                decimal _mtm = 0;
                if (this.CurrentDataContext != null)
                {
                    RAPLQDataContext rdc = CurrentDataContext as RAPLQDataContext;
                    _mtm = rdc.GetPastMtm(this.WorkerId, this.OperationCode).GetValueOrDefault();
                }
                return _mtm;
            }
        }

        public decimal Sugg_SAH
        {
            get
            {

                if (this.Mtm_Suggest.GetValueOrDefault() == 0)
                    return 0;
                else
                    return decimal.Round(this.GSD_SAH.GetValueOrDefault() * 100 / this.Mtm_Suggest.GetValueOrDefault(), 4);

            }
        }

        public decimal? NoneCJ_LB3
        {
            get
            {

                if (this.CWorkSN_LB3.GetValueOrDefault() == 0 && this.JWorkSN_LB3.GetValueOrDefault() == 0)
                    return this.GSD_SAH.GetValueOrDefault();
                else
                    return null;


            }
        }

        public decimal? NoneCJ
        {
            get
            {

                if (this.CWorkSN.GetValueOrDefault() == 0 && this.JWorkSN.GetValueOrDefault() == 0)
                    return this.GSD_SAH.GetValueOrDefault();
                else
                    return null;
            }
        }

        public bool IsFloater_LB3
        {
            get { return string.IsNullOrEmpty(this.WFCode_LB3) ? false : this.WFCode_LB3.Equals("Floater"); }

        }


        public decimal HeadCount
        {
            get;
            set;
        }


    }

    partial class FactoryLines : BaseEntity
    {

    }


    public partial class Master_data_For_Job_Title : BaseEntity
    {
        //public string IsStaffShowText
        //{
        //    get
        //    {
        //        return this.IsStaff ? "Staff" : "Labor";
        //    }
        //}

        public string IsStaffShowText
        {
            get
            {
                return this.IsStaff ? "Staff" : "Labor";
            }
            set
            {
                this.IsStaff = value == "Staff";
            }
        }


        public BaseCode GradeObject
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }

                return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "Grade" && p.Lang == this.GradeCode);
            }
        }

        public string GradeSeq
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                //}

                //var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "Grade" && p.Lang == this.GradeCode);

                //return obj == null ? "" : obj.SortID;
                var obj = this.GradeObject;
                return obj == null ? "" : obj.SortID;
            }
        }
    }

    public partial class DepartalSort : BaseEntity
    {
        //static RAPLQDataContext rdc = ContextBuilder.CreateContext<RAPLQDataContext>();
        public string Departalment_chn
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }

                if (!string.IsNullOrEmpty(this.Deptmental_EN))
                {
                    BaseCode bc = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "DPTUS" && p.Name == this.Deptmental_EN).FirstOrDefault();
                    if (bc != null)
                        return bc.Description;
                    else
                        return string.Empty;

                }
                else
                    return string.Empty;
            }

        }

        public int AccountCostttlShow
        {
            get
            {
                return PlaceCount_Office + PlaceCount_Fty;
            }
        }

        public string Division_chn
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }

                if (!string.IsNullOrEmpty(this.Division_EN))
                {
                    BaseCode bc = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "Division" && p.Name == this.Division_EN).FirstOrDefault();
                    if (bc != null)
                        return bc.Description;
                    else
                        return string.Empty;

                }
                else
                    return string.Empty;
            }

        }


        public string Section_chn
        {
            get
            {
                if (!string.IsNullOrEmpty(this.Section_EN))
                {
                    if (this.CurrentDataContext == null)
                    {
                        this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                    }

                    BaseCode bc = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "WorkShopNew" && p.Name == this.Section_EN).FirstOrDefault();
                    if (bc != null)
                        return bc.Description;
                    else
                        return string.Empty;

                }
                else
                    return string.Empty;
            }

        }
        public string Team_chn
        {
            get
            {
                if (!string.IsNullOrEmpty(this.Team_EN))
                {
                    if (this.CurrentDataContext == null)
                    {
                        this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                    }

                    BaseCode bc = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "cobWhere_1_Team" || p.Type == "WFWhere_1_team").Where(p => p.Name == this.Team_EN).FirstOrDefault();
                    if (bc != null)
                        return bc.Description;
                    else
                        return string.Empty;

                }
                else
                    return string.Empty;
            }

        }
        public string Class_chn
        {
            get
            {
                if (!string.IsNullOrEmpty(this.Class_EN))
                {
                    if (this.CurrentDataContext == null)
                    {
                        this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                    }

                    BaseCode bc = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "WFWhere_2_class" && p.Name == this.Class_EN).FirstOrDefault();
                    if (bc != null)
                        return bc.Description;
                    else
                        return string.Empty;

                }
                else
                    return string.Empty;
            }

        }

        public int PlaceCount
        {
            get
            {

                int i = 0;
                // SLMAIN/HKOFFICE/SLSALES/GGSALES/GGFACT/RXFACT/CGFACT
                if (this.SLMAIN.GetValueOrDefault())
                    i++;
                if (this.HKOFFICE.GetValueOrDefault())
                    i++;
                if (this.SLSALES.GetValueOrDefault())
                    i++;
                if (this.GGSALES.GetValueOrDefault())
                    i++;
                if (this.GGFACT.GetValueOrDefault())
                    i++;
                if (this.RXFACT.GetValueOrDefault())
                    i++;
                if (this.CGFACT.GetValueOrDefault())
                    i++;
                //if (this.RXSALES.GetValueOrDefault())
                //    i++;
                if (this.CGSALES.GetValueOrDefault())
                    i++;
                //if (this.CCFACT.GetValueOrDefault())
                i++;

                return i;
            }
        }

        //No. of Place分开两栏计算： Off.和Fty, 由David加入 2020-04-18
        public int PlaceCount_Office
        {
            get
            {
                int i = 0;
                if (this.HKOFFICE.GetValueOrDefault()) i++;
                if (this.SLSALES.GetValueOrDefault()) i++;
                if (this.GGSALES.GetValueOrDefault()) i++;
                if (this.CGSALES.GetValueOrDefault()) i++;
                return i;
            }
        }

        public int PlaceCount_Fty
        {
            get
            {
                int i = 0;
                if (this.SLMAIN.GetValueOrDefault()) i++;
                if (this.RXFACT.GetValueOrDefault()) i++;
                //if (this.GGFACT.GetValueOrDefault()) i++;
                if (this.CGFACT.GetValueOrDefault()) i++;
                return i;
            }
        }

        /// <summary>
        /// 计算字段，只有部门就是D，有section就会加S，有Team就会加T，有class就会加C, 多个时自动拼接，由David加入 2020-02-19
        /// </summary>
        public string SetupShow
        {
            get
            {
                try
                {
                    string Str = "DSTC";
                    if (string.IsNullOrEmpty(this.Deptmental_EN) || this.Deptmental_EN.Trim() == "- -") Str = Str.Replace('D', '_');
                    if (string.IsNullOrEmpty(this.Section_EN) || this.Section_EN.Trim() == "- -") Str = Str.Replace('S', '_');
                    if (string.IsNullOrEmpty(this.Team_EN) || this.Team_EN.Trim() == "- -") Str = Str.Replace('T', '_');
                    if (string.IsNullOrEmpty(this.Class_EN) || this.Class_EN.Trim() == "- -") Str = Str.Replace('C', '_');

                    Str = Str.TrimEnd('_');
                    return Str;
                }
                catch
                {
                    return "";
                }
            }
        }

        //Rec List对应的部门信息，由David加入 2020-02-22
        public string RECDepartmentShow
        {
            get
            {
                if (this.RowID <= 0) return "- -";

                string Str = this.SetupShow + " - ";
                if (!string.IsNullOrEmpty(this.Deptmental_EN) && this.Deptmental_EN != "- -") Str += this.Deptmental_EN + ", ";
                if (!string.IsNullOrEmpty(this.Section_EN) && this.Section_EN != "- -") Str += this.Section_EN + ", ";
                if (!string.IsNullOrEmpty(this.Team_EN) && this.Team_EN != "- -") Str += this.Team_EN + ", ";

                return Str.TrimEnd(',', ' ');
            }
        }

        //以下字段用於報表
        //public DepartmentalReportType ReportType { get; set; }
        public string GroupField { get; set; }
        public int GroupSortID { get; set; }

    }
    /// <summary>
    /// Departmental Report，共有五種類型
    /// </summary>
    public enum DepartmentalReportType
    {
        /// <summary>
        /// HK Header Office
        /// </summary>
        HKHeadOff,
        /// <summary>
        /// SL Office + SL Factory
        /// </summary>
        SLOffAndSLFty,
        /// <summary>
        /// RX Office + RX Factory
        /// </summary>
        RXOffAndRXFty,
        /// <summary>
        /// CL Office + CL Factory
        /// </summary>
        CLOffAndCLFty,
        /// <summary>
        /// GG Factory
        /// </summary>
        GGFty
    }


    public partial class McClassDetail : BaseEntity
    {
    }

    public partial class WPMasterList : BaseEntityList<WPMaster, RAPLQDataContext>
    {
        //public void CheckQNandDateTime(RAPLQDataContext context, string factory, string linecode, string jno, string j2job, string rwo, string qn, string bcolor)
        //{
        //    var MList = from wp in Context.WPMasters where (SqlMethods.Like(wp.Flag, "%h%") || SqlMethods.Like(wp.Flag, "%s%") || wp.Flag == null || wp.Flag == string.Empty || wp.Flag == "x1") && wp.Factory == factory select wp;

        //}

        public static void UPD_NextOTN(RAPLQDataContext context, string factory, string linecode, string jno, string j2job, string rwo, string qn, string bcolor, string otn, int wpsn, DateTime date, string workstyle, string workername, string workerid, string machineid, string rpm, int Flag)
        {
            IEnumerable<Lb5Matching> lb5_NextOTNList = null;
            if (otn == "N1")
            {
                lb5_NextOTNList = context.Lb5Matchings.Where(P => P.Factory == factory && P.LineCode == linecode && P.j_NO == jno && P.J2_job == j2job && P.Rwo == rwo && P.Qn == qn && P.Bcolor == bcolor && P.WPSN == wpsn && (((P.OTN == "N2" || P.OTN == "OT1" || P.OTN == "OT2") && P.Date == date) || P.Date > date));
            }
            else if (otn == "N2")
            {
                lb5_NextOTNList = context.Lb5Matchings.Where(P => P.Factory == factory && P.LineCode == linecode && P.j_NO == jno && P.J2_job == j2job && P.Rwo == rwo && P.Qn == qn && P.Bcolor == bcolor && P.WPSN == wpsn && (((P.OTN == "OT1" || P.OTN == "OT2") && P.Date == date) || P.Date > date));
            }
            else if (otn == "OT1")
            {
                lb5_NextOTNList = context.Lb5Matchings.Where(P => P.Factory == factory && P.LineCode == linecode && P.j_NO == jno && P.J2_job == j2job && P.Rwo == rwo && P.Qn == qn && P.Bcolor == bcolor && P.WPSN == wpsn && ((P.OTN == "OT2" && P.Date == date) || P.Date > date));
            }
            else if (otn == "OT2")
            {
                lb5_NextOTNList = context.Lb5Matchings.Where(P => P.Factory == factory && P.LineCode == linecode && P.j_NO == jno && P.J2_job == j2job && P.Rwo == rwo && P.Qn == qn && P.Bcolor == bcolor && P.WPSN == wpsn && P.Date > date);
            }

            if (lb5_NextOTNList != null)
            {
                foreach (Lb5Matching mg in lb5_NextOTNList)
                {
                    switch (Flag)
                    {
                        case 1:
                            mg.WorkStyle = workstyle;
                            mg.WorkerId = workerid;
                            mg.WorkerName = workername;
                            mg.MachineId = machineid;
                            mg.Rpm0 = rpm;
                            break;
                        case 2:
                            mg.addWorkStyle1 = workstyle;
                            mg.addworker1 = workername;
                            mg.addworkerId1 = workerid;
                            mg.addMachineId1 = machineid;
                            mg.addRpm1 = rpm;
                            break;
                        case 3:
                            mg.addWorkStyle2 = workstyle;
                            mg.addworker2 = workername;
                            mg.addworkerId2 = workerid;
                            mg.addMachineId2 = machineid;
                            mg.addRpm2 = rpm;
                            break;
                        case 4:
                            mg.addWorkStyle3 = workstyle;
                            mg.addworker3 = workername;
                            mg.addworkerId3 = workerid;
                            mg.addMachineId3 = machineid;
                            mg.addRpm3 = rpm;
                            break;
                    }
                }
            }
        }
        public void CheckAllQN(string factory, Boolean YNCheckLB5)
        {
            string flag_origin, flag_ib, RAP_StartDate, RAP_EndDate, RAP_flag, RAP_seq, IB_StartDate, IB_EndDate, IB_flag, IB_seq, Rwo, Qn, Seq, Flag, QNs, FlagS, CmdText = string.Empty;
            List<string> WfMcStateList = new List<string>();
            DateTime StartTime, EndTime;
            RAPLQDataContext Context = ContextBuilder.CreateContext<RAPLQDataContext>();
            Context.CommandTimeout = 6000;
            var MList = from wp in Context.WPMasters where (SqlMethods.Like(wp.Flag, "%h%") || SqlMethods.Like(wp.Flag, "%s%") || wp.Flag == null || wp.Flag == string.Empty || wp.Flag == "x1") && wp.Factory == factory select wp;

            Thread t = new Thread(new ThreadStart(ProFrm));
            t.Start();

            try
            {
                foreach (WPMaster mr in MList)
                {
                    DataTable InterBaseTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,JHL,TSHOP,ACOL,CWO,TMU FROM TBLSHEDULE WHERE (PLINE =''{0}'') AND (CSTYLE =''{1}'') AND (TPLANT = ''{2}'') AND (RWO = ''{3}'') AND (FCCS = ''{4}'') AND (J_NO = ''{5}'') AND (J2_JOB = ''{6}'') and (ACOL=''{7}'') and CFKSRQ is not null", mr.LineCode.TrimEnd(), mr.CustStyleCode.TrimEnd(), mr.Factory.TrimEnd(), mr.Rwo.TrimEnd(), mr.Qn.TrimEnd(), mr.j_NO.TrimEnd(), mr.J2_job.TrimEnd(), mr.Bcolor.TrimEnd()));
                    if (InterBaseTb.Rows.Count > 0)
                    {
                        #region Delete wf && mc next state==>刪除WF，MC下一狀態
                        flag_origin = mr.Flag != null ? mr.Flag.TrimEnd() : string.Empty;
                        flag_ib = InterBaseTb.Rows[0]["flag3"].ToString().Trim();
                        //if (flag_origin == string.Empty && flag_ib.IndexOf("s") > 0)
                        //{
                        //    var MchingLst = mr.Matchings.Where(P => !string.IsNullOrEmpty(P.WorkerId) || !string.IsNullOrEmpty(P.addworkerId1) || !string.IsNullOrEmpty(P.addworkerId2) || !string.IsNullOrEmpty(P.addworkerId3) || !string.IsNullOrEmpty(P.MachineId) || !string.IsNullOrEmpty(P.addMachineId1) || !string.IsNullOrEmpty(P.addMachineId2) || !string.IsNullOrEmpty(P.addMachineId3));
                        //    foreach (Matching mg in MchingLst)
                        //    {
                        //        CmdText = string.Format(" Exec LB4_REMOVE_WFMcNextState '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}'", mg.WorkerId, mg.addworkerId1, mg.addworkerId2, mg.addworkerId3, mg.MachineId, mg.addMachineId1, mg.addMachineId2, mg.addMachineId3);
                        //    }

                        //}
                        #endregion

                        #region 檢查開始結束日期
                        RAP_StartDate = mr.StartTime != null ? mr.StartTime.ToString() : string.Empty;
                        RAP_EndDate = mr.EndTime != null ? mr.EndTime.ToString() : string.Empty;
                        RAP_flag = mr.Flag != null ? mr.Flag.TrimEnd() : string.Empty;
                        RAP_seq = mr.Seq.ToString();

                        IB_StartDate = InterBaseTb.Rows[0]["cfksrq"].ToString().TrimEnd();
                        IB_EndDate = InterBaseTb.Rows[0]["cfwcrq"].ToString().TrimEnd();
                        IB_flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
                        IB_seq = InterBaseTb.Rows[0]["SEQ"].ToString().TrimEnd();
                        Rwo = InterBaseTb.Rows[0]["Rwo"].ToString().TrimEnd();
                        Qn = InterBaseTb.Rows[0]["fccs"].ToString().TrimEnd();
                        Seq = InterBaseTb.Rows[0]["Seq"].ToString();
                        StartTime = Convert.ToDateTime(InterBaseTb.Rows[0]["cfksrq"] != null ? InterBaseTb.Rows[0]["cfksrq"] : null);
                        EndTime = Convert.ToDateTime(InterBaseTb.Rows[0]["cfwcrq"] != null ? InterBaseTb.Rows[0]["cfwcrq"] : null);
                        Flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
                        if (RAP_StartDate != IB_StartDate || RAP_EndDate != IB_EndDate || RAP_flag != IB_flag || RAP_seq != IB_seq)
                        {
                            CmdText += string.Format(" Exec UPD_QN '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}'", Rwo, Qn, Seq, StartTime.ToString("yyyy/MM/dd"), EndTime.ToString("yyyy/MM/dd"), Flag, factory, mr.LineCode, mr.j_NO, mr.J2_job, mr.Rwo, mr.Qn, mr.Bcolor);
                        }
                        #endregion
                    }
                    else
                    {
                        DataTable NOQN_IBTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,ACOL,CWO FROM TBLSHEDULE WHERE (PLINE = ''{0}'') AND (SEQ ={1}) and CFKSRQ is not null", mr.LineCode.TrimEnd(), mr.Seq.ToString()));
                        if (NOQN_IBTb.Rows.Count > 0)
                        {
                            QNs = NOQN_IBTb.Rows[0]["fccs"].ToString().TrimEnd();
                            if (Context.WPMasters.Where(P => P.LineCode == mr.LineCode && P.Seq == mr.Seq && P.Qn.Trim() == QNs).Count() > 0)
                            {
                                CmdText += string.Format(" Exec LB4_Del_RwoQNSTDate '{0}','{1}','{2}','{3}','{4}','{5}'", mr.LineCode.Trim(), mr.Seq, mr.Qn, mr.J2_job.Trim(), mr.Rwo.Trim(), mr.Bcolor.Trim());
                            }
                            else
                            {
                                //mr.Qn = QNs;
                                FlagS = NOQN_IBTb.Rows[0]["flag3"].ToString().TrimEnd();
                                CmdText += string.Format(" Exec UPD_QN '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}'", mr.Rwo, QNs, mr.Seq.ToString(), Convert.ToDateTime(mr.StartTime).ToString("yyyy/MM/dd"), Convert.ToDateTime(mr.EndTime).ToString("yyyy/MM/dd"), FlagS, mr.Factory, mr.LineCode, mr.j_NO, mr.J2_job, mr.Rwo, mr.Qn, mr.Bcolor);
                            }

                        }

                        NOQN_IBTb.Dispose();
                    }
                    if (CmdText != string.Empty)
                    {
                        Context.ExecuteCommand(CmdText);
                    }
                    CmdText = string.Empty;
                    InterBaseTb.Dispose();

                }


                //#region Get LB5 && Clear worker holiday
                //if (YNCheckLB5)
                //{
                //    Boolean ExecFlg = false;
                //    var LB5Lst = Context.WPMasters.Where(P => SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true && P.Factory == factory);
                //    foreach (WPMaster WPs in LB5Lst)
                //    {
                //        DateTime StartDate = Convert.ToDateTime(WPs.StartTime != null ? WPs.StartTime : null);
                //        DateTime EndDate = Convert.ToDateTime(WPs.EndTime != null ? WPs.EndTime : null);

                //        if (StartDate != null && EndDate != null)
                //        {

                //            if (WPs.PoolInfos.Count > 0)
                //            {
                //                var MinPIdt = WPs.PoolInfos.Select(S => S.Date).Min();
                //                var MaxPIdt = WPs.PoolInfos.Select(S => S.Date).Max();
                //                if (MinPIdt != WPs.StartTime || MaxPIdt != WPs.EndTime)
                //                {
                //                    ExecFlg = true;
                //                }
                //            }
                //            if (WPs.PoolInfos.Count == 0)
                //            {
                //                ExecFlg = true;
                //            }

                //            if (ExecFlg)
                //            {
                //                CmdText = string.Format(" Exec MyLB5 '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'", WPs.Factory, WPs.LineCode, WPs.j_NO, WPs.J2_job, WPs.Rwo, WPs.Qn, WPs.Bcolor, StartDate.ToString("yyyy/MM/dd"), EndDate.ToString("yyyy/MM/dd"));
                //                Context.ExecuteCommand(CmdText);
                //                while (StartDate <= EndDate)
                //                {
                //                    string Sql = string.Format("select * from v_wk52 where line='{0}' and date1='{1}'", WPs.LineCode, StartDate.ToString("yyyy/MM/dd"));
                //                    DataTable pooltb = DBAccess.GetInterBaseTable(Sql);
                //                    if (pooltb.Rows.Count > 0)
                //                    {
                //                        CmdText = string.Format(" Exec ClearHoliday '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}'", WPs.Factory, WPs.LineCode, WPs.j_NO, WPs.J2_job, WPs.Rwo, WPs.Qn, WPs.Bcolor, StartDate.ToString("yyyy/MM/dd"));
                //                        Context.ExecuteCommand(CmdText);
                //                    }
                //                    pooltb.Dispose();
                //                    StartDate = StartDate.AddDays(1);
                //                }
                //            }

                //        }
                //        ExecFlg = false;
                //    }

                //}
                //#endregion

            }
            finally
            {
                t.Abort();
            }
        }



        void ProFrm()
        {
            ProcessFrm frm = new ProcessFrm();
            frm.ShowDialog();
        }
        public static void UPD_WFMCNextState(string line, string factory, RAPLQDataContext DataContext)
        {
            #region Update Machine & WF line and Location state

            string CmdText = string.Empty;
            string BBBBB;
            List<string> WfMcStateList = new List<string>();
            var MinLB4Lst = (from bb in DataContext.WPMasters where (SqlMethods.Like(bb.Flag, "%h%") || bb.Flag == null || bb.Flag == string.Empty) && bb.LineCode == line && bb.Factory == factory orderby bb.StartTime select bb).FirstOrDefault();
            if (MinLB4Lst != null)
            {
                foreach (Matching Mg in MinLB4Lst.Matchings)
                {
                    if (Mg.WorkerId != null)
                    {
                        if (Mg.WorkerId.Trim() != string.Empty)
                        {

                            BBBBB = string.Format(" Exec LB4_UPD_WFMcNextState '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}'", Mg.LineCode, Mg.WPMaster.Location, Mg.WorkerId, Mg.addworkerId1, Mg.addworkerId2, Mg.addworkerId3, Mg.MachineId, Mg.addMachineId1, Mg.addMachineId2, Mg.addMachineId3);
                            if (WfMcStateList.Where(P => P == BBBBB).Count() == 0)
                            {
                                WfMcStateList.Add(BBBBB);
                                CmdText += BBBBB;
                            }
                        }
                    }
                }
            }
            if (CmdText != string.Empty)
            {
                DataContext.ExecuteCommand(CmdText);
            }


            #endregion
        }

        public void UpdateRFIDtoRAP()
        {
            Thread t = new Thread(new ThreadStart(ProFrm));
            t.Start();

            try
            {
                RAPLQDataContext RAPDataCnx = ContextBuilder.CreateContext<RAPLQDataContext>();
                RAPDataCnx.CommandTimeout = 6000;
                SqlConnection Cnn = new SqlConnection("Data Source=10.2.1.243;Initial Catalog=msc2003_rfid_phg;user id=sa;pwd=phg070314;Connect Timeout=600");
                Cnn.Open();
                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Cnn;

                string SqlStr = "CREATE TABLE #RAP_mc_Tmp ([Factory] [varchar](50)  NULL,[MachineNo] [varchar](50)  NULL,[machinemodelNo] [varchar](50)  NULL,[MachineName] [varchar](50)  NULL,[SectionGroupCode] [varchar](50)  NULL,[SectionGroupDesc] [varchar](50)  NULL,[SectionCode] [varchar](50)  NULL,[SectionDesc] [varchar](50)  NULL,[WorkstationID] [varchar](50)  NULL)  insert into #RAP_mc_Tmp exec dbo.usp_ph_rfid_get_machine_status";
                SqlStr += " create table #rap_wf_tmp (Factory varchar (50) null,EmployeeNo varchar (50) null,EmployeeName nvarchar (50) null,SectionGroupCode varchar (50) null,SectionGroupDesc varchar (50) null,SectionCode varchar (50) null,SectionDesc varchar (50) null,WorkstationID varchar (50) null) insert into #rap_wf_tmp exec dbo.usp_ph_rfid_get_employee_status";
                Cmd.CommandText = SqlStr;
                Cmd.ExecuteNonQuery();
                SqlDataAdapter admc = new SqlDataAdapter("select * from #RAP_mc_Tmp", Cnn);
                DataTable tbmc = new DataTable();
                admc.Fill(tbmc);

                foreach (DataRow row in tbmc.Rows)
                {
                    if (row["Factory"].ToString().TrimEnd() != string.Empty)
                    {
                        var CurID = RAPDataCnx.Machines.Where(P => P.Id == row["MachineNo"].ToString().TrimEnd() && P.Factory == row["Factory"].ToString().TrimEnd().Substring(0, 2)).FirstOrDefault();
                        if (CurID != null)
                        {
                            if (row["SectionCode"].ToString().TrimEnd() != string.Empty)
                            {
                                CurID.Line = row["SectionCode"].ToString().TrimEnd();
                            }
                            if (row["SectionGroupCode"].ToString().TrimEnd() != string.Empty)
                            {
                                CurID.Location = row["SectionGroupCode"].ToString().TrimEnd();
                            }

                            if (row["SectionCode"].ToString().TrimEnd() == "4KMR" || row["SectionCode"].ToString().TrimEnd() == "3KMR")
                            {
                                CurID.Class = "Mc-Mechanic Room";
                            }
                            if (row["SectionCode"].ToString().TrimEnd() == "3KMSS" || row["SectionCode"].ToString().TrimEnd() == "3KLSS" || row["SectionCode"].ToString().TrimEnd() == "4KMSS" || row["SectionCode"].ToString().TrimEnd() == "4KLSS" || row["SectionCode"].ToString().TrimEnd() == "3EMSS")
                            {
                                CurID.Shop = "WsSS";
                                CurID.ShopName = CurID.Line;
                            }
                            else
                            {
                                CurID.Shop = "Assembly Sewing Line";
                                CurID.ShopName = CurID.Location;
                            }
                        }
                    }

                }

                SqlDataAdapter adwf = new SqlDataAdapter("select * from #RAP_wf_Tmp", Cnn);
                DataTable tbwf = new DataTable();
                adwf.Fill(tbwf);

                foreach (DataRow row in tbwf.Rows)
                {
                    var CurID = RAPDataCnx.WorkForces.Where(P => P.Id == row["EmployeeNo"].ToString().TrimEnd() && (P.WorkerType == "Floater" || P.WorkerType == "Mobile")).FirstOrDefault();
                    if (CurID != null)
                    {
                        CurID.LineCode = row["SectionCode"].ToString().TrimEnd();
                        CurID.Location = row["SectionGroupCode"].ToString().TrimEnd();
                    }
                }
                RAPDataCnx.SubmitChanges();



            }
            finally
            { t.Abort(); }

        }

    }

    public partial class WorkForceList : BaseEntityList<WorkForce, RAPLQDataContext>
    {

    }

    public partial class MachineList : BaseEntityList<Machine, RAPLQDataContext>
    {
        public static string McDescription(string machineid)
        {
            var McD = (ContextBuilder.CreateContext<RAPLQDataContext>()).Machines.Where(P => P.Id == machineid).Select(S => S.Type).FirstOrDefault();
            return McD != null ? McD.TrimEnd() : string.Empty;
        }
    }
    public partial class FactoryLinesList : BaseEntityList<FactoryLines, RAPLQDataContext>
    {
        public static string McDescription(int machineid)
        {
            var McD = (ContextBuilder.CreateContext<RAPLQDataContext>()).FactoryLines.Where(P => P.Id == machineid).Select(S => S.Type).FirstOrDefault();
            return McD != null ? McD.TrimEnd() : string.Empty;
        }
    }

    public partial class MedToMcPairList : BaseEntityList<MedToMcPair, RAPLQDataContext>
    {
    }
    public partial class McBrandList : BaseEntityList<McBrand, RAPLQDataContext>
    {

    }

    public partial class BaseCodeList : BaseEntityList<BaseCode, RAPLQDataContext>
    {
    }

    public class DBAccess
    {
        static string _connstr = "";
        public static string ConnStr
        {
            get
            {
                if (_connstr == "")
                {
                    RAPLQDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
                    _connstr = context.Connection.ConnectionString;
                }
                return _connstr;
            }
        }

        public static RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
        //public static string ProcessState()
        //{
        //    return context.ExecuteQuery<string>("exec ProcessingLB5State").FirstOrDefault();            
        //}

        //public static DataTable GetInterBaseTable(string sql)
        //{
        //    OdbcDataAdapter ad = new OdbcDataAdapter(sql, "Dsn=ib_phgdb");
        //    DataTable tb = new DataTable();
        //    ad.Fill(tb);
        //    return tb;
        //}
        public static void LWPMToLB(string factory, string linecode, string jno, string j2job, string rwo, string qn, string bcolor)
        {
            context.ExecuteCommand(string.Format(@"exec GetLB5 '{0}','{1}','{2}','{3}','{4}','{5}','{6}'", factory, linecode, jno, j2job, rwo, qn, bcolor));
        }
        public static DataTable GetInterBaseTable(string sql)
        {
            SqlDataAdapter ad = new SqlDataAdapter(string.Format("select * from openquery ([interbase],'{0}')", sql), context.Connection.ConnectionString);
            DataTable tb = new DataTable();
            ad.Fill(tb);
            return tb;
        }

        public static DataTable GetTable(string sql)
        {
            SqlDataAdapter ad = new SqlDataAdapter(sql, ContextBuilder.CreateContext<RAPLQDataContext>().Connection.ConnectionString);
            DataTable tb = new DataTable();
            ad.Fill(tb);
            return tb;
        }
        public static string CurFactory()
        {
            OrganizationHelper orghelper = new OrganizationHelper();
            string CustFty = orghelper.GetFactoryByUser(PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID);

            //var Fty = (ContextBuilder.CreateContext<PHPlatformMiscDataContext>()).Misc_SystemParameters.Select(S => S.Location).FirstOrDefault();
            //string SysFactory = Fty != null ? Fty.TrimEnd() : string.Empty;
            //if (SysFactory.Trim() == "KB")
            //{
            //    return SysFactory;
            //}
            //if ((SysFactory.Trim() == "SL" && CustFty.Trim() == "KB") || (SysFactory.Trim() == "KB" && CustFty.Trim() == "SL"))
            //{
            //    return string.Empty;
            //}
            return CustFty;
            //return "KB";

        }

        public static byte[] ImageToByteArray(Image img)
        {
            MemoryStream ms = new MemoryStream();
            img.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            return ms.ToArray();
        }

        public static Image ByteArrayToImage(byte[] bytes)
        {
            if (bytes.Length > 0)
            {
                MemoryStream Ms = new MemoryStream();
                Ms.Write(bytes, 0, bytes.Length);
                return Image.FromStream(Ms);
            }
            return null;
        }

        //        public static void CheckQN(RAPLQDataContext CurDataCx, WPMaster CurWPmaster)
        //        {
        //            Boolean Flag;
        //            RAPLQDataContext RAPDataCnx = ContextBuilder.CreateContext<RAPLQDataContext>();
        //            RAPDataCnx.CommandTimeout = 8000;

        //            //var CurWPmaster = this.BindingSource.Current as WPMaster;
        //            DateTime StartDate = Convert.ToDateTime(CurWPmaster.StartTime != null ? CurWPmaster.StartTime : null);
        //            DateTime EndDate = Convert.ToDateTime(CurWPmaster.EndTime != null ? CurWPmaster.EndTime : null);
        //            if (CurWPmaster.PoolInfos.Count > 0)
        //            {
        //                var MinDate = CurWPmaster.PoolInfos.Select(S => S.Date).Min();
        //                var MaxDate = CurWPmaster.PoolInfos.Select(S => S.Date).Max();
        //                //Flag = MinDate != StartDate || MaxDate != EndDate ? true : false;
        //                Flag = true;
        //                if (Flag)
        //                {
        //                    var PILst = CurWPmaster.PoolInfos.Where(P => (P.Date < StartDate || P.Date > EndDate) && P.IsConfirmed == false);
        //                    foreach (PoolInfo item in PILst)
        //                    {
        //                        item.Lb5Matchings.Clear();
        //                    }
        //                    CurDataCx.PoolInfos.DeleteAllOnSubmit(PILst);
        //                    //CurDataCx.ExecuteCommand(string.Format("ClearLB5SyncData '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'",CurWPmaster.Factory,CurWPmaster.LineCode,CurWPmaster.j_NO,CurWPmaster.J2_job,CurWPmaster.Rwo,CurWPmaster.Qn ,CurWPmaster.Bcolor,Convert.ToString(MinDate),Convert.ToString(MaxDate) ));
        //                    CurDataCx.SubmitChanges();
        //                }

        //            }
        //            else
        //            {
        //                Flag = true;
        //            }
        //            Flag = true;

        //            string[] OTNLst = { "N1", "N2", "OT1", "OT2" };
        //            if (Flag)
        //            {
        //                while (StartDate <= EndDate)
        //                {
        //                    string Sql = string.Format("select * from v_wk52 where line=''{0}'' and date1=''{1}''", CurWPmaster.LineCode, StartDate.ToString("yyyy/MM/dd"));
        //                    DataTable pooltb = DBAccess.GetInterBaseTable(Sql);
        //                    if (pooltb.Rows.Count == 0)
        //                    {

        //                        foreach (string OT in OTNLst)
        //                        {
        //                            PoolInfo PILst = CurWPmaster.PoolInfos.Where(P => P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
        //                            PoolInfo POLst = RAPDataCnx.PoolInfos.Where(P => P.Factory == CurWPmaster.Factory && P.LineCode == CurWPmaster.LineCode && P.j_NO == CurWPmaster.j_NO && P.J2_job == CurWPmaster.J2_job && P.Bcolor == CurWPmaster.Bcolor && P.Rwo == CurWPmaster.Rwo && P.Qn == CurWPmaster.Qn && P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
        //                            Lb5Matching LB5Lst = RAPDataCnx.Lb5Matchings.Where(P => P.Factory == CurWPmaster.Factory && P.LineCode == CurWPmaster.LineCode && P.j_NO == CurWPmaster.j_NO && P.J2_job == CurWPmaster.J2_job && P.Bcolor == CurWPmaster.Bcolor && P.Rwo == CurWPmaster.Rwo && P.Qn == CurWPmaster.Qn && P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();

        //                            if (PILst == null && POLst == null && LB5Lst==null)
        //                            {
        //                                PoolInfo pi = new PoolInfo();
        //                                pi.Factory = CurWPmaster.Factory;
        //                                pi.j_NO = CurWPmaster.j_NO;
        //                                pi.J2_job = CurWPmaster.J2_job;
        //                                pi.Rwo = CurWPmaster.Rwo;
        //                                pi.Qn = CurWPmaster.Qn;
        //                                pi.Bcolor = pi.Bcolor;
        //                                pi.LineCode = pi.LineCode;
        //                                pi.Date = StartDate;
        //                                pi.OTN = OT;
        //                                pi.IsConfirmed = false;
        //                                CurWPmaster.PoolInfos.Add(pi);

        //                                foreach (Matching Mg in CurWPmaster.Matchings)
        //                                {
        //                                    Lb5Matching Lg = new Lb5Matching();
        //                                    Lg.Factory = Mg.Factory;
        //                                    Lg.j_NO = Mg.j_NO;
        //                                    Lg.J2_job = Mg.J2_job;
        //                                    Lg.Rwo = Mg.Rwo;
        //                                    Lg.Qn = Mg.Qn;
        //                                    Lg.Bcolor = Mg.Bcolor;
        //                                    Lg.LineCode = Mg.LineCode;
        //                                    Lg.Date = pi.Date;
        //                                    Lg.OTN = pi.OTN;
        //                                    Lg.WPSN = Mg.WPSN;
        //                                    Lg.OperationSN = Mg.OperationSN;
        //                                    Lg.OperationGroup = Mg.OperationGroup;
        //                                    Lg.OperationCode = Mg.OperationCode;
        //                                    Lg.OperationName = Mg.OperationName;
        //                                    Lg.MCType = Mg.MCType;
        //                                    Lg.GSD_SAH = Mg.GSD_SAH;
        //                                    Lg.BestSAH = Mg.BestSAH;
        //                                    Lg.BestMTM = Mg.BestMTM;
        //                                    Lg.WorkforceNum = Mg.WorkforceNum;
        //                                    Lg.Rpm = Mg.Rpm;
        //                                    Lg.WorkerName = Mg.WorkerName;
        //                                    Lg.WorkerId = Mg.WorkerId;
        //                                    Lg.WorkStyle = Mg.WorkStyle;
        //                                    Lg.MachineId = Mg.MachineId;
        //                                    Lg.addworker1 = Mg.addworker1;
        //                                    Lg.addworkerId1 = Mg.addworkerId1;
        //                                    Lg.addWorkStyle1 = Mg.addWorkStyle1;
        //                                    Lg.addMachineId1 = Mg.addMachineId1;
        //                                    Lg.addworker2 = Mg.addworker2;
        //                                    Lg.addworkerId2 = Mg.addworkerId2;
        //                                    Lg.addWorkStyle2 = Mg.addWorkStyle2; 
        //                                    Lg.addMachineId2 = Mg.addMachineId2;
        //                                    Lg.addworker3 = Mg.addworker3;
        //                                    Lg.addworkerId3 = Mg.addworkerId3;
        //                                    Lg.addWorkStyle3 = Mg.addWorkStyle3;
        //                                    Lg.addMachineId3 = Mg.addMachineId3;
        //                                    Lg.Rpm0 = Mg.Rpm0;
        //                                    Lg.addRpm1 = Mg.addRpm1;
        //                                    Lg.addRpm2 = Mg.addRpm2;
        //                                    Lg.addRpm3 = Mg.addRpm3;
        //                                    Lg.Bcolor = Mg.Bcolor;
        //                                    Lg.mc = Mg.mc;
        //                                    Lg.JFlag = Mg.JFlag;
        //                                    pi.Lb5Matchings.Add(Lg);
        //                                }

        //                            }
        //                            else if(PILst == null && POLst == null && LB5Lst!=null)
        //                                {
        //                                    PoolInfo pi = new PoolInfo();
        //                                    pi.Factory = CurWPmaster.Factory;
        //                                    pi.j_NO = CurWPmaster.j_NO;
        //                                    pi.J2_job = CurWPmaster.J2_job;
        //                                    pi.Rwo = CurWPmaster.Rwo;
        //                                    pi.Qn = CurWPmaster.Qn;
        //                                    pi.Bcolor = pi.Bcolor;
        //                                    pi.LineCode = pi.LineCode;
        //                                    pi.Date = StartDate;
        //                                    pi.OTN = OT;
        //                                    pi.IsConfirmed = false;
        //                                    CurWPmaster.PoolInfos.Add(pi);
        //                                }
        //                            else if (PILst != null && LB5Lst==null)
        //                            {
        //                                foreach (Matching Mg in CurWPmaster.Matchings)
        //                                {
        //                                    Lb5Matching Lg = new Lb5Matching();
        //                                    Lg.Factory = Mg.Factory;
        //                                    Lg.j_NO = Mg.j_NO;
        //                                    Lg.J2_job = Mg.J2_job;
        //                                    Lg.Rwo = Mg.Rwo;
        //                                    Lg.Qn = Mg.Qn;
        //                                    Lg.Bcolor = Mg.Bcolor;
        //                                    Lg.LineCode = Mg.LineCode;
        //                                    Lg.Date = PILst.Date;
        //                                    Lg.OTN = PILst.OTN;
        //                                    Lg.WPSN = Mg.WPSN;
        //                                    Lg.OperationSN = Mg.OperationSN;
        //                                    Lg.OperationGroup = Mg.OperationGroup;
        //                                    Lg.OperationCode = Mg.OperationCode;
        //                                    Lg.OperationName = Mg.OperationName;
        //                                    Lg.MCType = Mg.MCType;
        //                                    Lg.GSD_SAH = Mg.GSD_SAH;
        //                                    Lg.BestSAH = Mg.BestSAH;
        //                                    Lg.BestMTM = Mg.BestMTM;
        //                                    Lg.WorkforceNum = Mg.WorkforceNum;
        //                                    Lg.Rpm = Mg.Rpm;
        //                                    Lg.WorkerName = Mg.WorkerName;
        //                                    Lg.WorkerId = Mg.WorkerId;
        //                                    Lg.WorkStyle = Mg.WorkStyle;
        //                                    Lg.MachineId = Mg.MachineId;
        //                                    Lg.addworker1 = Mg.addworker1;
        //                                    Lg.addworkerId1 = Mg.addworkerId1;
        //                                    Lg.addWorkStyle1 = Mg.addWorkStyle1;
        //                                    Lg.addMachineId1 = Mg.addMachineId1;
        //                                    Lg.addworker2 = Mg.addworker2;
        //                                    Lg.addworkerId2 = Mg.addworkerId2;
        //                                    Lg.addWorkStyle2 = Mg.addWorkStyle2;
        //                                    Lg.addMachineId2 = Mg.addMachineId2;
        //                                    Lg.addworker3 = Mg.addworker3;
        //                                    Lg.addworkerId3 = Mg.addworkerId3;
        //                                    Lg.addWorkStyle3 = Mg.addWorkStyle3;
        //                                    Lg.addMachineId3 = Mg.addMachineId3;
        //                                    Lg.Rpm0 = Mg.Rpm0;
        //                                    Lg.addRpm1 = Mg.addRpm1;
        //                                    Lg.addRpm2 = Mg.addRpm2;
        //                                    Lg.addRpm3 = Mg.addRpm3;
        //                                    Lg.Bcolor = Mg.Bcolor;
        //                                    Lg.mc = Mg.mc;
        //                                    Lg.JFlag = Mg.JFlag;
        //                                    PILst.Lb5Matchings.Add(Lg);
        //                                }
        //                            }
        //                        }
        //                    }
        //                    else
        //                    {

        //                        foreach (string OT in OTNLst)
        //                        {
        //                            PoolInfo pi = CurWPmaster.PoolInfos.Where(P => P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
        //                            if (pi != null)
        //                            {
        //                                CurWPmaster.PoolInfos.Remove(pi);
        //                            }
        //                        }
        //                    }
        //                    pooltb.Dispose();
        //                    CurDataCx.SubmitChanges();
        //                    StartDate = StartDate.AddDays(1);
        //                }

        //            }

        ////            #region QN State will be changed to "s"
        ////            DataTable InterBaseTb = DBAccess.GetInterBaseTable(string.Format(@"SELECT  FLAG3 FROM TBLSHEDULE 
        ////WHERE (PLINE =''{0}'') AND (CSTYLE =''{1}'') AND (TPLANT = ''{2}'') AND (RWO = ''{3}'') AND (FCCS = ''{4}'') AND (J_NO = ''{5}'') AND (J2_JOB = ''{6}'') and (ACOL=''{7}'') and CFKSRQ is not null", CurWPmaster.LineCode.TrimEnd(), CurWPmaster.CustStyleCode.TrimEnd(), CurWPmaster.Factory.TrimEnd(), CurWPmaster.Rwo.TrimEnd(), CurWPmaster.Qn.TrimEnd(), CurWPmaster.j_NO.TrimEnd(), CurWPmaster.J2_job.TrimEnd(), CurWPmaster.Bcolor.TrimEnd()));
        ////            string QNs, FlagS;
        ////            if (InterBaseTb.Rows.Count > 0)
        ////            {
        ////                string RAP_flag = CurWPmaster.Flag != null ? CurWPmaster.Flag.TrimEnd() : string.Empty;
        ////                string IB_flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
        ////                if (RAP_flag != IB_flag)
        ////                {
        ////                    CurWPmaster.Flag = IB_flag;
        ////                }
        ////            }
        ////            else
        ////            {

        ////                DataTable NOQN_IBTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,ACOL,CWO FROM TBLSHEDULE WHERE (PLINE = ''{0}'') AND (SEQ ={1}) and CFKSRQ is not null", CurWPmaster.LineCode.TrimEnd(), CurWPmaster.Seq.ToString()));
        ////                if (NOQN_IBTb.Rows.Count > 0)
        ////                {
        ////                    QNs = NOQN_IBTb.Rows[0]["fccs"].ToString().TrimEnd();
        ////                    if (CurDataCx.WPMasters.Where(P => P.LineCode == CurWPmaster.LineCode && P.Seq == CurWPmaster.Seq && P.Qn.Trim() == QNs).Count() > 0)
        ////                    {
        ////                        CurDataCx.ExecuteCommand(string.Format(" Exec LB4_Del_RwoQNSTDate '{0}','{1}','{2}','{3}','{4}','{5}'", CurWPmaster.LineCode.Trim(), CurWPmaster.Seq, CurWPmaster.Qn, CurWPmaster.J2_job.Trim(), CurWPmaster.Rwo.Trim(), CurWPmaster.Bcolor.Trim()));
        ////                    }
        ////                    else
        ////                    {
        ////                        //CurWPmaster.Qn = QNs;
        ////                        FlagS = NOQN_IBTb.Rows[0]["flag3"].ToString().TrimEnd();
        ////                        CurDataCx.ExecuteCommand(string.Format(" Exec UPD_QN '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}'", CurWPmaster.Rwo, QNs, CurWPmaster.Seq.ToString(), Convert.ToDateTime(CurWPmaster.StartTime).ToString("yyyy/MM/dd"), Convert.ToDateTime(CurWPmaster.EndTime).ToString("yyyy/MM/dd"), FlagS, CurWPmaster.Factory, CurWPmaster.LineCode, CurWPmaster.j_NO, CurWPmaster.J2_job, CurWPmaster.Rwo, CurWPmaster.Qn, CurWPmaster.Bcolor));
        ////                    }

        ////                }
        ////            }
        ////            #endregion

        //            CurDataCx.SubmitChanges();
        //        }


        public static DataTable GetAuditDT(int ctype, string factory, string datefrom, string dateto)
        {
            // MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            // string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("PROC_LB4AUDIT", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@chktype", SqlDbType.Bit));
            da.SelectCommand.Parameters.Add(new SqlParameter("@factory", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@dt1", SqlDbType.SmallDateTime));
            da.SelectCommand.Parameters.Add(new SqlParameter("@dt2", SqlDbType.SmallDateTime));


            da.SelectCommand.Parameters["@chktype"].Value = ctype;
            da.SelectCommand.Parameters["@factory"].Value = factory;
            da.SelectCommand.Parameters["@dt1"].Value = datefrom;
            da.SelectCommand.Parameters["@dt2"].Value = dateto;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }




        public static List<SuspectRpt> GetAuditList(int ctype, string factory, string datefrom, string dateto)
        {
            DataTable dt = GetAuditDT(ctype, factory, datefrom, dateto);
            List<SuspectRpt> list = new List<SuspectRpt>();
            foreach (DataRow item in dt.Rows)
            {
                SuspectRpt srow = new SuspectRpt();
                srow.WorkerName = item["workername"].ToString();
                srow.MachineId = item["machineid"].ToString();
                srow.LineCode = item["linecode"].ToString();
                srow.J2_job = item["j2_job"].ToString();
                srow.CustStyleCode = item["custstylecode"].ToString();
                srow.Rwo = item["rwo"].ToString();
                srow.Bcolor = item["bcolor"].ToString();
                srow.Qn = item["qn"].ToString();
                srow.StartTime = item["starttime"].ToString();
                srow.EndTime = item["endtime"].ToString();
                list.Add(srow);

            }
            return list;
        }





        public static void CheckQN(RAPLQDataContext CurDataCx, WPMaster CurWPmaster)
        {
            Boolean Flag;
            RAPLQDataContext RAPDataCnx = ContextBuilder.CreateContext<RAPLQDataContext>();
            RAPDataCnx.CommandTimeout = 8000;

            //var CurWPmaster = this.BindingSource.Current as WPMaster;
            DateTime StartDate = Convert.ToDateTime(CurWPmaster.StartTime != null ? CurWPmaster.StartTime : null);
            DateTime EndDate = Convert.ToDateTime(CurWPmaster.EndTime != null ? CurWPmaster.EndTime : null);
            if (CurWPmaster.PoolInfos.Count > 0)
            {

                var MinDate = CurWPmaster.PoolInfos.Select(S => S.Date).Min();
                var MaxDate = CurWPmaster.PoolInfos.Select(S => S.Date).Max();

                Flag = MinDate != StartDate || MaxDate != EndDate ? true : false;

                if (Flag)
                {
                    //var PILst = CurWPmaster.PoolInfos.Where(P => (P.Date < StartDate || P.Date > EndDate) && P.IsConfirmed == false);

                    var PILst = CurWPmaster.PoolInfos.Where(P => P.Date > EndDate && P.IsConfirmed == false);
                    foreach (PoolInfo item in PILst)
                    {
                        item.Lb5Matchings.Clear();
                    }
                    CurDataCx.PoolInfos.DeleteAllOnSubmit(PILst);
                    //CurDataCx.ExecuteCommand(string.Format("ClearLB5SyncData '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'",CurWPmaster.Factory,CurWPmaster.LineCode,CurWPmaster.j_NO,CurWPmaster.J2_job,CurWPmaster.Rwo,CurWPmaster.Qn ,CurWPmaster.Bcolor,Convert.ToString(MinDate),Convert.ToString(MaxDate) ));
                    CurDataCx.SubmitChanges();
                }
            }
            else
            {
                Flag = true;
            }

            string[] OTNLst = { "N1", "N2", "OT1", "OT2" };
            if (Flag)
            {
                while (StartDate <= EndDate)
                {
                    string Sql = string.Format("select * from v_wk52 where line=''{0}'' and date1=''{1}''", CurWPmaster.LineCode, StartDate.ToString("yyyy/MM/dd"));
                    DataTable pooltb = DBAccess.GetInterBaseTable(Sql);
                    if (pooltb.Rows.Count == 0)
                    {

                        foreach (string OT in OTNLst)
                        {
                            PoolInfo PILst = CurWPmaster.PoolInfos.Where(P => P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
                            PoolInfo POLst = RAPDataCnx.PoolInfos.Where(P => P.Factory.Trim() == CurWPmaster.Factory.Trim() && P.LineCode.Trim() == CurWPmaster.LineCode.Trim() && P.j_NO.Trim() == CurWPmaster.j_NO.Trim() && P.J2_job.Trim() == CurWPmaster.J2_job.Trim() && P.Bcolor.Trim() == CurWPmaster.Bcolor.Trim() && P.Rwo.Trim() == CurWPmaster.Rwo.Trim() && P.Qn.Trim() == CurWPmaster.Qn.Trim() && P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();

                            if (PILst == null && POLst == null)
                            {
                                PoolInfo pi = new PoolInfo();
                                pi.Factory = CurWPmaster.Factory;
                                pi.j_NO = CurWPmaster.j_NO;
                                pi.J2_job = CurWPmaster.J2_job;
                                pi.Rwo = CurWPmaster.Rwo;
                                pi.Qn = CurWPmaster.Qn;
                                pi.Bcolor = pi.Bcolor;
                                pi.LineCode = pi.LineCode;
                                pi.Date = StartDate;
                                pi.OTN = OT;
                                pi.IsConfirmed = false;
                                CurWPmaster.PoolInfos.Add(pi);

                                Lb5Matching YYYY = RAPDataCnx.Lb5Matchings.Where(P => P.Factory.Trim() == CurWPmaster.Factory.Trim()
                                    && P.LineCode.Trim() == CurWPmaster.LineCode.Trim() && P.j_NO.Trim() == CurWPmaster.j_NO.Trim()
                                    && P.J2_job.Trim() == CurWPmaster.J2_job.Trim() && P.Bcolor.Trim() == CurWPmaster.Bcolor.Trim()
                                    && P.Rwo.Trim() == CurWPmaster.Rwo.Trim() && P.Qn.Trim() == CurWPmaster.Qn.Trim() && P.Date == StartDate
                                    && P.OTN.Trim() == OT).FirstOrDefault();

                                if (YYYY == null)
                                {
                                    foreach (Matching Mg in CurWPmaster.Matchings)
                                    {
                                        Lb5Matching Lg = new Lb5Matching();
                                        Lg.Factory = Mg.Factory;
                                        Lg.j_NO = Mg.j_NO;
                                        Lg.J2_job = Mg.J2_job;
                                        Lg.Rwo = Mg.Rwo;
                                        Lg.Qn = Mg.Qn;
                                        Lg.Bcolor = Mg.Bcolor;
                                        Lg.LineCode = Mg.LineCode;
                                        Lg.Date = pi.Date;
                                        Lg.OTN = pi.OTN;
                                        Lg.WPSN = Mg.WPSN;
                                        Lg.OperationSN = Mg.OperationSN;
                                        Lg.OperationGroup = Mg.OperationGroup;
                                        Lg.OperationCode = Mg.OperationCode;
                                        Lg.OperationName = Mg.OperationName;
                                        Lg.MCType = Mg.MCType;
                                        Lg.GSD_SAH = Mg.GSD_SAH;
                                        Lg.BestSAH = Mg.BestSAH;
                                        Lg.BestMTM = Mg.BestMTM;
                                        Lg.WorkforceNum = Mg.WorkforceNum;
                                        Lg.Rpm = Mg.Rpm;
                                        Lg.WorkerName = Mg.WorkerName;
                                        Lg.WorkerId = Mg.WorkerId;
                                        Lg.WorkStyle = Mg.WorkStyle;
                                        Lg.MachineId = Mg.MachineId;
                                        Lg.addworker1 = Mg.addworker1;
                                        Lg.addworkerId1 = Mg.addworkerId1;
                                        Lg.addWorkStyle1 = Mg.addWorkStyle1;
                                        Lg.addMachineId1 = Mg.addMachineId1;
                                        Lg.addworker2 = Mg.addworker2;
                                        Lg.addworkerId2 = Mg.addworkerId2;
                                        Lg.addWorkStyle2 = Mg.addWorkStyle2;
                                        Lg.addMachineId2 = Mg.addMachineId2;
                                        Lg.addworker3 = Mg.addworker3;
                                        Lg.addworkerId3 = Mg.addworkerId3;
                                        Lg.addWorkStyle3 = Mg.addWorkStyle3;
                                        Lg.addMachineId3 = Mg.addMachineId3;
                                        Lg.Rpm0 = Mg.Rpm0;
                                        Lg.addRpm1 = Mg.addRpm1;
                                        Lg.addRpm2 = Mg.addRpm2;
                                        Lg.addRpm3 = Mg.addRpm3;
                                        Lg.Bcolor = Mg.Bcolor;
                                        Lg.mc = Mg.mc;
                                        Lg.JFlag = Mg.JFlag;
                                        Lg.FAE = Mg.FAE; //14/12/20 add
                                        pi.Lb5Matchings.Add(Lg);
                                    }
                                }


                            }
                        }
                    }
                    else
                    {

                        foreach (string OT in OTNLst)
                        {
                            PoolInfo pi = CurWPmaster.PoolInfos.Where(P => P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
                            if (pi != null)
                            {
                                CurWPmaster.PoolInfos.Remove(pi);
                            }
                        }
                    }
                    pooltb.Dispose();
                    CurDataCx.SubmitChanges();
                    StartDate = StartDate.AddDays(1);
                }

            }


            #region QN State will be changed to "s"
            DataTable InterBaseTb = DBAccess.GetInterBaseTable(string.Format(@"SELECT  FLAG3 FROM TBLSHEDULE 
WHERE (PLINE =''{0}'') AND (CSTYLE =''{1}'') AND (TPLANT = ''{2}'') AND (RWO = ''{3}'') AND (FCCS = ''{4}'') AND (J_NO = ''{5}'') AND (J2_JOB = ''{6}'') and (ACOL=''{7}'') and CFKSRQ is not null", CurWPmaster.LineCode.TrimEnd(), CurWPmaster.CustStyleCode.TrimEnd(), CurWPmaster.Factory.TrimEnd(), CurWPmaster.Rwo.TrimEnd(), CurWPmaster.Qn.TrimEnd(), CurWPmaster.j_NO.TrimEnd(), CurWPmaster.J2_job.TrimEnd(), CurWPmaster.Bcolor.TrimEnd()));
            string QNs, FlagS;
            if (InterBaseTb.Rows.Count > 0)
            {
                string RAP_flag = CurWPmaster.Flag != null ? CurWPmaster.Flag.TrimEnd() : string.Empty;
                string IB_flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
                if (RAP_flag != IB_flag)
                {
                    CurWPmaster.Flag = IB_flag;
                }
            }
            else
            {

                DataTable NOQN_IBTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,ACOL,CWO FROM TBLSHEDULE WHERE (PLINE = ''{0}'') AND (SEQ ={1}) and CFKSRQ is not null", CurWPmaster.LineCode.TrimEnd(), CurWPmaster.Seq.ToString()));
                if (NOQN_IBTb.Rows.Count > 0)
                {
                    QNs = NOQN_IBTb.Rows[0]["fccs"].ToString().TrimEnd();
                    if (CurDataCx.WPMasters.Where(P => P.LineCode == CurWPmaster.LineCode && P.Seq == CurWPmaster.Seq && P.Qn.Trim() == QNs).Count() > 0)
                    {
                        CurDataCx.ExecuteCommand(string.Format(" Exec LB4_Del_RwoQNSTDate '{0}','{1}','{2}','{3}','{4}','{5}'", CurWPmaster.LineCode.Trim(), CurWPmaster.Seq, CurWPmaster.Qn, CurWPmaster.J2_job.Trim(), CurWPmaster.Rwo.Trim(), CurWPmaster.Bcolor.Trim()));
                    }
                    else
                    {
                        //CurWPmaster.Qn = QNs;
                        FlagS = NOQN_IBTb.Rows[0]["flag3"].ToString().TrimEnd();
                        CurDataCx.ExecuteCommand(string.Format(" Exec UPD_QN '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}'", CurWPmaster.Rwo, QNs, CurWPmaster.Seq.ToString(), Convert.ToDateTime(CurWPmaster.StartTime).ToString("yyyy/MM/dd"), Convert.ToDateTime(CurWPmaster.EndTime).ToString("yyyy/MM/dd"), FlagS, CurWPmaster.Factory, CurWPmaster.LineCode, CurWPmaster.j_NO, CurWPmaster.J2_job, CurWPmaster.Rwo, CurWPmaster.Qn, CurWPmaster.Bcolor));
                    }

                }
            }
            #endregion

            CurDataCx.SubmitChanges();
        }

        public static void CheckLB5(string factory)
        {
            RAPLQDataContext Context = ContextBuilder.CreateContext<RAPLQDataContext>();
            //IEnumerable<WPMaster> MList = from wp in Context.WPMasters where SqlMethods.Like(wp.Flag, "%s%") && wp.IsConfirmed == true && wp.Factory == "FJ" select wp;
            IEnumerable<WPMaster> MList = Context.ExecuteQuery<WPMaster>(string.Format("select * from wpmaster where flag like '%s%' and isconfirmed='1' and factory='{0}' and endtime>getdate()-7", factory));
            var WPLst = MList.Where(P => P.YNHaveLB5Data == true);
            /*and endtime>now-7*/
            foreach (WPMaster item in WPLst)
            {
                DBAccess.CheckQN(Context, item);
            }
        }
    }
    public class TypeList
    {
        public string Type { get; set; }
        public int Num { get; set; }
    }

    public class WF
    {
        public string WFType { get; set; }
        public string WFid { get; set; }
    }
    public class MC
    {
        public string MCType { get; set; }
        public string MCId { get; set; }
    }
    public class LockAndReserve
    {
        public string Factory { get; set; }
        public string Line { get; set; }
        public string PHStyleCode { get; set; }
        public string CustStyleCode { get; set; }
        public DateTime? StartTime { get; set; }
        public DateTime? EndTime { get; set; }
        public string J_NO { get; set; }
        public string lr { get; set; }
        public bool? IsConfirmed { get; set; }
    }
    public class ClsRight
    {
        public static void GetUserRight(long menuid, string action, DevExpress.XtraBars.BarButtonItem barbtn)
        {
            barbtn.Enabled = false;
            // if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID == "Admin") return;
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.Roles.Find(p => p.RoleName.ToLower().Contains("administrator")) != null)
            {
                barbtn.Enabled = true;
                return;
            }
            Auth_FunRight funright = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(menuid, action);
            barbtn.Enabled = (funright != null);
        }
        public static Boolean GetUserRight(long menuid, string action)
        {
            //if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID == "Admin") return true;
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.Roles.Find(p => p.RoleName.ToLower().Contains("administrator")) != null)
                return true;
            Auth_FunRight funright = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(menuid, action);
            return funright != null ? true : false;
        }
        public static void GetUserRight(long menuid, string action, DevExpress.XtraBars.BarButtonItem barbtn, string RAP)
        {
            bool funright = false;
            string ConfirmName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            using (PH.Platform.AuthMgr.BO.AuthMgrDataContext context = new AuthMgrDataContext())
            {
                if (context.Auth_UserRole.Where(p => p.UserID == ConfirmName).Count() > 0)
                {
                    funright = true;
                }
            }

            barbtn.Enabled = funright;
        }
        public static void GetUserRight(long menuid, string action, Dictionary<int, DevExpress.XtraBars.BarButtonItem> dic, string RAP)
        {
            bool[] str = { false, false, false };
            string ConfirmName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            using (PH.Platform.AuthMgr.BO.AuthMgrDataContext context = ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>()) //new AuthMgrDataContext())
            {
                if (RAP == "RAP")
                {
                    if (context.Auth_UserRole.Where(p => p.UserID == ConfirmName && p.RoleID == "00000000000219").Count() > 0)
                    {
                        str[0] = true;

                    }
                    if (context.Auth_UserRole.Where(p => p.UserID == ConfirmName && p.RoleID == "00000000000220").Count() > 0)
                    {
                        str[1] = true;
                    }
                    if (context.Auth_UserRole.Where(p => p.UserID == ConfirmName && p.RoleID == "00000000000221").Count() > 0)
                    {
                        str[2] = true;
                    }
                }
                else
                {
                    if (context.Auth_UserRole.Where(p => p.UserID == ConfirmName && p.RoleID == "00000000000224").Count() > 0)
                    {
                        str[0] = true;

                    }
                    if (context.Auth_UserRole.Where(p => p.UserID == ConfirmName && p.RoleID == "00000000000223").Count() > 0)
                    {
                        str[1] = true;
                    }
                }
            }
            int i = 0;
            foreach (DevExpress.XtraBars.BarButtonItem item in dic.Values)
            {
                item.Enabled = str[i];
                i++;
            }
        }


    }


    public partial class mamc
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
        public string NextLocation { get; set; }
        public string Factory { get; set; }
        public string Line { get; set; }
        public string NextLine { get; set; }
        public string Type { get; set; }
        public System.Nullable<System.DateTime> Bdt { get; set; }
        public string Vndr { get; set; }
        public System.Nullable<decimal> UYear { get; set; }
        public string Type1 { get; set; }
        public string Buyer { get; set; }
        public string Grp { get; set; }
        public string Type2 { get; set; }
        public string Type3 { get; set; }
        public string Shop { get; set; }
        public string NextShop { get; set; }
        public string ShopName { get; set; }
        public string BOI_Proj1 { get; set; }
        public string BOI_Proj2 { get; set; }
        public string Rpm { get; set; }
        public string Borrow { get; set; }
        public string Own { get; set; }
        public string TypeOfNeedle { get; set; }
        public string NeedleGauge { get; set; }
        public string SewingSpeed { get; set; }
        public string Marks { get; set; }
        public string Class { get; set; }
        public System.Data.Linq.Binary Mcimg { get; set; }
        public System.Data.Linq.Binary BrandImg { get; set; }
        public string MaxSpeed { get; set; }
        public string ASpeed { get; set; }
        public string CurSpeed { get; set; }
        public string MaxNeedle { get; set; }
        public string MaxFeed { get; set; }
        public string ThrTimer { get; set; }
        public string WfLift { get; set; }
        public string Stitch { get; set; }
        public string Luboil { get; set; }
        public string BNeedle { get; set; }
        public string TNeedle { get; set; }
        public string CurTNeedle { get; set; }
        public string GNeedle { get; set; }
        public string curGNeedle { get; set; }
        public string Overedge { get; set; }
        public string pfLift { get; set; }
        public string DiffRatio { get; set; }
        public string DiffRatio1 { get; set; }
        public System.Nullable<int> Thread { get; set; }
        public string SewArea { get; set; }
        public string SewArea1 { get; set; }
        public string Memo1 { get; set; }
        public string Memo2 { get; set; }
        public string NLift { get; set; }
        public string LB3Rpm { get; set; }
        public string LB4Rpm { get; set; }
        public string LB4Line { get; set; }
        public string LB4Location { get; set; }
        public string LB5Rpm { get; set; }
        public string CurLineCode { get; set; }
        public string CurLocation { get; set; }
    }

    [Table(Name = "")]
    public class SuspectRpt
    {
        //b.workername,a.linecode,a.j2_job,a.custstylecode,a.rwo,a.bcolor,a.qn,a.starttime,a.endtime
        public string WorkerName { get; set; }
        public string MachineId { get; set; }
        public string LineCode { get; set; }
        public string J2_job { get; set; }
        public string CustStyleCode { get; set; }
        public string Rwo { get; set; }
        public string Bcolor { get; set; }
        public string Qn { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }

    }

    public partial class POHeader : BaseEntity
    {
        public override void AddNew()
        {
            this.Currency = "US$";

            //BIN No. 001180613 
            //            this.Notepad = @"1) Delivery date is based on transit point & this point is as selected delivery term of international comercial terms(INCOTERMS)
            //
            //2) Transit point is the cargo transit address as INCOTERMS which is agreed by 2 parties (vendor & buyer)
            //
            //3) Provide the following valid shipping documents 
            //   i)   Certificate of Origin which is issued by authroized organization with official chopped and signature with information including 
            //        Purchase Contract No. with date & Commercial Invoice No. with date & Consignee BIN No. 001180613 
            //   ii)  Bill of Ladings showing the Purchase Contract No. with date & Commercial Invoice No. with date.
            //   iii) Commercial Invoice showing the Purchase Contract No. with date
            //   iv)  Packing List showing the Purchase Contract No. with date & Commercial Invoice No. with date
            //   v)   Insurance (if under CIF) showing the Commercial Invoice with date
            //  
            //4) Operation Manul must be provided for each individual machine.";

            this.Notepad = @"1) Delivery date is based on transit point & this point is as selected delivery term of international comercial terms(INCOTERMS)

2) Transit point is the cargo transit address as INCOTERMS which is agreed by 2 parties (vendor & buyer)

3) Provide the following valid shipping documents:-
   i)   Certificate of Origin which is issued by authroized organization with official chopped and signature with information including
        Purchase Order No. with date & Commercial Invoice No. with date & Consignee BIN No.
   ii)  Bill of Ladings showing the Purchase Order No. with date & Commercial Invoice No. with date.
   iii) Commercial Invoice showing the Purchase Order No. with date.
   iv)  Packing List showing the Purchase Order No. with date & Commercial Invoice No. with date.
   v)   Insurance (if under CIF) showing the Commercial Invoice with date.
  
4) Operation Manul must be provided for each individual machine.
5) Insurance to be borned by purchaser.
6) Ocean freight cost is included in the unit price.";




            this.Notepad_CN = @"1) 交貨期是以到達交貨點為準。而交貨點是根據選擇不同國際貿易條款(INCOTERMS)而定

2) 交貨點是按照雙方同意的國際貿易條款(INCOTERMS)的貨品交貨地址(買方和供應方)

3) 需提供下列有效运输文件
   i)   原产地证明，由授权机构签发，经正式簽字并蓋章，包括采购合同号(注明日期)、商业发票号(注明日期)和收货人(BIN编号：001180613) 
   ii)  注明采购合同号、日期和商业发票号并注明採購合同的日期
   iii) 商業發票上需註明採購合同號及日期
   iv)  包裝清單上需註明採購合同號、日期以及商業發票號、日期
   v)   商业发票(CIF)保险需註明日期
  
4) 每部機器必需提供獨立橾作說明書.";


            this.GoodsDescription_EN = @"BRAND NEW CAPITAL EQUIPMENT FOR HUNDRED PERCENT EXPORT ORIENTED GARMENTS INDUSTRY";
            this.GoodsDescription_CN = @"面向出口服装行业百分之百的全新资本设备";

            this.PartialShipment = "ALLOWED";
            this.OriginsCountry = "CHINA";
            this.LoadingPort = "ANY CHINA PORT";
            this.DischargePort = "CHATTOGRAM PORT";
            //this.DischargePort = "CHITTAGONG PORT";
            this.Consignee = "YONGTAI INDUSTRIES (BANGLADESH) COMPANY LIMITED";
            //this.Destination = "CHITTAGONG PORT";



            //            this.Notepad = @"Notepad/備註:-
            //  1. Delivery date is based on transit point & this point is as selected delivery term of international comercial terms(INCOTERMS)
            //      交貨期是以到達交貨點為準。而交貨點是根據選擇不同國際貿易條款(INCOTERMS)而定。
            //
            //  2. Transit point is the cargo transit address as INCOTERMS which is agreed by 2 parties (vendor & buyer)
            //      交貨點是按照雙方同意的國際貿易條款(INCOTERMS)的貨品交貨地址(買方和供應方)
            //
            //  3. Provides valid Certificate of Origin which is issued by authorized organization with official chopped and signature.
            //    所有機器付運, 賣方須提供經官方機構簽發之有效產地來源証。
            //
            //  4. Operation Manul must be provided for each individual machine.
            //    每部機器必需提供獨立橾作說明書";



            //            this.Notepad = @"Notepad/備註:-
            //  1. Delivery date is based on transit point & this point is as selected delivery term of international comercial terms(INCOTERMS)
            //      交貨期是以到達交貨點為準。而交貨點是根據選擇不同國際貿易條款(INCOTERMS)而定。
            //
            //  2. Transit point is the cargo transit address as INCOTERMS which is agreed by 2 parties (vendor & buyer)
            //      交貨點是按照雙方同意的國際貿易條款(INCOTERMS)的貨品交貨地址(買方和供應方)
            //
            //  3. vides valid Certificate of Origin which is issued by authorized organization with official chopped and signature.
            //    所有機器付運, 賣方須提供經官方機構簽發之有效產地來源証。
            //
            //  4. Insurance policy to be provided by the supplier if in CIF term
            //    如是CIF, 由賣方提供受益人為買方之保險單予買方
            //
            //  5. Operation Manul must be provided for each individual machine.
            //    每部機器必需提供獨立橾作說明書";

            base.AddNew();
        }

        public string BuyerName_EN
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).Buyers.FirstOrDefault(p => p.Code == this.BuyerCode).Name_EN;
            }
        }

        public string BuyerName_CN
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).Buyers.FirstOrDefault(p => p.Code == this.BuyerCode).Name_TW;
            }
        }


        public string POStatusName
        {
            get
            {
                if (string.IsNullOrEmpty(this.POStatus))
                {
                    return "";
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }

                var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "POStatus" && p.Code == this.POStatus);
                return obj == null ? "" : obj.Name;
            }
        }



        public Vendor POVendor
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
            }
        }

        public double GetTotal()
        {
            return (this.PODetails.Sum(p => p.Qty * p.UnitPrice) ?? 0) + (this.PODetail_OtherItems.Sum(p => p.Amount) ?? 0);
        }

        //public double GetSupplementTotal()
        //{
        //    return (this.PODetails.Where(p => p.IsSupplement ?? false).Sum(p => p.Qty * p.UnitPrice) ?? 0);
        //}


        //用于計算PO Detail中的Machinery Item Seq
        public int MachineryItemIndex { get; set; }

        //用于計算PO Detail中的Supplement Item Seq
        public int SupplementItemIndex { get; set; }

        public double TotalAmountShow
        {
            get
            {
                return Math.Round(this.GetTotal() * 1.0000, 2);
            }
        }

        public int ItemCountShow
        {
            get
            {
                return this.PODetails.Count();
            }
        }

        public DateTime? DeliveryDateShow
        {
            get
            {
                if (this.PODetails.Count == 0)
                {
                    return null;
                }
                return this.PODetails.Select(p => p.DeliveryDate ?? DateTime.MinValue).Min();
            }
        }

        public string VendorShortName
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                Vendor vendor = (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
                return vendor == null ? "" : vendor.ShortName;
            }
        }

    }

    public partial class PODetail : BaseEntity
    {
        public string MachineryItemSeq
        {
            get
            {
                return string.Format("1.{0}", this.POHeader.MachineryItemIndex++.ToString());
            }
        }

        public string SupplementItemSeq
        {
            get
            {
                return string.Format("2.{0}", this.POHeader.SupplementItemIndex++.ToString());
            }
        }


        public string Brand_ModelNoShow
        {
            get
            {
                //if (this.IsSpareParts ?? false)
                //{
                //    return "";
                //}

                return string.Format("Brand: {0} / Model No.: {1}", this.Brand, this.ModelNo);
            }
        }

        public double Amount
        {
            get
            {
                return (this.UnitPrice ?? 0) * (this.Qty ?? 0);
            }
        }
    }

    public partial class Buyer : BaseEntity
    {

    }

    public partial class PIHeader : BaseEntity
    {
        public override void AddNew()
        {
            base.AddNew();
            this.ProjectNO = "BD - MACHINE";
            //this.Marks = "WILL BE CONFIRMED LATER";
            this.Marks = "Will be provided later";
            //this.ShipmentRemark = "SHIPMENT FROM CHINA TO {0}, BANGLADESH BY {1}";
            this.GoodsDescription = "BRAND NEW CAPITAL MACHINERY FOR HUNDRED" + System.Environment.NewLine +
                                  "PERCENT EXPORT ORIENTED GARMENTS INDUSTRY";

            this.Quality = "We declare that the machines and accessories to be inspected with good order and condition";
            //this.Remark = "The value of the machine in USD{0} is part of capital investment from Eternal Power Development Ltd" + System.Environment.NewLine +
            //              "to Y.T. Garments Manufacturing (Bangladesh) Co., Ltd.";
        }

        public double GetTotal()
        {
            return (this.PIDetails.Sum(p => (p.Qty ?? 0) * (p.UnitPrice ?? 0))) + (this.PIDetail_OtherItems.Sum(p => p.Amount) ?? 0);
        }
    }

    public partial class PIDetail : BaseEntity
    {
        public double Amount
        {
            get
            {
                return (this.Qty ?? 0) * (this.UnitPrice ?? 0);
            }
        }

        public string CalDescription
        {
            get
            {
                //BRAND : SINY,  MODEL NO. SL787-02A, 
                //Film laydown bonding Machine with upper & lower belt and right side edge trimmer
                //H.S. Code 8451.31.00
                if (string.IsNullOrEmpty(this.HSCode))
                {
                    return string.Format("BRAND: {0}  \r\nMODEL#: {1}\r\n{2}", this.Brand, this.ModelNo, this.Name);
                }

                return string.Format("BRAND: {0}    HS Code: {1}\r\nMODEL#:{2}\r\n{3}", this.Brand, this.HSCode, this.ModelNo, this.Name);


                //if (string.IsNullOrEmpty(this.HSCode))
                //{
                //    return string.Format("BRAND : {0},  MODEL NO. {1},\r\n{2}", this.Brand, this.ModelNo, this.Name);
                //}

                //return string.Format("BRAND : {0},  MODEL NO. {1},\r\n{2}\r\nH.S. Code : {3}", this.Brand, this.ModelNo, this.Name, this.HSCode);
            }
        }
    }

    public partial class LCShipmentDate : BaseEntity
    {
        //public string HWCategoryCode
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
        //        return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.MCType).HWCategoryCodeOfHWType;
        //    }
        //}

        //public string HWGroupCode
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
        //        return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.MCType).Description;
        //    }
        //}


        public string VendorName
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                Vendor vendor = (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
                return vendor == null ? "" : vendor.ShortName;
            }
        }

        private BaseCode HWTypeObject
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.MCType);
            }
        }

        public string HWTypeNameEN { get { return this.HWTypeObject == null ? "" : this.HWTypeObject.NameEN; } }
        public string HWTypeNameCN { get { return this.HWTypeObject == null ? "" : this.HWTypeObject.Name; } }
    }


    public partial class Secondment : BaseEntity
    {
        public string WorkForceName
        {
            get
            {
                return GetSecondmentWorkForceName();
            }
        }

        partial void OnWorkForceIDChanged()
        {
            GetSecondmentWorkForceName();
        }

        private string GetSecondmentWorkForceName()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            }
            WorkForce obj = (this.CurrentDataContext as RAPLQDataContext).WorkForces.FirstOrDefault(p => p.Id == this.WorkForceID);
            return obj == null ? "" : obj.NameCn;
        }

    }

    public partial class OSChart : BaseEntity
    {

    }

    public partial class ItemTool : BaseEntity
    {

        public string HWCategoryCode
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                BaseCode Obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McGroup" && p.Lang == this.EQGroupCode);
                return Obj == null ? "" : Obj.HSCode;
            }
        }

        public string EQGroupNameShow
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                //BaseCode Obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "EQGroup" && p.Code == this.EQGroupCode);
                BaseCode Obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McGroup" && (p.HSCode == "C3" || p.HSCode == "C5") && p.Lang == this.EQGroupCode);

                // this.edtEQGroup.Properties.DataSource = db.BaseCodes.Where(p => p.Type == "McGroup" && (p.HSCode == "C3" || p.HSCode == "C5")).OrderBy(p => p.SortID);
                return Obj == null ? "" : Obj.Name;
            }
        }

        public string ItemLevelNameShow
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                BaseCode Obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "EQItemLevel" && p.Code == this.ItemLevelCode);
                return Obj == null ? "" : Obj.NameEN;
            }
        }

        //EQGroupCode

        //    ItemLevelCode
    }

    public partial class PoolReason : BaseEntity { }
    public partial class ActionLogHeader : BaseEntity { }
    public partial class ActionLogDetail : BaseEntity { }
    public partial class ActionLogEmail : BaseEntity { }
    public partial class Email : BaseEntity { }
    public partial class PODetail_OtherItem : BaseEntity
    {
        public string CarriageChargeShow
        {
            get
            {
                if (string.IsNullOrEmpty(this.CarriageDescription) && string.IsNullOrEmpty(this.Description))
                    return "";

                if (!string.IsNullOrEmpty(this.CarriageDescription) && string.IsNullOrEmpty(this.Description))
                {
                    return this.CarriageDescription;
                }

                if (!string.IsNullOrEmpty(this.Description) && string.IsNullOrEmpty(this.CarriageDescription))
                {
                    return this.Description;
                }

                return string.Format("{0} - {1}", this.CarriageDescription, this.Description);
            }
        }

    }

    public partial class PIDetail_OtherItem : BaseEntity
    {
        public string CarriageChargeShow
        {
            get
            {
                if (string.IsNullOrEmpty(this.CarriageDescription) && string.IsNullOrEmpty(this.Description))
                    return "";

                if (!string.IsNullOrEmpty(this.CarriageDescription) && string.IsNullOrEmpty(this.Description))
                {
                    return this.CarriageDescription;
                }

                if (!string.IsNullOrEmpty(this.Description) && string.IsNullOrEmpty(this.CarriageDescription))
                {
                    return this.Description;
                }

                return string.Format("{0} - {1}", this.CarriageDescription, this.Description);
            }
        }
    }
    public partial class PCHeader : BaseEntity
    {
        public override void AddNew()
        {
            base.AddNew();

            this.CreateDate = DateTime.Now;
            this.GoodsDescription = @"BRAND NEW CAPITAL EQUIPMENT FOR HUNDRED PERCENT
EXPORT ORIENTED GARMENTS INDUSTRY";

            this.ShipmentMode = "BY BOAT";
            this.Incoterms = "CIF";
            this.LoadingPort = "ANY CHINA PORT";
            this.Destination = "CHITTAGONG PORT";
            this.PartialShipment = "ALLOWED";
            this.PaymentTerms = "FOC(FREE OF COST)  (HERE VALUE ONLY FOR CUTOM PURPOSE)";
            this.OriginsCountry = "CHINA";
        }

        /// <summary>
        /// Vendor的英文名稱
        /// </summary>
        public string VendorName_En
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                Vendor Obj = (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
                return Obj == null ? "" : Obj.Name_EN;
            }
        }



    }
    public partial class PCDetail : BaseEntity { }


    /// <summary>
    /// Purchase Contract Report用到的報表類
    /// </summary>
    public class PCReportMerge
    {
        public int SortID { get; set; }
        public string ItemNo { get; set; }
        public int? POLineSortID { get; set; }
        public string BrandModelNo { get; set; }
        public string Description { get; set; }
        public string HSCode { get; set; }
        public string Unit { get; set; }
        public int? Qty { get; set; }
        public double? UnitPrice { get; set; }
        public double? Amount { get; set; }
        public DateTime DeliveryDate { get; set; }
        public string DeliveryDateShow { get; set; }
        public bool IsOtherItem { get; set; }
        /// <summary>
        /// 內部用的分組ID，一個PO分一組
        /// </summary>
        public int? InternalGroupID { get; set; }
        public bool? IsBigCategory { get; set; }
    }

    /// <summary>
    /// Operation Summary (with Specification) 工序匯總 (連規格明細) - 報表表頭信息類
    /// </summary>
    public class OpsSummaryStep3Header
    {
        public string CustStyle { get; set; }
        public string PHStyle { get; set; }
        public string Cust { get; set; }
        public string Status { get; set; }
        public string QN { get; set; }
        public int Outstanding { get; set; }
        public int ALWDesk { get; set; }
        public int TotalWDesk { get; set; }

        public string FirstOptStartDate { get; set; }
        public string FirstOptLocation { get; set; }
    }

    /// <summary>
    /// Operation Summary (with Specification) 工序匯總 (連規格明細) - Step 3 -  Part A - Workforce (WF)報表類
    /// </summary>
    public class OpsSummaryStep3PartAWF
    {
        public string FAE { get; set; }
        public string MCType { get; set; }
        public string MCTypeName { get; set; }
        public string MachineID { get; set; }
        public string MachineModelNo { get; set; }
        public string WorkerID { get; set; }
        public string WorkerType { get; set; }
        public string OpsSN { get; set; }
        public string OpsNameEN { get; set; }
        public string OpsNameCN { get; set; }
        public string OpsNameBD { get; set; }
        public string KeyOpsEN { get; set; }
        public string KeyOpsCN { get; set; }
        public string KeyOpsBD { get; set; }


        public string ZJ { get; set; }
        public string GuageThrow1 { get; set; }
        public string GuageThrowUnit { get; set; }
        public string StitchDensity { get; set; }
        public string StitchDensityUnit { get; set; }
        public string NeedleNo { get; set; }
        public string NeedleNoType { get; set; }
        public string NeedleThreads { get; set; }
        public string BobbinLopper { get; set; }
        public string GuidingPlate { get; set; }
        public string FeedingDevice { get; set; }
        public string ThroatPlateSet { get; set; }
        public string ThroatPlateSetCode { get; set; }
        public string SeamAllowance { get; set; }
        public string SeamAllowanceUnit { get; set; }
        public string TypeOfSAName { get; set; }
        public string TypeOfSANumb { get; set; }
        public string TypeOfSAUnit { get; set; }

        public string AgreeUnRed { get; set; }
        public string AgreeUnRedFlag { get; set; }

        //表报类型
        public string ReportType { get; set; }

    }

    public class OpsSummaryStep3PartAWFSign
    {
        public string FAE { get; set; }
        public string Operator { get; set; }
        public string QualAuditor { get; set; }
        public string Mechanic { get; set; }
        public string LineLeader { get; set; }
        public string Supervisor_P { get; set; }
        public string Superintendent { get; set; }
        public string Approver { get; set; }
        public string Approval1 { get; set; }
        public string Approval2 { get; set; }
        public string ConfirmTime { get; set; }
        public string ToBeConfirmedFlag { get; set; }
        public string ConfirDateMax { get; set; }


    }

    public class OpsSummaryStep3PartBHW
    {
        public string AgreeUnRed { get; set; }
        public string AgreeUnRedFlag { get; set; }
        public string FAE { get; set; }
        public string MCType { get; set; }
        public string MCTypeName { get; set; }
        public string MachineID { get; set; }
        public string McStyleNo { get; set; }
        public string WorkerID { get; set; }
        public string WorkerType { get; set; }
        public string OpsSN { get; set; }


        public string OpsNameEN { get; set; }
        public string OpsNameCN { get; set; }
        public string OpsNameBD { get; set; }

        //public string Temp_SP { get; set; }
        //public string Temp_XP { get; set; }
        //public string TempMeterStrap { get; set; }
        //public string Temp_SC { get; set; }
        //public string Temp_XC { get; set; }
        //public string Temp_FRC { get; set; }
        //public string Temp_YX { get; set; }
        //public string Temp_BW { get; set; }
        //public string Sped_SY { get; set; }
        //public string Disp_IsSyl { get; set; }
        //public string Sped_XY { get; set; }
        //public string Disp_IsXyl { get; set; }
        //public string Sped_CD { get; set; }
        //public string Pres_QX { get; set; }
        //public string Pres_HX { get; set; }
        //public string Pres_SPD { get; set; }
        //public string Pres_SCF { get; set; }
        //public string PressureStrap { get; set; }
        //public string Spec_Temp { get; set; }
        //public string Spec_Time { get; set; }
        //public string Spec_Pres { get; set; }
        //public string UltrasonicTimeDelay { get; set; }
        //public string UltrasonicTimeWelding { get; set; }
        //public string UltrasonicTimeHarden { get; set; }
        //public string UltrasonicRevolution { get; set; }
        //public string UltrasonicPressure { get; set; }
        //public string McStyleNo { get; set; }
        public string McName { get; set; }
        //public string Glue_Model { get; set; }
        //public string Glue_Thick { get; set; }
        //public string Glue_Width { get; set; }
        //public string SingleOrDouble { get; set; }


        /// <summary>
        /// Bonding--針縫規格
        /// </summary>
        public string Glue_Model { get; set; }
        public string Glue_Thick { get; set; }
        public string Glue_Width { get; set; }
        public string SingleOrDouble { get; set; }
        public string Temp_SP { get; set; }
        public string Temp_XP { get; set; }
        public string TempMeterStrap { get; set; }
        public string Temp_SC { get; set; }
        public string Temp_XC { get; set; }
        public string Temp_FRC { get; set; }
        public string Temp_YX { get; set; }
        public string Temp_BW { get; set; }
        public string Sped_SY { get; set; }
        public string Disp_IsSyl { get; set; }
        public string Sped_XY { get; set; }
        public string Disp_IsXyl { get; set; }
        public string Sped_CD { get; set; }
        public string Pres_QX { get; set; }
        public string Pres_HX { get; set; }
        public string Pres_SPD { get; set; }
        public string Pres_SCF { get; set; }
        public string PressureStrap { get; set; }

        /// <summary>
        /// Ultrasonic & Heat Pressing--粘縫規格
        /// </summary>
        public string UltrasonicTimeDelay { get; set; }
        public string UltrasonicTimeWelding { get; set; }
        public string UltrasonicTimeHarden { get; set; }
        public string UltrasonicRevolution { get; set; }
        public string UltrasonicPressure { get; set; }
        public string Spec_Temp { get; set; }
        public string Spec_Time { get; set; }
        public string Spec_Pres { get; set; }

        //表报类型
        public string ReportType { get; set; }

    }


    /// <summary>
    /// 選車時用到的衣車類
    /// </summary>
    public class SelectMachine
    {
        public int SortID { get; set; }
        public string MachineID { get; set; }
        public string Workshop { get; set; }
        public string Line { get; set; }
        public string Rpm { get; set; }

        /// <summary>
        /// 狀態ORL   Open、Reserve、Lock
        /// Open    可用狀態
        /// Reserve 保留狀態，LB4中使用了這臺衣車
        /// Lock    鎖定狀態， LB5中使用了這臺衣車 
        /// </summary>
        public string Status { get; set; }

        /// <summary>
        /// 工場 PM、B、F、A、E
        /// </summary>
        public string FAE { get; set; }

        public DateTime? StandbyDateTime { get; set; }

        public bool LB4YNSel { get; set; }
    }


    public partial class QNDeleteLog : BaseEntity
    {

    }

    public partial class ExcludeUser : BaseEntity
    {

    }

    public partial class LB5MatchingProposal : BaseEntity
    {
        //#region 以下屬性用于報表: ProposalReport LB5

        //public string OriginalWFID_R1a
        //{
        //    get { return this.RFlag == "R1a (Subsitute)" ? this.OriginalWF : ""; }
        //}

        //public string ProposalWFID_R1a
        //{
        //    get { return this.RFlag == "R1a (Subsitute)" ? this.ProposalWF : ""; }
        //}

        //public string ShowTick1
        //{
        //    get { return (this.Tick1 ?? false) == true ? "√" : ""; }
        //}

        //public string OriginalHWID_R1a
        //{
        //    get { return this.RFlag == "R1a (Subsitute)" ? this.OriginalHW : ""; }
        //}

        //public string ProposalHWID_R1a
        //{
        //    get { return this.RFlag == "R1a (Subsitute)" ? this.ProposalHW : ""; }
        //}

        //public string ShowTick2
        //{
        //    get { return (this.RFlag == "R1a (Subsitute)" && (this.Tick2 ?? false) == true) ? "√" : ""; }
        //}

        //public string OriginalWFID_R1b
        //{
        //    get { return this.RFlag == "R1b (Change back)" ? this.OriginalWF : ""; }
        //}

        //public string ProposalWFID_R1b
        //{
        //    get { return this.RFlag == "R1b (Change back)" ? this.ProposalWF : ""; }
        //}

        //public string ShowTick3
        //{
        //    get { return (this.RFlag == "R1b (Change back)" && (this.Tick1 ?? false) == true) ? "√" : ""; }
        //}

        //public string OriginalHWID_R1b
        //{
        //    get { return this.RFlag == "R1b (Change back)" ? this.OriginalHW : ""; }
        //}

        //public string ProposalHWID_R1b
        //{
        //    get { return this.RFlag == "R1b (Change back)" ? this.ProposalHW : ""; }
        //}

        //public string ShowTick4
        //{
        //    get { return (this.RFlag == "R1b (Change back)" && (this.Tick2 ?? false) == true) ? "√" : ""; }
        //}

        //public string ProposalWFID_R2a
        //{
        //    get { return this.RFlag1 == "R2a (Added)" ? this.ProposalWF1 : ""; }
        //}

        //public string ShowTick5
        //{
        //    get { return (this.RFlag1 == "R2a (Added)" && (this.Tick3 ?? false) == true) ? "√" : ""; }
        //}

        //public string ProposalHWID_R2a
        //{
        //    get { return this.RFlag1 == "R2a (Added)" ? this.ProposalHW1 : ""; }
        //}

        //public string ShowTick6
        //{
        //    get { return (this.RFlag1 == "R2a (Added)" && (this.Tick4 ?? false) == true) ? "√" : ""; }
        //}

        //public string OriginalWFID_R2b
        //{
        //    get { return this.RFlag1 == "R1b (Change back)" ? this.OriginalWF1 : ""; }
        //}

        //public string ShowTick7
        //{
        //    get { return (this.RFlag1 == "R1b (Change back)" && (this.Tick3 ?? false) == true) ? "√" : ""; }
        //}

        //public string OriginalHWID_R2b
        //{
        //    get { return this.RFlag1 == "R1b (Change back)" ? this.OriginalHW1 : ""; }
        //}

        //public string ShowTick8
        //{
        //    get { return (this.RFlag1 == "R1b (Change back)" && (this.Tick4 ?? false)) == true ? "√" : ""; }
        //}


        //#endregion



    }

    public partial class RedQNSendEmailConfig : BaseEntity
    {

    }

    //public class LB5MatchingWithLog
    //{
    //    public string Line { get; set; }
    //    public string QN { get; set; }
    //    public int? OperationSN { get; set; }
    //    public string FAE { get; set; }
    //    public string WFID_R1a { get; set; }
    //    public string HWID_R1a { get; set; }
    //    public string WFID_R1b { get; set; }
    //    public string HWID_R1b { get; set; }
    //    public string WFID_R2a { get; set; }
    //    public string HWID_R2a { get; set; }
    //    public string WFID_R2b { get; set; }
    //    public string HWID_R2b { get; set; }
    //}

    public class Step5DeploymentReArranging
    {
        public string Ref_Factory { get; set; }
        public string Ref_Line { get; set; }
        public string Ref_j_NO { get; set; }
        public string Ref_J2_job { get; set; }
        public string Ref_Rwo { get; set; }
        public string Ref_Qn { get; set; }
        public string Ref_Bcolor { get; set; }
        public DateTime? Ref_Date { get; set; }
        public string Ref_OTN { get; set; }

        public string Line { get; set; }
        public string CustStyle { get; set; }
        public string QN { get; set; }
        public int? TotalDesk { get; set; }
        public string RFlag { get; set; }
        public string ProcessingStage { get; set; }
        public int? OptsCount { get; set; }
        public string OptsSN { get; set; }
        public string FixedNew { get; set; }
        public string WFID_Original { get; set; }
        public string WFName_Original { get; set; }
        public string WFID_Proposal { get; set; }
        public string WFName_Proposal { get; set; }
        public string Tick1 { get; set; }
        public string HWID_Original { get; set; }
        public string HWName_Original { get; set; }
        public string HWID_Proposal { get; set; }
        public string HWName_Proposal { get; set; }
        public string Tick2 { get; set; }

    }

    public partial class LastApprovalData : BaseEntity
    {

    }

    public partial class RedQN : BaseEntity
    {
        //王生要求在alert中也显示红色和黄色警示, 由David加入2023-10-12

        //        Factory
        //LineCode
        //j_NO
        //J2_job
        //Rwo
        //Qn
        //Bcolor

        WPMaster _CurrentWPMaster;
        public WPMaster CurrentWPMaster
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                if (_CurrentWPMaster == null)
                {
                    _CurrentWPMaster = (CurrentDataContext as RAPLQDataContext).WPMasters.Where(p => p.Factory == Factory && p.LineCode == LineCode && p.j_NO == j_NO && p.J2_job == J2_job && p.Rwo == Rwo && p.Qn == Qn && p.Bcolor == Bcolor).FirstOrDefault();
                }
                return _CurrentWPMaster;
            }
        }

        public Boolean OneWeekFlag
        {
            get
            {
                if ((CurrentWPMaster.IsConfirmed ?? false) && CurrentWPMaster.Flag.IndexOf("s") > 0)
                {
                    return false;
                }

                if (CurrentWPMaster.YNConfirme)
                {
                    return false;
                }

                return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) >= 0 && Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) <= 7 ? true : false;
            }
        }
        public Boolean TwoWeekFlag
        {
            get
            {
                if ((CurrentWPMaster.IsConfirmed ?? false) && CurrentWPMaster.Flag.IndexOf("s") > 0)
                {
                    return false;
                }
                return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) >= 8 && Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) <= 14 ? true : false;
            }
        }

        public Boolean ThreeWeekFlag
        {
            get
            {
                if ((CurrentWPMaster.IsConfirmed ?? false) && CurrentWPMaster.Flag.IndexOf("s") > 0)
                {
                    return false;
                }
                return Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) >= 15 && Microsoft.VisualBasic.DateAndTime.DateDiff(Microsoft.VisualBasic.DateInterval.Day, System.DateTime.Today, Convert.ToDateTime(this.StartTime), Microsoft.VisualBasic.FirstDayOfWeek.Sunday, Microsoft.VisualBasic.FirstWeekOfYear.Jan1) <= 21 ? true : false;
            }
        }

        public bool YNConfirme
        {
            get
            {
                //string flg = this.Flag != null ? this.Flag : string.Empty;
                //bool confrm = this.IsConfirmed != null ? this.IsConfirmed.Value : false;
                //if (flg.IndexOf("s") > 0 && !confrm)
                //    return true;
                //return false;

                ////由David修改算法 2018-07-19
                //string flg = string.IsNullOrEmpty(this.Flag) ? "" : this.Flag;
                //bool confrm = this.IsConfirmed ?? false;

                //return (!confrm && flg.IndexOf("s") > 0) ||
                //       (!confrm && ((this.EndTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days <= 0) ||
                //       (!confrm && ((this.StartTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days == 0);

                //由David修改算法 2018-10-17
                string flg = string.IsNullOrEmpty(CurrentWPMaster.Flag) ? "" : CurrentWPMaster.Flag;
                bool confrm = CurrentWPMaster.IsConfirmed ?? false;

                if (confrm && flg.IndexOf("s") > 0)
                {
                    return false;
                }

                return (((CurrentWPMaster.EndTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days <= 0) ||
                       (((CurrentWPMaster.StartTime ?? DateTime.MinValue).Date - DateTime.Now.Date).Days <= 1);

            }
        }



        //public string AlertColor
        //{
        //    get
        //    {
        //        DateTime NextWorkDay = QNHelper.NextWorkDay(this.CurrentDataContext as RAPLQDataContext, this.Factory);
        //        DateTime QNStartDate = Convert.ToDateTime(this.StartTime).Date;
        //        if (QNStartDate <= NextWorkDay)
        //        {
        //            return "Red";
        //        }
        //        return "Yellow";
        //    }
        //}


        public string OptWsShow
        {
            get
            {
                if (this.OptWs == "P" || this.OptWs == "B")
                {
                    return this.OptWs;
                }
                else if (this.OptWs == "F" || this.OptWs == "E")
                {
                    return "S-" + this.OptWs;
                }
                else if (this.OptWs == "A")
                {
                    return "S-AL";
                }

                return "";
            }
        }

        //public string UpdateTimeShow
        //{
        //    get
        //    {
        //        return this.UpdateTime.HasValue ? (this.UpdateTime ?? DateTime.MinValue).ToString("yy-MM-dd HH:mm") : "";
        //    }
        //}

        public string StartAlertTimeShow
        {
            get
            {
                return this.StartAlertTime.HasValue ? (this.StartAlertTime ?? DateTime.MinValue).ToString("MM-dd HH:mm") : "";

                //string Str = (this.StartAlertTime ?? DateTime.MinValue).ToString("yy-MM-dd") + System.Environment.NewLine +
                //    (this.StartAlertTime ?? DateTime.MinValue).ToString("HH:mm");

                //return this.StartAlertTime.HasValue ? ((this.StartAlertTime ?? DateTime.MinValue).ToString("yy-MM-dd") +
                //    System.Environment.NewLine + (this.StartAlertTime ?? DateTime.MinValue).ToString("HH:mm")) : "";

            }
        }

        public string WsLocationShow
        {
            get
            {
                return this.Factory.Trim() + " - " + this.WsLocation.Trim();
            }

        }

        public string QNShow
        {
            get
            {
                return string.Format("{0}-{1}-{2}", this.Woc.Trim(), this.Rwo.Trim(), this.Qn.Trim());
                //return string.Format("{0}-{1}-{2}-{3}", this.J2_job.Trim(), this.Woc.Trim(), this.Rwo.Trim(), this.Qn.Trim());
            }
        }

        public string HasAlertLog
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();

                int LogCount = (this.CurrentDataContext as RAPLQDataContext).AlertLogHeaders.Where(p => p.Factory == this.Factory && p.LineCode == this.LineCode &&
                                p.j_NO == this.j_NO && p.J2_job == this.J2_job && p.Rwo == this.Rwo && p.Qn == this.Qn && p.Bcolor == this.Bcolor).Count();

                return LogCount > 0 ? "Y" : "";

            }
        }

    }

    public partial class AlertLogCategory : BaseEntity
    {

    }

    public partial class AlertLogHeader : BaseEntity
    {
        partial void OnIsCompletedChanged()
        {
            this.CompletedDate = (this.IsCompleted ?? false) ? DateTime.Now : new Nullable<DateTime>();
        }
    }

    public partial class AlertLogDetail : BaseEntity
    {
        public override void AddNew()
        {
            base.AddNew();
            this.Sender = PH.Platform.Common.SysParamHelper.Instance.UserID;
        }
    }


    //用於Summary of sHW by Group報表

    public class SummarysHWGroupHeaderResult
    {
        public string Factory { get; set; }
        public string HWGroup { get; set; }
        public string HWGroupNameEN { get; set; }
        public string HWType { get; set; }
        public string HWNameEN { get; set; }
        public string HWNameCN { get; set; }

        public int YearQty1 { get; set; }
        public int YearQty2 { get; set; }
        public int YearQty3 { get; set; }
        public int YearQty4 { get; set; }
        public int YearQty5 { get; set; }
        public int HWQty { get; set; }

        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int FactoryCostQty { get; set; }
        public int HeadOfficeCostQty { get; set; }

    }

    public class SummarysHWGroupSubReportResult1
    {
        public string SeqNo { get; set; }
        public string HWGroup { get; set; }
        public string HWGroupNameEn { get; set; }
        public int YearQty1 { get; set; }
        public int YearQty2 { get; set; }
        public int YearQty3 { get; set; }
        public int YearQty4 { get; set; }
        public int YearQty5 { get; set; }
        public int HWQty { get; set; }

        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int FactoryCostQty { get; set; }
        public int HeadOfficeCostQty { get; set; }

        public string TotalShowText { get; set; }

        public double PerYearQty1 { get; set; }
        public double PerYearQty2 { get; set; }
        public double PerYearQty3 { get; set; }
        public double PerYearQty4 { get; set; }
        public double PerYearQty5 { get; set; }

        public double PerDeploymentYesQty { get; set; }
        public double PerDeploymentNonQty { get; set; }
        public double PerHeadOfficeCostQty { get; set; }
        public double PerFactoryCostQty { get; set; }
    }

    public class SummarysHWGroupSubReportResult2
    {
        public string Factory { get; set; }
        public int YearQty1 { get; set; }
        public int YearQty2 { get; set; }
        public int YearQty3 { get; set; }
        public int YearQty4 { get; set; }
        public int YearQty5 { get; set; }
        public int HWQty { get; set; }

        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int FactoryCostQty { get; set; }
        public int HeadOfficeCostQty { get; set; }

        public string TotalShowText { get; set; }

        public double PerYearQty1 { get; set; }
        public double PerYearQty2 { get; set; }
        public double PerYearQty3 { get; set; }
        public double PerYearQty4 { get; set; }
        public double PerYearQty5 { get; set; }

        public double PerDeploymentYesQty { get; set; }
        public double PerDeploymentNonQty { get; set; }
        public double PerHeadOfficeCostQty { get; set; }
        public double PerFactoryCostQty { get; set; }
    }



    public partial class PurchasePlanHeader : BaseEntity
    {
    }

    public partial class PurchasePlanDetail : BaseEntity
    {
        public string PurchaseNo { get { return this.PurchasePlanHeader.PurchaseNo; } }
        public DateTime? PurchaseDate { get { return this.PurchasePlanHeader.PurchaseDate; } }
        public string PaymentTerm { get { return this.VendorObject.PaymentTerm; } }
        public string Incoterms { get { return this.VendorObject.Incoterms; } }
        public string Manufacturer { get { return this.VendorObject.Manufacturer; } }
        public string Beneficiary { get { return this.VendorObject.Beneficiary; } }

        private Vendor VendorObject
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
            }
        }

        public string VendorShortName { get { return this.VendorObject == null ? "" : this.VendorObject.ShortName; } }
        //public string VendorNameCN { get { return this.VendorObject == null ? "" : this.VendorObject.Name_TW; } }

        private BaseCode HWTypeObject
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                }
                return (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWTypeCode);
            }

        }

        public string HWTypeDescriptionCN { get { return HWTypeObject == null ? "" : this.HWTypeObject.Name; } }
        public string HWTypeDescriptionEN { get { return HWTypeObject == null ? "" : this.HWTypeObject.NameEN; } }

        public string HWGroupCode { get { return this.HWTypeObject == null ? "" : this.HWTypeObject.Description; } }

        private Buyer SellerObject
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                return (this.CurrentDataContext as RAPLQDataContext).Buyers.FirstOrDefault(p => p.Code == this.SellerCode);
            }
        }

        public string SellerNameEN { get { return SellerObject == null ? "" : this.SellerObject.Name_EN; } }

        public string HSCode
        {
            get
            {
                return HWTypeObject == null ? "" : this.HWTypeObject.HSCode;
            }
        }


        public double? Amount1
        {
            get
            {
                if (!this.UnitPrice.HasValue || !this.Qty1.HasValue) return null;
                return (this.UnitPrice ?? 0) * (this.Qty1 ?? 0);
            }
        }

        public double? Amount2
        {
            get
            {
                if (!this.UnitPrice.HasValue || !this.Qty2.HasValue) return null;
                return (this.UnitPrice ?? 0) * (this.Qty2 ?? 0);
            }
        }

        public double? Amount3
        {
            get
            {
                if (!this.UnitPrice.HasValue || !this.Qty3.HasValue) return null;
                return (this.UnitPrice ?? 0) * (this.Qty3 ?? 0);
            }
        }

        public double? Amount4
        {
            get
            {
                if (!this.UnitPrice.HasValue || !this.Qty4.HasValue) return null;
                return (this.UnitPrice ?? 0) * (this.Qty4 ?? 0);
            }
        }

        public bool IsOutstanding
        {
            get
            {
                int ShipmentQty = this.ShipmentCount ?? 0;

                if (ShipmentQty == 0)
                {
                    return true;
                }

                if ((this.ShipmentCount ?? 0) == 1)
                {
                    return !(this.IsPOConfirm1 ?? false);
                }
                else if ((this.ShipmentCount ?? 0) == 2)
                {
                    return !(this.IsPOConfirm1 ?? false) || !(this.IsPOConfirm2 ?? false);
                }
                else if ((this.ShipmentCount ?? 0) == 3)
                {
                    return !(this.IsPOConfirm1 ?? false) || !(this.IsPOConfirm2 ?? false) || !(this.IsPOConfirm3 ?? false);
                }
                else if ((this.ShipmentCount ?? 0) == 4)
                {
                    return !(this.IsPOConfirm1 ?? false) || !(this.IsPOConfirm2 ?? false) || !(this.IsPOConfirm3 ?? false) || !(this.IsPOConfirm4 ?? false);
                }

                return false;
            }
        }

        public string Status
        {
            get
            {
                return this.IsOutstanding ? "Outstanding" : "Completed";
            }
        }

        //public string IsPOConfirm1Show { get { return (this.IsPOConfirm1 ?? false) ? "√" : ""; } }
        //public string IsPOConfirm2Show { get { return (this.IsPOConfirm2 ?? false) ? "√" : ""; } }
        //public string IsPOConfirm3Show { get { return (this.IsPOConfirm3 ?? false) ? "√" : ""; } }
        //public string IsPOConfirm4Show { get { return (this.IsPOConfirm4 ?? false) ? "√" : ""; } }
    }

    //用于dWF List Report
    public class dWFListResult
    {
        public string Factory { get; set; }
        public string JobTitleCode { get; set; }
        public string JobTitleEn { get; set; }
        public string JobTitleCn { get; set; }
        public int dWFCount { get; set; }
        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int FactoryCostQty { get; set; }
        public int HeadOfficeCostQty { get; set; }

        public int B { get; set; }
        public int F { get; set; }
        public int A { get; set; }
        public int E { get; set; }
        public int StrapMaking { get; set; }
        public int PadPrint { get; set; }
        public int FactorySortID { get; set; }
        public int OtherWs { get; set; }
        public int PPWs { get; set; }
        public int OtherDept { get; set; }

        public string DescriptionShow { get { return JobTitleEn + " | " + JobTitleCn; } set { } }

        public string BShow { get { return string.Format("{0} | {1}", B.ToString(), (1.00 * this.B / this.dWFCount).ToString("p")); } set { } }
        public string FShow { get { return string.Format("{0} | {1}", F.ToString(), (1.00 * this.F / this.dWFCount).ToString("p")); } set { } }
        public string AShow { get { return string.Format("{0} | {1}", A.ToString(), (1.00 * this.A / this.dWFCount).ToString("p")); } set { } }
        public string EShow { get { return string.Format("{0} | {1}", E.ToString(), (1.00 * this.E / this.dWFCount).ToString("p")); } set { } }
        public string StrapMakingShow { get { return string.Format("{0} | {1}", StrapMaking.ToString(), (1.00 * this.StrapMaking / this.dWFCount).ToString("p")); } set { } }
        public string PadPrintShow { get { return string.Format("{0} | {1}", PadPrint.ToString(), (1.00 * this.PadPrint / this.dWFCount).ToString("p")); } set { } }

        public string OtherWsShow { get { return string.Format("{0} | {1}", OtherWs.ToString(), (1.00 * this.OtherWs / this.dWFCount).ToString("p")); } set { } }
        public string PPwsShow { get { return string.Format("{0} | {1}", PPWs.ToString(), (1.00 * this.PPWs / this.dWFCount).ToString("p")); } set { } }

        public string OtherDeptShow { get { return string.Format("{0} | {1}", OtherDept.ToString(), (1.00 * this.OtherDept / this.dWFCount).ToString("p")); } set { } }

        public bool QtyDiffShowRed //数量不相等时显示红色
        {
            get
            {
                return (dWFCount != (PadPrint + StrapMaking + B + A + E + PPWs + OtherWs));
            }
        }
    }

    public class dWFListResult_Sub
    {
        public string Factory { get; set; }
        public int dWFQty { get; set; }
        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int HeadOfficeCostQty { get; set; }
        public int FactoryCostQty { get; set; }
        public int B { get; set; }
        public int F { get; set; }
        public int A { get; set; }
        public int E { get; set; }
        public int StrapMaking { get; set; }
        public int PadPrint { get; set; }
        public int OtherWs { get; set; }
        public int PPWs { get; set; }
        public int OtherDept { get; set; }

        public decimal PerDeploymentYesQty { get; set; }
        public decimal PerDeploymentNonQty { get; set; }
        public decimal PerHeadOfficeCostQty { get; set; }
        public decimal PerFactoryCostQty { get; set; }
        public decimal PerB { get; set; }
        public decimal PerF { get; set; }
        public decimal PerA { get; set; }
        public decimal PerE { get; set; }
        public decimal PerStrapMaking { get; set; }
        public decimal PerPadPrint { get; set; }
        public decimal PerOtherWs { get; set; }
        public decimal PerPPWs { get; set; }
        public decimal PerOtherDept { get; set; }

    }

    //用於WF List Report

    public class WFListReportResult
    {
        public string Factory { get; set; }
        public string JobTitleCode { get; set; }
        public string JobTitleEn { get; set; }
        public string JobTitleCn { get; set; }

        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int HeadOfficeCostQty { get; set; }
        public int FactoryCostQty { get; set; }

        public int WFQty { get; set; }

        public int Qty_PDDept { get; set; }
        public int Qty_AdminDept { get; set; }
        public int Qty_QADept { get; set; }
        public int Qty_WarehouseDept { get; set; }
        public int Qty_CuttingDept { get; set; }
        public int Qty_MouldingDept { get; set; }
        public int Qty_SewingDept { get; set; }
        public int Qty_PackingDept { get; set; }
        public int Qty_MEDept { get; set; }
        public int FactorySortID { get; set; }

        public string DescriptionShow { get { return JobTitleEn + " | " + JobTitleCn; } set { } }


        public string PDDeptShow { get { return string.Format("{0} | {1}", this.Qty_PDDept.ToString(), (1.00 * this.Qty_PDDept / this.WFQty).ToString("p")); } set { } }
        public string AdminDeptShow { get { return string.Format("{0} | {1}", this.Qty_AdminDept.ToString(), (1.00 * this.Qty_AdminDept / this.WFQty).ToString("p")); } set { } }
        public string QADeptShow { get { return string.Format("{0} | {1}", this.Qty_QADept.ToString(), (1.00 * this.Qty_QADept / this.WFQty).ToString("p")); } set { } }
        public string WarehouseDeptShow { get { return string.Format("{0} | {1}", this.Qty_WarehouseDept.ToString(), (1.00 * this.Qty_WarehouseDept / this.WFQty).ToString("p")); } set { } }
        public string CuttingDeptShow { get { return string.Format("{0} | {1}", this.Qty_CuttingDept.ToString(), (1.00 * this.Qty_CuttingDept / this.WFQty).ToString("p")); } set { } }
        public string MouldingDeptShow { get { return string.Format("{0} | {1}", this.Qty_MouldingDept.ToString(), (1.00 * this.Qty_MouldingDept / this.WFQty).ToString("p")); } set { } }
        public string SewingDeptShow { get { return string.Format("{0} | {1}", this.Qty_SewingDept.ToString(), (1.00 * this.Qty_SewingDept / this.WFQty).ToString("p")); } set { } }
        public string PackingDeptShow { get { return string.Format("{0} | {1}", this.Qty_PackingDept.ToString(), (1.00 * this.Qty_PackingDept / this.WFQty).ToString("p")); } set { } }
        public string MEDeptShow { get { return string.Format("{0} | {1}", this.Qty_MEDept.ToString(), (1.00 * this.Qty_MEDept / this.WFQty).ToString("p")); } set { } }


    }

    public class WFListReportResult_Sub
    {

        public string Factory { get; set; }
        public int WFQty { get; set; }

        public int DeploymentYesQty { get; set; }
        public int DeploymentNonQty { get; set; }
        public int HeadOfficeCostQty { get; set; }
        public int FactoryCostQty { get; set; }
        public int Qty_PDDept { get; set; }
        public int Qty_AdminDept { get; set; }
        public int Qty_QADept { get; set; }
        public int Qty_WarehouseDept { get; set; }
        public int Qty_CuttingDept { get; set; }
        public int Qty_MouldingDept { get; set; }
        public int Qty_SewingDept { get; set; }
        public int Qty_PackingDept { get; set; }
        public int Qty_MEDept { get; set; }

        public decimal PerDeploymentYesQty { get; set; }
        public decimal PerDeploymentNonQty { get; set; }
        public decimal PerHeadOfficeCostQty { get; set; }
        public decimal PerFactoryCostQty { get; set; }
        public decimal PerQty_PDDept { get; set; }
        public decimal PerQty_AdminDept { get; set; }
        public decimal PerQty_QADept { get; set; }
        public decimal PerQty_WarehouseDept { get; set; }
        public decimal PerQty_CuttingDept { get; set; }
        public decimal PerQty_MouldingDept { get; set; }
        public decimal PerQty_SewingDept { get; set; }
        public decimal PerQty_PackingDept { get; set; }
        public decimal PerQty_MEDept { get; set; }


        public string DeploymentYesQtyShow { get { return string.Format("{0}({1})%", DeploymentYesQty, PerDeploymentYesQty.ToString("F2")); } set { } }
        public string DeploymentNonQtyShow { get { return string.Format("{0}({1})%", DeploymentNonQty, PerDeploymentNonQty.ToString("F2")); } set { } }
        public string HeadOfficeCostQtyShow { get { return string.Format("{0}({1})%", HeadOfficeCostQty, PerHeadOfficeCostQty.ToString("F2")); } set { } }
        public string FactoryCostQtyShow { get { return string.Format("{0}({1})%", FactoryCostQty, PerFactoryCostQty.ToString("F2")); } set { } }
        public string Qty_PDDeptShow { get { return string.Format("{0}({1})%", Qty_PDDept, PerQty_PDDept.ToString("F2")); } set { } }
        public string Qty_AdminDeptShow { get { return string.Format("{0}({1})%", Qty_AdminDept, PerQty_AdminDept.ToString("F2")); } set { } }
        public string Qty_QADeptShow { get { return string.Format("{0}({1})%", Qty_QADept, PerQty_QADept.ToString("F2")); } set { } }
        public string Qty_WarehouseDeptShow { get { return string.Format("{0}({1})%", Qty_WarehouseDept, PerQty_WarehouseDept.ToString("F2")); } set { } }
        public string Qty_CuttingDeptShow { get { return string.Format("{0}({1})%", Qty_CuttingDept, PerQty_CuttingDept.ToString("F2")); } set { } }
        public string Qty_MouldingDeptShow { get { return string.Format("{0}({1})%", Qty_MouldingDept, PerQty_MouldingDept.ToString("F2")); } set { } }
        public string Qty_SewingDeptShow { get { return string.Format("{0}({1})%", Qty_SewingDept, PerQty_SewingDept.ToString("F2")); } set { } }
        public string Qty_PackingDeptShow { get { return string.Format("{0}({1})%", Qty_PackingDept, PerQty_PackingDept.ToString("F2")); } set { } }
        public string Qty_MEDeptShow { get { return string.Format("{0}({1})%", Qty_MEDept, PerQty_MEDept.ToString("F2")); } set { } }

    }


    //public class WFListReportResult
    //{
    //    public string Factory { get; set; }
    //    public string JobTitleCode { get; set; }
    //    public string JobTitleEn { get; set; }
    //    public string JobTitleCn { get; set; }
    //    public string TitleType { get; set; }
    //    public string TitleTypeEn { get; set; }
    //    public string TitleTypeCn { get; set; }

    //    public int YearQty1 { get; set; }
    //    public int YearQty2 { get; set; }
    //    public int YearQty3 { get; set; }
    //    public int YearQty4 { get; set; }
    //    public int YearQty5 { get; set; }
    //    public int WFQty { get; set; }

    //    public int DeploymentYesQty { get; set; }
    //    public int DeploymentNonQty { get; set; }
    //    public int FactoryCostQty { get; set; }
    //    public int HeadOfficeCostQty { get; set; }
    //}

    //public class WFListReportSubReportResult1
    //{
    //    //public string SeqNo { get; set; }
    //    public string TitleType { get; set; }
    //    public string TitleTypeEn { get; set; }
    //    public int YearQty1 { get; set; }
    //    public int YearQty2 { get; set; }
    //    public int YearQty3 { get; set; }
    //    public int YearQty4 { get; set; }
    //    public int YearQty5 { get; set; }
    //    public int WFQty { get; set; }

    //    public string TotalShowText { get; set; }

    //    public int DeploymentYesQty { get; set; }
    //    public int DeploymentNonQty { get; set; }
    //    public int FactoryCostQty { get; set; }
    //    public int HeadOfficeCostQty { get; set; }

    //    public double PerYearQty1 { get; set; }
    //    public double PerYearQty2 { get; set; }
    //    public double PerYearQty3 { get; set; }
    //    public double PerYearQty4 { get; set; }
    //    public double PerYearQty5 { get; set; }


    //    public double PerDeploymentYesQty { get; set; }
    //    public double PerDeploymentNonQty { get; set; }
    //    public double PerHeadOfficeCostQty { get; set; }
    //    public double PerFactoryCostQty { get; set; }
    //}

    //public class WFListReportSubReportResult2
    //{
    //    public string Factory { get; set; }
    //    public int YearQty1 { get; set; }
    //    public int YearQty2 { get; set; }
    //    public int YearQty3 { get; set; }
    //    public int YearQty4 { get; set; }
    //    public int YearQty5 { get; set; }
    //    public int WFQty { get; set; }

    //    public string TotalShowText { get; set; }

    //    public int DeploymentYesQty { get; set; }
    //    public int DeploymentNonQty { get; set; }
    //    public int FactoryCostQty { get; set; }
    //    public int HeadOfficeCostQty { get; set; }

    //    public double PerYearQty1 { get; set; }
    //    public double PerYearQty2 { get; set; }
    //    public double PerYearQty3 { get; set; }
    //    public double PerYearQty4 { get; set; }
    //    public double PerYearQty5 { get; set; }


    //    public double PerDeploymentYesQty { get; set; }
    //    public double PerDeploymentNonQty { get; set; }
    //    public double PerHeadOfficeCostQty { get; set; }
    //    public double PerFactoryCostQty { get; set; }
    //}

    //public partial class PurchaseProcess : BaseEntity
    //{
    //    public string HWCategoryCode
    //    {
    //        get
    //        {
    //            if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
    //            var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWType);
    //            return obj == null ? "" : obj.HWCategoryCodeOfHWType;
    //        }
    //    }

    //    public string HWGroupCode
    //    {
    //        get
    //        {
    //            if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
    //            var obj = (this.CurrentDataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "METHODTYPE" && p.Code == this.HWType);
    //            return obj == null ? "" : obj.Description;
    //        }
    //    }


    //    public string VendorName
    //    {
    //        get
    //        {
    //            if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
    //            Vendor vendor = (this.CurrentDataContext as RAPLQDataContext).Vendors.FirstOrDefault(p => p.Code == this.VendorCode);
    //            return vendor == null ? "" : vendor.ShortName;
    //        }
    //    }

    //    public decimal TotalAmount
    //    {
    //        get { return (this.UnitPrice ?? 0) * (this.ItemQty ?? 0); }
    //    }
    //}

    public partial class Committee : BaseEntity
    {

    }

    public partial class CommitteeMember : BaseEntity
    {

        private WorkForce MemberEmployee
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                WorkForce obj = (this.CurrentDataContext as RAPLQDataContext).WorkForces.FirstOrDefault(p => p.Id == this.EmployeeID);
                return obj;
            }
        }

        public string MemberNameEN
        {
            get
            {
                WorkForce obj = this.MemberEmployee;
                return obj == null ? "" : obj.NameEn;
            }
        }

        public string MemberNameCN
        {
            get
            {
                WorkForce obj = this.MemberEmployee;
                return obj == null ? "" : obj.NameCn;
            }
        }
    }

}

