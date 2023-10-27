//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Globalization;
//using PH.FabricInspection.BO;
//using System.Collections;
//using System.Data;
//using System.Data.SqlClient;
//using System.Windows.Forms;

//using PH.Platform.BO;
//using PH.Platform.BO.Interface;

//namespace PH.FabricInspection.BackEnd
//{
//    public class ByPieceByLotReportUtil
//    {
//        private static int MAX_SIZE_FOR_SPREAD_DEFECT = 5;
//        private static int MAX_SIZE_FOR_PARTY_DEFECT = 15;
//        private static int MAX_SIZE_FOR_WIDTH = 5;
//        private static int MAX_SIZE_FOR_SIDE_TO_SIDE_WIDTH = 6;

//        public static List<MaterialByPiece> getDataByPiece(string tempVersionNo, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {
//            NumberFormatInfo provider = new NumberFormatInfo();
//            provider.NumberDecimalDigits = 4;
//            provider.NumberGroupSeparator = ".";


//            List<MaterialByPiece> resultData = new List<MaterialByPiece>();
//            MaterialByPiece tempMaterialByPiece = null;
//            List<PH984Field> allPH984Fields = new List<PH984Field>();

//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if (!isItemNoExistInPH984Fields(temp.Item_No, allPH984Fields))
//                {
//                    List<PH984Field> tempPH984Fields = PH984Field.GetAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);
//                    allPH984Fields.AddRange(tempPH984Fields);
//                }
//                PH984Field tempPH984Field = getPH984FieldWithItemNoLotID(temp.Item_No, temp.Lot_Id, temp.Stock_In_Date, allPH984Fields);

//                tempMaterialByPiece = new MaterialByPiece();
//                tempMaterialByPiece.SideToSideH_Width = (int)temp.SideToSideH_Width;

//                tempMaterialByPiece.Company = temp.Company;
//                tempMaterialByPiece.VersionNo = tempVersionNo;
//                tempMaterialByPiece.System_Install_No = temp.System_Install_No;

//                //tempMaterialByPiece.Item_No = temp.Item_No;
//                tempMaterialByPiece.Item_No = temp.Item_No.Substring(0, 9);
//                tempMaterialByPiece.StockInDate = temp.Stock_In_Date;
//                tempMaterialByPiece.ColorNo = temp.Item_No.Substring(9, 3);
//                tempMaterialByPiece.ReceiveDate = temp.Stock_In_Date;

//                tempMaterialByPiece.Lot_Id = temp.Lot_Id;
//                tempMaterialByPiece.IQC_Reference = temp.IQC_Reference;
//                tempMaterialByPiece.Actual_Length = Math.Round((decimal)temp.Actual_Length, 2);

//                if (tempPH984Field != null)
//                {
//                    tempMaterialByPiece.Actual_Length = tempPH984Field.Actual_Length;
//                }
//                tempMaterialByPiece.Actual_Weight = (int)temp.Actual_Weight;
//                tempMaterialByPiece.Supplier_Length_Unit = temp.Supplier_Length_Unit;
//                tempMaterialByPiece.Supplier_Width = (int)temp.Supplier_Width;
//                tempMaterialByPiece.Supplier_Width_Unit = temp.Supplier_Width_Unit;
//                tempMaterialByPiece.Insp_Length = Math.Round((decimal)temp.Insp_Length, 2);
//                tempMaterialByPiece.GM_SQM = (int)temp.GM_SQM;
//                if (tempPH984Field != null)
//                {
//                    tempMaterialByPiece.GM_SQM = tempPH984Field.GM_SQM;
//                }
//                tempMaterialByPiece.Usable_Width = (int)temp.Usable_Width;
//                tempMaterialByPiece.Supplich_Batch = temp.Supplich_Batch;
//                tempMaterialByPiece.Roll_No = temp.Roll_No;
//                tempMaterialByPiece.Total_Points = (int)temp.Total_Points;
//                tempMaterialByPiece.Points_Hundred_SQM = (decimal)temp.Points_Hundred_SQM;
//                tempMaterialByPiece.Deductive_Qty = (decimal)temp.Deductive_Qty;
//                tempMaterialByPiece.Wastage = (decimal)temp.Wastage;
//                tempMaterialByPiece.Insp_Result = temp.Insp_Result;
//                tempMaterialByPiece.Party_Insp_Result = temp.Party_Insp_Result;
//                tempMaterialByPiece.Spread_Insp_Result = temp.Spread_Insp_Result;
//                tempMaterialByPiece.Mould_Trial_Result = temp.Mould_Trial_Result;
//                tempMaterialByPiece.Spread_Defect_Exist = temp.Spread_Defect_Exist;
//                tempMaterialByPiece.Insp_Confirm = temp.Insp_Confirm;
//                //tempMaterialByPiece.RN_number = (int)temp.RN_number;

//                tempMaterialByPiece.PH_Sample = (decimal)temp.PH_Sample;
//                tempMaterialByPiece.Panel_Size1 = (decimal)temp.Panel_Size1;
//                tempMaterialByPiece.Panel_Size2 = (decimal)temp.Panel_Size2;

//                tempMaterialByPiece.Special_Marker = (decimal)temp.Special_Marker;
//                tempMaterialByPiece.Mould_Trial_Remark = temp.Mould_Trial_Remark;

//                tempMaterialByPiece.Inspector = temp.Inspector;
//                tempMaterialByPiece.Create_User = temp.Create_User;
//                if (temp.Create_Date != null)
//                {
//                    tempMaterialByPiece.Create_Date = (DateTime)temp.Create_Date;
//                }
//                tempMaterialByPiece.Change_User = temp.Change_User;
//                if (temp.Change_Date != null)
//                {
//                    tempMaterialByPiece.Change_Date = (DateTime)temp.Change_Date;
//                }
//                tempMaterialByPiece.Use_Status = temp.Use_Status;

//                //detail
//                //iqc04Items
//                tempMaterialByPiece.SpreadDefectDetailItems.Clear();

//                List<SpreadDefectInfoForReportByPiece> spreadDefectItems = new List<SpreadDefectInfoForReportByPiece>();
//                Fabric_Insp_SpreadDefect tempSpreadDefectDetail = null;
//                for (int i = 0, iSize = temp.Fabric_Insp_SpreadDefects.Count; i < iSize; i++)
//                {
//                    tempSpreadDefectDetail = temp.Fabric_Insp_SpreadDefects[i];
//                    SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
//                    detail.Defect_Name = tempSpreadDefectDetail.Defect_Name;
//                    detail.Defect_Type = tempSpreadDefectDetail.Defect_Type;
//                    detail.From_Place = tempSpreadDefectDetail.From_Place + "";
//                    detail.To_Place = tempSpreadDefectDetail.To_Place + "";
//                    detail.Spread_Defect_Degree = tempSpreadDefectDetail.Spread_Defect_Degree;

//                    tempMaterialByPiece.SpreadDefectDetailItems.Add(detail);
//                }
//                //max size = 5
//                for (int i = tempMaterialByPiece.SpreadDefectDetailItems.Count, iSize = MAX_SIZE_FOR_SPREAD_DEFECT; i < iSize; i++)
//                {
//                    SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
//                    tempMaterialByPiece.SpreadDefectDetailItems.Add(detail);
//                }

//                if (tempMaterialByPiece.SpreadDefectDetailItems.Count > MAX_SIZE_FOR_SPREAD_DEFECT)
//                {
//                    tempMaterialByPiece.SpreadDefectDetailItems.RemoveRange(MAX_SIZE_FOR_SPREAD_DEFECT, tempMaterialByPiece.SpreadDefectDetailItems.Count - MAX_SIZE_FOR_SPREAD_DEFECT);
//                }



//                //PartyDefectDetailItems
//                tempMaterialByPiece.PartyDefectDetailItems.Clear();

//                List<PartDefectInfoForReportByPiece> partDefectItems = groupPartDefectDetailsByDefectName(temp);

//                tempMaterialByPiece.PartyDefectDetailItems.AddRange(partDefectItems);

//                //max size = 15
//                for (int i = tempMaterialByPiece.PartyDefectDetailItems.Count, iSize = MAX_SIZE_FOR_PARTY_DEFECT; i < iSize; i++)
//                {
//                    PartDefectInfoForReportByPiece detail = new PartDefectInfoForReportByPiece();
//                    tempMaterialByPiece.PartyDefectDetailItems.Add(detail);
//                }

