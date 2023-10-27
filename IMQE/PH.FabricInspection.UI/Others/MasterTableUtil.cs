using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.FabricInspection.BO;
using System.Globalization;
using System.Data;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.MIDc.BO;

namespace PH.FabricInspection.UI
{
    class MasterTableUtil
    {
        public static void RecalcMasterValue(FabricInspectionDataContext ADB, Fabric_Insp_Header temp)
        {
            if (string.IsNullOrEmpty(temp.Status))
            {
                temp.Status = "WIP";
            }

            if (temp.Actual_Weight == null)
            {
                temp.Actual_Weight = 0;
            }

            if (temp.Supplier_Code == "") temp.Supplier_Code = null;
            if (temp.Spread_Insp_Result == "") temp.Spread_Insp_Result = null;
            if (temp.Mould_Trial_Result == "") temp.Mould_Trial_Result = null;
            if (temp.Color_Group_Status == "") temp.Color_Group_Status = null;
            if (temp.Spread_Remark == "") temp.Spread_Remark = null;
            if (temp.IQC_Reference == "") temp.IQC_Reference = null;
            if (temp.Mould_Trial_Remark == "") temp.Mould_Trial_Remark = null;

            if (temp.ProjectNo == "") temp.ProjectNo = null;


            if (temp.Stock_In_Date == null)
            {

                if ((temp.Lot_Id != null) && (temp.Lot_Id.Length >= 6))
                {
                    temp.Stock_In_Date = temp.Lot_Id.Substring(0, 6);
                }
            }




            /*
             * 1.	板數1的扣分按實際算應該是7分,但由於每板扣分最多不能超過4分,所以板數1的扣分等於4;以此內推,板數2的扣分等於4;板數3的扣分等於4;板數4的扣分等於2.
               2.	A  = 每板扣分的累加= 4 + 4 + 4 + 2 = 14
             */

            //Xsj(補):計算總的扣數
            temp.Total_Points = calcTotalPoints(ADB, temp);

            /* 
             B  = 每百平方米的平均罰分(Points hundred SQM)
                = A * 10000/Usable Width/Inspection Length
                = 14 * 10000 / 20 / 48
                = 145.833
             */
            /*  
            B  = 每百平方米的平均罰分(Points hundred SQM)
               = [A /(Usable Width(m)*Inspection Length(m))] * 100
               = [14 * / (20*0.001 * 48)] * 100
               = 
             */
            if ((temp.Usable_Width == 0) || (temp.Insp_Length == 0))
            {
                temp.Points_Hundred_SQM = 0;
            }
            else
            {
                //temp.Points_Hundred_SQM = temp.Total_Points / (temp.Usable_Width * (decimal)0.001) / temp.Insp_Length + * 100;
                temp.Points_Hundred_SQM = temp.Total_Points / (temp.Usable_Width) / (temp.Insp_Length + temp.PH_Sample) * 100;  //由David修改 2020-10-09
            }

            //Xsj20120702:調整計算順序，將該語句提前至此，先計算費料率，再計算扣數量
            //temp.Wastage = calcTotalWastage(temp); //损耗率放到存储过程中计算 2020-10-23


            /*
             C  = (B - 30) * 0.25  * Supplier Length / 100
                = (145.833 – 30) * 0.25 * 47 / 100
                = 13.61
             */

            //由David注释掉 2020-10-23， Deductive_Qty栏位放到存储过程中计算
            //if ((temp.Usable_Width == 0) || (temp.Insp_Length == 0))
            //{
            //    temp.Deductive_Qty = 0;
            //}
            //else
            //{
            //    //temp.Deductive_Qty = (temp.Points_Hundred_SQM - 30) * ((decimal)0.25 * temp.Actual_Length / 100); //sharly 2010/11/15
            //    temp.Deductive_Qty = temp.Wastage * temp.Insp_Length;
            //}




            /*
             D  = 局部疵點損耗率 + 緯向損耗率 

                如果在一板中既存在程度1,2,3,又存在程度4是散布疵點
                那麽只需要計算緯向損耗率,不需要計算局部疵點損耗率.
                算法如下:
                局部疵點損耗率 = [程度1,2,3的疵點分數累加(每板分數超過4分的按4分計算) *  (Panle Size1 * Panle Size2) ] / [(Usable Width/10 )* (Inspection Length*10)]
                               =[(第一板的4分 + 第三板的4分 + 第四板的2分 ) * ( 10 *10)] /( 20/10) * (48 *10)
                               = 10 * 100 /10*480
                               = 48000

                緯向損耗率     =  Panle Size1 /  Inspection Length * 10
                               =  10 / 48 * 10
                               =  0.0208

            */

            /*
             D  = 局部疵點損耗率 + 緯向損耗率 

                如果在一板中既存在程度1,2,3,又存在程度4是散布疵點
                那麽只需要計算緯向損耗率,不需要計算局部疵點損耗率.
                算法如下:
                局部疵點損耗率 = [程度1,2,3的疵點分數累加(每板分數超過4分的按4分計算) *  (Panle Size1 * Panle Size2) ] / [(Usable Width/10 )* (Inspection Length*10)]
                               =[(第一板的4分 + 第三板的4分 + 第四板的2分 ) * ( 10 *10)] /[( 20/10) * (48 *10)]
                               = 10 * 100 /[10*480]
                               = 48000

                緯向損耗率     =  Panle Size1* 程度4的个数 /  Inspection Length 

                */

            //Xsj20120702:該語句被提前到計算Deductive_Qty之前
            //temp.Wastage = calcTotalWastage(temp);


            //===========================

            //由David修改Spread_Defect_Exist的算法, 2020-10-16
            //Defect Nature, 是否應該考慮改為Regular, Irregular, Both, None四個選擇?
            //1) 只有4 pt. ==> Irregular
            //2) 只有 Regular ==> Regular
            //3) Irregular + Regular ==> Both
            //4) Irregular 及 Regular均沒有 ==> None

            //bool HasRegular = temp.Fabric_Insp_SpreadDefects.Count > 0;
            //bool HasIrregular = temp.Fabric_Insp_PartDefects.Count > 0;

            //string LotID = temp.Lot_Id.Substring(0, temp.Lot_Id.Length - 2); //Lot_ID前13位
            //bool HasRegular = ADB.Fabric_Insp_SpreadDefects.Where(p => p.Fabric_Insp_Header.Lot_Id.StartsWith(LotID)).Count() > 0;
            //bool HasIrregular = ADB.Fabric_Insp_PartDefects.Where(p => p.Fabric_Insp_Header.Lot_Id.StartsWith(LotID)).Count() > 0;

            //if (HasRegular && HasIrregular) temp.Spread_Defect_Exist = "Both";
            //else if (HasRegular) temp.Spread_Defect_Exist = "Regular";
            //else if (HasIrregular) temp.Spread_Defect_Exist = "Irregular";
            //else temp.Spread_Defect_Exist = "None";

            //if (temp.Spread_Defect_Exist == "Irregular" || temp.Spread_Defect_Exist == "None") //应shelley加入 2020-11-03

            string LotID = temp.Lot_Id.Substring(0, temp.Lot_Id.Length - 2); //Lot_ID前13位
            bool HasRegular = ADB.Fabric_Insp_SpreadDefects.Where(p => p.Fabric_Insp_Header.Lot_Id.StartsWith(LotID)).Count() > 0;
            if (!HasRegular)
            {
                temp.AgreedByCutting = "n.a.";
            }

            //if (temp.Fabric_Insp_SpreadDefects.Count > 0)
            //{
            //    temp.Spread_Defect_Exist = RecordStatus.Exist;
            //}
            //else
            //{
            //    temp.Spread_Defect_Exist = RecordStatus.Inexistence;
            //}

            //==================
            /*．判斷物料的質檢結果要通過四個地方：
6．1． 第一個地方： 通過質檢人員輸入的局部性疵點可以計算出物料的質檢結果是OK/Deduct/Return
6．2． 第二個地方： 通過質檢人員輸入的散布性疵點去處理物料的質檢結果是OK/Deduct/Return
6．3． 第三個地方： 通過MOULD TRIAL去處理物料的質檢結果是OK/Return
6．3． 第四個地方： 色組是否相同來判斷質檢結果是OK/Return
*/
            //temp.Insp_Result = RecordStatus.STATUS_OK;

            //6．1． 第一個地方： 通過質檢人員輸入的局部性疵點可以計算出物料的質檢結果是OK/Deduct/Return
            ////                i.     該匹布是否OK還是Deduct或者退貨的判斷標準:(該標準是唯一的)
            //// 平均罰分 <= 30     - OK
            ////                 30 < 平均罰分 <= 50     - Deduct 
            ////                     平均罰分  > 50     - 退貨
            ////ii.	System No  - Made in :YYMMDDXXX  ( 70412XXX) XXX = SEQ NO
            //bool deductiveExists = false;
            //bool rejectExists = false;

            //n.a.
            //F - Replenish
            //F - Replace
            //F - Duduct
            //Pass
            //M. Pass

            //if (temp.Points_Hundred_SQM <= 30)
            //{
            //    temp.Party_Insp_Result = "Pass"; //RecordStatus.STATUS_OK;
            //}
            //else if ((temp.Points_Hundred_SQM > 30) && (temp.Points_Hundred_SQM <= 50))
            //{
            //    temp.Party_Insp_Result = "M. Pass"; //RecordStatus.STATUS_DEDUCTIVE;
            //    deductiveExists = true;
            //}
            //else
            //{
            //    temp.Party_Insp_Result = "Fail"; //RecordStatus.STATUS_REJECT;
            //    rejectExists = true;
            //}

            #region Insp_Result 在UI上已經改名為：Zb) Overall Result, 改為由用戶手動輸入，由David注釋 2020-09-30
            //if (rejectExists)
            //{
            //    temp.Insp_Result = RecordStatus.STATUS_REJECT;
            //}
            //else if (deductiveExists)
            //{
            //    if ((temp.Insp_Result == null) || (temp.Insp_Result != RecordStatus.STATUS_REJECT))
            //    {
            //        temp.Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
            //    }
            //}
            //else
            //{
            //    temp.Insp_Result = RecordStatus.STATUS_OK;
            //}

            ////6．2． 第二個地方： 通過質檢人員輸入的散布性疵點去處理物料的質檢結果是OK/Deduct/Return

            //if (temp.Spread_Insp_Result == RecordStatus.STATUS_REJECT)
            //{
            //    temp.Insp_Result = RecordStatus.STATUS_REJECT;
            //}
            //else if (temp.Spread_Insp_Result == RecordStatus.STATUS_DEDUCTIVE)
            //{
            //    if (temp.Insp_Result != RecordStatus.STATUS_REJECT)
            //    {
            //        temp.Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
            //    }
            //}

            ////6．3． 第三個地方： 通過MOULD TRIAL去處理物料的質檢結果是OK/Return
            //if (temp.Mould_Trial_Result == RecordStatus.STATUS_REJECT)
            //{
            //    temp.Insp_Result = RecordStatus.STATUS_REJECT;
            //}
            //else if (temp.Mould_Trial_Result == RecordStatus.STATUS_DEDUCTIVE)
            //{
            //    if (temp.Insp_Result != RecordStatus.STATUS_REJECT)
            //    {
            //        temp.Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
            //    }
            //}

            ////6．3． 第四個地方： 色組是否相同來判斷質檢結果是OK/Return
            //if (temp.Color_Group_Status != null)
            //{
            //    if (temp.Color_Group_Status.ToLower() == "REJECT")
            //    {
            //        temp.Insp_Result = RecordStatus.STATUS_REJECT;
            //    }
            //}

            //當 P1a*) Part I -  Defect RESULT * = A + , 其它Result  (Ld / Wg) / Td) / P3a  都 為 A , Zb) Overall RESULT * = A+
            //其它情況  Zb) Overall RESULT * 取  P1a*)  /Ld / Wg) / Td) / P3a  最低等級

            #endregion

            //Shelley要求自动计算的字段处理 由David加入 2020-10-20

            // id Irregular Defect Result 处理
            // Dk) id Ir.D. Result只有3種結果：Pass (dd<28), M.Pass (dd>=28, dd<=50), Fail (dd>50)
            if (temp.Points_Hundred_SQM < 28)
            {
                temp.Party_Insp_Result = "Pass";
            }
            else if (temp.Points_Hundred_SQM >= 28 && temp.Points_Hundred_SQM <= 50)
            {
                temp.Party_Insp_Result = "M. Pass";
            }
            else if (temp.Points_Hundred_SQM > 50)
            {
                temp.Party_Insp_Result = "Fail";
            }

            //// id Regular Defect Result处理 (Spread_Defect_Exist栏位是指Defect Nature)
            //// 2020-10-26 应Joe的要求修改: Dp) id R.D. Result只有2種結果：Fail (存在Regular defect), n.a. (不存在Regular defect)
            //if (temp.Spread_Defect_Exist == "Regular" || temp.Spread_Defect_Exist == "Both")
            //{
            //    temp.RegularDefectResult = "Fail";
            //}
            //else
            //{
            //    temp.RegularDefectResult = "n.a.";
            //}

            //else if (temp.Special_Marker == 0) //Evade Mark Loss %
            //{
            //    temp.RegularDefectResult = "Pass";
            //}
            //else if (temp.Special_Marker >= 100)
            //{
            //    temp.RegularDefectResult = "F - Replace";
            //}
            //else if (temp.Special_Marker > 0 && temp.Special_Marker < 100)
            //{
            //    temp.RegularDefectResult = "F - Replenish";
            //}

            //We) result处理
            //Wd) Result by batch只有兩種結果：Pass (wc>=0), Fail (wc<0)
            temp.WidthResult = temp.ShortWidthPercent < 0 ? "B" : "A";

            //Thomas提出的要求修改Le) result處理的算法 2020-10-22
            //只要 Diff Length % by Lot >= 0 就為Pass，否則為Fail   
            //Ld) Result by clr只有2種結果：Pass (lg>=0), Fail (lg<0)
            //temp.LengthResult = temp.DiffLengthAveByLot >= 0 ? "Pass" : "Fail";


            //Eb) result处理
            if (string.IsNullOrEmpty(temp.Elongation) || temp.Elongation == "N")
            {
                temp.ElongationResult = "n.a.";
            }

            //Mb) result处理
            if (string.IsNullOrEmpty(temp.MouldTrial) || temp.MouldTrial == "N")
            {
                temp.MouldTrialResult = "n.a.";
            }

            //Bb) result处理
            if (string.IsNullOrEmpty(temp.Bonding) || temp.Bonding == "N")
            {
                temp.BondingResult = "n.a.";
            }

            //LMb) result处理
            if (string.IsNullOrEmpty(temp.Lamination) || temp.Lamination == "N")
            {
                temp.LaminationResult = "n.a.";
            }

            //CCb) RESULT * 处理
            if (string.IsNullOrEmpty(temp.CutCurling) || temp.CutCurling == "N")
            {
                temp.CutCurlingResult = "n.a.";
            }

            //计算PO Length 由David加入 2020-10-23
            if ((temp.POLength ?? 0) == 0)
            {
                POPCDataContext POPCDB = ContextBuilder.CreateContext<POPCDataContext>();
                temp.POLength = POPCDB.POColorSizeDetails.Where(p => p.PONO == temp.PO && (p.VersionFlag ?? false) && (p.ItemCode + p.ColorCode) == temp.Item_No).Select(p => p.Qty).Sum();
            }

            //从MIDc中取克重 David 2020-10-23
            MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
            var obj = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == temp.Supplier_Item_No);
            if (obj != null)
            {
                temp.StandardWeightGmSqm = obj.WeightGmSqm;
                temp.StandardWeightGmSqmMax = obj.WeightGmSqmMax.HasValue ? obj.WeightGmSqmMax : obj.WeightGmSqm;
                temp.StandardWeightGmSqmMin = obj.WeightGmSqmMin.HasValue ? obj.WeightGmSqmMin : obj.WeightGmSqm;
                temp.StandardWeightGmSqmS = obj.WeightGmSqmS;


                //temp.StandardWidth = (obj.UsableWidthMin.HasValue ? obj.UsableWidthMin : obj.UsableWidth) / 1000.00M;
                //2020-12-18 王生要求Width的单位修改为：mm
                temp.StandardWidth = (obj.UsableWidthMin.HasValue ? obj.UsableWidthMin : obj.UsableWidth);
            }

