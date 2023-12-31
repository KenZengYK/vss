using System;
using System.Collections.Generic;
using System.Text;
using System.Globalization;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.BackEnd
{
    public class MaterialByLot
    {
        //private string dateFormat = "yyyy/MM/dd HH:mm:ss";
        private string dateFormat = "yyyy/MM/dd";

        private int _sideToSideH_Width;
        /// </summary>
        public int SideToSideH_Width
        {
            get
            {
                return _sideToSideH_Width;
            }
            set
            {
                _sideToSideH_Width = value;
            }
        }


        private string _versionNo;

        /// <summary>
        /// Company	varchar	2	Company Code
        /// </summary>
        public string VersionNo
        {
            get
            {
                return _versionNo;
            }
            set
            {
                _versionNo = value;
                //this.OnPropertyChanged("VersionNo");
            }
        }


        private string _itemNo;
        public string ItemNo
        {
            get { return _itemNo; }
            set { _itemNo = value; }
        }

        private string _stockInDate;
        /// <summary>
        /// stock in date: 
        /// </summary>
        public string StockInDate
        {
            get { return _stockInDate; }
            set { _stockInDate = value; }
        }

        /// <summary>
        /// Stock_In_Date
        /// </summary>
        public DateTime Stock_In_Date_DateTime
        {
            get
            {
                try
                {
                    return DateTimeUtil.StringToDateTime(StockInDate, "yyMMdd");
                }
                catch
                {
                    return DateTime.Now;
                }

            }
        }

        private string _colorNo;
        public string ColorNo
        {
            get { return _colorNo; }
            set { _colorNo = value; }
        }

        private string _receiveDate;
        public string ReceiveDate
        {
            get { return _receiveDate; }
            set { _receiveDate = value; }
        }

        /// <summary>
        /// Stock_In_Date
        /// </summary>
        public DateTime ReceiveDate_DateTime
        {
            get
            {
                try
                {
                    return DateTimeUtil.StringToDateTime(ReceiveDate, "yyMMdd");
                }
                catch
                {
                    return DateTime.Now;
                }

            }
        }


        private decimal _wastage;
        /// <summary>
        /// Wastage	decimal	11(4)	
        /// </summary>
        public decimal Wastage
        {
            get
            {
                return _wastage;
            }
            set
            {
                _wastage = value;

            }
        }

        private decimal _deduct;
        /// <summary>
        /// Wastage	decimal	11(4)	
        /// </summary>
        public decimal Deduct
        {
            get
            {
                return _deduct;
            }
            set
            {
                _deduct = value;

            }
        }

        private int _inspectionNo;
        public int InspectionNo
        {
            get { return _inspectionNo; }
            set { _inspectionNo = value; }
        }

        private decimal _receiveLength;
        public decimal ReceiveLength
        {
            get { return _receiveLength; }
            set { _receiveLength = value; }
        }


        private decimal _inspectionLength;
        public decimal InspectionLength
        {
            get { return _inspectionLength; }
            set { _inspectionLength = value; }
        }
        private decimal _ActualLength;
        public decimal ActualLength
        {
            get { return _ActualLength; }
            set { _ActualLength = value; }
        }


        private decimal _InspectionRate;
        public decimal InspectionRate
        {
            get
            {
                if (ReceiveLength > 0)
                {
                    //_InspectionRate = Math.Round((ActualLength * 100 / ReceiveLength), 2);
                    return _InspectionRate;
                }
                else
                {
                    return 0;
                }
                //return _inspectionRate; 
            }
            set { _InspectionRate = value; }
        }

        private DateTime _inspectionDate;
        public DateTime InspectionDate
        {
            get { return _inspectionDate; }
            set { _inspectionDate = value; }
        }

        public string InspectionDateString
        {
            get
            {
                return InspectionDate.ToString(dateFormat, new CultureInfo("en-US"));
            }
        }


        private int _usableWidth;
        public int UsableWidth
        {
            get { return _usableWidth; }
            set { _usableWidth = value; }
        }

        private string _ActualUsableWidth;
        public string ActualUsableWidth
        {
            get { return _ActualUsableWidth; }
            set { _ActualUsableWidth = value; }
        }

        private string _DifferenceUsableWidth;
        public string DifferenceUsableWidth
        {
            get { return _DifferenceUsableWidth; }
            set { _DifferenceUsableWidth = value; }

        }
        //sharly 20100226 begin
        private string _ActEtoEWidth;
        public string ActEtoEWidth
        {
            get { return _ActEtoEWidth; }
            set { _ActEtoEWidth = value; }
        }
        //sharly 20100226 end

        private decimal _weight;
        public decimal Weight
        {
            get { return _weight; }
            set { _weight = value; }
        }

        private string _actualWeight;
        public string ActualWeight
        {
            get { return _actualWeight; }
            set { _actualWeight = value; }
        }

        private string _differenceWeight;
        public string DifferenceWeight
        {
            get { return _differenceWeight; }
            set { _differenceWeight = value; }
        }

        private string _po;
        public string PO
        {
            get { return _po; }
            set { _po = value; }
        }

        private string _hdoNo;
        public string HdoNo
        {
            get { return _hdoNo; }
            set { _hdoNo = value; }
        }


        private string _projectNo;
        public string ProjectNo
        {
            get { return _projectNo; }
            set { _projectNo = value; }
        }

        private decimal _total_punish_points;
        public decimal Total_Punish_Points
        {
            get { return _total_punish_points; }
            set { _total_punish_points = value; }
        }


        public decimal Average_Punish_Points
        {
            get
            {

                //----------
                //Xsj20130617:By Lot Report中計算平均點數範圍的邏輯沒有觸發，查看2011-3-4的代碼，發確也缺失這部份邏輯的觸發，具休原因不知。
                //注釋掉如下代碼
                //if ((UsableWidth == 0) || (ReceiveLength == 0))
                //{
                //    return 0;
                //}
                //return Total_Punish_Points * 10000 / UsableWidth / this.ReceiveLength;
                //--------------------

                return this._average_Punish_Points;
            }
        }
        //----------
        //Xsj20130617:By Lot Report中計算平均點數範圍的邏輯沒有觸發，查看2011-3-4的代碼，發確也缺失這部份邏輯的觸發，具休原因不知。
        //添加如下代碼
        private decimal _average_Punish_Points;
        //----------



        private decimal _total_PHSample;
        public decimal Total_PHSample
        {
            get { return _total_PHSample; }
            set { _total_PHSample = value; }
        }

        private decimal _ShortPercent;
        public decimal ShortPercent
        {
            get { return _ShortPercent; }
            set { _ShortPercent = value; }
        }

        private decimal _ReturnQty;
        public decimal ReturnQty
        {
            get { return _ReturnQty; }
            set { _ReturnQty = value; }
        }

        private decimal _PartReturnQty;
        public decimal PartReturnQty
        {
            get { return _PartReturnQty; }
            set { _PartReturnQty = value; }
        }


        private decimal _MoreOrLessLength;
        public decimal MoreOrLessLength
        {
            get { return _MoreOrLessLength; }
            set { _MoreOrLessLength = value; }
        }

        private string _ShortLengthString;
        public string ShortLengthString
        {
            get { return _ShortLengthString; }
            set { _ShortLengthString = value; }
        }

        //public decimal MoreOrLessLength
        //{
        //    //get { return InspectionLength - this.ReceiveLength + Total_PHSample; }
        //    get { return (ReceiveLength - ReturnQty) * ShortPercent; }
        //}
        //public string ShortLengthString 
        //{

        //    get
        //    {
        //        if (MoreOrLessLength > 0)
        //        {
        //            return " 長碼Length" + MoreOrLessLength.ToString() + "(" + ShortPercent.ToString() + ")%";
        //        }
        //        else
        //        {
        //            return " 短碼Short" + MoreOrLessLength.ToString() + "(" + ShortPercent.ToString() + ")%";
        //        }
        //    }

        //}

        //private decimal _GM_SQM;

        //public decimal GM_SQM
        //{
        //    get
        //    {
        //        return _GM_SQM;
        //    }
        //    set
        //    {
        //        _GM_SQM = value;
        //        //this.OnPropertyChanged("GM_SQM");
        //    }
        //}

        private decimal _supplier_Width;
        /// <summary>
        /// Supplier_Width	decimal	11(4)	Supplier Width
        /// </summary>
        public decimal Supplier_Width
        {
            get
            {
                return _supplier_Width;
            }
            set
            {
                _supplier_Width = value;
                //this.OnPropertyChanged("Supplier_Width");
            }
        }

        public string Result_Accept
        {
            get
            {
                //if (Average_Punish_Points <= 30)  //Xsj20130617:應Shelley的要求，將界線由30改為28。
                if (Average_Punish_Points <= 28)
                {
                    return "√";
                }
                return "";
            }
        }

        public string Result_JustSoSo
        {
            get
            {
                //if ((Average_Punish_Points > 30) && (Average_Punish_Points <= 50))   //Xsj20130617:應Shelley的要求，將界線由30改為28。
                if ((Average_Punish_Points > 28) && (Average_Punish_Points <= 50))
                {
                    return "√";
                }
                return "";
            }
        }

        public string Result_Reject
        {
            get
            {
                if (Average_Punish_Points > 50)
                {
                    return "√";
                }
                return "";
            }
        }

        private string _party_insp_result;
        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Party_Insp_Result
        {
            get
            {
                return _party_insp_result.Trim();
            }
            set
            {
                _party_insp_result = value;
                //this.OnPropertyChanged("Party_Insp_Result");
            }
        }

        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Party_Insp_Result_Desc
        {
            get
            {
                if (Party_Insp_Result == "1")
                {
                    return "OK";
                }
                else if (Party_Insp_Result == "2")
                {
                    return "Deductive";
                }
                else if (Party_Insp_Result == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }

        private string _spread_insp_result;
        /// <summary>
        /// Spread_Insp_Result	varchar	    1	spreat defect Insp result ‘1’= OK, ‘2’= Deductive,’3’=Reject
        /// </summary>
        public string Spread_Insp_Result
        {
            get
            {
                return _spread_insp_result.Trim();
            }
            set
            {
                _spread_insp_result = value;
                //this.OnPropertyChanged("Spread_Insp_Result");
            }
        }

        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Spread_Insp_Result_Desc
        {
            get
            {
                if (Spread_Insp_Result == "1")
                {
                    return "OK";
                }
                else if (Spread_Insp_Result == "2")
                {
                    return "Deductive";
                }
                else if (Spread_Insp_Result == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }


        private string _WeftYarnStatus;
        /// <summary>
        /// WeftYarnStatus	varchar	    1	WeftYarnStatus ‘1’= OK, ‘2’= Deductive,’3’=Reject
        /// </summary>
        public string WeftYarnStatus
        {
            get
            {
                return _WeftYarnStatus.Trim();
            }
            set
            {
                _WeftYarnStatus = value;
                //this.OnPropertyChanged("WeftYarnStatus");
            }
        }

        /// <summary>
        /// WeftYarnStatus	varchar	    1	WeftYarnStatus '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string WeftYarnStatusDesc
        {
            get
            {
                if (WeftYarnStatus == "1")
                {
                    return "OK";
                }
                else if (WeftYarnStatus == "2")
                {
                    return "Deduct";
                }
                else if (WeftYarnStatus == "3")
                {
                    return "Reject";
                }
                else
                {
                    return "";
                }
            }

        }

        private string _mould_trial_result;
        /// <summary>
        /// Mould_Trial_Result	varchar	    1= ok , 2=reject , 3=No need to do mould trial
        /// </summary>
        public string Mould_Trial_Result
        {
            get
            {
                return _mould_trial_result.Trim();
            }
            set
            {
                _mould_trial_result = value;
                //this.OnPropertyChanged("Mould_Trial_Result");
            }
        }

        public string Mould_Trial_Result_Desc
        {
            get
            {
                if (this._mould_trial_result == "1")
                {
                    return RecordStatus.MOULD_TRIAL_OK_DESCRIPTION;
                }
                else if (this._mould_trial_result == "2")
                {
                    return RecordStatus.MOULD_TRIAL_REJECT_DESCRIPTION;
                }
                else if (this._mould_trial_result == "3")
                {
                    return RecordStatus.MOULD_TRIAL_NOMOULDTRIAL_DESCRIPTION;
                }
                else
                {
                    return "";
                }

            }
        }

        private string _color_group_status;
        /// <summary>
        /// Color_Group_Status	varchar	    ok , reject , blank
        /// </summary>
        public string Color_Group_Status
        {
            get
            {
                return _color_group_status;
            }
            set
            {
                _color_group_status = value;
                //this.OnPropertyChanged("Color_Group_Status");
            }
        }

        private string _Supplier;
        /// <summary>
        /// Supplier Item No
        /// </summary>
        public string Supplier
        {
            get
            {
                return _Supplier;
            }
            set
            {
                _Supplier = value;
            }
        }

        private string _SupplierDescription;
        /// <summary>
        /// Supplier Name
        /// </summary>
        public string SupplierDescription
        {
            get
            {
                return _SupplierDescription;
            }
            set
            {
                _SupplierDescription = value;
            }
        }

        private string _Supplier_Item_No;
        /// <summary>
        /// Supplier Item No
        /// </summary>
        public string Supplier_Item_No
        {
            get
            {
                return _Supplier_Item_No;
            }
            set
            {
                _Supplier_Item_No = value;
            }
        }

        private string _InvoiceNo;
        /// <summary>
        /// Invoice No
        /// </summary>
        public string InvoiceNo
        {
            get
            {
                return _InvoiceNo;
            }
            set
            {
                _InvoiceNo = value;
            }
        }

        private int _GRN_Piece;
        /// <summary>
        ///  回料匹數
        /// </summary>
        public int GRN_Piece
        {
            get
            {
                return _GRN_Piece;
            }
            set
            {
                _GRN_Piece = value;
            }
        }

        private int _Detect_Piece;
        /// <summary>
        ///  抽檢匹數
        /// </summary>
        public int Detect_Piece
        {
            get
            {
                return _Detect_Piece;
            }
            set
            {
                _Detect_Piece = value;
            }
        }


        private List<SpreadDefectInfoByReport> _SpreadDefectDetailItems = new List<SpreadDefectInfoByReport>();
        public List<SpreadDefectInfoByReport> SpreadDefectDetailItems
        {
            get
            {
                return _SpreadDefectDetailItems;
            }
            set
            {
                _SpreadDefectDetailItems = value;
            }
        }


        /// <summary>
        /// =================================================================================
        /// Generate Data for Spread Defect Process Solution
        /// Modified By:Michael
        /// Modified At:2008-07-25
        /// =================================================================================
        /// </summary>

        private List<SpreadDefectProcSolutionByReport> _SpreadDefectProcSolutions = new List<SpreadDefectProcSolutionByReport>();
        public List<SpreadDefectProcSolutionByReport> SpreadDefectProcSolutions
        {
            get
            {
                return _SpreadDefectProcSolutions;
            }
            set
            {
                _SpreadDefectProcSolutions = value;
            }
        }

        private List<Fabric_Insp_Header> _inspectionHeaders = new List<Fabric_Insp_Header>();
        public List<Fabric_Insp_Header> InspectionHeaders
        {
            get
            {
                return _inspectionHeaders;
            }
            set
            {
                _inspectionHeaders = value;
            }
        }

        private List<Fabric_Insp_PartDefect> _allPartDefects = new List<Fabric_Insp_PartDefect>();
        public List<Fabric_Insp_PartDefect> AllPartDefects
        {
            get
            {
                return _allPartDefects;
            }
            set
            {
                _allPartDefects = value;
            }
        }

        private List<Fabric_Insp_SpreadDefect> _allSpreadDefects = new List<Fabric_Insp_SpreadDefect>();
        public List<Fabric_Insp_SpreadDefect> AllSpreadDefects
        {
            get
            {
                return _allSpreadDefects;
            }
            set
            {
                _allSpreadDefects = value;
            }
        }


        private List<PartDefectInfo> _PartyDefectDetailItems = new List<PartDefectInfo>();
        public List<PartDefectInfo> PartyDefectDetailItems
        {
            get
            {
                return _PartyDefectDetailItems;
            }
            set
            {
                _PartyDefectDetailItems = value;
            }
        }

        public List<MouldTrialAndColorAndWeftYarnInfo> _mould_trial_and_color_and_WeftYarn_info = new List<MouldTrialAndColorAndWeftYarnInfo>();
        public List<MouldTrialAndColorAndWeftYarnInfo> MouldTrialAndColorAndWeftYarnInfo
        {
            get
            {
                return _mould_trial_and_color_and_WeftYarn_info;
            }
            set
            {
                _mould_trial_and_color_and_WeftYarn_info = value;
            }
        }

        public string MouldTrialString
        {
            get
            {
                List<string> mouldTrialResults = new List<string>();
                string strTemp = "";
                for (int i = 0, iSize = MouldTrialAndColorAndWeftYarnInfo.Count; i < iSize; i++)
                {
                    if (mouldTrialResults.IndexOf(MouldTrialAndColorAndWeftYarnInfo[i].MouldTrialStatus) < 0)
                    {
                        mouldTrialResults.Add(MouldTrialAndColorAndWeftYarnInfo[i].MouldTrialStatus);
                    }
                }
                for (int i = 0, iSize = mouldTrialResults.Count; i < iSize; i++)
                {
                    if (strTemp.Length > 0)
                    {
                        strTemp = strTemp + ", " + mouldTrialResults[i];
                    }
                    else
                    {
                        strTemp = mouldTrialResults[i];
                    }
                }
                return strTemp;
            }
        }

        public string ColorGroupString
        {
            get
            {
                List<string> colorGroupResults = new List<string>();
                string strTemp = "";
                for (int i = 0, iSize = MouldTrialAndColorAndWeftYarnInfo.Count; i < iSize; i++)
                {
                    if (colorGroupResults.IndexOf(MouldTrialAndColorAndWeftYarnInfo[i].ColorGroupStatus) < 0)
                    {
                        colorGroupResults.Add(MouldTrialAndColorAndWeftYarnInfo[i].ColorGroupStatus);
                    }
                }
                for (int i = 0, iSize = colorGroupResults.Count; i < iSize; i++)
                {
                    if (strTemp.Length > 0)
                    {
                        strTemp = strTemp + ", " + colorGroupResults[i];
                    }
                    else
                    {
                        strTemp = colorGroupResults[i];
                    }
                }
                return strTemp;
            }
        }

        public string PartDefectDetailsString
        {
            get
            {
                string strTemp = "";
                for (int i = 0, iSize = 5; (i < iSize) && (i < PartyDefectDetailItems.Count); i++)
                {
                    if (strTemp.Length == 0)
                    {
                        strTemp = PartyDefectDetailItems[i].Defect_Name; //+ "(" + PartyDefectDetailItems[i].Defect_Deduct_Points + ")";
                    }
                    else
                    {
                        strTemp = strTemp + "\n" + PartyDefectDetailItems[i].Defect_Name;// +"(" + PartyDefectDetailItems[i].Defect_Deduct_Points + ")";

                    }
                }
                return strTemp;
            }
        }

        public string SpreadDefectDetailsString
        {
            get
            {
                string strTemp = "";
                for (int i = 0, iSize = SpreadDefectDetailItems.Count; i < iSize; i++)
                {
                    if (strTemp.Length == 0)
                    {
                        strTemp = SpreadDefectDetailItems[i].Defect_Name + ", " + SpreadDefectDetailItems[i].Spread_Defect_Degree + ", " + SpreadDefectDetailItems[i].Spread_Insp_Result_Desc;
                    }
                    else
                    {
                        strTemp = strTemp + "\n" + SpreadDefectDetailItems[i].Defect_Name + ", " + SpreadDefectDetailItems[i].Spread_Defect_Degree + ", " + SpreadDefectDetailItems[i].Spread_Insp_Result_Desc;

                    }
                }
                return strTemp;
            }
        }

    }


    public class MouldTrialAndColorAndWeftYarnInfo
    {


        private string _lot_id;
        /// <summary>
        /// Lot_Id	varchar	15	Lot_id
        /// </summary>
        public string Lot_Id
        {
            get
            {
                return _lot_id;
            }
            set
            {
                _lot_id = value;
                //this.OnPropertyChanged("Lot_Id");
            }
        }


        private string _mould_trial_status;
        /// <summary>
        /// Defect_Type	varchar	1	Defect type(＆P＊)
        /// </summary>
        public string MouldTrialStatus
        {
            get
            {
                return _mould_trial_status;
            }
            set
            {
                _mould_trial_status = value;
                //this.OnPropertyChanged("Defect_Type");
            }
        }

        private string _WeftYarnStatus;
        /// <summary>
        /// Defect_Type	varchar	1	Defect type(＆P＊)
        /// </summary>
        public string WeftYarnStatus
        {
            get
            {
                return _WeftYarnStatus;
            }
            set
            {
                _WeftYarnStatus = value;
                //this.OnPropertyChanged("Defect_Type");
            }
        }

        private string _color_group_status;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string ColorGroupStatus
        {
            get
            {
                return _color_group_status;
            }
            set
            {
                _color_group_status = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }


    }

}
