namespace PH.HDO.BO
{
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Data;
    using System.Collections.Generic;
    using System.Reflection;
    using System.Linq;
    using System.Linq.Expressions;
    using System.ComponentModel;
    using System;
    using PH.Platform.BO;
    using PH.MIDc.BO;
    using System.Globalization;
    partial class tempa
    {
    }

    public partial class HDOReleasedDateInfomation : BaseEntity
    { }
    public partial class HDOInvoice : BaseEntity
    {
        partial void OnCreated()
        {
            this.OID = Guid.NewGuid();
            this.OperateDate = DateTime.Now;
            this.Operator = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        }
    }
    public partial class HDOHandling : BaseEntity
    {

    }
    public partial class HDODelivery : BaseEntity
    {
        partial void OnActualTransitDateChanged()
        {
            if (this.ActualTransitDate.HasValue)
            {
                DateTime cDate = this.ActualTransitDate ?? Convert.ToDateTime("2000-01-01");

                Double aDay = Convert.ToDouble(this.TimeFrame ?? 0.00);

                this.ETADate = cDate.AddDays(aDay);
            }
        }


        partial void OnReceivedDateChanged()
        {
            if (this.ReceivedDate.HasValue)
            {
               
                string  CalTime = Convert.ToDateTime(this.ReceivedDate).ToLongTimeString().ToString();
                if (CalTime == "00:00:00") 
                {
                  this.ReceivedDate =  Convert.ToDateTime(this.ReceivedDate).AddHours(18.00);
                }
                //DateTime cDate = this.ActualTransitDate ?? Convert.ToDateTime("2000-01-01");

                //Double aDay = Convert.ToDouble(this.TimeFrame ?? 0.00);

                //this.ETADate = cDate.AddDays(aDay);
            }
        }
        



    }
    public partial class CheckWorkTimeApplicationReport : BaseEntity
    {

    }
    public partial class HDOQuantity : BaseEntity
    {
        public decimal SuppPOQty { get { return decimal.Round((this.PHQty ?? 0) / (this.ConversationFactor ?? 1), 1, MidpointRounding.AwayFromZero); } }
        public decimal PastTtlGRNQty
        {
            get
            {
                decimal d = (this.TotalReceivedQty ?? 0) - (this.GRNQty ?? 0);
                return d;
            }
            set { value = 0; }
        }

        public decimal BalanceQty
        {
            get
            {
                return (this.TotalReceivedQty ?? 0) - (this.PHQty ?? 0);
            }
        }
    }
    public partial class IDInvoice : BaseEntity
    {
        partial void OnCreated()
        {
            this.OID = Guid.NewGuid();
            this.OperateDate = DateTime.Now;
            this.Operator = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        }
    }
    public partial class Stock_In : BaseEntity
    {

    }
    public partial class Stock_Out : BaseEntity
    {

    }
    public partial class Stock_Balance : BaseEntity { }
    public partial class Stock_InKB : BaseEntity
    {
        partial void OnCreated()
        {
            this.Id = Guid.NewGuid();
        }
    }
    public partial class Stock_OutKB : BaseEntity
    {
        partial void OnCreated()
        {
            this.Id = Guid.NewGuid();
        }
    }
    public partial class Stock_BalanceKB : BaseEntity
    {
        partial void OnCreated()
        {
            this.Id = Guid.NewGuid();
        }
    }
    [Table(Name = "dbo.tempa")]
    public partial class Tempa : BaseEntity
    {
        private string _PAKL64;
        private string _Status;

        private string _DESC64;

        private string _USER64;

        private string _DATE64;

        private decimal _GRNO65;

        private string _MaterialGroup;

        private string _RUOM65;

        private System.Nullable<decimal> _MARKERWIDTH;

        private string _Material;

        private string _company;

        private string _pono;

        private string _supplierreference;

        private string _projectno;

        private string _dept;

        private string _supplier;


        private System.Nullable<decimal> _totleOQTY;

        private decimal? _CBM;

        public Tempa()
        {
        }
        [Column(Storage = "_PAKL64", DbType = "VarChar(8) NOT NULL", CanBeNull = false)]
        public string PAKL64
        {
            get
            {
                return this._PAKL64;
            }
            set
            {
                if ((this._PAKL64 != value))
                {
                    this._PAKL64 = value;
                }
            }
        }

        [Column(Storage = "_Status", DbType = "VarChar(8) NOT NULL", CanBeNull = false)]
        public string Status
        {
            get
            {
                return this._Status;
            }
            set
            {
                if ((this._Status != value))
                {
                    this._Status = value;
                }
            }
        }

        [Column(Storage = "_DESC64", DbType = "Char(30) NOT NULL", CanBeNull = false)]
        public string DESC64
        {
            get
            {
                return this._DESC64;
            }
            set
            {
                if ((this._DESC64 != value))
                {
                    this._DESC64 = value;
                }
            }
        }

        [Column(Storage = "_USER64", DbType = "Char(10) NOT NULL", CanBeNull = false)]
        public string USER64
        {
            get
            {
                return this._USER64;
            }
            set
            {
                if ((this._USER64 != value))
                {
                    this._USER64 = value;
                }
            }
        }


        [Column(Storage = "_DATE64", DbType = "Decimal(7,0) NOT NULL")]
        public string DATE64
        {
            get
            {
                string timesa = Convert.ToString(_DATE64);
                if (timesa != null)
                {
                    timesa = "20" + timesa.Substring(1, 2) + "/" + timesa.Substring(3, 2) + "/" + timesa.Substring(5, 2);

                }
                return timesa;
            }
            set
            {
                if ((this._DATE64 != value))
                {
                    this._DATE64 = value;
                }
            }
        }

        [Column(Storage = "_GRNO65", DbType = "Decimal(7,0) NOT NULL")]
        public decimal GRNO65
        {
            get
            {
                return this._GRNO65;
            }
            set
            {
                if ((this._GRNO65 != value))
                {
                    this._GRNO65 = value;
                }
            }
        }

        [Column(Storage = "_MaterialGroup", DbType = "VarChar(20)")]
        public string MaterialGroup
        {
            get
            {
                return this._MaterialGroup;
            }
            set
            {
                if ((this._MaterialGroup != value))
                {
                    this._MaterialGroup = value;
                }
            }
        }

        [Column(Storage = "_RUOM65", DbType = "Char(2) NOT NULL", CanBeNull = false)]
        public string RUOM65
        {
            get
            {
                return this._RUOM65;
            }
            set
            {
                if ((this._RUOM65 != value))
                {
                    this._RUOM65 = value;
                }
            }
        }

        [Column(Storage = "_MARKERWIDTH", DbType = "Decimal(11,4)")]
        public System.Nullable<decimal> MARKERWIDTH
        {
            get
            {
                return this._MARKERWIDTH;
            }
            set
            {
                if ((this._MARKERWIDTH != value))
                {
                    this._MARKERWIDTH = value;
                }
            }
        }

        [Column(Storage = "_Material", DbType = "VarChar(15)")]
        public string Material
        {
            get
            {
                return this._Material;
            }
            set
            {
                if ((this._Material != value))
                {
                    this._Material = value;
                }
            }
        }

        [Column(Storage = "_company", DbType = "VarChar(2)")]
        public string company
        {
            get
            {
                return this._company;
            }
            set
            {
                if ((this._company != value))
                {
                    this._company = value;
                }
            }
        }

        [Column(Storage = "_pono", DbType = "VarChar(20)")]
        public string pono
        {
            get
            {
                return this._pono;
            }
            set
            {
                if ((this._pono != value))
                {
                    this._pono = value;
                }
            }
        }

        [Column(Storage = "_supplierreference", DbType = "NVarChar(100)")]
        public string supplierreference
        {
            get
            {
                return this._supplierreference;
            }
            set
            {
                if ((this._supplierreference != value))
                {
                    this._supplierreference = value;
                }
            }
        }

        [Column(Storage = "_projectno", DbType = "NVarChar(100)")]
        public string projectno
        {
            get
            {
                return this._projectno;
            }
            set
            {
                if ((this._projectno != value))
                {
                    this._projectno = value;
                }
            }
        }

        [Column(Storage = "_dept", DbType = "NVarChar(50)")]
        public string dept
        {
            get
            {
                return this._dept;
            }
            set
            {
                if ((this._dept != value))
                {
                    this._dept = value;
                }
            }
        }

        [Column(Storage = "_supplier", DbType = "NVarChar(50)")]
        public string supplier
        {
            get
            {
                return this._supplier;
            }
            set
            {
                if ((this._supplier != value))
                {
                    this._supplier = value;
                }
            }
        }

        [Column(Storage = "_totleOQTY", DbType = "Decimal(38,3)")]
        public System.Nullable<decimal> totleOQTY
        {
            get
            {
                return this._totleOQTY;
            }
            set
            {
                if ((this._totleOQTY != value))
                {
                    this._totleOQTY = value;
                }
            }
        }

        [Column(Storage = "_CBM", DbType = "Decimal(15,3)  NULL")]
        public decimal? CBM
        {
            get
            {
                return this._CBM;
            }
            set
            {
                if ((this._CBM != value))
                {
                    this._CBM = value;
                }
            }
        }


    }

    [Table(Name = "dbo.temp")]
    public partial class temp : BaseEntity
    {

        private string _Status;

        private string _MaterialGroup;

        private string _CONO64;

        private string _PAKL64;

        private string _DESC64;

        private char _STAT64;

        private string _USER64;

        private string _DATES;

        private decimal _LCDT64;

        private string _CONO65;

        private string _PAKL65;

        private string _DUML65;

        private string _ORDN65;

        private decimal _LINE65;

        private decimal _DLIN65;

        private string _ITEM65;

        private decimal _OQTY65;

        private string _WHSE65;

        private decimal _GRNO65;

        private char _STAT65;

        private decimal _ROLL65;

        private string _RUOM65;

        private System.Nullable<decimal> _MARKERWIDTH;

        private string _Material;

        private string _ColorCode;

        private string _SizeCupCode;

        private string _SizeCode;

        private string _FitCode;

        private string _SizeDesc;

        private string _CupDesc;

        private string _company;

        private string _pono;

        private System.Nullable<int> _OrderLine;

        private string _supplierreference;

        private string _projectno;

        private string _dept;

        private string _supplier;

        private string _sku;

        private decimal? _CBM;

        private string _AdviceNoteNo;

        private string _POLine;

        private string _Coordinator;

        private string _whse;

        private string _checked;

        [Column(Storage = "_checked", DbType = "VarChar(10)")]
        public string Checked
        {
            get
            {
                return this._checked;
            }
            set
            {
                if ((this._checked != value))
                {
                    this._checked = value;
                }
            }
        }


        [Column(Storage = "_whse", DbType = "VarChar(50)")]
        public string whse
        {
            get
            {
                return this._whse;
            }
            set
            {
                if ((this._whse != value))
                {
                    this._whse = value;
                }
            }
        }

        private DateTime? _ReleasedDate;
        [Column(Storage = "_ReleasedDate", DbType = "DateTime")]
        public DateTime? ReleasedDate
        {
            get
            {
                return this._ReleasedDate;
            }
            set
            {
                if ((this._ReleasedDate != value))
                {
                    this._ReleasedDate = value;
                }
            }
        }

        [Column(Storage = "_POLine", DbType = "VarChar(50)")]
        public string POLine
        {
            get
            {
                return this._POLine;
            }
            set
            {
                if ((this._POLine != value))
                {
                    this._POLine = value;
                }
            }
        }



        [Column(Storage = "_Coordinator", DbType = "VarChar(50)")]
        public string Coordinator
        {
            get
            {
                return this._Coordinator;
            }
            set
            {
                if ((this._Coordinator != value))
                {
                    this._Coordinator = value;
                }
            }
        }


        [Column(Storage = "_AdviceNoteNo", DbType = "VarChar(50)")]
        public string AdviceNoteNo
        {
            get
            {
                return this._AdviceNoteNo;
            }
            set
            {
                if ((this._AdviceNoteNo != value))
                {
                    this._AdviceNoteNo = value;
                }
            }
        }

        [Column(Storage = "_CBM", DbType = "Decimal(15,3)")]
        public System.Nullable<decimal> CBM
        {
            get
            {
                return this._CBM;
            }
            set
            {
                if ((this._CBM != value))
                {
                    this._CBM = value;
                }
            }
        }

        public string SizeCupDesc
        {
            get
            {
                if (string.IsNullOrEmpty(this.SizeDesc) && string.IsNullOrEmpty(this.CupDesc))
                {
                    return null;
                }
                return string.Format("{0}{1}", (string.IsNullOrEmpty(this.SizeDesc) ? this.SizeDesc : this.SizeDesc.Trim()), (string.IsNullOrEmpty(this.CupDesc) ? this.CupDesc : this.CupDesc.Trim()));
            }
        }

        public temp()
        {
        }

        [Column(Storage = "_Status", DbType = "VarChar(8) NOT NULL", CanBeNull = false)]
        public string Status
        {
            get
            {
                return this._Status;
            }
            set
            {
                if ((this._Status != value))
                {
                    this._Status = value;
                }
            }
        }

        [Column(Storage = "_MaterialGroup", DbType = "VarChar(20)")]
        public string MaterialGroup
        {
            get
            {
                return this._MaterialGroup;
            }
            set
            {
                if ((this._MaterialGroup != value))
                {
                    this._MaterialGroup = value;
                }
            }
        }

        [Column(Storage = "_CONO64", DbType = "Char(2) NOT NULL", CanBeNull = false)]
        public string CONO64
        {
            get
            {
                return this._CONO64;
            }
            set
            {
                if ((this._CONO64 != value))
                {
                    this._CONO64 = value;
                }
            }
        }

        [Column(Storage = "_PAKL64", DbType = "Char(8) NOT NULL", CanBeNull = false)]
        public string PAKL64
        {
            get
            {
                return this._PAKL64;
            }
            set
            {
                if ((this._PAKL64 != value))
                {
                    this._PAKL64 = value;
                }
            }
        }

        [Column(Storage = "_DESC64", DbType = "Char(30) NOT NULL", CanBeNull = false)]
        public string DESC64
        {
            get
            {
                return this._DESC64;
            }
            set
            {
                if ((this._DESC64 != value))
                {
                    this._DESC64 = value;
                }
            }
        }

        [Column(Storage = "_STAT64", DbType = "Char(1) NOT NULL")]
        public char STAT64
        {
            get
            {
                return this._STAT64;
            }
            set
            {
                if ((this._STAT64 != value))
                {
                    this._STAT64 = value;
                }
            }
        }

        [Column(Storage = "_USER64", DbType = "Char(10) NOT NULL", CanBeNull = false)]
        public string USER64
        {
            get
            {
                return this._USER64;
            }
            set
            {
                if ((this._USER64 != value))
                {
                    this._USER64 = value;
                }
            }
        }

        [Column(Storage = "_DATES", DbType = "Decimal(7,0) NOT NULL")]
        public string DATES
        {
            get
            {
                string timeas = Convert.ToString(_DATES);
                if (timeas != null)
                {
                    timeas = "20" + timeas.Substring(2, 2) + "/" + timeas.Substring(4, 2) + "/" + timeas.Substring(6, 2);
                }
                return timeas;
            }
            set
            {
                if ((this._DATES != value))
                {

                    this._DATES = value;
                }
            }
        }

        [Column(Storage = "_LCDT64", DbType = "Decimal(7,0) NOT NULL")]
        public decimal LCDT64
        {
            get
            {
                return this._LCDT64;
            }
            set
            {
                if ((this._LCDT64 != value))
                {
                    this._LCDT64 = value;
                }
            }
        }

        [Column(Storage = "_CONO65", DbType = "Char(2) NOT NULL", CanBeNull = false)]
        public string CONO65
        {
            get
            {
                return this._CONO65;
            }
            set
            {
                if ((this._CONO65 != value))
                {
                    this._CONO65 = value;
                }
            }
        }

        [Column(Storage = "_PAKL65", DbType = "Char(8) NOT NULL", CanBeNull = false)]
        public string PAKL65
        {
            get
            {
                return this._PAKL65;
            }
            set
            {
                if ((this._PAKL65 != value))
                {
                    this._PAKL65 = value;
                }
            }
        }

        [Column(Storage = "_DUML65", DbType = "Char(15) NOT NULL", CanBeNull = false)]
        public string DUML65
        {
            get
            {
                return this._DUML65;
            }
            set
            {
                if ((this._DUML65 != value))
                {
                    this._DUML65 = value;
                }
            }
        }

        [Column(Storage = "_ORDN65", DbType = "Char(7) NOT NULL", CanBeNull = false)]
        public string ORDN65
        {
            get
            {
                return this._ORDN65;
            }
            set
            {
                if ((this._ORDN65 != value))
                {
                    this._ORDN65 = value;
                }
            }
        }

        [Column(Storage = "_LINE65", DbType = "Decimal(3,0) NOT NULL")]
        public decimal LINE65
        {
            get
            {
                return this._LINE65;
            }
            set
            {
                if ((this._LINE65 != value))
                {
                    this._LINE65 = value;
                }
            }
        }

        [Column(Storage = "_DLIN65", DbType = "Decimal(7,0) NOT NULL")]
        public decimal DLIN65
        {
            get
            {
                return this._DLIN65;
            }
            set
            {
                if ((this._DLIN65 != value))
                {
                    this._DLIN65 = value;
                }
            }
        }

        [Column(Storage = "_ITEM65", DbType = "Char(15) NOT NULL", CanBeNull = false)]
        public string ITEM65
        {
            get
            {
                return this._ITEM65;
            }
            set
            {
                if ((this._ITEM65 != value))
                {
                    this._ITEM65 = value;
                }
            }
        }

        [Column(Storage = "_OQTY65", DbType = "Decimal(11,3) NOT NULL")]
        public decimal OQTY65
        {
            get
            {
                return this._OQTY65;
            }
            set
            {
                if ((this._OQTY65 != value))
                {
                    this._OQTY65 = value;
                }
            }
        }

        [Column(Storage = "_WHSE65", DbType = "Char(2) NOT NULL", CanBeNull = false)]
        public string WHSE65
        {
            get
            {
                return this._WHSE65;
            }
            set
            {
                if ((this._WHSE65 != value))
                {
                    this._WHSE65 = value;
                }
            }
        }

        [Column(Storage = "_GRNO65", DbType = "Decimal(7,0) NOT NULL")]
        public decimal GRNO65
        {
            get
            {
                return this._GRNO65;
            }
            set
            {
                if ((this._GRNO65 != value))
                {
                    this._GRNO65 = value;
                }
            }
        }

        [Column(Storage = "_STAT65", DbType = "Char(1) NOT NULL")]
        public char STAT65
        {
            get
            {
                return this._STAT65;
            }
            set
            {
                if ((this._STAT65 != value))
                {
                    this._STAT65 = value;
                }
            }
        }

        [Column(Storage = "_ROLL65", DbType = "Decimal(11,3) NOT NULL")]
        public decimal ROLL65
        {
            get
            {
                return this._ROLL65;
            }
            set
            {
                if ((this._ROLL65 != value))
                {
                    this._ROLL65 = value;
                }
            }
        }

        [Column(Storage = "_RUOM65", DbType = "Char(2) NOT NULL", CanBeNull = false)]
        public string RUOM65
        {
            get
            {
                return this._RUOM65;
            }
            set
            {
                if ((this._RUOM65 != value))
                {
                    this._RUOM65 = value;
                }
            }
        }

        [Column(Storage = "_MARKERWIDTH", DbType = "Decimal(11,4)")]
        public System.Nullable<decimal> MARKERWIDTH
        {
            get
            {
                return this._MARKERWIDTH;
            }
            set
            {
                if ((this._MARKERWIDTH != value))
                {
                    this._MARKERWIDTH = value;
                }
            }
        }

        [Column(Storage = "_Material", DbType = "VarChar(15)")]
        public string Material
        {
            get
            {
                return this._Material;
            }
            set
            {
                if ((this._Material != value))
                {
                    this._Material = value;
                }
            }
        }

        [Column(Storage = "_ColorCode", DbType = "VarChar(6)")]
        public string ColorCode
        {
            get
            {
                return this._ColorCode;
            }
            set
            {
                if ((this._ColorCode != value))
                {
                    this._ColorCode = value;
                }
            }
        }

