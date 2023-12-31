using System;
using System.Collections.Generic;
using System.Text;
using System.Data.Linq;
using System.Linq;
using System.Globalization;
using PH.FabricInspection.BO;
using PH.Platform.Common;

namespace PH.FabricInspection.UI
{
    class MaterialByLot
    {
        private string _AuditStage;
        /// <summary>
        /// add by shulin 区分：审核阶段
        /// </summary>
        public string AuditStage
        {
            get
            {
                return _AuditStage;
            }
            set
            {
                _AuditStage = value;
                //this.OnPropertyChanged("VersionNo");
            }
        }


        public int? RefNo { get; set; }  //由David加入 2020-09-29

        //Xsj20111110:添加，目的為了提髙速度



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
                    return DateTime.Now;// DateTimeUtil.StringToDateTime(DateTime.Now.ToShortDateString(), "dd/MM/yyyy"); // DateTime.Now;
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

        private string _ActEtoEWidth;
        public string ActEtoEWidth
        {
            get { return _ActEtoEWidth; }
            set { _ActEtoEWidth = value; }
        }

        private string _DifferenceUsableWidth;
        public string DifferenceUsableWidth
        {
            get { return _DifferenceUsableWidth; }
            set { _DifferenceUsableWidth = value; }

        }

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
            set
            {
                this._average_Punish_Points = value;
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

        private decimal _ShortPercent;

        /// <summary>
        /// 短碼數 = [ ( 累加檢測且非ReturnID的實際檢測到的數量 + 累加檢測且非ReturnID的PH sample - 累加檢測且非ReturnID的回料數量 ) 
        ///            /累加檢測且非ReturnID的回料數量
        ///          ] * 該水回料非Return的回料總數;
        /// </summary>
        public decimal ShortPercent
        {
            get { return _ShortPercent; }
            set { _ShortPercent = value; }
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

        public string ShortLengthString2
        {
            get;
            set;
        }

        public string ShortLengthString3
        {
            get;
            set;
        }

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
                //if (Average_Punish_Points <= 30) //Xsj20130617:應Shelley的要求，將界線由30改為28。
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
                //if ((Average_Punish_Points > 30) && (Average_Punish_Points <= 50)) //Xsj20130617:應Shelley的要求，將界線由30改為28。
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
                    return "Deduct";
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
                    return "Deduct";
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
        /// Spread_Insp_Result	varchar	    1	spreat defect Insp result ‘1’= OK, ‘2’= Deductive,’3’=Reject
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
                //this.OnPropertyChanged("Spread_Insp_Result");
            }
        }

        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string WeftYarnStatusDesc
        {
            get
            {
                if (WeftYarnStatus == "0")
                {
                    return "No Weft Yarn";
                }
                else if (WeftYarnStatus == "1")
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
        //public List<Fabric_Insp_Header> InspectionHeaders
        //{
        //    get
        //    {
        //        //return _inspectionHeaders;//.OrderBy(cc => cc.Lot_Id).ToList<Fabric_Insp_Header>();
        //         _inspectionHeaders.Sort(SortInspectionHeader);
        //         return _inspectionHeaders;
        //    }

        //}
        //private int SortInspectionHeader(Fabric_Insp_Header x,Fabric_Insp_Header y)
        //{
        //    if (x == null || y == null) return 0;
        //    int i=string.Compare(x.Lot_Id,y.Lot_Id);
        //    if (i > 0) return 1;
        //    else if (i < 0) return -1;
        //    else return 0;
        //}
        public List<Fabric_Insp_Header> InspectionHeaders
        {
            get
            {
                return _inspectionHeaders;//.OrderBy(cc => cc.Lot_Id).ToList<Fabric_Insp_Header>();
                // return _inspectionHeaders.OrderBy(cc => cc.Lot_Id).ToList<Fabric_Insp_Header>();
            }
            set
            {
                _inspectionHeaders = value;
            }
        }

        private List<Fabric_Insp_PartDefect> _allPartDefects = new List<Fabric_Insp_PartDefect>();
        //public IEnumerable<Fabric_Insp_PartDefect> AllPartDefects
        //{
        //    get
        //    {
        //        return _allPartDefects.OrderBy(cc => cc.Detect_Turn_No);
        //    }

        //}
        public List<Fabric_Insp_PartDefect> AllPartDefects
        {
            get
            {
                return _allPartDefects;
                //return _allPartDefects.OrderBy(cc => cc.Detect_Turn_No).ToList<Fabric_Insp_PartDefect>();

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


        // 20100415sharly
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
                string DeductTostring = "";
                string WastageTostring = "";
                /*By Lot Report只顯示前3個defect的名稱*/
                for (int i = 0, iSize = 3; (i < iSize) && (i < PartyDefectDetailItems.Count); i++)
                {
                    if (strTemp.Length == 0)
                    {
                        strTemp = PartyDefectDetailItems[i].Defect_NameName;
                    }
                    else
                    {
                        strTemp = strTemp + "﹑" + PartyDefectDetailItems[i].Defect_NameName;
                    }
                }
                DeductTostring = Deduct.ToString("#0.00");
                WastageTostring = Wastage.ToString("#0.00");
                SysParamHelper sph = SysParamHelper.Instance;
                if (sph.LangID == "TW" || sph.LangID == "CN")
                    strTemp = strTemp + ", 預計損耗" + DeductTostring + " (" + WastageTostring + "%)";

                if (sph.LangID == "TH")
                    strTemp = strTemp + ", ประมาณการค่าสูญเสีย" + DeductTostring + " (" + WastageTostring + "%)";

                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    strTemp = strTemp + ", Estimate wastage" + DeductTostring + " (" + WastageTostring + "%)";

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
                    if (i == 4)
                        break;

                    if (strTemp.Length == 0)
                    {
                        strTemp = SpreadDefectDetailItems[i].Defect_NameName + ", " + SpreadDefectDetailItems[i].Spread_Defect_Degree + ", " + SpreadDefectDetailItems[i].Spread_Insp_Result_Desc;
                    }
                    else
                    {
                        strTemp = strTemp + "、" + SpreadDefectDetailItems[i].Defect_NameName + ", " + SpreadDefectDetailItems[i].Spread_Defect_Degree + ", " + SpreadDefectDetailItems[i].Spread_Insp_Result_Desc;

                    }
                }

                SysParamHelper sph = SysParamHelper.Instance;
                if (sph.LangID == "TW" || sph.LangID == "CN")
                    strTemp = strTemp + "。 預計損耗" + this.Deduct.ToString("0:#0.00") + "(" + this.Wastage.ToString("0:#0.00") + "%)";

                if (sph.LangID == "TH")
                    strTemp = strTemp + "。 ประมาณการค่าสูญเสีย" + this.Deduct.ToString("0:#0.00") + "(" + this.Wastage.ToString("0:#0.00") + "%)";

                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    strTemp = strTemp + "。 Estimate wastage " + this.Deduct.ToString("0:#0.00") + "(" + this.Wastage.ToString("0:#0.00") + "%)";

                return strTemp;
            }
        }

        public string SupplierCode
        {
            get
            {
                var objs = from c in this.InspectionHeaders select c;

                if (objs.Count() != 0)
                    return objs.First<PH.FabricInspection.BO.Fabric_Insp_Header>().Supplier_Code;
                else
                    return "";

            }
        }

        public string SuppColorName
        {
            get
            {
                var objs = from c in this.InspectionHeaders select c;
                if (objs.Count() != 0)
                    return objs.First<PH.FabricInspection.BO.Fabric_Insp_Header>().SupplierItemColor;
                else
                    return "";

            }
        }

        public Nullable<DateTime> IQCInspectDate
        {
            get
            {
                System.Nullable<DateTime> date = null;
                var objs = from c in this.InspectionHeaders where c.Change_Date != null select c;
                if (objs.Count() != 0)
                    date = objs.First<PH.FabricInspection.BO.Fabric_Insp_Header>().Change_Date;
                else
                {
                    var objs2 = from c in this.InspectionHeaders where c.Create_Date != null select c;

                    if (objs2.Count() != 0)
                        date = objs2.First<PH.FabricInspection.BO.Fabric_Insp_Header>().Create_Date;
                }
                if (date != null)
                {
                    //string a = (date ?? DateTime.Now).ToString();
                    return date;// DateTimeUtil.StringToDateTime(a, "dd/MM/yyyy");
                }
                else
                    return null;
            }
        }

        public string StdUsableWidth
        {
            get;
            set;
        }

        public string StdWeight
        {
            get;
            set;
        }

        public string Std_E_To_E_Width
        { get; set; }

        //sharly 20100226 begin
        //public string ActEtoEWidth
        //{
        //    get
        //    {
        //        #region  说明......
        //        /*
        //        ?K1取數方式  取表Fabric_Insp_Header中字段MIN(SideToSideH_Width) WHERE FROM LIST中被選擇的ID

        //        ?K2取數方式  取表Fabric_Insp_Header中字段MAX(SideToSideH_Width) WHERE FROM LIST中被選擇的ID

        //         */
        //        #endregion

        //        var objs1 = (from c in this.InspectionHeaders select new { c.SideToSideH_Width });//.Min()
        //        var objs2 = (from c in this.InspectionHeaders select new { c.SideToSideH_Width });

        //        int i1 = 0, i2 = 0;
        //        foreach (var item in objs1)
        //            if (i1 > (item.SideToSideH_Width ?? 0)) i1 = item.SideToSideH_Width ?? 0;

        //        foreach (var item in objs2)
        //            if (i2 < (item.SideToSideH_Width ?? 0)) i2 = item.SideToSideH_Width ?? 0;


        //        return i1.ToString() + " - " + i2.ToString();

        //    }
        //}
        //sharly 20100226 end
        public string Color
        {
            get
            {
                #region 说明.....
                /*                
                select count(*) as X1,sum(Actual_Length) as Y1 from dbo.Fabric_Insp_Header
                where Color_Group_Status = ' '  AND FROM LIST中被選擇的ID

                select count(*) as X2,sum(Actual_Length) as Y2 from dbo.Fabric_Insp_Header
                where Color_Group_Status = '*' AND FROM LIST中被選擇的ID

                select count(*) as X3,sum(Actual_Length) as Y3 from dbo.Fabric_Insp_Header
                where Color_Group_Status = '?' AND FROM LIST中被選擇的ID

                select count(*) as X4,sum(Actual_Length) as Y4 from dbo.Fabric_Insp_Header
                where Color_Group_Status <> '?' AND Color_Group_Status <> '*' 
                AND Color_Group_Status<>' ' AND FROM LIST中被選擇的ID
                顯示格式如下:
                ?Q = X1卷/Y1m未批色 ; X2卷/Y2m待批色 ; X3卷/Y3m顏色拒收 ; X4卷/Y4m OK.
                Shelley  2009/12/11: 注意，這種情況的相識格式“當幾種狀態存在時，隻相識"空白"/"*"/"?" 對應的數量”

                 */
                #endregion

                System.Nullable<decimal> Y1, Y2, Y3, Y4;
                int X1, X2, X3, X4;



                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var objs = from c in context.Fabric_Insp_Headers where c.Item_No == this.ItemNo + this.ColorNo && c.Stock_In_Date == this.StockInDate select c;
                var objs1 = from c in objs where c.Color_Group_Status == "" select c.Actual_Length;
                var objs2 = from c in objs where c.Color_Group_Status == "*" select c.Actual_Length; ;
                var objs3 = from c in objs where c.Color_Group_Status == "?" select c.Actual_Length; ;
                var objs4 = from c in objs where c.Color_Group_Status != "?" && c.Color_Group_Status != "*" && c.Color_Group_Status != "" select c.Actual_Length;

                X1 = objs1.Count();
                X2 = objs2.Count();
                X3 = objs3.Count();
                X4 = objs4.Count();

                Y1 = objs1.Sum();
                Y2 = objs2.Sum();
                Y3 = objs3.Sum();
                Y4 = objs4.Sum();

                SysParamHelper sph = SysParamHelper.Instance;

                string str = null;

                if (sph.LangID == "TW" || sph.LangID == "CN")
                {
                    str = ((X1 == 0 && (Y1 ?? 0) == 0) ? "" : X1.ToString() + "卷/" + (Y1 ?? 0).ToString("#.##") + "m 未批顔色； ") +
                                ((X2 == 0 && (Y2 ?? 0) == 0) ? "" : X2.ToString() + "卷/" + (Y2 ?? 0).ToString("#.##") + "m 待批顔色； ") +
                                ((X3 == 0 && (Y3 ?? 0) == 0) ? "" : X3.ToString() + "卷/" + (Y3 ?? 0).ToString("#.##") + "m 顏色拒收； ") +
                                ((X4 == 0 && (Y4 ?? 0) == 0) ? "" : X4.ToString() + "卷/" + (Y4 ?? 0).ToString("#.##") + "m OK ");
                }

                if (sph.LangID == "TH")
                {
                    str = ((X1 == 0 && (Y1 ?? 0) == 0) ? "" : X1.ToString() + "ม้วน/" + (Y1 ?? 0).ToString("#.##") + "m ยังไม่ได้รับการอนุมัติเรื่องเฉดสี； ") +
                           ((X2 == 0 && (Y2 ?? 0) == 0) ? "" : X2.ToString() + "ม้วน/" + (Y2 ?? 0).ToString("#.##") + "m รออนุมัติเรื่องเฉดสี； ") +
                           ((X3 == 0 && (Y3 ?? 0) == 0) ? "" : X3.ToString() + "ม้วน/" + (Y3 ?? 0).ToString("#.##") + "m สีตก,ผิดสี； ") +
                           ((X4 == 0 && (Y4 ?? 0) == 0) ? "" : X4.ToString() + "ม้วน/" + (Y4 ?? 0).ToString("#.##") + "m OK ");

                }

                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                {
                    str = ((X1 == 0 && (Y1 ?? 0) == 0) ? "" : X1.ToString() + "Roll/" + (Y1 ?? 0).ToString("#.##") + "m Not yet approved color； ") +
                           ((X2 == 0 && (Y2 ?? 0) == 0) ? "" : X2.ToString() + "Roll/" + (Y2 ?? 0).ToString("#.##") + "m waiting for color approved； ") +
                           ((X3 == 0 && (Y3 ?? 0) == 0) ? "" : X3.ToString() + "Roll/" + (Y3 ?? 0).ToString("#.##") + "m off color； ") +
                           ((X4 == 0 && (Y4 ?? 0) == 0) ? "" : X4.ToString() + "Roll/" + (Y4 ?? 0).ToString("#.##") + "m OK ");

                }


                return str;


            }
        }

        //sharly 20100527 begin
        public string MouldTrialString1
        {
            get
            {
                System.Nullable<decimal> Y1, Y2, Y3;
                string str1 = null, str2 = null, str3 = null;
                string str = null;

                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
                var objs = from c in context.Fabric_Insp_Headers where c.Item_No == this.ItemNo + this.ColorNo && c.Stock_In_Date == this.StockInDate select c;
                var objs1 = from c in objs where c.Mould_Trial_Result == "1" select c.Actual_Length;
                var objs2 = from c in objs where c.Mould_Trial_Result == "2" select c.Actual_Length; ;
                var objs3 = from c in objs where c.Mould_Trial_Result == "3" select c.Actual_Length; ;

                Y1 = objs1.Sum();
                Y2 = objs2.Sum();
                Y3 = objs3.Sum();
                if (Y1 > 0 && InspectionLength != 0) str = str + ((Y1 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2") + "% OK; ";
                if (Y2 > 0 && InspectionLength != 0) str = str + ((Y2 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2") + "% Reject; "; ;
                if (Y3 > 0 && InspectionLength != 0) str = str + ((Y3 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2") + "% No Mould Trial; ";

                return str;
            }
        }
        public string WeftYarnString
        {
            get
            {
                #region 说明.....
                /*   
                 	1. 當只要存在一个Status为空時，測量值先分組，0~5%為一組，大於5%的每3%為一組顯示格式如下：
                    A%緯斜值為X~Y (X值為該組的最小值，Y值為該組的最大值）;B%緯斜值為X~Y (X值為該組的最小值，Y值為該組的最大值）;C%緯斜值為X~Y (X值為該組的最小值，Y值為該組的最大值）
                    .....(如此類推）
                 	2. 當所有Status都不为空時，根據Status 的不同選擇不同顯示格式如下：
                    以solution 和status 一致為基礎分組
                     2.1 當status 為OK時,Solution 出現2個或以上
                    A%緯斜值為X~Y + Solution   
                    B%緯斜值為X1~Y1 + Solution 1
                    .....(如此類推）每組X值到Y值范圍不能包括其它組的X值到Y值范圍,否則請提示錯誤，修正Solution
                    2.2 當status 為扣數時,Solution 出現2個或以上
                    A%緯斜值為X~Y + Solution   + “根據CAD排麥所超用量為”？(%) 
                    B%緯斜值為X1~Y1 + Solution1   + “根據CAD排麥所超用量為”？(%) 
                    .....(如此類推）每組X值到Y值范圍不能包括其它組的X值到Y值范圍,否則請提示錯誤，修正Solution
                    2.3 當status 為拒收時
                    A%緯斜值為X~Y + Solution  拒收
                    B%緯斜值為X1~Y1 + Solution1  拒收
                    .....(如此類推）每組X值到Y值范圍不能包括其它組的X值到Y值范圍,否則請提示錯誤，修正Solution
                    請注意當同一水的Solution 和 Status 為一致時，顯示的格式為：
                    緯斜值為(最小值~最大值）+ Solution
                    同一status 顯示在同一行，不同Status 要分行。

                 */
                #endregion
                System.Nullable<decimal> ActualLengthTotal, ActualLengthNoStatus, ActualLengthSubTotal,
                    X1, X2, X3, X4, X5, X6, Y1, Y2, Y3, Y4, Y5, Y6, Z1, Z2, Z3, Z4, Z5, Z6, FromPercentage, ToPercentage;
                int i, n;
                string str_Result, str1;

                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();

                //Xsj(補)20120611:獲取當產Item_No，Stock_In_Date已實檢的Lot記錄(Insp_Length>0)
                var objs = from c in context.Fabric_Insp_Headers
                           where c.Item_No == this.ItemNo + this.ColorNo && c.Stock_In_Date == this.StockInDate && c.Insp_Length > 0
                           select c;

                ////Xsj(補)20120611:已實檢的子ID的理論長度集合
                #region
                //Xsj20120612:因修改長短碼而注釋掉以上代碼添加以下代碼
                var objs0 = from c in objs
                            where c.Actual_Length == 0
                            select c.Actual_Length;

                //var objs0 = from c in objs
                //            where c.Actual_Length == 0
                //            select c;



                #endregion

                //Xsj(補)20120611:已實檢的母ID的Lot記錄集合
                var objs01 = from c in objs
                             where c.Actual_Length != 0
                             select c;

                //Xsj:注意如下算法可能要更改
                //Xsj(補)20120611:已實檢的母ID的實際長度
                #region
                //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                //ActualLengthTotal = objs0.Sum() + objs01.Sum(aa => aa.Insp_Length) + objs01.Sum(aa => aa.PH_Sample);

                ActualLengthTotal = (objs0.Sum() ?? 0) + (objs01.Sum(aa => aa.Insp_Length) ?? 0) + (objs01.Sum(aa => aa.PH_Sample) ?? 0);

                //ActualLengthTotal = (objs0.Sum(aa => aa.Insp_Length) ?? 0) + (objs0.Sum(aa => aa.PH_Sample) ?? 0) + (objs01.Sum(aa => aa.Insp_Length) ?? 0) + (objs01.Sum(aa => aa.PH_Sample) ?? 0);
                #endregion

                //Xsj(補)20120611:已實檢
                if (ActualLengthTotal > 0)
                {
                    str_Result = "";
                    var objs1 = from c in objs
                                where (c.WeftYarnStatus == "") || (c.WeftYarnStatus == null) || (c.WeftYarnSolution1 == null) && (c.WeftYarnSolution2 == null)
                                      || (c.WeftYarnSolution1 == null && c.WeftYarnSolution2 == "") || (c.WeftYarnSolution1 == "" && c.WeftYarnSolution2 == null)
                                select c;
                    //Xsj（補）:	1. 當只要存在一个Status为空時
                    if (objs1.Count() != 0)
                    {
                        #region

                        ActualLengthSubTotal = 0;
                        FromPercentage = 0;
                        ToPercentage = 5;
                        i = 0;
                        var objs2 = from c in objs
                                    where (c.WeftYarnPercentage >= FromPercentage && c.WeftYarnPercentage <= ToPercentage) || (c.WeftYarnPercentage == null)
                                    select c;
                        //Xsj（補）:0-5%為第一組
                        if (objs2.Count() != 0)
                        {
                            decimal? X0 = 0;
                            //Xsj(補)20120611：通過遍列，獲取子ID的實檢數統計
                            foreach (var m in objs2)
                            {
                                decimal? ChildActualLength = 0;
                                //Xsj(補):母ID：00
                                if (m.Actual_Length != 0)
                                {
                                    string LotId13 = "";
                                    LotId13 = m.Lot_Id.Substring(0, 13);
                                    //Xsj(補)20120611:獲取當前母ID：00的所有子ID記錄集.
                                    var objs21 = from c in objs
                                                 where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                                 select c;
                                    if (objs21.Count() != 0)
                                        //Xsj(補):當前母ID：00的所有子ID的實檢數（Insp_Length+PH_Sample）合計
                                        ChildActualLength = objs21.Sum(aa => aa.Insp_Length) + objs21.Sum(aa => aa.PH_Sample);
                                    //Xsj(補):該值統計出的將是母ID的數據
                                    #region
                                    //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                                    X0 = X0 + m.Actual_Length - ChildActualLength;
                                    //X0 = X0 + m.Insp_Length + m.PH_Sample;
                                    #endregion
                                }
                                else
                                    X0 = X0 + m.Insp_Length + m.PH_Sample;

                            }

                            X1 = X0;
                            Y1 = objs2.Min(aa => aa.WeftYarnPercentage);
                            Z1 = objs2.Max(aa => aa.WeftYarnPercentage);
                            i = i + 1;
                            ActualLengthSubTotal = ActualLengthSubTotal + X1;
                            str1 = ((X1 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                            SysParamHelper sph = SysParamHelper.Instance;
                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                str_Result = str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y1 ?? 0).ToString("0.##"), (Z1 ?? 0).ToString("0.##"));

                            if (sph.LangID == "TH")
                                str_Result = str1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y1 ?? 0).ToString("0.##"), (Z1 ?? 0).ToString("0.##"));

                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                str_Result = str1 + string.Format("%Skewness point is:{0}~{1}% ; ", (Y1 ?? 0).ToString("0.##"), (Z1 ?? 0).ToString("0.##"));

                        }

                        n = 1;

                        //Xsj（補）:以3%遞增分組
                        while (ActualLengthSubTotal < ActualLengthTotal)
                        {
                            decimal? X0 = 0;
                            FromPercentage = ToPercentage;
                            ToPercentage = FromPercentage + 3 * n;
                            if (i == 5)
                            {
                                ToPercentage = 999;
                            }
                            n = n + 1;
                            var objs3 = from c in objs
                                        where c.WeftYarnPercentage > FromPercentage && c.WeftYarnPercentage <= ToPercentage
                                        select c;
                            if (objs3.Count() != 0)
                            {
                                foreach (var m in objs3)
                                {
                                    decimal? ChildActualLength = 0;
                                    if (m.Actual_Length != 0)
                                    {
                                        string LotId13 = "";
                                        LotId13 = m.Lot_Id.Substring(0, 13);
                                        var objs31 = from c in objs
                                                     where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                                     select c;
                                        if (objs31.Count() != 0)
                                            ChildActualLength = objs31.Sum(aa => aa.Insp_Length) + objs31.Sum(aa => aa.PH_Sample);
                                        #region
                                        //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                                        X0 = X0 + m.Actual_Length - ChildActualLength;
                                        //X0 = X0 + m.Insp_Length + m.PH_Sample;
                                        #endregion
                                    }
                                    else
                                        X0 = X0 + m.Insp_Length + m.PH_Sample;

                                }

                                i = i + 1;
                                switch (i)
                                {
                                    case 1:
                                        {
                                            X1 = X0;
                                            Y1 = objs3.Min(aa => aa.WeftYarnPercentage);
                                            Z1 = objs3.Max(aa => aa.WeftYarnPercentage);
                                            ActualLengthSubTotal = ActualLengthSubTotal + X1;
                                            str1 = ((X1 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                                            SysParamHelper sph = SysParamHelper.Instance;
                                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                                str_Result = str_Result + str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y1 ?? 0).ToString("0.##"), (Z1 ?? 0).ToString("0.##"));

                                            if (sph.LangID == "TH")
                                                str_Result = str_Result + str1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y1 ?? 0).ToString("0.##"), (Z1 ?? 0).ToString("0.##"));

                                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                                str_Result = str_Result + str1 + string.Format("%Skewness point is:{0}~{1}% ; ", (Y1 ?? 0).ToString("0.##"), (Z1 ?? 0).ToString("0.##"));


                                            break;
                                        }
                                    case 2:
                                        {
                                            X2 = X0;
                                            Y2 = objs3.Min(aa => aa.WeftYarnPercentage);
                                            Z2 = objs3.Max(aa => aa.WeftYarnPercentage);
                                            ActualLengthSubTotal = ActualLengthSubTotal + X2;
                                            str1 = ((X2 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                                            SysParamHelper sph = SysParamHelper.Instance;
                                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                                str_Result = str_Result + str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y2 ?? 0).ToString("0.##"), (Z2 ?? 0).ToString("0.##"));

                                            if (sph.LangID == "TH")
                                                str_Result = str_Result + str1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y2 ?? 0).ToString("0.##"), (Z2 ?? 0).ToString("0.##"));

                                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                                str_Result = str_Result + str1 + string.Format("%Skewness point is:{0}~{1}% ; ", (Y2 ?? 0).ToString("0.##"), (Z2 ?? 0).ToString("0.##"));

                                            break;
                                        }
                                    case 3:
                                        {
                                            X3 = X0;
                                            Y3 = objs3.Min(aa => aa.WeftYarnPercentage);
                                            Z3 = objs3.Max(aa => aa.WeftYarnPercentage);
                                            ActualLengthSubTotal = ActualLengthSubTotal + X3;
                                            str1 = ((X3 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                                            SysParamHelper sph = SysParamHelper.Instance;
                                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                                str_Result = str_Result + str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y3 ?? 0).ToString("0.##"), (Z3 ?? 0).ToString("0.##"));

                                            if (sph.LangID == "TH")
                                                str_Result = str_Result + str1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y3 ?? 0).ToString("0.##"), (Z3 ?? 0).ToString("0.##"));

                                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                                str_Result = str_Result + str1 + string.Format("%Skewness point is:{0}~{1}% ; ", (Y3 ?? 0).ToString("0.##"), (Z3 ?? 0).ToString("0.##"));


                                            break;
                                        }
                                    case 4:
                                        {
                                            X4 = X0;
                                            Y4 = objs3.Min(aa => aa.WeftYarnPercentage);
                                            Z4 = objs3.Max(aa => aa.WeftYarnPercentage);
                                            ActualLengthSubTotal = ActualLengthSubTotal + X4;
                                            str1 = ((X4 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                                            SysParamHelper sph = SysParamHelper.Instance;
                                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                                str_Result = str_Result + str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y4 ?? 0).ToString("0.##"), (Z4 ?? 0).ToString("0.##"));

                                            if (sph.LangID == "TH")
                                                str_Result = str_Result + str1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y4 ?? 0).ToString("0.##"), (Z4 ?? 0).ToString("0.##"));

                                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                                str_Result = str_Result + str1 + string.Format("%Skewness point is:{0}~{1}% ; ", (Y4 ?? 0).ToString("0.##"), (Z4 ?? 0).ToString("0.##"));

                                            break;
                                        }
                                    case 5:
                                        {
                                            X5 = X0;
                                            Y5 = objs3.Min(aa => aa.WeftYarnPercentage);
                                            Z5 = objs3.Max(aa => aa.WeftYarnPercentage);
                                            ActualLengthSubTotal = ActualLengthSubTotal + X5;
                                            str1 = ((X5 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                                            SysParamHelper sph = SysParamHelper.Instance;
                                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                                str_Result = str_Result + str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y5 ?? 0).ToString("0.##"), (Z5 ?? 0).ToString("0.##"));

                                            if (sph.LangID == "TH")
                                                str_Result = str_Result + str1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y5 ?? 0).ToString("0.##"), (Z5 ?? 0).ToString("0.##"));

                                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                                str_Result = str_Result + str1 + string.Format("%Skewness point is:{0}~{1}% ; ", (Y5 ?? 0).ToString("0.##"), (Z5 ?? 0).ToString("0.##"));

                                            break;
                                        }
                                    case 6:
                                        {
                                            X6 = X0;
                                            Y6 = objs3.Min(aa => aa.WeftYarnPercentage);
                                            Z6 = objs3.Max(aa => aa.WeftYarnPercentage);
                                            ActualLengthSubTotal = ActualLengthSubTotal + X6;
                                            str1 = ((X6 ?? 0) / (InspectionLength == 0 ? 1 : InspectionLength * 100)).ToString("n2");
                                            SysParamHelper sph = SysParamHelper.Instance;
                                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                                str_Result = str_Result + str1 + string.Format("%緯斜值為:{0}~{1}% ; ", (Y6 ?? 0).ToString("0.##"), (Z6 ?? 0).ToString("0.##"));

                                            if (sph.LangID == "TH")
                                                str_Result = str_Result + str1 + string.Format("ไม่ได้สัดส่วน:{0}~{1}% ; ", (Y6 ?? 0).ToString("0.##"), (Z6 ?? 0).ToString("0.##"));

                                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                                str_Result = str_Result + str1 + string.Format("%Skewness point is :{0}~{1}% ; ", (Y6 ?? 0).ToString("0.##"), (Z6 ?? 0).ToString("0.##"));

                                            break;
                                        }
                                }
                            }
                            //Xsj:以上邏輯出現死循環情況。為了解決死循環，添加以下代碼
                            else
                            {
                                break;
                            }
                        }
                        #endregion
                    }
                    //Xsj（補）:	2. 當所有Status都不为空時
                    else
                    {
                        #region

                        //   // WeftYarnStatus = OK
                        int sql = 0;
                        var objs4 = from c in objs
                                    where c.WeftYarnStatus == "1"
                                    group c by new { c.WeftYarnSolution1, c.WeftYarnSolution2 } into g
                                    select new { g.Key, X1 = g.Min(p => p.WeftYarnPercentage), Y1 = g.Max(p => p.WeftYarnPercentage) };
                        // Percentage = g.Sum(p => p.Actual_Length) / InspectionLength * 100,

                        if (objs4.Count() != 0)
                        {
                            #region

                            sql = sql + 1;
                            str_Result = str_Result + "(" + sql.ToString() + "). ";
                            foreach (var m in objs4)
                            {
                                string A1 = "";
                                decimal? X0 = 0;
                                decimal? Percentage = 0;
                                var objs41 = from c in objs
                                             where c.WeftYarnStatus == "1" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2
                                             select c;
                                foreach (var m1 in objs41)
                                {
                                    if (m1.Actual_Length != 0)
                                    {
                                        string LotId13 = "";
                                        decimal? ChildActualLength = 0;
                                        LotId13 = m1.Lot_Id.Substring(0, 13);
                                        var objs42 = from c in objs
                                                     where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                                     select c;
                                        if (objs42.Count() != 0)
                                            ChildActualLength = objs42.Sum(aa => aa.Insp_Length) + objs42.Sum(aa => aa.PH_Sample);
                                        #region
                                        //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                                        X0 = X0 + m1.Actual_Length - ChildActualLength;
                                        //X0 = X0 + m1.Insp_Length + m1.PH_Sample;
                                        #endregion
                                    }
                                    else
                                        X0 = X0 + m1.Insp_Length + m1.PH_Sample;

                                }
                                Percentage = X0 / InspectionLength * 100;
                                A1 = (Percentage ?? 0).ToString("0.##");
                                if (A1 != "")
                                {
                                    PH.FabricInspection.BO.FabricInspectionDataContext smd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    
                                    SysParamHelper sph = SysParamHelper.Instance;
                                    if (sph.LangID == "TW" || sph.LangID == "CN")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.Parameter_Desc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.Parameter_Desc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%緯斜值為:{0}~{1}% ", (m.X1 ?? 0).ToString("#.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "; ";
                                    }
                                    if (sph.LangID == "TH")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ", (m.X1 ?? 0).ToString("#.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "; ";
                                    }
                                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%Skewness point is :{0}~{1}% ", (m.X1 ?? 0).ToString("#.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "; ";
                                    }
                                }
                            }

                            #endregion

                        }


                        //--------------------------------------------
                        // WeftYarnStatus = Deduct
                        decimal? RejectActual_Length = 0;
                        var objs54 = from c in objs where c.WeftYarnStatus == "3" select c.Actual_Length;
                        if (objs54.Count() != 0) RejectActual_Length = objs54.Sum();

                        var objs5 = from c in objs
                                    where c.WeftYarnStatus == "2"
                                    group c by new { c.WeftYarnSolution1, c.WeftYarnSolution2 } into g
                                    select new { g.Key, X1 = g.Min(p => p.WeftYarnPercentage), Y1 = g.Max(p => p.WeftYarnPercentage) };

                        if (objs5.Count() != 0)
                        {

                            if (str_Result != "") str_Result = str_Result + "\n";
                            sql = sql + 1;
                            str_Result = str_Result + "(" + sql.ToString() + "). ";
                            foreach (var m in objs5)
                            {
                                #region
                                string A1 = "";
                                decimal? X0 = 0;
                                decimal? Percentage = 0;
                                var objs41 = from c in objs
                                             where c.WeftYarnStatus == "2" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2
                                             select c;
                                foreach (var m1 in objs41)
                                {
                                    if (m1.Actual_Length != 0)
                                    {
                                        string LotId13 = "";
                                        decimal? ChildActualLength = 0;
                                        LotId13 = m1.Lot_Id.Substring(0, 13);
                                        var objs42 = from c in objs
                                                     where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                                     select c;
                                        if (objs42.Count() != 0)
                                        {
                                            ChildActualLength = objs42.Sum(aa => aa.Insp_Length + aa.PH_Sample);
                                            //ChildDeduct = objs42.Sum(aa => (aa.Insp_Length + aa.PH_Sample) * aa.WeftYarnWastage);
                                        }
                                        #region
                                        //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                                        X0 = X0 + m1.Actual_Length - ChildActualLength;
                                        //X0 = X0 + m1.Insp_Length + m1.PH_Sample;
                                        #endregion
                                    }
                                    else
                                        X0 = X0 + m1.Insp_Length + m1.PH_Sample;

                                }
                                Percentage = X0 / InspectionLength * 100;
                                A1 = (Percentage ?? 0).ToString("0.##");
                                if (A1 != "")
                                {
                                    #region

                                    PH.FabricInspection.BO.FabricInspectionDataContext smd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    
                                    var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.Parameter_Desc).FirstOrDefault();
                                    var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.Parameter_Desc).FirstOrDefault();

                                    SysParamHelper sph = SysParamHelper.Instance;

                                    if (sph.LangID == "TH")
                                    {
                                        Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                    }
                                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    {
                                        Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                    }
                                    //1. WeftYarnWastage 

                                    var objs51 = from c in objs
                                                 where c.WeftYarnStatus == "2" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2
                                                 group c by new { c.WeftYarnWastage } into h
                                                 select new { h.Key };
                                    string WeftYarnWastageString = "";

                                    if (objs51.Count() == 1)
                                    {
                                        foreach (var WeftYarnWastageValues in objs51)
                                        {
                                            WeftYarnWastageString = "(" + (WeftYarnWastageValues.Key.WeftYarnWastage ?? 0).ToString("0.##") + "%)";
                                        }
                                    }

                                    //2. 求出根據CAD排麥所超用量的值 :
                                    // 根據CAD排麥所超用量的值的計算公式: 
                                    //{sum[(每個母ID# Actual_Length - 對應分ID# (Insp_Length + PH_Sample)) * 母ID# WeftYarnWastage )] /sum(被檢測且非退料ID# ActualLength) 
                                    //+ sum[分ID#(Insp_Length + PH_Sample) * 分ID# WeftYarnWastate]/sum(被檢測且非退料ID# ActualLength)} 
                                    //*  該水回料且非退料的回料總數

                                    // 存在母ID扣數的計算
                                    var objs52 = from c in objs
                                                 where c.WeftYarnStatus == "2" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2 && c.Actual_Length != 0
                                                 select new { c.Lot_Id, c.Actual_Length, c.WeftYarnWastage };
                                    decimal? CadDeduct = 0;
                                    if (objs52.Count() != 0)
                                    {
                                        foreach (var m1 in objs52)
                                        {
                                            string LotId13 = "";
                                            decimal? ParentDeduct = 0;
                                            decimal? ChildInsp_Length = 0;
                                            decimal? ChildPH_Sample = 0;
                                            LotId13 = m1.Lot_Id.Substring(0, 13);
                                            var objs53 = from c in objs
                                                         where c.Actual_Length == 0 && c.Lot_Id.Substring(0, 13) == LotId13
                                                         select new { c.Insp_Length, c.PH_Sample, c.WeftYarnWastage };
                                            if (objs53.Count() != 0)
                                            {
                                                ChildInsp_Length = objs53.Sum(aa => aa.Insp_Length);
                                                ChildPH_Sample = objs53.Sum(aa => aa.PH_Sample);
                                            }
                                            ParentDeduct = (m1.Actual_Length - ChildInsp_Length - ChildPH_Sample) * m1.WeftYarnWastage / 100 / (InspectionLength - ReturnQty);
                                            CadDeduct = CadDeduct + ParentDeduct;
                                        }

                                    }
                                    //不存在母ID扣數的計算
                                    var objs56 = from c in objs
                                                 where c.WeftYarnStatus == "2" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2 && c.Actual_Length == 0
                                                 select new { c.Lot_Id, c.Insp_Length, c.PH_Sample, c.WeftYarnWastage };

                                    if (objs56.Count() != 0)
                                    {
                                        decimal? ChildDeduct = 0;
                                        ChildDeduct = objs56.Sum(aa => (aa.Insp_Length + aa.PH_Sample) * aa.WeftYarnWastage / 100) / (InspectionLength - ReturnQty);
                                        CadDeduct = CadDeduct + ChildDeduct;
                                    }

                                    CadDeduct = CadDeduct * (ReceiveLength - ReturnQty);
                                    string CadDeductString = "";
                                    CadDeductString = (CadDeduct ?? 0).ToString("0.##");
                                    //SysParamHelper sph = SysParamHelper.Instance;
                                    if (sph.LangID == "TW" || sph.LangID == "CN")
                                        str_Result = str_Result + A1 + string.Format("%緯斜值為:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "根據CAD排麥所超用量為" + CadDeductString + WeftYarnWastageString + "; ";

                                    if (sph.LangID == "TH")
                                        str_Result = str_Result + A1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "ตามที่ CAD แจ้ง" + CadDeductString + WeftYarnWastageString + "; ";

                                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                        str_Result = str_Result + A1 + string.Format("%Skewness point is :{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "According to CAD" + CadDeductString + WeftYarnWastageString + "; ";

                                    #endregion
                                }

                                #endregion
                            }
                        }


                        //-------------------------------------------
                        //   // WeftYarnStatus = Reject

                        var objs6 = from c in objs
                                    where c.WeftYarnStatus == "3"
                                    group c by new { c.WeftYarnSolution1, c.WeftYarnSolution2 } into g
                                    select new { g.Key, Percentage = g.Sum(p => p.Actual_Length) / InspectionLength * 100, X1 = g.Min(p => p.WeftYarnPercentage), Y1 = g.Max(p => p.WeftYarnPercentage) };

                        if (objs6.Count() != 0)
                        {
                            #region

                            if (str_Result != "") str_Result = str_Result + "\n";
                            sql = sql + 1;
                            str_Result = str_Result + "(" + sql.ToString() + "). ";
                            foreach (var m in objs6)
                            {
                                string A1 = "";
                                decimal? X0 = 0;
                                decimal? Percentage = 0;
                                var objs41 = from c in objs
                                             where c.WeftYarnStatus == "3" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2
                                             select c;
                                foreach (var m1 in objs41)
                                {
                                    if (m1.Actual_Length != 0)
                                    {
                                        string LotId13 = "";
                                        decimal? ChildActualLength = 0;
                                        LotId13 = m1.Lot_Id.Substring(0, 13);
                                        var objs42 = from c in objs
                                                     where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                                     select c;
                                        if (objs42.Count() != 0)
                                            ChildActualLength = objs42.Sum(aa => aa.Insp_Length) + objs42.Sum(aa => aa.PH_Sample);
                                        #region
                                        //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                                        X0 = X0 + m1.Actual_Length - ChildActualLength;
                                        //X0 = X0 + m1.Insp_Length + m1.PH_Sample;
                                        #endregion
                                    }
                                    else
                                        X0 = X0 + m1.Insp_Length + m1.PH_Sample;

                                }
                                Percentage = X0 / InspectionLength * 100;
                                A1 = (Percentage ?? 0).ToString("0.##");
                                if (A1 != "")
                                {
                                    PH.FabricInspection.BO.FabricInspectionDataContext smd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    
                                    SysParamHelper sph = SysParamHelper.Instance;
                                    if (sph.LangID == "TW" || sph.LangID == "CN")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.Parameter_Desc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.Parameter_Desc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%緯斜值為:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "; ";
                                    }

                                    if (sph.LangID == "TH")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "; ";
                                    }

                                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%Skewness point is:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "; ";
                                    }
                                }
                            }

                            #endregion
                        }
                        //-------------------------------------------
                        //   // WeftYarnStatus = No Weft Yarn

                        var objs7 = from c in objs
                                    where c.WeftYarnStatus == "0"
                                    group c by new { c.WeftYarnSolution1, c.WeftYarnSolution2 } into g
                                    select new { g.Key, Percentage = g.Sum(p => p.Actual_Length) / InspectionLength * 100, X1 = g.Min(p => p.WeftYarnPercentage), Y1 = g.Max(p => p.WeftYarnPercentage) };

                        if (objs7.Count() != 0)
                        {
                            #region

                            if (str_Result != "") str_Result = str_Result + "\n";
                            sql = sql + 1;
                            str_Result = str_Result + "(" + sql.ToString() + "). ";
                            foreach (var m in objs7)
                            {
                                string A1 = "";
                                decimal? X0 = 0;
                                decimal? Percentage = 0;
                                var objs41 = from c in objs
                                             where c.WeftYarnStatus == "0" && c.WeftYarnSolution1 == m.Key.WeftYarnSolution1 && c.WeftYarnSolution2 == m.Key.WeftYarnSolution2
                                             select c;
                                foreach (var m1 in objs41)
                                {
                                    if (m1.Actual_Length != 0)
                                    {
                                        string LotId13 = "";
                                        decimal? ChildActualLength = 0;
                                        LotId13 = m1.Lot_Id.Substring(0, 13);
                                        var objs42 = from c in objs
                                                     where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                                     select c;
                                        if (objs42.Count() != 0)
                                            ChildActualLength = objs42.Sum(aa => aa.Insp_Length) + objs42.Sum(aa => aa.PH_Sample);


                                        #region
                                        //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                                        X0 = X0 + m1.Actual_Length - ChildActualLength;
                                        //X0 = X0 + m1.Insp_Length + m1.PH_Sample;
                                        #endregion
                                    }
                                    else
                                        X0 = X0 + m1.Insp_Length + m1.PH_Sample;

                                }
                                Percentage = X0 / InspectionLength * 100;
                                A1 = (Percentage ?? 0).ToString("0.##");
                                if (A1 != "")
                                {
                                    PH.FabricInspection.BO.FabricInspectionDataContext smd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();   
                                    SysParamHelper sph = SysParamHelper.Instance;
                                    if (sph.LangID == "TW" || sph.LangID == "CN")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.Parameter_Desc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.Parameter_Desc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%緯斜值為:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "No Weft Yarn; ";
                                    }

                                    if (sph.LangID == "TH")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterThaiDesc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%ไม่ได้สัดส่วน:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "No Weft Yarn; ";
                                    }

                                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    {
                                        var Solution1 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution1).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        var Solution2 = smd.Fabric_Sys_Parameters.Where(P => P.Parameter_Type == "SDPS" && P.Parameter_Key == m.Key.WeftYarnSolution2).Select(S => S.ParameterEnglishDesc).FirstOrDefault();
                                        str_Result = str_Result + A1 + string.Format("%Skewness point is:{0}~{1}% ", (m.X1 ?? 0).ToString("0.##"), (m.Y1 ?? 0).ToString("0.##")) + Solution1 + Solution2 + "No Weft Yarn; ";
                                    }
                                }
                            }

                            #endregion
                        }

                        #endregion
                    }
                }
                else
                {
                    str_Result = "";
                }

                return str_Result;
            }

        }

        //sharly 20100527 END
        public string ActualUsablewidthStatus
        { get; set; }

        public string ActualWeightStatus
        { get; set; }
    }


    class MouldTrialAndColorAndWeftYarnInfo
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

        private string _WeftYarnPercentage;
        /// <summary>
        /// </summary>
        public string WeftYarnPercentage
        {
            get
            {
                return _WeftYarnPercentage;
            }
            set
            {
                _WeftYarnPercentage = value;
            }
        }

        private string _WeftYarnSolution1;
        /// <summary>
        /// </summary>
        public string WeftYarnSolution1
        {
            get
            {
                return _WeftYarnSolution1;
            }
            set
            {
                _WeftYarnSolution1 = value;
            }
        }

        private string _WeftYarnSolution2;
        /// <summary>
        /// </summary>
        public string WeftYarnSolution2
        {
            get
            {
                return _WeftYarnSolution2;
            }
            set
            {
                _WeftYarnSolution2 = value;
            }
        }

      


    }

}
