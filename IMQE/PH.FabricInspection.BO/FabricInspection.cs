namespace PH.FabricInspection.BO
{
    using System;
    using System.Drawing;
    using System.Data.SqlClient;
    using System.Data;
    using System.Linq;
    using System.Data.Linq;
    using System.Collections.Generic;
    using System.Text;
    using System.Globalization;
    using PH.Platform.BO;
    using PH.MIDc.BO;
    using PH.Platform.Common;
    using System.Data.Linq.Mapping;
    using System.Collections;

    partial class FabricInspectionDataContext
    {
    }

    partial class RN_Detail : PH.Platform.BO.BaseEntity
    {
        public decimal Diff_Length
        {
            get
            {
                if (Insp_Length == 0)
                {
                    return 0;
                }
                else
                {
                    if ((Supplier_Length != null) && (Insp_Length != null))
                    {
                        return (decimal)Supplier_Length - (decimal)Insp_Length;
                    }
                    else
                    {
                        return 0;
                    }
                }
            }

        }


        #region Xsj:add 20111027 用於定位和顯示保存於硬盤中的圖片
        private static bool isHasError = false;

        /// <summary>
        /// Xsj:通過上傳圖片程序的FabricInspectPicTransferBO獲取圖片保存的位置
        /// </summary>
        private List<string> ServerPathList
        {
            get
            {
                if (this._serverPathList.Count == 0)
                {
                    try
                    {
                        PH.FabricInspectPicTransferBO.DbConnectInfo dbconStr = new PH.FabricInspectPicTransferBO.DbConnectInfo();
                        PH.FabricInspectPicTransferBO.FabricInspectionPhotoTransferDataContext dc = dbconStr.CurrDataContext;
                        foreach (PH.FabricInspectPicTransferBO.IQCClientPC itemIQCClient in dc.IQCClientPCs)
                        {
                            this._serverPathList.Add(itemIQCClient.ServerNetPath);
                        }
                        isHasError = false;
                    }
                    catch (Exception ex)
                    {
                        if (!isHasError)
                        {
                            System.Windows.Forms.MessageBox.Show("連接數據庫[FabricInspectPhotoTransfer]失敗,你將不能瀏覽到Defect的照片,其它操作不受影響!", "讀取照片路徑失敗");
                            isHasError = true;
                        }
                    }
                }
                return this._serverPathList;
            }
        }

        private List<string> _serverPathList = new List<string>();

        /// <summary>
        /// Xsj20120901:添加屬性，用於顯示當前Lot_Id是否已拍有照片
        /// </summary>
        public string HasPhotoNote
        {
            get
            {
                if (this.RN_Header == null) return null;

                string result = null;
                string itemNo = this.RN_Header.Item_No.Substring(0, 12);
                string lotId = this.Lot_Id;
                if (this.Lot_Id == null)
                {
                    return null;
                }
                string imgDirePath = null;
                foreach (string itemServerPath in this.ServerPathList)
                {
                    if (itemServerPath == null) continue;
                    imgDirePath = itemServerPath + "\\" + itemNo + "\\" + lotId.Substring(0, lotId.IndexOf('-')) + "\\" + lotId;

                    System.IO.DirectoryInfo imgDireInfo = new System.IO.DirectoryInfo(imgDirePath);
                    if (imgDireInfo.Exists && imgDireInfo.GetFiles().Count() > 0)
                    {
                        result = "有";
                        break;
                    }
                }
                return result;
            }
        }
        #endregion


    }


    partial class RN_Header : PH.Platform.BO.BaseEntity
    {
        //Shelley要求，在RN中也显示Audit#, 由David加入 2021-02-23
        public int? AuditNo
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                FabricInspectionDataContext db = CurrentDataContext as FabricInspectionDataContext;

                if (this.RN_Details.Count() == 0) return null;

                int System_Install_No = this.RN_Details.FirstOrDefault().System_Install_No;
                var obj = db.Fabric_Insp_Headers.FirstOrDefault(p => p.System_Install_No == System_Install_No);
                if (obj == null) return null;

                return obj.RefNo;
            }
        }

        #region

        FabricInspectionDataContext context = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        Guid key;
        DateTime time = DateTime.Now;
        private string timeFormat = "yyyy/MM/dd HH:mm:ss";

        public const string MAJOR_PROBLEM1_CHECKED_VALUE = "Defects";
        public const string MAJOR_PROBLEM2_CHECKED_VALUE = "Shading";
        public const string MAJOR_PROBLEM3_CHECKED_VALUE = "Short length";
        public const string MAJOR_PROBLEM4_CHECKED_VALUE = "Narrow width";
        public const string MAJOR_PROBLEM5_CHECKED_VALUE = "Lab Test";//應Shelley的要求，更改"Finishing"為“Lab Test”;
        public const string MAJOR_PROBLEM6_CHECKED_VALUE = "Off color";
        public const string MAJOR_PROBLEM7_CHECKED_VALUE = "Others";
        public const string UNCHECKED_VALUE = "";

        //Xsj20121220:應Shelley的要求添加一個大類，用於記錄RN為Mould Trial的退類原因
        //及備注Other退料原因的信息
        public const string MAJOR_PROBLEM8_CHECKED_VALUE = "Mould Trial";

        public bool Major_Problem1_Checked
        {
            get
            {
                if ((this._Major_Problem1 != null) && (this._Major_Problem1.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem1 = MAJOR_PROBLEM1_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem1 = UNCHECKED_VALUE;
                }
            }
        }
        public bool Major_Problem2_Checked
        {
            get
            {
                if ((this._Major_Problem2 != null) && (this._Major_Problem2.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem2 = MAJOR_PROBLEM2_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem2 = UNCHECKED_VALUE;
                }
            }
        }
        public bool Major_Problem3_Checked
        {
            get
            {
                if ((this._Major_Problem3 != null) && (this._Major_Problem3.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem3 = MAJOR_PROBLEM3_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem3 = UNCHECKED_VALUE;
                }
            }
        }
        public bool Major_Problem4_Checked
        {
            get
            {
                if ((this._Major_Problem4 != null) && (this._Major_Problem4.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem4 = MAJOR_PROBLEM4_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem4 = UNCHECKED_VALUE;
                }
            }
        }
        public bool Major_Problem5_Checked
        {
            get
            {
                if ((this._Major_Problem5 != null) && (this._Major_Problem5.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem5 = MAJOR_PROBLEM5_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem5 = UNCHECKED_VALUE;
                }
            }
        }
        public bool Major_Problem6_Checked
        {
            get
            {
                if ((this._Major_Problem6 != null) && (this._Major_Problem6.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem6 = MAJOR_PROBLEM6_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem6 = UNCHECKED_VALUE;
                }
            }
        }
        public bool Major_Problem7_Checked
        {
            get
            {
                if ((this._Major_Problem7 != null) && (this._Major_Problem7.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem7 = MAJOR_PROBLEM7_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem7 = UNCHECKED_VALUE;
                }
            }
        }

        //Xsj20121220:應Shelley的要求添加一個大類，用於記錄RN為Mould Trial的退類原因
        //及備注Other退料原因的信息 
        public bool Major_Problem8_Checked
        {
            get
            {
                if ((this._Major_Problem8 != null) && (this._Major_Problem8.Trim().Length > 0))
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //return this._Major_Problem1;
            }
            set
            {
                if (value)
                {
                    this.Major_Problem8 = MAJOR_PROBLEM8_CHECKED_VALUE;
                }
                else
                {
                    this.Major_Problem8 = UNCHECKED_VALUE;
                }
            }
        }
        //------End

        public DateTime Stock_In_Date_DateTime
        {
            get
            {
                try
                {
                    return DateTime.ParseExact(Stock_In_Date, "yyMMdd", System.Globalization.CultureInfo.CurrentCulture);
                }
                catch
                {
                    return DateTime.Now;
                }

            }
        }
        public DateTime InspectionDate
        {
            get
            {

                FabricInspectionDataContext Context = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var dMax = context.View_InspectionDates.Where(P => P.Company == this.Company && P.RN_number == this.RN_number).Select(S => S.Create_Date).Max();
                if (dMax != null)
                {
                    return Convert.ToDateTime(dMax);
                }
                return DateTime.Now;
            }
        }

        public string PO_NO
        {
            get
            {
                string PoNomerge = string.Empty;
                var _po_noList = this.RN_Details.Select(S => S.Po_No).Distinct();
                foreach (string oo in _po_noList)
                {

                    PoNomerge += !string.IsNullOrEmpty(oo) ? oo + "," : string.Empty;
                }
                PoNomerge = PoNomerge.Length > 1 ? PoNomerge.Substring(0, PoNomerge.Length - 1) : string.Empty;
                return PoNomerge;
            }
        }
        public string Project_NO
        {
            get
            {
                string PNMerge = string.Empty;
                var _PNList = this.RN_Details.Select(S => S.Project_No).Distinct();
                foreach (string oo in _PNList)
                {
                    PNMerge += !string.IsNullOrEmpty(oo) ? oo + "," : string.Empty;
                }
                PNMerge = PNMerge.Length > 1 ? PNMerge.Substring(0, PNMerge.Length - 1) : string.Empty;
                return PNMerge;
            }
        }
        public string Supplier_Inv_No
        {
            get
            {
                string PNMerge = string.Empty;
                var _PNList = this.RN_Details.Select(S => S.Supplier_Inv_No).Distinct();
                foreach (string oo in _PNList)
                {

                    PNMerge += !string.IsNullOrEmpty(oo) ? oo + "," : string.Empty;
                    //PNMerge += oo + ",";
                }
                PNMerge = PNMerge.Length > 1 ? PNMerge.Substring(0, PNMerge.Length - 1) : string.Empty;
                return PNMerge;
            }
        }
        public string HDO_no
        {
            get
            {
                string PNMerge = string.Empty;
                var _PNList = this.RN_Details.Select(S => S.HDO_no).Distinct();
                foreach (string oo in _PNList)
                {
                    PNMerge += !string.IsNullOrEmpty(oo) ? oo + "," : string.Empty;
                }
                PNMerge = PNMerge.Length > 1 ? PNMerge.Substring(0, PNMerge.Length - 1) : string.Empty;
                return PNMerge;
            }
        }

        public bool DefectRejectsVisible { get; set; }
        public bool ColorRejectsVisible { get; set; }
        public bool PhysicalPropertiesRejectsVisible { get; set; }
        public decimal? ShortLengthPer { get; set; }

        public List<rpt_DefectRejectResult> DefectRejects
        {
            get
            {

                return (ContextBuilder.CreateContext<FabricInspectionDataContext>()).rpt_DefectReject(this.Company, this.RN_number).ToList<rpt_DefectRejectResult>();
            }
        }
        public List<rpt_MainMaterialsInspectionDetailReportResult> rpt_MainMaterialsInspectionDetailReportResults
        {
            get
            {
                if (ReportFlag)
                {
                    List<rpt_MainMaterialsInspectionDetailReportResult> RptResults = (ContextBuilder.CreateContext<FabricInspectionDataContext>()).rpt_MainMaterialsInspectionDetailReport(this.Company, this.RN_number).ToList<rpt_MainMaterialsInspectionDetailReportResult>();
                    ShortLengthPer = RptResults.Where(P => P.insp_length > 0).Select(S => S.Actual_Length).Sum() > 0 ? (RptResults.Where(P => P.insp_length > 0).Select(S => S.insp_length).Sum() + RptResults.Where(P => P.insp_length > 0).Select(S => S.PH_Sample).Sum() - RptResults.Where(P => P.insp_length > 0).Select(S => S.Actual_Length).Sum()) / RptResults.Where(P => P.insp_length > 0).Select(S => S.Actual_Length).Sum() : 0;
                    return RptResults;
                    //return (ContextBuilder.CreateContext<FabricInspectionDataContext>()).rpt_MainMaterialsInspectionDetailReport(this.Company, this.RN_number).ToList<rpt_MainMaterialsInspectionDetailReportResult>();                   
                }
                return null;

            }
        }
        public List<rpt_ColorRejectResult> ColorRejects
        {
            get
            {
                if (GetRptDataFlag)
                {
                    return context.rpt_ColorReject(this.Company, this.RN_number).ToList<rpt_ColorRejectResult>();
                }
                return null;

            }
        }
        public List<Rpt_PhysicalPropertiesRejectResult> PhysicalPropertiesRejects
        {
            get
            {
                if (GetRptDataFlag)
                {
                    return context.Rpt_PhysicalPropertiesReject(this.Company, this.RN_number).ToList<Rpt_PhysicalPropertiesRejectResult>();
                }
                return null;

            }
        }


        public string SupplierMaterialCode
        {
            get
            {
                var DDD = this.RN_Details.Where(P => P.Company == this.Company && P.RN_number == this.RN_number).FirstOrDefault();
                if (DDD != null)
                {
                    var HHH = context.Fabric_Insp_Headers.Where(P => P.Company == this.Company && P.System_Install_No == DDD.System_Install_No).FirstOrDefault();
                    if (HHH != null)
                    {
                        return HHH.Supplier_Item_No;
                    }
                }

                return string.Empty;

            }
        }
        public string PHMaterialCode
        {
            get
            {
                return Item_No.Length > 9 ? Item_No.Substring(0, 9) : string.Empty;
            }
        }
        public string PHMaterialColor
        {
            get
            {
                return Item_No.Length > 9 ? Item_No.Substring(9, 3).ToString() : string.Empty;


            }
        }
        public string SupplierName { get; set; }
        public string SupplierColor { get; set; }
        public Boolean ReportFlag { get; set; }

        private Boolean _getrptdataflag;
        public Boolean GetRptDataFlag
        {
            get
            {
                return this._getrptdataflag;

            }
            set
            {
                if (value)
                {
                    this.GetSupplierAndSupplierColor(this.Company, this.Item_No, this.Stock_In_Date);
                }
                this._getrptdataflag = value;
            }
        }

        public void GetSupplierAndSupplierColor(string company, string strItemNo, string strStockInDate)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("call AULPHGMODS.PH984(").Append(generateQueryString(company, strItemNo, strStockInDate)).Append(")");

            string strSQL = sb.ToString();
            PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);
            //2: select data
            #region  Xsj20111129:如下代碼為了提升速度而被注釋掉
            //strSQL = "SELECT * FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
            //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
            #endregion
            #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
            strSQL = "Select * from OpenQuery([as400],'SELECT * FROM AULPHGMODS.PH984W where WGUID = ''" + key.ToString() + "''') ";
            FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
            DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");
            #endregion
            if (dataTable.Rows.Count > 0)
            {
                SupplierName = (string)dataTable.Rows[0]["WSNAM"];
                SupplierColor = (string)dataTable.Rows[0]["WCOL"];
            }
            strSQL = "DELETE FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
            PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);
        }
        public string generateQueryString(string company, string strItemNo, string strStockInDate)
        {
            //查询画面字段定义：
            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");
            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 為用戶進入此系統時輸入的公司
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

        #endregion



        #region 應Shelley的要求： 取消原ID 顯示的判斷邏輯，改為 ID顯示判斷邏輯，取“Reject Reason”非”空白“ID。不區分Defect Reject/Color Reject /PhysicalPropertiesReject
        public List<RN_Detail> HasRejectReasonRN_Detail
        {
            get
            {
                return this.RN_Details.Where(p => !string.IsNullOrEmpty(p.Reject_Reason)).ToList();
            }
        }

        #endregion

        #region Xsj20121229 Reject原因
        /// <summary>
        /// Xsj20121229:拒收原因
        /// </summary>
        public string RejectReasonStr
        {
            get
            {
                if (this._rejectReasonStr == null)
                {
                    //Xsj:如果批次已作了RN，則需要記錄RN信息  
                    string rejectReason = "";
                    if (this.Major_Problem1_Checked)
                    {
                        rejectReason += this.Major_Problem1 + "、";
                    }
                    if (this.Major_Problem2_Checked)
                    {
                        rejectReason += this.Major_Problem2 + "、";
                    }
                    if (this.Major_Problem3_Checked)
                    {
                        rejectReason += this.Major_Problem3 + "、";
                    }
                    if (this.Major_Problem4_Checked)
                    {
                        rejectReason += this.Major_Problem4 + "、";
                    }
                    if (this.Major_Problem5_Checked)
                    {
                        rejectReason += this.Major_Problem5 + "、";
                    }
                    if (this.Major_Problem6_Checked)
                    {
                        rejectReason += this.Major_Problem6 + "、";
                    }
                    if (this.Major_Problem7_Checked)
                    {
                        rejectReason += this.OtherRejectRemark + "、";
                    }
                    if (this.Major_Problem8_Checked)
                    {
                        rejectReason += this.Major_Problem8 + "、";
                    }

                    if (rejectReason != null && rejectReason.EndsWith("、"))
                    {
                        rejectReason = rejectReason.Substring(0, rejectReason.Length - 1);
                    }
                    this._rejectReasonStr = rejectReason;
                }
                return this._rejectReasonStr;
            }
        }
        private string _rejectReasonStr;
        #endregion

    }

    partial class rpt_MainMaterialsInspectionDetailReportResult
    {
        #region

        public string StockInDate
        {
            get
            {
                if (stock_in_date != null)
                {
                    return "20" + stock_in_date.Substring(0, 2) + "-" + stock_in_date.Substring(2, 2) + "-" + stock_in_date.Substring(4, 2);
                }
                return string.Empty;
            }
            set { }
        }

        // begin 20100419 sharly 
        public string StdEtoEWidthRange
        {
            get
            {

                Nullable<decimal> MIDC_MIN_SupplierWidth = null, MIDC_MAX_SupplierWidth = null;

                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == this.supplier_item_no && c.MaterialCode == this.PHMaterial select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.SupplierWidthMin ?? 0) != 0)
                        MIDC_MIN_SupplierWidth = detail.SupplierWidthMin;
                    else
                        MIDC_MIN_SupplierWidth = detail.SupplierWidth;

                    if ((detail.SupplierWidthMax ?? 0) != 0)
                        MIDC_MAX_SupplierWidth = detail.SupplierWidthMax;
                    else
                        MIDC_MAX_SupplierWidth = detail.SupplierWidth;
                }

                return (MIDC_MIN_SupplierWidth ?? 0).ToString("#.##") + "-" + (MIDC_MAX_SupplierWidth ?? 0).ToString("#.##");
            }
            set { }
        }


        public string StdUsableWidthRange
        {
            get
            {

                Nullable<decimal> MIDC_MIN_UsabelWidth = null, MIDC_MAX_UsabelWidth = null;
                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == this.supplier_item_no && c.MaterialCode == this.PHMaterial select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.UsableWidthMin ?? 0) != 0)
                        MIDC_MIN_UsabelWidth = detail.UsableWidthMin;
                    else
                        MIDC_MIN_UsabelWidth = detail.UsableWidth;

                    if ((detail.UsableWidthMax ?? 0) != 0)
                        MIDC_MAX_UsabelWidth = detail.UsableWidthMax;
                    else
                        MIDC_MAX_UsabelWidth = detail.UsableWidth;

                }

                return (MIDC_MIN_UsabelWidth ?? 0).ToString("#.##") + "-" + (MIDC_MAX_UsabelWidth ?? 0).ToString("#.##");

            }
            set { }
        }


        public string StdWeightRange
        {
            get
            {

                Nullable<decimal> MIDC_MIN_WeightGmSqm = null, MIDC_MAX_WeightGmSqm = null;

                PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var objs = from c in context.Details where c.SuppRef == this.supplier_item_no && c.MaterialCode == this.PHMaterial select c;

                if (objs.Count() != 0)
                {

                    PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                    if ((detail.WeightGmSqmMin ?? 0) != 0)
                        MIDC_MIN_WeightGmSqm = detail.WeightGmSqmMin;
                    else
                        MIDC_MIN_WeightGmSqm = detail.WeightGmSqm;

                    if ((detail.WeightGmSqmMax ?? 0) != 0)
                        MIDC_MAX_WeightGmSqm = detail.WeightGmSqmMax;
                    else
                        MIDC_MAX_WeightGmSqm = detail.WeightGmSqm;

                }

                return (MIDC_MIN_WeightGmSqm ?? 0).ToString("#.##") + "-" + (MIDC_MAX_WeightGmSqm ?? 0).ToString("#.##");
            }
            set { }
        }
        //end 20100419 sharly
        public decimal? StdEtoEWidth
        {
            get
            {
                var MidcLst = (ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>()).Details.Where(P => P.MaterialCode == this.PHMaterial && P.SuppRef == this.supplier_item_no).FirstOrDefault();

                if (MidcLst != null)
                {

                    return MidcLst.SupplierWidth;

                }
                return 0;
            }
            set { }
        }
        public decimal? StdUsableWidth
        {
            get
            {
                var MidcLst = (ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>()).Details.Where(P => P.MaterialCode == this.PHMaterial && P.SuppRef == this.supplier_item_no).FirstOrDefault();
                if (MidcLst != null)
                {
                    return MidcLst.UsableWidth;

                }
                return 0;
            }
            set { }
        }
        public decimal? StdWeight
        {
            get
            {
                var MidcLst = (ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>()).Details.Where(P => P.MaterialCode == this.PHMaterial && P.SuppRef == this.supplier_item_no).FirstOrDefault();
                if (MidcLst != null)
                {
                    return MidcLst.WeightGmSqm;
                }
                return 0;
            }
            set { }
        }
        public decimal? SpecialMarkerDeductiveQty
        {
            get
            {
                return this.Actual_Length * this.Special_Marker;
            }
            set { }
        }

        public List<Fabric_Insp_SpreadDefect> Fabric_Insp_SpreadDefectList
        {
            get
            {
                return (ContextBuilder.CreateContext<FabricInspectionDataContext>()).Fabric_Insp_SpreadDefects.Where(P => P.Company == this.company && P.System_Install_No == this.system_install_no).ToList();
            }
            set
            {
            }
        }
        public string MoudTrialStatus
        {
            get
            {
                if (this.Mould_Trial_Result == "1")
                {
                    return "OK";
                }
                else if (this.Mould_Trial_Result == "2")
                {
                    return "Return";
                }
                else if (this.Mould_Trial_Result == "3")
                {
                    return "No Mould Trial";
                }
                else
                {
                    return "";
                }

            }
            set { }
        }

        public string WeftYarnStatusDesc
        {
            get
            {
                if (this.WeftYarnStatus == "0")
                {
                    return "No Weft Yarn";

                }
                else if (this.WeftYarnStatus == "1")
                {
                    return "OK";
                }
                else if (this.WeftYarnStatus == "2")
                {
                    return "Deduct";
                }
                else if (this.WeftYarnStatus == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }
            set { }
        }

        public decimal? WeftYarnDeductiveQty
        {
            get
            {
                string LotId13 = "";
                decimal? ChildActualLength = 0;
                if (this.WeftYarnStatus == "3")  //Return 
                {
                    if (this.Actual_Length != 0 && this.insp_length != 0) // Parent Id Deductive qty
                    {
                        LotId13 = this.lot_id.Substring(0, 13);
                        FabricInspectionDataContext Context = (ContextBuilder.CreateContext<FabricInspectionDataContext>());
                        var objs = from c in Context.Fabric_Insp_Headers
                                   where c.Item_No == this.Item_no && c.Stock_In_Date == this.stock_in_date && c.Insp_Length > 0
                                   && c.Actual_Length == 0 && c.Lot_Id.Substring(0, 13) == LotId13
                                   select c;
                        if (objs.Count() != 0)
                        {
                            ChildActualLength = objs.Sum(aa => aa.Insp_Length) + objs.Sum(aa => aa.PH_Sample);
                        }
                        return this.Actual_Length - ChildActualLength;
                    }
                    else if (this.Actual_Length == 0 && this.insp_length != 0) // Child Id Deductive qty
                    {
                        return this.insp_length + this.PH_Sample;
                    }
                    else
                        return 0;
                }
                else if (this.WeftYarnStatus == "2") // Deduct
                {
                    if (this.Actual_Length != 0 && this.insp_length != 0) // Parent Id Deductive qty
                    {
                        LotId13 = this.lot_id.Substring(0, 13);
                        FabricInspectionDataContext Context = (ContextBuilder.CreateContext<FabricInspectionDataContext>());
                        var objs = from c in Context.Fabric_Insp_Headers
                                   where c.Item_No == this.Item_no && c.Stock_In_Date == this.stock_in_date && c.Insp_Length > 0
                                   && c.Actual_Length == 0 && c.Lot_Id.Substring(0, 13) == LotId13
                                   select c;
                        if (objs.Count() != 0)
                        {
                            ChildActualLength = objs.Sum(aa => aa.Insp_Length) + objs.Sum(aa => aa.PH_Sample);
                        }
                        return (this.Actual_Length - ChildActualLength) * this.WeftYarnWastage / 100;
                    }
                    else if (this.Actual_Length == 0 && this.insp_length != 0) // Child Id Deductive qty
                    {
                        return (this.insp_length + this.PH_Sample) * this.WeftYarnWastage / 100;
                    }
                    else
                        return 0;

                }
                else // other Weft Yarn Status = "null" ,"" , "1"
                {
                    return 0;
                }

            }
            set { }
        }

        public string WeftYarnSolution
        {
            get
            {
                FabricInspectionDataContext DataContext = (ContextBuilder.CreateContext<FabricInspectionDataContext>());
                var Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.WeftYarnSolution1).Select(S => S.Parameter_Desc).FirstOrDefault();
                var Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.WeftYarnSolution2).Select(S => S.Parameter_Desc).FirstOrDefault();
                SysParamHelper sph = SysParamHelper.Instance;
                if (sph.LangID == "TH")
                {
                    Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.WeftYarnSolution1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                    Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.WeftYarnSolution2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                }
                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                {
                    Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.WeftYarnSolution1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                    Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.WeftYarnSolution2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                }
                return (!string.IsNullOrEmpty(Proc1) ? Proc1 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc2) ? Proc2 : string.Empty);

            }
            set { }
        }
        #endregion



        //public string MouldTrialSolution
        //{
        //    get
        //    {
        //        FabricInspectionDataContext DataContext = (ContextBuilder.CreateContext<FabricInspectionDataContext>());
        //        var Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.MouldTrailSolution1).Select(S => S.Parameter_Desc).FirstOrDefault();
        //        var Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.MouldTrialSolution2).Select(S => S.Parameter_Desc).FirstOrDefault();
        //        SysParamHelper sph = SysParamHelper.Instance;
        //        if (sph.LangID == "TH")
        //        {
        //            Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.MouldTrailSolution1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
        //            Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.MouldTrailSolution2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
        //        }
        //        if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
        //        {
        //            Proc1 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.MouldTrailSolution1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
        //            Proc2 = DataContext.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == this.MouldTrailSolution2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
        //        }
        //        return (!string.IsNullOrEmpty(Proc1) ? Proc1 + "," : string.Empty) + (!string.IsNullOrEmpty(Proc2) ? Proc2 : string.Empty);

        //    }
        //    set { }
        //}

    }

    partial class rpt_DefectRejectResult
    {
        public string DefectRange
        {
            get
            {
                FabricInspectionDataContext context = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                string PNMerge = string.Empty;
                var BBBBB = context.Fabric_Insp_PartDefects.Where(P => P.Company == this.Company && P.System_Install_No == this.System_Install_No).Select(S => S.Defect_Name).Distinct();
                var CCCCC = context.Fabric_Insp_SpreadDefects.Where(P => P.Company == this.Company && P.System_Install_No == this.System_Install_No).Select(S => S.Defect_Name).Distinct();
                foreach (string oo in BBBBB)
                {
                    PNMerge += oo + ",";
                }
                foreach (string pp in CCCCC)
                {
                    PNMerge += pp + ",";
                }
                PNMerge = PNMerge.Length > 1 ? PNMerge.Substring(1, PNMerge.Length - 1) : PNMerge;
                return PNMerge;

            }
            set { }
        }
    }

    ////Xsj20111108:add顯示某一時期，某一物料不同的Defect扣分前24位
    //[Table(Name = "")]
    //public partial class P_GetMaterialTypeDefectOrderResult : BaseEntity
    //{
    //    public string MaterialType { get; set; }
    //    public string Defect_Name { get; set; }
    //    public System.Nullable<int> Defect_Deduce_Points { get; set; }
    //    public string DefectEnglishName { get; set; }
    //    public string DefectChineseName { get; set; }
    //    public string DefectThaiName { get; set; }
    //    public System.Nullable<decimal> Length_Gross { get; set; }
    //    public System.Nullable<decimal> Length_Net { get; set; }

    //    public string Supplier_Code { get; set; }
    //    public int AuditTeam { get; set; }
    //    public string Converter { get; set; }
    //}

    public class DefectFrequenceListResult
    {

        public string Whse { get; set; }
        public string MaterialType { get; set; }
        public int AuditTeam { get; set; }
        public string SuppCode { get; set; }
        public string DefectCode { get; set; }
        public string DefectEnglishName { get; set; }
        public string DefectChineseName { get; set; }
        public string Converter { get; set; }
        public int? DefectPoint { get; set; }
        public int? DefectTotalPoint { get; set; }
    }


    //#region 為了實頊載圖後，自動保存到WebSystem而添加 

    ///// <summary>
    ///// Xsj2012-03-29:用於處理Item_Desc中的特殊字符，以使Item_Desc能成為文件夾名稱
    ///// </summary>
    //public class SignOperator
    //{
    //    private  struct SignCompare
    //    {
    //        /// <summary>
    //        /// Xsj:被替代標簽
    //        /// </summary>
    //        public string OriginSign
    //        {
    //            get;
    //            set;
    //        }

    //        /// <summary>
    //        /// Xsj:替代標簽
    //        /// </summary>
    //        public string NewSign
    //        {
    //            get;
    //            set;
    //        }
    //    }

    //    /// <summary>
    //    /// Xsj:字符對照表
    //    /// </summary>
    //    private  List<SignCompare> SignCompareList
    //    {
    //        get
    //        {
    //            if (this._signCompareList == null)
    //            {
    //                this._signCompareList = new List<SignCompare>();
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"\", NewSign = "{{{A}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"/", NewSign = "{{{B}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @":", NewSign = "{{{C}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"*", NewSign = "{{{D}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"?", NewSign = "{{{E}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"""", NewSign = "{{{F}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"<", NewSign = "{{{G}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @">", NewSign = "{{{H}}}" });
    //                this._signCompareList.Add(new SignCompare { OriginSign = @"|", NewSign = "{{{I}}}" });
    //            }
    //            return this._signCompareList;
    //        }
    //    }
    //    private List<SignCompare> _signCompareList;


    //    /// <summary>
    //    /// Xsj:替換字符串中的敏感字符
    //    /// Orgin: \ / : * ? " < > |
    //    /// New:{{{A}}},{{{B}}},{{{C}}},{{{D}}},{{{E}}},{{{F}}},{{{G}}},{{{H}}},{{{I}}}
    //    /// </summary>
    //    /// <param name="OrginTxt"></param>
    //    /// <returns></returns>
    //    public string ReplaceSign(string OrginTxt)
    //    {

    //        foreach (SignCompare item in this.SignCompareList)
    //        {
    //            OrginTxt = OrginTxt.Replace(item.OriginSign, item.NewSign);
    //        }
    //        return OrginTxt;

    //    }

    //    /// <summary>
    //    /// Xsj:返原字符串中的敏感字符
    //    /// Orgin: \ / : * ? " < > |
    //    /// New:{{{A}}},{{{B}}},{{{C}}},{{{D}}},{{{E}}},{{{F}}},{{{G}}},{{{H}}},{{{I}}}
    //    /// </summary>
    //    /// <param name="NewTxt"></param>
    //    /// <returns></returns>
    //    public string RestoreSign(string NewTxt)
    //    {

    //        foreach (SignCompare item in this.SignCompareList)
    //        {
    //            NewTxt = NewTxt.Replace(item.NewSign, item.OriginSign);
    //        }
    //        return NewTxt;

    //    }


    //}

    //#endregion

    #region xsj:20130322

    partial class SupplierBatchInfo : BaseEntity
    {
    }

    partial class SupplierBatchInfoBandLace : BaseEntity
    {
        public string ItemCodeColorShow
        {
            get
            {
                return Item_No + ColorCode;
            }
        }
    }

    [Table(Name = "")]
    partial class P_GetSupplierBatchInfResult : BaseEntity
    {
        //xsj20130322:標記是當前記錄是否已被修改
        public bool isEdited { get; set; }
    }

    #endregion


    public partial class BulkSubmission : BaseEntity
    {

    }



    public partial class OverallFailReason : BaseEntity
    {
        public string ReasonNameEN { get { return ReasonDefect == null ? "" : ReasonDefect.ReasonNameEN; } }
        public string ReasonNameCN { get { return ReasonDefect == null ? "" : ReasonDefect.ReasonNameCN; } }
        public string RemarkEN { get { return ReasonDefect == null ? "" : ReasonDefect.RemarkEN; } }
        public string RemarkCN { get { return ReasonDefect == null ? "" : ReasonDefect.RemarkCN; } }

        private ShortPHQCDefect ReasonDefect
        {
            get
            {
                if (string.IsNullOrEmpty(this.ReasonCode)) return null;

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                return (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.Where(p => p.PHDefectCode == this.ReasonCode)
                    .Select(p => new ShortPHQCDefect()
                    {
                        ReasonNameEN = p.DefectEnglishName,
                        ReasonNameCN = p.DefectChineseName,
                        RemarkEN = p.DefectEnglishRemark,
                        RemarkCN = p.DefectChineseRemark
                    }).FirstOrDefault();
            }
        }
    }

    class ShortPHQCDefect
    {
        public string ReasonNameEN { get; set; }
        public string ReasonNameCN { get; set; }
        public string RemarkEN { get; set; }
        public string RemarkCN { get; set; }
    }


    public partial class CrossCupGroup : BaseEntity
    {

    }

    public partial class DataDict : BaseEntity
    {

    }



    public class sp_FabircAuditSummaryReportClass
    {
        public decimal? ADate { get; set; }
        public decimal? AYear { get; set; }
        public decimal? AMonth { get; set; }
        public decimal? AWeek { get; set; }
        public decimal TotalAuditNo { get; set; }
        public decimal TotalRollQty { get; set; }
        public decimal TotalItemID { get; set; }
        public decimal TotalItemCode { get; set; }
        public decimal TotalColorCode { get; set; }
        public decimal TotalItemRef { get; set; }
        public decimal TotalSuppCode { get; set; }
        public decimal TotalProjectNo { get; set; }
        public decimal TotalHDONo { get; set; }
        public decimal TotalInvoiceNo { get; set; }
        public decimal PartI_AA { get; set; }
        public decimal PartI_A { get; set; }
        public decimal PartI_B { get; set; }
        public decimal PartI_C { get; set; }
        public decimal PartII_A { get; set; }
        public decimal PartII_B { get; set; }
        public decimal PartIII_A { get; set; }
        public decimal PartIII_B { get; set; }
        public decimal TotalProposal { get; set; }
        public decimal TotalAgreed { get; set; }
        public decimal TotalActionLog { get; set; }
        public decimal TotalActionCompleted { get; set; }
    }

    public class SupplierQuallSummaryClass
    {
        public decimal? AYear { get; set; }
        public decimal? AMonth { get; set; }

        public decimal SuppCode { get; set; }
        public decimal TotalAuditNo { get; set; }
        public decimal TotalRollQty { get; set; }
        public decimal TotalItemID { get; set; }
        public decimal TotalItemCode { get; set; }
        public decimal TotalColorCode { get; set; }
        public decimal TotalItemRef { get; set; }
        public decimal TotalProjectNo { get; set; }
        public decimal TotalHDONo { get; set; }
        public decimal TotalInvoiceNo { get; set; }
        public decimal PartI_AA { get; set; }
        public decimal PartI_A { get; set; }
        public decimal PartI_B { get; set; }
        public decimal PartI_C { get; set; }
        public decimal PartI_Percent { get; set; }
        public decimal PartII_A { get; set; }
        public decimal PartII_B { get; set; }
        public decimal PartII_Percent { get; set; }
        public decimal PartIII_A { get; set; }
        public decimal PartIII_B { get; set; }
        public decimal PartIII_Percent { get; set; }
        public decimal TotalProposal { get; set; }
        public decimal TotalAgreed { get; set; }
        public decimal TotalActionLog { get; set; }
        public decimal TotalActionCompleted { get; set; }
        public decimal PartI_Rank { get; set; }
        public decimal PartII_Rank { get; set; }
        public decimal PartIII_Rank { get; set; }

    }

    public partial class RejectNotice : BaseEntity
    {
        //为Reject Notice报表添加相应的计算字段
        public List<RejectNotice> GetReportData()
        {
            List<RejectNotice> ObjList = new List<RejectNotice>();
            this.CalculateInfo();
            ObjList.Add(this);
            return ObjList;
        }

        void CalculateInfo()
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            if (string.IsNullOrEmpty(this.AuditNo.ToString())) return;
            var obj = db.Fabric_Insp_Headers.FirstOrDefault(p => p.RefNo == this.AuditNo);

            string sqlstr = string.Format("select top(1) SupplierName from [PH.BasicInfo]..SupplierProfile where ERPSupplier ='{0}'", obj.Supplier_Code);
            string SupplierDescription = db.ExecuteDataSet(sqlstr, new DataSet(), "Opts").Tables[0].Rows[0]["SupplierName"].ToString();

            this.SupplierShow = SupplierDescription;
            PONoShow = obj.PO;
            HDONoShow = obj.HdoNo;
            SupplierItemRefShow = obj.Item_Desc;
            InvoiceNoShow = obj.InvoiceNo;
            PackingListQtyShow = obj.TotalLengthByLot;
            ProjectNoShow = obj.ProjectNo;
            IDCreateDateShow = obj.Stock_In_Date.ToString();
            AuditSmplsQtyShow = obj.TotalActualLengthByLot;
            ERPItemCodeShow = obj.Item_No;
            ERPItemColorCodeShow = obj.ColorCodeShow;
            IDAuditDateShow = obj.Create_Date;
            OverallClaimProposalShow = obj.OverAllClaimLength;

            Part1DefectResultShow = obj.Step1DefectResultByLot;
            Part1DefectClaimQtyShow = obj.PartIFinalClaimQty ?? 0;
            Part1DefectClaimPerShow = (obj.PartIFinalClaimQty ?? 0) == 0 || (obj.TotalLengthByLot ?? 0) == 0 ? "0.00%" : Math.Round(((obj.PartIFinalClaimQty ?? 0) / (obj.TotalLengthByLot ?? 0)), 4).ToString("P");

            Part2DefectResultShow = obj.PartII_MeasureResultShow;
            Part2DefectClaimQtyShow = obj.PartIFinalClaimQty ?? 0;
            Part2DefectClaimPerShow = (obj.PartIFinalClaimQty ?? 0) == 0 || (obj.TotalLengthByLot ?? 0) == 0 ? "0.00%" : Math.Round(((obj.PartIFinalClaimQty ?? 0) / (obj.TotalLengthByLot ?? 0)), 4).ToString("P");

            Part3DefectResultShow = obj.OtherOverallResult;
            Part3DefectClaimQtyShow = obj.PARTIIIFinalClaimQty ?? 0;
            Part3DefectClaimPerShow = (obj.PARTIIIFinalClaimQty ?? 0) == 0 || (obj.TotalLengthByLot ?? 0) == 0 ? "0.00%" : Math.Round(((obj.PARTIIIFinalClaimQty ?? 0) / (obj.TotalLengthByLot ?? 0)), 4).ToString("P");

            OverAllDefectResultShow = obj.Insp_Result;
            OverAllDefectClaimQtyShow = (obj.PartIFinalClaimQty ?? 0) + (obj.PartIIFinalClaimQty ?? 0) + (obj.PARTIIIFinalClaimQty ?? 0);
            OverAllDefectClaimPerShow = (OverAllDefectClaimQtyShow ?? 0) == 0 || (obj.TotalLengthByLot ?? 0) == 0 ? "0.00%" : Math.Round(((OverAllDefectClaimQtyShow ?? 0) / (obj.TotalLengthByLot ?? 0)), 4).ToString("P");
        }

        public string SupplierShow { get; set; }
        public string PONoShow { get; set; }
        public string HDONoShow { get; set; }
        public string SupplierItemRefShow { get; set; }
        public string InvoiceNoShow { get; set; }
        public decimal? PackingListQtyShow { get; set; }
        public string ProjectNoShow { get; set; }
        public string IDCreateDateShow { get; set; }
        public decimal? AuditSmplsQtyShow { get; set; }
        public string ERPItemCodeShow { get; set; }
        public string ERPItemColorCodeShow { get; set; }
        public DateTime? IDAuditDateShow { get; set; }
        public decimal? OverallClaimProposalShow { get; set; }

        public string Part1DefectResultShow { get; set; }
        public string Part1DefectClaimPerShow { get; set; }
        public decimal? Part1DefectClaimQtyShow { get; set; }

        public string Part2DefectResultShow { get; set; }
        public string Part2DefectClaimPerShow { get; set; }
        public decimal? Part2DefectClaimQtyShow { get; set; }

        public string Part3DefectResultShow { get; set; }
        public string Part3DefectClaimPerShow { get; set; }
        public decimal? Part3DefectClaimQtyShow { get; set; }

        public string OverAllDefectResultShow { get; set; }
        public string OverAllDefectClaimPerShow { get; set; }
        public decimal? OverAllDefectClaimQtyShow { get; set; }
        //end
    }


    public partial class DebitNote : BaseEntity
    {
        //public decimal AmountShow
        //{
        //    get
        //    {
        //        return (Price ?? 0) * (OverallClaim ?? 0);
        //    }
        //}

        //#region 报表用的字段
        //public string SupplierShow { get; set; }
        //public string PONoShow { get; set; }
        //public string HDONoShow { get; set; }
        //public string SupplierItemRefShow { get; set; }
        //public string InvoiceNoShow { get; set; }
        //public decimal? PackingListQtyShow { get; set; }
        //public string ProjectNoShow { get; set; }
        //public DateTime? IDCreateDateShow { get; set; }
        //public decimal? AuditSmplsQtyShow { get; set; }
        //public string ERPItemCodeShow { get; set; }
        //public string ERPItemColorCodeShow { get; set; }
        //public DateTime? IDAuditDateShow { get; set; }
        //public decimal? OverallClaimProposalShow { get; set; }

        //public string Part1DefectResultShow { get; set; }
        //public string Part1DefectClaimPerShow { get; set; }
        //public decimal? Part1DefectClaimQtyShow { get; set; }

        //public string Part2DefectResultShow { get; set; }
        //public string Part2DefectClaimPerShow { get; set; }
        //public decimal? Part2DefectClaimQtyShow { get; set; }

        //public string Part3DefectResultShow { get; set; }
        //public string Part3DefectClaimPerShow { get; set; }
        //public decimal? Part3DefectClaimQtyShow { get; set; }

        //public string OverAllDefectResultShow { get; set; }
        //public string OverAllDefectClaimPerShow { get; set; }
        //public decimal? OverAllDefectClaimQtyShow { get; set; }
        //#endregion

        //////当输入Reject Notice#时，自动取得Payment term等信息
        ////partial void OnRNNoChanged()
        ////{
        ////    if (this.CurrentDataContext == null)
        ////    {
        ////        this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        ////    }

        ////    FabricInspectionDataContext db = this.CurrentDataContext as FabricInspectionDataContext;

        ////    PH.FabricInspection.BO.RejectNotice RN = db.RejectNotices.FirstOrDefault(p => p.RNNo == this.RNNo);
        ////    if (RN == null || !RN.AuditNo.HasValue)
        ////    {
        ////        return;
        ////    }

        ////    string SqlStr = string.Format("exec sp_GetDebitNoteInfo {0}", this.RNNo);
        ////    DataTable dt = db.ExecuteDataTable(SqlStr, "dt");
        ////    if (dt.Rows.Count > 0)
        ////    {
        ////        this.PaymentTerm = dt.Rows[0]["PaymentTerms"].ToString();
        ////        this.Currency = dt.Rows[0]["Currency"].ToString();
        ////        this.Price = Convert.ToDecimal(dt.Rows[0]["Price"]);
        ////    }


        ////}

    }

    public class AuditResultClass
    {
        public string AuditPart { get; set; }
        public string AuditResult { get; set; }
        public decimal ClaimPer { get; set; }
        public decimal ClaimQty { get; set; }
    }

    public class IQAOutPutClass
    {
        public int AYear { get; set; }
        public string DataType { get; set; }
        public string Unit { get; set; }
        public string MaterialGroup { get; set; }
        public int TatalSingleItem { get; set; }
        public int TotalRoll { get; set; }
        public int AuditRoll { get; set; }
        public decimal TotalAuditQty { get; set; }
        public decimal TotalQuantity { get; set; }
    }

    public partial class GridViewHeaderBackColor : BaseEntity
    {

    }

    public partial class WaitQAItem : BaseEntity
    {

    }

    public partial class ExclueMaterial : BaseEntity
    {

    }

    public partial class ErrorCode : BaseEntity
    {

    }

    public partial class S21QCResultAction : BaseEntity
    {

    }

    public partial class ActionLogIMQE : BaseEntity
    {

    }

}