            //如果实际重量在最大克重和最小克重之前即Pass
            //Td) Result by clr (MIDc)只有兩種結果：Pass (tc=0), Fail (tc<>0)
            if (!temp.StandardWeightGmSqm.HasValue)
            {
                temp.ThicknessResult = "n.a.";
            }
            else
            {
                temp.ThicknessResult = (temp.DiffWeightPercentShow ?? 0) == 0 ? "A" : "B";
            }

            //2021-03-11 Shelley要求加入：如果Zb) Overall Result *等于A+或A时，zc) Core defect support Overall Result, if any*等于P1) n.a.
            if (string.IsNullOrEmpty(temp.Insp_Result_Reason) && (temp.Insp_Result == "A+" || temp.Insp_Result == "A"))
            {
                temp.Insp_Result_Reason = "P1)  n.a.";
            }

            //计算FW Start Date,  由David加入 2021-06-24
            temp.FWStartDate = ADB.fn_CalculateFWStartDate(temp.ProjectNo);
        }


        /// <summary>
        /// Xsj(補):依板號獲取局部疵點的集合(一板一記錄,合記扣數)
        /// 相同板
        /// </summary>
        /// <param name="temp"></param>
        /// <returns></returns>
        private static List<PartDefectInfo> groupPartDefectDetailsByTurnNo(Fabric_Insp_Header temp)
        {
            List<PartDefectInfo> groupedPartDefectDetails = new List<PartDefectInfo>();
            foreach (Fabric_Insp_PartDefect tempPartDefectDetail in temp.Fabric_Insp_PartDefects)
            {
                PartDefectInfo partyDefectDetail = getPartyDefectDetail(groupedPartDefectDetails, tempPartDefectDetail.Detect_Turn_No);
                int iDefectPoints = (int)tempPartDefectDetail.Defect_Deduce_Points;
                if (iDefectPoints > 4)
                {
                    iDefectPoints = 4;
                }

                //Xsj(補):如果當前庛點的資料不存在，則添加相關資料
                if (partyDefectDetail == null)
                {
                    partyDefectDetail = new PartDefectInfo();
                    partyDefectDetail.Company = tempPartDefectDetail.Company;
                    partyDefectDetail.System_Install_No = tempPartDefectDetail.System_Install_No;
                    //partyDefectDetail.Lot_Id = tempPartDefectDetail.Lot_Id;
                    //partyDefectDetail.Item_No = tempPartDefectDetail.Item_No;

                    partyDefectDetail.Defect_Type = "P";
                    partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
                    partyDefectDetail.Defect_Deduce_Points = iDefectPoints;

                    partyDefectDetail.Detect_Turn_No = tempPartDefectDetail.Detect_Turn_No;

                    groupedPartDefectDetails.Add(partyDefectDetail);

                }
                else
                {

                    partyDefectDetail.Defect_Deduce_Points = partyDefectDetail.Defect_Deduce_Points + iDefectPoints;

                }
                //Xsj(補):每板的扣數合計不能超4
                if (partyDefectDetail.Defect_Deduce_Points > 4)
                {
                    partyDefectDetail.Defect_Deduce_Points = 4;
                }
            }
            return groupedPartDefectDetails;
        }

