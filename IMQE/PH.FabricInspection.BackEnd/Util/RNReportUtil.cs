using System;
using System.Collections.Generic;
using System.Text;
using System.Globalization;
using PH.FabricInspection.BO;
using System.Data;
using System.Linq;
using PH.Platform.BO;

namespace PH.FabricInspection.BackEnd
{
    public class RNReportUtil
    {
        private  static Guid key;

        private static DateTime time = DateTime.Now;

        private static string timeFormat = "yyyy/MM/dd HH:mm:ss";

        public static DictionaryDataSource getDataByRNReport(string tempVersionNo, List<RN_Header> RN_Headers)
        {
            //List<RNHeaderByReport> resultData = new List<RNHeaderByReport>();
            DictionaryDataSource resultData = new DictionaryDataSource();//new List<RNHeaderByReport>();
            RNHeaderByReport tempRnHeaderByReport = null;
            
            List<PH984Field> allPH984Fields = new List<PH984Field>();
            
            foreach (RN_Header temp in RN_Headers)
            {
                
                if (!isItemNoExistInPH984Fields(temp.Item_No, allPH984Fields))
                {
                    List<PH984Field> tempPH984Fields = getAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);
                    allPH984Fields.AddRange(tempPH984Fields);
                }
                PH984Field tempPH984Field = getPH984FieldWithItemNo(temp.Item_No, temp.Stock_In_Date, allPH984Fields);

                
                List<Fabric_Insp_Header> relatedInspectionHeaders = GetInspectionWithCompanyItemNo(temp.Company, temp.Item_No, temp.RN_number);
                tempRnHeaderByReport = new RNHeaderByReport();
                tempRnHeaderByReport.VersionNo = tempVersionNo;
                tempRnHeaderByReport.RN_number = temp.RN_number;
                //if (temp.RNDetailItems.Count > 0){
                //    tempRnHeaderByReport.SupplierName = temp.RNDetailItems[0].Supplier_Name;
                //}

                if (tempPH984Field != null)
                {
                    tempRnHeaderByReport.NewSupplierName = tempPH984Field.NewSupplierName;
                    tempRnHeaderByReport.SupplierColor = tempPH984Field.NewSupplierColor;

                }
                if ((relatedInspectionHeaders != null) && (relatedInspectionHeaders.Count > 0)) {
                    tempRnHeaderByReport.SupplierMaterialCode = relatedInspectionHeaders[0].Supplier_Item_No;
                }

                tempRnHeaderByReport.Item_No = temp.Item_No.Substring(0, 9);
                tempRnHeaderByReport.ColorNo = temp.Item_No.Substring(9, 3);
                tempRnHeaderByReport.Stock_In_Date = temp.Stock_In_Date;
                tempRnHeaderByReport.InspectionDate = getMaxInspectionData(relatedInspectionHeaders);
                tempRnHeaderByReport.ReceiveLength = getSumActualLength(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.InspectionLength = getSumInspcetionLength(relatedInspectionHeaders);

                tempRnHeaderByReport.IQC_Reference = temp.IQC_Reference;
                tempRnHeaderByReport.PO = getAllPONo(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.HdoNo = getAllHDONo(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.ProjectNo = getAllProjectNo(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.InvoiceNo = getAllInvoiceNo(temp.Item_No, allPH984Fields);

                tempRnHeaderByReport.Major_Problem1_Checked = temp.Major_Problem1_Checked;
                tempRnHeaderByReport.Major_Problem2_Checked = temp.Major_Problem2_Checked;
                tempRnHeaderByReport.Major_Problem3_Checked = temp.Major_Problem3_Checked;
                tempRnHeaderByReport.Major_Problem4_Checked = temp.Major_Problem4_Checked;
                tempRnHeaderByReport.Major_Problem5_Checked = temp.Major_Problem5_Checked;
                tempRnHeaderByReport.Major_Problem6_Checked = temp.Major_Problem6_Checked;
                tempRnHeaderByReport.Major_Problem7_Checked = temp.Major_Problem7_Checked;
                tempRnHeaderByReport.QC_Summary = temp.QC_Summary;

                tempRnHeaderByReport.RN_confirm = temp.RN_confirm;
                tempRnHeaderByReport.Confirmed_User = temp.Confirmed_User;
                if (temp.Receive_Qty == null)
                {
                    tempRnHeaderByReport.Receive_Qty = 0;
                }
                else
                {
                    tempRnHeaderByReport.Receive_Qty = (decimal)temp.Receive_Qty;
                }
                if (temp.Insp_Qty == null)
                {
                    tempRnHeaderByReport.Insp_Qty = 0;
                }
                else
                {
                    tempRnHeaderByReport.Insp_Qty = (decimal)temp.Insp_Qty;
                }
                tempRnHeaderByReport.TotalPHSample = getTotalPHSample(relatedInspectionHeaders);

                tempRnHeaderByReport.TotalSupplierLength = 0;
                tempRnHeaderByReport.ActualShortLength = 0;
                //tempRnHeaderByReport.RNDetailItems.AddRange(temp.RNDetailItems); 
                foreach (RN_Detail detail in temp.RN_Details)
                {
                    RNDetailByReport tempIQC = new RNDetailByReport();
                    
                    tempIQC.Company = detail.Company;
                    tempIQC.RN_number = detail.RN_number;
                    tempIQC.System_Install_No = detail.System_Install_No;
                    //tempIQC.Item_No = detail.Item_No;

                    tempIQC.Lot_Id = getLotIdFromRelatedInspectHeader(detail.System_Install_No, relatedInspectionHeaders);
                    tempIQC.Insp_Qty = (decimal)detail.Insp_Qty;

                    tempIQC.Reject_Reason = detail.Reject_Reason;
                    tempIQC.Supplier_Name = detail.Supplier_Name;
                    tempIQC.HDO_no = detail.HDO_no;
                    tempIQC.Project_No = detail.Project_No;
                    tempIQC.Po_No = detail.Po_No;
                    tempIQC.Roll_No = detail.Roll_No;
                    tempIQC.Batch_No = detail.Batch_No;

                    tempIQC.Supplier_Length = getLotIdActualLength(temp.Item_No, tempIQC.Lot_Id, allPH984Fields);
                    tempIQC.Inspect_Length = getLotIdInspcetionLength(tempIQC.Lot_Id, relatedInspectionHeaders);
                    if (detail.Insp_Length != null)
                    {
                        tempIQC.New_Inspect_Length = (decimal)detail.Insp_Length;
                    }
                    if (detail.Supplier_Length != null)
                    {
                        tempIQC.New_Supplier_Length = (decimal)detail.Supplier_Length;
                    }
                    if (detail.Usable_Width != null)
                    {
                        tempIQC.New_Usable_Width = (decimal)detail.Usable_Width;
                    }
                    tempRnHeaderByReport.RNDetailItems.Add(tempIQC);
                    tempRnHeaderByReport.TotalSupplierLength = tempRnHeaderByReport.TotalSupplierLength + tempIQC.Supplier_Length;
                    tempRnHeaderByReport.ActualShortLength = tempRnHeaderByReport.ActualShortLength + tempIQC.Short_Length;

                    

                }

                resultData.Add(tempRnHeaderByReport);
            }
            return resultData;

        }

        private static bool isItemNoExistInPH984Fields(String strItemNo, List<PH984Field> resultData)
        {
            foreach (PH984Field materialByLot in resultData)
            {
                if (materialByLot.Item_No == strItemNo)
                {
                    return true;
                }
            }
            return false;
        }

        private static List<PH984Field> getAllDataFromAS400WithItemNo(string company, string strItemNo, string strStockInDate)
        {
            List<PH984Field> resultData = new List<PH984Field>();
            PH984Field temp = null;
            //1: generate data
            StringBuilder sb = new StringBuilder();
            sb.Append("call AULPHGMODS.PH984(").Append(generateQueryString(company, strItemNo, strStockInDate)).Append(")");

            string strSQL = sb.ToString();

            PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);

            //2: select data

            #region  Xsj20111129:絏矗ど硉τ砆猔睦奔
            //strSQL = "SELECT * FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
            //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
            #endregion
            #region  Xsj20111129:絏矗ど硉τ睰絏
            strSQL = "Select * from OpenQuery([as400],'SELECT * FROM AULPHGMODS.PH984W where WGUID = ''" + key.ToString() + "''') ";
            FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
            DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");
            #endregion

            if (dataTable.Rows.Count > 0)
            {
                for (int i = 0, iSize = dataTable.Rows.Count; i < iSize; i++)
                {
                    temp = new PH984Field();
                    temp.Company = company;
                    temp.Lot_Id = ((string)dataTable.Rows[i]["WLOCN"]).Trim();
                    temp.Item_No = ((string)dataTable.Rows[i]["WITEM"]).Trim();
                    // teHeaderItemDesc
                    temp.Item_Desc = (string)dataTable.Rows[i]["WDESC"];
                    temp.Actual_Length = (decimal)dataTable.Rows[i]["WLENG"];
                    temp.GM_SQM = (decimal)dataTable.Rows[i]["WWGHT"];
                    temp.Create_Date = DateTime.Now;
                    temp.PO = (string)dataTable.Rows[i]["WPO"];
                    temp.HdoNo = (string)dataTable.Rows[i]["WHDO"];
                    temp.ProjectNo = (string)dataTable.Rows[i]["WPROJ"];
                    temp.InvoiceNo = (string)dataTable.Rows[i]["WINVO"];
                    temp.Supplier_Item_No = (string)dataTable.Rows[i]["WREF"];
                    temp.SupplierItemColor = (string)dataTable.Rows[i]["WCOL"];
                    temp.SupplierName = (string)dataTable.Rows[i]["WVNDR"];
                    temp.NewSupplierName = (string)dataTable.Rows[i]["WSNAM"];
                    temp.NewSupplierColor = (string)dataTable.Rows[i]["WCOL"];

                    resultData.Add(temp);
                }
            }
            strSQL = "DELETE FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
            PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);
            return resultData;

        }

        private static PH984Field getPH984FieldWithItemNo(string strItemNo, string strStockInDate, List<PH984Field> resultData)
        {
            foreach (PH984Field materialByLot in resultData)
            {
                if ((materialByLot.Item_No == strItemNo)
                    && (materialByLot.Stock_In_Date == strStockInDate))
                {
                    return materialByLot;
                }
            }
            return null;
        }

        public static List<Fabric_Insp_Header> GetInspectionWithCompanyItemNo(string strCompanyNo, string strItemNo, int iRnNumber)
        {
            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var tempData = from p in context.Fabric_Insp_Headers
                           join rnDetail in context.RN_Details on p.System_Install_No equals rnDetail.System_Install_No
                           join rnHeader in context.RN_Headers on rnDetail.RN_number equals rnHeader.RN_number

                           where p.Company.Equals(strCompanyNo) && p.Item_No.Equals(strItemNo) && rnHeader.RN_number.Equals(iRnNumber)
                           select p;
            List<Fabric_Insp_Header> tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

         
            return tempIQC01s;
        }

        private static DateTime getMaxInspectionData(List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            DateTime dMax = DateTime.Now;
            bool isFirst = true;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                if (temp.Change_Date != null)
                {
                    if (isFirst)
                    {
                        dMax = (DateTime)temp.Create_Date;
                        isFirst = false;
                    }

                    if (((DateTime)temp.Create_Date).CompareTo(dMax) > 0)
                    {
                        dMax = (DateTime)temp.Create_Date;
                    }
                }

            }
            return dMax;
        }

