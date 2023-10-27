using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace PH.MR.BO
{
    public class EnquiriesBase
    {
        public EnquiriesBase()
        {
            this._isDirty = false;
            this._isNew = true;
        }

        #region Material -- global

        private bool _isDirty;
        /// <summary>
        /// 指示是否修改过
        /// </summary>
        public bool IsDirty
        {
            get { return _isDirty; }
            set { _isDirty = value; }
        }

        private bool _isNew;
        /// <summary>
        /// 是否新增的记录
        /// </summary>
        public bool IsNew
        {
            get { return _isNew; }
            set { _isNew = value; }
        }

        private string _cono;
        /// <summary>
        /// company
        /// </summary>
        public string CONO
        {
            get { return _cono; }
            set { _cono = value; }
        }

        private string _project;
        /// <summary>
        /// Project No
        /// </summary>
        public string PROJECT
        {
            get { return _project; }
            set { _project = value; }
        }

        private int _deptVersion;
        /// <summary>
        /// Version by Project
        /// </summary>
        public int DEPTVERSION
        {
            get { return _deptVersion; }
            set { _deptVersion = value; }
        }

        private string _dept;
        /// <summary>
        /// user department
        /// </summary>
        public string DEPT
        {
            get { return _dept; }
            set { _dept = value; }
        }

        private int _version;
        /// <summary>
        /// Version by Project and Dept
        /// </summary>
        public int VERSION
        {
            get { return _version; }
            set { _version = value; }
        }

        private string _dept_version;
        /// <summary>
        /// _dept+_deptVersion
        /// </summary>
        public string DEPT_VERSION
        {
            get { _dept_version = this._deptVersion == -1 ? this._dept : string.Format("{0} {1}", this._dept, this._deptVersion); return _dept_version; }
        }

        private string _CSTL;
        /// <summary>
        /// PHP71T.CSTL71
        /// </summary>
        public string CSTL
        {
            get { return _CSTL; }
            set { _CSTL = value; }
        }

        private string _supplierRef;
        /// <summary>
        /// PHP71T.VACT01
        /// </summary>
        public string SupplierRef
        {
            get { return _supplierRef; }
            set { _supplierRef = value; }
        }

        private decimal _markerWidth;
        /// <summary>
        /// PHP71T.MWTH71
        /// </summary>
        public decimal MarkerWidth
        {
            get { return _markerWidth; }
            set { _markerWidth = value; }
        }

        private string _styleColor;
        /// <summary>
        /// Style Color Code
        /// </summary>
        public string StyleColor
        {
            get { return _styleColor; }
            set { _styleColor = value; }
        }

        private string _PCOL;
        /// <summary>
        /// Parent Item Color Code
        /// </summary>
        public string PCOL
        {
            get { return _PCOL; }
            set { _PCOL = value; }
        }

        private string _PSIZ;
        /// <summary>
        /// Parent Item Size Code
        /// </summary>
        public string PSIZ
        {
            get { return _PSIZ; }
            set { _PSIZ = value; }
        }

        private string _Style;
        /// <summary>
        /// Style
        /// </summary>
        public string STYLE
        {
            get { return _Style; }
            set { _Style = value; }
        }

        private string _MATD;
        /// <summary>
        /// PHG Material Type Description
        /// </summary>
        public string MATD
        {
            get { return _MATD; }
            set { _MATD = value; }
        }

        private string _uom;
        public string UOM
        {
            get { return _uom; }
            set { _uom = value; }
        }

        private string _sku;
        /// <summary>
        /// CSTL + PCOL + PSIZ
        /// </summary>
        public string SKU
        {
            get { _sku = _CSTL + _PCOL + _PSIZ; return _sku; }
        }

        private string _notepad;
        public string NOTEPAD
        {
            get { return _notepad == null ? "" : _notepad; }
            set { _notepad = value; }
        }

        private string _attachment;
        /// <summary>
        /// ATTACHMENT
        /// </summary>
        public string ATTACHMENT
        {
            get { return _attachment; }
            set { _attachment = value; }
        }
        #endregion
    }
    public class Enquiries_MRPOMU : EnquiriesBase
    {

        #region MR -- SLOA

        private decimal _MRYYQty;
        /// <summary>
        /// PHP71T.CORQ71
        /// </summary>
        public decimal MRYYQty
        {
            get { return _MRYYQty; }
            set { _MRYYQty = value; }
        }

        private decimal _MRYYQty1;
        /// <summary>
        /// PHP71T.CORQ71 pre version
        /// </summary>
        public decimal MRYYQty1
        {
            get { return _MRYYQty1; }
            set { _MRYYQty1 = value; }
        }

        private decimal _mrDiff;
        public decimal MRDiff
        {
            get { _mrDiff = MRYYQty1 - MRYYQty; return _mrDiff; }
        }

        private string _MRNotepad;
        public string MRNotepad
        {
            get { return _MRNotepad; }
            set { _MRNotepad = value; }
        }

        #endregion

        #region Physical Stock -- SLPUR

        private decimal _reservedStock;
        /// <summary>
        /// PHP71T.RSRS71--Reserved for Re-dye
        /// </summary>
        public decimal ReservedStock
        {
            get { return _reservedStock; }
            set { _reservedStock = value; }
        }

        private decimal _MUStock;
        /// <summary>
        /// PHP71T.RSVS71--Reserved Stock
        /// </summary>
        public decimal MUStock
        {
            get { return _MUStock; }
            set { _MUStock = value; }
        }

        private decimal _reservedStock1;
        /// <summary>
        /// PHP71T.RSRS71--Reserved for Re-dye
        /// </summary>
        public decimal ReservedStock1
        {
            get { return _reservedStock1; }
            set { _reservedStock1 = value; }
        }

        private decimal _MUStock1;
        /// <summary>
        /// PHP71T.RSVS71--Reserved Stock
        /// </summary>
        public decimal MUStock1
        {
            get { return _MUStock1; }
            set { _MUStock1 = value; }
        }

        #endregion

        #region Logistic Stock -- SLPUR

        private decimal _ResPO;
        /// <summary>
        /// PHP71T.RSVP71
        /// </summary>
        public decimal ResPO
        {
            get { return _ResPO; }
            set { _ResPO = value; }
        }

        private decimal _OpenPO;
        /// <summary>
        /// PHP71T.EXSP71
        /// </summary>
        public decimal OpenPO
        {
            get { return _OpenPO; }
            set { _OpenPO = value; }
        }

        private decimal _ResPO1;
        /// <summary>
        /// PHP71T.RSVP71 pre version
        /// </summary>
        public decimal ResPO1
        {
            get { return _ResPO1; }
            set { _ResPO1 = value; }
        }

        private decimal _OpenPO1;
        /// <summary>
        /// PHP71T.EXSP71 pre version
        /// </summary>
        public decimal OpenPO1
        {
            get { return _OpenPO1; }
            set { _OpenPO1 = value; }
        }

        private decimal _POMU;
        /// <summary>
        /// ResPO/(ResPO+OpenPO)
        /// </summary>
        public decimal POMU
        {
            get { this._POMU = (_ResPO + _OpenPO) == 0 ? 0 : _ResPO / (_ResPO + _OpenPO); return Math.Round(_POMU, 4); }
        }

        private decimal _poDiff;
        public decimal PODiff
        {
            get { _poDiff = ResPO1 - ResPO; return _poDiff; }
        }

        #endregion
        #region PO -- SLPUR

        private string _PONotepad;
        public string PONotepad
        {
            get { return _PONotepad; }
            set { _PONotepad = value; }
        }

        private decimal _POReceiptQty;
        /// <summary>
        /// PHP78T.QREC78
        /// </summary>
        public decimal POReceiptQty
        {
            get { return _POReceiptQty; }
            set { _POReceiptQty = value; }
        }

        private decimal _OQTY78;
        /// <summary>
        /// PHP78T.OQTY78
        /// </summary>
        public decimal OQTY78
        {
            get { return _OQTY78; }
            set { _OQTY78 = value; }
        }

        private decimal _QREC78;
        /// <summary>
        /// PHP78T.QREC78
        /// </summary>
        public decimal QREC78
        {
            get { return _QREC78; }
            set { _QREC78 = value; }
        }

        private decimal _POBalanceQty;
        /// <summary>
        /// PHP78T.OQTY78 - PHP78T.QREC78
        /// </summary>
        public decimal POBalanceQty
        {
            get { this._POBalanceQty = _OQTY78 - _QREC78; return _POBalanceQty; }
        }

        private decimal _POOvership;
        /// <summary>
        /// PHP78T.QREC78 - PHP78T.OQTY78 (if > 0)
        /// </summary>
        public decimal POOvership
        {
            get { this._POOvership = (_QREC78 - _OQTY78) > 0 ? (_QREC78 - _OQTY78) : 0; return _POOvership; }
        }

        #endregion

        #region WorkOrders -- SLMC

        private decimal _IssueQty_IDO;
        /// <summary>
        /// PHP77T.ISSQ77(Quantity issued (planned))
        /// </summary>
        public decimal IssueQty_IDO
        {
            get { return _IssueQty_IDO; }
            set { _IssueQty_IDO = value; }
        }

        private decimal _IssueQty_UPI;
        /// <summary>
        /// PHP77T.UISQ77(Quantity issued (unplanned))
        /// </summary>
        public decimal IssueQty_UPI
        {
            get { return _IssueQty_UPI; }
            set { _IssueQty_UPI = value; }
        }

        private decimal _AllocatedMaterial;
        /// <summary>
        /// PHP77T.ALOC77(Material allocated but not yet issued)
        /// </summary>
        public decimal AllocatedMaterial
        {
            get { return _AllocatedMaterial; }
            set { _AllocatedMaterial = value; }
        }

        private decimal _ReturnMatQty;
        /// <summary>
        /// PHP77T.RETQ77(Quantity returned)
        /// </summary>
        public decimal ReturnMatQty
        {
            get { return _ReturnMatQty; }
            set { _ReturnMatQty = value; }
        }

        #endregion
        #region SLMU

        private decimal _ActualUsage;
        /// <summary>
        /// Nett quantity issued (IssueQty_IDO + IssueQty_UPI -ReturnMatQty)
        /// </summary>
        public decimal ActualUsage
        {
            get { this._ActualUsage = _IssueQty_IDO + _IssueQty_UPI - _ReturnMatQty; return _ActualUsage; }
        }

        private string _MUNotepad;
        public string MUNotepad
        {
            get { return _MUNotepad; }
            set { _MUNotepad = value; }
        }

        #endregion
    }

    public class Enquiries_WO : EnquiriesBase
    {

        #region WO -- SLCAD/SLPRD

        private decimal _WOYYQty;
        /// <summary>
        /// PHP81.QPER81
        /// </summary>
        public decimal WOYYQty
        {
            get { return _WOYYQty; }
            set { _WOYYQty = value; }
        }

        private string _WONotepad;
        public string WONotepad
        {
            get { return _WONotepad; }
            set { _WONotepad = value; }
        }

        #endregion
    }
    public class Enquiries_CAC : EnquiriesBase
    {

        #region BOM -- SLGE(CAC)

        private decimal _CACYY;
        /// <summary>
        /// PHP80T.QPER80
        /// </summary>
        public decimal CACYY
        {
            get { return _CACYY; }
            set { _CACYY = value; }
        }

        private string _CACNotepad;
        /// <summary>
        /// MSP02.TEXT02
        /// </summary>
        public string CACNotepad
        {
            get { return _CACNotepad; }
            set { _CACNotepad = value; }
        }

        private decimal _ReturnMatQty;
        /// <summary>
        /// PHP77T.RETQ77(Quantity returned)
        /// </summary>
        public decimal ReturnMatQty
        {
            get { return _ReturnMatQty; }
            set { _ReturnMatQty = value; }
        }

        private decimal _uprc;
        /// <summary>
        /// PHP80T.UPRC80
        /// </summary>
        public decimal UPRC
        {
            get { return _uprc; }
            set { _uprc = value; }
        }

        private decimal _MRYYQty_1st;
        /// <summary>
        /// PHP71T.CORQ71
        /// </summary>
        public decimal MRYYQty_1st
        {
            get { return _MRYYQty_1st; }
            set { _MRYYQty_1st = value; }
        }

        private decimal _CostingDiff;
        /// <summary>
        ///  Return qty * UPRC80 / (1st MRYYQty)
        /// </summary>
        public decimal CostingDiff
        {
            get
            {
                this._CostingDiff = _MRYYQty_1st == 0 ? 0 : (_ReturnMatQty * UPRC / _MRYYQty_1st);
                this._CostingDiff = Math.Round(this._CostingDiff, 5);
                return _CostingDiff;
            }
        }


        #endregion
    }

    public class MRHistoryNotepad : EnquiriesBase
    {
        public MRHistoryNotepad()
            : base()
        {
            this._guid = Guid.NewGuid();
            _isFirst = true;
        }

        private Guid _guid;
        public Guid GUID
        {
            get { return _guid; }
        }

        private string _type;
        public string TYPE
        {
            get { return _type; }
            set { _type = value; }
        }

        private string _fuser;
        public string FUSER
        {
            get { return _fuser; }
            set { _fuser = value; }
        }

        private object _fdate;
        public object FDATE
        {
            get { return _fdate; }
            set { _fdate = value; }
        }

        private decimal _qty1;
        public decimal QTY1
        {
            get { return _qty1; }
            set { _qty1 = value; }
        }

        private decimal _qty2;
        public decimal QTY2
        {
            get { return _qty2; }
            set { _qty2 = value; }
        }

        private string _notepad_new;
        public string NOTEPAD_NEW
        {
            get { return _notepad_new; }
            set { _notepad_new = value; }
        }

        private bool _isFirst;
        private string _notepad_temp;
        public string NOTEPAD_TEMP
        {
            get
            {
                if (_isFirst)
                    this._notepad_temp = this.NOTEPAD;
                _isFirst = false;
                return _notepad_temp;
            }
        }
    }

    public class StyleNotepad
    {
        private string _attachment;
        public string Attachment
        {
            get { return _attachment; }
            set { _attachment = value; }
        }

        private string _notepad;
        public string NOTEPAD
        {
            get { return _notepad; }
            set { _notepad = value; }
        }

        public static object GetStyleNotepad(DataTable tb)
        {
            List<StyleNotepad> list = new List<StyleNotepad>();
            SortedList<string, string> sl = new SortedList<string, string>();
            string style;
            string notepad;
            foreach (DataRow row in tb.Rows)
            {
                style = row["ATTACHMENT1"].ToString();
                if (sl.ContainsKey(style)) continue;
                notepad = row["NOTEPAD"].ToString();
                sl.Add(style, notepad);
            }
            foreach (string key in sl.Keys)
            {
                StyleNotepad sn = new StyleNotepad();
                sn.Attachment = key;
                sn.NOTEPAD = sl[key];
                list.Add(sn);
            }
            return list;
        }
    }
    public class MR_Version
    {
        public MR_Version()
        {
            this._isCheck = false;
        }

        private bool _isCheck;
        public bool IsCheck
        {
            get { return _isCheck; }
            set { _isCheck = value; }
        }

        private string _company;
        public string COMPANY
        {
            get { return _company; }
            set { _company = value; }
        }

        private string _project;
        public string PROJECT
        {
            get { return _project; }
            set { _project = value; }
        }

        private string _ordn;
        public string ORDN
        {
            get { return _ordn; }
            set { _ordn = value; }
        }

        private string _customer;
        public string Customer
        {
            get { return _customer; }
            set { _customer = value; }
        }

        private string _customerGroup;
        public string CustomerGroup
        {
            get { _customerGroup = _project.Substring(0,4); return _customerGroup; }
            //set { _customerGroup = value; }
        }

        private int _version;
        public int VERSION
        {
            get { return _version; }
            set { _version = value; }
        }

        private string _dept;
        public string DEPT
        {
            get { return _dept; }
            set { _dept = value; }
        }

        private int _deptVersion;
        public int DEPTVERSION
        {
            get { return _deptVersion; }
            set { _deptVersion = value; }
        }

        private string _dept_version;
        public string DEPT_VERSION
        {
            get { _dept_version = this._deptVersion == -1 ? this._dept : string.Format("{0} {1}", this._dept, this._deptVersion); return _dept_version; }
        }

        private string _remark;
        public string REMARK
        {
            get { return _remark; }
            set { _remark = value; }
        }

        private string _fuser;
        public string FUSER
        {
            get { return _fuser; }
            set { _fuser = value; }
        }

        private DateTime _fdate;
        public DateTime FDATE
        {
            get { return _fdate; }
            set { _fdate = value; }
        }

        private bool _markComplete;
        public bool MarkComplete
        {
            get { return _markComplete; }
            set { _markComplete = value; }
        }


    }

    public class CompareMRPOCAC
    {
        public CompareMRPOCAC()
        {
            this._isDirty = false;
            this._isNew = true;
        }

        private bool _isDirty;
        /// <summary>
        /// 指示是否修改过
        /// </summary>
        public bool IsDirty
        {
            get { return _isDirty; }
            set { _isDirty = value; }
        }

        private bool _isNew;
        /// <summary>
        /// 是否新增的记录
        /// </summary>
        public bool IsNew
        {
            get { return _isNew; }
            set { _isNew = value; }
        }

        private string _cono;
        /// <summary>
        /// company
        /// </summary>
        public string CONO
        {
            get { return _cono; }
            set { _cono = value; }
        }

        private string _project;
        /// <summary>
        /// Project No
        /// </summary>
        public string PROJECT
        {
            get { return _project; }
            set { _project = value; }
        }
        private string _PCOL;
        /// <summary>
        /// Parent Item Color Code
        /// </summary>
        public string PCOL
        {
            get { return _PCOL; }
            set { _PCOL = value; }
        }

        private string _PSIZ;
        /// <summary>
        /// Parent Item Size Code
        /// </summary>
        public string PSIZ
        {
            get { return _PSIZ; }
            set { _PSIZ = value; }
        }

        private string _Style;
        /// <summary>
        /// Style
        /// </summary>
        public string STYLE
        {
            get { return _Style; }
            set { _Style = value; }
        }

        private decimal _markerWidth;
        /// <summary>
        /// PHP71T.MWTH71
        /// </summary>
        public decimal MarkerWidth
        {
            get { return _markerWidth; }
            set { _markerWidth = value; }
        }

        private string _MATD;
        /// <summary>
        /// PHG Material Type Description
        /// </summary>
        public string MATD
        {
            get { return _MATD; }
            set { _MATD = value; }
        }

        private string _uom;
        public string UOM
        {
            get { return _uom; }
            set { _uom = value; }
        }

        private string _CSTL;
        /// <summary>
        /// PHP71T.CSTL71
        /// </summary>
        public string CSTL
        {
            get { return _CSTL; }
            set { _CSTL = value; }
        }

        private string _sku;
        /// <summary>
        /// CSTL + PCOL + PSIZ
        /// </summary>
        public string SKU
        {
            get { _sku = _CSTL + _PCOL + _PSIZ; return _sku; }
        }

        private string _notepad;
        public string NOTEPAD
        {
            get { return _notepad == null ? "" : _notepad; }
            set { _notepad = value; }
        }

        private string _attachment;
        /// <summary>
        /// ATTACHMENT
        /// </summary>
        public string ATTACHMENT
        {
            get { return _attachment; }
            set { _attachment = value; }
        }

        private string _attachment1;
        /// <summary>
        /// ATTACHMENT1
        /// </summary>
        public string ATTACHMENT1
        {
            get { return _attachment1; }
            set { _attachment1 = value; }
        }

        private decimal _ResPO1;
        /// <summary>
        /// PHP71T.RSVP71 pre version
        /// </summary>
        public decimal ResPO1
        {
            get { return _ResPO1; }
            set { _ResPO1 = value; }
        }

        private decimal _ResPO2;
        /// <summary>
        /// PHP71T.RSVP71
        /// </summary>
        public decimal ResPO2
        {
            get { return _ResPO2; }
            set { _ResPO2 = value; }
        }

        private decimal _OpenPO1;
        /// <summary>
        /// PHP71T.EXSP71 pre version
        /// </summary>
        public decimal OpenPO1
        {
            get { return _OpenPO1; }
            set { _OpenPO1 = value; }
        }

        private decimal _OpenPO2;
        /// <summary>
        /// PHP71T.EXSP71
        /// </summary>
        public decimal OpenPO2
        {
            get { return _OpenPO2; }
            set { _OpenPO2 = value; }
        }

        private decimal _POMU;
        /// <summary>
        /// ResPO/(ResPO+OpenPO)
        /// </summary>
        public decimal POMU
        {
            get { this._POMU = (_ResPO2 + _OpenPO2) == 0 ? 0 : _ResPO2 / (_ResPO2 + _OpenPO2); return Math.Round(_POMU, 4); }
        }

        private decimal _physicalStock1;
        /// <summary>
        /// PHP71T.RSRS71
        /// </summary>
        public decimal PhysicalStock1
        {
            get { return _physicalStock1; }
            set { _physicalStock1 = value; }
        }

        private decimal _physicalStock2;
        /// <summary>
        /// PHP71T.RSRS71
        /// </summary>
        public decimal PhysicalStock2
        {
            get { return _physicalStock2; }
            set { _physicalStock2 = value; }
        }

        private decimal _qper1;
        /// <summary>
        /// QPER
        /// </summary>
        public decimal QPER1
        {
            get { return _qper1; }
            set { _qper1 = value; }
        }

        private decimal _qper2;
        /// <summary>
        /// QPER
        /// </summary>
        public decimal QPER2
        {
            get { return _qper2; }
            set { _qper2 = value; }
        }

        private decimal _uprc1;
        /// <summary>
        /// UPRC
        /// </summary>
        public decimal UPRC1
        {
            get { return _uprc1; }
            set { _uprc1 = value; }
        }

        private decimal _uprc2;
        /// <summary>
        /// UPRC
        /// </summary>
        public decimal UPRC2
        {
            get { return _uprc2; }
            set { _uprc2 = value; }
        }

        private decimal _corq1;
        /// <summary>
        /// CORQ
        /// </summary>
        public decimal CORQ1
        {
            get { return _corq1; }
            set { _corq1 = value; }
        }

        private decimal _corq2;
        /// <summary>
        /// CORQ
        /// </summary>
        public decimal CORQ2
        {
            get { return _corq2; }
            set { _corq2 = value; }
        }

        private decimal _mr_DIFF;
        /// <summary>
        /// MR_DIFF
        /// </summary>
        public decimal MR_DIFF
        {
            get { _mr_DIFF = _corq1 - _corq2; return _mr_DIFF; }
        }

        private decimal _po_DIFF;
        /// <summary>
        /// PO_DIFF
        /// </summary>
        public decimal PO_DIFF
        {
            get { _po_DIFF = _ResPO1 - _ResPO2; return _po_DIFF; }
        }

        private decimal _mu_DIFF;
        /// <summary>
        /// MU_DIFF
        /// </summary>
        public decimal MU_DIFF
        {
            get { _mu_DIFF = _qper1 - _qper2; return _mu_DIFF; }
        }

        private decimal _percentage;
        /// <summary>
        /// (CASE WHEN (ISNULL(QPER1,0) =0) THEN 0 ELSE ISNULL(CAC_DIFF,0)/QPER1 END)
        /// </summary>
        public decimal PERCENTAGE
        {
            get { _percentage = _qper1 == 0 ? 0 : MU_DIFF / _qper1; return _percentage; }
        }

        private decimal _amenthDiff;
        /// <summary>
        /// (CAC_DIFF * UPRC)
        /// </summary>
        public decimal AMENTHDIFF
        {
            get { _amenthDiff = MU_DIFF * UPRC2; return _amenthDiff; }
        }

        private string _AMENTHDIFF_STR;
        /// <summary>
        ///(CASE WHEN SIGN(CAC_DIFF)=0 THEN '' ELSE ''+CHAR(13)+CHAR(10)+'' END)
        /// </summary>
        public string AMENTHDIFF_STR
        {
            get
            {
                _AMENTHDIFF_STR = Math.Sign(MU_DIFF) == 0 ? "" : "\r\n";
                return _AMENTHDIFF_STR;
            }
        }

        private decimal _AllocatedMaterial1;
        /// <summary>
        /// AllocatedMaterial
        /// </summary>
        public decimal AllocatedMaterial1
        {
            get { return _AllocatedMaterial1; }
            set { _AllocatedMaterial1 = value; }
        }

        private decimal _AllocatedMaterial2;
        /// <summary>
        /// AllocatedMaterial
        /// </summary>
        public decimal AllocatedMaterial2
        {
            get { return _AllocatedMaterial2; }
            set { _AllocatedMaterial2 = value; }
        }

        private decimal _IssueQty_IDO1;
        /// <summary>
        /// IssueQty_IDO
        /// </summary>
        public decimal IssueQty_IDO1
        {
            get { return _IssueQty_IDO1; }
            set { _IssueQty_IDO1 = value; }
        }

        private decimal _IssueQty_IDO2;
        /// <summary>
        /// IssueQty_IDO
        /// </summary>
        public decimal IssueQty_IDO2
        {
            get { return _IssueQty_IDO2; }
            set { _IssueQty_IDO2 = value; }
        }

        private decimal _IssueQty_UPI1;
        /// <summary>
        /// IssueQty_UPI
        /// </summary>
        public decimal IssueQty_UPI1
        {
            get { return _IssueQty_UPI1; }
            set { _IssueQty_UPI1 = value; }
        }

        private decimal _IssueQty_UPI2;
        /// <summary>
        /// IssueQty_UPI
        /// </summary>
        public decimal IssueQty_UPI2
        {
            get { return _IssueQty_UPI2; }
            set { _IssueQty_UPI2 = value; }
        }

        private decimal _ReturnMatQty1;
        /// <summary>
        /// ReturnMatQty
        /// </summary>
        public decimal ReturnMatQty1
        {
            get { return _ReturnMatQty1; }
            set { _ReturnMatQty1 = value; }
        }

        private decimal _ReturnMatQty2;
        /// <summary>
        /// ReturnMatQty
        /// </summary>
        public decimal ReturnMatQty2
        {
            get { return _ReturnMatQty2; }
            set { _ReturnMatQty2 = value; }
        }

   }

    public enum NotepadType
    {
        NONE, WO, MR, PO, MU, CAC
    }

    public enum SaveRemarkType
    {
        NewVersion, MarkComplete
    }
}