        /// <summary>
        /// Xsj(補):獲取指定板號defectTurnNo,類型為"P"的PartDefectInfo.
        /// 所有Defect_Type統一為P
        /// </summary>
        /// <param name="partDefects"></param>
        /// <param name="defectTurnNo"></param>
        /// <returns></returns>
        private static PartDefectInfo getPartyDefectDetail(List<PartDefectInfo> partDefects, int defectTurnNo)
        {
            PartDefectInfo partyDefectDetail = null;
            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
            {
                partyDefectDetail = partDefects[i];
                if ((partyDefectDetail.Detect_Turn_No == defectTurnNo)
                    && (partyDefectDetail.Defect_Type == "P"))
                {
                    return partyDefectDetail;
                }
            }
            return null;
        }


        //局部疵點損耗率
        private static decimal calcTotalWastage(Fabric_Insp_Header temp)
        {
            decimal tempPartyDefectsWastage = 0;
            List<PartDefectInfo> groupedPartDefectInfos = groupPartDefectDetailsByTurnNo(temp);
            List<PartDefectInfo> groupedLevel4PartDefectInfos = groupPartDefectDetailsLevel4ByTurnNo(temp, groupedPartDefectInfos);
            int iTotalPoints = 0;
            //Xsj(補):獲取所有扣數小於3的總和
            foreach (PartDefectInfo tempPartDefectInfo in groupedPartDefectInfos)
            {
                iTotalPoints = iTotalPoints + tempPartDefectInfo.Defect_Deduce_Points;
            }
            /*
               局部疵點損耗率 = [程度1,2,3的疵點分數累加(每板分數超過4分的按4分計算) *  (Panle Size1 * Panle Size2) ] / [(Usable Width/10 )* (Inspection Length*100)]
                              = [(第一板的4分 + 第三板的4分 + 第四板的2分 ) * ( 10 *10)] /[( 20/10) * (48 *10)]
                              = 10 * 100 /10*480
                              = 48000            
             */
            if ((temp.Usable_Width == 0) || (temp.Insp_Length == 0))
            {
                tempPartyDefectsWastage = 0;
            }
            else
            {
                //tempPartyDefectsWastage = (iTotalPoints * ((decimal)temp.Panel_Size1 * (decimal)temp.Panel_Size2)) / (((decimal)temp.Usable_Width / 10) * ((decimal)temp.Insp_Length * 100));
                tempPartyDefectsWastage = (iTotalPoints * ((decimal)temp.Panel_Size1 * (decimal)temp.Panel_Size2)) / (((decimal)temp.Usable_Width) * ((decimal)temp.Insp_Length + (temp.PH_Sample ?? 0)));  //update by shulin
            }

            decimal tempPartyDefectsLevel4Wastage = 0;
            if (groupedLevel4PartDefectInfos.Count > 0)
            {
                /*
                 緯向損耗率     =  (Panle Size1  * 程度1的个数)/  (Inspection Length * 100)
                 */
                if (temp.Insp_Length == 0)
                {
                    tempPartyDefectsLevel4Wastage = 0;
                }
                else
                {
                    tempPartyDefectsLevel4Wastage = ((decimal)temp.Panel_Size1 * groupedLevel4PartDefectInfos.Count) / ((decimal)temp.Insp_Length + (temp.PH_Sample ?? 0)); //update by shulin
                    //tempPartyDefectsLevel4Wastage = ((decimal)temp.Panel_Size1 * groupedLevel4PartDefectInfos.Count) / ((decimal)temp.Insp_Length * 100); 
                }
            }
            return tempPartyDefectsWastage + tempPartyDefectsLevel4Wastage;
        }