//                if (tempMaterialByPiece.PartyDefectDetailItems.Count > MAX_SIZE_FOR_PARTY_DEFECT)
//                {
//                    tempMaterialByPiece.PartyDefectDetailItems.RemoveRange(MAX_SIZE_FOR_PARTY_DEFECT, tempMaterialByPiece.PartyDefectDetailItems.Count - MAX_SIZE_FOR_PARTY_DEFECT);
//                }



//                //WidthDetailItems
//                tempMaterialByPiece.WidthDetailItems.Clear();

//                Fabric_Insp_Width tempWidthDetail = null;
//                for (int i = 0, iSize = temp.Fabric_Insp_Widths.Count; i < iSize; i++)
//                {
//                    tempWidthDetail = temp.Fabric_Insp_Widths[i];
//                    WidthDetailForReportPiece detail = new WidthDetailForReportPiece();
//                    detail.Detect_Turn_No = tempWidthDetail.Detect_Turn_No + "";
//                    detail.Usable_Width = tempWidthDetail.Usable_Width + "";
//                    detail.SideToSide_Width = tempWidthDetail.SideToSide_Width + "";
//                    tempMaterialByPiece.WidthDetailItems.Add(detail);
//                }

//                string widthString = "";
//                int k = 1;
//                bool isFirstTime = true;
//                foreach (WidthDetailForReportPiece widthDetail in tempMaterialByPiece.WidthDetailItems)
//                {
//                    if (k != 1)
//                    {
//                        widthString = widthString + "," + widthDetail.Usable_Width + "/" + widthDetail.SideToSide_Width + "(" + widthDetail.Detect_Turn_No + ")";
//                    }
//                    else
//                    {
//                        if (!isFirstTime)
//                        {
//                            widthString = widthString + "\n" + widthDetail.Usable_Width + "/" + widthDetail.SideToSide_Width + "(" + widthDetail.Detect_Turn_No + ")";
//                        }
//                        else
//                        {
//                            widthString = widthDetail.Usable_Width + "/" + widthDetail.SideToSide_Width + "(" + widthDetail.Detect_Turn_No + ")";
//                        }
//                    }
//                    isFirstTime = false;
//                    k++;
//                    if (k == 6)
//                    {
//                        StrWidthDetailForReportPiece strWidthDetail = new StrWidthDetailForReportPiece();
//                        strWidthDetail.Str_Usable_Width = widthString;
//                        tempMaterialByPiece.StrWidthDetailItems.Add(strWidthDetail);
//                        widthString = "";
//                        k = 1;
//                    }
//                }
//                if ((k < 6) && (k > 0))
//                {
//                    StrWidthDetailForReportPiece strWidthDetail = new StrWidthDetailForReportPiece();
//                    strWidthDetail.Str_Usable_Width = widthString;
//                    tempMaterialByPiece.StrWidthDetailItems.Add(strWidthDetail);
//                }



//                //max size = 5
//                for (int i = tempMaterialByPiece.StrWidthDetailItems.Count, iSize = MAX_SIZE_FOR_WIDTH; i < iSize; i++)
//                {
//                    StrWidthDetailForReportPiece detail = new StrWidthDetailForReportPiece();
//                    tempMaterialByPiece.StrWidthDetailItems.Add(detail);
//                }

//                if (tempMaterialByPiece.StrWidthDetailItems.Count > MAX_SIZE_FOR_WIDTH)
//                {
//                    tempMaterialByPiece.StrWidthDetailItems.RemoveRange(MAX_SIZE_FOR_WIDTH, tempMaterialByPiece.StrWidthDetailItems.Count - MAX_SIZE_FOR_WIDTH);
//                }


//                //TwoColumnsWidthDetailItems
//                tempMaterialByPiece.TwoColumnsWidthDetailItems.Clear();


//                TwoColumnsWidthDetailForReportPiece detailTwoColumnsWidth = null;
//                for (int i = 0, iSize = temp.Fabric_Insp_Widths.Count; i < iSize; i++)
//                {
//                    tempWidthDetail = temp.Fabric_Insp_Widths[i];
//                    if (i % 2 == 0)
//                    {
//                        detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
//                        detailTwoColumnsWidth.Detect_Turn_No = tempWidthDetail.Detect_Turn_No + "";
//                        detailTwoColumnsWidth.Usable_Width = tempWidthDetail.Usable_Width + "";
//                        detailTwoColumnsWidth.SideToSide_Width = tempWidthDetail.SideToSide_Width + "";
//                        tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
//                    }
//                    else
//                    {
//                        detailTwoColumnsWidth.Detect_Turn_No2 = tempWidthDetail.Detect_Turn_No + "";
//                        detailTwoColumnsWidth.Usable_Width2 = tempWidthDetail.Usable_Width + "";
//                        detailTwoColumnsWidth.SideToSide_Width2 = tempWidthDetail.SideToSide_Width + "";
//                    }
//                    if (i >= 12)
//                    {
//                        break;

//                    }
//                }

//                //max size = 6
//                for (int i = tempMaterialByPiece.TwoColumnsWidthDetailItems.Count, iSize = MAX_SIZE_FOR_SIDE_TO_SIDE_WIDTH; i < iSize; i++)
//                {
//                    TwoColumnsWidthDetailForReportPiece detail = new TwoColumnsWidthDetailForReportPiece();
//                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detail);
//                }


//                resultData.Add(tempMaterialByPiece);
//                //objListGridView.MoveNext();
//            }
//            return resultData;
//        }

//        private static bool isItemNoExistInPH984Fields(String strItemNo, List<PH984Field> resultData)
//        {
//            foreach (PH984Field materialByLot in resultData)
//            {
//                if (materialByLot.Item_No == strItemNo)
//                {
//                    return true;
//                }
//            }
//            return false;
//        }


//        private static PH984Field getPH984FieldWithItemNoLotID(string strItemNo, string strLotID, string strStockInDate, List<PH984Field> resultData)
//        {
//            foreach (PH984Field materialByLot in resultData)
//            {
//                if ((materialByLot.Item_No == strItemNo)
//                    && (materialByLot.Lot_Id == strLotID)
//                    && (materialByLot.Stock_In_Date == strStockInDate))
//                {
//                    return materialByLot;
//                }
//            }
//            return null;
//        }



//        private static List<PartDefectInfoForReportByPiece> groupPartDefectDetailsByDefectName(Fabric_Insp_Header temp)
//        {
//            List<PartDefectInfoForReportByPiece> groupedPartDefectDetailsByTurnNoAndDefectName = new List<PartDefectInfoForReportByPiece>();
//            //1: group by broadno and defecttype
//            Hashtable hsSelectedPartDefectDetailsByTurnNo = new Hashtable();
//            #region
//            foreach (Fabric_Insp_PartDefect tempPartDefectDetail in temp.Fabric_Insp_PartDefects)
//            {
//                PartDefectInfoForReportByPiece partyDefectDetail = getPartyDefectDetailByDefectNameAndBroadNo(groupedPartDefectDetailsByTurnNoAndDefectName, tempPartDefectDetail.Defect_Name, tempPartDefectDetail.Detect_Turn_No);

//                if (partyDefectDetail == null)
//                {
//                    partyDefectDetail = new PartDefectInfoForReportByPiece();
//                    partyDefectDetail.Detect_Turn_No = tempPartDefectDetail.Detect_Turn_No;

//                    partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
//                    if (tempPartDefectDetail.Defect_Degree == 1)
//                    {
//                        partyDefectDetail.Int_Level1_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }
//                    else if (tempPartDefectDetail.Defect_Degree == 2)
//                    {
//                        partyDefectDetail.Int_Level2_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }
//                    else if (tempPartDefectDetail.Defect_Degree == 3)
//                    {
//                        partyDefectDetail.Int_Level3_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }
//                    else if (tempPartDefectDetail.Defect_Degree == 4)
//                    {
//                        partyDefectDetail.Int_Level4_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }

//                    groupedPartDefectDetailsByTurnNoAndDefectName.Add(partyDefectDetail);

//                }
//                else
//                {