        [Column(Storage = "_SizeCupCode", DbType = "VarChar(6)")]
        public string SizeCupCode
        {
            get
            {
                return this._SizeCupCode;
            }
            set
            {
                if ((this._SizeCupCode != value))
                {
                    this._SizeCupCode = value;
                }
            }
        }

        [Column(Storage = "_SizeCode", DbType = "NVarChar(60)")]
        public string SizeCode
        {
            get
            {
                return this._SizeCode;
            }
            set
            {
                if ((this._SizeCode != value))
                {
                    this._SizeCode = value;
                }
            }
        }

        [Column(Storage = "_FitCode", DbType = "NVarChar(10)")]
        public string FitCode
        {
            get
            {
                return this._FitCode;
            }
            set
            {
                if ((this._FitCode != value))
                {
                    this._FitCode = value;
                }
            }
        }

        [Column(Storage = "_SizeDesc", DbType = "NVarChar(1000)")]
        public string SizeDesc
        {
            get
            {
                return this._SizeDesc;
            }
            set
            {
                if ((this._SizeDesc != value))
                {
                    this._SizeDesc = value;
                }
            }
        }

        [Column(Storage = "_CupDesc", DbType = "NVarChar(1000)")]
        public string CupDesc
        {
            get
            {
                return this._CupDesc;
            }
            set
            {
                if ((this._CupDesc != value))
                {
                    this._CupDesc = value;
                }
            }
        }

        [Column(Storage = "_company", DbType = "VarChar(2)")]
        public string company
        {
            get
            {
                return this._company;
            }
            set
            {
                if ((this._company != value))
                {
                    this._company = value;
                }
            }
        }

        [Column(Storage = "_pono", DbType = "VarChar(20)")]
        public string pono
        {
            get
            {
                return this._pono;
            }
            set
            {
                if ((this._pono != value))
                {
                    this._pono = value;
                }
            }
        }

        [Column(Storage = "_OrderLine", DbType = "Int")]
        public System.Nullable<int> OrderLine
        {
            get
            {
                return this._OrderLine;
            }
            set
            {
                if ((this._OrderLine != value))
                {
                    this._OrderLine = value;
                }
            }
        }

        [Column(Storage = "_supplierreference", DbType = "NVarChar(100)")]
        public string supplierreference
        {
            get
            {
                return this._supplierreference;
            }
            set
            {
                if ((this._supplierreference != value))
                {
                    this._supplierreference = value;
                }
            }
        }

        [Column(Storage = "_projectno", DbType = "NVarChar(100)")]
        public string projectno
        {
            get
            {
                return this._projectno;
            }
            set
            {
                if ((this._projectno != value))
                {
                    this._projectno = value;
                }
            }
        }

        [Column(Storage = "_dept", DbType = "NVarChar(50)")]
        public string dept
        {
            get
            {
                return this._dept;
            }
            set
            {
                if ((this._dept != value))
                {
                    this._dept = value;
                }
            }
        }

        [Column(Storage = "_supplier", DbType = "NVarChar(50)")]
        public string supplier
        {
            get
            {
                return this._supplier;
            }
            set
            {
                if ((this._supplier != value))
                {
                    this._supplier = value;
                }
            }
        }

        [Column(Storage = "_sku", DbType = "VarChar(32)")]
        public string sku
        {
            get
            {
                return this._sku;
            }
            set
            {
                if ((this._sku != value))
                {
                    this._sku = value;
                }
            }
        }
    }


    //[Table(Name = "dbo.HDOTempBO")]
    //public partial class HDOTempBO : BaseEntity
    //{

    //    private char _ACRC59;

    //    private string _CONO59;

    //    private string _ORDN59;

    //    private decimal _LINE59;

    //    private decimal _BRS_59;

    //    private string _VNDR59;

    //    private decimal _OCLS59;

    //    private string _VCAT59;

    //    private string _ITEM59;

    //    private string _ITCL59;

    //    private string _NOMM59;

    //    private decimal _OQTY59;

    //    private string _OUOM59;

    //    private decimal _TRNQ59;

    //    private string _RUOM59;

    //    private string _IUOM59;

    //    private decimal _CNVF59;

    //    private string _SUOM59;

    //    private string _PRUM59;

    //    private decimal _DUED59;

    //    private decimal _RECD59;

    //    private decimal _INVD59;

    //    private decimal _GITD59;

    //    private decimal _EXPD59;

    //    private decimal _ORDP59;

    //    private decimal _IPRC59;

    //    private string _CURN59;

    //    private decimal _CRTR59;

    //    private decimal _CRTI59;

    //    private decimal _CRTO59;

    //    private string _WHSE59;

    //    private char _RRYN59;

    //    private string _ADVN59;

    //    private int _GRNO59;

    //    private char _RECT59;

    //    private string _TRIN59;

    //    private string _TREX59;

    //    private string _SCRC59;

    //    private string _DBTN59;

    //    private string _IVNO59;

    //    private string _IVTP59;

    //    private string _IVSP59;

    //    private char _RECP59;

    //    private char _INVU59;

    //    private decimal _PLAN59;

    //    private char _INCU59;

    //    private char _GPRT59;

    //    private char _DTYP59;

    //    private string _VCOD59;

    //    private decimal _AQTY59;

    //    private string _PUOM59;

    //    private char _CFLG59;

    //    private decimal _PDAT59;

    //    private char _SAIT59;

    //    private string _USER59;

    //    private char _DLTF59;

    //    private decimal _DAT159;

    //    private char _FLG159;

    //    private string _RECL59;

    //    private string _RECC59;

    //    private string _CONT59;

    //    private decimal _DLIN59;

    //    private char _MODR59;

    //    private char _MODI59;

    //    private char _MODO59;

    //    private char _BTBF59;

    //    private char _PSTC59;

    //    private string _CTRN59;

    //    private decimal _CTLN59;

    //    private char _PODD59;

    //    private string _LNCD59;

    //    private decimal _TWTO59;

    //    private decimal _TWTT59;

    //    private string _WUOM59;

    //    private string _ASNN59;

    //    private decimal _ASNQ59;

    //    private string _TTRM59;

    //    private decimal _TRDT59;

    //    private decimal _TTME59;

    //    private decimal _NROL59;
    //    private string _VAT;

    //    public HDOTempBO()
    //    {
    //    }

    //    public string VAT
    //    {
    //        get
    //        {
    //            return this._VAT;
    //        }
    //        set
    //        {
    //            if ((this._VAT != value))
    //            {
    //                this._VAT = value;
    //            }
    //        }           
    //    }

    //    [Column(Storage = "_ACRC59", DbType = "Char(1) NOT NULL")]
    //    public char ACRC59
    //    {
    //        get
    //        {
    //            return this._ACRC59;
    //        }
    //        set
    //        {
    //            if ((this._ACRC59 != value))
    //            {
    //                this._ACRC59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CONO59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string CONO59
    //    {
    //        get
    //        {
    //            return this._CONO59;
    //        }
    //        set
    //        {
    //            if ((this._CONO59 != value))
    //            {
    //                this._CONO59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ORDN59", DbType = "Char(7) NOT NULL", CanBeNull = false)]
    //    public string ORDN59
    //    {
    //        get
    //        {
    //            return this._ORDN59;
    //        }
    //        set
    //        {
    //            if ((this._ORDN59 != value))
    //            {
    //                this._ORDN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_LINE59", DbType = "Decimal(3,0) NOT NULL")]
    //    public decimal LINE59
    //    {
    //        get
    //        {
    //            return this._LINE59;
    //        }
    //        set
    //        {
    //            if ((this._LINE59 != value))
    //            {
    //                this._LINE59 = value;
    //            }
    //        }
    //    }

    //    [Column(Name = "BRS#59", Storage = "_BRS_59", DbType = "Decimal(5,0) NOT NULL")]
    //    public decimal BRS_59
    //    {
    //        get
    //        {
    //            return this._BRS_59;
    //        }
    //        set
    //        {
    //            if ((this._BRS_59 != value))
    //            {
    //                this._BRS_59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_VNDR59", DbType = "Char(8) NOT NULL", CanBeNull = false)]
    //    public string VNDR59
    //    {
    //        get
    //        {
    //            return this._VNDR59;
    //        }
    //        set
    //        {
    //            if ((this._VNDR59 != value))
    //            {
    //                this._VNDR59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OCLS59", DbType = "Decimal(1,0) NOT NULL")]
    //    public decimal OCLS59
    //    {
    //        get
    //        {
    //            return this._OCLS59;
    //        }
    //        set
    //        {
    //            if ((this._OCLS59 != value))
    //            {
    //                this._OCLS59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_VCAT59", DbType = "Char(20) NOT NULL", CanBeNull = false)]
    //    public string VCAT59
    //    {
    //        get
    //        {
    //            return this._VCAT59;
    //        }
    //        set
    //        {
    //            if ((this._VCAT59 != value))
    //            {
    //                this._VCAT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ITEM59", DbType = "Char(15) NOT NULL", CanBeNull = false)]
    //    public string ITEM59
    //    {
    //        get
    //        {
    //            return this._ITEM59;
    //        }
    //        set
    //        {
    //            if ((this._ITEM59 != value))
    //            {
    //                this._ITEM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ITCL59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string ITCL59
    //    {
    //        get
    //        {
    //            return this._ITCL59;
    //        }
    //        set
    //        {
    //            if ((this._ITCL59 != value))
    //            {
    //                this._ITCL59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_NOMM59", DbType = "Char(12) NOT NULL", CanBeNull = false)]
    //    public string NOMM59
    //    {
    //        get
    //        {
    //            return this._NOMM59;
    //        }
    //        set
    //        {
    //            if ((this._NOMM59 != value))
    //            {
    //                this._NOMM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OQTY59", DbType = "Decimal(11,3) NOT NULL")]
    //    public decimal OQTY59
    //    {
    //        get
    //        {
    //            return this._OQTY59;
    //        }
    //        set
    //        {
    //            if ((this._OQTY59 != value))
    //            {
    //                this._OQTY59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OUOM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string OUOM59
    //    {
    //        get
    //        {
    //            return this._OUOM59;
    //        }
    //        set
    //        {
    //            if ((this._OUOM59 != value))
    //            {
    //                this._OUOM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TRNQ59", DbType = "Decimal(11,3) NOT NULL")]
    //    public decimal TRNQ59
    //    {
    //        get
    //        {
    //            return this._TRNQ59;
    //        }
    //        set
    //        {
    //            if ((this._TRNQ59 != value))
    //            {
    //                this._TRNQ59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RUOM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string RUOM59
    //    {
    //        get
    //        {
    //            return this._RUOM59;
    //        }
    //        set
    //        {
    //            if ((this._RUOM59 != value))
    //            {
    //                this._RUOM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_IUOM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string IUOM59
    //    {
    //        get
    //        {
    //            return this._IUOM59;
    //        }
    //        set
    //        {
    //            if ((this._IUOM59 != value))
    //            {
    //                this._IUOM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CNVF59", DbType = "Decimal(15,5) NOT NULL")]
    //    public decimal CNVF59
    //    {
    //        get
    //        {
    //            return this._CNVF59;
    //        }
    //        set
    //        {
    //            if ((this._CNVF59 != value))
    //            {
    //                this._CNVF59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SUOM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string SUOM59
    //    {
    //        get
    //        {
    //            return this._SUOM59;
    //        }
    //        set
    //        {
    //            if ((this._SUOM59 != value))
    //            {
    //                this._SUOM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PRUM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string PRUM59
    //    {
    //        get
    //        {
    //            return this._PRUM59;
    //        }
    //        set
    //        {
    //            if ((this._PRUM59 != value))
    //            {
    //                this._PRUM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DUED59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal DUED59
    //    {
    //        get
    //        {
    //            return this._DUED59;
    //        }
    //        set
    //        {
    //            if ((this._DUED59 != value))
    //            {
    //                this._DUED59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RECD59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal RECD59
    //    {
    //        get
    //        {
    //            return this._RECD59;
    //        }
    //        set
    //        {
    //            if ((this._RECD59 != value))
    //            {
    //                this._RECD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_INVD59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal INVD59
    //    {
    //        get
    //        {
    //            return this._INVD59;
    //        }
    //        set
    //        {
    //            if ((this._INVD59 != value))
    //            {
    //                this._INVD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_GITD59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal GITD59
    //    {
    //        get
    //        {
    //            return this._GITD59;
    //        }
    //        set
    //        {
    //            if ((this._GITD59 != value))
    //            {
    //                this._GITD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_EXPD59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal EXPD59
    //    {
    //        get
    //        {
    //            return this._EXPD59;
    //        }
    //        set
    //        {
    //            if ((this._EXPD59 != value))
    //            {
    //                this._EXPD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ORDP59", DbType = "Decimal(15,5) NOT NULL")]
    //    public decimal ORDP59
    //    {
    //        get
    //        {
    //            return this._ORDP59;
    //        }
    //        set
    //        {
    //            if ((this._ORDP59 != value))
    //            {
    //                this._ORDP59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_IPRC59", DbType = "Decimal(15,5) NOT NULL")]
    //    public decimal IPRC59
    //    {
    //        get
    //        {
    //            return this._IPRC59;
    //        }
    //        set
    //        {
    //            if ((this._IPRC59 != value))
    //            {
    //                this._IPRC59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CURN59", DbType = "Char(3) NOT NULL", CanBeNull = false)]
    //    public string CURN59
    //    {
    //        get
    //        {
    //            return this._CURN59;
    //        }
    //        set
    //        {
    //            if ((this._CURN59 != value))
    //            {
    //                this._CURN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CRTR59", DbType = "Decimal(11,5) NOT NULL")]
    //    public decimal CRTR59
    //    {
    //        get
    //        {
    //            return this._CRTR59;
    //        }
    //        set
    //        {
    //            if ((this._CRTR59 != value))
    //            {
    //                this._CRTR59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CRTI59", DbType = "Decimal(11,5) NOT NULL")]
    //    public decimal CRTI59
    //    {
    //        get
    //        {
    //            return this._CRTI59;
    //        }
    //        set
    //        {
    //            if ((this._CRTI59 != value))
    //            {
    //                this._CRTI59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CRTO59", DbType = "Decimal(11,5) NOT NULL")]
    //    public decimal CRTO59
    //    {
    //        get
    //        {
    //            return this._CRTO59;
    //        }
    //        set
    //        {
    //            if ((this._CRTO59 != value))
    //            {
    //                this._CRTO59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_WHSE59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string WHSE59
    //    {
    //        get
    //        {
    //            return this._WHSE59;
    //        }
    //        set
    //        {
    //            if ((this._WHSE59 != value))
    //            {
    //                this._WHSE59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RRYN59", DbType = "Char(1) NOT NULL")]
    //    public char RRYN59
    //    {
    //        get
    //        {
    //            return this._RRYN59;
    //        }
    //        set
    //        {
    //            if ((this._RRYN59 != value))
    //            {
    //                this._RRYN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ADVN59", DbType = "Char(16) NOT NULL", CanBeNull = false)]
    //    public string ADVN59
    //    {
    //        get
    //        {
    //            return this._ADVN59;
    //        }
    //        set
    //        {
    //            if ((this._ADVN59 != value))
    //            {
    //                this._ADVN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_GRNO59", DbType = "Int NOT NULL")]
    //    public int GRNO59
    //    {
    //        get
    //        {
    //            return this._GRNO59;
    //        }
    //        set
    //        {
    //            if ((this._GRNO59 != value))
    //            {
    //                this._GRNO59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RECT59", DbType = "Char(1) NOT NULL")]
    //    public char RECT59
    //    {
    //        get
    //        {
    //            return this._RECT59;
    //        }
    //        set
    //        {
    //            if ((this._RECT59 != value))
    //            {
    //                this._RECT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TRIN59", DbType = "Char(15) NOT NULL", CanBeNull = false)]
    //    public string TRIN59
    //    {
    //        get
    //        {
    //            return this._TRIN59;
    //        }
    //        set
    //        {
    //            if ((this._TRIN59 != value))
    //            {
    //                this._TRIN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TREX59", DbType = "Char(15) NOT NULL", CanBeNull = false)]
    //    public string TREX59
    //    {
    //        get
    //        {
    //            return this._TREX59;
    //        }
    //        set
    //        {
    //            if ((this._TREX59 != value))
    //            {
    //                this._TREX59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SCRC59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string SCRC59
    //    {
    //        get
    //        {
    //            return this._SCRC59;
    //        }
    //        set
    //        {
    //            if ((this._SCRC59 != value))
    //            {
    //                this._SCRC59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DBTN59", DbType = "Char(7) NOT NULL", CanBeNull = false)]
    //    public string DBTN59
    //    {
    //        get
    //        {
    //            return this._DBTN59;
    //        }
    //        set
    //        {
    //            if ((this._DBTN59 != value))
    //            {
    //                this._DBTN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_IVNO59", DbType = "Char(8) NOT NULL", CanBeNull = false)]
    //    public string IVNO59
    //    {
    //        get
    //        {
    //            return this._IVNO59;
    //        }
    //        set
    //        {
    //            if ((this._IVNO59 != value))
    //            {
    //                this._IVNO59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_IVTP59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string IVTP59
    //    {
    //        get
    //        {
    //            return this._IVTP59;
    //        }
    //        set
    //        {
    //            if ((this._IVTP59 != value))
    //            {
    //                this._IVTP59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_IVSP59", DbType = "Char(8) NOT NULL", CanBeNull = false)]
    //    public string IVSP59
    //    {
    //        get
    //        {
    //            return this._IVSP59;
    //        }
    //        set
    //        {
    //            if ((this._IVSP59 != value))
    //            {
    //                this._IVSP59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RECP59", DbType = "Char(1) NOT NULL")]
    //    public char RECP59
    //    {
    //        get
    //        {
    //            return this._RECP59;
    //        }
    //        set
    //        {
    //            if ((this._RECP59 != value))
    //            {
    //                this._RECP59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_INVU59", DbType = "Char(1) NOT NULL")]
    //    public char INVU59
    //    {
    //        get
    //        {
    //            return this._INVU59;
    //        }
    //        set
    //        {
    //            if ((this._INVU59 != value))
    //            {
    //                this._INVU59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PLAN59", DbType = "Decimal(5,0) NOT NULL")]
    //    public decimal PLAN59
    //    {
    //        get
    //        {
    //            return this._PLAN59;
    //        }
    //        set
    //        {
    //            if ((this._PLAN59 != value))
    //            {
    //                this._PLAN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_INCU59", DbType = "Char(1) NOT NULL")]
    //    public char INCU59
    //    {
    //        get
    //        {
    //            return this._INCU59;
    //        }
    //        set
    //        {
    //            if ((this._INCU59 != value))
    //            {
    //                this._INCU59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_GPRT59", DbType = "Char(1) NOT NULL")]
    //    public char GPRT59
    //    {
    //        get
    //        {
    //            return this._GPRT59;
    //        }
    //        set
    //        {
    //            if ((this._GPRT59 != value))
    //            {
    //                this._GPRT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DTYP59", DbType = "Char(1) NOT NULL")]
    //    public char DTYP59
    //    {
    //        get
    //        {
    //            return this._DTYP59;
    //        }
    //        set
    //        {
    //            if ((this._DTYP59 != value))
    //            {
    //                this._DTYP59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_VCOD59", DbType = "Char(3) NOT NULL", CanBeNull = false)]
    //    public string VCOD59
    //    {
    //        get
    //        {
    //            return this._VCOD59;
    //        }
    //        set
    //        {
    //            if ((this._VCOD59 != value))
    //            {
    //                this._VCOD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AQTY59", DbType = "Decimal(11,3) NOT NULL")]
    //    public decimal AQTY59
    //    {
    //        get
    //        {
    //            return this._AQTY59;
    //        }
    //        set
    //        {
    //            if ((this._AQTY59 != value))
    //            {
    //                this._AQTY59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PUOM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string PUOM59
    //    {
    //        get
    //        {
    //            return this._PUOM59;
    //        }
    //        set
    //        {
    //            if ((this._PUOM59 != value))
    //            {
    //                this._PUOM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CFLG59", DbType = "Char(1) NOT NULL")]
    //    public char CFLG59
    //    {
    //        get
    //        {
    //            return this._CFLG59;
    //        }
    //        set
    //        {
    //            if ((this._CFLG59 != value))
    //            {
    //                this._CFLG59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PDAT59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal PDAT59
    //    {
    //        get
    //        {
    //            return this._PDAT59;
    //        }
    //        set
    //        {
    //            if ((this._PDAT59 != value))
    //            {
    //                this._PDAT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SAIT59", DbType = "Char(1) NOT NULL")]
    //    public char SAIT59
    //    {
    //        get
    //        {
    //            return this._SAIT59;
    //        }
    //        set
    //        {
    //            if ((this._SAIT59 != value))
    //            {
    //                this._SAIT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_USER59", DbType = "Char(10) NOT NULL", CanBeNull = false)]
    //    public string USER59
    //    {
    //        get
    //        {
    //            return this._USER59;
    //        }
    //        set
    //        {
    //            if ((this._USER59 != value))
    //            {
    //                this._USER59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DLTF59", DbType = "Char(1) NOT NULL")]
    //    public char DLTF59
    //    {
    //        get
    //        {
    //            return this._DLTF59;
    //        }
    //        set
    //        {
    //            if ((this._DLTF59 != value))
    //            {
    //                this._DLTF59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DAT159", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal DAT159
    //    {
    //        get
    //        {
    //            return this._DAT159;
    //        }
    //        set
    //        {
    //            if ((this._DAT159 != value))
    //            {
    //                this._DAT159 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_FLG159", DbType = "Char(1) NOT NULL")]
    //    public char FLG159
    //    {
    //        get
    //        {
    //            return this._FLG159;
    //        }
    //        set
    //        {
    //            if ((this._FLG159 != value))
    //            {
    //                this._FLG159 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RECL59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string RECL59
    //    {
    //        get
    //        {
    //            return this._RECL59;
    //        }
    //        set
    //        {
    //            if ((this._RECL59 != value))
    //            {
    //                this._RECL59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RECC59", DbType = "Char(3) NOT NULL", CanBeNull = false)]
    //    public string RECC59
    //    {
    //        get
    //        {
    //            return this._RECC59;
    //        }
    //        set
    //        {
    //            if ((this._RECC59 != value))
    //            {
    //                this._RECC59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CONT59", DbType = "Char(20) NOT NULL", CanBeNull = false)]
    //    public string CONT59
    //    {
    //        get
    //        {
    //            return this._CONT59;
    //        }
    //        set
    //        {
    //            if ((this._CONT59 != value))
    //            {
    //                this._CONT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DLIN59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal DLIN59
    //    {
    //        get
    //        {
    //            return this._DLIN59;
    //        }
    //        set
    //        {
    //            if ((this._DLIN59 != value))
    //            {
    //                this._DLIN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_MODR59", DbType = "Char(1) NOT NULL")]
    //    public char MODR59
    //    {
    //        get
    //        {
    //            return this._MODR59;
    //        }
    //        set
    //        {
    //            if ((this._MODR59 != value))
    //            {
    //                this._MODR59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_MODI59", DbType = "Char(1) NOT NULL")]
    //    public char MODI59
    //    {
    //        get
    //        {
    //            return this._MODI59;
    //        }
    //        set
    //        {
    //            if ((this._MODI59 != value))
    //            {
    //                this._MODI59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_MODO59", DbType = "Char(1) NOT NULL")]
    //    public char MODO59
    //    {
    //        get
    //        {
    //            return this._MODO59;
    //        }
    //        set
    //        {
    //            if ((this._MODO59 != value))
    //            {
    //                this._MODO59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_BTBF59", DbType = "Char(1) NOT NULL")]
    //    public char BTBF59
    //    {
    //        get
    //        {
    //            return this._BTBF59;
    //        }
    //        set
    //        {
    //            if ((this._BTBF59 != value))
    //            {
    //                this._BTBF59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PSTC59", DbType = "Char(1) NOT NULL")]
    //    public char PSTC59
    //    {
    //        get
    //        {
    //            return this._PSTC59;
    //        }
    //        set
    //        {
    //            if ((this._PSTC59 != value))
    //            {
    //                this._PSTC59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CTRN59", DbType = "Char(7) NOT NULL", CanBeNull = false)]
    //    public string CTRN59
    //    {
    //        get
    //        {
    //            return this._CTRN59;
    //        }
    //        set
    //        {
    //            if ((this._CTRN59 != value))
    //            {
    //                this._CTRN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CTLN59", DbType = "Decimal(3,0) NOT NULL")]
    //    public decimal CTLN59
    //    {
    //        get
    //        {
    //            return this._CTLN59;
    //        }
    //        set
    //        {
    //            if ((this._CTLN59 != value))
    //            {
    //                this._CTLN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PODD59", DbType = "Char(1) NOT NULL")]
    //    public char PODD59
    //    {
    //        get
    //        {
    //            return this._PODD59;
    //        }
    //        set
    //        {
    //            if ((this._PODD59 != value))
    //            {
    //                this._PODD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_LNCD59", DbType = "Char(3) NOT NULL", CanBeNull = false)]
    //    public string LNCD59
    //    {
    //        get
    //        {
    //            return this._LNCD59;
    //        }
    //        set
    //        {
    //            if ((this._LNCD59 != value))
    //            {
    //                this._LNCD59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TWTO59", DbType = "Decimal(11,4) NOT NULL")]
    //    public decimal TWTO59
    //    {
    //        get
    //        {
    //            return this._TWTO59;
    //        }
    //        set
    //        {
    //            if ((this._TWTO59 != value))
    //            {
    //                this._TWTO59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TWTT59", DbType = "Decimal(11,4) NOT NULL")]
    //    public decimal TWTT59
    //    {
    //        get
    //        {
    //            return this._TWTT59;
    //        }
    //        set
    //        {
    //            if ((this._TWTT59 != value))
    //            {
    //                this._TWTT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_WUOM59", DbType = "Char(2) NOT NULL", CanBeNull = false)]
    //    public string WUOM59
    //    {
    //        get
    //        {
    //            return this._WUOM59;
    //        }
    //        set
    //        {
    //            if ((this._WUOM59 != value))
    //            {
    //                this._WUOM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ASNN59", DbType = "Char(20) NOT NULL", CanBeNull = false)]
    //    public string ASNN59
    //    {
    //        get
    //        {
    //            return this._ASNN59;
    //        }
    //        set
    //        {
    //            if ((this._ASNN59 != value))
    //            {
    //                this._ASNN59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ASNQ59", DbType = "Decimal(11,3) NOT NULL")]
    //    public decimal ASNQ59
    //    {
    //        get
    //        {
    //            return this._ASNQ59;
    //        }
    //        set
    //        {
    //            if ((this._ASNQ59 != value))
    //            {
    //                this._ASNQ59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TTRM59", DbType = "Char(10) NOT NULL", CanBeNull = false)]
    //    public string TTRM59
    //    {
    //        get
    //        {
    //            return this._TTRM59;
    //        }
    //        set
    //        {
    //            if ((this._TTRM59 != value))
    //            {
    //                this._TTRM59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TRDT59", DbType = "Decimal(7,0) NOT NULL")]
    //    public decimal TRDT59
    //    {
    //        get
    //        {
    //            return this._TRDT59;
    //        }
    //        set
    //        {
    //            if ((this._TRDT59 != value))
    //            {
    //                this._TRDT59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TTME59", DbType = "Decimal(6,0) NOT NULL")]
    //    public decimal TTME59
    //    {
    //        get
    //        {
    //            return this._TTME59;
    //        }
    //        set
    //        {
    //            if ((this._TTME59 != value))
    //            {
    //                this._TTME59 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_NROL59", DbType = "Decimal(11,3) NOT NULL")]
    //    public decimal NROL59
    //    {
    //        get
    //        {
    //            return this._NROL59;
    //        }
    //        set
    //        {
    //            if ((this._NROL59 != value))
    //            {
    //                this._NROL59 = value;
    //            }
    //        }
    //    }