        /// <summary>
        /// Xsj(補)：獲取扣分超過4分的PartDefectInfo
        /// </summary>
        /// <param name="temp"></param>
        /// <param name="groupedPartDefectDetails"></param>
        /// <returns></returns>
        private static List<PartDefectInfo> groupPartDefectDetailsLevel4ByTurnNo(Fabric_Insp_Header temp, List<PartDefectInfo> groupedPartDefectDetails)
        {
            List<PartDefectInfo> groupedLevel4PartDefectDetails = new List<PartDefectInfo>();
            foreach (Fabric_Insp_PartDefect tempPartDefectDetail in temp.Fabric_Insp_PartDefects)
            {
                if (tempPartDefectDetail.Defect_Degree == 4)
                {
                    //Xsj(補):從groupedPartDefectDetails中移除扣分為4的記錄
                    PartDefectInfo partyDefectDetail = getPartyDefectDetail(groupedPartDefectDetails, tempPartDefectDetail.Detect_Turn_No);
                    if (partyDefectDetail != null)
                    {
                        groupedPartDefectDetails.Remove(partyDefectDetail);
                    }


                    //Xsj(補):添加除扣分為4的記錄
                    partyDefectDetail = getPartyDefectDetail(groupedLevel4PartDefectDetails, tempPartDefectDetail.Detect_Turn_No);
                    if (partyDefectDetail == null)
                    {
                        partyDefectDetail = new PartDefectInfo();
                        partyDefectDetail.Company = tempPartDefectDetail.Company;
                        partyDefectDetail.System_Install_No = tempPartDefectDetail.System_Install_No;
                        //partyDefectDetail.Lot_Id = tempPartDefectDetail.Lot_Id;
                        //partyDefectDetail.Item_No = tempPartDefectDetail.Item_No;

                        partyDefectDetail.Defect_Type = "P";
                        partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
                        partyDefectDetail.Defect_Deduce_Points = (int)tempPartDefectDetail.Defect_Deduce_Points;

                        partyDefectDetail.Detect_Turn_No = tempPartDefectDetail.Detect_Turn_No;
                        groupedLevel4PartDefectDetails.Add(partyDefectDetail);
                    }
                }
            }
            return groupedLevel4PartDefectDetails;
        }