        private static decimal getSumActualLength(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {

                    dSum = dSum + temp.Actual_Length;

                }

            }
            return dSum;
        }

        private static decimal getLotIdInspcetionLength(string strLotId, List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                if (temp.Lot_Id == strLotId)
                {
                    dSum = dSum + (decimal)temp.Insp_Length;
                }

            }
            return dSum;
        }

        private static decimal getSumInspcetionLength(List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                dSum = dSum + (decimal)temp.Insp_Length;

            }
            return dSum;
        }

        private static decimal getTotalPHSample(List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                dSum = dSum + (decimal)temp.PH_Sample;

            }
            return dSum;
        }

        private static string getAllPONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strPO = "";

            List<string> strNos = new List<string>();

            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.PO) < 0)
                    {
                        strNos.Add(temp.PO);
                    }


                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strPO.Length == 0)
                {
                    strPO = strNos[i];
                }
                else
                {
                    strPO = strPO + "," + strNos[i];
                }

            }

            return strPO;
        }

        private static string getAllHDONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strHdoNo = "";
            List<string> strNos = new List<string>();

            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.HdoNo) < 0)
                    {
                        strNos.Add(temp.HdoNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strHdoNo.Length == 0)
                {
                    strHdoNo = strNos[i];
                }
                else
                {
                    strHdoNo = strHdoNo + "," + strNos[i];
                }

            }
            return strHdoNo;
        }


        private static string getAllProjectNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strProjectNo = "";
            List<string> strNos = new List<string>();
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.ProjectNo) < 0)
                    {
                        strNos.Add(temp.ProjectNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strProjectNo.Length == 0)
                {
                    strProjectNo = strNos[i];
                }
                else
                {
                    strProjectNo = strProjectNo + "," + strNos[i];
                }

            }


            return strProjectNo;
        }

        private static string getAllInvoiceNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strInvoiceNo = "";
            List<string> strNos = new List<string>();
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.InvoiceNo) < 0)
                    {
                        strNos.Add(temp.InvoiceNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strInvoiceNo.Length == 0)
                {
                    strInvoiceNo = strNos[i];
                }
                else
                {
                    strInvoiceNo = strInvoiceNo + "," + strNos[i];
                }

            }


            return strInvoiceNo;
        }

        private static decimal getLotIdActualLength(String strItemNo, string strLotId, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if ((temp.Item_No == strItemNo) && (temp.Lot_Id == strLotId))
                {

                    dSum = dSum + temp.Actual_Length;

                }

            }
            return dSum;
        }

        private static string getLotIdFromRelatedInspectHeader(int systemInstallNo, List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            string strLotId = "";
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                if (temp.System_Install_No == systemInstallNo)
                {
                    strLotId = temp.Lot_Id;
                    break;
                }

            }
            return strLotId;

        }


        private static string generateQueryString(string company, string strItemNo, string strStockInDate)
        {
            //查询画面字段定义：
            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 為用戶進入此系統時?入的公司
            sb.Append("'").Append(company).Append("'").Append(", ");

            //4 LOT_ID 為空
            sb.Append("'").Append("").Append("'").Append(", ");


            //5  ITEM_NO
            sb.Append("'").Append(strItemNo).Append("'").Append(", ");

            //6 STOCK_IN_DATE 為零
            //sb.Append("'").Append("000000").Append("'").Append(", ");
            sb.Append("'").Append(strStockInDate).Append("'").Append(", ");

            //7  MESSAGE為空
            sb.Append("''");

            return sb.ToString();

        }
    }
}