    //    private string _ProjectNo;
    //    [Column(Storage = "_ProjectNo", DbType = "nvarchar(20) NULL", CanBeNull = true)]
    //    public string ProjectNo
    //    {
    //        get
    //        {
    //            return this._ProjectNo;
    //        }
    //        set
    //        {
    //            if ((this._ProjectNo != value))
    //            {
    //                this._ProjectNo = value;
    //            }
    //        }
    //    }

    //    private string _Incoterms;
    //    [Column(Storage = "_Incoterms", DbType = "nvarchar(20) NULL", CanBeNull = true)]
    //    public string Incoterms
    //    {
    //        get
    //        {
    //            return this._Incoterms;
    //        }
    //        set
    //        {
    //            if ((this._Incoterms != value))
    //            {
    //                this._Incoterms = value;
    //            }
    //        }
    //    }

    //    private decimal? _PHQty;
    //    [Column(Storage = "_PHQty", DbType = "Decimal(11,5) NULL")]
    //    public decimal? PHQty
    //    {
    //        get
    //        {
    //            return this._PHQty;
    //        }
    //        set
    //        {
    //            if ((this._PHQty != value))
    //            {
    //                this._PHQty = value;
    //            }
    //        }
    //    }

    //    private decimal? _TotalReceivedQty;
    //    [Column(Storage = "_TotalReceivedQty", DbType = "Decimal(11,5) NULL")]
    //    public decimal? TotalReceivedQty
    //    {
    //        get
    //        {
    //            return this._TotalReceivedQty;
    //        }
    //        set
    //        {
    //            if ((this._TotalReceivedQty != value))
    //            {
    //                this._TotalReceivedQty = value;
    //            }
    //        }
    //    }

    //    private decimal? _PHOutstandingQty;
    //    [Column(Storage = "_PHOutstandingQty", DbType = "Decimal(11,5) NULL")]
    //    public decimal? PHOutstandingQty
    //    {
    //        get
    //        {
    //            return this._PHOutstandingQty;
    //        }
    //        set
    //        {
    //            if ((this._PHOutstandingQty != value))
    //            {
    //                this._PHOutstandingQty = value;
    //            }
    //        }
    //    }

    //    private DateTime? _FWDate;
    //    [Column(Storage = "_FWDate", DbType = "DateTime")]
    //    public DateTime? FWDate
    //    {
    //        get
    //        {
    //            return this._FWDate;
    //        }
    //        set
    //        {
    //            if ((this._FWDate != value))
    //            {
    //                this._FWDate = value;
    //            }
    //        }
    //    }

    //    private string _MaterialGroup;
    //    [Column(Storage = "_MaterialGroup", DbType = "varchar(3) NULL", CanBeNull = true)]
    //    public string MaterialGroup
    //    {
    //        get
    //        {
    //            return this._MaterialGroup;
    //        }
    //        set
    //        {
    //            if ((this._MaterialGroup != value))
    //            {
    //                this._MaterialGroup = value;
    //            }
    //        }
    //    }

    //    #region HDO
    //    public HDOGRNStatus HDOGRNStatus
    //    {
    //        get
    //        {
    //            if (this.ReceivedDate.HasValue && this.HDONo == "")
    //                return HDOGRNStatus.Open;
    //            else if (this.HDONo != "" && string.IsNullOrEmpty(this.HDOStatus))
    //                return HDOGRNStatus.Planned;
    //            else if (this.HDONo != "" && this.HDOStatus == "Y" && this.TransferredDate.HasValue)
    //                return HDOGRNStatus.Transferred;
    //            else if (this.HDONo != "" && this.HDOStatus == "Y")
    //                return HDOGRNStatus.Released;
    //            else
    //                return HDOGRNStatus.Receiving;
    //        }
    //        set { value = HDOGRNStatus.Open; }
    //    }
    //    public string HDOHandledBy
    //    {
    //        get
    //        {
    //            switch (this.HDOGRNStatus)
    //            {
    //                case HDOGRNStatus.Open:
    //                    if (this.ADVN59.StartsWith("H"))
    //                        return "Sam Li";
    //                    else if (this.ADVN59.StartsWith("S"))
    //                        return "Fred Au";
    //                    return "Nil";
    //                case HDOGRNStatus.Planned:
    //                    return this.HDOUser;
    //                case HDOGRNStatus.Released:
    //                    return this.ReleasedBy;
    //                case HDOGRNStatus.Transferred:
    //                    return this.TransferredBy;
    //                default:
    //                    return "";
    //            }
    //        }
    //        set { value = ""; }
    //    }
    //    public string HDOHandledDate
    //    {
    //        get
    //        {
    //            switch (this.HDOGRNStatus)
    //            {
    //                case HDOGRNStatus.Open:
    //                    return "Nil";
    //                case HDOGRNStatus.Planned:
    //                    return string.Format("{0:yyyy/MM/dd}", ErpInt2Date((this.HDODate ?? 20150711) - 19000000));
    //                case HDOGRNStatus.Released:
    //                    return string.Format("{0:yyyy/MM/dd}", this.ReleasedDate);
    //                case HDOGRNStatus.Transferred:
    //                    return string.Format("{0:yyyy/MM/dd}", this.TransferredDate);
    //                default:
    //                    return "";
    //            }
    //        }
    //        set { value = ""; }
    //    }
    //    public string HDONo2
    //    {
    //        get
    //        {
    //            return (string.IsNullOrEmpty(this.HDONo)) ? "Nil" : this.HDONo;
    //        }
    //        set { value = ""; }
    //    }

    //    public bool IsCargoReceived
    //    {
    //        get
    //        {
    //            return (this.ReceivedDate.HasValue);
    //        }
    //        set { value = false; }
    //    }
    //    public string CargoReceived
    //    {
    //        get
    //        {
    //            switch (this.HDOGRNStatus)
    //            {
    //                case HDOGRNStatus.Open:
    //                    return "Group A HDO Status - Open";
    //                case HDOGRNStatus.Planned:
    //                    return "Group B HDO Status - Planned";
    //                case HDOGRNStatus.Released:
    //                    return "Group C HDO Status - Released";
    //                case HDOGRNStatus.Transferred:
    //                    return "Group D HDO Status - Transferred";
    //                case HDOGRNStatus.Receiving:
    //                    if (!this.ReceivedDate.HasValue)
    //                    {
    //                        int i = ((this.ETADate ?? DateTime.MinValue) - DateTime.Today).Days;
    //                        if (i > 0) return "Group C: For Coming days";
    //                        else if (i == 0) return "Group B: For Today";
    //                        else return "Group A: For Previous days";
    //                    }
    //                    return "--";
    //                default:
    //                    return "--"; ;
    //            }

    //        }
    //        set { value = ""; }
    //    }

    //    #endregion
    //    #region HDOHandling
    //    //public DateTime? ReleasedDate
    //    //{
    //    //    get
    //    //    {
    //    //        if (string.IsNullOrEmpty(this.HDOStatus)) return (DateTime?)null;

    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //    //        var aa = (from a in _context.HDOHandlings
    //    //                  where a.HDONo == this.HDONo
    //    //                  select new { a.ReleasedDate }).FirstOrDefault();

    //    //        return aa.ReleasedDate;
    //    //    }
    //    //    set { value = DateTime.MinValue; }
    //    //}
    //    //public string ReleasedBy
    //    //{
    //    //    get
    //    //    {
    //    //        if (string.IsNullOrEmpty(this.HDOStatus)) return "";

    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //    //        var aa = (from a in _context.HDOHandlings
    //    //                  where a.HDONo == this.HDONo
    //    //                  select new { a.ReleasedBy }).FirstOrDefault();

    //    //        return aa.ReleasedBy;
    //    //    }
    //    //    set { value = ""; }
    //    //}

    //    //public DateTime? TransferredDate
    //    //{
    //    //    get
    //    //    {
    //    //        if (string.IsNullOrEmpty(this.HDOStatus)) return (DateTime?)null;

    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //    //        var aa = (from a in _context.HDOHandlings
    //    //                  where a.HDONo == this.HDONo
    //    //                  select new { a.TransferredDate }).FirstOrDefault();

    //    //        return aa.TransferredDate;
    //    //    }
    //    //    set { value = DateTime.MinValue; }
    //    //}
    //    //public string TransferredBy
    //    //{
    //    //    get
    //    //    {
    //    //        if (string.IsNullOrEmpty(this.HDOStatus)) return "";

    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //    //        var aa = (from a in _context.HDOHandlings
    //    //                  where a.HDONo == this.HDONo
    //    //                  select new { a.TransferredBy }).FirstOrDefault();

    //    //        return aa.TransferredBy;
    //    //    }
    //    //    set { value = ""; }
    //    //}

    //    private DateTime? _ReleasedDate;
    //    [Column(Storage = "_ReleasedDate", DbType = "DateTime")]
    //    public DateTime? ReleasedDate
    //    {
    //        get
    //        {
    //            return this._ReleasedDate;
    //        }
    //        set
    //        {
    //            if ((this._ReleasedDate != value))
    //            {
    //                this._ReleasedDate = value;
    //            }
    //        }
    //    }

    //    private string _ReleasedBy;
    //    [Column(Storage = "_ReleasedBy", DbType = "varchar(20) NULL", CanBeNull = true)]
    //    public string ReleasedBy
    //    {
    //        get
    //        {
    //            return this._ReleasedBy;
    //        }
    //        set
    //        {
    //            if ((this._ReleasedBy != value))
    //            {
    //                this._ReleasedBy = value;
    //            }
    //        }
    //    }

    //    private DateTime? _TransferredDate;
    //    [Column(Storage = "_TransferredDate", DbType = "DateTime")]
    //    public DateTime? TransferredDate
    //    {
    //        get
    //        {
    //            return this._TransferredDate;
    //        }
    //        set
    //        {
    //            if ((this._TransferredDate != value))
    //            {
    //                this._TransferredDate = value;
    //            }
    //        }
    //    }
    //    private string _TransferredBy;
    //    [Column(Storage = "_TransferredBy", DbType = "varchar(20) NULL", CanBeNull = true)]
    //    public string TransferredBy
    //    {
    //        get
    //        {
    //            return this._TransferredBy;
    //        }
    //        set
    //        {
    //            if ((this._TransferredBy != value))
    //            {
    //                this._TransferredBy = value;
    //            }
    //        }
    //    }

    //    #endregion
    //    #region HDODelivery

    //    private DateTime? _ActualTransitDate;
    //    [Column(Storage = "_ActualTransitDate", DbType = "DateTime")]
    //    public DateTime? ActualTransitDate
    //    {
    //        get
    //        {
    //            return this._ActualTransitDate;
    //        }
    //        set
    //        {
    //            if ((this._ActualTransitDate != value))
    //            {
    //                this._ActualTransitDate = value;
    //            }
    //        }
    //    }

    //    private DateTime? _ETADate;
    //    [Column(Storage = "_ETADate", DbType = "DateTime")]
    //    public DateTime? ETADate
    //    {
    //        get
    //        {
    //            return this._ETADate;
    //        }
    //        set
    //        {
    //            if ((this._ETADate != value))
    //            {
    //                this._ETADate = value;
    //            }
    //        }
    //    }

    //    private DateTime? _ReceivedDate;
    //    [Column(Storage = "_ReceivedDate", DbType = "DateTime")]
    //    public DateTime? ReceivedDate
    //    {
    //        get
    //        {
    //            return this._ReceivedDate;
    //        }
    //        set
    //        {
    //            if ((this._ReceivedDate != value))
    //            {
    //                this._ReceivedDate = value;
    //            }
    //        }
    //    }

    //    //public DateTime? ActualTransitDate
    //    //{
    //    //    get
    //    //    {
    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();

    //    //        var aa = (from a in _context.HDODeliveries
    //    //                  where a.GRNNO == this.GRNO59
    //    //                  select new { a.ActualTransitDate }).FirstOrDefault();

    //    //        return aa.ActualTransitDate;
    //    //    }
    //    //    set { value = DateTime.MinValue; }
    //    //}

    //    //public DateTime? ETADate
    //    //{
    //    //    get
    //    //    {
    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //    //        var aa = (from a in _context.HDODeliveries
    //    //                  where a.GRNNO == this.GRNO59
    //    //                  select new { a.ETADate }).FirstOrDefault();