        /// <summary>
        /// Xsj(補):合計所庛點的扣數
        /// </summary>
        /// <param name="temp"></param>
        /// <returns></returns>
        private static int calcTotalPoints(FabricInspectionDataContext ADB, Fabric_Insp_Header temp)
        {
            //int tempTotalPoints = 0;
            //List<PartDefectInfo> groupedPartDefectInfos = groupPartDefectDetailsByTurnNo(temp);
            //foreach (PartDefectInfo tempPartDefectInfo in groupedPartDefectInfos)
            //{
            //    tempTotalPoints = tempTotalPoints + tempPartDefectInfo.Defect_Deduce_Points;
            //}
            //return tempTotalPoints;

            //by Roll计算Irregular分数, 由David修改算法 2020-11-03

            if (temp.SplitFlag == "Y" && !temp.Lot_Id.EndsWith("-00")) return 0;

            string LotID = temp.Lot_Id.Substring(0, temp.Lot_Id.Length - 2); //Lot_ID前13位
            int? TotalPoint1 = ADB.Fabric_Insp_PartDefects.Where(p => p.Fabric_Insp_Header.Lot_Id.StartsWith(LotID) && p.Defect_Degree <= 3)
                .Select(p => p.Defect_Degree_Count * p.Defect_Deduce_Points).Sum();

            int? TotalPoint2 = ADB.Fabric_Insp_PartDefects.Where(p => p.Fabric_Insp_Header.Lot_Id.StartsWith(LotID) && p.Defect_Degree == 4)
                .Select(p => p.Defect_Deduce_Points).Sum();

            return (TotalPoint1 ?? 0) + (TotalPoint2 ?? 0);

        }


