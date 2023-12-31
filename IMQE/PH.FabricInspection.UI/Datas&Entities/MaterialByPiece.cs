using System;
using System.Collections.Generic;
using System.Text;
using System.Globalization;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    class MaterialByPiece
    {
        public MaterialByPiece()
        {
            RN_number = 0;
            Insp_Result = "0";

            this.SpreadDefectDetailItems = new List<SpreadDefectInfoForReportByPiece>();


            this.PartyDefectDetailItems = new List<PartDefectInfoForReportByPiece>();


            this.WidthDetailItems = new List<WidthDetailForReportPiece>();

            this.StrWidthDetailItems = new List<StrWidthDetailForReportPiece>();

            this.PhoteItems = new List<Fabric_Insp_Picture>();

            this.TwoColumnsWidthDetailItems = new List<TwoColumnsWidthDetailForReportPiece>();

        }



        #region field defines

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

        private string _record_status;

        /// <summary>
        /// Record_Status	Varchar	2	Record status (RC'=ACTIVE,'RZ'=DELETE)
        /// </summary>
        public string Record_Status
        {
            get
            {
                return _record_status;
            }
            set
            {
                //if (value.Length > 2) {
                //    throw new Exception("the value's length must be shorter than 2");
                //}
                _record_status = value;
                //this.OnPropertyChanged("Record_Status");
            }
        }


        /// <summary>
        /// Record_Status	Varchar	2	Record status (RC'=ACTIVE,'RZ'=DELETE)
        /// </summary>
        public string Record_Status_Desc
        {
            get
            {
                if ((_record_status != null) && (_record_status.Trim().ToUpper() == "RZ"))
                {
                    return "Inactive";
                }
                else
                {
                    return "Active";
                }
            }
        }

        private string _company;

        /// <summary>
        /// Company	varchar	2	Company Code
        /// </summary>
        public string Company
        {
            get
            {
                return _company;
            }
            set
            {
                _company = value;
                //this.OnPropertyChanged("Company");
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


        private int _system_install_no;
        /// <summary>
        /// System_Install_No	int	9(0)	System Install No
        /// </summary>
        public int System_Install_No
        {
            get
            {
                return _system_install_no;
            }
            set
            {
                _system_install_no = value;
                //this.OnPropertyChanged("System_Install_No");
            }
        }

        private string _item_no;
        /// <summary>
        /// Item_No	varchar	15	Item code
        /// </summary>
        public string Item_No
        {
            get
            {
                return _item_no;
            }
            set
            {
                _item_no = value;
                //this.OnPropertyChanged("Item_No");
            }
        }

        private string _Supplier_Item_No;
        /// <summary>
        /// Item_No	varchar	15	Supplier_Item_No
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
                //this.OnPropertyChanged("Supplier_Item_No");
            }
        }

        private string _SupplierItemColor;
        /// <summary>
        /// Item_No	varchar	15	SupplierItemColor
        /// </summary>
        public string SupplierItemColor
        {
            get
            {
                return _SupplierItemColor;
            }
            set
            {
                _SupplierItemColor = value;
                //this.OnPropertyChanged("SupplierItemColor");
            }
        }

        private string _item_Desc;
        /// <summary>
        /// Item_Desc	varchar	36	Item Desc
        /// </summary>
        public string Item_Desc
        {
            get
            {
                return _item_Desc;
            }
            set
            {
                _item_Desc = value;
                //this.OnPropertyChanged("Item_Desc");
            }
        }


        private string _lot_id;
        /// <summary>
        /// Lot_Id	varchar	15	Lot id
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
                    return DateTimeUtil.StringToDateTime(Stock_In_Date, "yyMMdd");
                }
                catch
                {
                    return DateTime.Now;
                }

            }
        }

        private string _colorNo;
        /// <summary>
        /// 色號  B: SUBSTR((ITEM_NO),10,3)
        /// </summary>
        public string ColorNo
        {
            get { return _colorNo; }
            set { _colorNo = value; }
        }

        private string _receiveDate;
        /// <summary>
        /// 收貨日期 C: STOCK IN DATE
        /// </summary>
        public string ReceiveDate
        {
            get { return _receiveDate; }
            set { _receiveDate = value; }
        }

        private string _iqc_reference;
        /// <summary>
        /// IQC_Reference	varchar	      6	IQC reference
        /// </summary>
        public string IQC_Reference
        {
            get
            {
                return _iqc_reference;
            }
            set
            {
                _iqc_reference = value;
            }
        }

        private decimal _actual_length;
        /// <summary>
        /// Actual_Length	decimal	11(4)	Supplier length
        /// </summary>
        public decimal Actual_Length
        {
            get
            {
                return _actual_length;
            }
            set
            {
                _actual_length = value;
                //this.OnPropertyChanged("Actual_Length");
            }
        }

        private decimal _actual_weight;
        /// <summary>
        /// Actual_Weight	decimal	11(4)	Actual_Weight
        /// </summary>
        public decimal Actual_Weight
        {
            get
            {
                return _actual_weight;
            }
            set
            {
                _actual_weight = value;
                //this.OnPropertyChanged("Actual_Weight");
            }
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

        private decimal _insp_length;
        /// <summary>
        /// Insp_Length	decimal	11(4)	Insp length
        /// </summary>
        public decimal Insp_Length
        {
            get
            {
                return _insp_length;
            }
            set
            {
                _insp_length = value;
                //this.OnPropertyChanged("Insp_Length");
            }
        }

        private decimal _GM_SQM;
        /// <summary>
        /// GM_SQM	decimal	11(4)	GM/SQM  (平方克重)
        /// </summary>
        public decimal GM_SQM
        {
            get
            {
                return _GM_SQM;
            }
            set
            {
                _GM_SQM = value;
                //this.OnPropertyChanged("GM_SQM");
            }
        }

        private decimal _usable_width;

        public decimal Usable_Width
        {
            get
            {
                return _usable_width;
            }
            set
            {
                _usable_width = value;
                //this.OnPropertyChanged("Usable_Width");
            }
        }

        private string _supplich_batch;
        /// <summary>
        /// Supplich_Batch	varchar	15	Supplier Batch
        /// </summary>
        public string Supplich_Batch
        {
            get
            {
                return _supplich_batch;
            }
            set
            {
                _supplich_batch = value;
                //this.OnPropertyChanged("Supplich_Batch");
            }
        }

        private string _roll_no;
        /// <summary>
        /// Roll_No	varchar	10	Roll No
        /// </summary>
        public string Roll_No
        {
            get
            {
                return _roll_no;
            }
            set
            {
                _roll_no = value;
                //this.OnPropertyChanged("Roll_No");
            }
        }

        private int _total_points;
        /// <summary>
        /// Total_Points	int	7	Total Points (總罰分)
        /// </summary>
        public int Total_Points
        {
            get
            {
                return _total_points;
            }
            set
            {
                _total_points = value;
                //this.OnPropertyChanged("Total_Points");
            }
        }

        private decimal _points_hundred_sqm;
        /// <summary>
        /// points_ hundred_sqm	decimal	11(4)	Points /100m2 (平均罰分)
        /// </summary>
        public decimal Points_Hundred_SQM
        {
            get
            {
                return _points_hundred_sqm;
            }
            set
            {
                _points_hundred_sqm = value;
                //this.OnPropertyChanged("points_ hundred_sqm");
            }
        }


        private decimal _deductive_qty;
        /// <summary>
        /// Deductive_Qty	decimal	11(4)	deductive Qty(扣碼)
        /// </summary>
        public decimal Deductive_Qty
        {
            get
            {
                return _deductive_qty;
            }
            set
            {
                _deductive_qty = value;
                //this.OnPropertyChanged("Deductive_Qty");
            }
        }

        private decimal _wastage;
        /// <summary>
        /// Wastage	decimal	11(4)	Wastage(損耗率)
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
                //this.OnPropertyChanged("Wastage");
            }
        }

        private string _WaftYarnClass;
        /// <summary>
        /// 
        /// </summary>
        public string WaftYarnClass
        {
            get
            {
                return _WaftYarnClass;
            }
            set
            {
                _WaftYarnClass = value;
                //this.OnPropertyChanged("WaftYarnClass");
            }
        }
        private string _WaftYarnClassName;
        public string WaftYarnClassName
        {
            get
            { 
                    return _WaftYarnClassName;
            }
            set
            {
                _WaftYarnClassName = value;

            }
        }


        private decimal? _WaftYarnPercentage;
        /// <summary>
        /// 
        /// </summary>
        public decimal? WaftYarnPercentage
        {
            get
            {
                return _WaftYarnPercentage;
            }
            set
            {
                _WaftYarnPercentage = value;
                //this.OnPropertyChanged("WaftYarnPercentage");
            }
        }

        private string _insp_result;
        /// <summary>
        /// Insp_Result	varchar	    1	Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Insp_Result
        {
            get
            {
                return _insp_result;
            }
            set
            {
                _insp_result = value;
                //this.OnPropertyChanged("Insp_Result");
            }
        }


        /// <summary>
        /// Insp_Result	varchar	    1	Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Insp_Result_Desc
        {
            get
            {
                if (this._insp_result == "1")
                {
                    return RecordStatus.OK_DESCRIPTION;
                }
                else if (this._insp_result == "2")
                {
                    return RecordStatus.DEDUCTIVE_DESCRIPTION;
                }
                else if (this._insp_result == "3")
                {
                    return RecordStatus.REJECT_DESCRIPTION;
                }
                else
                {
                    return "";
                }

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
                return _party_insp_result;
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
                return _spread_insp_result;
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
        /// WeftYarnStatus varchar	    1	WeftYarnStatus ‘1’= OK, ‘2’= Deductive,’3’=Reject
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
                //this.OnPropertyChanged("WeftYarnStatus");
            }
        }

        /// <summary>
        /// WeftYarnStatus	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
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
                return _mould_trial_result;
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


        private string _spread_defect_exist;
        /// <summary>
        /// Spread_Defect_Exist	varchar	    1	spread defect 'Y'= Exist Spread defect, 'N'= Inexistence Spread defect
        /// </summary>
        public string Spread_Defect_Exist
        {
            get
            {
                return _spread_defect_exist;
            }
            set
            {
                _spread_defect_exist = value;
                //this.OnPropertyChanged("Spread_Defect_Exist");
            }
        }


        private string _insp_confirm;
        /// <summary>
        /// Insp_Confirm	varchar	    1	'Y'= CONFIRM , 'N'= NO CONFIRM
        /// </summary>
        public string Insp_Confirm
        {
            get
            {
                return _insp_confirm;
            }
            set
            {
                _insp_confirm = value;
                //this.OnPropertyChanged("Insp_Confirm");
            }
        }

        private int _RN_number;
        /// <summary>
        /// RN_number	int	9(0)	RN Number
        /// </summary>
        public int RN_number
        {
            get
            {
                return _RN_number;
            }
            set
            {
                _RN_number = value;
                //this.OnPropertyChanged("RN_number");
            }
        }

        private decimal _PH_Sample;
        /// <summary>
        /// PH_Sample	float	PH_Sample
        /// </summary>
        public decimal PH_Sample
        {
            get
            {
                return _PH_Sample;
            }
            set
            {
                _PH_Sample = value;
                //this.OnPropertyChanged("PH_Sample");
            }
        }

        private decimal _ActualMeasureLength;
        /// <summary>
      
        /// </summary>
        public decimal ActualMeasureLength
        {
            get
            {
                return _ActualMeasureLength;
            }
            set
            {
                _ActualMeasureLength = value;
                //this.OnPropertyChanged("ActualMeasureLength");
            }
        }

        private decimal _Panel_Size1;
        /// <summary>
        /// Panel_Size1	float	Panel_Size1
        /// </summary>
        public decimal Panel_Size1
        {
            get
            {
                return _Panel_Size1;
            }
            set
            {
                _Panel_Size1 = value;
                //this.OnPropertyChanged("Panel_Size1");
            }
        }

        private decimal _Panel_Size2;
        /// <summary>
        /// Panel_Size2	float	Panel_Size2
        /// </summary>
        public decimal Panel_Size2
        {
            get
            {
                return _Panel_Size2;
            }
            set
            {
                _Panel_Size2 = value;
                //this.OnPropertyChanged("Panel_Size2");
            }
        }

        private decimal _special_marker;

        public decimal Special_Marker
        {
            get
            {
                return _special_marker;
            }
            set
            {
                _special_marker = value;
                //this.OnPropertyChanged("Special_Marker");
            }
        }

        private string _mould_Trial_Remark;
        /// <summary>
        /// Mould trial的說明
        /// </summary>
        public string Mould_Trial_Remark
        {
            get
            {
                return _mould_Trial_Remark;
            }
            set
            {
                _mould_Trial_Remark = value;
                //this.OnPropertyChanged("Mould_Trial_Remark");
            }
        }

        /// <summary>
        /// Stock_In_Date
        /// </summary>
        public string Stock_In_Date
        {
            get
            {
                if (Lot_Id != null)
                {
                    return Lot_Id.Substring(0, 6);
                }
                return "";
            }
        }

        private int _turn_Size;
        /// <summary>
        /// 每Turn_Size大小的布检测一次
        /// </summary>
        public int Turn_Size
        {
            get
            {
                return _turn_Size;
            }
            set
            {
                _turn_Size = value;
                //this.OnPropertyChanged("Turn_Size");
            }
        }

        private string _supplier_Length_Unit;
        /// <summary>
        /// Supplier Length's Unti
        /// </summary>
        public string Supplier_Length_Unit
        {
            get
            {
                return _supplier_Length_Unit;
            }
            set
            {
                _supplier_Length_Unit = value;
                //this.OnPropertyChanged("Supplier_Length_Unit");
            }
        }

        private string _supplier_Width_Unit;
        /// <summary>
        /// Supplier Width Unit
        /// </summary>
        public string Supplier_Width_Unit
        {
            get
            {
                return _supplier_Width_Unit;
            }
            set
            {
                _supplier_Width_Unit = value;
                //this.OnPropertyChanged("Supplier_Width_Unit");
            }
        }

        private string _inspector;
        /// <summary>
        /// Inspector	varchar	   10	Inspector
        /// </summary>
        public string Inspector
        {
            get
            {
                return _inspector;
            }
            set
            {
                _inspector = value;
                //this.OnPropertyChanged("Inspector");
            }
        }

        private string _create_user;
        /// <summary>
        /// Create_User	varchar	   10	Create user
        /// </summary>
        public string Create_User
        {
            get
            {
                return _create_user;
            }
            set
            {
                _create_user = value;
                //this.OnPropertyChanged("Create_User");
            }
        }


        private DateTime _create_date;
        /// <summary>
        /// Create_Date	dateTime	8(0)	CREATE DATE and Create Time
        /// </summary>
        public DateTime Create_Date
        {
            get
            {
                return _create_date;
            }
            set
            {
                _create_date = value;
                //this.OnPropertyChanged("Create_Date");
            }
        }



        private string _change_user;
        /// <summary>
        /// Change_User	varchar	   10	change user
        /// </summary>
        public string Change_User
        {
            get
            {
                return _change_user;
            }
            set
            {
                _change_user = value;
                //this.OnPropertyChanged("Change_User");
            }
        }


        private DateTime _change_date;
        /// <summary>
        /// Change_Date	dateTime	8(0)	change DATE and change Time
        /// </summary>
        public DateTime Change_Date
        {
            get
            {
                return _change_date;
            }
            set
            {
                _change_date = value;
                //this.OnPropertyChanged("Change_Date");
            }
        }


        private string _use_status;
        /// <summary>
        /// Use_Status	varchar	    1	In used status (1= used, blank =no used)
        /// </summary>
        public string Use_Status
        {
            get
            {
                return _use_status;
            }
            set
            {
                _use_status = value;
                //this.OnPropertyChanged("Use_Status");
            }
        }

        #endregion

        #region details SpreadDefectDetail process
        private List<SpreadDefectInfoForReportByPiece> _SpreadDefectDetailItems;

        public List<SpreadDefectInfoForReportByPiece> SpreadDefectDetailItems
        {
            get
            {

                return _SpreadDefectDetailItems;
            }
            set
            {
                _SpreadDefectDetailItems = value;
                ////this.OnPropertyChanged("Childs");
            }
        }


        #endregion


        #region details PartyDefectDetail process
        private List<PartDefectInfoForReportByPiece> _PartyDefectDetailItems;

        public List<PartDefectInfoForReportByPiece> PartyDefectDetailItems
        {
            get
            {

                return _PartyDefectDetailItems;
            }
            set
            {
                _PartyDefectDetailItems = value;
                ////this.OnPropertyChanged("Childs");
            }
        }



        #endregion


        #region details WidthDetail process
        private List<WidthDetailForReportPiece> _WidthDetailItems;

        public List<WidthDetailForReportPiece> WidthDetailItems
        {
            get
            {

                return _WidthDetailItems;
            }
            set
            {
                _WidthDetailItems = value;
                //this.OnPropertyChanged("Childs");
            }
        }



        #endregion

        #region details WidthDetail process
        private List<TwoColumnsWidthDetailForReportPiece> _TwoColumnsWidthDetailItems;

        public List<TwoColumnsWidthDetailForReportPiece> TwoColumnsWidthDetailItems
        {
            get
            {

                return _TwoColumnsWidthDetailItems;
            }
            set
            {
                _TwoColumnsWidthDetailItems = value;
                //this.OnPropertyChanged("Childs");
            }
        }



        #endregion

        #region details WidthDetail process
        private List<StrWidthDetailForReportPiece> _strWidthDetailItems;

        public List<StrWidthDetailForReportPiece> StrWidthDetailItems
        {
            get
            {

                return _strWidthDetailItems;
            }
            set
            {
                _strWidthDetailItems = value;
                //this.OnPropertyChanged("Childs");
            }
        }



        #endregion

        #region details Phote process
        private List<Fabric_Insp_Picture> _PhoteItems;

        public List<Fabric_Insp_Picture> PhoteItems
        {
            get
            {
                return _PhoteItems;
            }
            set
            {
                _PhoteItems = value;
                ////this.OnPropertyChanged("Childs");
            }
        }

        public string Width_Detail_String
        {
            get
            {
                if (_WidthDetailItems == null)
                {
                    return "";
                }
                else
                {
                    string widthString = "";
                    int i = 1;
                    bool isFirstTime = true;
                    foreach (WidthDetailForReportPiece widthDetail in _WidthDetailItems)
                    {
                        if (i != 1)
                        {
                            widthString = widthString + "," + widthDetail.Usable_Width+"("+widthDetail.Detect_Turn_No+")";
                        }
                        else
                        {
                            if (!isFirstTime)
                            {
                                widthString = widthString + "\n" + widthDetail.Usable_Width + "(" + widthDetail.Detect_Turn_No + ")";
                            }
                            else
                            {
                                widthString = widthDetail.Usable_Width + "(" + widthDetail.Detect_Turn_No + ")";
                            }
                        }
                        isFirstTime = false;
                        i++;
                        if (i == 6)
                        {
                            i = 0;
                        }
                    }
                    return widthString;
                }
            }

        }

        #endregion
    }

    

}