//                    partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
//                    if (tempPartDefectDetail.Defect_Degree == 1)
//                    {
//                        partyDefectDetail.Int_Level1_Defect_Degree_Count = (int)partyDefectDetail.Int_Level1_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }
//                    else if (tempPartDefectDetail.Defect_Degree == 2)
//                    {
//                        partyDefectDetail.Int_Level2_Defect_Degree_Count = (int)partyDefectDetail.Int_Level2_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }
//                    else if (tempPartDefectDetail.Defect_Degree == 3)
//                    {
//                        partyDefectDetail.Int_Level3_Defect_Degree_Count = (int)partyDefectDetail.Int_Level3_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }
//                    else if (tempPartDefectDetail.Defect_Degree == 4)
//                    {
//                        partyDefectDetail.Int_Level4_Defect_Degree_Count = (int)partyDefectDetail.Int_Level4_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
//                    }

//                }
//                //if (!hsSelectedPartDefectDetailsByTurnNo.ContainsKey(partyDefectDetail.Detect_Turn_No))
//                //{
//                //    hsSelectedPartDefectDetailsByTurnNo.Add(partyDefectDetail.Detect_Turn_No, new List<PartDefectInfoForReportByPiece>());
//                //}
//                if (!hsSelectedPartDefectDetailsByTurnNo.ContainsKey(partyDefectDetail.Detect_Turn_No.ToString() + partyDefectDetail.Defect_Name))
//                {
//                    hsSelectedPartDefectDetailsByTurnNo.Add(partyDefectDetail.Detect_Turn_No.ToString() + partyDefectDetail.Defect_Name, new List<PartDefectInfoForReportByPiece>());
//                }

//            }
//            #endregion step1 groupby broadno and defect name

//            //2:select fited level count by broadno and defect name