        /// <summary>
        /// Xsj(补)20110926：返回当前日期，格式"yyMMdd"。如果是0开头，返回"yMMdd"
        /// </summary>
        /// <returns></returns>
        public static string getTodayString()
        {
            string timeFormat = "yyMMdd";
            DateTime time = DateTime.Now;
            string strDate = time.ToString(timeFormat, new CultureInfo("en-US"));
            if (strDate.Length > 0)
            {
                if (strDate[0] == '0')
                {
                    strDate = strDate.Substring(1);
                }
            }
            return strDate;
        }

        //Xsj20120512:應Shelley的要求。允許用戶查詢指定日期至今的數據而添加以下方法
        /// <summary>
        /// Xsj20120512:獲取用戶指定日期至今的時間隔
        /// </summary>
        /// <returns></returns>
        public static string GetTodayBeforeSpecialDatetimeString(DateTime SpecialDatetime)
        {
            string timeFormat = "yyMMdd";
            string strDate = SpecialDatetime.ToString(timeFormat, new CultureInfo("en-US"));
            if (strDate.Length > 0)
            {
                if (strDate[0] == '0')
                {
                    strDate = strDate.Substring(1);
                }
            }
            return strDate;
        }


        /// <summary>
        /// Xsj(补)20110919:返回当前向前推150天的日期，格式为yyMMdd。如果结果以‘0’开始，则返回'yMMdd'
        /// </summary>
        /// <returns></returns>
        public static string getTodayBefore60String()
        {
            string timeFormat = "yyMMdd";
            DateTime time = DateTime.Now.AddDays(-150);
            string strDate = time.ToString(timeFormat, new CultureInfo("en-US"));
            if (strDate.Length > 0)
            {
                if (strDate[0] == '0')
                {
                    strDate = strDate.Substring(1);
                }
            }
            return strDate;
        }