    //    //        return aa.ETADate;
    //    //    }
    //    //    set { value = DateTime.MinValue; }
    //    //}
    //    //public string Received
    //    //{
    //    //    get
    //    //    {
    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();

    //    //        var aa = (from a in _context.HDODeliveries
    //    //                  where a.GRNNO == this.GRNO59
    //    //                  select new { a.Received }).FirstOrDefault();

    //    //        return (aa.Received ?? false) ? "Y" : "";
    //    //    }
    //    //    set { value = ""; }
    //    //}

    //    //public DateTime? ReceivedDate
    //    //{
    //    //    get
    //    //    {
    //    //        if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //    //        var aa = (from a in _context.HDODeliveries
    //    //                  where a.GRNNO == this.GRNO59
    //    //                  select new { a.ReceivedDate }).FirstOrDefault();

    //    //        return aa.ReceivedDate;
    //    //    }
    //    //    set { value = DateTime.MinValue; }
    //    //}
    //    public string ETADateDesc
    //    {
    //        get
    //        {
    //            DateTime? _ETADate2 = this.ETADate;

    //            string sh = string.Format("{0:-HH}", _ETADate2);
    //            if (_ETADate2.HasValue && _ETADate2.Value.Hour == 0) sh = "--";
    //            return string.Format("{0:MM/dd}{1}", _ETADate2, sh);
    //        }
    //        set { value = ""; }
    //    }
    //    public string ReceivedDateDesc
    //    {
    //        get
    //        {
    //            DateTime? _ReceivedDate = this.ReceivedDate;

    //            string sh = string.Format("{0:-HH}", _ReceivedDate);
    //            if (_ReceivedDate.HasValue && _ReceivedDate.Value.Hour == 0) sh = "--";
    //            return string.Format("{0:MM/dd}{1}", _ReceivedDate, sh);
    //        }
    //        set { value = ""; }
    //    }

    //    #endregion
    //    #region HDOQuantity

    //    private bool? _QtyCompleted;
    //    [Column(Storage = "_QtyCompleted", DbType = "Bit NULL", CanBeNull = true)]
    //    public bool? QtyCompleted
    //    {
    //        get
    //        {
    //            return this._QtyCompleted;
    //        }
    //        set
    //        {
    //            if ((this._QtyCompleted != value))
    //            {
    //                this._QtyCompleted = value;
    //            }
    //        }
    //    }

    //    public string ShptCompleteStatus
    //    {
    //        get
    //        {
    //            //if (_context == null) _context = ContextBuilder.CreateContext<HDODataContext>();
    //            //var aa = (from a in _context.HDOQuantities
    //            //          where a.GRNNO == this.GRNO59 && a.PONO == this.ORDN59 && a.POLine == this.LINE59
    //            //          select new { a.QtyCompleted }).FirstOrDefault();
    //            //return (aa.QtyCompleted ?? false) ? "Y" : "";
    //            return (this.QtyCompleted ?? false) ? "Y" : "";
    //            //return (this.PHOutstandingQty ?? 0) == 0 ? "Y" : "N";
    //        }
    //        set { value = ""; }
    //    }


    //    #endregion
    //    #region QTP64

    //    private string _HDONo;
    //    [Column(Storage = "_HDONo", DbType = "varchar(20) NULL", CanBeNull = true)]
    //    public string HDONo
    //    {
    //        get
    //        {
    //            return this._HDONo;
    //        }
    //        set
    //        {
    //            if ((this._HDONo != value))
    //            {
    //                this._HDONo = value;
    //            }
    //        }
    //    }

    //    private string _HDORemark;
    //    [Column(Storage = "_HDORemark", DbType = "varchar(30) NULL", CanBeNull = true)]
    //    public string HDORemark
    //    {
    //        get
    //        {
    //            return this._HDORemark;
    //        }
    //        set
    //        {
    //            if ((this._HDORemark != value))
    //            {
    //                this._HDORemark = value;
    //            }
    //        }
    //    }

    //    private string _HDOStatus;
    //    [Column(Storage = "_HDOStatus", DbType = "varchar(10) NULL", CanBeNull = true)]
    //    public string HDOStatus
    //    {
    //        get
    //        {
    //            return this._HDOStatus;
    //        }
    //        set
    //        {
    //            if ((this._HDOStatus != value))
    //            {
    //                this._HDOStatus = value;
    //            }
    //        }
    //    }

    //    private string _HDOUser;
    //    [Column(Storage = "_HDOUser", DbType = "varchar(10) NULL", CanBeNull = true)]
    //    public string HDOUser
    //    {
    //        get
    //        {
    //            return this._HDOUser;
    //        }
    //        set
    //        {
    //            if ((this._HDOUser != value))
    //            {
    //                this._HDOUser = value;
    //            }
    //        }
    //    }

    //    private int? _HDODate;
    //    [Column(Storage = "_HDODate", DbType = "Int NULL", CanBeNull = true)]
    //    public int? HDODate
    //    {
    //        get
    //        {
    //            return this._HDODate;
    //        }
    //        set
    //        {
    //            if ((this._HDODate != value))
    //            {
    //                this._HDODate = value;
    //            }
    //        }
    //    }

    //    #endregion


    //    //private DateTime? _ActualTransitDate;
    //    //[Column(Storage = "_ActualTransitDate", DbType = "DateTime")]
    //    //public DateTime? ActualTransitDate
    //    //{
    //    //    get
    //    //    {
    //    //        return this._ActualTransitDate;
    //    //    }
    //    //    set
    //    //    {
    //    //        if ((this._ActualTransitDate != value))
    //    //        {
    //    //            this._ActualTransitDate = value;
    //    //        }
    //    //    }
    //    //}
    //    //private DateTime? _ETADate;
    //    //[Column(Storage = "_ETADate", DbType = "DateTime")]
    //    //public DateTime? ETADate
    //    //{
    //    //    get
    //    //    {
    //    //        return this._ETADate;
    //    //    }
    //    //    set
    //    //    {
    //    //        if ((this._ETADate != value))
    //    //        {
    //    //            this._ETADate = value;
    //    //        }
    //    //    }
    //    //}

    //    public decimal POQty { get { return this.OQTY59 / this.CNVF59; } set { value = 0; } }
    //    public decimal SuppPOQty { get { return decimal.Round((this.PHQty ?? 0) / this.CNVF59, 1, MidpointRounding.AwayFromZero); } set { value = 0; } }
    //    public decimal GRNQty { get { return this.TRNQ59 /*/ this.CNVF59*/; } set { value = 0; } }
    //    public DateTime TransitDate { get { return ErpInt2Date(Convert.ToInt32(this.DUED59)); } set { value = DateTime.MinValue; } }
    //    public DateTime GRNDate { get { return ErpInt2Date(Convert.ToInt32(this.RECD59)); } set { value = DateTime.MinValue; } }
    //    public static DateTime ErpInt2Date(int idt)
    //    {
    //        int dt = idt + 19000000;
    //        int y = dt / 10000;
    //        int m = (dt - y * 10000) / 100;
    //        int d = (dt - y * 10000 - m * 100);
    //        return new DateTime(y, m, d);
    //    }

    //    private HDODataContext _context;

    //    public decimal PastTtlGRNQty
    //    {
    //        get
    //        {
    //            decimal d = (this.TotalReceivedQty ?? 0) - (this.GRNQty);
    //            return d;
    //        }
    //        set { value = 0; }
    //    }
    //    public decimal BalanceQty
    //    {
    //        get
    //        {
    //            return (this.TotalReceivedQty ?? 0) - (this.PHQty ?? 0);
    //        }
    //        set { value = 0; }
    //    }
    //    public string ReceiptLocation
    //    {
    //        get
    //        {
    //            if (string.IsNullOrEmpty(this.ADVN59) || this.ADVN59.Length < 2) return "";

    //            //string[] ss = new string[] { "HK-", "SL-", "CG-", "GG-" };
    //            string[] ss = new string[] { "HI", "SI", "GI", "HD", "SD", "GD" };
    //            string s = this.ADVN59.ToString().Substring(0, 2);
    //            if (ss.Contains(s)) return s;//s.Substring(0, 2);
    //            else return "";
    //        }
    //        set { value = ""; }
    //    }

    //    public string ItemCode
    //    {
    //        get
    //        {
    //            string s = this.ITEM59;
    //            if (string.IsNullOrEmpty(s))
    //                return "";
    //            else
    //            {
    //                string s1 = s.Length > 9 ? string.Format("{0}-{1}", s.Substring(0, 9), s.Substring(9, s.Length - 9)) : s;
    //                return s1;
    //            }
    //        }
    //        set { value = ""; }
    //    }


    //    //public DateTime MinDate { get; set; }
    //    //public DateTime MaxDate { get; set; }
    //    //public int GRNDays { get { return (this.MaxDate - this.MinDate).Days; } set { value = 0; } }
    //}

    [Table(Name = "dbo.stock")]
    public partial class Stock : BaseEntity
    {
        private string _Receiving;

        private string _Invoice;

        private string _Supplier;

        private string _Project;

        private string _Type;

        private string _material;

        private string _Color;

        private string _Size;

        private string _LotNo;

        private System.Nullable<decimal> _Qty;

        private string _UoM;

        private System.Nullable<decimal> _Price;

        private string _Currency;

        private System.Nullable<decimal> _Total;

        private System.Nullable<decimal> _Rate;

        private System.Nullable<decimal> _THBTotal;

        private string _Loc;

        private string _HDO;

        private string _MaterialGroup;

        private string _IDInvoice;

        private string _PONO;

        private string _ItemCode;

        public Stock()
        {
        }