//            foreach (DictionaryEntry objDE in hsSelectedPartDefectDetailsByTurnNo)
//            {
//                bool selected = false;
//                //A: select level 4
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {
//                        if (partDefectInfoForReport.Int_Level4_Defect_Degree_Count >= 1)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);

//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 1;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 0;


//                            selected = true;
//                            break;
//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion A:select level4

//                //B: select level3
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {
//                        if (partDefectInfoForReport.Int_Level3_Defect_Degree_Count >= 1)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 1;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
//                            if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 1)
//                            {
//                                partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;

//                                selected = true;
//                                break;
//                            }
//                            else
//                            {
//                                //select level1 count >= 1
//                                #region
//                                foreach (PartDefectInfoForReportByPiece tempPartDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                                {
//                                    if ((tempPartDefectInfoForReport.Detect_Turn_No.ToString() + tempPartDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                                    {
//                                        if (tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 1)
//                                        {
//                                            tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;

//                                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(tempPartDefectInfoForReport);
//                                            selected = true;
//                                            break;
//                                        }
//                                    }
//                                }
//                                selected = true;
//                                break;
//                                #endregion select level1 count >= 1
//                            }

//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion B:select level3

//                //C:select level2
//                #region

//                //select level2 Count >= 2
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {

//                        if (partDefectInfoForReport.Int_Level2_Defect_Degree_Count >= 2)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 2;
//                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

//                            selected = true;
//                            break;
//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion select level2 Count >= 2

//                //select level2 Count == 1
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {

//                        if (partDefectInfoForReport.Int_Level2_Defect_Degree_Count == 1)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 1;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

//                            if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 2)
//                            {
//                                partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 2;
//                                selected = true;
//                                break;
//                            }
//                            else
//                            {
//                                //select level1 count==2
//                                #region
//                                foreach (PartDefectInfoForReportByPiece tempPartDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                                {
//                                    if ((tempPartDefectInfoForReport.Detect_Turn_No.ToString() + tempPartDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                                    {
//                                        if (tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 2)
//                                        {
//                                            tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count = 2;
//                                            tempPartDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;
//                                            tempPartDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                                            tempPartDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;

//                                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(tempPartDefectInfoForReport);
//                                            selected = true;
//                                            break;
//                                        }
//                                    }
//                                }
//                                if (selected)
//                                {
//                                    break;
//                                }
//                                #endregion  select level1 count ==2

//                                //select level1 count==1
//                                #region
//                                if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 1)
//                                {
//                                    partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;
//                                    selected = true;
//                                    break;
//                                }
//                                else
//                                {
//                                    foreach (PartDefectInfoForReportByPiece tempPartDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                                    {
//                                        if ((tempPartDefectInfoForReport.Detect_Turn_No.ToString() + tempPartDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                                        {
//                                            if (tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count == 1)
//                                            {
//                                                tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;
//                                                tempPartDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;
//                                                tempPartDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                                                tempPartDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;

//                                                ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(tempPartDefectInfoForReport);
//                                                selected = true;
//                                                break;
//                                            }
//                                        }
//                                    }
//                                    if (selected)
//                                    {
//                                        break;
//                                    }
//                                }
//                                #endregion select level1 count == 1
//                            }
//                            selected = true;
//                            break;

//                        }
//                    }
//                }


//                if (selected)
//                {
//                    continue;
//                }
//                #endregion select level count == 1

//                #endregion C: select level2

//                //D:select level1
//                #region
//                //select level1 Count == 4
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {

//                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 4)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 4;
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

//                            selected = true;
//                            break;

//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion select level1 Count == 4

//                //select level1 Count == 3
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {

//                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count == 3)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 3;
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

//                            selected = true;
//                            break;

//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion select level1 Count == 3

//                //select level1 Count == 2
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {

//                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count == 2)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 2;
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

//                            selected = true;
//                            break;

//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion select level1 Count == 2

//                //select level1 Count == 1
//                #region
//                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
//                {
//                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
//                    {

//                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count == 1)
//                        {
//                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
//                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;
//                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
//                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

//                            selected = true;
//                            break;

//                        }
//                    }
//                }
//                if (selected)
//                {
//                    continue;
//                }
//                #endregion select level1 Count=1

//                #endregion //D:select level1 //end of D:select level1



//            }


//            //3: group by defectname
//            List<PartDefectInfoForReportByPiece> groupedPartDefectDetailsByDefectName = new List<PartDefectInfoForReportByPiece>();

//            foreach (DictionaryEntry objDE in hsSelectedPartDefectDetailsByTurnNo)
//            {
//                foreach (PartDefectInfoForReportByPiece tempPartDefectDetail in (List<PartDefectInfoForReportByPiece>)objDE.Value)
//                {
//                    PartDefectInfoForReportByPiece partyDefectDetail = getPartyDefectDetailByDefectName(groupedPartDefectDetailsByDefectName, tempPartDefectDetail.Defect_Name);

//                    if (partyDefectDetail == null)
//                    {
//                        groupedPartDefectDetailsByDefectName.Add(tempPartDefectDetail);

//                    }
//                    else
//                    {

//                        partyDefectDetail.Int_Level1_Defect_Degree_Count = partyDefectDetail.Int_Level1_Defect_Degree_Count + tempPartDefectDetail.Int_Level1_Defect_Degree_Count;
//                        partyDefectDetail.Int_Level2_Defect_Degree_Count = partyDefectDetail.Int_Level2_Defect_Degree_Count + tempPartDefectDetail.Int_Level2_Defect_Degree_Count;
//                        partyDefectDetail.Int_Level3_Defect_Degree_Count = partyDefectDetail.Int_Level3_Defect_Degree_Count + tempPartDefectDetail.Int_Level3_Defect_Degree_Count;
//                        partyDefectDetail.Int_Level4_Defect_Degree_Count = partyDefectDetail.Int_Level4_Defect_Degree_Count + tempPartDefectDetail.Int_Level4_Defect_Degree_Count;

//                    }
//                }
//            }

//            //4:convert int_value to  str_value
//            foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByDefectName)
//            {

//                if (partDefectInfoForReport.Int_Level4_Defect_Degree_Count > 0)
//                {
//                    partDefectInfoForReport.Level4_Defect_Degree_Count = partDefectInfoForReport.Int_Level4_Defect_Degree_Count + "";
//                }

//                if (partDefectInfoForReport.Int_Level3_Defect_Degree_Count > 0)
//                {
//                    partDefectInfoForReport.Level3_Defect_Degree_Count = partDefectInfoForReport.Int_Level3_Defect_Degree_Count + "";
//                }
//                if (partDefectInfoForReport.Int_Level2_Defect_Degree_Count > 0)
//                {
//                    partDefectInfoForReport.Level2_Defect_Degree_Count = partDefectInfoForReport.Int_Level2_Defect_Degree_Count + "";
//                }

//                if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count > 0)
//                {
//                    partDefectInfoForReport.Level1_Defect_Degree_Count = partDefectInfoForReport.Int_Level1_Defect_Degree_Count + "";
//                }
//            }

//            return groupedPartDefectDetailsByDefectName;
//        }

//        private static PartDefectInfoForReportByPiece getPartyDefectDetailByDefectNameAndBroadNo(List<PartDefectInfoForReportByPiece> partDefects, string name, int broadNo)
//        {
//            PartDefectInfoForReportByPiece partyDefectDetail = null;
//            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
//            {
//                partyDefectDetail = partDefects[i];
//                if ((partyDefectDetail.Defect_Name == name)
//                    && (partyDefectDetail.Detect_Turn_No == broadNo))
//                {
//                    return partyDefectDetail;
//                }
//            }


//            return null;
//        }


//        private static PartDefectInfoForReportByPiece getPartyDefectDetailByDefectName(List<PartDefectInfoForReportByPiece> partDefects, string name)
//        {
//            PartDefectInfoForReportByPiece partyDefectDetail = null;
//            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
//            {
//                partyDefectDetail = partDefects[i];
//                if (partyDefectDetail.Defect_Name == name)
//                {
//                    return partyDefectDetail;
//                }
//            }


//            return null;
//        }


//        public static List<MaterialByLot> getDataByLot(string tempVersionNo, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {
//            NumberFormatInfo provider = new NumberFormatInfo();
//            //provider.NumberDecimalDigits = 4;
//            provider.NumberDecimalDigits = 0;
//            provider.NumberGroupSeparator = ".";


//            List<MaterialByLot> resultData = new List<MaterialByLot>();
//            MaterialByLot tempMaterialByLot = null;

//            string _ItemNo = "";

//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                _ItemNo = temp.Item_No;
//                if (isItemNoExistInMaterialByLot(temp.Item_No, temp.Stock_In_Date, resultData))
//                {
//                    continue;
//                }
//                List<PH984Field> tempPH984Fields = PH984Field.GetAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);
//                tempMaterialByLot = new MaterialByLot();
//                tempMaterialByLot.SideToSideH_Width = (int)temp.SideToSideH_Width;
//                tempMaterialByLot.VersionNo = tempVersionNo;
//                tempMaterialByLot.ItemNo = temp.Item_No.Substring(0, 9);
//                tempMaterialByLot.StockInDate = temp.Stock_In_Date;
//                tempMaterialByLot.ColorNo = temp.Item_No.Substring(9, 3);
//                //tempMaterialByLot.Wastage = getSumWastage(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers) * 100;
//                //tempMaterialByLot.Deduct = getSumDeduct(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);

//                tempMaterialByLot.ReceiveDate = temp.Stock_In_Date;
//                tempMaterialByLot.InspectionNo = (int)getMinSystemInstallNo(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                tempMaterialByLot.ReceiveLength = Math.Round(getSumActualLength(temp.Item_No, tempPH984Fields), 2);
//                tempMaterialByLot.InspectionLength = Math.Round(getSumInspcetionLength(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers), 2);//getSumInspectionLength(temp.Item_No, tempPH984Fields);//
//                tempMaterialByLot.ActualLength = (decimal)getSumActualLength(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);//getSumInspectionLength(temp.Item_No, tempPH984Fields);//


//                if (tempMaterialByLot.ReceiveLength != 0) tempMaterialByLot.InspectionRate = Math.Round((100 * tempMaterialByLot.ActualLength / tempMaterialByLot.ReceiveLength), 2);

//                tempMaterialByLot.Total_PHSample = (decimal)getSumPHSample(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                tempMaterialByLot.InspectionDate = getMaxInspectionData(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                //todo 標準布封(mm)
//                //tempMaterialByLot.UsableWidth
//                //實際布封(mm)
//                int iMinActualUsableWidth = (int)getMinAcutalUsableWidth(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                int iMaxActualUsableWidth = (int)getMaxAcutalUsableWidth(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                //tempMaterialByLot.ActualUsableWidth = Convert.ToString(iMinActualUsableWidth, provider) + " - " + Convert.ToString(iMaxActualUsableWidth, provider);
//                tempMaterialByLot.ActualUsableWidth = ((int)iMinActualUsableWidth).ToString() + " - " + ((int)iMaxActualUsableWidth).ToString();

//                //sharly 20100226 begin
//                //實際邊至邊布封(mm)
//                int iMinActEtoEWidth = (int)getMinActEtoEWidth(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                int iMaxActEtoEWidth = (int)getMaxActEtoEWidth(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                tempMaterialByLot.ActEtoEWidth = ((int)iMinActEtoEWidth).ToString() + " - " + ((int)iMaxActEtoEWidth).ToString();
//                //sharly 20100226 End

//                ///Summary
//                ///Modified By:Michael
//                ///Modified at:2008-09-01
//                ///Function Description:獲取抽檢匹數
//                ///Summary
//                tempMaterialByLot.Detect_Piece = Fabric_Insp_Headers.Count;

//                //todo 標準克重(spm)
//                if (tempPH984Fields.Count > 0)
//                {
//                    tempMaterialByLot.Weight = (int)tempPH984Fields[0].GM_SQM;
//                    tempMaterialByLot.Supplier_Width = (int)tempPH984Fields[0].Supplier_Width;
//                    tempMaterialByLot.UsableWidth = (int)tempPH984Fields[0].Usable_Width;

//                    ///Summary
//                    ///Modified By:Michael
//                    ///Modified at:2008-09-01
//                    ///Function Description:獲取回料匹數
//                    ///Summary
//                    tempMaterialByLot.GRN_Piece = tempPH984Fields.Count;

//                }

//                tempMaterialByLot.DifferenceUsableWidth = ((int)(iMinActualUsableWidth - tempMaterialByLot.UsableWidth)).ToString()
//                    + " - " + ((int)(iMaxActualUsableWidth - tempMaterialByLot.UsableWidth)).ToString();

//                //todo 實際克重(spm)
//                //                M1:被選擇的條件中最小的ACTUAL_WEIGHT  (ACTUAL_WEIGHT這個字段是需要新增的)
//                int iMinActualWeight = (int)getMinAcutalWeight(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                //M2:被選擇的條件中最大的ACTUAL_WEIGHT
//                int iMaxActualWeight = (int)getMaxAcutalWeight(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);


//                //tempMaterialByLot.ActualWeight = Convert.ToString(iMinActualWeight, provider) + " - " + Convert.ToString(iMaxActualWeight, provider);
//                tempMaterialByLot.ActualWeight = ((int)iMinActualWeight).ToString() + " - " + ((int)iMaxActualWeight).ToString();
//                //tempMaterialByLot.DifferenceWeight = Convert.ToString((iMinActualWeight - tempMaterialByLot.Weight), provider) + " - " + Convert.ToString((iMaxActualWeight - tempMaterialByLot.Weight), provider);
//                tempMaterialByLot.DifferenceWeight = ((int)(iMinActualWeight - tempMaterialByLot.Weight)).ToString() + " - " + ((int)(iMaxActualWeight - tempMaterialByLot.Weight)).ToString();

//                tempMaterialByLot.ShortPercent = getShortPercent(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);
//                //tempMaterialByLot.PartReturnQty = getPartReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
//                tempMaterialByLot.ReturnQty = getReturnQty(temp.Item_No, temp.Stock_In_Date, Fabric_Insp_Headers);

//                tempMaterialByLot.MoreOrLessLength = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * tempMaterialByLot.ShortPercent;
//                tempMaterialByLot.MoreOrLessLength = Math.Round(tempMaterialByLot.MoreOrLessLength, 2);
//                if (tempMaterialByLot.MoreOrLessLength > 0)
//                {
//                    tempMaterialByLot.ShortLengthString = "長碼Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";
//                }
//                else
//                {
//                    tempMaterialByLot.ShortLengthString = "短碼Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";
//                }


//                tempMaterialByLot.PO = getAllPONo(temp.Item_No, tempPH984Fields);
//                tempMaterialByLot.HdoNo = getAllHDONo(temp.Item_No, tempPH984Fields);
//                tempMaterialByLot.ProjectNo = getAllProjectNo(temp.Item_No, tempPH984Fields);


//                ///Summary
//                ///Modified By:Michael
//                ///Modified at:2008-09-01
//                ///Function Description:obtain Invoice No
//                ///Summary

//                tempMaterialByLot.InvoiceNo = getAllInvoiceNo(temp.Item_No, tempPH984Fields);

//                ///==========================================================================
//                ///Summary
//                ///Modified By:Michael
//                ///Modified at:2008-09-01
//                ///Function Description:obtain Supplier Item No
//                ///Summary
//                ///==========================================================================

//                tempMaterialByLot.Supplier_Item_No = tempPH984Fields[0].Supplier_Item_No;
//                tempMaterialByLot.Supplier = tempPH984Fields[0].SupplierName;
//                tempMaterialByLot.SupplierDescription = tempPH984Fields[0].Supplier_Description;

//                ///======================================================================================
//                /// <summary>
//                /// Modified By:Michael Luo
//                /// Modified at:2008-09-01
//                /// Function Desction:
//                /// 1.把每個LOT ID 每板的相同的局部疵點的分數累加(同一個板數若分數為4分,則取第一個4分的,
//                /// 若超過一個板數的一條記錄超過4分的統一按4分計算;若同一板數多條記錄少於4分,則取多條記錄;
//                /// 若同一板數多條記錄大於4分,則取累計分數為4分的記錄
//                /// 2.再將不同疵點的分數分別累加後,將分數最嚴重的五個局部疵點
//                ///======================================================================================

//                calcPartDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date);
//                //calcPartDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);
//                ///======================================================================================

//                //S: 將所有的不同的散佈疵點顯示出來
//                getSpreadDefects(temp.Item_No, tempMaterialByLot, Fabric_Insp_Headers);
//                //T: 具體內容請參考我8月9號發給你的郵件 (郵件名稱:參考用戶提供的EXCEL)
//                //U: 具體內容請參考我8月9號發給你的郵件 (郵件名稱:參考用戶提供的EXCEL)
//                getMouldTrialAndColorAndWeftYarnInfo(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, Fabric_Insp_Headers);
//                getInsepctionHeaderPartDefectsAndSpreadDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, Fabric_Insp_Headers);

//                ///============================================================================
//                ///Modified By:Michael
//                ///Modified At:2008-07-25
//                getSpreadDefectProcSolution(_ItemNo, tempMaterialByLot, Fabric_Insp_Headers);
//                ///============================================================================

//                resultData.Add(tempMaterialByLot);
//            }

//            return resultData;
//        }

//        private static bool isItemNoExistInMaterialByLot(String strItemNo, string stockInDate, List<MaterialByLot> resultData)
//        {
//            foreach (MaterialByLot materialByLot in resultData)
//            {
//                if ((materialByLot.ItemNo == strItemNo.Substring(0, 9)) && (materialByLot.StockInDate == stockInDate))
//                {
//                    return true;
//                }
//            }
//            return false;
//        }


//        private static decimal getSumWastage(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal dSumWastage = 0;
//            decimal dSumActualLength = 0;
//            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    dSumWastage = dSumWastage + (decimal)temp.Actual_Length * (decimal)temp.Wastage;
//                    dSumActualLength = dSumActualLength + (decimal)temp.Actual_Length;
//                }

//            }
//            if (dSumActualLength == 0)
//            {
//                return 0;
//            }
//            else
//            {
//                return dSumWastage / dSumActualLength;
//            }
//        }


//        private static decimal getSumDeduct(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal dSum = 0;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    dSum = dSum + (decimal)temp.Actual_Length * (decimal)temp.Wastage;
//                }

//            }
//            return dSum;
//        }


//        private static int getMinSystemInstallNo(String strItemNo, string stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            int iMin = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMin = temp.System_Install_No;
//                        isFirst = false;
//                    }
//                    if (temp.System_Install_No < iMin)
//                    {
//                        iMin = temp.System_Install_No;
//                    }
//                }

//            }
//            return iMin;
//        }


//        private static decimal getSumActualLength(String strItemNo, List<PH984Field> tempInspectionHeaders)
//        {
//            PH984Field temp = null;
//            decimal dSum = 0;
//            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
//            {
//                temp = tempInspectionHeaders[i];
//                if (temp.Item_No == strItemNo)
//                {

//                    dSum = dSum + temp.Actual_Length;

//                }

//            }
//            return Math.Round(dSum, 2);
//        }



//        private static decimal getSumInspcetionLength(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal dSum = 0;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    dSum = dSum + (decimal)temp.Actual_Length;
//                }

//            }
//            return Math.Round(dSum, 2);
//        }

//        private static decimal getSumActualLength(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal dSum = 0;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    dSum = dSum + (decimal)temp.Actual_Length;
//                }

//            }
//            return dSum;
//        }

//        private static decimal getSumPHSample(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal dSum = 0;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    dSum = dSum + (decimal)temp.Panel_Size1 * (decimal)temp.Panel_Size2;
//                }

//            }
//            return dSum;
//        }

//        private static DateTime getMaxInspectionData(String strItemNo, string stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            DateTime dMax = DateTime.Now;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (temp.Create_Date != null)
//                    {
//                        if (isFirst)
//                        {
//                            dMax = (DateTime)temp.Create_Date;
//                            isFirst = false;
//                        }

//                        if (((DateTime)temp.Create_Date).CompareTo(dMax) > 0)
//                        {
//                            dMax = (DateTime)temp.Create_Date;
//                        }
//                    }
//                }

//            }
//            return dMax;
//        }


//        private static decimal getMinAcutalUsableWidth(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal iMin = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMin = (decimal)temp.Usable_Width;
//                        isFirst = false;
//                    }

//                    if (temp.Usable_Width < iMin)
//                    {
//                        iMin = (decimal)temp.Usable_Width;
//                    }
//                }

//            }
//            return iMin;
//        }


//        private static decimal getMaxAcutalUsableWidth(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal iMax = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMax = (decimal)temp.Usable_Width;
//                        isFirst = false;
//                    }

//                    if (temp.Usable_Width > iMax)
//                    {
//                        iMax = (decimal)temp.Usable_Width;
//                    }
//                }

//            }
//            return iMax;
//        }


//        private static decimal getMinActEtoEWidth(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal iMin = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMin = (decimal)temp.SideToSideH_Width;
//                        isFirst = false;
//                    }

//                    if (temp.SideToSideH_Width < iMin)
//                    {
//                        iMin = (decimal)temp.SideToSideH_Width;
//                    }
//                }

//            }
//            return iMin;
//        }

//        private static decimal getMaxActEtoEWidth(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal iMax = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMax = (decimal)temp.SideToSideH_Width;
//                        isFirst = false;
//                    }

//                    if (temp.SideToSideH_Width > iMax)
//                    {
//                        iMax = (decimal)temp.SideToSideH_Width;
//                    }
//                }

//            }
//            return iMax;
//        }

//        private static decimal getShortPercent(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal shortPercent = 0;
//            decimal sumInsp_Length = 0;
//            decimal sumActual_Length = 0;
//            decimal sumPH_Sample = 0;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate)
//                    && (temp.Insp_Length > 0) && (temp.Spread_Insp_Result != "3") && (temp.Party_Insp_Result != "3") && (temp.Mould_Trial_Result != "2") && (temp.Color_Group_Status.Substring(0, 1) != "?"))
//                {
//                    sumInsp_Length = sumInsp_Length + (decimal)temp.Insp_Length;
//                    sumActual_Length = sumActual_Length + (decimal)temp.Actual_Length;
//                    sumPH_Sample = sumPH_Sample + (decimal)temp.PH_Sample;
//                }

//            }
//            if (sumActual_Length != 0)
//            {
//                shortPercent = (sumInsp_Length - sumActual_Length + sumPH_Sample) / sumInsp_Length;
//            }
//            return Math.Round(shortPercent, 2); ;
//        }

//        private static decimal getReturnQty(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal ReturnQty = 0;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate)
//                    && (temp.Insp_Length > 0) && ((temp.Spread_Insp_Result == "3") || (temp.Party_Insp_Result == "3") || (temp.Mould_Trial_Result == "2") || (temp.Color_Group_Status.Substring(0, 1) == "?")))
//                {
//                    ReturnQty = ReturnQty + (decimal)temp.Actual_Length;
//                }

//            }

//            return Math.Round(ReturnQty, 2); ;
//        }


//        //private static decimal MoreOrLessLength
//        //{
//        //    get { return (ReceiveLength - ReturnQty) * ShortPercent; }
//        //}

//        //private string ShortLengthString
//        //{

//        //    get
//        //    {
//        //        if (MoreOrLessLength > 0)
//        //        {
//        //            return " 長碼Length" + MoreOrLessLength.ToString() + "(" + ShortPercent.ToString() + ")%";
//        //        }
//        //        else
//        //        {
//        //            return " 短碼Short" + MoreOrLessLength.ToString() + "(" + ShortPercent.ToString() + ")%";
//        //        }
//        //    }

//        //}

//        private static decimal getMinAcutalWeight(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal iMin = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMin = (decimal)temp.Actual_Weight;
//                        isFirst = false;
//                    }

//                    if (temp.Actual_Weight < iMin)
//                    {
//                        iMin = (decimal)temp.Actual_Weight;
//                    }
//                }

//            }
//            return iMin;
//        }

//        private static decimal getMaxAcutalWeight(String strItemNo, String stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            decimal iMax = 0;
//            bool isFirst = true;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    if (isFirst)
//                    {
//                        iMax = (decimal)temp.Actual_Weight;
//                        isFirst = false;
//                    }

//                    if (temp.Actual_Weight > iMax)
//                    {
//                        iMax = (decimal)temp.Actual_Weight;
//                    }
//                }

//            }
//            return iMax;
//        }

//        private static string getAllPONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
//        {
//            PH984Field temp = null;
//            string strPO = "";

//            List<string> strNos = new List<string>();

//            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
//            {
//                temp = tempInspectionHeaders[i];
//                if (temp.Item_No == strItemNo)
//                {
//                    if (strNos.IndexOf(temp.PO) < 0)
//                    {
//                        strNos.Add(temp.PO);
//                    }


//                }

//            }

//            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
//            {
//                if (strPO.Length == 0)
//                {
//                    strPO = strNos[i];
//                }
//                else
//                {
//                    strPO = strPO + "," + strNos[i];
//                }

//            }

//            return strPO;
//        }

//        private static string getAllHDONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
//        {
//            PH984Field temp = null;
//            string strHdoNo = "";
//            List<string> strNos = new List<string>();

//            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
//            {
//                temp = tempInspectionHeaders[i];
//                if (temp.Item_No == strItemNo)
//                {
//                    if (strNos.IndexOf(temp.HdoNo) < 0)
//                    {
//                        strNos.Add(temp.HdoNo);
//                    }

//                }

//            }

//            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
//            {
//                if (strHdoNo.Length == 0)
//                {
//                    strHdoNo = strNos[i];
//                }
//                else
//                {
//                    strHdoNo = strHdoNo + "," + strNos[i];
//                }

//            }
//            return strHdoNo;
//        }


//        private static string getAllProjectNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
//        {
//            PH984Field temp = null;
//            string strProjectNo = "";
//            List<string> strNos = new List<string>();
//            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
//            {
//                temp = tempInspectionHeaders[i];
//                if (temp.Item_No == strItemNo)
//                {
//                    if (strNos.IndexOf(temp.ProjectNo) < 0)
//                    {
//                        strNos.Add(temp.ProjectNo);
//                    }

//                }

//            }

//            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
//            {
//                if (strProjectNo.Length == 0)
//                {
//                    strProjectNo = strNos[i];
//                }
//                else
//                {
//                    strProjectNo = strProjectNo + "," + strNos[i];
//                }

//            }


//            return strProjectNo;
//        }

//        private static string getAllInvoiceNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
//        {
//            PH984Field temp = null;
//            string strInvioceNo = "";
//            List<string> strNos = new List<string>();
//            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
//            {
//                temp = tempInspectionHeaders[i];
//                if (temp.Item_No == strItemNo)
//                {
//                    if (strNos.IndexOf(temp.InvoiceNo) < 0)
//                    {
//                        strNos.Add(temp.InvoiceNo);
//                    }

//                }

//            }

//            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
//            {
//                if (strInvioceNo.Length == 0)
//                {
//                    strInvioceNo = strNos[i];
//                }
//                else
//                {
//                    strInvioceNo = strInvioceNo + "," + strNos[i];
//                }

//            }


//            return strInvioceNo;
//        }


//        /// <summary>
//        /// Modified By:Michael Luo
//        /// Modified at:2008-09-01
//        /// Function Desction:
//        /// 1.把每個LOT ID 每板的相同的局部疵點的分數累加(同一個板數若分數為4分,則取第一個4分的,
//        /// 若超過一個板數的一條記錄超過4分的統一按4分計算;若同一板數多條記錄少於4分,則取多條記錄;
//        /// 若同一板數多條記錄大於4分,則取累計分數為4分的記錄
//        /// 2.再將不同疵點的分數分別累加後,將分數最嚴重的五個局部疵點
//        /// </summary>
//        /// <param name="strItemNo"></param>
//        /// <param name="materialByLot"></param>
//        /// <param name="stockInDate"></param>
//        private static void calcPartDefects(String strItemNo, MaterialByLot materialByLot, string stockInDate)
//        {
//            if (materialByLot.PartyDefectDetailItems == null)
//            {
//                materialByLot.PartyDefectDetailItems = new List<PartDefectInfo>();
//            }
//            DataTable dt = new DataTable();
//            dt = Exe_GetPartyDefectName_CountFour(strItemNo, stockInDate);
//            int cx = 1;

//            foreach (DataRow row in dt.Rows)
//            {
//                List<PartDefectInfo> groupedPartDefectDetails = new List<PartDefectInfo>();
//                PartDefectInfo partyDefectDetail = new PartDefectInfo();
//                partyDefectDetail.Defect_Name = row["Defect_Name"].ToString();
//                groupedPartDefectDetails.Add(partyDefectDetail);
//                if (cx <= 5) materialByLot.PartyDefectDetailItems.AddRange(groupedPartDefectDetails);
//                cx++;
//            }
//        }


//        private static void getSpreadDefects(String strItemNo, MaterialByLot materialByLot, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            if (materialByLot.SpreadDefectDetailItems == null)
//            {
//                materialByLot.SpreadDefectDetailItems = new List<SpreadDefectInfoByReport>();
//            }
//            SpreadDefectInfoByReport spreadInfo = null;
//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                foreach (Fabric_Insp_SpreadDefect spreadDetail in temp.Fabric_Insp_SpreadDefects)
//                {
//                    spreadInfo = new SpreadDefectInfoByReport();
//                    spreadInfo.Company = spreadDetail.Company;
//                    spreadInfo.System_Install_No = spreadDetail.System_Install_No;
//                    //?? 2008-07-11
//                    //                    spreadInfo.Item_No = spreadDetail.Item_No;
//                    //                    spreadInfo.Lot_Id = spreadDetail.Lot_Id;
//                    //
//                    spreadInfo.Defect_Type = spreadDetail.Defect_Type;

//                    spreadInfo.Defect_Name = spreadDetail.Defect_Name;

//                    spreadInfo.Spread_Defect_Degree = spreadDetail.Spread_Defect_Degree;
//                    spreadInfo.From_Place = spreadDetail.From_Place;

//                    spreadInfo.To_Place = spreadDetail.To_Place;
//                    spreadInfo.Spread_Insp_Result = temp.Spread_Insp_Result;

//                    materialByLot.SpreadDefectDetailItems.Add(spreadInfo);
//                }

//            }

//        }

//        private static void getSpreadDefectProcSolution(String strItemNo, MaterialByLot materialByLot, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {
//            Fabric_Insp_Header temp = null;
//            // PH.FabricInspection.BO.FabricInspectionDataContext sm = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
//            //PH.FabricInspection.BO.FabricInspectionDataContext sm = new PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
//            PH.FabricInspection.BO.FabricInspectionDataContext sm = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
//            string strConn = sm.Connection.ConnectionString.ToString();

//            SqlConnection conn = new SqlConnection(strConn);
//            conn.Open();
//            SqlCommand command = conn.CreateCommand();
//            command.Connection = conn;
//            DataTable dt = new DataTable();
//            String RN_Status = "";
//            string KS_Status = "";
//            String OK_Status = "";

//            if (materialByLot.SpreadDefectProcSolutions == null)
//            {
//                materialByLot.SpreadDefectProcSolutions = new List<SpreadDefectProcSolutionByReport>();
//            }
//            SpreadDefectProcSolutionByReport spreadInfo = null;
//            //??
//            temp = Fabric_Insp_Headers[0];

//            string strSQL = "";
//            string strResult = "";
//            string strResult1 = "";
//            string strResult2 = "";
//            strSQL = "Select Item_No,Stock_In_Date,Spread_Insp_Result from dbo.view_SpreadDefect where Spread_Insp_Result is not null and Item_No='" + temp.Item_No + "' and Stock_In_date = '" + temp.Stock_In_Date + "' ";
//            strSQL = strSQL + "Group by Item_No,Stock_In_Date,Spread_Insp_Result";
//            command.CommandText = strSQL;
//            SqlDataAdapter adpt = new SqlDataAdapter(command);
//            adpt.Fill(dt);

//            foreach (DataRow row in dt.Rows)
//            {
//                switch (row["Spread_Insp_Result"].ToString())
//                {
//                    case "3":  //Return
//                        RN_Status = "3";
//                        break;
//                    case "2":  //Deduct
//                        KS_Status = "2";
//                        break;
//                    case "1":  //OK
//                        OK_Status = "1";
//                        break;
//                }
//            }

//            dt.Dispose();

//            if ((RN_Status == "3" && KS_Status == "2" && OK_Status == "OK") || (RN_Status == "3" && KS_Status == "2"))
//            {
//                spreadInfo = new SpreadDefectProcSolutionByReport();

//                strSQL = "SELECT  Item_No, Stock_In_Date, SUM(Actual_Length) AS Actual_Length, SUM(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('2') ";
//                strSQL += " And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                strSQL += "GROUP BY Item_No, Stock_In_Date";

//                dt = getTable(strSQL);
//                if (dt.Rows.Count > 0)
//                {
//                    spreadInfo.Item_No = temp.Item_No;
//                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
//                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
//                    spreadInfo.KSQty = dt.Rows[0]["Actual_Length"].ToString();
//                    spreadInfo.WastageQty = dt.Rows[0]["WastageQty"].ToString();
//                    DataTable dtWas = new DataTable();
//                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
//                    dtWas = getTable(strSQL);
//                    string strWastage = "";
//                    if (getReplace(dtWas, "Special_Marker").IndexOf("/") > 0)
//                        strWastage = "";
//                    else
//                    {
//                        strWastage = dtWas.Rows[0]["Special_Marker"].ToString();
//                    }

//                    spreadInfo.Wastage = strWastage;

//                    DataTable dtDefect = new DataTable();

//                    strSQL = "Select Defect_Name from view_SpreadDefect where Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Defect_Name";

//                    dtDefect = getTable(strSQL);

//                    spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "Defect_Name");
//                    DataTable dtSolution = new DataTable();

//                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
//                    dtSolution = getTable(strSQL);

//                    string[] strSpreadDefectSolution = new string[5];
//                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
//                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
//                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
//                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
//                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

//                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);
//                    if (strWastage == "")
//                    {
//                        strResult1 = "(1). " + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + " m 散佈型疵點名稱:" + spreadInfo.SpreadDefect_Name + " 處理方案: " + spreadInfo.SpreadDefeceSolution + "根據CAD排麥所超用量:" + spreadInfo.WastageQty + "m";
//                    }
//                    else
//                    {
//                        strResult1 = "(1). " + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + " m 散佈型疵點名稱:" + spreadInfo.SpreadDefect_Name + " 處理方案: " + spreadInfo.SpreadDefeceSolution + "根據CAD排麥所超用量:" + spreadInfo.WastageQty + "m(損耗率:" + spreadInfo.Wastage + ")";
//                    }
//                    spreadInfo.SpreadDefectResult = strResult1;
//                    //materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
//                }

//                ///===================================================================
//                //spreadInfo = new SpreadDefectProcSolutionByReport();

//                strSQL = "SELECT  Item_No, Stock_In_Date, SUM(Actual_Length) AS Actual_Length, SUM(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('3') ";
//                strSQL += " And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                strSQL += "GROUP BY Item_No, Stock_In_Date";

//                dt = getTable(strSQL);
//                if (dt.Rows.Count > 0)
//                {
//                    spreadInfo.Item_No = temp.Item_No;
//                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
//                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
//                    spreadInfo.ReturnQty = dt.Rows[0]["Actual_Length"].ToString();
//                    DataTable dtWas = new DataTable();
//                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
//                    dtWas = getTable(strSQL);

//                    DataTable dtDefect = new DataTable();

//                    strSQL = "Select Defect_Name from view_SpreadDefect where Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Defect_Name";

//                    dtDefect = getTable(strSQL);

//                    spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "Defect_Name");
//                    DataTable dtSolution = new DataTable();

//                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
//                    dtSolution = getTable(strSQL);

//                    string[] strSpreadDefectSolution = new string[5];
//                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
//                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
//                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
//                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
//                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

//                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);

//                    strResult2 = "(2). " + spreadInfo.QNum + "卷/" + spreadInfo.ReturnQty + " m 全卷性 " + spreadInfo.SpreadDefect_Name + " 處理方案: " + spreadInfo.SpreadDefeceSolution;
//                    spreadInfo.SpreadDefectResult = strResult1 + "\n\n\n" + strResult2;
//                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
//                    ///===================================================================
//                }
//            }

//            else if (RN_Status == "3" && OK_Status == "1")
//            {
//                spreadInfo = new SpreadDefectProcSolutionByReport();

//                strSQL = "SELECT  Item_No, Stock_In_Date, SUM(Actual_Length) AS Actual_Length, SUM(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '3') ";
//                strSQL += "And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                strSQL += "GROUP BY Item_No, Stock_In_Date";

//                dt = getTable(strSQL);
//                if (dt.Rows.Count > 0)
//                {
//                    spreadInfo.Item_No = temp.Item_No;
//                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
//                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
//                    spreadInfo.ReturnQty = dt.Rows[0]["Actual_Length"].ToString();
//                    DataTable dtWas = new DataTable();
//                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
//                    dtWas = getTable(strSQL);

//                    DataTable dtDefect = new DataTable();

//                    strSQL = "Select Defect_Name from view_SpreadDefect where Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Defect_Name";

//                    dtDefect = getTable(strSQL);

//                    spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "Defect_Name");
//                    DataTable dtSolution = new DataTable();

//                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
//                    dtSolution = getTable(strSQL);

//                    string[] strSpreadDefectSolution = new string[5];
//                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
//                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
//                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
//                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
//                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

//                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);

//                    strResult = "(2). " + spreadInfo.QNum + "卷/" + spreadInfo.ReturnQty + " m 全卷性 " + spreadInfo.SpreadDefect_Name + " 處理方案: " + spreadInfo.SpreadDefeceSolution;
//                    spreadInfo.SpreadDefectResult = strResult;
//                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
//                }
//            }
//            else if (KS_Status == "2")
//            {
//                spreadInfo = new SpreadDefectProcSolutionByReport();

//                strSQL = "SELECT  Item_No, Stock_In_Date, SUM(Actual_Length) AS Actual_Length, SUM(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '2') ";
//                strSQL += "And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                strSQL += "GROUP BY Item_No, Stock_In_Date";

//                dt = getTable(strSQL);
//                if (dt.Rows.Count > 0)
//                {
//                    spreadInfo.Item_No = temp.Item_No;
//                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
//                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
//                    spreadInfo.KSQty = dt.Rows[0]["Actual_Length"].ToString();
//                    spreadInfo.WastageQty = dt.Rows[0]["WastageQty"].ToString();
//                    DataTable dtWas = new DataTable();
//                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
//                    dtWas = getTable(strSQL);
//                    string strWastage = "";
//                    if (getReplace(dtWas, "Special_Marker").IndexOf("/") > 0)
//                        strWastage = "";
//                    else
//                    {
//                        strWastage = dtWas.Rows[0]["Special_Marker"].ToString();
//                    }

//                    spreadInfo.Wastage = strWastage;

//                    DataTable dtDefect = new DataTable();

//                    strSQL = "Select Defect_Name from view_SpreadDefect where Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Defect_Name";

//                    dtDefect = getTable(strSQL);

//                    spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "Defect_Name");
//                    DataTable dtSolution = new DataTable();

//                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
//                    dtSolution = getTable(strSQL);

//                    string[] strSpreadDefectSolution = new string[5];
//                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
//                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
//                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
//                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
//                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

//                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);
//                    if (strWastage == "0")
//                    {
//                        strResult = "(1). " + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + " m 散佈型疵點名稱:" + spreadInfo.SpreadDefect_Name + " 處理方案: " + spreadInfo.SpreadDefeceSolution + "根據CAD排麥所超用量:" + spreadInfo.WastageQty + "m";
//                    }
//                    else
//                    {
//                        strResult = "(1). " + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + " m 散佈型疵點名稱:" + spreadInfo.SpreadDefect_Name + " 處理方案: " + spreadInfo.SpreadDefeceSolution + "根據CAD排麥所超用量:" + spreadInfo.WastageQty + "m(損耗率:" + spreadInfo.Wastage + ")";
//                    }
//                    spreadInfo.SpreadDefectResult = strResult;
//                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
//                }
//            }
//            else if (RN_Status == "3")
//            {
//                spreadInfo = new SpreadDefectProcSolutionByReport();

//                strSQL = "SELECT  Item_No, Stock_In_Date, SUM(Actual_Length) AS Actual_Length, SUM(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '3') ";
//                strSQL += "And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                strSQL += "GROUP BY Item_No, Stock_In_Date";

//                dt = getTable(strSQL);
//                if (dt.Rows.Count > 0)
//                {
//                    spreadInfo.Item_No = temp.Item_No;
//                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
//                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
//                    spreadInfo.KSQty = dt.Rows[0]["Actual_Length"].ToString();
//                    spreadInfo.WastageQty = dt.Rows[0]["WastageQty"].ToString();
//                    DataTable dtWas = new DataTable();
//                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
//                    dtWas = getTable(strSQL);

//                    DataTable dtDefect = new DataTable();

//                    strSQL = "Select Defect_Name from view_SpreadDefect where Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Defect_Name";

//                    dtDefect = getTable(strSQL);

//                    spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "Defect_Name");
//                    DataTable dtSolution = new DataTable();

//                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
//                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
//                    dtSolution = getTable(strSQL);

//                    string[] strSpreadDefectSolution = new string[5];
//                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
//                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
//                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
//                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
//                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

//                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);

//                    strResult = "(1). 全卷性 " + spreadInfo.SpreadDefect_Name + "拒收,退貨.";
//                    spreadInfo.SpreadDefectResult = strResult;
//                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);

//                }
//            }
//        }


//        private static void getMouldTrialAndColorAndWeftYarnInfo(String strItemNo, MaterialByLot materialByLot, string stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            if (materialByLot.MouldTrialAndColorAndWeftYarnInfo == null)
//            {
//                materialByLot.MouldTrialAndColorAndWeftYarnInfo = new List<MouldTrialAndColorAndWeftYarnInfo>();
//            }


//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {

//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    MouldTrialAndColorAndWeftYarnInfo mouldtrialInfo = new MouldTrialAndColorAndWeftYarnInfo();
//                    mouldtrialInfo.Lot_Id = temp.Lot_Id;
//                    mouldtrialInfo.MouldTrialStatus = temp.Mould_Trial_Result_Desc;
//                    mouldtrialInfo.WeftYarnStatus = temp.WeftYarnStatusDesc;
//                    mouldtrialInfo.ColorGroupStatus = MasterTableUtil.GetColorGroup(temp.Company, temp.Item_No, temp.Lot_Id);
//                    materialByLot.MouldTrialAndColorAndWeftYarnInfo.Add(mouldtrialInfo);
//                    temp.Color_Group_Status = mouldtrialInfo.ColorGroupStatus;
//                }

//            }

//        }


//        private static void getInsepctionHeaderPartDefectsAndSpreadDefects(string strItemNo, MaterialByLot materialByLot, string stockInDate, List<Fabric_Insp_Header> Fabric_Insp_Headers)
//        {

//            if (materialByLot.InspectionHeaders == null)
//            {
//                materialByLot.InspectionHeaders = new List<Fabric_Insp_Header>();
//            }
//            materialByLot.InspectionHeaders.Clear();

//            if (materialByLot.AllPartDefects == null)
//            {
//                materialByLot.AllPartDefects = new List<Fabric_Insp_PartDefect>();
//            }
//            materialByLot.AllPartDefects.Clear();

//            if (materialByLot.AllSpreadDefects == null)
//            {
//                materialByLot.AllSpreadDefects = new List<Fabric_Insp_SpreadDefect>();
//            }
//            materialByLot.AllSpreadDefects.Clear();


//            foreach (Fabric_Insp_Header temp in Fabric_Insp_Headers)
//            {
//                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
//                {
//                    materialByLot.InspectionHeaders.Add(temp);
//                    materialByLot.AllPartDefects.AddRange(temp.Fabric_Insp_PartDefects);
//                    materialByLot.AllSpreadDefects.AddRange(temp.Fabric_Insp_SpreadDefects);
//                }

//            }
//        }


//        private static DataTable Exe_GetPartyDefectName_CountFour(string pItem_No, string pStock_In_Date)
//        {
//            ///Summary
//            ///Obtain Spread Defect Records for current select Spread Defect Records.
//            ///Summary

//            //PH.FabricInspection.BO.FabricInspectionDataContext ms = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
//            PH.FabricInspection.BO.FabricInspectionDataContext ms = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();

//            string strConn = "";
//            strConn = ms.Connection.ConnectionString.ToString();
//            SqlConnection conn = new SqlConnection(strConn);
//            conn.Open();
//            SqlCommand command = conn.CreateCommand();
//            command.Connection = conn;
//            command.CommandType = CommandType.StoredProcedure;
//            command.CommandText = "sp_GetPartyDefectName_CountFour";
//            command.Parameters.Add("@Item_No", SqlDbType.VarChar, 15).Value = pItem_No;
//            command.Parameters.Add("@Stock_In_Date", SqlDbType.VarChar, 10).Value = pStock_In_Date;

//            DataTable dt = new DataTable();

//            try
//            {
//                SqlDataAdapter adpt = new SqlDataAdapter(command);
//                adpt.Fill(dt);
//                return dt;

//            }
//            catch (Exception ex)
//            {
//                command.Parameters.Clear();
//                command.Dispose();
//                conn.Dispose();
//                ms.Dispose();
//                MessageBox.Show(ex.Message);
//                return dt;
//            }

//            finally
//            {
//                command.Parameters.Clear();
//                command.Dispose();
//                conn.Dispose();
//                ms.Dispose();

//            }

//        }

//        private static DataTable getTable(string strSQL)
//        {
//            DataTable dt = new DataTable();
//            PH.FabricInspection.BO.FabricInspectionDataContext sm = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
//            string strConn = sm.Connection.ConnectionString.ToString();

//            SqlConnection conn = new SqlConnection(strConn);
//            conn.Open();
//            SqlCommand command = conn.CreateCommand();
//            command.Connection = conn;

//            command.CommandText = strSQL;
//            SqlDataAdapter adpt = new SqlDataAdapter(command);
//            adpt.Fill(dt);
//            return dt;
//        }


//        private static string getReplace(DataTable dt, string FieldName)
//        {
//            string strReplace = "";
//            foreach (DataRow row in dt.Rows)
//            {
//                if (strReplace == "")
//                {
//                    strReplace = row[FieldName].ToString();
//                }
//                else
//                {
//                    if (strReplace.IndexOf(row[FieldName].ToString()) >= 0)
//                    {
//                    }
//                    else
//                    {
//                        strReplace = strReplace + "/" + row[FieldName].ToString();
//                    }
//                }

//            }
//            return strReplace;
//        }


//        private static string getReplace(string[] FieldName)
//        {
//            string strReplace = "";
//            for (int i = 0; i < FieldName.Length; i++)
//            {
//                if (strReplace == "")
//                {
//                    strReplace = FieldName[i].ToString();
//                }
//                else
//                {
//                    if (strReplace.IndexOf(FieldName[i].ToString()) >= 0)
//                    {
//                    }
//                    else
//                    {
//                        strReplace = strReplace + "/" + FieldName[i].ToString();
//                    }
//                }

//            }
//            return strReplace;
//        }


//    }
//}
