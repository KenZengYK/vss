using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.BackEnd

{
    class RNHeaderByReport
    {
        public const string MAJOR_PROBLEM1_CHECKED_VALUE = "Defects";
        public const string MAJOR_PROBLEM2_CHECKED_VALUE = "Shading";
        public const string MAJOR_PROBLEM3_CHECKED_VALUE = "Short length";
        public const string MAJOR_PROBLEM4_CHECKED_VALUE = "Narrow width";
        public const string MAJOR_PROBLEM5_CHECKED_VALUE = "Finishing";
        public const string MAJOR_PROBLEM6_CHECKED_VALUE = "Off color";
        public const string MAJOR_PROBLEM7_CHECKED_VALUE = "Others";
        public const string UNCHECKED_VALUE = "";


        public RNHeaderByReport()
        {
            Major_Problem1_Checked = false;
            Major_Problem2_Checked = false;
            Major_Problem3_Checked = false;
            Major_Problem4_Checked = false;
            Major_Problem5_Checked = false;
            Major_Problem6_Checked = false;
            Major_Problem7_Checked = false;

            QC_Summary = "";
            this.RNDetailItems = new List<RNDetailByReport>();
        }

        #region header field defines
        private string _record_status;
        /// <summary>
        /// Record_Status	varchar	2	Record_Status
        /// </summary>
        public string Record_Status
        {
            get
            {
                return _record_status;
            }
            set
            {
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
        /// Company	varchar	2	Company
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

        private string _supplierName;
        /// <summary>
        /// A:Supplier Name
        /// </summary>
        public string SupplierName
        {
            get { return _supplierName; }
            set { _supplierName = value; }
        }

        private string _new_supplierName;
        /// <summary>
        /// A:Supplier Name
        /// </summary>
        public string NewSupplierName
        {
            get { return _new_supplierName; }
            set { _new_supplierName = value; }
        }

        private string _Supplier_Material_Code;
        /// <summary>
        /// A:Supplier Name
        /// </summary>
        public string SupplierMaterialCode
        {
            get { return _Supplier_Material_Code; }
            set { _Supplier_Material_Code = value; }
        }

        private string _Supplier_Color;
        /// <summary>
        /// A:Supplier Name
        /// </summary>
        public string SupplierColor
        {
            get { return _Supplier_Color; }
            set { _Supplier_Color = value; }
        }

        private string _item_no;
        /// <summary>
        /// Item_No	varchar	15	Item_No
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
            private string _colorNo;
        /// <summary>
        /// ɫ?  B: SUBSTR((ITEM_NO),10,3)
        /// </summary>
        public string  ColorNo
        {
            get { return _colorNo; }
            set { _colorNo = value; }
        }

        private DateTime _inspectionDate;
        /// <summary>
        /// F: �@?RN����������һ?INSPECTION DATE (ȡ���ķ�����BY LOT ����ͬ)
        /// </summary>
        public DateTime InspectionDate
        {
            get { return _inspectionDate; }
            set { _inspectionDate = value; }
        }

        private decimal _receiveLength;
        /// <summary>
        /// ��?�L�ȣ�m) G: ���ļ�AULPHGMODS/PH984W�M��l�����ֶ�:WLENG���ۼӺͣ�
        /// </summary>
        public decimal ReceiveLength
        {
            get { return _receiveLength; }
            set { _receiveLength = value; }
        }

        private decimal _total_PH_Sample;
        /// <summary>
        /// PHSample
        /// </summary>
        public decimal TotalPHSample
        {
            get { return _total_PH_Sample; }
            set { _total_PH_Sample = value; }
        }


        private decimal _total_Supplier_Length;
        /// <summary>
        /// PHSample
        /// </summary>
        public decimal TotalSupplierLength
        {
            get { return _total_Supplier_Length; }
            set { _total_Supplier_Length = value; }
        }

        private decimal _actual_Short_Length;
        /// <summary>
        /// PHSample
        /// </summary>
        public decimal ActualShortLength
        {
            get { return _actual_Short_Length; }
            set { _actual_Short_Length = value; }
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
                //this.OnPropertyChanged("IQC_Reference");
            }
        }

        private string _invoiceNo;
        /// <summary>
        /// L:���ļ�AULPHGMODS/PH984W�M��l���Ĳ�ͬ��WINVO�ַ��ρK.
        /// </summary>
        public string InvoiceNo
        {
            get { return _invoiceNo; }
            set { _invoiceNo = value; }
        }

        private decimal _receive_qty;
        /// <summary>
        /// Receive_Qty	decimal	11(4)	QTY Received
        /// </summary>
        public decimal Receive_Qty
        {
            get
            {
                return _receive_qty;
            }
            set
            {
                _receive_qty = value;
                //this.OnPropertyChanged("Receive_Qty");
            }
        }

        private decimal _insp_qty;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal Insp_Qty
        {
            get
            {
                return _insp_qty;
            }
            set
            {
                _insp_qty = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }

        private decimal _inspectionLength;
        /// <summary>
        /// ��z�L�ȣ�m) F: ���x��ėl����INSP_LENGTH���ۼӺ�
        /// </summary>
        public decimal InspectionLength
        {
            get { return _inspectionLength; }
            set { _inspectionLength = value; }
        }

        private string _po;
        /// <summary>
        /// Po No  O: ���ļ�AULPHGMODS/PH984W�M��l���Ĳ�ͬ��WPO�ַ��ρK.����L�Ȟ�35
        /// </summary>
        public string PO
        {
            get { return _po; }
            set { _po = value; }
        }

        private string _hdoNo;
        /// <summary>
        /// HDO No  P: AULPHGMODS/PH984W.WHDO(��ͬ����+��ͬSTOCK IN DATE ֻ��һ?HDO NO)
        /// </summary>
        public string HdoNo
        {
            get { return _hdoNo; }
            set { _hdoNo = value; }
        }


        private string _projectNo;
        /// <summary>
        /// Project No  Q: ���ļ�AULPHGMODS/PH984W�M��l�������в�ͬ��WPROJ�ַ��ρK.����L�Ȟ�75
        /// </summary>
        public string ProjectNo
        {
            get { return _projectNo; }
            set { _projectNo = value; }
        }


        private string _qc_summary;
        /// <summary>
        /// QC_Summary	varchar	50	QC Summary
        /// </summary>
        public string QC_Summary
        {
            get
            {
                return _qc_summary;
            }
            set
            {
                _qc_summary = value;
                //this.OnPropertyChanged("QC_Summary");
            }
        }

        private bool _major_problem1_checked;
        public bool Major_Problem1_Checked
        {
            get
            {
                return _major_problem1_checked;
            }
            set
            {
                _major_problem1_checked = value;
                //this.OnPropertyChanged("Major_Problem1_Checked");
            }
        }

        public string Major_Problem1
        {
            get
            {
                if (_major_problem1_checked)
                {
                    return MAJOR_PROBLEM1_CHECKED_VALUE;
                }
                else {
                    return UNCHECKED_VALUE;
                }
            }
        }


        private bool _major_problem2_checked;
        public bool Major_Problem2_Checked
        {
            get
            {
                return _major_problem2_checked;
            }
            set
            {
                _major_problem2_checked = value;
                //this.OnPropertyChanged("Major_Problem2_Checked");
            }
        }

        public string Major_Problem2
        {
            get
            {
                if (_major_problem2_checked)
                {
                    return MAJOR_PROBLEM2_CHECKED_VALUE;
                }
                else
                {
                    return UNCHECKED_VALUE;
                }
            }
        }

        private bool _major_problem3_checked;
        public bool Major_Problem3_Checked
        {
            get
            {
                return _major_problem3_checked;
            }
            set
            {
                _major_problem3_checked = value;
                //this.OnPropertyChanged("Major_Problem3_Checked");
            }
        }

        public string Major_Problem3
        {
            get
            {
                if (_major_problem3_checked)
                {
                    return MAJOR_PROBLEM3_CHECKED_VALUE;
                }
                else
                {
                    return UNCHECKED_VALUE;
                }
            }
        }

        private bool _major_problem4_checked;
        public bool Major_Problem4_Checked
        {
            get
            {
                return _major_problem4_checked;
            }
            set
            {
                _major_problem4_checked = value;
                //this.OnPropertyChanged("Major_Problem4_Checked");
            }
        }

        public string Major_Problem4
        {
            get
            {
                if (_major_problem4_checked)
                {
                    return MAJOR_PROBLEM4_CHECKED_VALUE;
                }
                else
                {
                    return UNCHECKED_VALUE;
                }
            }
        }

        private bool _major_problem5_checked;
        public bool Major_Problem5_Checked
        {
            get
            {
                return _major_problem5_checked;
            }
            set
            {
                _major_problem5_checked = value;
                //this.OnPropertyChanged("Major_Problem5_Checked");
            }
        }

        public string Major_Problem5
        {
            get
            {
                if (_major_problem5_checked)
                {
                    return MAJOR_PROBLEM5_CHECKED_VALUE;
                }
                else
                {
                    return UNCHECKED_VALUE;
                }
            }
        }

        private bool _major_problem6_checked;
        public bool Major_Problem6_Checked
        {
            get
            {
                return _major_problem6_checked;
            }
            set
            {
                _major_problem6_checked = value;
                //this.OnPropertyChanged("Major_Problem6_Checked");
            }
        }

        public string Major_Problem6
        {
            get
            {
                if (_major_problem6_checked)
                {
                    return MAJOR_PROBLEM6_CHECKED_VALUE;
                }
                else
                {
                    return UNCHECKED_VALUE;
                }
            }
        }

        private bool _major_problem7_checked;
        public bool Major_Problem7_Checked
        {
            get
            {
                return _major_problem7_checked;
            }
            set
            {
                _major_problem7_checked = value;
                //this.OnPropertyChanged("Major_Problem7_Checked");
            }
        }

        public string Major_Problem7
        {
            get
            {
                if (_major_problem7_checked)
                {
                    return MAJOR_PROBLEM7_CHECKED_VALUE;
                }
                else
                {
                    return UNCHECKED_VALUE;
                }
            }
        }

        private string _RN_confirm;
        /// <summary>
        /// RN_confirm	varchar	1	��1��=RN confirmed, blanks= no confirmed 
        /// </summary>
        public string RN_confirm
        {
            get
            {
                return _RN_confirm;
            }
            set
            {
                _RN_confirm = value;
                //this.OnPropertyChanged("RN_confirm");
            }
        }

        private string _confirmed_user;
        /// <summary>
        /// Confirmed_User	varchar	10	USER ID, somebody who confirm this rn
        /// </summary>
        public string Confirmed_User
        {
            get
            {
                return _confirmed_user;
            }
            set
            {
                _confirmed_user = value;
                //this.OnPropertyChanged("Confirmed_User");
            }
        }

        private string _stock_in_date;
        /// <summary>
        /// Stock_In_Date
        /// </summary>
        public string Stock_In_Date
        {
            get
            {
                return _stock_in_date;
            }
            set
            {
                _stock_in_date = value;
                //this.OnPropertyChanged("Stock_In_Date");
            }
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

        private string _change_user;
        /// <summary>
        /// Change_User	varchar	10	USER ID
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
        /// Change_Date	dateTime	8(0)	CHANGE DATE and Change Time
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
        /// Use_Status	varchar	      1	In used 1=used blank = no used
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


        private bool _processed;
        /// <summary>
        /// processed	bool		true= processed , false = not
        /// </summary>
        public bool Processed
        {
            get
            {
                return _processed;
            }
            set
            {
                _processed = value;
                //this.OnPropertyChanged("Processed");
            }
        }

        #endregion


        #region details RNDetail process
        private List<RNDetailByReport> _RNDetailItems;

        public List<RNDetailByReport> RNDetailItems
        {
            get
            {
                return _RNDetailItems;
            }
            set
            {
                _RNDetailItems = value;
                ////this.OnPropertyChanged("Childs");
            }
        }


        #endregion
    }

    }