        [Column(Storage = "_Receiving", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Receiving
        {
            get
            {
                return this._Receiving;
            }
            set
            {
                if ((this._Receiving != value))
                {
                    this._Receiving = value;
                }
            }
        }

        [Column(Storage = "_Invoice", DbType = "VarChar(20)")]
        public string Invoice
        {
            get
            {
                if (!string.IsNullOrEmpty(this.IDInvoice))
                {
                    return this.IDInvoice;
                }
                else
                {
                    return this._Invoice; ;
                }
            }
            set
            {
                if ((this._Invoice != value))
                {
                    this._Invoice = value;
                }
            }
        }
        [Column(Storage = "_IDInvoice", DbType = "VarChar(20)")]
        public string IDInvoice
        {
            get
            {
                return this._IDInvoice;
            }
            set
            {
                if ((this._IDInvoice != value))
                {
                    this._IDInvoice = value;
                }
            }
        }

        [Column(Storage = "_Supplier", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Supplier
        {
            get
            {
                return (!string.IsNullOrEmpty(this.Invoice) && this.Invoice.StartsWith("AD")) ? "PHHK" :
                    (string.IsNullOrEmpty(this._Supplier) && this.PONO.StartsWith("TH-")) ? "Allbest" :
                    (string.IsNullOrEmpty(this._Supplier) && this.PONO.StartsWith("100")) ? "Sangpaiboon" : this._Supplier;
            }
            set
            {
                if ((this._Supplier != value))
                {
                    this._Supplier = value;
                }
            }
        }

        [Column(Storage = "_Project", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Project
        {
            get
            {
                return this._Project;
            }
            set
            {
                if ((this._Project != value))
                {
                    this._Project = value;
                }
            }
        }

        [Column(Storage = "_Type", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Type
        {
            get
            {
                return this._Type;
            }
            set
            {
                if ((this._Type != value))
                {
                    this._Type = value;
                }
            }
        }

        [Column(Storage = "_material", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string material
        {
            get
            {
                return this._material;
            }
            set
            {
                if ((this._material != value))
                {
                    this._material = value;
                }
            }
        }

        [Column(Storage = "_Size", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Size
        {
            get
            {
                return this._Size;
            }
            set
            {
                if ((this._Size != value))
                {
                    this._Size = value;
                }
            }
        }

        [Column(Storage = "_LotNo", DbType = "VarChar(40) NOT NULL", CanBeNull = false)]
        public string LotNo
        {
            get
            {
                return this._LotNo;
            }
            set
            {
                if ((this._LotNo != value))
                {
                    this._LotNo = value;
                }
            }
        }

        [Column(Storage = "_UoM", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string UoM
        {
            get
            {
                return this._UoM;
            }
            set
            {
                if ((this._UoM != value))
                {
                    this._UoM = value;
                }
            }
        }


        [Column(Storage = "_Color", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Color
        {
            get
            {
                return this._Color;
            }
            set
            {
                if ((this._Color != value))
                {
                    this._Color = value;
                }
            }
        }

        [Column(Storage = "_Currency", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Currency
        {
            get
            {
                return this._Currency;
            }
            set
            {
                if ((this._Currency != value))
                {
                    this._Currency = value;
                }
            }
        }

        [Column(Storage = "_Qty", DbType = "Decimal(11,2)")]
        public System.Nullable<decimal> Qty
        {
            get
            {
                return this._Qty;
            }
            set
            {
                if ((this._Qty != value))
                {
                    this._Qty = value;
                }
            }
        }

        [Column(Storage = "_Price", DbType = "Decimal(11,4)")]
        public System.Nullable<decimal> Price
        {
            get
            {
                return this._Price;
            }
            set
            {
                if ((this._Price != value))
                {
                    this._Price = value;
                }
            }
        }

        [Column(Storage = "_Total", DbType = "Decimal(11,2)")]
        public System.Nullable<decimal> Total
        {
            get
            {
                return this._Total;
            }
            set
            {
                if ((this._Total != value))
                {
                    this._Total = value;
                }
            }
        }

        [Column(Storage = "_Rate", DbType = "Decimal(11,2)")]
        public System.Nullable<decimal> Rate
        {
            get
            {
                return this._Rate;
            }
            set
            {
                if ((this._Rate != value))
                {
                    this._Rate = value;
                }
            }
        }

        [Column(Storage = "_THBTotal", DbType = "Decimal(11,2)")]
        public System.Nullable<decimal> THBTotal
        {
            //get
            //{
            //    return this._THBTotal;
            //}
            //set
            //{
            //    if ((this._THBTotal != value))
            //    {
            //        this._THBTotal = value;
            //    }
            //}
            get
            {
                return this.Total * this.Rate;
            }
        }

        [Column(Storage = "_Loc", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Loc
        {
            get
            {
                return this._Loc;
            }
            set
            {
                if ((this._Loc != value))
                {
                    this._Loc = value;
                }
            }
        }

        [Column(Storage = "_MaterialGroup", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string MaterialGroup
        {
            get
            {
                return this._MaterialGroup;
            }
            set
            {
                if ((this._MaterialGroup != value))
                {
                    this._MaterialGroup = value;
                }
            }
        }

        [Column(Storage = "_HDO", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string HDO
        {
            get
            {
                return this._HDO;
            }
            set
            {
                if ((this._HDO != value))
                {
                    this._HDO = value;
                }
            }
        }
        [Column(Storage = "_PONO", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string PONO
        {
            get
            {
                return this._PONO;
            }
            set
            {
                if ((this._PONO != value))
                {
                    this._PONO = value;
                }
            }
        }

        [Column(Storage = "_ItemCode", DbType = "VarChar(40) NOT NULL", CanBeNull = false)]
        public string ItemCode
        {
            get
            {
                return this._ItemCode;
            }
            set
            {
                if ((this._ItemCode != value))
                {
                    this._ItemCode = value;
                }
            }
        }
    }

    [Table(Name = "dbo.StockInfoOut")]
    public partial class StockInfoOut : BaseEntity
    {
        private string _Date;

        private string _PO_number;

        private string _Invoice;

        private string _Supplier;

        private string _Project_No;

        private string _Material_name;

        private string _Material_Art;

        private string _Material_Group;

        private string _Type;

        private string _Received;

        private string _Color;

        private string _Size;

        private string _Lot_no;

        private int _Qty;

        private string _Uom;

        private string _Price;

        private string _Currency;

        private System.Nullable<decimal> _Total;

        private string _Rate;

        private System.Nullable<decimal> _Total_THB;

        private string _USE_FULL;

        private string _Loc;

        private string _Unit;

        private string _Status;

        public StockInfoOut()
        {
        }

        [Column(Storage = "_Type", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Type
        {
            get
            {
                return this._Type;
            }
            set
            {
                if ((this._Type != value))
                {
                    this._Type = value;
                }
            }
        }

        [Column(Storage = "_Date", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Date
        {
            get
            {
                return this._Date;
            }
            set
            {
                if ((this._Date != value))
                {
                    this._Date = value;
                }
            }
        }
        [Column(Storage = "_Invoice", DbType = "VarChar(30)")]
        public string Invoice
        {
            get
            {
                return this._Invoice;
            }
            set
            {
                if ((this._Invoice != value))
                {
                    this._Invoice = value;
                }
            }
        }


        [Column(Storage = "_PO_number", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string PO_number
        {
            get
            {
                return this._PO_number;
            }
            set
            {
                if ((this._PO_number != value))
                {
                    this._PO_number = value;
                }
            }
        }

        [Column(Storage = "_Supplier", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Supplier
        {
            get
            {
                return this._Supplier;
            }
            set
            {
                if ((this._Supplier != value))
                {
                    this._Supplier = value;
                }
            }
        }

        [Column(Storage = "_Project_No", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Project_No
        {
            get
            {
                return this._Project_No;
            }
            set
            {
                if ((this._Project_No != value))
                {
                    this._Project_No = value;
                }
            }
        }

        [Column(Storage = "_Material_name", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Material_name
        {
            get
            {
                return this._Material_name;
            }
            set
            {
                if ((this._Material_name != value))
                {
                    this._Material_name = value;
                }
            }
        }

        [Column(Storage = "_Material_Art", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Material_Art
        {
            get
            {
                return this._Material_Art;
            }
            set
            {
                if ((this._Material_Art != value))
                {
                    this._Material_Art = value;
                }
            }
        }

        [Column(Storage = "_Material_Group", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
        public string Material_Group
        {
            get
            {
                return this._Material_Group;
            }
            set
            {
                if ((this._Material_Group != value))
                {
                    this._Material_Group = value;
                }
            }
        }

        [Column(Storage = "_Received", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Received
        {
            get
            {
                return this._Received;
            }
            set
            {
                if ((this._Received != value))
                {
                    this._Received = value;
                }
            }
        }


        [Column(Storage = "_Color", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Color
        {
            get
            {
                return this._Color;
            }
            set
            {
                if ((this._Color != value))
                {
                    this._Color = value;
                }
            }
        }


        [Column(Storage = "_Size", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Size
        {
            get
            {
                return this._Size;
            }
            set
            {
                if ((this._Size != value))
                {
                    this._Size = value;
                }
            }
        }

        [Column(Storage = "_Lot_no", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Lot_no
        {
            get
            {
                return this._Lot_no;
            }
            set
            {
                if ((this._Lot_no != value))
                {
                    this._Lot_no = value;
                }
            }
        }

        [Column(Storage = "_Qty", DbType = "int", CanBeNull = false)]
        public int Qty
        {
            get
            {
                return this._Qty;
            }
            set
            {
                if ((this._Qty != value))
                {
                    this._Qty = value;
                }
            }
        }

        [Column(Storage = "_Uom", DbType = "VarChar(20) ", CanBeNull = false)]
        public string Uom
        {
            get
            {
                return this._Uom;
            }
            set
            {
                if ((this._Uom != value))
                {
                    this._Uom = value;
                }
            }
        }

        [Column(Storage = "_Price", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Price
        {
            get
            {
                return this._Price;
            }
            set
            {
                if ((this._Price != value))
                {
                    this._Price = value;
                }
            }
        }

        [Column(Storage = "_Currency", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Currency
        {
            get
            {
                return this._Currency;
            }
            set
            {
                if ((this._Currency != value))
                {
                    this._Currency = value;
                }
            }
        }

        [Column(Storage = "_Total", DbType = "Decimal(18,3)", CanBeNull = false)]
        public System.Nullable<decimal> Total
        {
            get
            {
                return this._Total;
            }
            set
            {
                if ((this._Total != value))
                {
                    this._Total = value;
                }
            }
        }

        [Column(Storage = "_Rate", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Rate
        {
            get
            {
                return this._Rate;
            }
            set
            {
                if ((this._Rate != value))
                {
                    this._Rate = value;
                }
            }
        }
        [Column(Storage = "_Total_THB", DbType = "Decimal(18,3)", CanBeNull = false)]
        public System.Nullable<decimal> Total_THB
        {
            get
            {
                return this._Total_THB;
            }
            set
            {
                if ((this._Total_THB != value))
                {
                    this._Total_THB = value;
                }
            }
        }

        [Column(Storage = "_USE_FULL", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string USE_FULL
        {
            get
            {
                return this._USE_FULL;
            }
            set
            {
                if ((this._USE_FULL != value))
                {
                    this._USE_FULL = value;
                }
            }
        }

        [Column(Storage = "_Loc", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Loc
        {
            get
            {
                return this._Loc;
            }
            set
            {
                if ((this._Loc != value))
                {
                    this._Loc = value;
                }
            }
        }
        [Column(Storage = "_Unit", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Unit
        {
            get
            {
                return this._Unit;
            }
            set
            {
                if ((this._Unit != value))
                {
                    this._Unit = value;
                }
            }
        }
        [Column(Storage = "_Status", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        public string Status
        {
            get
            {
                return this._Status;
            }
            set
            {
                if ((this._Status != value))
                {
                    this._Status = value;
                }
            }
        }
    }

    [Table(Name = "dbo.HDOSummary")]
    public partial class HDOSummary : BaseEntity
    {
        private string _Category;

        private System.Nullable<decimal> _Half;

        private System.Nullable<decimal> _HalfToOne;

        private System.Nullable<decimal> _OneToHalfThree;

        private System.Nullable<decimal> _HalfThreeToTwo;

        private System.Nullable<decimal> _TwoToThree;

        private System.Nullable<decimal> _ThreeToFour;

        private System.Nullable<decimal> _Four;

        private System.Nullable<decimal> _Total;

        public HDOSummary()
        {
        }

        [Column(Storage = "_Category", DbType = "VARCHAR(20) NOT NULL")]
        public string Category
        {
            get
            {
                return this._Category;
            }
            set
            {
                if ((this._Category != value))
                {
                    this._Category = value;
                }
            }
        }

        [Column(Storage = "_Half", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> Half
        {
            get
            {
                return this._Half;
            }
            set
            {
                if ((this._Half != value))
                {
                    this._Half = value;
                }
            }
        }

        [Column(Storage = "_HalfToOne", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> HalfToOne
        {
            get
            {
                return this._HalfToOne;
            }
            set
            {
                if ((this._HalfToOne != value))
                {
                    this._HalfToOne = value;
                }
            }
        }
        [Column(Storage = "_OneToHalfThree", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> OneToHalfThree
        {
            get
            {
                return this._OneToHalfThree;
            }
            set
            {
                if ((this._OneToHalfThree != value))
                {
                    this._OneToHalfThree = value;
                }
            }
        }
        [Column(Storage = "_HalfThreeToTwo", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> HalfThreeToTwo
        {
            get
            {
                return this._HalfThreeToTwo;
            }
            set
            {
                if ((this._HalfThreeToTwo != value))
                {
                    this._HalfThreeToTwo = value;
                }
            }
        }
        [Column(Storage = "_TwoToThree", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> TwoToThree
        {
            get
            {
                return this._TwoToThree;
            }
            set
            {
                if ((this._TwoToThree != value))
                {
                    this._TwoToThree = value;
                }
            }
        }
        [Column(Storage = "_ThreeToFour", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> ThreeToFour
        {
            get
            {
                return this._ThreeToFour;
            }
            set
            {
                if ((this._ThreeToFour != value))
                {
                    this._ThreeToFour = value;
                }
            }
        }
        [Column(Storage = "_Four", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> Four
        {
            get
            {
                return this._Four;
            }
            set
            {
                if ((this._Four != value))
                {
                    this._Four = value;
                }
            }
        }
        [Column(Storage = "_Total", DbType = "Decimal(18,2)")]
        public System.Nullable<decimal> Total
        {
            get
            {
                return this._Total;
            }
            set
            {
                if ((this._Total != value))
                {
                    this._Total = value;
                }
            }
        }
    }

    public class DicList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string DataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == DataType
                        orderby a.DataCode
                        select a;
            return lists;
        }
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionaryOrderByName(string DataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == DataType
                        orderby a.DataName
                        select a;
            return lists;
        }

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string DataType, string DataCode)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == DataType && a.DataCode == DataCode
                       select a).FirstOrDefault();
            return dic;

        }
    }
    public enum PODType
    {
        ALL,
        HKCCS,
        SLCRS
    }
    public enum HDOGRNStatus
    {
        Receiving,
        Open,
        Planned,
        Released,
        Transferred
    }
    public enum GRNReportType
    {
        None,
        ReceivingALL,
        ReceivingSL,
        ReceivingHK,

        ReceivedALL,
        ReceivedSL,
        ReceivedHK,

        //-------ChandlerXiao20160325:add for HDO with HSCode for Packing--------
        ReceivedPackingSummary,
        ReceivedPackingDetail,
        //-----------------------------------------------------------------------

        //金关二期用的HDO Summary报表， 由david加入 2019-07-15
        HSHDOSummary
    }


    public partial class HDOTempBO
    {

        private char _ACRC59;

        private string _CONO59;

        private string _ORDN59;

        private decimal _LINE59;

        private decimal _BRS_59;

        private string _VNDR59;

        private decimal _OCLS59;

        private string _VCAT59;

        private string _ITEM59;

        private string _ITCL59;

        private string _NOMM59;

        private decimal _OQTY59;

        private string _OUOM59;

        private decimal _TRNQ59;

        private string _RUOM59;

        private string _IUOM59;

        private decimal _CNVF59;

        private string _SUOM59;

        private string _PRUM59;

        private decimal _DUED59;

        private decimal _RECD59;

        private decimal _INVD59;

        private decimal _GITD59;

        private decimal _EXPD59;

        private decimal _ORDP59;

        private decimal _IPRC59;

        private string _CURN59;

        private decimal _CRTR59;

        private decimal _CRTI59;

        private decimal _CRTO59;

        private string _WHSE59;

        private char _RRYN59;

        private string _ADVN59;

        private int _GRNO59;

        private char _RECT59;

        private string _TRIN59;

        private string _TREX59;

        private string _SCRC59;

        private string _DBTN59;

        private string _IVNO59;

        private string _IVTP59;

        private string _IVSP59;

        private char _RECP59;

        private char _INVU59;

        private string _PLAN59;

        private char _INCU59;

        private char _GPRT59;

        private char _DTYP59;

        private string _VCOD59;

        private decimal _AQTY59;

        private string _PUOM59;

        private char _CFLG59;

        private decimal _PDAT59;

        private char _SAIT59;

        private string _USER59;

        private char _DLTF59;

        private decimal _DAT159;

        private char _FLG159;

        private string _RECL59;

        private string _RECC59;

        private string _CONT59;

        private decimal _DLIN59;

        private char _MODR59;

        private char _MODI59;

        private char _MODO59;

        private char _BTBF59;

        private char _PSTC59;

        private string _CTRN59;

        private decimal _CTLN59;

        private char _PODD59;

        private string _LNCD59;

        private decimal _TWTO59;

        private decimal _TWTT59;

        private string _WUOM59;

        private string _ASNN59;

        private decimal _ASNQ59;

        private decimal _ORDP59ByHK;


        private string _TTRM59;

        private decimal _TRDT59;

        private decimal _TTME59;

        private decimal _NROL59;
        private string _VAT;

        private decimal? _CBM;


        private string _Checked;


        private decimal _CRRT81;

        public decimal CRRT81
        {
            get
            {
                return this._CRRT81;
            }
            set
            {
                if ((this._CRRT81 != value))
                {
                    this._CRRT81 = value;
                }
            }
        }


        public string Checked
        {
            get
            {
                return this._Checked;
            }
            set
            {
                if ((this._Checked != value))
                {
                    this._Checked = value;
                }
            }
        }


        public decimal? TranistQty
        {
            get
            {

                return 1.0000m * this.GRNQty / CNVF59;
            }
            set { value = null; }
        }


        public System.Nullable<decimal> CBM
        {
            get
            {
                return this._CBM;
            }
            set
            {
                if ((this._CBM != value))
                {
                    this._CBM = value;
                }
            }
        }


        public HDOTempBO()
        {
        }

        public string VAT
        {
            get
            {
                return this._VAT;
            }
            set
            {
                if ((this._VAT != value))
                {
                    this._VAT = value;
                }
            }
        }

        public char ACRC59
        {
            get
            {
                return this._ACRC59;
            }
            set
            {
                if ((this._ACRC59 != value))
                {
                    this._ACRC59 = value;
                }
            }
        }


        public string CONO59
        {
            get
            {
                return this._CONO59;
            }
            set
            {
                if ((this._CONO59 != value))
                {
                    this._CONO59 = value;
                }
            }
        }

        public string ORDN59
        {
            get
            {
                return this._ORDN59;
            }
            set
            {
                if ((this._ORDN59 != value))
                {
                    this._ORDN59 = value;
                }
            }
        }


        public decimal LINE59
        {
            get
            {
                return this._LINE59;
            }
            set
            {
                if ((this._LINE59 != value))
                {
                    this._LINE59 = value;
                }
            }
        }


        public decimal BRS_59
        {
            get
            {
                return this._BRS_59;
            }
            set
            {
                if ((this._BRS_59 != value))
                {
                    this._BRS_59 = value;
                }
            }
        }

        public string VNDR59
        {
            get
            {
                return this._VNDR59;
            }
            set
            {
                if ((this._VNDR59 != value))
                {
                    this._VNDR59 = value;
                }
            }
        }


        public decimal OCLS59
        {
            get
            {
                return this._OCLS59;
            }
            set
            {
                if ((this._OCLS59 != value))
                {
                    this._OCLS59 = value;
                }
            }
        }


        public string VCAT59
        {
            get
            {
                return this._VCAT59;
            }
            set
            {
                if ((this._VCAT59 != value))
                {
                    this._VCAT59 = value;
                }
            }
        }


        public string ITEM59
        {
            get
            {
                return this._ITEM59;
            }
            set
            {
                if ((this._ITEM59 != value))
                {
                    this._ITEM59 = value;
                }
            }
        }

        public string ITCL59
        {
            get
            {
                return this._ITCL59;
            }
            set
            {
                if ((this._ITCL59 != value))
                {
                    this._ITCL59 = value;
                }
            }
        }


        public string NOMM59
        {
            get
            {
                return this._NOMM59;
            }
            set
            {
                if ((this._NOMM59 != value))
                {
                    this._NOMM59 = value;
                }
            }
        }


        public decimal OQTY59
        {
            get
            {
                return this._OQTY59;
            }
            set
            {
                if ((this._OQTY59 != value))
                {
                    this._OQTY59 = value;
                }
            }
        }


        public string OUOM59
        {
            get
            {
                return this._OUOM59;
            }
            set
            {
                if ((this._OUOM59 != value))
                {
                    this._OUOM59 = value;
                }
            }
        }


        public decimal TRNQ59
        {
            get
            {
                return this._TRNQ59;
            }
            set
            {
                if ((this._TRNQ59 != value))
                {
                    this._TRNQ59 = value;
                }
            }
        }


        public string RUOM59
        {
            get
            {
                return this._RUOM59;
            }
            set
            {
                if ((this._RUOM59 != value))
                {
                    this._RUOM59 = value;
                }
            }
        }


        public string IUOM59
        {
            get
            {
                return this._IUOM59;
            }
            set
            {
                if ((this._IUOM59 != value))
                {
                    this._IUOM59 = value;
                }
            }
        }

        public decimal CNVF59
        {
            get
            {
                return this._CNVF59;
            }
            set
            {
                if ((this._CNVF59 != value))
                {
                    this._CNVF59 = value;
                }
            }
        }


        public string SUOM59
        {
            get
            {
                return this._SUOM59;
            }
            set
            {
                if ((this._SUOM59 != value))
                {
                    this._SUOM59 = value;
                }
            }
        }


        public string PRUM59
        {
            get
            {
                return this._PRUM59;
            }
            set
            {
                if ((this._PRUM59 != value))
                {
                    this._PRUM59 = value;
                }
            }
        }


        public decimal DUED59
        {
            get
            {
                return this._DUED59;
            }
            set
            {
                if ((this._DUED59 != value))
                {
                    this._DUED59 = value;
                }
            }
        }


        public decimal RECD59
        {
            get
            {
                return this._RECD59;
            }
            set
            {
                if ((this._RECD59 != value))
                {
                    this._RECD59 = value;
                }
            }
        }


        public decimal INVD59
        {
            get
            {
                return this._INVD59;
            }
            set
            {
                if ((this._INVD59 != value))
                {
                    this._INVD59 = value;
                }
            }
        }


        public decimal GITD59
        {
            get
            {
                return this._GITD59;
            }
            set
            {
                if ((this._GITD59 != value))
                {
                    this._GITD59 = value;
                }
            }
        }

        public decimal EXPD59
        {
            get
            {
                return this._EXPD59;
            }
            set
            {
                if ((this._EXPD59 != value))
                {
                    this._EXPD59 = value;
                }
            }
        }

        //Add by shulin 20220608
        public decimal ORDP59ByHK
        {
            get
            {
                return this._CRTR59 * this._ORDP59;
            }
            set
            {
                if ((this._ORDP59ByHK != value))
                {
                    this._ORDP59ByHK = value;
                }
            }
        }

        public decimal CRRT81Show
        {
            get
            {
                return this._CRTR59 * this._ORDP59 / CNVF59 / CRRT81;
            }
            set
            {
                if ((this.CRRT81Show != value))
                {
                    this.CRRT81Show = value;
                }
            }
        }


        public decimal CurrConvertRateShow
        {
            get
            {
                return _CRTO59==0?0:this.CRRT81 / this._CRTO59;
            }
            set
            {
                if ((this.CurrConvertRateShow != value))
                {
                    this.CurrConvertRateShow = value;
                }
            }
        }


        public decimal ORDP59
        {
            get
            {
                return this._ORDP59;
            }
            set
            {
                if ((this._ORDP59 != value))
                {
                    this._ORDP59 = value;
                }
            }
        }

        public decimal IPRC59
        {
            get
            {
                return this._IPRC59;
            }
            set
            {
                if ((this._IPRC59 != value))
                {
                    this._IPRC59 = value;
                }
            }
        }

        public string CURN59
        {
            get
            {
                return this._CURN59;
            }
            set
            {
                if ((this._CURN59 != value))
                {
                    this._CURN59 = value;
                }
            }
        }


        public decimal CRTR59
        {
            get
            {
                return this._CRTR59;
            }
            set
            {
                if ((this._CRTR59 != value))
                {
                    this._CRTR59 = value;
                }
            }
        }


        public decimal CRTI59
        {
            get
            {
                return this._CRTI59;
            }
            set
            {
                if ((this._CRTI59 != value))
                {
                    this._CRTI59 = value;
                }
            }
        }

        public decimal CRTO59
        {
            get
            {
                return this._CRTO59;
            }
            set
            {
                if ((this._CRTO59 != value))
                {
                    this._CRTO59 = value;
                }
            }
        }


        public string WHSE59
        {
            get
            {
                return this._WHSE59;
            }
            set
            {
                if ((this._WHSE59 != value))
                {
                    this._WHSE59 = value;
                }
            }
        }


        public char RRYN59
        {
            get
            {
                return this._RRYN59;
            }
            set
            {
                if ((this._RRYN59 != value))
                {
                    this._RRYN59 = value;
                }
            }
        }


        public string ADVN59
        {
            get
            {
                return this._ADVN59;
            }
            set
            {
                if ((this._ADVN59 != value))
                {
                    this._ADVN59 = value;
                }
            }
        }


        public int GRNO59
        {
            get
            {
                return this._GRNO59;
            }
            set
            {
                if ((this._GRNO59 != value))
                {
                    this._GRNO59 = value;
                }
            }
        }


        public char RECT59
        {
            get
            {
                return this._RECT59;
            }
            set
            {
                if ((this._RECT59 != value))
                {
                    this._RECT59 = value;
                }
            }
        }

        public string TRIN59
        {
            get
            {
                return this._TRIN59;
            }
            set
            {
                if ((this._TRIN59 != value))
                {
                    this._TRIN59 = value;
                }
            }
        }

        public string TREX59
        {
            get
            {
                return this._TREX59;
            }
            set
            {
                if ((this._TREX59 != value))
                {
                    this._TREX59 = value;
                }
            }
        }

        public string SCRC59
        {
            get
            {
                return this._SCRC59;
            }
            set
            {
                if ((this._SCRC59 != value))
                {
                    this._SCRC59 = value;
                }
            }
        }


        public string DBTN59
        {
            get
            {
                return this._DBTN59;
            }
            set
            {
                if ((this._DBTN59 != value))
                {
                    this._DBTN59 = value;
                }
            }
        }

        public string IVNO59
        {
            get
            {
                return this._IVNO59;
            }
            set
            {
                if ((this._IVNO59 != value))
                {
                    this._IVNO59 = value;
                }
            }
        }


        public string IVTP59
        {
            get
            {
                return this._IVTP59;
            }
            set
            {
                if ((this._IVTP59 != value))
                {
                    this._IVTP59 = value;
                }
            }
        }


        public string IVSP59
        {
            get
            {
                return this._IVSP59;
            }
            set
            {
                if ((this._IVSP59 != value))
                {
                    this._IVSP59 = value;
                }
            }
        }


        public char RECP59
        {
            get
            {
                return this._RECP59;
            }
            set
            {
                if ((this._RECP59 != value))
                {
                    this._RECP59 = value;
                }
            }
        }


        public char INVU59
        {
            get
            {
                return this._INVU59;
            }
            set
            {
                if ((this._INVU59 != value))
                {
                    this._INVU59 = value;
                }
            }
        }


        public string PLAN59
        {
            get
            {
                return this._PLAN59;
            }
            set
            {
                if ((this._PLAN59 != value))
                {
                    this._PLAN59 = value;
                }
            }
        }


        public char INCU59
        {
            get
            {
                return this._INCU59;
            }
            set
            {
                if ((this._INCU59 != value))
                {
                    this._INCU59 = value;
                }
            }
        }


        public char GPRT59
        {
            get
            {
                return this._GPRT59;
            }
            set
            {
                if ((this._GPRT59 != value))
                {
                    this._GPRT59 = value;
                }
            }
        }

        public char DTYP59
        {
            get
            {
                return this._DTYP59;
            }
            set
            {
                if ((this._DTYP59 != value))
                {
                    this._DTYP59 = value;
                }
            }
        }

        public string VCOD59
        {
            get
            {
                return this._VCOD59;
            }
            set
            {
                if ((this._VCOD59 != value))
                {
                    this._VCOD59 = value;
                }
            }
        }

        public decimal AQTY59
        {
            get
            {
                return this._AQTY59;
            }
            set
            {
                if ((this._AQTY59 != value))
                {
                    this._AQTY59 = value;
                }
            }
        }

        public string PUOM59
        {
            get
            {
                return this._PUOM59;
            }
            set
            {
                if ((this._PUOM59 != value))
                {
                    this._PUOM59 = value;
                }
            }
        }


        public char CFLG59
        {
            get
            {
                return this._CFLG59;
            }
            set
            {
                if ((this._CFLG59 != value))
                {
                    this._CFLG59 = value;
                }
            }
        }

        public decimal PDAT59
        {
            get
            {
                return this._PDAT59;
            }
            set
            {
                if ((this._PDAT59 != value))
                {
                    this._PDAT59 = value;
                }
            }
        }

        public char SAIT59
        {
            get
            {
                return this._SAIT59;
            }
            set
            {
                if ((this._SAIT59 != value))
                {
                    this._SAIT59 = value;
                }
            }
        }


        public string USER59
        {
            get
            {
                return this._USER59;
            }
            set
            {
                if ((this._USER59 != value))
                {
                    this._USER59 = value;
                }
            }
        }


        public char DLTF59
        {
            get
            {
                return this._DLTF59;
            }
            set
            {
                if ((this._DLTF59 != value))
                {
                    this._DLTF59 = value;
                }
            }
        }


        public decimal DAT159
        {
            get
            {
                return this._DAT159;
            }
            set
            {
                if ((this._DAT159 != value))
                {
                    this._DAT159 = value;
                }
            }
        }


        public char FLG159
        {
            get
            {
                return this._FLG159;
            }
            set
            {
                if ((this._FLG159 != value))
                {
                    this._FLG159 = value;
                }
            }
        }


        public string RECL59
        {
            get
            {
                return this._RECL59;
            }
            set
            {
                if ((this._RECL59 != value))
                {
                    this._RECL59 = value;
                }
            }
        }


        public string RECC59
        {
            get
            {
                return this._RECC59;
            }
            set
            {
                if ((this._RECC59 != value))
                {
                    this._RECC59 = value;
                }
            }
        }

        public string CONT59
        {
            get
            {
                return this._CONT59;
            }
            set
            {
                if ((this._CONT59 != value))
                {
                    this._CONT59 = value;
                }
            }
        }


        public decimal DLIN59
        {
            get
            {
                return this._DLIN59;
            }
            set
            {
                if ((this._DLIN59 != value))
                {
                    this._DLIN59 = value;
                }
            }
        }


        public char MODR59
        {
            get
            {
                return this._MODR59;
            }
            set
            {
                if ((this._MODR59 != value))
                {
                    this._MODR59 = value;
                }
            }
        }


        public char MODI59
        {
            get
            {
                return this._MODI59;
            }
            set
            {
                if ((this._MODI59 != value))
                {
                    this._MODI59 = value;
                }
            }
        }


        public char MODO59
        {
            get
            {
                return this._MODO59;
            }
            set
            {
                if ((this._MODO59 != value))
                {
                    this._MODO59 = value;
                }
            }
        }

        public char BTBF59
        {
            get
            {
                return this._BTBF59;
            }
            set
            {
                if ((this._BTBF59 != value))
                {
                    this._BTBF59 = value;
                }
            }
        }


        public char PSTC59
        {
            get
            {
                return this._PSTC59;
            }
            set
            {
                if ((this._PSTC59 != value))
                {
                    this._PSTC59 = value;
                }
            }
        }


        public string CTRN59
        {
            get
            {
                return this._CTRN59;
            }
            set
            {
                if ((this._CTRN59 != value))
                {
                    this._CTRN59 = value;
                }
            }
        }


        public decimal CTLN59
        {
            get
            {
                return this._CTLN59;
            }
            set
            {
                if ((this._CTLN59 != value))
                {
                    this._CTLN59 = value;
                }
            }
        }


        public char PODD59
        {
            get
            {
                return this._PODD59;
            }
            set
            {
                if ((this._PODD59 != value))
                {
                    this._PODD59 = value;
                }
            }
        }

        public string LNCD59
        {
            get
            {
                return this._LNCD59;
            }
            set
            {
                if ((this._LNCD59 != value))
                {
                    this._LNCD59 = value;
                }
            }
        }

        public decimal TWTO59
        {
            get
            {
                return this._TWTO59;
            }
            set
            {
                if ((this._TWTO59 != value))
                {
                    this._TWTO59 = value;
                }
            }
        }


        public decimal TWTT59
        {
            get
            {
                return this._TWTT59;
            }
            set
            {
                if ((this._TWTT59 != value))
                {
                    this._TWTT59 = value;
                }
            }
        }

        public string WUOM59
        {
            get
            {
                return this._WUOM59;
            }
            set
            {
                if ((this._WUOM59 != value))
                {
                    this._WUOM59 = value;
                }
            }
        }


        public string ASNN59
        {
            get
            {
                return this._ASNN59;
            }
            set
            {
                if ((this._ASNN59 != value))
                {
                    this._ASNN59 = value;
                }
            }
        }


        public decimal ASNQ59
        {
            get
            {
                return this._ASNQ59;
            }
            set
            {
                if ((this._ASNQ59 != value))
                {
                    this._ASNQ59 = value;
                }
            }
        }


        public string TTRM59
        {
            get
            {
                return this._TTRM59;
            }
            set
            {
                if ((this._TTRM59 != value))
                {
                    this._TTRM59 = value;
                }
            }
        }


        public decimal TRDT59
        {
            get
            {
                return this._TRDT59;
            }
            set
            {
                if ((this._TRDT59 != value))
                {
                    this._TRDT59 = value;
                }
            }
        }


        public decimal TTME59
        {
            get
            {
                return this._TTME59;
            }
            set
            {
                if ((this._TTME59 != value))
                {
                    this._TTME59 = value;
                }
            }
        }

        public decimal NROL59
        {
            get
            {
                return this._NROL59;
            }
            set
            {
                if ((this._NROL59 != value))
                {
                    this._NROL59 = value;
                }
            }
        }

        private string _ProjectNo;
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        private string _Incoterms;
        public string Incoterms
        {
            get
            {
                return this._Incoterms;
            }
            set
            {
                if ((this._Incoterms != value))
                {
                    this._Incoterms = value;
                }
            }
        }

        private decimal? _PHQty;
        public decimal? PHQty
        {
            get
            {
                return this._PHQty;
            }
            set
            {
                if ((this._PHQty != value))
                {
                    this._PHQty = value;
                }
            }
        }

        private decimal? _TotalReceivedQty;
        public decimal? TotalReceivedQty
        {
            get
            {
                return this._TotalReceivedQty;
            }
            set
            {
                if ((this._TotalReceivedQty != value))
                {
                    this._TotalReceivedQty = value;
                }
            }
        }

        private decimal? _PHOutstandingQty;
        public decimal? PHOutstandingQty
        {
            get
            {
                return this._PHOutstandingQty;
            }
            set
            {
                if ((this._PHOutstandingQty != value))
                {
                    this._PHOutstandingQty = value;
                }
            }
        }

        public string WOSeqNo
        {
            get
            {
                return FWDate == null ? "" : "1";
            }
            set { value = ""; }
        }

        private string _BuyerCode;
        public string BuyerCode
        {
            get
            {
                return this._BuyerCode;
            }
            set
            {
                if ((this._BuyerCode != value))
                {
                    this._BuyerCode = value;
                }
            }
        }

        private string _TransitMode;
        public string TransitMode
        {
            get
            {
                return this._TransitMode;
            }
            set
            {
                if ((this._TransitMode != value))
                {
                    this._TransitMode = value;
                }
            }
        }

        private decimal? _cmb;
        public decimal? cmb
        {
            get
            {
                return this._cmb;
            }
            set
            {
                if ((this._cmb != value))
                {
                    this._cmb = value;
                }
            }
        }

        private DateTime? _FWDate;
        public DateTime? FWDate
        {
            get
            {
                return this._FWDate;
            }
            set
            {
                if ((this._FWDate != value))
                {
                    this._FWDate = value;
                }
            }
        }

        private string _MaterialGroup;
        public string MaterialGroup
        {
            get
            {
                return this._MaterialGroup;
            }
            set
            {
                if ((this._MaterialGroup != value))
                {
                    this._MaterialGroup = value;
                }
            }
        }

        #region HDO
        public HDOGRNStatus HDOGRNStatus
        {
            //get
            //{
            //    if (this.ReceivedDate.HasValue && this.HDONo == "")
            //        return HDOGRNStatus.Open;
            //    else if (this.HDONo != "" && string.IsNullOrEmpty(this.HDOStatus))
            //        return HDOGRNStatus.Planned;
            //    else
            //        return HDOGRNStatus.Open;

            //}
            //set { value = HDOGRNStatus.Open; }
            get
            {
                //if (this.ReceivedDate.HasValue && this.HDONo == "")
                //    return HDOGRNStatus.Open;
                //else 
                if (this.HDONo != "" && string.IsNullOrEmpty(this.HDOStatus))
                    return HDOGRNStatus.Planned;
                //else if (this.HDONo != "" && this.HDOStatus == "Y" && this.TransferredDate.HasValue)
                //    return HDOGRNStatus.Released;
                else if (this.HDONo != "" && this.HDOStatus == "Y")
                    return HDOGRNStatus.Released;
                else
                    return HDOGRNStatus.Open;

                //return HDOGRNStatus.Receiving;
            }
            set { value = HDOGRNStatus.Open; }
        }
        public string HDOHandledBy
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        if (this.ADVN59.StartsWith("H"))
                            return "Sam Li";
                        else if (this.ADVN59.StartsWith("S"))
                            return "Fred Au";
                        return "Nil";
                    case HDOGRNStatus.Planned:
                        return this.HDOUser;
                    case HDOGRNStatus.Released:
                        return this.ReleasedBy;
                    case HDOGRNStatus.Transferred:
                        return this.TransferredBy;
                    default:
                        return "";
                }
            }
            set { value = ""; }
        }
        public string HDOHandledDate
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        return "Nil";
                    case HDOGRNStatus.Planned:
                        return string.Format("{0:yyyy/MM/dd}", ErpInt2Date((this.HDODate ?? 20150711) - 19000000));
                    case HDOGRNStatus.Released:
                        return string.Format("{0:yyyy/MM/dd}", this.ReleasedDate);
                    case HDOGRNStatus.Transferred:
                        return string.Format("{0:yyyy/MM/dd}", this.TransferredDate);
                    default:
                        return "";
                }
            }
            set { value = ""; }
        }
        public string HDONo2
        {
            get
            {
                return (string.IsNullOrEmpty(this.HDONo)) ? "Nil" : this.HDONo;
            }
            set { value = ""; }
        }

        public bool IsCargoReceived
        {
            get
            {
                return (this.ReceivedDate.HasValue);
            }
            set { value = false; }
        }
        public string CargoReceived
        {
            //get
            //{
            //    switch (this.HDOGRNStatus)
            //    {
            //        case HDOGRNStatus.Open:
            //            return "Group A HDO Status - Open";
            //        case HDOGRNStatus.Planned:
            //            return "Group B HDO Status - Planned";                  
            //        default:
            //            return "--"; ;
            //    }

            //}
            //set { value = ""; }
            get
            {
                switch (this.HDOGRNStatus)
                {


                    case HDOGRNStatus.Open:
                        return "Group A HDO Status - Open";
                    case HDOGRNStatus.Planned:
                        return "Group B HDO Status - Planned";
                    case HDOGRNStatus.Released:
                        return "Group C HDO Status - Released";
                    case HDOGRNStatus.Transferred:
                        return "Group D HDO Status - Transferred";
                    case HDOGRNStatus.Receiving:
                        if (!this.ReceivedDate.HasValue)
                        {
                            int i = ((this.ETADate ?? DateTime.MinValue) - DateTime.Today).Days;
                            if (i > 0) return "Group C: For Coming days";
                            else if (i == 0)
                                return "Group B: For Today";
                            else return "Group A HDO Status - Open";
                        }
                        return "--";
                    default:
                        return "--"; ;
                }

            }
            set { value = ""; }
        }

        #endregion
        #region HDOHandling

        private DateTime? _ReleasedDate;
        public DateTime? ReleasedDate
        {
            get
            {
                return this._ReleasedDate;
            }
            set
            {
                if ((this._ReleasedDate != value))
                {
                    this._ReleasedDate = value;
                }
            }
        }

        private string _ReleasedBy;
        public string ReleasedBy
        {
            get
            {
                return this._ReleasedBy;
            }
            set
            {
                if ((this._ReleasedBy != value))
                {
                    this._ReleasedBy = value;
                }
            }
        }

        private DateTime? _TransferredDate;
        public DateTime? TransferredDate
        {
            get
            {
                return this._TransferredDate;
            }
            set
            {
                if ((this._TransferredDate != value))
                {
                    this._TransferredDate = value;
                }
            }
        }
        private string _TransferredBy;
        public string TransferredBy
        {
            get
            {
                return this._TransferredBy;
            }
            set
            {
                if ((this._TransferredBy != value))
                {
                    this._TransferredBy = value;
                }
            }
        }

        #endregion
        #region HDODelivery




        private DateTime? _ActualTransitDate;
        public DateTime? ActualTransitDate
        {
            get
            {
                return this._ActualTransitDate;
            }
            set
            {
                if ((this._ActualTransitDate != value))
                {
                    this._ActualTransitDate = value;
                }
            }
        }

        private DateTime? _ETADate;
        public DateTime? ETADate
        {
            get
            {
                return this._ETADate;
            }
            set
            {
                if ((this._ETADate != value))
                {
                    this._ETADate = value;
                }
            }
        }

        private DateTime? _ReceivedDate;
        public DateTime? ReceivedDate
        {
            get
            {
                return this._ReceivedDate;
            }
            set
            {
                if ((this._ReceivedDate != value))
                {
                    this._ReceivedDate = value;
                }
            }
        }


        public string ETADateDesc
        {
            get
            {
                DateTime? _ETADate2 = this.ETADate;
                return _ETADate2.HasValue ? _ETADate2.Value.ToString("MM/dd") : "";

                //DateTime? _ETADate2 = this.ETADate;

                //string sh = string.Format("{0:-HH}", _ETADate2);
                //if (_ETADate2.HasValue && _ETADate2.Value.Hour == 0) sh = "--";
                //return string.Format("{0:MM/dd}{1}", _ETADate2, sh);
            }
            set { value = ""; }
        }
        public string ReceivedDateDesc
        {
            get
            {
                DateTime? _ReceivedDate = this.ReceivedDate;

                string sh = string.Format("{0:-HH}", _ReceivedDate);
                if (_ReceivedDate.HasValue && _ReceivedDate.Value.Hour == 0) sh = "--";
                return string.Format("{0:MM/dd}{1}", _ReceivedDate, sh);
            }
            set { value = ""; }
        }

        #endregion
        #region HDOQuantity

        private bool? _QtyCompleted;
        public bool? QtyCompleted
        {
            get
            {
                return this._QtyCompleted;
            }
            set
            {
                if ((this._QtyCompleted != value))
                {
                    this._QtyCompleted = value;
                }
            }
        }

        public string ShptCompleteStatus
        {
            get
            {
                return (this.QtyCompleted ?? false) ? "Y" : "";
            }
            set { value = ""; }
        }


        #endregion
        #region QTP64

        private string _HDONo;
        public string HDONo
        {
            get
            {
                return this._HDONo;
            }
            set
            {
                if ((this._HDONo != value))
                {
                    this._HDONo = value;
                }
            }
        }

        private string _HDORemark;
        public string HDORemark
        {
            get
            {
                return this._HDORemark;
            }
            set
            {
                if ((this._HDORemark != value))
                {
                    this._HDORemark = value;
                }
            }
        }

        private string _HDOStatus;
        public string HDOStatus
        {
            get
            {
                return this._HDOStatus;
            }
            set
            {
                if ((this._HDOStatus != value))
                {
                    this._HDOStatus = value;
                }
            }
        }

        private string _HDOUser;
        public string HDOUser
        {
            get
            {
                return this._HDOUser;
            }
            set
            {
                if ((this._HDOUser != value))
                {
                    this._HDOUser = value;
                }
            }
        }

        private int? _HDODate;
        public int? HDODate
        {
            get
            {
                return this._HDODate;
            }
            set
            {
                if ((this._HDODate != value))
                {
                    this._HDODate = value;
                }
            }
        }

        public DateTime? HDODateShow
        {
            get
            {
                //int aa = 20220630;
                //return DateTime.ParseExact(aa.ToString(), "yyyyMMdd", null);
                if (HDODate.HasValue)
                {
                    int aa = 20220630;
                    return DateTime.ParseExact(HDODate.ToString(), "yyyyMMdd", null);
                }
                else
                {
                    return null;
                }

            }
            set { value = null; }
        }

        public string HDOStageShow
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        return "A";
                    case HDOGRNStatus.Planned:
                        return "B";
                    case HDOGRNStatus.Released:
                        return "C";
                    case HDOGRNStatus.Transferred:
                        return "D";
                    case HDOGRNStatus.Receiving:
                        if (!this.ReceivedDate.HasValue)
                        {
                            int i = ((this.ETADate ?? DateTime.MinValue) - DateTime.Today).Days;
                            if (i > 0) return "C";
                            else if (i == 0) return "B";
                            else return "A";
                        }
                        return "--";
                    default:
                        return "--"; ;
                }

            }
            set { value = ""; }
        }



        #endregion


        public decimal POQty { get { return this.OQTY59 / this.CNVF59; } set { value = 0; } }
        public decimal SuppPOQty { get { return decimal.Round((this.PHQty ?? 0) / this.CNVF59, 1, MidpointRounding.AwayFromZero); } set { value = 0; } }
        public decimal GRNQty { get { return this.TRNQ59 /*/ this.CNVF59*/; } set { value = 0; } }
        public DateTime TransitDate { get { return ErpInt2Date(Convert.ToInt32(this.DUED59)); } set { value = DateTime.MinValue; } }
        public DateTime GRNDate { get { return ErpInt2Date(Convert.ToInt32(this.RECD59)); } set { value = DateTime.MinValue; } }
        public static DateTime ErpInt2Date(int idt)
        {
            int dt = idt + 19000000;
            int y = dt / 10000;
            int m = (dt - y * 10000) / 100;
            int d = (dt - y * 10000 - m * 100);
            return new DateTime(y, m, d);
        }

        private HDODataContext _context;

        public decimal PastTtlGRNQty
        {
            get
            {
                decimal d = (this.TotalReceivedQty ?? 0) - (this.GRNQty);
                return d;
            }
            set { value = 0; }
        }
        public decimal BalanceQty
        {
            get
            {
                return (this.TotalReceivedQty ?? 0) - (this.PHQty ?? 0);
            }
            set { value = 0; }
        }
        public string ReceiptLocation
        {
            get
            {
                if (string.IsNullOrEmpty(this.ADVN59) || this.ADVN59.Length < 2) return "";

                //string[] ss = new string[] { "HK-", "SL-", "CG-", "GG-" };
                string[] ss = new string[] { "HI", "SI", "GI", "HD", "SD", "GD" };
                string s = this.ADVN59.ToString().Substring(0, 2);
                if (ss.Contains(s)) return s;//s.Substring(0, 2);
                else return "";
            }
            set { value = ""; }
        }





        public string SKU
        {
            get
            {
                string s = this.ITEM59;
                if (string.IsNullOrEmpty(s))
                    return "";
                else
                {
                    string s1 = s.Length > 9 ? s.Substring(9, s.Length - 9) : "";
                    return s1;
                }
            }
            set { value = ""; }
        }


        public string OurItemCode
        {
            get
            {
                string s = this.ITEM59;
                if (string.IsNullOrEmpty(s))
                    return "";
                else
                {
                    string s1 = s.Length > 9 ? s.Substring(0, 9) : s;
                    return s1;
                }
            }
            set { value = ""; }
        }

        public string ItemCode
        {
            get
            {
                string s = this.ITEM59;
                if (string.IsNullOrEmpty(s))
                    return "";
                else
                {
                    string s1 = s.Length > 9 ? string.Format("{0}-{1}", s.Substring(0, 9), s.Substring(9, s.Length - 9)) : s;
                    return s1;
                }
            }
            set { value = ""; }
        }

    }



    //Xsj20160328:add for HDO HS Packing Report
    public partial class HDOTempBO_Packing
    {

        private char _ACRC59;

        private string _CONO59;

        private string _ORDN59;

        private decimal? _LINE59;

        private decimal? _BRS_59;

        private string _VNDR59;

        private decimal? _OCLS59;

        private string _VCAT59;

        private string _ITEM59;

        private string _ITCL59;

        private string _NOMM59;

        private decimal? _OQTY59;

        private string _OUOM59;

        private decimal? _TRNQ59;

        private string _RUOM59;

        private string _IUOM59;

        private decimal? _CNVF59;

        private string _SUOM59;

        private string _PRUM59;

        private decimal? _DUED59;

        private decimal? _RECD59;

        private decimal? _INVD59;

        private decimal? _GITD59;

        private decimal? _EXPD59;

        private decimal? _ORDP59;

        private decimal? _IPRC59;

        private string _CURN59;

        private decimal? _CRTR59;

        private decimal? _CRTI59;

        private decimal? _CRTO59;

        private string _WHSE59;

        private char _RRYN59;

        private string _ADVN59;

        private int? _GRNO59;

        private char _RECT59;

        private string _TRIN59;

        private string _TREX59;

        private string _SCRC59;

        private string _DBTN59;

        private string _IVNO59;

        private string _IVTP59;

        private string _IVSP59;

        private char _RECP59;

        private char _INVU59;

        private decimal? _PLAN59;

        private char _INCU59;

        private char _GPRT59;

        private char _DTYP59;

        private string _VCOD59;

        private decimal? _AQTY59;

        private string _PUOM59;

        private char _CFLG59;

        private decimal? _PDAT59;

        private char _SAIT59;

        private string _USER59;

        private char _DLTF59;

        private decimal? _DAT159;

        private char _FLG159;

        private string _RECL59;

        private string _RECC59;

        private string _CONT59;

        private decimal? _DLIN59;

        private char _MODR59;

        private char _MODI59;

        private char _MODO59;

        private char _BTBF59;

        private char _PSTC59;

        private string _CTRN59;

        private decimal? _CTLN59;

        private char _PODD59;

        private string _LNCD59;

        private decimal? _TWTO59;

        private decimal? _TWTT59;

        private string _WUOM59;

        private string _ASNN59;

        private decimal? _ASNQ59;

        private string _TTRM59;

        private decimal? _TRDT59;

        private decimal? _TTME59;

        private decimal? _NROL59;
        private string _VAT;

        public HDOTempBO_Packing()
        {
        }

        public string VAT
        {
            get
            {
                return this._VAT;
            }
            set
            {
                if ((this._VAT != value))
                {
                    this._VAT = value;
                }
            }
        }

        public char ACRC59
        {
            get
            {
                return this._ACRC59;
            }
            set
            {
                if ((this._ACRC59 != value))
                {
                    this._ACRC59 = value;
                }
            }
        }


        public string CONO59
        {
            get
            {
                return this._CONO59;
            }
            set
            {
                if ((this._CONO59 != value))
                {
                    this._CONO59 = value;
                }
            }
        }

        public string ORDN59
        {
            get
            {
                return this._ORDN59;
            }
            set
            {
                if ((this._ORDN59 != value))
                {
                    this._ORDN59 = value;
                }
            }
        }


        public decimal? LINE59
        {
            get
            {
                return this._LINE59;
            }
            set
            {
                if ((this._LINE59 != value))
                {
                    this._LINE59 = value;
                }
            }
        }


        public decimal? BRS_59
        {
            get
            {
                return this._BRS_59;
            }
            set
            {
                if ((this._BRS_59 != value))
                {
                    this._BRS_59 = value;
                }
            }
        }

        public string VNDR59
        {
            get
            {
                return this._VNDR59;
            }
            set
            {
                if ((this._VNDR59 != value))
                {
                    this._VNDR59 = value;
                }
            }
        }


        public decimal? OCLS59
        {
            get
            {
                return this._OCLS59;
            }
            set
            {
                if ((this._OCLS59 != value))
                {
                    this._OCLS59 = value;
                }
            }
        }


        public string VCAT59
        {
            get
            {
                return this._VCAT59;
            }
            set
            {
                if ((this._VCAT59 != value))
                {
                    this._VCAT59 = value;
                }
            }
        }


        public string ITEM59
        {
            get
            {
                return this._ITEM59;
            }
            set
            {
                if ((this._ITEM59 != value))
                {
                    this._ITEM59 = value;
                }
            }
        }

        public string ITCL59
        {
            get
            {
                return this._ITCL59;
            }
            set
            {
                if ((this._ITCL59 != value))
                {
                    this._ITCL59 = value;
                }
            }
        }


        public string NOMM59
        {
            get
            {
                return this._NOMM59;
            }
            set
            {
                if ((this._NOMM59 != value))
                {
                    this._NOMM59 = value;
                }
            }
        }


        public decimal? OQTY59
        {
            get
            {
                return this._OQTY59;
            }
            set
            {
                if ((this._OQTY59 != value))
                {
                    this._OQTY59 = value;
                }
            }
        }


        public string OUOM59
        {
            get
            {
                return this._OUOM59;
            }
            set
            {
                if ((this._OUOM59 != value))
                {
                    this._OUOM59 = value;
                }
            }
        }


        public decimal? TRNQ59
        {
            get
            {
                return this._TRNQ59;
            }
            set
            {
                if ((this._TRNQ59 != value))
                {
                    this._TRNQ59 = value;
                }
            }
        }


        public string RUOM59
        {
            get
            {
                return this._RUOM59;
            }
            set
            {
                if ((this._RUOM59 != value))
                {
                    this._RUOM59 = value;
                }
            }
        }


        public string IUOM59
        {
            get
            {
                return this._IUOM59;
            }
            set
            {
                if ((this._IUOM59 != value))
                {
                    this._IUOM59 = value;
                }
            }
        }

        public decimal? CNVF59
        {
            get
            {
                return this._CNVF59;
            }
            set
            {
                if ((this._CNVF59 != value))
                {
                    this._CNVF59 = value;
                }
            }
        }


        public string SUOM59
        {
            get
            {
                return this._SUOM59;
            }
            set
            {
                if ((this._SUOM59 != value))
                {
                    this._SUOM59 = value;
                }
            }
        }


        public string PRUM59
        {
            get
            {
                return this._PRUM59;
            }
            set
            {
                if ((this._PRUM59 != value))
                {
                    this._PRUM59 = value;
                }
            }
        }


        public decimal? DUED59
        {
            get
            {
                return this._DUED59;
            }
            set
            {
                if ((this._DUED59 != value))
                {
                    this._DUED59 = value;
                }
            }
        }


        public decimal? RECD59
        {
            get
            {
                return this._RECD59;
            }
            set
            {
                if ((this._RECD59 != value))
                {
                    this._RECD59 = value;
                }
            }
        }


        public decimal? INVD59
        {
            get
            {
                return this._INVD59;
            }
            set
            {
                if ((this._INVD59 != value))
                {
                    this._INVD59 = value;
                }
            }
        }


        public decimal? GITD59
        {
            get
            {
                return this._GITD59;
            }
            set
            {
                if ((this._GITD59 != value))
                {
                    this._GITD59 = value;
                }
            }
        }

        public decimal? EXPD59
        {
            get
            {
                return this._EXPD59;
            }
            set
            {
                if ((this._EXPD59 != value))
                {
                    this._EXPD59 = value;
                }
            }
        }


        public decimal? ORDP59
        {
            get
            {
                return this._ORDP59;
            }
            set
            {
                if ((this._ORDP59 != value))
                {
                    this._ORDP59 = value;
                }
            }
        }

        public decimal? IPRC59
        {
            get
            {
                return this._IPRC59;
            }
            set
            {
                if ((this._IPRC59 != value))
                {
                    this._IPRC59 = value;
                }
            }
        }

        public string CURN59
        {
            get
            {
                return this._CURN59;
            }
            set
            {
                if ((this._CURN59 != value))
                {
                    this._CURN59 = value;
                }
            }
        }


        public decimal? CRTR59
        {
            get
            {
                return this._CRTR59;
            }
            set
            {
                if ((this._CRTR59 != value))
                {
                    this._CRTR59 = value;
                }
            }
        }


        public decimal? CRTI59
        {
            get
            {
                return this._CRTI59;
            }
            set
            {
                if ((this._CRTI59 != value))
                {
                    this._CRTI59 = value;
                }
            }
        }

        public decimal? CRTO59
        {
            get
            {
                return this._CRTO59;
            }
            set
            {
                if ((this._CRTO59 != value))
                {
                    this._CRTO59 = value;
                }
            }
        }


        public string WHSE59
        {
            get
            {
                return this._WHSE59;
            }
            set
            {
                if ((this._WHSE59 != value))
                {
                    this._WHSE59 = value;
                }
            }
        }


        public char RRYN59
        {
            get
            {
                return this._RRYN59;
            }
            set
            {
                if ((this._RRYN59 != value))
                {
                    this._RRYN59 = value;
                }
            }
        }


        public string ADVN59
        {
            get
            {
                return this._ADVN59;
            }
            set
            {
                if ((this._ADVN59 != value))
                {
                    this._ADVN59 = value;
                }
            }
        }


        public int? GRNO59
        {
            get
            {
                return this._GRNO59;
            }
            set
            {
                if ((this._GRNO59 != value))
                {
                    this._GRNO59 = value;
                }
            }
        }


        public char RECT59
        {
            get
            {
                return this._RECT59;
            }
            set
            {
                if ((this._RECT59 != value))
                {
                    this._RECT59 = value;
                }
            }
        }

        public string TRIN59
        {
            get
            {
                return this._TRIN59;
            }
            set
            {
                if ((this._TRIN59 != value))
                {
                    this._TRIN59 = value;
                }
            }
        }

        public string TREX59
        {
            get
            {
                return this._TREX59;
            }
            set
            {
                if ((this._TREX59 != value))
                {
                    this._TREX59 = value;
                }
            }
        }

        public string SCRC59
        {
            get
            {
                return this._SCRC59;
            }
            set
            {
                if ((this._SCRC59 != value))
                {
                    this._SCRC59 = value;
                }
            }
        }


        public string DBTN59
        {
            get
            {
                return this._DBTN59;
            }
            set
            {
                if ((this._DBTN59 != value))
                {
                    this._DBTN59 = value;
                }
            }
        }

        public string IVNO59
        {
            get
            {
                return this._IVNO59;
            }
            set
            {
                if ((this._IVNO59 != value))
                {
                    this._IVNO59 = value;
                }
            }
        }


        public string IVTP59
        {
            get
            {
                return this._IVTP59;
            }
            set
            {
                if ((this._IVTP59 != value))
                {
                    this._IVTP59 = value;
                }
            }
        }


        public string IVSP59
        {
            get
            {
                return this._IVSP59;
            }
            set
            {
                if ((this._IVSP59 != value))
                {
                    this._IVSP59 = value;
                }
            }
        }


        public char RECP59
        {
            get
            {
                return this._RECP59;
            }
            set
            {
                if ((this._RECP59 != value))
                {
                    this._RECP59 = value;
                }
            }
        }


        public char INVU59
        {
            get
            {
                return this._INVU59;
            }
            set
            {
                if ((this._INVU59 != value))
                {
                    this._INVU59 = value;
                }
            }
        }


        public decimal? PLAN59
        {
            get
            {
                return this._PLAN59;
            }
            set
            {
                if ((this._PLAN59 != value))
                {
                    this._PLAN59 = value;
                }
            }
        }


        public char INCU59
        {
            get
            {
                return this._INCU59;
            }
            set
            {
                if ((this._INCU59 != value))
                {
                    this._INCU59 = value;
                }
            }
        }


        public char GPRT59
        {
            get
            {
                return this._GPRT59;
            }
            set
            {
                if ((this._GPRT59 != value))
                {
                    this._GPRT59 = value;
                }
            }
        }

        public char DTYP59
        {
            get
            {
                return this._DTYP59;
            }
            set
            {
                if ((this._DTYP59 != value))
                {
                    this._DTYP59 = value;
                }
            }
        }

        public string VCOD59
        {
            get
            {
                return this._VCOD59;
            }
            set
            {
                if ((this._VCOD59 != value))
                {
                    this._VCOD59 = value;
                }
            }
        }

        public decimal? AQTY59
        {
            get
            {
                return this._AQTY59;
            }
            set
            {
                if ((this._AQTY59 != value))
                {
                    this._AQTY59 = value;
                }
            }
        }

        public string PUOM59
        {
            get
            {
                return this._PUOM59;
            }
            set
            {
                if ((this._PUOM59 != value))
                {
                    this._PUOM59 = value;
                }
            }
        }


        public char CFLG59
        {
            get
            {
                return this._CFLG59;
            }
            set
            {
                if ((this._CFLG59 != value))
                {
                    this._CFLG59 = value;
                }
            }
        }

        public decimal? PDAT59
        {
            get
            {
                return this._PDAT59;
            }
            set
            {
                if ((this._PDAT59 != value))
                {
                    this._PDAT59 = value;
                }
            }
        }

        public char SAIT59
        {
            get
            {
                return this._SAIT59;
            }
            set
            {
                if ((this._SAIT59 != value))
                {
                    this._SAIT59 = value;
                }
            }
        }


        public string USER59
        {
            get
            {
                return this._USER59;
            }
            set
            {
                if ((this._USER59 != value))
                {
                    this._USER59 = value;
                }
            }
        }


        public char DLTF59
        {
            get
            {
                return this._DLTF59;
            }
            set
            {
                if ((this._DLTF59 != value))
                {
                    this._DLTF59 = value;
                }
            }
        }


        public decimal? DAT159
        {
            get
            {
                return this._DAT159;
            }
            set
            {
                if ((this._DAT159 != value))
                {
                    this._DAT159 = value;
                }
            }
        }


        public char FLG159
        {
            get
            {
                return this._FLG159;
            }
            set
            {
                if ((this._FLG159 != value))
                {
                    this._FLG159 = value;
                }
            }
        }


        public string RECL59
        {
            get
            {
                return this._RECL59;
            }
            set
            {
                if ((this._RECL59 != value))
                {
                    this._RECL59 = value;
                }
            }
        }


        public string RECC59
        {
            get
            {
                return this._RECC59;
            }
            set
            {
                if ((this._RECC59 != value))
                {
                    this._RECC59 = value;
                }
            }
        }

        public string CONT59
        {
            get
            {
                return this._CONT59;
            }
            set
            {
                if ((this._CONT59 != value))
                {
                    this._CONT59 = value;
                }
            }
        }


        public decimal? DLIN59
        {
            get
            {
                return this._DLIN59;
            }
            set
            {
                if ((this._DLIN59 != value))
                {
                    this._DLIN59 = value;
                }
            }
        }


        public char MODR59
        {
            get
            {
                return this._MODR59;
            }
            set
            {
                if ((this._MODR59 != value))
                {
                    this._MODR59 = value;
                }
            }
        }


        public char MODI59
        {
            get
            {
                return this._MODI59;
            }
            set
            {
                if ((this._MODI59 != value))
                {
                    this._MODI59 = value;
                }
            }
        }


        public char MODO59
        {
            get
            {
                return this._MODO59;
            }
            set
            {
                if ((this._MODO59 != value))
                {
                    this._MODO59 = value;
                }
            }
        }

        public char BTBF59
        {
            get
            {
                return this._BTBF59;
            }
            set
            {
                if ((this._BTBF59 != value))
                {
                    this._BTBF59 = value;
                }
            }
        }


        public char PSTC59
        {
            get
            {
                return this._PSTC59;
            }
            set
            {
                if ((this._PSTC59 != value))
                {
                    this._PSTC59 = value;
                }
            }
        }


        public string CTRN59
        {
            get
            {
                return this._CTRN59;
            }
            set
            {
                if ((this._CTRN59 != value))
                {
                    this._CTRN59 = value;
                }
            }
        }


        public decimal? CTLN59
        {
            get
            {
                return this._CTLN59;
            }
            set
            {
                if ((this._CTLN59 != value))
                {
                    this._CTLN59 = value;
                }
            }
        }


        public char PODD59
        {
            get
            {
                return this._PODD59;
            }
            set
            {
                if ((this._PODD59 != value))
                {
                    this._PODD59 = value;
                }
            }
        }

        public string LNCD59
        {
            get
            {
                return this._LNCD59;
            }
            set
            {
                if ((this._LNCD59 != value))
                {
                    this._LNCD59 = value;
                }
            }
        }

        public decimal? TWTO59
        {
            get
            {
                return this._TWTO59;
            }
            set
            {
                if ((this._TWTO59 != value))
                {
                    this._TWTO59 = value;
                }
            }
        }


        public decimal? TWTT59
        {
            get
            {
                return this._TWTT59;
            }
            set
            {
                if ((this._TWTT59 != value))
                {
                    this._TWTT59 = value;
                }
            }
        }

        public string WUOM59
        {
            get
            {
                return this._WUOM59;
            }
            set
            {
                if ((this._WUOM59 != value))
                {
                    this._WUOM59 = value;
                }
            }
        }


        public string ASNN59
        {
            get
            {
                return this._ASNN59;
            }
            set
            {
                if ((this._ASNN59 != value))
                {
                    this._ASNN59 = value;
                }
            }
        }


        public decimal? ASNQ59
        {
            get
            {
                return this._ASNQ59;
            }
            set
            {
                if ((this._ASNQ59 != value))
                {
                    this._ASNQ59 = value;
                }
            }
        }


        public string TTRM59
        {
            get
            {
                return this._TTRM59;
            }
            set
            {
                if ((this._TTRM59 != value))
                {
                    this._TTRM59 = value;
                }
            }
        }


        public decimal? TRDT59
        {
            get
            {
                return this._TRDT59;
            }
            set
            {
                if ((this._TRDT59 != value))
                {
                    this._TRDT59 = value;
                }
            }
        }


        public decimal? TTME59
        {
            get
            {
                return this._TTME59;
            }
            set
            {
                if ((this._TTME59 != value))
                {
                    this._TTME59 = value;
                }
            }
        }

        public decimal? NROL59
        {
            get
            {
                return this._NROL59;
            }
            set
            {
                if ((this._NROL59 != value))
                {
                    this._NROL59 = value;
                }
            }
        }

        private string _ProjectNo;
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        private string _Incoterms;
        public string Incoterms
        {
            get
            {
                return this._Incoterms;
            }
            set
            {
                if ((this._Incoterms != value))
                {
                    this._Incoterms = value;
                }
            }
        }

        private decimal? _PHQty;
        public decimal? PHQty
        {
            get
            {
                return this._PHQty;
            }
            set
            {
                if ((this._PHQty != value))
                {
                    this._PHQty = value;
                }
            }
        }

        private decimal? _TotalReceivedQty;
        public decimal? TotalReceivedQty
        {
            get
            {
                return this._TotalReceivedQty;
            }
            set
            {
                if ((this._TotalReceivedQty != value))
                {
                    this._TotalReceivedQty = value;
                }
            }
        }

        private decimal? _PHOutstandingQty;
        public decimal? PHOutstandingQty
        {
            get
            {
                return this._PHOutstandingQty;
            }
            set
            {
                if ((this._PHOutstandingQty != value))
                {
                    this._PHOutstandingQty = value;
                }
            }
        }

        private DateTime? _FWDate;
        public DateTime? FWDate
        {
            get
            {
                return this._FWDate;
            }
            set
            {
                if ((this._FWDate != value))
                {
                    this._FWDate = value;
                }
            }
        }

        private string _MaterialGroup;
        public string MaterialGroup
        {
            get
            {
                return this._MaterialGroup;
            }
            set
            {
                if ((this._MaterialGroup != value))
                {
                    this._MaterialGroup = value;
                }
            }
        }

        #region HDO
        public HDOGRNStatus HDOGRNStatus
        {
            get
            {
                if (this.ReceivedDate.HasValue && this.HDONo == "")
                    return HDOGRNStatus.Open;
                else if (this.HDONo != "" && string.IsNullOrEmpty(this.HDOStatus))
                    return HDOGRNStatus.Planned;
                else if (this.HDONo != "" && this.HDOStatus == "Y" && this.TransferredDate.HasValue)
                    return HDOGRNStatus.Transferred;
                else if (this.HDONo != "" && this.HDOStatus == "Y")
                    return HDOGRNStatus.Released;
                else
                    return HDOGRNStatus.Receiving;
            }
            set { value = HDOGRNStatus.Open; }
        }
        public string HDOHandledBy
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        if (this.ADVN59.StartsWith("H"))
                            return "Sam Li";
                        else if (this.ADVN59.StartsWith("S"))
                            return "Fred Au";
                        return "Nil";
                    case HDOGRNStatus.Planned:
                        return this.HDOUser;
                    case HDOGRNStatus.Released:
                        return this.ReleasedBy;
                    case HDOGRNStatus.Transferred:
                        return this.TransferredBy;
                    default:
                        return "";
                }
            }
            set { value = ""; }
        }
        public string HDOHandledDate
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        return "Nil";
                    case HDOGRNStatus.Planned:
                        return string.Format("{0:yyyy/MM/dd}", ErpInt2Date((this.HDODate ?? 20150711) - 19000000));
                    case HDOGRNStatus.Released:
                        return string.Format("{0:yyyy/MM/dd}", this.ReleasedDate);
                    case HDOGRNStatus.Transferred:
                        return string.Format("{0:yyyy/MM/dd}", this.TransferredDate);
                    default:
                        return "";
                }
            }
            set { value = ""; }
        }
        public string HDONo2
        {
            get
            {
                return (string.IsNullOrEmpty(this.HDONo)) ? "Nil" : this.HDONo;
            }
            set { value = ""; }
        }

        public bool IsCargoReceived
        {
            get
            {
                return (this.ReceivedDate.HasValue);
            }
            set { value = false; }
        }

        public string CargoReceived
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        return "Group A HDO Status - Open";
                    case HDOGRNStatus.Planned:
                        return "Group B HDO Status - Planned";
                    case HDOGRNStatus.Released:
                        return "Group C HDO Status - Released";
                    case HDOGRNStatus.Transferred:
                        return "Group D HDO Status - Transferred";
                    case HDOGRNStatus.Receiving:
                        if (!this.ReceivedDate.HasValue)
                        {
                            int i = ((this.ETADate ?? DateTime.MinValue) - DateTime.Today).Days;
                            if (i > 0) return "Group C: For Coming days";
                            else if (i == 0) return "Group B: For Today";
                            else return "Group A: For Previous days";
                        }
                        return "--";
                    default:
                        return "--"; ;
                }

            }
            set { value = ""; }
        }

        #endregion
        #region HDOHandling

        private DateTime? _ReleasedDate;
        public DateTime? ReleasedDate
        {
            get
            {
                return this._ReleasedDate;
            }
            set
            {
                if ((this._ReleasedDate != value))
                {
                    this._ReleasedDate = value;
                }
            }
        }

        private string _ReleasedBy;
        public string ReleasedBy
        {
            get
            {
                return this._ReleasedBy;
            }
            set
            {
                if ((this._ReleasedBy != value))
                {
                    this._ReleasedBy = value;
                }
            }
        }

        private DateTime? _TransferredDate;
        public DateTime? TransferredDate
        {
            get
            {
                return this._TransferredDate;
            }
            set
            {
                if ((this._TransferredDate != value))
                {
                    this._TransferredDate = value;
                }
            }
        }
        private string _TransferredBy;
        public string TransferredBy
        {
            get
            {
                return this._TransferredBy;
            }
            set
            {
                if ((this._TransferredBy != value))
                {
                    this._TransferredBy = value;
                }
            }
        }

        #endregion
        #region HDODelivery

        private DateTime? _ActualTransitDate;
        public DateTime? ActualTransitDate
        {
            get
            {
                return this._ActualTransitDate;
            }
            set
            {
                if ((this._ActualTransitDate != value))
                {
                    this._ActualTransitDate = value;
                }
            }
        }

        private DateTime? _ETADate;
        public DateTime? ETADate
        {
            get
            {
                return this._ETADate;
            }
            set
            {
                if ((this._ETADate != value))
                {
                    this._ETADate = value;
                }
            }
        }

        private DateTime? _ReceivedDate;
        public DateTime? ReceivedDate
        {
            get
            {
                return this._ReceivedDate;
            }
            set
            {
                if ((this._ReceivedDate != value))
                {
                    this._ReceivedDate = value;
                }
            }
        }


        public string ETADateDesc
        {
            get
            {
                DateTime? _ETADate2 = this.ETADate;

                string sh = string.Format("{0:-HH}", _ETADate2);
                if (_ETADate2.HasValue && _ETADate2.Value.Hour == 0) sh = "--";
                return string.Format("{0:MM/dd}{1}", _ETADate2, sh);
            }
            set { value = ""; }
        }
        public string ReceivedDateDesc
        {
            get
            {
                DateTime? _ReceivedDate = this.ReceivedDate;

                string sh = string.Format("{0:-HH}", _ReceivedDate);
                if (_ReceivedDate.HasValue && _ReceivedDate.Value.Hour == 0) sh = "--";
                return string.Format("{0:MM/dd}{1}", _ReceivedDate, sh);
            }
            set { value = ""; }
        }

        #endregion
        #region HDOQuantity

        private bool? _QtyCompleted;
        public bool? QtyCompleted
        {
            get
            {
                return this._QtyCompleted;
            }
            set
            {
                if ((this._QtyCompleted != value))
                {
                    this._QtyCompleted = value;
                }
            }
        }

        public string ShptCompleteStatus
        {
            get
            {
                return (this.QtyCompleted ?? false) ? "Y" : "";
            }
            set { value = ""; }
        }


        #endregion
        #region QTP64

        private string _HDONo;
        public string HDONo
        {
            get
            {
                return this._HDONo;
            }
            set
            {
                if ((this._HDONo != value))
                {
                    this._HDONo = value;
                }
            }
        }

        private string _HDORemark;
        public string HDORemark
        {
            get
            {
                return this._HDORemark;
            }
            set
            {
                if ((this._HDORemark != value))
                {
                    this._HDORemark = value;
                }
            }
        }

        private string _HDOStatus;
        public string HDOStatus
        {
            get
            {
                return this._HDOStatus;
            }
            set
            {
                if ((this._HDOStatus != value))
                {
                    this._HDOStatus = value;
                }
            }
        }

        private string _HDOUser;
        public string HDOUser
        {
            get
            {
                return this._HDOUser;
            }
            set
            {
                if ((this._HDOUser != value))
                {
                    this._HDOUser = value;
                }
            }
        }

        private int? _HDODate;
        public int? HDODate
        {
            get
            {
                return this._HDODate;
            }
            set
            {
                if ((this._HDODate != value))
                {
                    this._HDODate = value;
                }
            }
        }

        #endregion


        public decimal POQty { get { return (this.OQTY59 ?? 0) / (this.CNVF59 ?? 1); } set { value = 0; } }
        public decimal SuppPOQty { get { return decimal.Round((this.PHQty ?? 0) / (this.CNVF59 ?? 1), 1, MidpointRounding.AwayFromZero); } set { value = 0; } }
        public decimal GRNQty { get { return (this.TRNQ59 ?? 0) /*/ this.CNVF59*/; } set { value = 0; } }
        public DateTime TransitDate { get { return ErpInt2Date(Convert.ToInt32(this.DUED59)); } set { value = DateTime.MinValue; } }
        public DateTime GRNDate { get { return ErpInt2Date(Convert.ToInt32(this.RECD59)); } set { value = DateTime.MinValue; } }
        public static DateTime ErpInt2Date(int idt)
        {
            int dt = idt + 19000000;
            int y = dt / 10000;
            int m = (dt - y * 10000) / 100;
            int d = (dt - y * 10000 - m * 100);
            return new DateTime(y, m, d);
        }

        private HDODataContext _context;

        public decimal PastTtlGRNQty
        {
            get
            {
                decimal d = (this.TotalReceivedQty ?? 0) - (this.GRNQty);
                return d;
            }
            set { value = 0; }
        }
        public decimal BalanceQty
        {
            get
            {
                return (this.TotalReceivedQty ?? 0) - (this.PHQty ?? 0);
            }
            set { value = 0; }
        }
        public string ReceiptLocation
        {
            get
            {
                if (string.IsNullOrEmpty(this.ADVN59) || this.ADVN59.Length < 2) return "";

                //string[] ss = new string[] { "HK-", "SL-", "CG-", "GG-" };
                string[] ss = new string[] { "HI", "SI", "GI", "HD", "SD", "GD" };
                string s = this.ADVN59.ToString().Substring(0, 2);
                if (ss.Contains(s)) return s;//s.Substring(0, 2);
                else return "";
            }
            set { value = ""; }
        }

        public string ItemCode
        {
            get
            {
                string s = this.ITEM59;
                if (string.IsNullOrEmpty(s))
                    return "";
                else
                {
                    string s1 = s.Length > 9 ? string.Format("{0}-{1}", s.Substring(0, 9), s.Substring(9, s.Length - 9)) : s;
                    return s1;
                }
            }
            set { value = ""; }
        }

        private int? _hsCodeSeq;
        public int? HSCodeSeq
        {
            get
            {
                return this._hsCodeSeq;
            }

            set
            {
                this._hsCodeSeq = value;
            }
        }

        private string _hsUnit;
        public string HSUnit
        {
            get
            {
                return this._hsUnit;
            }

            set
            {
                this._hsUnit = value;
            }
        }

        private string _hsUnitCN;
        public string HSUnitCN
        {
            get
            {
                if (this.HSUnit != null)
                {
                    switch (this.HSUnit.ToLower())
                    {
                        case "kg":
                            this._hsUnitCN = "千克";
                            break;
                        default:
                            this._hsUnitCN = this.HSUnit;
                            break;
                    }
                }
                return this._hsUnitCN;
            }

            set
            {
                value = "";
            }
        }

        private string _customNO;
        public string CustomNo
        {
            get
            {
                return this._customNO;
            }

            set
            {
                this._customNO = value;
            }
        }

        private string _materialName;
        public string MaterialName
        {
            get
            {
                return this._materialName;
            }
            set
            {
                this._materialName = value;
            }
        }

        private string _weightHSCode;
        public string WeightHSCode
        {
            get
            {
                return this._weightHSCode;
            }
            set
            {
                this._weightHSCode = value;
            }
        }

        private Decimal? _weight;
        public Decimal? Weight
        {
            get
            {
                if (this.WeightHSCode != null)
                {
                    this._weight = Convert.ToDecimal(this.WeightHSCode) * this.TRNQ59;
                }
                return this._weight;
            }

            set
            {
                this._weight = value;
            }

        }

        //private decimal _cost;
        //public Decimal Cost
        //{
        //    get
        //    {
        //        this._cost = (this.ORDP59 ?? 0) * this.GRNQty;
        //        return this._cost;
        //    }

        //    set
        //    {
        //        this._cost = value;
        //    }
        //}


        private decimal _cost;
        public Decimal Cost
        {
            get
            {
                decimal ratePHUnit = 1;
                if (this.MIDcDetail != null)
                {
                    ratePHUnit = this.MIDcDetail.RateToPHUnit ?? 1;
                }

                this._cost = (this.ORDP59 ?? 0) * this.GRNQty / ratePHUnit;
                return this._cost;
            }

            set
            {
                this._cost = value;
            }
        }

        private PH.MIDc.BO.Detail MIDcDetail
        {
            get
            {
                if (this._midcDetail == null)
                {
                    PH.MIDc.BO.MIDcDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                    this._midcDetail = dcon.Details.Where(p => p.SuppRef == this.VCAT59).FirstOrDefault();
                }
                return this._midcDetail;
            }
            set
            {
                this._midcDetail = value;
            }
        }
        private PH.MIDc.BO.Detail _midcDetail;


        //显示物料对应的海关申报要素Remark的拼接串， 由David加入 2018-4-26
        public string Remark { get; set; }
    }

    public partial class HSCodeAveragePrice : BaseEntity
    {
    }

    #region add by joseph for custom controact
    public partial class ContractInfo : BaseEntity
    {

    }
    public partial class ContractInfoDetail : BaseEntity
    {
        public string MaterialName //海關物料名
        {
            get
            {

                CustomMaterial cm = ContextHelper.MidcCtx.CustomMaterials.Where(p => p.MidcHSCode == this.HSCode).FirstOrDefault();
                if (cm != null)
                    return cm.materialName;
                else
                    return "";
            }
        }

    }

    public partial class ContractItem : BaseEntity
    {

        public string MaterialName
        {

            get
            {

                CustomMaterial cmt = ContextHelper.MidcCtx.CustomMaterials.Where(p => p.MidcHSCode == this.HSCode).FirstOrDefault();
                if (cmt == null)
                    return "";
                else
                    return cmt.materialName;
            }
        }

    }

    public partial class ContractFull : BaseEntity
    {

        //總重
        private Decimal? _weight;
        public Decimal? Weight
        {
            get
            {
                if (this.WeightHsCode != null)
                {
                    this._weight = decimal.Round(this.WeightHsCode.GetValueOrDefault() * this.GrnQty.GetValueOrDefault(), 2);
                }
                return this._weight;
            }

            set
            {
                this._weight = value;
            }

        }

        public Decimal? BG_Weight
        {
            get
            {

                if (this.WeightHsCode.HasValue && this.BG_Qty.HasValue)
                {
                    return this.WeightHsCode * this.BG_Qty;
                }
                else if (this.WeightHsCode.HasValue && !this.BG_Qty.HasValue && this.GrnQty.HasValue)
                {
                    return this.WeightHsCode * this.GrnQty;
                }
                else
                    return null;
            }
        }

        private decimal? _cost;
        public Decimal? Cost
        {
            get
            {
                decimal ratePHUnit = 1;

                Detail dti = ContextHelper.MidcCtx.Details.Where(p => p.SuppRef == this.SuppRef).FirstOrDefault();

                if (dti != null)
                {
                    ratePHUnit = dti.RateToPHUnit ?? 1;
                }

                this._cost = (this.Price ?? 0) * this.GrnQty / ratePHUnit;
                return this._cost;
            }

            set
            {
                this._cost = value;
            }
        }

        private string _hsUnitCN;
        public string HSUnitCN
        {
            get
            {
                if (this.BG_Unit != null)
                {
                    switch (this.BG_Unit.ToLower())
                    {
                        case "kg":
                            this._hsUnitCN = "千克";
                            break;
                        default:
                            this._hsUnitCN = this.BG_Unit;
                            break;
                    }
                }
                return this._hsUnitCN;
            }

            set
            {
                value = "";
            }
        }

        public string UnitPrice
        {
            get
            {

                if (this.Cost.GetValueOrDefault() == 0 || this.GrnQty.GetValueOrDefault() == 0)
                    return "0";
                else
                {
                    decimal aa = this.Cost.GetValueOrDefault() / this.GrnQty.GetValueOrDefault();
                    return String.Format("{0:F}", aa);
                }

            }
        }



        public string HDONo2
        {
            get
            {
                return (string.IsNullOrEmpty(this.HDONo)) ? "Nil" : this.HDONo;
            }
            set { value = ""; }
        }

        public string HDOHandledDate
        {
            get
            {
                switch (this.HDOGRNStatus)
                {
                    case HDOGRNStatus.Open:
                        return "Nil";
                    case HDOGRNStatus.Planned:
                        return string.Format("{0:yyyy/MM/dd}", ErpInt2Date((this.HDODate ?? 20150711) - 19000000));
                    case HDOGRNStatus.Released:
                        return string.Format("{0:yyyy/MM/dd}", this.ReleasedDate);
                    case HDOGRNStatus.Transferred:
                        return string.Format("{0:yyyy/MM/dd}", this.TransferredDate);
                    default:
                        return "";
                }
            }
            set { value = ""; }
        }

        public static DateTime ErpInt2Date(int idt)
        {
            int dt = idt + 19000000;
            int y = dt / 10000;
            int m = (dt - y * 10000) / 100;
            int d = (dt - y * 10000 - m * 100);
            return new DateTime(y, m, d);
        }

        public HDOGRNStatus HDOGRNStatus
        {
            get
            {
                if (this.ReceivedDate.HasValue && this.HDONo == "")
                    return HDOGRNStatus.Open;
                else if (this.HDONo != "" && string.IsNullOrEmpty(this.HDOStatus))
                    return HDOGRNStatus.Planned;
                else if (this.HDONo != "" && this.HDOStatus == "Y" && this.TransferredDate.HasValue)
                    return HDOGRNStatus.Transferred;
                else if (this.HDONo != "" && this.HDOStatus == "Y")
                    return HDOGRNStatus.Released;
                else
                    return HDOGRNStatus.Receiving;
            }
            set { value = HDOGRNStatus.Open; }
        }

        public string BatchNo
        {
            get
            {

                if (this.Created.HasValue)
                    return this.Created.Value.Year.ToString() + Created.Value.Month.ToString()
                         + Created.Value.Day.ToString() + Created.Value.Hour.ToString() + Created.Value.Minute.ToString();
                else
                    return "0000000000000";

            }
        }

        //public override bool Save()
        //{
        //    if (this != null)
        //    {
        //        this.UpdateBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        //        this.Updated = DateTime.Now;
        //    }
        //    return base.Save();
        //}

        //public DateTime GRNDate { get { return ErpInt2Date(Convert.ToInt32(this.RECD59)); } set { value = DateTime.MinValue; } }
        //public static DateTime ErpInt2Date(int idt)
        //{
        //    int dt = idt + 19000000;
        //    int y = dt / 10000;
        //    int m = (dt - y * 10000) / 100;
        //    int d = (dt - y * 10000 - m * 100);
        //    return new DateTime(y, m, d);
        //}

    }

    public class ContractAttach
    {

        public bool CheckFlag { get; set; }
        public string HdoNo { get; set; }
        public int GrnNo { get; set; }
        public string MaterialName { get; set; }
        public string SuppRef { get; set; }
        public string PO { get; set; }
        public string ReceivedDate { get; set; }
        public decimal GrnQty { get; set; }
        public decimal WeightHsCode { get; set; }
        public string HSCode { get; set; }
        public string HSUnit { get; set; }
        public string WeighTotal
        {
            get
            {

                //String.Format("{0:F}", gbs.FPY);
                return String.Format("{0:F}", WeightHsCode * GrnQty);
            }

        }


    }

    public class AttachMaterial
    {
        public bool CheckFlag { get; set; }
        public string HsCode { get; set; }
        public string MaterialName { get; set; }
        public string HSUnit { get; set; }
        public string Statu { get; set; }
        public string Memo { get; set; }
    }


    public class ContextHelper
    {

        //private static BasicInfoDataContext _ctx;
        //private static PHPlatformMiscDataContext _miscctx;
        private static MIDcDataContext _midcctx;

        //public static BasicInfoDataContext CurBasicCtx
        //{
        //    get
        //    {
        //        if (_ctx == null)
        //            _ctx = ContextBuilder.CreateContext<BasicInfoDataContext>();
        //        return _ctx;
        //    }
        //}

        //public static PHPlatformMiscDataContext CurMiscCtx
        //{
        //    get
        //    {
        //        if (_miscctx == null)
        //            _miscctx = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
        //        return _miscctx;
        //    }
        //}

        public static MIDcDataContext MidcCtx
        {
            get
            {
                if (_midcctx == null)
                    _midcctx = ContextBuilder.CreateContext<MIDcDataContext>();
                return _midcctx;
            }
        }


    }
    #endregion


    public class HSHDOSummaryResult
    {
        public string HDONO { get; set; }
        public int HDODate { get; set; }
        public string SuppCode { get; set; }
        public int HSCodeSeq { get; set; }
        public string MaterialNameCN { get; set; }
        public string Remark { get; set; }
        public string ProductionLand { get; set; }
        public double HDOQty { get; set; }
        public string Unit { get; set; }
        public double HDOQtyKG { get; set; }
        public string Currency { get; set; }
        public double UnitPrice { get; set; }
        public double UnitPriceKG { get; set; }
        public double Amount { get; set; }

        //  HDONO	HDODate	SuppCode	HSCodeSeq	MaterialNameCN	Remark	ProductionLand	HDOQty	Unit	HDOQtyKG	Currency	UnitPrice	UnitPriceKG	Amount
        //HDOM0014	20190712	BPAH    	201	化纤拉架布	无品牌|3|针织|不含橡胶线|尼龙/84% 弹性纤维/16%|1.55米||||	BPAH	1628.000	M 	328.04200000000000000	HKD	26.52000	131.612903	43174.560000
        //HDOM0014	20190712	HFIE    	206	棉针织布	无品牌|3|针织|染色|棉/100%|1.4478米||||	HFIE	384.000	M 	59.09760000000000000	HKD	30.00000	194.931773	11520.000000
        //HDOM0014	20190712	BPAH    	208	化纤网眼纱布	无品牌|3|网眼|机制|1.38米|尼龙/79% 弹性纤维/21%||||	BPAH	60.000	M 	4.55400000000000000	HKD	26.52000	349.407114	1591.200000
    }

    public class HDOQueryClass
    {
        public string HDONO { get; set; }
        public string CustDeclarationNo { get; set; }
        public string SHPNO { get; set; }
    }

}