        public static string Status { get; set; } //WIP或Completed

        /// <summary>
        /// Xsj(补)20110919:对字符左端填0，以达到长度为iLen.
        /// </summary>
        /// <param name="strValue"></param>
        /// <param name="iLen"></param>
        /// <returns></returns>
        public static string getFixedLengthString(string strValue, int iLen)
        {
            string tempValue = strValue;
            while (tempValue.Length < iLen)
            {
                tempValue = "0" + tempValue;
            }
            return tempValue;
        }



        public static string GetColorGroup(string companyNo, string itemNo, string lotId)
        {

            #region Xsj20111129:如下代碼為了提升速度而被注釋掉
            //string strSQL = "SELECT CH4T84  FROM AULT4F1.APP84 WHERE CONO84='" + companyNo + "' and PNUM84='" + itemNo + "'" + " and LOTN84='" + lotId + "'";
            //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
            #endregion
            #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼

            FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
            string sqlStr = "Select * from openquery([as400],'SELECT CH4T84  FROM AULT4F1.APP84 WHERE CONO84=''" + companyNo + "'' and PNUM84=''" + itemNo + "'' and LOTN84=''" + lotId + "''')";
            DataTable dataTable = FISdc.ExecuteDataTable(sqlStr, "t0");

            #endregion


            string strColorGroup = "";
            if (dataTable.Rows.Count <= 0)
            {
                //MessageBox.Show("No data found!");
                strColorGroup = "";
            }
            else
            {
                //CH6T84 的第一個和第二個字符.
                strColorGroup = dataTable.Rows[0]["CH4T84"].ToString();
                if (strColorGroup != null)
                {
                    strColorGroup = strColorGroup.Substring(0, 5);
                }

            }
            return strColorGroup;

        }




    }
}
