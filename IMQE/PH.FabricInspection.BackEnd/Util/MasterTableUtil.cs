using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.FabricInspection.BO;
using System.Globalization;
using System.Data;
using PH.Platform.BO;

namespace PH.FabricInspection.BackEnd
{
    class MasterTableUtil
    {

        public static void RecalcMasterValue(Fabric_Insp_Header temp)
        {
            if (temp.Actual_Weight == null) {
                temp.Actual_Weight = 0;
            }

            if (temp.Supplier_Code == null)
            {
                temp.Supplier_Code = "";
            }

            if (temp.Spread_Insp_Result == null)
            {
                temp.Spread_Insp_Result = "";
            }

            if (temp.Mould_Trial_Result == null)
            {
                temp.Mould_Trial_Result = "";
            }

            if (temp.Color_Group_Status == null)
            {
                temp.Color_Group_Status = "";
            }

            if (temp.Insp_Confirm == null)
            {
                temp.Insp_Confirm = "";
            }

            if (temp.Spread_Remark == null)
            {
                temp.Spread_Remark = "";
            }

            if (temp.IQC_Reference == null)
            {
                temp.IQC_Reference = "";
            }

            if (temp.Mould_Trial_Remark == null)
            {
                temp.Mould_Trial_Remark = "";
            }

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
            temp.Total_Points = calcTotalPoints(temp);

            //  /*          B  = 每百平方米的平均罰分(Points hundred SQM)
            //  = A * 10000/Usable Width/Inspection Length
            //       = 14 * 10000 / 20 / 48
            //       = 145.833
            //*/

            /*          B  = 每百平方米的平均罰分(Points hundred SQM)
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
                temp.Points_Hundred_SQM = temp.Total_Points / (temp.Usable_Width * (decimal)0.001) / temp.Insp_Length * 100;
            }

            /*
             C  = (B - 30) * 0.25  * Supplier Length / 100
       = (145.833 – 30) * 0.25 * 47 / 100
       = 13.61
             */
            if ((temp.Usable_Width == 0) || (temp.Insp_Length == 0))
            {
                temp.Deductive_Qty = 0;
            }
            else
            {
                temp.Deductive_Qty = (temp.Points_Hundred_SQM - 30) * ((decimal)0.25 * temp.Actual_Length / 100);
                //temp.Deductive_Qty = (temp.Points_Hundred_SQM - 30) * ((decimal)0.25 * temp.Actual_Length );  //update by shulin
            }

            //            /*
            //             D  = 局部疵點損耗率 + 緯向損耗率 

            //如果在一板中既存在程度1,2,3,又存在程度4是散布疵點
            //那麽只需要計算緯向損耗率,不需要計算局部疵點損耗率.
            //算法如下:
            //局部疵點損耗率 = [程度1,2,3的疵點分數累加(每板分數超過4分的按4分計算) *  (Panle Size1 * Panle Size2) ] / [(Usable Width/10 )* (Inspection Length*10)]
            //               =[(第一板的4分 + 第三板的4分 + 第四板的2分 ) * ( 10 *10)] /( 20/10) * (48 *10)
            //               = 10 * 100 /10*480
            //               = 48000

            //緯向損耗率     =  Panle Size1 /  Inspection Length * 10
            //=  10 / 48 * 10
            //       =  0.0208

            //*/

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

            temp.Wastage = calcTotalWastage(temp);


            //===========================

            if (temp.Fabric_Insp_SpreadDefects.Count > 0)
            {
                temp.Spread_Defect_Exist = RecordStatus.Exist;
            }
            else
            {
                temp.Spread_Defect_Exist = RecordStatus.Inexistence;
            }

            //==================
            /*．判斷物料的質檢結果要通過四個地方：
6．1． 第一個地方： 通過質檢人員輸入的局部性疵點可以計算出物料的質檢結果是OK/Deduct/Return
6．2． 第二個地方： 通過質檢人員輸入的散布性疵點去處理物料的質檢結果是OK/Deduct/Return
6．3． 第三個地方： 通過MOULD TRIAL去處理物料的質檢結果是OK/Return
6．3． 第四個地方： 色組是否相同來判斷質檢結果是OK/Return
*/
            temp.Insp_Result = RecordStatus.STATUS_OK;

            //6．1． 第一個地方： 通過質檢人員輸入的局部性疵點可以計算出物料的質檢結果是OK/Deduct/Return
            ////                i.     該匹布是否OK還是Deduct或者退貨的判斷標準:(該標準是唯一的)
            //// 平均罰分 <= 30     - OK
            ////                 30 < 平均罰分 <= 50     - Deduct 
            ////                     平均罰分  > 50     - 退貨
            ////ii.	System No  - Made in :YYMMDDXXX  ( 70412XXX) XXX = SEQ NO
            bool deductiveExists = false;
            bool rejectExists = false;

            if (temp.Points_Hundred_SQM <= 30)
            {
                temp.Party_Insp_Result = RecordStatus.STATUS_OK;
            }
            else if ((temp.Points_Hundred_SQM > 30) && (temp.Points_Hundred_SQM <= 50))
            {
                temp.Party_Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
                deductiveExists = true;
            }
            else
            {
                temp.Party_Insp_Result = RecordStatus.STATUS_REJECT;
                rejectExists = true;
            }

            if (rejectExists)
            {
                temp.Insp_Result = RecordStatus.STATUS_REJECT;
            }
            else if (deductiveExists)
            {
                if ((temp.Insp_Result == null) || (temp.Insp_Result != RecordStatus.STATUS_REJECT))
                {
                    temp.Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
                }
            }
            else
            {
                temp.Insp_Result = RecordStatus.STATUS_OK;
            }

            //6．2． 第二個地方： 通過質檢人員輸入的散布性疵點去處理物料的質檢結果是OK/Deduct/Return

            if (temp.Spread_Insp_Result == RecordStatus.STATUS_REJECT)
            {
                temp.Insp_Result = RecordStatus.STATUS_REJECT;
            }
            else if (temp.Spread_Insp_Result == RecordStatus.STATUS_DEDUCTIVE)
            {
                if (temp.Insp_Result != RecordStatus.STATUS_REJECT)
                {
                    temp.Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
                }
            }

            //6．3． 第三個地方： 通過MOULD TRIAL去處理物料的質檢結果是OK/Return
            if (temp.Mould_Trial_Result == RecordStatus.STATUS_REJECT)
            {
                temp.Insp_Result = RecordStatus.STATUS_REJECT;
            }
            else if (temp.Mould_Trial_Result == RecordStatus.STATUS_DEDUCTIVE)
            {
                if (temp.Insp_Result != RecordStatus.STATUS_REJECT)
                {
                    temp.Insp_Result = RecordStatus.STATUS_DEDUCTIVE;
                }
            }

            //6．3． 第四個地方： 色組是否相同來判斷質檢結果是OK/Return
            if (temp.Color_Group_Status != null)
            {
                if (temp.Color_Group_Status.ToLower() == "REJECT")
                {
                    temp.Insp_Result = RecordStatus.STATUS_REJECT;
                }
            }


        }


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
                if (partyDefectDetail.Defect_Deduce_Points > 4)
                {
                    partyDefectDetail.Defect_Deduce_Points = 4;
                }
            }
            return groupedPartDefectDetails;
        }

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
            foreach (PartDefectInfo tempPartDefectInfo in groupedPartDefectInfos)
            {
                iTotalPoints = iTotalPoints + tempPartDefectInfo.Defect_Deduce_Points;
            }
            /*
局部疵點損耗率 = [程度1,2,3的疵點分數累加(每板分數超過4分的按4分計算) *  (Panle Size1 * Panle Size2) ] / [(Usable Width/10 )* (Inspection Length*100)]
               =[(第一板的4分 + 第三板的4分 + 第四板的2分 ) * ( 10 *10)] /[( 20/10) * (48 *10)]
               = 10 * 100 /10*480
               = 48000            
             */
            if ((temp.Usable_Width == 0) || (temp.Insp_Length == 0))
            {
                tempPartyDefectsWastage = 0;
            }
            else
            {
                tempPartyDefectsWastage = (iTotalPoints * ((decimal)temp.Panel_Size1 * (decimal)temp.Panel_Size2)) / (((decimal)temp.Usable_Width / 10) * ((decimal)temp.Insp_Length * 100));
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
                    tempPartyDefectsLevel4Wastage = ((decimal)temp.Panel_Size1 * groupedLevel4PartDefectInfos.Count) / ((decimal)temp.Insp_Length * 100);
                }
            }
            return tempPartyDefectsWastage + tempPartyDefectsLevel4Wastage;
        }

        private static List<PartDefectInfo> groupPartDefectDetailsLevel4ByTurnNo(Fabric_Insp_Header temp, List<PartDefectInfo> groupedPartDefectDetails)
        {
            List<PartDefectInfo> groupedLevel4PartDefectDetails = new List<PartDefectInfo>();
            foreach (Fabric_Insp_PartDefect tempPartDefectDetail in temp.Fabric_Insp_PartDefects)
            {
                if (tempPartDefectDetail.Defect_Degree == 4)
                {
                    PartDefectInfo partyDefectDetail = getPartyDefectDetail(groupedPartDefectDetails, tempPartDefectDetail.Detect_Turn_No);
                    if (partyDefectDetail != null)
                    {
                        groupedPartDefectDetails.Remove(partyDefectDetail);
                    }



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



        private static int calcTotalPoints(Fabric_Insp_Header temp)
        {
            int tempTotalPoints = 0;
            List<PartDefectInfo> groupedPartDefectInfos = groupPartDefectDetailsByTurnNo(temp);
            foreach (PartDefectInfo tempPartDefectInfo in groupedPartDefectInfos)
            {
                tempTotalPoints = tempTotalPoints + tempPartDefectInfo.Defect_Deduce_Points;
            }
            return tempTotalPoints;


        }

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
            #region  Xsj20111129:如下代碼為了提升速度而被注釋掉
            //string strSQL = "SELECT CH4T84  FROM AULT4F1.APP84 WHERE CONO84='" + companyNo + "' and PNUM84='" + itemNo + "'" + " and LOTN84='" + lotId + "'";
            //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
            #endregion
            #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
            string strSQL = "Select * from OpenQuery([as400],'SELECT CH4T84  FROM AULT4F1.APP84 WHERE CONO84=''" + companyNo + "'' and PNUM84=''" + itemNo + "''  and LOTN84=''" + lotId + "''')";
            FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
            DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");
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


        //public static string GetColorGroup(string companyNo, string itemNo, string lotId)
        //{

        //    string strSQL = "SELECT CH4T84 FROM AULT4F1.APP84 WHERE CONO84='" + companyNo + "' and PNUM84='" + itemNo + "'" + " and LOTN84='" + lotId + "'";
        //    DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);

        //    string strColorGroup = "";
        //    if (dataTable.Rows.Count <= 0)
        //    {
        //        //MessageBox.Show("No data found!");
        //        strColorGroup = "";
        //    }
        //    else
        //    {
        //        //CH6T84 的第一個和第二個字符.
        //        strColorGroup = dataTable.Rows[0]["CH4T84"].ToString();
        //        if (strColorGroup != null)
        //        {
        //            strColorGroup = strColorGroup.Substring(0, 5);
        //        }
        //    }
        //    if (strColorGroup.Trim() == "")
        //    {
        //        return "";
        //    }
        //    else if (strColorGroup[0] == '?')
        //    {
        //        return "Reject";
        //    }
        //    else
        //    {
        //        return "OK";
        //    }

        //}

    }
}
