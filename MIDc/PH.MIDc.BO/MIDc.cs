

namespace PH.MIDc.BO
{
    using System;
    using PH.BasicInfo.BO;
    using System.Linq;
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Reflection;
    using System.Collections.Generic;
    using System.Text;
    using System.Runtime.InteropServices;
    using PH.Platform.BO;
    using PH.Platform.Email.BO;
    using PH.Platform.Misc.BO;

    partial class MIDcDataContext
    {

        [Function(Name = "dbo.sp_GetWipWeight")]
        public ISingleResult<GetWipWeightResult> sp_GetWipWeight([Parameter(DbType = "VarChar(2)")] string company, [Parameter(DbType = "VarChar(10)")] string factory, [Parameter(DbType = "VarChar(10)")] string customer, [Parameter(DbType = "VarChar(20)")] string projectNo, [Parameter(Name = "DelvieryFromDate", DbType = "Int")] System.Nullable<int> delvieryFromDate, [Parameter(Name = "DeliveryToDate", DbType = "Int")] System.Nullable<int> deliveryToDate)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), company, factory, customer, projectNo, delvieryFromDate, deliveryToDate);
            return ((ISingleResult<GetWipWeightResult>)(result.ReturnValue));
        }//GetWipWeightResult


        [Function(Name = "dbo.AutoCode_GetCodeString")]
        public int AutoCode_GetCodeString([Parameter(Name = "DataBase", DbType = "VarChar(50)")] string dataBase, [Parameter(Name = "Table", DbType = "VarChar(50)")] string table, [Parameter(Name = "Type", DbType = "VarChar(50)")] string type)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dataBase, table, type);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.MIDC_SampleOrderPODetailSelect")]
        public int MIDC_SampleOrderPODetailSelect([Parameter(DbType = "VarChar(50)")] string sampleorderpo)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), sampleorderpo);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.GetObjectCodeFileWarrant")]
        public ISingleResult<GetObjectCodeFileWarrantResult> GetObjectCodeFileWarrant([Parameter(Name = "ObjectCode", DbType = "VarChar(50)")] string objectCode, [Parameter(Name = "UserID", DbType = "VarChar(50)")] string userID)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), objectCode, userID);
            return ((ISingleResult<GetObjectCodeFileWarrantResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.MaterialTypeWithCompostion")]
        public int MaterialTypeWithCompostion([Parameter(Name = "MaterailTypeid", DbType = "VarChar(50)")] string materailTypeid, [Parameter(Name = "SuppRef", DbType = "VarChar(50)")] string suppRef)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), materailTypeid, suppRef);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.GetSummaryOutStandingMatHSCode")]
        public ISingleResult<GetSummaryOutStandingMatHSCodeResult> GetSummaryOutStandingMatHSCode([Parameter(DbType = "VarChar(20)")] string param)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), param);
            return ((ISingleResult<GetSummaryOutStandingMatHSCodeResult>)(result.ReturnValue));
        }



    }


    public partial class GetSummaryOutStandingMatHSCodeResult
    {

        private string _hscode;

        private string _materialName;

        private System.Nullable<System.DateTime> _ETA;

        private System.Nullable<decimal> _HaveProjectQty;

        private System.Nullable<decimal> _NoneProjectQty;

        private System.Nullable<decimal> _TotalWeight;

        public GetSummaryOutStandingMatHSCodeResult()
        {
        }

        [Column(Storage = "_hscode", DbType = "NVarChar(200)")]
        public string hscode
        {
            get
            {
                return this._hscode;
            }
            set
            {
                if ((this._hscode != value))
                {
                    this._hscode = value;
                }
            }
        }

        [Column(Storage = "_materialName", DbType = "NVarChar(200)")]
        public string materialName
        {
            get
            {
                return this._materialName;
            }
            set
            {
                if ((this._materialName != value))
                {
                    this._materialName = value;
                }
            }
        }

        [Column(Storage = "_ETA", DbType = "DateTime")]
        public System.Nullable<System.DateTime> ETA
        {
            get
            {
                return this._ETA;
            }
            set
            {
                if ((this._ETA != value))
                {
                    this._ETA = value;
                }
            }
        }

        [Column(Storage = "_HaveProjectQty", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> HaveProjectQty
        {
            get
            {
                return this._HaveProjectQty;
            }
            set
            {
                if ((this._HaveProjectQty != value))
                {
                    this._HaveProjectQty = value;
                }
            }
        }

        [Column(Storage = "_NoneProjectQty", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> NoneProjectQty
        {
            get
            {
                return this._NoneProjectQty;
            }
            set
            {
                if ((this._NoneProjectQty != value))
                {
                    this._NoneProjectQty = value;
                }
            }
        }

        [Column(Storage = "_TotalWeight", DbType = "Decimal(0,0)")]
        public System.Nullable<decimal> TotalWeight
        {
            get
            {
                return this._TotalWeight;
            }
            set
            {
                if ((this._TotalWeight != value))
                {
                    this._TotalWeight = value;
                }
            }
        }
    }


    public partial class GetObjectCodeFileWarrantResult
    {

        private string _UserID;

        private int _IndexNo;

        private int _RoleID;

        private string _ObjectCode;

        private string _ControlName;

        private string _Status;

        private string _ControlType;

        private string _OperationType;

        private System.Nullable<bool> _OperationValue;

        public GetObjectCodeFileWarrantResult()
        {
        }

        [Column(Storage = "_UserID", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string UserID
        {
            get
            {
                return this._UserID;
            }
            set
            {
                if ((this._UserID != value))
                {
                    this._UserID = value;
                }
            }
        }

        [Column(Storage = "_IndexNo", DbType = "Int NOT NULL")]
        public int IndexNo
        {
            get
            {
                return this._IndexNo;
            }
            set
            {
                if ((this._IndexNo != value))
                {
                    this._IndexNo = value;
                }
            }
        }

        [Column(Storage = "_RoleID", DbType = "Int NOT NULL")]
        public int RoleID
        {
            get
            {
                return this._RoleID;
            }
            set
            {
                if ((this._RoleID != value))
                {
                    this._RoleID = value;
                }
            }
        }

        [Column(Storage = "_ObjectCode", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string ObjectCode
        {
            get
            {
                return this._ObjectCode;
            }
            set
            {
                if ((this._ObjectCode != value))
                {
                    this._ObjectCode = value;
                }
            }
        }

        [Column(Storage = "_ControlName", DbType = "VarChar(50)")]
        public string ControlName
        {
            get
            {
                return this._ControlName;
            }
            set
            {
                if ((this._ControlName != value))
                {
                    this._ControlName = value;
                }
            }
        }

        [Column(Storage = "_Status", DbType = "VarChar(50)")]
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

        [Column(Storage = "_ControlType", DbType = "VarChar(50)")]
        public string ControlType
        {
            get
            {
                return this._ControlType;
            }
            set
            {
                if ((this._ControlType != value))
                {
                    this._ControlType = value;
                }
            }
        }

        [Column(Storage = "_OperationType", DbType = "VarChar(50)")]
        public string OperationType
        {
            get
            {
                return this._OperationType;
            }
            set
            {
                if ((this._OperationType != value))
                {
                    this._OperationType = value;
                }
            }
        }

        [Column(Storage = "_OperationValue", DbType = "Bit")]
        public System.Nullable<bool> OperationValue
        {
            get
            {
                return this._OperationValue;
            }
            set
            {
                if ((this._OperationValue != value))
                {
                    this._OperationValue = value;
                }
            }
        }
    }

    partial class SampleOrder : PH.Platform.BO.BaseEntity
    {

        public int Seq
        {
            get
            {
                return string.IsNullOrEmpty(this.SampleOrderNo) ? 0 : Convert.ToInt32(this.SampleOrderNo);
            }
        }


        #region

        #region profile1

        public string ERPSupplier
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.ERPSupplier;


            }
        }

        private string _SupplierStatus;
        public string SupplierStatus
        {
            get
            {
                this._SupplierStatus = this.SupplierProfile.Active;
                switch (this._SupplierStatus)
                {
                    case "1":
                        this._SupplierStatus = "Active";
                        break;
                    case "2":
                        this._SupplierStatus = "Inactive";
                        break;
                    case "3":
                        this._SupplierStatus = "Check";
                        break;
                    case "4":
                        this._SupplierStatus = "To be Dropped";
                        break;
                    default:
                        break;
                    //case "1":
                    //    this._SupplierStatus = "Active";
                    //    break;
                    //case "2":
                    //    this._SupplierStatus = "N-active";
                    //    break;
                    //case "3":
                    //    this._SupplierStatus = "To-Drop";
                    //    break;
                    //case "4":
                    //    this._SupplierStatus = "Others";
                    //    break;
                    //default:
                    //    break;
                }
                //1	Active
                //2	N-active
                //3	To-Drop
                //4	Others
                return this._SupplierStatus;
            }
        }

        public string SupplierName
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.SupplierName;
            }
        }

        public string Beneficiary
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.Beneficiary;
            }
        }

        public string Agent
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.Agent;
            }
        }

        public string Country
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.SupplierFactoryCountryCode;

                //return _supplierProfile.Country;
            }
        }

        public string PaymentTerm
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.PaymentTerms;
            }
        }

        public string DeliveryTerm
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.DeliveryTerms;
            }
        }

        public string ShipMode
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.ShipMode;
            }
        }

        public string DiscchargePort
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.DischargePort;//.DiscchargePorts;
            }
        }

        public string Currency
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.Currency;
            }
        }

        public decimal StandardDev
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return (_supplierProfile.StandardDev ?? 0);
            }
        }

        public decimal Transportation
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return (_supplierProfile.Transportation ?? 0);
            }
        }

        public decimal Freight
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return (_supplierProfile.Frieght ?? 0);
            }
        }

        public decimal AdditionalFrieght
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return (_supplierProfile.AdditionalFrieght ?? 0);
            }
        }

        public decimal EstInterest
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.EstInterest ?? 0;
            }
        }

        public decimal TransitTimeTruck
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.TransitTimeTruck ?? 0;
            }
        }

        public decimal TransitTimeAir
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.TransitTimeAir ?? 0;
            }
        }

        public decimal TransitTimeBoat
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.TransitTimeBoat ?? 0;
            }
        }

        public decimal ExchangeRate
        {
            get
            {
                if (_midcCurrency == null)
                    GetCurrency();
                return _midcCurrency.StdSellRate ?? 0;//_supplierProfile.StandardDev ?? 0;
            }
        }

        public decimal BankCharge
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.BankCharge ?? 0;
            }
        }
        public decimal StockInterest
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.StockInterest ?? 0;
            }
        }
        public decimal InlandForwarderHandling
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.InlandForwarderHandling ?? 0;
            }
        }
        public decimal InlandTransportation
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.InlandTransportation ?? 0;
            }
        }
        public decimal TransitLoadingTransportation
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.TransitLoadingTransportation ?? 0;
            }
        }
        public decimal Frieght_Air
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.Frieght_Air ?? 0;
            }
        }
        public decimal Frieght_Boat
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.Frieght_Boat ?? 0;
            }
        }
        public decimal SubCharge
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);
                return _supplierProfile.SubCharge ?? 0;
            }
        }


        #endregion

        #region profile2
        [NonSerialized]
        private SupplierProfile _supplierProfile;
        public SupplierProfile SupplierProfile
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile(this.Supplier);

                return _supplierProfile;
            }
            set { this._supplierProfile = value; }
        }

        [NonSerialized]
        private PH.BasicInfo.BO.Currency _midcCurrency;
        public PH.BasicInfo.BO.Currency MidcCurrency
        {
            get
            {
                if (_midcCurrency == null)
                    GetCurrency();
                return _midcCurrency;
            }
            set { this._midcCurrency = value; }
        }

        #endregion

        private void GetCurrency()
        {
            try
            {
                PH.BasicInfo.BO.BasicInfoDataContext curdatacontext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();// new PH.BasicInfo.BO.BasicInfoDataContext();

                this.MidcCurrency = (from aa in curdatacontext.Currencies
                                     where aa.Currency1 == this.Currency
                                     select aa).First<PH.BasicInfo.BO.Currency>();


            }
            catch { }


            if (this._midcCurrency == null)
                this._midcCurrency = new PH.BasicInfo.BO.Currency();

        }

        private void GetSupplierProfile(string supplier)
        {
            try
            {
                BasicInfoDataContext curdatacontext = ContextBuilder.CreateContext<BasicInfoDataContext>();// new PH.BasicInfo.BO.BasicInfoDataContext();
                this._supplierProfile = (from aa in curdatacontext.SupplierProfiles
                                         where aa.Supplier == supplier
                                         select aa).First<SupplierProfile>();

                GetCurrency();

                //foreach (Detail obj in this.Details)
                //{
                //    obj.Supplier = supplier;
                //}
            }
            catch
            { }

            if (this._supplierProfile == null)
                this._supplierProfile = new SupplierProfile();


        }
        partial void OnCreated()
        {
            this.CreateDate = DateTime.Now;
            this.Factory = "SL";
        }
        partial void OnSupplierChanged()
        {
            GetSupplierProfile(this.Supplier);
            //Xsj2012-04-19:Add
            this._POTransit = GetPOTransit(this.Factory);

            this.SendPropertyChanged("Supplier");

            if (this.SampleOrderNo == "0000") return;
            foreach (var item in this.Details)
            {
                item.Supplier = this.Supplier;
                item.GetSupplierProfile();
            }

        }
        //partial void OnSupplierChanging(string value)
        //{
        //    //GetSupplierProfile(value);
        //}
        #endregion

        //Xsj2012-04-19:添加用於外部強制刷新SampleOrder
        public void RiseSupplierChanging()
        {
            OnSupplierChanged();
        }

        #region from 6P
        private IncontermsTransit _POTransit;
        public IncontermsTransit POTransit
        {
            get
            {
                if (_POTransit == null)
                    //_POTransit = GetPOTransit();
                    //Xsj2012-04-19注釋掉以上代碼更改為以下
                    _POTransit = GetPOTransit(this.Factory);

                return _POTransit;
            }
            set { this._POTransit = value; }
        }

        //private PH.BasicInfo.BO.IncontermsTransit GetPOTransit()
        //{
        //    DateTime dt = new DateTime(2011, 6, 2);
        //    var aa = from a in this.SupplierProfile.IncontermsTransits
        //             where a.ERPSupplier == this.ERPSupplier && a.PHFactories == "SL" && a.IsLCL == true
        //             && (a.FromEffectivedDate <= (this.CreateDate ?? DateTime.Now) || a.FromEffectivedDate < dt)
        //             orderby a.FromEffectivedDate descending
        //             select a;
        //    return aa.FirstOrDefault();
        //}

        #region
        //Xsj2012-04-19:應王先的要求，計算Item的成本時，不能固定計算“SL”的，改為依操作者選擇不同的“Byr Prod Site”計算不同的地點成本，同時計算“SL”的作為標准成本
        private PH.BasicInfo.BO.IncontermsTransit GetPOTransit(string PHFactory)
        {
            DateTime dt = new DateTime(2011, 6, 2);
            var aa = from a in this.SupplierProfile.IncontermsTransits
                     where a.ERPSupplier == this.ERPSupplier && a.PHFactories == PHFactory && a.IsLCL == true
                     && (a.FromEffectivedDate <= (this.CreateDate ?? DateTime.Now) || a.FromEffectivedDate < dt)

                     && (string.IsNullOrEmpty(a.NonStandard1) ? "" : a.NonStandard1) != "Y"

                     orderby a.FromEffectivedDate descending
                     select a;

            return aa.Where(dr => dr.NonStandard1 != "Y").Count() > 0 ?
                    aa.Where(dr => dr.NonStandard1 != "Y").FirstOrDefault() : aa.FirstOrDefault();

            //return   aa.FirstOrDefault();
        }
        #endregion


        //(1) Point2PortOfOriginCost                --> InlandForwarderHandling
        //(2) FreightCost                           --> Frieght
        //(3) Port2PointOfDestinationCost           --> InlandTransportation
        //(4) PointOfDestination2ProductionSiteCost  --> TransitLoadingTransportation
        public string Incoterms
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.Incoterms;
            }
        }
        public string TransitMode
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.TransitMode;
            }
        }


        public string TransitPoit
        {
            get
            {
                return this.POTransit == null ? "" : string.Format("{0}: {1}", this.POTransit.TransitPointDescEN, this.POTransit.IncotermsPointPort);
            }
        }
        public string TransitPointDescEN
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.TransitPointDescEN;
            }
        }
        public string IncotermsPointPort
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.IncotermsPointPort;
            }
        }

        private decimal _Point2PortOfOriginCost;
        public decimal Point2PortOfOriginCost
        {
            get
            {
                this._Point2PortOfOriginCost = this.POTransit == null ? 0 : this.POTransit.Point2PortOfOriginCost ?? 0;
                return this._Point2PortOfOriginCost;
            }
        }

        private decimal _FreightCost;// Freight
        public decimal FreightCost
        {
            get
            {
                this._FreightCost = this.POTransit == null ? 0 : this.POTransit.FreightCost ?? 0;
                return this._FreightCost;
            }
        }

        private decimal _Port2PointOfDestinationCost;
        public decimal Port2PointOfDestinationCost
        {
            get
            {
                this._Port2PointOfDestinationCost = this.POTransit == null ? 0 : this.POTransit.Port2PointOfDestinationCost ?? 0;
                return this._Port2PointOfDestinationCost;
            }
        }

        private decimal _PointOfDestination2ProductionSiteCost;
        public decimal PointOfDestination2ProductionSiteCost
        {
            get
            {
                this._PointOfDestination2ProductionSiteCost = this.POTransit == null ? 0 : this.POTransit.PointOfDestination2ProductionSiteCost ?? 0;
                return this._PointOfDestination2ProductionSiteCost;
            }
        }

        private string _TimeFrame1;
        public string TimeFrame1
        {
            get
            {
                this._TimeFrame1 = this.POTransit == null ? "N.A." : this.POTransit.TimeFrameDesc;
                return this._TimeFrame1;
            }
        }

        private string _TimeFrame2;
        public string TimeFrame2
        {
            get
            {
                this._TimeFrame2 = this.POTransit == null ? "N.A." : this.POTransit.TimeFrame2;
                return this._TimeFrame2;
            }
        }
        #endregion

    }
    public class SampleOrderGroup
    {
        public SampleOrderGroup()
        {

        }

        public string SamplerOrderNo { get; set; }
        public string SamplerGroup { get; set; }
        public SupplierProfile Supplier { get; set; }
        public DateTime? CreateDate { get; set; }
        public string Factory { get; set; }
        public string SeansonNo { get; set; }

        public List<Detail> Details { get; set; }
    }

    partial class NewColorDetail : PH.Platform.BO.BaseEntity
    {

    }
    partial class NewCupDetail : PH.Platform.BO.BaseEntity
    {
        public int Seq
        {
            get
            {
                ColorSizeCupRangeList list = new ColorSizeCupRangeList();
                ColorSizeCupRange r = list.GetColorSizeCupRange("Cup", this.Cup);
                return (r == null) ? 0 : (r.Seq ?? 0);
            }
        }
    }
    partial class NewSizeDetail : PH.Platform.BO.BaseEntity
    {
        public int Seq
        {
            get
            {
                ColorSizeCupRangeList list = new ColorSizeCupRangeList();
                ColorSizeCupRange r = list.GetColorSizeCupRange("Size", this.Size);
                return (r == null) ? 0 : (r.Seq ?? 0);
            }
        }
    }
    partial class Detail : PH.Platform.BO.BaseEntity
    {

        //Add by shulin -20210310(應Cary Chan需求增加欄位)
        partial void OnPatternShapeRepeatSChanged()
        {
            this.PatternShapeRepeatMax = CalculateMaxMin(this.PatternShapeRepeatStandard, this.PatternShapeRepeatS, "max");
            this.PatternShapeRepeatMin = CalculateMaxMin(this.PatternShapeRepeatStandard, this.PatternShapeRepeatS, "min");
        }


        partial void OnPatternShapeRepeatStandardChanged()
        {
            this.PatternShapeRepeatMax = CalculateMaxMin(this.PatternShapeRepeatStandard, this.PatternShapeRepeatS, "max");
            this.PatternShapeRepeatMin = CalculateMaxMin(this.PatternShapeRepeatStandard, this.PatternShapeRepeatS, "min");
        }

        public string SupplierBriefName
        {
            get
            {
                return this.SupplierProfile.ShortName;
            }
        }


        public string SuppSizeCupElementDesc
        {
            get
            {

                PH.MIDc.BO.MIDcDataContext context = this.CurrentDataContext as PH.MIDc.BO.MIDcDataContext;
                if (context == null)
                    context = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

                PH.MIDc.BO.MaterialType MaterialTypeDB = context.MaterialTypes.Where(dr => dr.MaterialType1 == this.MaterialType && dr.MaterialGroup == this.MaterialGroup).FirstOrDefault();


                //Misc_DataDictionary _dict = MiscHelper.MiscCtx.Misc_DataDictionaries.
                //    Where(p => p.DataType == "PH.MIDc.SuppSizeCupElement" && p.DataCode == MaterialTypeDB.SuppSizeCupElementDes).FirstOrDefault();

                return MaterialTypeDB == null ? "" : MaterialTypeDB.SuppSizeCupElementDes;

            }
        }



        //public string SuppPrdnSite
        //{
        //    get
        //    {
        //        SupplierFactory obj = this.SupplierProfile.SupplierFactories.FirstOrDefault(p => p.ERPSupplier == this.ERPSupplier);
        //        if (obj == null) return null;
        //        return this.SupplierProfile.BuyerCode == "PHDG" ? obj.DescriptionCN : obj.Description;
        //    }
        //}

        //Add by shulin -20210310(應Cary Chan需求自动计算H.S Code Weight(KGS/Unit)欄位的值)
        //公式如下  a). 重量(GramWeightPerPurchaseUnit)除以1000 等于H.S Code weight (KGS/unit) --- for Material Group A/C/E/L (lace material type EMB/NNL/NRL/NRN/NRT/NSC/NST)    
        //partial void OnGramWeightPerPurchaseUnitChanged() 
        //{
        //    string[] MaterialGroupTeam = new string[] { "A", "C", "E", "L" };
        //    string[] MaterialTypeTeam = new string[] { "EMB", "NNL", "NRL", "NRN","NRT","NSC","NST" };
        //    if (MaterialGroupTeam.Contains(this.MaterialGroup) && MaterialTypeTeam.Contains(this.MaterialType))
        //    {
        //        this.WeightHsCode = ((this.GramWeightPerPurchaseUnit ?? 0) / this.RateToPHUnit / 1000).ToString();
        //    }
        //}
        ////Add by shulin -20210310(應Cary Chan需求自动计算H.S Code Weight(KGS/Unit)欄位的值)
        //// b). Weight GM/SQM: 重量除以1000乘以Edge to edge(supp width) 等于H.S Code weight (KGS/unit) -- for M & L(Allover lace material type SAL/RAL/EMA)
        //partial void  OnWeightGmSqmChanged()
        //{
        //    string[] MaterialGroupTeam = new string[] { "M", "L" };
        //    string[] MaterialTypeTeam = new string[] { "SAL", "RAL", "EMA"};
        //    if (MaterialGroupTeam.Contains(this.MaterialGroup) && MaterialTypeTeam.Contains(this.MaterialType))
        //    {
        //        this.WeightHsCode = (  ( (this.WeightGmSqm??0) / 1000 /1000 ) * (SupplierWidth??0)  ).ToString();
        //    }

        //}


        //partial void OnLoaded()
        //{
        //    this.HsCode = this.Currency.ToUpper() == "RMB" ? this.MaterialTypeHSCodeRMB : this.MaterialTypeHSCodeXRMB;
        //}


        #region Profile1

        public bool Selected { get; set; }

        private string _SupplierStatus;
        public string SupplierStatus
        {
            get
            {
                this._SupplierStatus = this.SupplierProfile.Active;
                switch (this._SupplierStatus)
                {
                    case "1":
                        this._SupplierStatus = "Active";
                        break;
                    case "2":
                        this._SupplierStatus = "N-active";
                        break;
                    case "3":
                        this._SupplierStatus = "To-Drop";
                        break;
                    case "4":
                        this._SupplierStatus = "Others";
                        break;
                    default:
                        break;
                }
                //1	Active
                //2	N-active
                //3	To-Drop
                //4	Others
                return this._SupplierStatus;
            }
        }

        [NonSerialized]
        private string _SupplierName;
        public string SupplierName
        {
            get
            {
                this._SupplierName = this.SupplierProfile.SupplierName;
                return this._SupplierName;
            }
        }

        [NonSerialized]
        private string _ERPSupplier;
        public string ERPSupplier
        {
            get
            {
                this._ERPSupplier = this.SupplierProfile.ERPSupplier;
                return this._ERPSupplier;
            }
        }

        #region Xsj20110718：为取消Enterkey内的独立定的的BO而添加
        [NonSerialized]
        private string _WERPSupplier;
        public string WERPSupplier
        {
            get
            {
                return _WERPSupplier;
            }
            set
            {
                _WERPSupplier = value;
            }
        }
        #endregion



        [NonSerialized]
        private string _Beneficiary;
        public string Beneficiary
        {
            get
            {
                _Beneficiary = this.SupplierProfile.Beneficiary;
                return _Beneficiary;
            }
        }

        //Xsj20110714:添加BeneficiaryName
        #region
        [NonSerialized]
        private string _BeneficiaryName;
        public string BeneficiaryName
        {
            get
            {
                PH.BasicInfo.BO.SupplierProfile currSProfile = GetSpecialSupplier(this.Beneficiary);
                if (currSProfile != null)
                {
                    _BeneficiaryName = currSProfile.SupplierName;
                }
                else
                {
                    _BeneficiaryName = "";
                }
                return _BeneficiaryName;
            }
        }
        #endregion


        [NonSerialized]
        private string _Agent;
        public string Agent
        {
            get
            {
                _Agent = this.SupplierProfile.Agent;
                return _Agent;
            }
        }

        //Xsj20110714:添加AgentName
        #region
        private string _AgentName;
        public string AgentName
        {
            get
            {
                PH.BasicInfo.BO.SupplierProfile currSProfile = GetSpecialSupplier(this.Agent);
                if (currSProfile != null)
                {
                    _AgentName = currSProfile.SupplierName;
                }
                else
                {
                    _AgentName = "";
                }
                return _AgentName;
            }
        }


        #endregion



        //Xsj20110714:添加AgentName
        #region
        private PH.BasicInfo.BO.SupplierProfile GetSpecialSupplier(string SupplierCode)
        {
            PH.BasicInfo.BO.BasicInfoDataContext curdatacontext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();

            PH.BasicInfo.BO.SupplierProfile currSProfile = (from aa in curdatacontext.SupplierProfiles
                                                            where aa.ERPSupplier == SupplierCode || aa.Supplier == SupplierCode
                                                            select aa).First<SupplierProfile>();
            curdatacontext.CloseConnection();
            curdatacontext.Dispose();
            return currSProfile;
        }
        #endregion



        [NonSerialized]
        private decimal _StandardDev;
        public decimal StandardDev
        {
            get
            {
                _StandardDev = this.SupplierProfile.StandardDev ?? 0;
                return _StandardDev;
            }
        }
        private decimal _MarkerWidthBuffer;
        public decimal MarkerWidthBuffer
        {
            get
            {
                _MarkerWidthBuffer = this.SupplierProfile.MarkerWidthBuffer ?? 0;
                return _MarkerWidthBuffer;
            }
        }

        [NonSerialized]
        private decimal _Transportation;
        public decimal Transportation
        {
            get
            {
                _Transportation = this.SupplierProfile.Transportation ?? 0;
                return _Transportation;
            }
        }

        [NonSerialized]
        private decimal _Freight;
        public decimal Freight
        {
            get
            {
                _Freight = this.SupplierProfile.Frieght ?? 0;
                return _Freight;
            }
        }

        [NonSerialized]
        private decimal _AdditionalFreight;
        public decimal AdditionalFreight
        {
            get
            {
                _AdditionalFreight = this.SupplierProfile.AdditionalFrieght ?? 0;
                return _AdditionalFreight;
            }
        }

        partial void OnEstInterestChanged();
        [NonSerialized]
        private decimal _EstInterest;
        public decimal EstInterest
        {
            get
            {
                _EstInterest = this.SupplierProfile.EstInterest ?? 0;
                return _EstInterest;
            }
            set
            {
                _EstInterest = value;
                this.SendPropertyChanged("EstInterest");
                this.OnEstInterestChanged();
            }
        }

        [NonSerialized]
        private string _supplier_Remarks;
        public string Supplier_Remarks
        {
            get
            {
                _supplier_Remarks = this.SupplierProfile.Remarks;
                return _supplier_Remarks;
            }
        }

        [NonSerialized]
        private string _Currency;
        public string Currency
        {
            get
            {
                this._Currency = this.SupplierProfile.Currency;
                return this._Currency;
            }
        }

        [NonSerialized]
        private decimal _ExchangeRate;
        public decimal ExchangeRate
        {
            get
            {
                this._ExchangeRate = this.MidcCurrency.StdSellRate ?? 0;
                return this._ExchangeRate;
            }
        }

        [NonSerialized]
        private string _PaymentTerm;
        public string PaymentTerm
        {
            get
            {
                this._PaymentTerm = this.SupplierProfile.PaymentTerms;
                return this._PaymentTerm;
            }
        }

        [NonSerialized]
        private decimal _valueAdjustTotal;
        public decimal ValueAdjustTotal
        {
            get
            {
                _valueAdjustTotal = (_ValueAdjustAddDyeing ?? 0) + (_PriceIncrProtect ?? 0) + (_UncertainQuality ?? 0) + (_OthersBuffer ?? 0);
                return _valueAdjustTotal;
            }
        }

        [NonSerialized]
        private decimal _RedirectPrice;
        public decimal RedirectPrice
        {
            get
            {
                return this._RedirectPrice;
            }
        }



        [NonSerialized]
        private decimal _allInPrice;
        public decimal AllInPrice
        {
            get
            {
                //if ((this._RateToPHUnit ?? 0) == 0)
                //    _allInPrice = 0; 
                //else  
                this._allInPrice = (RateToPHUnit ?? 0) == 0 ? 0 : AllInPrice_Supplier / (this._RateToPHUnit ?? 1);
                return _allInPrice;
            }
        }

        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slAllInPrice;
        public decimal SLAllInPrice
        {
            get
            {
                this._slAllInPrice = (RateToPHUnit ?? 0) == 0 ? 0 : SLAllInPrice_Supplier / (this._RateToPHUnit ?? 1);
                return _slAllInPrice;
            }
        }
        #endregion


        //Xsj20110720:Add
        #region
        //Last
        [NonSerialized]
        private decimal _allInPriceLast;
        public decimal AllInPriceLast
        {
            get
            {
                this._allInPriceLast = (RateToPHUnit ?? 0) == 0 ? 0 : AllInPriceLast_Supplier / (this._RateToPHUnit ?? 1);
                return _allInPriceLast;
            }
        }
        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slAllInPriceLast;
        public decimal SLAllInPriceLast
        {
            get
            {
                this._slAllInPriceLast = (RateToPHUnit ?? 0) == 0 ? 0 : SLAllInPriceLast_Supplier / (this._RateToPHUnit ?? 1);
                return _slAllInPriceLast;
            }
        }
        #endregion

        [NonSerialized]
        private decimal _allInPriceLast_Supplier;
        public decimal AllInPriceLast_Supplier
        {
            get
            {
                decimal c0 = (this.Point2PortOfOriginCost + this.FreightCost + this.Port2PointOfDestinationCost + this.PointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                MaterialPriceHeader lastMaterialPriceHeader = new PriceHeaderInfo().GetLastPriceHeader(this, "Standard", "");
                if (lastMaterialPriceHeader == null) return 0;
                decimal avgPrice = SupplierAvgPrice(lastMaterialPriceHeader);
                decimal c1 = avgPrice * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._allInPriceLast_Supplier = c1 + c2;

                return _allInPriceLast_Supplier;
            }
        }
        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slAllInPriceLast_Supplier;
        public decimal SLAllInPriceLast_Supplier
        {
            get
            {
                decimal c0 = (this.SLPoint2PortOfOriginCost + this.SLFreightCost + this.SLPort2PointOfDestinationCost + this.SLPointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                MaterialPriceHeader lastMaterialPriceHeader = new PriceHeaderInfo().GetLastPriceHeader(this, "Standard", "");
                if (lastMaterialPriceHeader == null) return 0;
                decimal avgPrice = SupplierAvgPrice(lastMaterialPriceHeader);
                decimal c1 = avgPrice * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._slAllInPriceLast_Supplier = c1 + c2;

                return _slAllInPriceLast_Supplier;
            }
        }
        #endregion


        [NonSerialized]
        private decimal _sqmPriceLast;
        public decimal SQMPriceLast
        {
            get
            {
                _sqmPriceLast = (this.SqmM ?? 0) == 0 ? 0 : this.AllInPriceLast / (this.SqmM ?? 1);
                return _sqmPriceLast;

            }
        }
        /// <summary>
        /// Xsj20110831:依条件决定是否显示SQMPriceLast
        /// </summary>
        public decimal? SQMPriceLastByCondition
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SQMPriceLast;
                }
                else
                {
                    return null;
                }
            }
        }

        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        [NonSerialized]
        private decimal _slSqmPriceLast;
        public decimal SLSQMPriceLast
        {
            get
            {
                _slSqmPriceLast = (this.SqmM ?? 0) == 0 ? 0 : this.SLAllInPriceLast / (this.SqmM ?? 1);
                return _slSqmPriceLast;

            }
        }
        /// <summary>
        /// Xsj20110831:依条件决定是否显示SQMPriceLast
        /// </summary>
        public decimal? SLSQMPriceLastByCondition
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SLSQMPriceLast;
                }
                else
                {
                    return null;
                }
            }
        }
        #endregion



        //Current
        [NonSerialized]
        private decimal _allInPriceCurrent;
        public decimal AllInPriceCurrent
        {
            get
            {
                this._allInPriceCurrent = (RateToPHUnit ?? 0) == 0 ? 0 : AllInPriceCurrent_Supplier / (this._RateToPHUnit ?? 1);
                return _allInPriceCurrent;
            }
        }

        [NonSerialized]
        private decimal _allInPriceCurrent_Supplier;
        public decimal AllInPriceCurrent_Supplier
        {
            get
            {
                decimal c0 = (this.Point2PortOfOriginCost + this.FreightCost + this.Port2PointOfDestinationCost + this.PointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                MaterialPriceHeader currentMaterialPriceHeader = new PriceHeaderInfo().GetCurrPriceHeader(this, "Standard", "");
                if (currentMaterialPriceHeader == null) return 0;
                decimal avgPrice = SupplierAvgPrice(currentMaterialPriceHeader);
                decimal c1 = avgPrice * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._allInPriceCurrent_Supplier = c1 + c2;

                return _allInPriceCurrent_Supplier;
            }
        }
        [NonSerialized]
        private decimal _sqmPriceCurrent;
        public decimal SQMPriceCurrent
        {
            get
            {
                _sqmPriceCurrent = (this.SqmM ?? 0) == 0 ? 0 : this.AllInPriceCurrent / (this.SqmM ?? 1);
                return _sqmPriceCurrent;

            }
        }
        /// <summary>
        /// Xsj20110831:依条件决定是否显示SQMPriceCurrent
        /// </summary>
        public decimal? SQMPriceCurrentByCondition
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SQMPriceCurrent;
                }
                else
                {
                    return null;
                }
            }
        }
        #endregion


        #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        [NonSerialized]
        private decimal _slSqmPriceCurrent;
        public decimal SLSQMPriceCurrent
        {
            get
            {
                _slSqmPriceCurrent = (this.SqmM ?? 0) == 0 ? 0 : this.SLAllInPrice / (this.SqmM ?? 1);
                return _slSqmPriceCurrent;

            }
        }
        /// <summary>
        /// Xsj20110831:依条件决定是否显示SQMPriceCurrent
        /// </summary>
        public decimal? SLSQMPriceCurrentByCondition
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SLSQMPriceCurrent;
                }
                else
                {
                    return null;
                }
            }
        }
        #endregion


        //Future
        [NonSerialized]
        private decimal _allInPriceFuture;
        public decimal AllInPriceFuture
        {
            get
            {
                this._allInPriceFuture = (RateToPHUnit ?? 0) == 0 ? 0 : AllInPriceFuture_Supplier / (this._RateToPHUnit ?? 1);
                return _allInPriceFuture;
            }
        }
        #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slAllInPriceFuture;
        public decimal SLAllInPriceFuture
        {
            get
            {
                this._slAllInPriceFuture = (RateToPHUnit ?? 0) == 0 ? 0 : SLAllInPriceFuture_Supplier / (this._RateToPHUnit ?? 1);
                return _slAllInPriceFuture;
            }
        }
        #endregion
        [NonSerialized]
        private decimal _allInPriceFuture_Supplier;
        public decimal AllInPriceFuture_Supplier
        {
            get
            {
                decimal c0 = (this.Point2PortOfOriginCost + this.FreightCost + this.Port2PointOfDestinationCost + this.PointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                MaterialPriceHeader futrueMaterialPriceHeader = new PriceHeaderInfo().GetFuturePriceHeader(this, "Standard", "");
                if (futrueMaterialPriceHeader == null) return 0;
                decimal avgPrice = SupplierAvgPrice(futrueMaterialPriceHeader);
                decimal c1 = avgPrice * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._allInPriceFuture_Supplier = c1 + c2;

                return _allInPriceFuture_Supplier;
            }
        }


        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slAllInPriceFuture_Supplier;
        public decimal SLAllInPriceFuture_Supplier
        {
            get
            {
                decimal c0 = (this.SLPoint2PortOfOriginCost + this.SLFreightCost + this.SLPort2PointOfDestinationCost + this.SLPointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                MaterialPriceHeader futrueMaterialPriceHeader = new PriceHeaderInfo().GetFuturePriceHeader(this, "Standard", "");
                if (futrueMaterialPriceHeader == null) return 0;
                decimal avgPrice = SupplierAvgPrice(futrueMaterialPriceHeader);
                decimal c1 = avgPrice * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._slAllInPriceFuture_Supplier = c1 + c2;

                return _slAllInPriceFuture_Supplier;
            }
        }
        #endregion

        [NonSerialized]
        private decimal _sqmPriceFuture;
        public decimal SQMPriceFuture
        {
            get
            {
                _sqmPriceFuture = (this.SqmM ?? 0) == 0 ? 0 : this.AllInPriceFuture / (this.SqmM ?? 1);
                return _sqmPriceFuture;

            }
        }
        /// <summary>
        /// Xsj20110831:依条件决定是否显示SQMPriceFuture
        /// </summary>
        public decimal? SQMPriceFutureByCondition
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SQMPriceFuture;
                }
                else
                {
                    return null;
                }
            }
        }

        #endregion

        [NonSerialized]
        private decimal _slSqmPriceFuture;
        public decimal SLSQMPriceFuture
        {
            get
            {
                _slSqmPriceFuture = (this.SqmM ?? 0) == 0 ? 0 : this.AllInPriceFuture / (this.SqmM ?? 1);
                return _slSqmPriceFuture;

            }
        }
        /// <summary>
        /// Xsj20110831:依条件决定是否显示SQMPriceFuture
        /// </summary>
        public decimal? SLSQMPriceFutureByCondition
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SLSQMPriceFuture;
                }
                else
                {
                    return null;
                }
            }
        }

        //public bool HaveVAT { get { return (this.VAT ?? 0) > 0; } }

        public bool HaveVAT { get { return this.SupplierProfile.HaveVAT; } }
        public decimal? VAT
        {
            get
            {
                return this.HaveVAT ? this.SupplierProfile.VAT : (decimal?)null;
            }
        }

        #region MIDc calc


        [NonSerialized]
        private decimal _allInPrice_Supplier;
        public decimal AllInPrice_Supplier
        {
            get
            {
                //decimal c0 = (this.Transportation + this.Freight + this.AdditionalFreight + this.EstInterest + this.StandardDev) / 100;
                //decimal c1 = this.AvgPrice_Supplier * (1 + c0) * this.ExchangeRate;
                //decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                //decimal c2 = totalAjust;
                //this._allInPrice_Supplier = c1 + c2;

                //decimal c0 = (this.OverseaInlandCost + this.OverseaFreightCost + this.HKInlandCost + this.HK2SLTransportCost + this.EstInterest + this.StandardDev) / 100;
                decimal c0 = (this.Point2PortOfOriginCost + this.FreightCost + this.Port2PointOfDestinationCost + this.PointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                decimal c1 = this.AvgPrice_Supplier * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._allInPrice_Supplier = c1 + c2;

                return _allInPrice_Supplier;
            }
        }

        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slAllInPrice_Supplier;
        public decimal SLAllInPrice_Supplier
        {
            get
            {
                decimal c0 = (this.SLPoint2PortOfOriginCost + this.SLFreightCost + this.SLPort2PointOfDestinationCost + this.SLPointOfDestination2ProductionSiteCost + this.EstInterest + this.StandardDev + this.MarkerWidthBuffer) / 100;
                decimal c1 = this.AvgPrice_Supplier * (1 + c0) * this.ExchangeRate;
                decimal totalAjust = ((this.ValueAdjustAddDyeing ?? 0) + (this.PriceIncrProtect ?? 0) + (this.UncertainQuality ?? 0) + (this.OthersBuffer ?? 0));
                decimal c2 = totalAjust;
                this._slAllInPrice_Supplier = c1 + c2;

                return _slAllInPrice_Supplier;
            }
        }
        #endregion

        [NonSerialized]
        private decimal _sqmPrice;
        public decimal SQMPrice
        {
            get
            {
                _sqmPrice = (this.SqmM ?? 0) == 0 ? 0 : this.AllInPrice / (this.SqmM ?? 1);
                //zrtag this._SQMPrice1 = _sqmPrice;
                return _sqmPrice;

            }
        }

        //Xsj20110831:依条件决定是否显示SQMPrice
        public decimal? SQMPriceStr
        {
            get
            {
                string[] SpecialMaterialType = new string[] { "EMA", "NAL", "SAL", "RAL", "PSL" };
                if (this.MaterialGroup == "M" || (this.MaterialGroup == "L" && SpecialMaterialType.Contains(this.MaterialType)))
                {
                    return SQMPrice;
                }
                else
                {
                    return null;
                }
            }
        }


        [NonSerialized]
        private decimal _avgPrice_Supplier;
        public decimal AvgPrice_Supplier
        {
            get
            {
                decimal d = 0;
                int count = 0;
                DateTime dt = new DateTime(2020, 1, 1);
                bool haveNewPrice = false;
                #region Xsj20110817:为完善历史多单价而添加
                PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
                MaterialPriceHeader currMPH = pHInfo.GetCurrPriceHeader(this, MaterialPriceType.Standard.ToString(), "");
                #endregion


                #region Xsj20110817:为完善历史多单价而注释掉
                //if (this.MaterialPrices != null && this.MaterialPrices.Count > 0)
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                if (currMPH != null && currMPH.MaterialPrices.Count > 0)
                #endregion
                {
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //#region Xsj20110525:加实现添加历史多单价而添加
                    ////Xsj:获取Standard当前使用中的标准单价,计算平均单价时，只计算Standard当前使用中的单价
                    //List<DateTime> currStandardPriceDateTimeList = this.MaterialPriceHeaders.Where(p => p.PriceType == MaterialPriceType.Standard.ToString()).OrderBy(p => p.EffectFromDate).Select(p => p.EffectFromDate).Distinct().ToList();
                    //if (currStandardPriceDateTimeList.Count == 0)
                    //{
                    //    this._avgPrice_Supplier = 0;
                    //    return this._avgPrice_Supplier;
                    //}
                    //DateTime currDateTime = new DateTime();
                    //currDateTime = currStandardPriceDateTimeList[0];
                    //foreach (DateTime item in currStandardPriceDateTimeList)
                    //{
                    //    if (item.Date <= DateTime.Now.Date && item.Date > currDateTime.Date)
                    //    {
                    //        currDateTime = item;
                    //    }
                    //}
                    //#endregion
                    #endregion



                    #region Xsj20110817:为完善历史多单价而注释掉
                    //foreach (var item in this.MaterialPrices)
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    foreach (var item in currMPH.MaterialPrices)
                    #endregion
                    {
                        //只计算标准单价的当前使用单价的标准单价
                        #region Xsj20110525:加实现添加历史多单价而注释掉
                        //bool isStandardPrice = item.PriceType == MaterialPriceType.Standard.ToString()
                        //    && (item.Price > 0) && (item.Ratio > 0)
                        //&& (DateTime.Now >= item.EffectFromDate && DateTime.Now <= (item.EffectEndDate ?? dt));
                        #endregion

                        #region Xsj20110817:为完善历史多单价而注释掉
                        //#region Xsj20110525:加实现添加历史多单价而添加
                        //bool isStandardPrice = item.PriceType == MaterialPriceType.Standard.ToString()
                        //    && (item.Price > 0) && (item.Ratio > 0)
                        //&& (DateTime.Now.Date >= item.EffectFromDate.Date && DateTime.Now.Date <= (item.EffectEndDate ?? dt) && item.EffectFromDate.Date == currDateTime.Date);
                        //#endregion
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        bool isStandardPrice = item.PriceType == MaterialPriceType.Standard.ToString()
                            && (item.Price > 0) && (item.Ratio > 0);
                        //&& (DateTime.Now.Date >= item.EffectFromDate.Date&& DateTime.Now.Date <= (item.EffectEndDate ?? dt));  Xsj:20111124:應JaneLy要求，對於最後的單價已過期，仍依其計算當前的AllInPrice
                        #endregion
                        if (isStandardPrice)
                        {
                            if ((item.Price ?? 0) == 0 || (item.Ratio ?? 0) == 0) continue;

                            decimal p = ((item.Price ?? 0) * (item.Ratio ?? 0));
                            int r = (item.Ratio ?? 0);

                            int rs = 1;
                            int rc = 1;
                            if (item.HasSizeRange)
                                rs = item.SizeRangeCount;
                            if (item.HasCupRange)
                                rc = item.CupRangeCount;

                            d += ((item.Price ?? 0) * (item.Ratio ?? 0) * rs * rc);
                            count += ((item.Ratio ?? 0) * rs * rc);
                            haveNewPrice = true;
                        }
                    }
                }

                //if (this.RatioPrices.Count > 0)//兼容以前 Ratio Price
                if (!haveNewPrice)
                {
                    foreach (RatioPrice rp in this.RatioPrices)
                    {
                        if ((rp.Price ?? 0) == 0 || (rp.Ratio ?? 0) == 0) continue;
                        d += ((rp.Price ?? 0) * (rp.Ratio ?? 0));
                        count += (rp.Ratio ?? 0);
                    }
                }

                if (count == 0)
                    this._avgPrice_Supplier = 0;
                else
                    this._avgPrice_Supplier = d / count;

                return this._avgPrice_Supplier;
            }
        }

        //Xsj20110720:计算指定MaterialPriceHeader的平均价格
        #region
        public decimal SupplierAvgPrice(MaterialPriceHeader CurrMaterialPriceHeader)
        {
            decimal result;
            decimal d = 0;
            int count = 0;
            DateTime dt = new DateTime(2020, 1, 1);

            bool haveNewPrice = false;
            #region Xsj20110817:为完善历史多单价而注释掉
            //if (this.MaterialPrices != null && this.MaterialPrices.Count > 0)
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            if (CurrMaterialPriceHeader != null && CurrMaterialPriceHeader.MaterialPrices.Count > 0)
            #endregion
            {

                #region Xsj20110817:为完善历史多单价而注释掉
                //foreach (var item in this.MaterialPrices)
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                foreach (var item in CurrMaterialPriceHeader.MaterialPrices)
                #endregion
                {
                    //只计算标准单价的标准单价
                    //bool isStandardPrice = item.PriceType == MaterialPriceType.Standard.ToString() && (item.Price > 0) && (item.Ratio > 0)
                    //                       && (item.EffectFromDate == CurrMaterialPriceHeader.EffectFromDate);
                    bool isStandardPrice = item.PriceType == CurrMaterialPriceHeader.PriceType && item.Category == CurrMaterialPriceHeader.Category && (item.Price > 0) && (item.Ratio > 0)
                                           && (item.EffectFromDate.Date == CurrMaterialPriceHeader.EffectFromDate.Date);

                    if (isStandardPrice)
                    {
                        if ((item.Price ?? 0) == 0 || (item.Ratio ?? 0) == 0) continue;

                        decimal p = ((item.Price ?? 0) * (item.Ratio ?? 0));
                        int r = (item.Ratio ?? 0);

                        int rs = 1;
                        int rc = 1;
                        if (item.HasSizeRange)
                            rs = item.SizeRangeCount;
                        if (item.HasCupRange)
                            rc = item.CupRangeCount;

                        d += ((item.Price ?? 0) * (item.Ratio ?? 0) * rs * rc);
                        count += ((item.Ratio ?? 0) * rs * rc);
                        haveNewPrice = true;
                    }
                }
            }

            //if (this.RatioPrices.Count > 0)//兼容以前 Ratio Price
            if (!haveNewPrice)
            {
                foreach (RatioPrice rp in this.RatioPrices)
                {
                    if ((rp.Price ?? 0) == 0 || (rp.Ratio ?? 0) == 0) continue;
                    d += ((rp.Price ?? 0) * (rp.Ratio ?? 0));
                    count += (rp.Ratio ?? 0);
                }
            }

            if (count == 0)
                result = 0;
            else
                result = d / count;

            return result;
        }
        #endregion

        [NonSerialized]
        private decimal _avgPrice_PH;
        public decimal AvgPrice_PH
        {
            get
            {
                this._avgPrice_PH = (RateToPHUnit ?? 0) == 0 ? 0 : AvgPrice_Supplier / (this._RateToPHUnit ?? 1);
                return this._avgPrice_PH;
            }
        }

        [NonSerialized]
        private decimal _allInPrice1_Supplier;
        public decimal AllInPrice1_Supplier
        {
            get
            {
                //_allInPrice1_Supplier = (_AvgPrice_PH1 ?? 0) * (RateToPHUnit ?? 0);
                _allInPrice1_Supplier = _avgPrice_PH * (RateToPHUnit ?? 0);

                return _allInPrice1_Supplier;
            }
        }

        [NonSerialized]
        private string _Country;
        public string Country
        {
            get
            {
                this._Country = this.SupplierProfile.SupplierFactoryCountryCode;
                //this._Country = this.SupplierProfile.Country;
                return _Country;
            }
        }

        [NonSerialized]
        private string _DeliveryTerm;
        public string DeliveryTerm
        {
            get
            {
                this._DeliveryTerm = this.SupplierProfile.DeliveryTerms;
                return this._DeliveryTerm;
            }
        }

        [NonSerialized]
        private string _ShipMode;
        public string ShipMode
        {
            get
            {
                this._ShipMode = this.SupplierProfile.ShipMode;
                return this._ShipMode;
            }
        }

        [NonSerialized]
        private string _DiscchargePort;
        public string DiscchargePort
        {
            get
            {
                this._DiscchargePort = this.SupplierProfile.DischargePort;
                return this._DiscchargePort;
            }
        }

        [NonSerialized]
        private decimal _TransitTimeTruck;
        public decimal TransitTimeTruck
        {
            get
            {
                this._TransitTimeTruck = this.SupplierProfile.TransitTimeTruck ?? 0;
                return this._TransitTimeTruck;
            }
        }

        [NonSerialized]
        private decimal _TransitTimeAir;
        public decimal TransitTimeAir
        {
            get
            {
                this._TransitTimeAir = this.SupplierProfile.TransitTimeAir ?? 0;
                return this._TransitTimeAir;
            }
        }

        [NonSerialized]
        private decimal _TransitTimeBoat;
        public decimal TransitTimeBoat
        {
            get
            {
                this._TransitTimeBoat = this.SupplierProfile.TransitTimeBoat ?? 0;
                return this._TransitTimeBoat;
            }
        }

        [NonSerialized]
        private string _QAStatusStr;
        public string QAStatusStr
        {
            get
            {
                string s;
                switch (this.QAStatus)
                {
                    case 1: s = "PASS";
                        break;
                    case 2: s = "FAIL";
                        break;
                    case 3: s = "RE-TEST";
                        break;
                    case 4: s = "TEST";
                        break;
                    case 6: s = "Thai Mat't";
                        break;
                    default:
                        s = "";
                        break;
                }
                _QAStatusStr = s;
                return _QAStatusStr;
            }
        }

        [NonSerialized]
        private string _SupplierWidthS1;
        public string SupplierWidthS1
        {
            get
            {
                if (_SupplierWidthS == null || _SupplierWidthS == "")
                {
                    if (SupplierWidth.HasValue)
                        _SupplierWidthS1 = string.Format("{0:0.####}MM", SupplierWidth);
                    else
                        _SupplierWidthS1 = "";

                }
                else if (SupplierWidth == 0)
                    _SupplierWidthS1 = _SupplierWidthS;
                else
                    _SupplierWidthS1 = _SupplierWidthS.ToUpper().StartsWith(string.Format("{0:0.####}MM", SupplierWidth)) ? _SupplierWidthS : string.Format("{0:0.####}MM {1}", _SupplierWidth, _SupplierWidthS);
                return this._SupplierWidthS1;
            }
        }

        [NonSerialized]
        private string _UsableWidthS1;
        public string UsableWidthS1
        {
            get
            {
                if (_UsableWidthS == null || _UsableWidthS == "") _UsableWidthS1 = string.Format("{0:0.####}MM", UsableWidth);
                else if (UsableWidth == 0) _UsableWidthS1 = _UsableWidthS;
                else
                    _UsableWidthS1 = _UsableWidthS.ToUpper().StartsWith(string.Format("{0:0.####}MM", UsableWidth)) ?
                    _UsableWidthS : string.Format("{0:0.####}MM {1}", _UsableWidth, _UsableWidthS);
                return this._UsableWidthS1;
            }
        }

        [NonSerialized]
        private string _MarkerWidthS1;
        public string MarkerWidthS1
        {
            get
            {
                if (_MarkerWidthS == null || _MarkerWidthS == "") _MarkerWidthS1 = string.Format("{0:0.####}MM", MarkerWidth);
                else if (MarkerWidth == 0) _MarkerWidthS1 = _MarkerWidthS;
                else
                {
                    _MarkerWidthS1 = _MarkerWidthS.ToUpper().StartsWith(string.Format("{0:0.####}MM", MarkerWidth)) ?
                    _MarkerWidthS : string.Format("{0:0.####}MM {1}", _MarkerWidth, _MarkerWidthS);
                }
                return this._MarkerWidthS1;
            }
        }

        [NonSerialized]
        private string _TubularWidthS1;
        public string TubularWidthS1
        {
            get
            {
                if (_TubularWidthS == null || _TubularWidthS == "") _TubularWidthS1 = string.Format("{0:0.####}MM", TubularWidth);
                else if (TubularWidth == 0) _TubularWidthS1 = _TubularWidthS;
                else
                    _TubularWidthS1 = _TubularWidthS.ToUpper().StartsWith(string.Format("{0:0.####}MM", TubularWidth)) ?
                    _TubularWidthS : string.Format("{0:0.####}MM {1}", _TubularWidth, _TubularWidthS);
                return this._TubularWidthS1;
            }
        }

        public System.Nullable<decimal> SqmM
        {
            get
            {
                return (this.MarkerWidth ?? 0) / 1000;

            }
        }

        [NonSerialized]
        private System.Nullable<decimal> _RateToPHUnit;
        public System.Nullable<decimal> RateToPHUnit
        {
            get
            {

                if (_SupplierUnit != null && _PHUnit != null && _SupplierUnit != "" && _PHUnit != "" && _PHUnit == _SupplierUnit)
                    this._RateToPHUnit = 1;
                else
                {
                    switch (this._MaterialGroup)
                    {
                        //2.1.2) 如果 Supplier Unit 爲 LB, 
                        //Rate to PH-Unit=  454 / (WeightGmSqm * SupplierWidth / 1000); --- changed to 453.6 / <WeightGmSqm * (SupplierWidth + 10mm) / 1000>
                        //2.1.3) 如果 Supplier Unit 爲 KG, 
                        //Rate to PH-Unit=  1000 / (WeightGmSqm * SupplierWidth / 1000); ---changed to 1000 / <WeightGmSqm * (SupplierWidth + 10mm) / 1000>

                        case "M":
                            //if (this.SupplierUnit == "Y")
                            //    this._RateToPHUnit = 0.9141;//(1 / 1.0936M);
                            if (this.SupplierUnit == "M")
                                this._RateToPHUnit = 1;
                            else if (this.SupplierUnit == "LB")
                                this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 453.6M / (this._WeightGmSqm * (this._SupplierWidth + 10M) / 1000);
                            else if (this.SupplierUnit == "KG")
                                this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 1000M / (this._WeightGmSqm * (this._SupplierWidth + 10M) / 1000);
                            else
                            {
                                //GetARate();
                                this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;
                            }
                            break;
                        case "E":
                            goto case "M";
                        case "L":
                            goto case "M";
                        case "C": //this._RateToPHUnit = 1;
                            //GetARate();
                            this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;
                            break;
                        case "A":
                            goto case "M";
                        default:
                            //GetARate();
                            this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;
                            break;
                    }


                    //this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;

                }

                //if (this._RateToPHUnit == 0)
                //{
                //    switch (this._MaterialGroup)
                //    {
                //        case "M":
                //            if (this.SupplierUnit == "Y")
                //                this._RateToPHUnit = (1 / 1.0936M);
                //            else if (this.SupplierUnit == "M")
                //                this._RateToPHUnit = 1;
                //            else if (this.SupplierUnit == "LB")
                //                this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 454 / (this._WeightGmSqm * this._SupplierWidth / 1000);
                //            else if (this.SupplierUnit == "KG")
                //                this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 1000 / (this._WeightGmSqm * this._SupplierWidth / 1000);
                //            break;
                //        case "E":
                //            goto case "M";
                //        case "L":
                //            goto case "M";
                //        case "C": this._RateToPHUnit = 1;
                //            break;
                //        case "A":
                //            goto case "M";
                //        default:
                //            break;
                //    }
                //}
                if (this._RateToPHUnit.HasValue)
                {
                    string s = string.Format("{0:#,##0.####}", this._RateToPHUnit);
                    this._RateToPHUnit = Convert.ToDecimal(s);
                }
                return this._RateToPHUnit;
            }

        }

        //public System.Nullable<decimal> RateToPHUnit
        //{
        //    get
        //    {
        //        if (_SupplierUnit != null && _PHUnit != null && _SupplierUnit != "" && _PHUnit != "" && _PHUnit == _SupplierUnit)
        //            this._RateToPHUnit = 1;
        //        else
        //        {
        //            switch (this._MaterialGroup)
        //            {
        //                case "M":
        //                    //if (this.SupplierUnit == "Y")
        //                    //    this._RateToPHUnit = 0.9141;//(1 / 1.0936M);
        //                    if (this.SupplierUnit == "M")
        //                        this._RateToPHUnit = 1;
        //                    else if (this.SupplierUnit == "LB")
        //                        this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 454 / (this._WeightGmSqm * this._SupplierWidth / 1000);
        //                    else if (this.SupplierUnit == "KG")
        //                        this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 1000 / (this._WeightGmSqm * this._SupplierWidth / 1000);
        //                    else
        //                    {
        //                        //GetARate();
        //                        this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;
        //                    }
        //                    break;
        //                case "E":
        //                    goto case "M";
        //                case "L":
        //                    goto case "M";
        //                case "C": //this._RateToPHUnit = 1;
        //                    //GetARate();
        //                    this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;
        //                    break;
        //                case "A":
        //                    goto case "M";
        //                default:
        //                    //GetARate();
        //                    this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;
        //                    break;
        //            }


        //            //this._RateToPHUnit = (this.ARate == null) ? 0 : this.ARate.Rate;

        //        }

        //        //if (this._RateToPHUnit == 0)
        //        //{
        //        //    switch (this._MaterialGroup)
        //        //    {
        //        //        case "M":
        //        //            if (this.SupplierUnit == "Y")
        //        //                this._RateToPHUnit = (1 / 1.0936M);
        //        //            else if (this.SupplierUnit == "M")
        //        //                this._RateToPHUnit = 1;
        //        //            else if (this.SupplierUnit == "LB")
        //        //                this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 454 / (this._WeightGmSqm * this._SupplierWidth / 1000);
        //        //            else if (this.SupplierUnit == "KG")
        //        //                this._RateToPHUnit = (this.WeightGmSqm * this.SupplierWidth) == 0 ? 0 : 1000 / (this._WeightGmSqm * this._SupplierWidth / 1000);
        //        //            break;
        //        //        case "E":
        //        //            goto case "M";
        //        //        case "L":
        //        //            goto case "M";
        //        //        case "C": this._RateToPHUnit = 1;
        //        //            break;
        //        //        case "A":
        //        //            goto case "M";
        //        //        default:
        //        //            break;
        //        //    }
        //        //}

        //        return this._RateToPHUnit;
        //    }

        //}


        public System.Byte[] Photo2
        {
            get
            {
                MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();

                try
                {
                    return (from a in context.DetailImages where a.SuppRef == this._SuppRef select a).First<DetailImage>().Photo;
                }
                catch { return null; }


            }
            set
            {

            }
        }

        #endregion

        #region Profile2

        [NonSerialized]
        private ARate _arate;
        public ARate ARate
        {
            get
            {
                if (_arate == null)
                    GetARate();
                return _arate;
            }
            set { this._arate = value; }
        }

        [NonSerialized]
        private SupplierProfile _supplierProfile = null;
        public SupplierProfile SupplierProfile
        {
            get
            {
                if (_supplierProfile == null)
                    GetSupplierProfile();

                return _supplierProfile;
            }
            set { this._supplierProfile = value; }
        }

        private MaterialTypeDimension _matTypeDimension;
        public MaterialTypeDimension MatTypeDimension
        {
            get
            {
                GetMatTypeDimension();

                return _matTypeDimension;
            }
            set { this._matTypeDimension = value; }
        }

        [NonSerialized]
        private List<MaterialPrintDetail> _printDetails;
        public List<MaterialPrintDetail> PrintDetails
        {
            get
            {
                if (_printDetails == null)
                    GetPrintDetails();
                return _printDetails;
            }

            set { _printDetails = value; }
        }

        [NonSerialized]
        private PH.BasicInfo.BO.Currency _midcCurrency;
        public PH.BasicInfo.BO.Currency MidcCurrency
        {
            get
            {
                if (_midcCurrency == null)
                    GetCurrency();
                return _midcCurrency;
            }
            set { _midcCurrency = value; }
        }

        #endregion

        #region Profile3
        public System.Nullable<decimal> SupplierWidthMax
        {
            get { return CalculateMaxMin(this.SupplierWidth, this.SupplierWidthS, "max"); }
        }
        public System.Nullable<decimal> SupplierWidthMin
        {
            get { return CalculateMaxMin(this.SupplierWidth, this.SupplierWidthS, "min"); }
        }

        /// <summary>
        /// 得到海關申報幅寬的Remark  2017-11-16 由David加入
        /// </summary>
        /// <returns></returns>
        public string GetCustomDeclareSupplierWidthRemark()
        {
            string Str = "";
            if (this.SupplierWidth.HasValue)
            {
                Str = string.Format("{0}米", Convert.ToString(this.SupplierWidth / 1000.00m));
            }
            return Str;

            //if (this.SupplierWidthMin.HasValue && this.SupplierWidthMax.HasValue)
            //{
            //    return string.Format("{0}米-{1}米",
            //        Convert.ToString(this.SupplierWidthMin / 1000.00m),
            //        Convert.ToString(this.SupplierWidthMax / 1000.00m));
            //}
            //else
            //{
            //    return string.Format("{0}米", Convert.ToString(this.SupplierWidth / 1000.00m));
            //}
        }

        /// <summary>
        /// 得到海關申報成份含量的Remark  2017-11-16 由David加入
        /// </summary>
        /// <returns></returns>
        public string GetCustomDeclareCompositionRemark()
        {
            string Str = "";
            var lists = this.CompositionDetails.Where(p => p.Per > 0);
            foreach (var c in lists)
            {
                //Str += c.ChineseNameCN + "/" + Math.Round(c.Per ?? 0, 2).ToString() + "% ";
                //Str += c.ChineseNameCN + "/" + (c.Per ?? 0).ToString("#0.####") + "% ";
                Str += c.ChineseNameCN + (c.Per ?? 0).ToString("#0.####") + "% ";
            }

            return Str.Trim();
        }

        /// <summary>
        /// 得到海關申報中重量的Remark(每平方米克重)  2017-11-16 由David加入
        /// </summary>
        /// <returns></returns>
        public string GetCustomDeclareWeightGmSqmRemark()
        {
            string Str = "";
            if (this.WeightGmSqm.HasValue)
            {
                //Str = string.Format("{0}克", Convert.ToString(this.WeightGmSqm));
                Str = string.Format("{0}克/平方米", (this.WeightGmSqm ?? 0).ToString("#0.####"));
            }
            return Str;
        }

        /// <summary>
        /// 得到海關申報中重量的Remark(每只重量) 2017-11-17 由David加入
        /// </summary>
        /// <returns></returns>
        public string GetCustomDeclareWeightAnySingle()
        {
            string Str = "";
            if (this.RateToPHUnit.HasValue)
            {
                decimal weightHSCode = string.IsNullOrEmpty(this.WeightHsCode) ? 0 : Convert.ToDecimal(this.WeightHsCode);
                Str = string.Format("{0}KG", Convert.ToString(Math.Round((this.RateToPHUnit ?? 0) * weightHSCode, 4)));
            }
            return Str;
        }

        public System.Nullable<decimal> UsableWidthMax
        {
            get { return CalculateMaxMin(this.UsableWidth, this.UsableWidthS, "max"); }
        }
        public System.Nullable<decimal> UsableWidthMin
        {
            get { return CalculateMaxMin(this.UsableWidth, this.UsableWidthS, "min"); }
        }

        public System.Nullable<decimal> MarkerWidthMax
        {
            get { return CalculateMaxMin(this.MarkerWidth, this.MarkerWidthS, "max"); }
        }
        public System.Nullable<decimal> MarkerWidthMin
        {
            get { return CalculateMaxMin(this.MarkerWidth, this.MarkerWidthS, "min"); }
        }

        public System.Nullable<decimal> TubularWidthMax
        {
            get { return CalculateMaxMin(this.TubularWidth, this.TubularWidthS, "max"); }
        }
        public System.Nullable<decimal> TubularWidthMin
        {
            get { return CalculateMaxMin(this.TubularWidth, this.TubularWidthS, "min"); }
        }

        public System.Nullable<decimal> WeightGmSqmMax
        {
            get { return CalculateMaxMinGSM(this.WeightGmSqm, this.WeightGmSqmS, "max"); }
        }
        public System.Nullable<decimal> WeightGmSqmMin
        {
            get { return CalculateMaxMinGSM(this.WeightGmSqm, this.WeightGmSqmS, "min"); }
        }
        #endregion

        #region functions



        /*
                                                from valA in dc.Details
                                                join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                                                where (valB.Status != null && valB.Status.ToString() == MIDcUpdateConfirmStatus.Submit.ToString())
                                                select valA;
         
         */

        //private DetailChangeConfirm     
        //{
        // get
        // {
        //         return DetailChangeConfirm;
        //     }
        // }

        private DetailChangeConfirm _ConfirmApproval
        {
            get
            {


                //  from valA in dc.Details
                //                               join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                               where 
                //* (valB.Status != null && valB.Status.ToString() == MIDcUpdateConfirmStatus.Submit.ToString())
                //                               select valA;




                PH.MIDc.BO.MIDcDataContext context = this.CurrentDataContext as PH.MIDc.BO.MIDcDataContext;
                if (context == null)
                    context = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                DetailChangeConfirm mt = context.DetailChangeConfirms.Where
                    (dr => (dr.SuppRef + "@" + dr.Version.ToString()) == (this.SuppRef + "@" + this.Version.ToString())
                        && dr.Status != null && dr.Status == "Approval"
                    ).FirstOrDefault();
                return mt;
            }
        }

        //ConfirmUser	ConfirmDate
        public string MIDcPriceChangeConfirmUser
        {
            get
            {
                return _ConfirmApproval == null ? "" : _ConfirmApproval.ConfirmUser;
                //if(_ConfirmApproval==null)
            }
        }

        public DateTime? MIDcPriceChangeConfirmUserDate
        {
            get
            {
                return _ConfirmApproval == null ? (DateTime?)null : _ConfirmApproval.ConfirmDate;
                //if(_ConfirmApproval==null)
            }
        }


        private MaterialType _matType
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext context = this.CurrentDataContext as PH.MIDc.BO.MIDcDataContext;
                if (context == null)
                    context = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                MaterialType mt = context.MaterialTypes.Where(P => P.MaterialType1 == this.MaterialType).FirstOrDefault();
                return mt;
            }
        }
        public string SizeMatrixStr
        {
            get
            {
                if (!string.IsNullOrEmpty(this.SizeMatrix))
                {
                    string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                    MultiLanguageList langList = new MultiLanguageList();
                    return langList.GetDictionaryLanguageText("PH.WO.SizeMatrix", this.SizeMatrix, "Description", langID);

                    //DictionaryList dic = new DictionaryList();
                    //PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.SizeMatrix", this.SizeMatrix);
                    //return dictionary == null ? "" : dictionary.Description;
                }
                else
                {
                    return "";
                }
            }
        }
        public string SupplierUOM
        {
            get
            {
                if (string.IsNullOrEmpty(this.SupplierUnit)) return "";
                if (this.SupplierUnit.StartsWith("CN"))
                    return "CN";
                else if (this.SupplierUnit.StartsWith("PP"))
                    return "PP";
                else return this.SupplierUnit;
            }
            set { value = ""; }
        }

        public string SpecialTerms
        {
            get
            {
                CompositionDetail cd = new CompositionDetail();
                cd.Per = 0;
                foreach (var item in this.CompositionDetails)
                {
                    if (item.Per > 0 && item.Per > cd.Per)
                        cd = item;

                }
                return cd.SpecialTerms;
            }
            set { value = ""; }
        }
        public string MaterialTypeName
        {
            get
            {
                MaterialType mt = this._matType;
                if (mt == null) return "";
                return mt.Description;
            }

            set { value = ""; }
        }

        public string MaterialTypeDimensionDesc
        {
            get
            {
                MaterialType mt = this._matType;
                if (mt == null) return "";
                return mt.DemensionDes;
            }
            set { value = ""; }
        }
        public bool IsSpecificSize
        {
            get
            {

                //add by shulin 2023-02-13
                return string.IsNullOrEmpty(this.SingleRangeSize) ? false : this.SingleRangeSize.StartsWith("2D");
                /*
                //string s = "";
                switch (this.SingleRangeSize)
                {
                    //case "Mw":
                    case "Ss":
                    case "Sw":
                    case "Sl":
                    case "St":
                        //s = "3Ds";
                        return true;
                    //case "Rs":
                    //case "Rw":
                    //case "Rl":
                    //    s = "3Dr";
                    //    break;
                    //case "Rc":
                    //    s = "4D";
                    //    break;
                    default:
                        return false;
                }
                */


            }
            set { value = false; }
        }

        public string MIDcDimensionDesc
        {
            get
            {
                //string s = "";
                //switch (this.SingleRangeSize)
                //{
                //    case "Mw":
                //    case "Ss":
                //    case "Sw":
                //    case "Sl":
                //    case "St":
                //        s = "3Ds";
                //        break;
                //    case "Rs":
                //    case "Rw":
                //    case "Rl":
                //        s = "3Dr";
                //        break;
                //    case "Rc":
                //        s = "4D";
                //        break;
                //    default:
                //        s = string.IsNullOrEmpty(this.Dimension) ? "" : string.Format("{0}D", this.Dimension); 
                //        break;
                //}

                //add by shulin 2023-02-13
                string s = string.IsNullOrEmpty(this.Dimension) ? "" : string.Format("{0}D", this.Dimension);
                return s;
            }
            set { value = ""; }
        }





        public string DimensionDesc
        {
            get
            {
                return string.Format("{0}-{1}", MIDcDimensionDesc, SingleRangeSize);
            }
            set { value = ""; }
        }

        public void AutoInsertRatioPrice(MIDcDataContext context1, bool isnew)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();// PH.Platform.Misc.BO.PHPlatformMiscDataContext();

            var PriceColorDefault = from dictionaryData in context.Misc_DataDictionaries//.Misc_DataDictionaries
                                    where dictionaryData.DataType == "PH.MIDc.PriceColorDefault"
                                    orderby dictionaryData.Description
                                    select dictionaryData;

            int i = 1;
            bool tag = true;
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary obj in PriceColorDefault)
            {
                foreach (RatioPrice ratobj in this.RatioPrices)
                {
                    if (ratobj.ColorCategory == obj.DataCode)
                    {
                        tag = false;
                        ratobj.Id = i;
                        break;
                    }
                }

                if (tag)
                {
                    PH.MIDc.BO.RatioPrice newobj = new PH.MIDc.BO.RatioPrice();
                    newobj.SuppRef = this.SuppRef;
                    newobj.ColorCategory = obj.DataCode;
                    newobj.Price = 0;
                    newobj.Ratio = 1;
                    newobj.Id = i;
                    this.RatioPrices.Add(newobj);
                    context1.RatioPrices.InsertOnSubmit(newobj);
                    //context1.SubmitChanges();
                }

                tag = true;
                i++;
            }


        }

        public void AutoInsertComposition(MIDcDataContext context1, bool isnew)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            var CompositionDefault = from dictionaryData in context.Misc_DataDictionaries
                                     where dictionaryData.DataType == "PH.MIDc.CompositionDefault"
                                     orderby dictionaryData.Description
                                     select dictionaryData;

            bool tag = true;

            foreach (PH.Platform.Misc.BO.Misc_DataDictionary obj in CompositionDefault)
            {

                foreach (CompositionDetail comobj in this.CompositionDetails)
                {
                    if (obj.DataCode == comobj.Composition)
                    {
                        tag = false;
                        break;
                    }
                }

                if (tag)
                {
                    PH.MIDc.BO.CompositionDetail newobj = new PH.MIDc.BO.CompositionDetail();
                    newobj.SuppRef = this.SuppRef;
                    newobj.Composition = obj.DataCode;
                    newobj.Per = 0;
                    newobj.YarnCount = "";
                    newobj.SpecialTerms = "";
                    this.CompositionDetails.Add(newobj);
                    context1.CompositionDetails.InsertOnSubmit(newobj);
                    //context1.SubmitChanges();
                }

                tag = true;
            }
        }

        public static bool IsWideWidthOfL(string materialType)
        {
            //switch (materialType)
            //{
            //    case "CAC":
            //        return true;
            //    case "CAL":
            //        return true;
            //    case "NAL":
            //        return true;
            //    case "NLM":
            //        return true;
            //    case "PAL":
            //        return true;
            //    case "PSL":
            //        return true;
            //    case "RAL":
            //        return true;
            //    case "SAL":
            //        return true;
            //    case "EMA":
            //        return true;
            //    default:
            //        return false;
            //}

            //NAL PSL RAL SAL EMA
            switch (materialType)
            {
                case "NAL":
                    return true;
                case "PSL":
                    return true;
                case "RAL":
                    return true;
                case "SAL":
                    return true;
                case "EMA":
                    return true;
                default:
                    return false;
            }
        }


        public void CalculateWeightHsCode()
        {
            //switch (MaterialGroup)
            //{
            //    case "M":
            //        WeightHsCode = ((WeightGmSqm ?? 0) / 1000 * (SupplierWidth ?? 0) / 1000).ToString();// Math.Round( (WeightGmSqm??0) / 1000 * (SupplierWidth??0 )/ 1000,6).ToString();
            //        break;
            //    case "A":
            //        WeightHsCode = ((WeightGmSqm ?? 0) / 1000).ToString();//Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
            //        break;
            //    case "C":
            //        WeightHsCode = ((WeightGmSqm ?? 0) / 1000).ToString();  //Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
            //        break;
            //    case "E":
            //        WeightHsCode = ((WeightGmSqm ?? 0) / 1000).ToString(); //Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
            //        break;
            //    case "L":
            //        WeightHsCode = ((WeightGmSqm ?? 0) / 1000).ToString(); //Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
            //        break;

            //}

            WeightHsCode = WeightHsCodReference;
        }

        //按公式计算出物料的参考重量(海关使用)
        public string WeightHsCodReference
        {
            get
            {
                string Str = "";
                switch (MaterialGroup)
                {
                    case "M":
                        Str = ((WeightGmSqm ?? 0) / 1000 * (SupplierWidth ?? 0) / 1000).ToString("N6");// Math.Round( (WeightGmSqm??0) / 1000 * (SupplierWidth??0 )/ 1000,6).ToString();
                        break;
                    case "A":
                        Str = ((WeightGmSqm ?? 0) / 1000).ToString("N6");//Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
                        break;
                    case "C":
                        Str = ((WeightGmSqm ?? 0) / 1000).ToString("N6");  //Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
                        break;
                    case "E":
                        Str = ((WeightGmSqm ?? 0) / 1000).ToString("N6"); //Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
                        break;
                    case "L":
                        Str = ((WeightGmSqm ?? 0) / 1000).ToString("N6"); //Math.Round((WeightGmSqm ?? 0) / 1000, 6).ToString();
                        break;
                }

                //2023-10-13 小燕子又要求以下两种Material Type用另外的公式计算
                //1. Material type EMA & SAL & RAL 計算海關重量公式改為Weight gm/sqm重量除以1000 x Edge to Edge width(如101/1000x1.5=0.1515). 
                //2. Material type ELW Purchase unit 為KG 的，計算海關重量單位改為1除以 Convertion rate(如1/172.1034=0.00581)
                if (this.MaterialType == "EMA" || this.MaterialType == "SAL" || this.MaterialType == "RAL")
                {
                    Str = ((WeightGmSqm ?? 0) / 1000 * (SupplierWidth ?? 0) / 1000).ToString("N6");
                }
                else if (this.MaterialType == "ELW" && this.SupplierUnit == "KG")
                {
                    Str = (1 / (RateToPHUnit ?? 0)).ToString("N6");
                }


                try
                {
                    if (Convert.ToDecimal(Str) == 0)
                    {
                        return null;
                    }
                }
                catch
                {
                    return Str.TrimEnd('0');
                }


                return Str.TrimEnd('0');
            }
        }


        //partial void OnMaterialGroupChanged()
        //{
        //    CalculateWeightHsCode();
        //}

        partial void OnWeightGmSqmChanged()
        {
            CalculateWeightHsCode();
        }




        //partial void OnSupplierWidthChanged()
        //{
        //    CalculateWeightHsCode();
        //}


        public void CopyTo(Detail d)
        {
            //Supplier item reference
            //Mat'l type
            //Price
            //Pruchase width
            //Weight gm/sqm
            //Weight KGS/unit (H.S code)

            if (d == null) return;

            d.SampleOrderNo = this._SampleOrderNo;

            //為解決CopyAsNew時，因為取不到Currency報錯而加入， 2017-11-20由David加入
            d.Supplier = this._Supplier;
            d.GetSupplierProfile();

            //Xsj20111017:恢復對MaterialType的復制
            d.MaterialType = this._MaterialType;

            //d.MaterialCode = this._MaterialCode;
            //d.SuppRef = "";
            d.Status = this.Status;
            d.MIDStatus = MIDc_MIDStatus.TMID_WIP;// "NonApproved";
            //d.CreateDate = this._CreateDate;
            //d.PromoteUser = this._PromoteUser;
            //d.PromoteDate = this._PromoteDate;
            d.Branded = this._Branded;
            //d.Supplier = this._Supplier;
            d.Edging_Single = this._Edging_Single;
            d.Edging_DoubleScallops = this._Edging_DoubleScallops;
            d.Commodity = this._Commodity;
            //d.Pattern = this._Pattern;

            //Xsj20121121:應YanYao的要求:Copy時不Copy字段Lace的值.
            //d.Lace = this._Lace;

            d.Customer = this._Customer;
            d.SpecialLabel = this._SpecialLabel;
            d.SeasonNo = this._SeasonNo;
            d.RiskItem = this._RiskItem;
            d.Description = this._Description;
            d.Oeko = this._Oeko;
            d.ValueAdjustAddDyeing = this._ValueAdjustAddDyeing;
            d.PriceIncrProtect = this._PriceIncrProtect;
            d.UncertainQuality = this._UncertainQuality;
            d.OthersBuffer = this._OthersBuffer;
            d.WastageOnCAC = this._WastageOnCAC;
            d.Relaxtion = this._Relaxtion;
            d.TargetPrice = this._TargetPrice;
            d.Gauge = this._Gauge;
            d.Composition = this._Composition;
            d.Density = this._Density;
            d.GauagePerinch = this._GauagePerinch;
            d.MinOrder = this._MinOrder;
            d.MinColor = this._MinColor;
            d.MinStartProduct = this._MinStartProduct;
            d.LastQtnRef = this._LastQtnRef;
            d.LastQtnDate = this._LastQtnDate;
            d.QtnPriceValidityDays = this._QtnPriceValidityDays;
            d.QtnPriceExpiryDate = this._QtnPriceExpiryDate;
            d.SubchargeOrder = this._SubchargeOrder;
            d.SubchargeShipMode = this._SubchargeShipMode;
            d.DyeingMultiple = this._DyeingMultiple;
            d.PackUnit = this._PackUnit;
            d.SubPackUnit = this._SubPackUnit;
            d.SubPackQty = this._SubPackQty;
            d.SubPackNo = this._SubPackNo;
            d.QAStatus = this._QAStatus;
            d.YarnDays = this._YarnDays;
            d.GeigeDays = this._GeigeDays;
            d.RunningDays = this._RunningDays;
            d.ExclusiveBy = this._ExclusiveBy;
            d.LeadTimeHYCheck = this._LeadTimeHYCheck;
            d.LeadTimeGeigeCheck = this._LeadTimeGeigeCheck;
            d.LeadTimeRunningCheck = this._LeadTimeRunningCheck;
            d.SupplierUnit = this._SupplierUnit;
            d.PHUnit = this._PHUnit;
            //d.SupplierWidth = this._SupplierWidth;
            //d.UsableWidth = this._UsableWidth;
            //d.MarkerWidth = this._MarkerWidth;
            //d.TubularWidth = this._TubularWidth;
            //d.SupplierWidthS = this._SupplierWidthS;
            //d.UsableWidthS = this._UsableWidthS;
            //d.MarkerWidthS = this._MarkerWidthS;
            //d.TubularWidthS = this._TubularWidthS;
            //d.WeightGmSqm = this._WeightGmSqm;
            //d.WeightGmSqmS = this._WeightGmSqmS;
            d.SuppM = this._SuppM;
            d.MarkerM = this._MarkerM;
            d.TubularM = this._TubularM;
            d.RateToPHUnitBK = this._RateToPHUnitBK;
            d.ScallopHeight = this._ScallopHeight;
            d.PerCone = this._PerCone;
            d.Comments = this._Comments;
            //d.DataPreparedBy = this._DataPreparedBy;
            d.HangerDataPreparedBy = this._HangerDataPreparedBy;
            //d.Confirmed = this._Confirmed;
            //d.ConfirmedBy = this._ConfirmedBy;
            //d.ConfirmDate = this._ConfirmDate;
            //d.Approved = this._Approved;
            //d.ApprovedBy = this._ApprovedBy;
            //d.ApproveDate = this._ApproveDate;

            //Xsj20111017:應JaneLai的要求，恢復HangerPassed/HangerPassedBy/HangerPassedDate的復制功能
            d.HangerPassed = this._HangerPassed;
            //d.HangerPassedBy = this._HangerPassedBy;
            //d.HangerPassedDate = this._HangerPassedDate;

            //d.FormPassed = this._FormPassed;
            //d.FormPassedBy = this._FormPassedBy;
            //d.FormPassedDate = this._FormPassedDate;
            d.HsCode = this._HsCode;
            //Xsj20111022:應Janelai要求，復制WeightHsCode
            d.WeightHsCode = this._WeightHsCode;
            d.ImageFile = this._ImageFile;
            d.AllInPrice1 = this._AllInPrice1;
            d.SQMPrice1 = this._SQMPrice1;
            d.avgPrice_Supplier1 = this._avgPrice_Supplier1;
            d.AvgPrice_PH1 = this._AvgPrice_PH1;
            d.MaterialGroup = this._MaterialGroup;
            d.DestinationPort = this._DestinationPort;
            d.RateToPHUnit1 = this._RateToPHUnit1;
            d.OrderShptLeadtime = this._OrderShptLeadtime;
            //d.Photo = this._Photo;

            d.TechWarp = this._TechWarp;
            d.TechWept = this._TechWept;
            d.TechWarpF = this._TechWarpF;
            d.TechWeptF = this._TechWeptF;
            d.DataPreparedDate = this._DataPreparedDate;
            d.Dimension = this._Dimension;
            d.LiabilityFollowUp = this._LiabilityFollowUp;
            d.HangerDataPreparedDate = this._HangerDataPreparedDate;
            d.SizeMatrix = this._SizeMatrix;
            //d.Version=this._Version;
            //d.AmendmentNo=this._AmendmentNo;
            d.YieldUsage = this._YieldUsage;
            d.SingleRangeSize = this._SingleRangeSize;
            d.UnitForSize = this._UnitForSize;
            d.IsPurchaseItem = this._IsPurchaseItem;
            d.Operation = this._Operation;
            d.IsMultiPrice = this._IsMultiPrice;
            d.MultiPriceOption = this._MultiPriceOption;
            d.Liability = this._Liability;
            d.LiabilityForCustomer = this._LiabilityForCustomer;
            d.CustomerAppointed = this._CustomerAppointed;
            d.PurchaseWidthOption = this._PurchaseWidthOption;
            //d.PurchaseWidth = this._PurchaseWidth;
            //d.HasSpecialPrice = this._HasSpecialPrice;
            //d.HasCustFavorPrice = this._HasCustFavorPrice;
            //d.HasVolumePrice = this._HasVolumePrice;
            //d.HasPeriodPrice = this._HasPeriodPrice;
            //d.TMIDCompleted = this._TMIDCompleted;
            //d.TMIDCompletedBy = this._TMIDCompletedBy;
            //d.TMIDCompletedDate = this._TMIDCompletedDate;
            //d.PMIDWIP = this._PMIDWIP;
            //d.PMIDWIPBy = this._PMIDWIPBy;
            //d.PMIDWIPDate = this._PMIDWIPDate;
            //d.PMIDCompleted = this._PMIDCompleted;
            //d.PMIDCompletedBy = this._PMIDCompletedBy;
            //d.PMIDCompletedDate = this._PMIDCompletedDate;


            //Xsj20111017:應JaneLai的要求，添加HaveSizeMatrix/SizeMatrix的Clone和Copy
            d.HaveSizeMatrix = this.HaveSizeMatrix;
            d.SizeMatrix = this.SizeMatrix;

            foreach (CompositionDetail obj in this.CompositionDetails)
            {
                #region
                CompositionDetail newobj = new CompositionDetail();
                newobj.Detail = d;
                newobj.SuppRef = d.SuppRef;
                newobj.Composition = obj.Composition;
                newobj.Per = obj.Per;
                newobj.YarnCount = obj.YarnCount;
                newobj.SpecialTerms = obj.SpecialTerms;
                d.CompositionDetails.Add(newobj);
                #endregion
            }

            //foreach (RatioPrice obj in this.RatioPrices)
            //{
            //    #region
            //    RatioPrice newobj = new RatioPrice();
            //    newobj.Detail = d;
            //    newobj.SuppRef = d.SuppRef;
            //    newobj.ColorCategory = obj.ColorCategory;
            //    newobj.Price = obj.Price;
            //    newobj.Ratio = obj.Ratio;
            //    d.RatioPrices.Add(newobj);
            //    #endregion
            //}

            foreach (ColorDetail obj in this.ColorDetails)
            {
                #region
                ColorDetail newobj = new ColorDetail();
                newobj.SuppRef = d.SuppRef;
                newobj.Color = obj.Color;
                newobj.Description = obj.Description;

                newobj.Detail = d;
                d.ColorDetails.Add(newobj);

                foreach (SubColorDetail obj1 in obj.SubColorDetails)
                {
                    #region
                    SubColorDetail newobj1 = new SubColorDetail();
                    newobj1.SuppRef = d.SuppRef;
                    newobj1.Color = obj1.Color;
                    newobj1.SubColor = obj1.SubColor;
                    newobj1.Description = obj1.Description;

                    newobj1.ColorDetail = newobj;
                    newobj.SubColorDetails.Add(newobj1);
                    #endregion
                }

                #endregion
            }


            #region Xsj20110817:为完善历史多单价而注释掉
            /*
            foreach (SizeDetail obj in this.SizeDetails)
            {
                #region
                SizeDetail newobj = new SizeDetail();
                newobj.SuppRef = d.SuppRef;
                newobj.Size = obj.Size;
                newobj.Description = obj.Description;

                newobj.Detail = d;
                d.SizeDetails.Add(newobj);
                #endregion
            }
            foreach (CupDetail obj in this.CupDetails)
            {
                #region
                CupDetail newobj = new CupDetail();
                newobj.SuppRef = d.SuppRef;
                newobj.Cup = obj.Cup;
                newobj.Description = obj.Description;

                newobj.Detail = d;
                d.CupDetails.Add(newobj);
                #endregion
            }
            */
            #endregion


            //Xsj20110808:添加对MaterialPriceHeader的Clone
            PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            MaterialPriceHeader currStandardMPH = pHInfo.GetCurrPriceHeader(this, MaterialPriceType.Standard.ToString(), "");
            if (currStandardMPH != null)
            {
                #region
                MaterialPriceHeader newobjMPH = new MaterialPriceHeader();
                newobjMPH.SuppRef = d.SuppRef;
                newobjMPH.PriceType = currStandardMPH.PriceType;
                newobjMPH.Category = currStandardMPH.Category;
                //newobjMPH.EffectFromDate = currStandardMPH.EffectFromDate.Date;
                if (DateTime.Now < (currStandardMPH.EffectEndDate ?? DateTime.MaxValue))
                {
                    newobjMPH.EffectFromDate = DateTime.Now;
                }
                else
                {
                    newobjMPH.EffectFromDate = currStandardMPH.EffectFromDate.Date;
                }
                newobjMPH.EffectEndDate = currStandardMPH.EffectEndDate;

                newobjMPH.IsMultiPrice = currStandardMPH.IsMultiPrice;
                newobjMPH.Version = d.SuppRef + "_"
                                    + currStandardMPH.PriceType + "_"
                                    + (currStandardMPH.PriceType == MaterialPriceType.Standard.ToString() ? "Standard" : currStandardMPH.Category).Trim() + "_"
                                    + DateTime.Now.ToString("yyyyMMddHHmmssfff");

                newobjMPH.Detail = d;
                d.MaterialPriceHeaders.Add(newobjMPH);
                #endregion

                #region Xsj20110817:为完善历史多单价而添加
                foreach (MaterialPrice obj in currStandardMPH.MaterialPrices)
                {
                    #region
                    MaterialPrice newobj = new MaterialPrice();
                    newobj.SuppRef = d.SuppRef;
                    newobj.PriceType = obj.PriceType;
                    newobj.Category = obj.Category;
                    newobj.EffectFromDate = newobjMPH.EffectFromDate.Date;
                    newobj.EffectEndDate = newobjMPH.EffectEndDate;
                    newobj.ColorRange = obj.ColorRange;
                    newobj.Size = obj.Size;
                    newobj.Cup = obj.Cup;
                    newobj.Price = obj.Price;
                    newobj.Ratio = obj.Ratio;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.MaterialPrices.Add(newobj);
                    #endregion
                }
                foreach (NewColorDetail obj in currStandardMPH.NewColorDetails)
                {
                    #region
                    NewColorDetail newobj = new NewColorDetail();
                    newobj.SuppRef = d.SuppRef;
                    newobj.Color = obj.Color;
                    newobj.Description = obj.Description;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.NewColorDetails.Add(newobj);

                    //Xsj20110820:此处功能，有待与JaneLai确认后处理
                    /*
                    foreach (SubColorDetail obj1 in obj.SubColorDetails)
                    {
                        #region
                        SubColorDetail newobj1 = new SubColorDetail();
                        newobj1.SuppRef = d.SuppRef;
                        newobj1.Color = obj1.Color;
                        newobj1.SubColor = obj1.SubColor;
                        newobj1.Description = obj1.Description;

                        newobj1.ColorDetail = newobj;
                        newobj.SubColorDetails.Add(newobj1);
                        #endregion
                    }
                    */
                    #endregion
                }

                foreach (NewSizeDetail obj in currStandardMPH.NewSizeDetails)
                {
                    #region
                    NewSizeDetail newobj = new NewSizeDetail();
                    newobj.SuppRef = d.SuppRef;
                    newobj.Size = obj.Size;
                    newobj.Description = obj.Description;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.NewSizeDetails.Add(newobj);
                    #endregion
                }

                foreach (NewCupDetail obj in currStandardMPH.NewCupDetails)
                {
                    #region
                    NewCupDetail newobj = new NewCupDetail();
                    newobj.SuppRef = d.SuppRef;
                    newobj.Cup = obj.Cup;
                    newobj.Description = obj.Description;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.NewCupDetails.Add(newobj);
                    #endregion
                }
                #endregion

            }


            foreach (MaterialProcess obj in this.MaterialProcesses)
            {
                #region
                MaterialProcess newobj = new MaterialProcess();
                newobj.SuppRef = d.SuppRef;
                newobj.MatlForProcess = obj.MatlForProcess;
                newobj.ItemWidth = obj.ItemWidth;
                newobj.IsMain = obj.IsMain;

                newobj.Detail = d;
                d.MaterialProcesses.Add(newobj);
                #endregion
            }

            foreach (MIDcUpFile obj in this.MIDcUpFiles)
            {
                #region
                MIDcUpFile newobj = new MIDcUpFile();
                newobj.SuppRef = d.SuppRef;
                newobj.FileName = obj.FileName;
                newobj.FileContent = obj.FileContent;

                newobj.Detail = d;
                d.MIDcUpFiles.Add(newobj);
                #endregion
            }


        }

        public void CloneTo(Detail d)
        {
            if (d == null) return;
            #region
            d.SampleOrderNo = this._SampleOrderNo;
            d.Supplier = this._Supplier;

            d.MaterialType = this._MaterialType;
            d.MaterialCode = this._MaterialCode;
            //d.SuppRef = "";
            d.Status = this._Status;
            d.MIDStatus = this._MIDStatus;
            d.CreateDate = this._CreateDate;
            d.PromoteUser = this._PromoteUser;
            d.PromoteDate = this._PromoteDate;
            d.Branded = this._Branded;
            d.Supplier = this._Supplier;
            d.Edging_Single = this._Edging_Single;
            d.Edging_DoubleScallops = this._Edging_DoubleScallops;
            d.Commodity = this._Commodity;

            //Xsj20121121:應YanYao的要求,Clone時不Clone字段Pattern,Lace的值
            //d.Pattern = this._Pattern;
            //d.Lace = this._Lace;

            d.Customer = this._Customer;
            d.SpecialLabel = this._SpecialLabel;
            d.SeasonNo = this._SeasonNo;
            d.RiskItem = this._RiskItem;
            d.Description = this._Description;
            d.Oeko = this._Oeko;
            d.ValueAdjustAddDyeing = this._ValueAdjustAddDyeing;
            d.PriceIncrProtect = this._PriceIncrProtect;
            d.UncertainQuality = this._UncertainQuality;
            d.OthersBuffer = this._OthersBuffer;
            d.WastageOnCAC = this._WastageOnCAC;
            d.Relaxtion = this._Relaxtion;
            d.TargetPrice = this._TargetPrice;
            d.Gauge = this._Gauge;
            d.Composition = this._Composition;
            d.Density = this._Density;
            d.GauagePerinch = this._GauagePerinch;
            d.MinOrder = this._MinOrder;
            d.MinColor = this._MinColor;
            d.MinStartProduct = this._MinStartProduct;
            d.LastQtnRef = this._LastQtnRef;
            d.LastQtnDate = this._LastQtnDate;
            d.QtnPriceValidityDays = this._QtnPriceValidityDays;
            d.QtnPriceExpiryDate = this._QtnPriceExpiryDate;
            d.SubchargeOrder = this._SubchargeOrder;
            d.SubchargeShipMode = this._SubchargeShipMode;
            d.DyeingMultiple = this._DyeingMultiple;
            d.PackUnit = this._PackUnit;
            d.SubPackUnit = this._SubPackUnit;
            d.SubPackQty = this._SubPackQty;
            d.SubPackNo = this._SubPackNo;
            d.QAStatus = this._QAStatus;
            d.YarnDays = this._YarnDays;
            d.GeigeDays = this._GeigeDays;
            d.RunningDays = this._RunningDays;
            d.ExclusiveBy = this._ExclusiveBy;
            d.LeadTimeHYCheck = this._LeadTimeHYCheck;
            d.LeadTimeGeigeCheck = this._LeadTimeGeigeCheck;
            d.LeadTimeRunningCheck = this._LeadTimeRunningCheck;
            d.SupplierUnit = this._SupplierUnit;
            d.PHUnit = this._PHUnit;
            d.SupplierWidth = this._SupplierWidth;
            d.UsableWidth = this._UsableWidth;
            d.MarkerWidth = this._MarkerWidth;
            d.TubularWidth = this._TubularWidth;
            d.SupplierWidthS = this._SupplierWidthS;
            d.UsableWidthS = this._UsableWidthS;
            d.MarkerWidthS = this._MarkerWidthS;
            d.TubularWidthS = this._TubularWidthS;
            d.WeightGmSqm = this._WeightGmSqm;
            d.WeightGmSqmS = this._WeightGmSqmS;
            d.SizeSpec = this._SizeSpec;

            d.SuppM = this._SuppM;
            d.MarkerM = this._MarkerM;
            d.TubularM = this._TubularM;
            d.RateToPHUnitBK = this._RateToPHUnitBK;
            d.ScallopHeight = this._ScallopHeight;
            d.PerCone = this._PerCone;
            d.Comments = this._Comments;
            d.DataPreparedBy = this._DataPreparedBy;
            d.DataPreparedDate = this._DataPreparedDate;
            d.HangerDataPreparedBy = this._HangerDataPreparedBy;
            d.Confirmed = this._Confirmed;
            d.ConfirmedBy = this._ConfirmedBy;
            d.ConfirmDate = this._ConfirmDate;
            d.Approved = this._Approved;
            d.ApprovedBy = this._ApprovedBy;
            d.ApproveDate = this._ApproveDate;
            d.HangerPassed = this._HangerPassed;
            d.HangerPassedBy = this._HangerPassedBy;
            d.HangerPassedDate = this._HangerPassedDate;
            d.FormPassed = this._FormPassed;
            d.FormPassedBy = this._FormPassedBy;
            d.FormPassedDate = this._FormPassedDate;
            d.HsCode = this._HsCode;
            d.WeightHsCode = this._WeightHsCode;
            d.ImageFile = this._ImageFile;
            d.AllInPrice1 = this._AllInPrice1;
            d.SQMPrice1 = this._SQMPrice1;
            d.avgPrice_Supplier1 = this._avgPrice_Supplier1;
            d.AvgPrice_PH1 = this._AvgPrice_PH1;
            d.MaterialGroup = this._MaterialGroup;
            d.DestinationPort = this._DestinationPort;
            d.RateToPHUnit1 = this._RateToPHUnit1;
            d.OrderShptLeadtime = this._OrderShptLeadtime;
            //d.Photo = this._Photo;

            d.TechWarp = this._TechWarp;
            d.TechWept = this._TechWept;
            d.TechWarpF = this._TechWarpF;
            d.TechWeptF = this._TechWeptF;
            d.DataPreparedDate = this._DataPreparedDate;
            d.Dimension = this._Dimension;
            d.LiabilityFollowUp = this._LiabilityFollowUp;
            d.HangerDataPreparedDate = this._HangerDataPreparedDate;
            d.SizeMatrix = this._SizeMatrix;
            //d.Version=this._Version;
            //d.AmendmentNo=this._AmendmentNo;
            d.YieldUsage = this._YieldUsage;
            d.SingleRangeSize = this._SingleRangeSize;
            d.UnitForSize = this._UnitForSize;
            d.IsPurchaseItem = this._IsPurchaseItem;
            d.Operation = this._Operation;
            d.IsMultiPrice = this._IsMultiPrice;
            d.MultiPriceOption = this._MultiPriceOption;
            d.Liability = this._Liability;
            d.LiabilityForCustomer = this._LiabilityForCustomer;
            d.CustomerAppointed = this._CustomerAppointed;
            d.PurchaseWidthOption = this._PurchaseWidthOption;
            d.PurchaseWidth = this._PurchaseWidth;
            //d.HasSpecialPrice = this._HasSpecialPrice;
            //d.HasCustFavorPrice = this._HasCustFavorPrice;
            //d.HasVolumePrice = this._HasVolumePrice;
            //d.HasPeriodPrice = this._HasPeriodPrice;
            //d.HasCollectivePrice = this._HasCollectivePrice;
            d.TMIDCompleted = this._TMIDCompleted;
            d.TMIDCompletedBy = this._TMIDCompletedBy;
            d.TMIDCompletedDate = this._TMIDCompletedDate;
            d.PMIDWIP = this._PMIDWIP;
            d.PMIDWIPBy = this._PMIDWIPBy;
            d.PMIDWIPDate = this._PMIDWIPDate;
            d.PMIDCompleted = this._PMIDCompleted;
            d.PMIDCompletedBy = this._PMIDCompletedBy;
            d.PMIDCompletedDate = this._PMIDCompletedDate;

            //Xsj20111017:應JaneLai的要求，添加HaveSizeMatrix/SizeMatrix的Clone和Copy
            d.HaveSizeMatrix = this.HaveSizeMatrix;
            d.SizeMatrix = this.SizeMatrix;

            #endregion

            foreach (CompositionDetail obj in this.CompositionDetails)
            {
                #region
                CompositionDetail newobj = new CompositionDetail();
                newobj.Detail = d;
                newobj.SuppRef = d.SuppRef;
                newobj.Composition = obj.Composition;
                newobj.Per = obj.Per;
                newobj.YarnCount = obj.YarnCount;
                newobj.SpecialTerms = obj.SpecialTerms;
                d._CompositionDetails.Add(newobj);
                #endregion

            }

            foreach (RatioPrice obj in this.RatioPrices)
            {
                #region
                RatioPrice newobj = new RatioPrice();
                newobj.Detail = d;
                newobj.SuppRef = d.SuppRef;
                newobj.ColorCategory = obj.ColorCategory;
                newobj.Price = obj.Price;
                newobj.Ratio = obj.Ratio;
                d.RatioPrices.Add(newobj);
                #endregion
            }

            foreach (Spec obj in this.Specs)
            {
                #region
                Spec newobj = new Spec();
                newobj.Detail = d;
                newobj.SuppRef = d.SuppRef;
                newobj.Color = obj.Color;
                newobj.ColorCategory = obj.ColorCategory;
                newobj.SupplierWidth = obj.SupplierWidth;
                newobj.Supplier_UsableWidth = obj.Supplier_UsableWidth;
                newobj.Supplier_Weight_GmSqm = obj.Supplier_Weight_GmSqm;
                newobj.Supplier_Weight_GmSqm_Per = obj.Supplier_Weight_GmSqm_Per;
                newobj.Supplier_Weight_LinearMeter = obj.Supplier_Weight_LinearMeter;
                newobj.Supplier_Weight_LinearMeter_Per = obj.Supplier_Weight_LinearMeter_Per;
                newobj.Supplier_Relaxation_Length_Per = obj.Supplier_Relaxation_Length_Per;
                newobj.Supplier_Relaxation_Width_Per = obj.Supplier_Relaxation_Width_Per;
                newobj.Supplier_Pattern_Length = obj.Supplier_Pattern_Length;
                newobj.Supplier_Pattern_Length_Per = obj.Supplier_Pattern_Length_Per;
                newobj.Supplier_Pattern_Width = obj.Supplier_Pattern_Width;
                newobj.Supplier_Pattern_Width_Per = obj.Supplier_Pattern_Width_Per;
                newobj.Supplier_Elongation_Length = obj.Supplier_Elongation_Length;
                newobj.Supplier_Elongation_Length_Per = obj.Supplier_Elongation_Length_Per;
                newobj.Supplier_Elongation_Width = obj.Supplier_Elongation_Width;
                newobj.Supplier_Elongation_Width_Per = obj.Supplier_Elongation_Width_Per;
                newobj.Supplier_Shrinkage_Length_Washing = obj.Supplier_Shrinkage_Length_Washing;
                newobj.Supplier_Shrinkage_Width_Washing = obj.Supplier_Shrinkage_Width_Washing;
                newobj.Supplier_Shrinkage_Length_Ironing = obj.Supplier_Shrinkage_Length_Ironing;
                newobj.Supplier_Shrinkage_Width_Ironing = obj.Supplier_Shrinkage_Width_Ironing;
                newobj.Supplier_Shrinkage_ColorFasteness = obj.Supplier_Shrinkage_ColorFasteness;
                newobj.Supplier_Conditions = obj.Supplier_Conditions;
                newobj.PH_UsableWidth = obj.PH_UsableWidth;
                newobj.PH_Weight_GmSqm = obj.PH_Weight_GmSqm;
                newobj.PH_Weight_GmSqm_Per = obj.PH_Weight_GmSqm_Per;
                newobj.PH_Weight_LinearMeter = obj.PH_Weight_LinearMeter;
                newobj.PH_Weight_LinearMeter_Per = obj.PH_Weight_LinearMeter_Per;
                newobj.PH_Relaxation_Length_Per = obj.PH_Relaxation_Length_Per;
                newobj.PH_Relaxation_Width_Per = obj.PH_Relaxation_Width_Per;
                newobj.PH_Pattern_Length = obj.PH_Pattern_Length;
                newobj.PH_Pattern_Length_Per = obj.PH_Pattern_Length_Per;
                newobj.PH_Pattern_Width = obj.PH_Pattern_Width;
                newobj.PH_Pattern_Width_Per = obj.PH_Pattern_Width_Per;
                newobj.PH_Elongation_Length = obj.PH_Elongation_Length;
                newobj.PH_Elongation_Length_Per = obj.PH_Elongation_Length_Per;
                newobj.PH_Elongation_Width = obj.PH_Elongation_Width;
                newobj.PH_Elongation_Width_Per = obj.PH_Elongation_Width_Per;
                newobj.PH_Shrinkage_Length_Washing = obj.PH_Shrinkage_Length_Washing;
                newobj.PH_Shrinkage_Width_Washing = obj.PH_Shrinkage_Width_Washing;
                newobj.PH_Shrinkage_Length_Ironing = obj.PH_Shrinkage_Length_Ironing;
                newobj.PH_Shrinkage_Width_Ironing = obj.PH_Shrinkage_Width_Ironing;
                newobj.PH_Shrinkage_ColorFasteness = obj.PH_Shrinkage_ColorFasteness;
                newobj.PH_Conditions = obj.PH_Conditions;
                newobj.Oeko = obj.Oeko;
                newobj.Temperature = obj.Temperature;
                newobj.Pressure = obj.Pressure;
                newobj.Timing = obj.Timing;
                newobj.CoolingTime = obj.CoolingTime;
                d.Specs.Add(newobj);
                #endregion

                foreach (TechnicalInformation obj2 in obj.TechnicalInformations)
                {
                    #region
                    TechnicalInformation newnewobj = new TechnicalInformation();

                    newnewobj.Spec = newobj;
                    newnewobj.SuppRef = d.SuppRef;
                    newnewobj.Color = obj2.Color;
                    newnewobj.ColorCategory = obj2.ColorCategory;
                    newnewobj.TestType = obj2.TestType;
                    newnewobj.TestMethod = obj2.TestMethod;
                    newnewobj.Grade = obj2.Grade;
                    newnewobj.SpecifyMethod = obj2.SpecifyMethod;
                    newnewobj.Remark = obj2.Remark;
                    newnewobj.Group = obj2.Group;

                    newobj.TechnicalInformations.Add(newnewobj);
                    #endregion
                }
                //d.Specs.Add(newobj);
            }


            #region Xsj20110817:为完善历史多单价而注释掉
            /*
            foreach (ColorDetail obj in this.ColorDetails)
            {
                #region
                ColorDetail newobj = new ColorDetail();
                newobj.SuppRef = d.SuppRef;
                newobj.Color = obj.Color;
                newobj.Description = obj.Description;

                newobj.Detail = d;
                d.ColorDetails.Add(newobj);

                foreach (SubColorDetail obj1 in obj.SubColorDetails)
                {
                    #region
                    SubColorDetail newobj1 = new SubColorDetail();
                    newobj1.SuppRef = d.SuppRef;
                    newobj1.Color = obj1.Color;
                    newobj1.SubColor = obj1.SubColor;
                    newobj1.Description = obj1.Description;

                    newobj1.ColorDetail = newobj;
                    newobj.SubColorDetails.Add(newobj1);
                    #endregion
                }

                #endregion
            }

            foreach (SizeDetail obj in this.SizeDetails)
            {
                #region
                SizeDetail newobj = new SizeDetail();
                newobj.SuppRef = d.SuppRef;
                newobj.Size = obj.Size;
                newobj.Description = obj.Description;

                newobj.Detail = d;
                d.SizeDetails.Add(newobj);
                #endregion
            }

            foreach (CupDetail obj in this.CupDetails)
            {
                #region
                CupDetail newobj = new CupDetail();
                newobj.SuppRef = d.SuppRef;
                newobj.Cup = obj.Cup;
                newobj.Description = obj.Description;

                newobj.Detail = d;
                d.CupDetails.Add(newobj);
                #endregion
            }
            */
            #endregion

            foreach (PriceHistory obj in this.PriceHistories)
            {
                #region
                PriceHistory newobj = new PriceHistory();
                newobj.SuppRef = d.SuppRef;
                newobj.HistoryDate = obj.HistoryDate;
                newobj.Price = obj.Price;
                newobj.Remarks = obj.Remarks;

                newobj.Detail = d;
                d.PriceHistories.Add(newobj);
                #endregion
            }
            //Xsj20110808:添加对MaterialPriceHeader的Clone
            PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            MaterialPriceHeader currStandardMPH = pHInfo.GetCurrPriceHeader(this, MaterialPriceType.Standard.ToString(), "");
            if (currStandardMPH != null)
            {
                #region
                MaterialPriceHeader newobjMPH = new MaterialPriceHeader();
                newobjMPH.SuppRef = d.SuppRef;
                newobjMPH.PriceType = currStandardMPH.PriceType;
                newobjMPH.Category = currStandardMPH.Category;

                if (DateTime.Now < (currStandardMPH.EffectEndDate ?? DateTime.MaxValue))
                {
                    newobjMPH.EffectFromDate = DateTime.Now;
                }
                else
                {
                    newobjMPH.EffectFromDate = currStandardMPH.EffectFromDate.Date;
                }

                newobjMPH.EffectEndDate = currStandardMPH.EffectEndDate;
                newobjMPH.IsMultiPrice = currStandardMPH.IsMultiPrice;
                newobjMPH.Version = d.SuppRef + "_"
                                    + currStandardMPH.PriceType + "_"
                                    + (currStandardMPH.PriceType == MaterialPriceType.Standard.ToString() ? "Standard" : currStandardMPH.Category).Trim() + "_"
                                    + DateTime.Now.ToString("yyyyMMddHHmmssfff");

                newobjMPH.Detail = d;
                d.MaterialPriceHeaders.Add(newobjMPH);
                #endregion

                #region Xsj20110817:为完善历史多单价而注释掉
                //List<MaterialPrice> mPList = this.MaterialPrices.Where(p => p.PriceType == currStandardMPH.PriceType &&
                //    p.Category == currStandardMPH.Category && p.EffectFromDate.Date == currStandardMPH.EffectFromDate.Date).ToList();
                //foreach (MaterialPrice obj in mPList)
                //{
                //    #region
                //    MaterialPrice newobj = new MaterialPrice();
                //    newobj.SuppRef = d.SuppRef;
                //    newobj.PriceType = obj.PriceType;
                //    newobj.Category = obj.Category;
                //    newobj.EffectFromDate = obj.EffectFromDate.Date;
                //    newobj.EffectEndDate = obj.EffectEndDate;
                //    newobj.ColorRange = obj.ColorRange;
                //    newobj.Size = obj.Size;
                //    newobj.Cup = obj.Cup;
                //    newobj.Price = obj.Price;
                //    newobj.Ratio = obj.Ratio;

                //    newobj.Detail = d;
                //    d.MaterialPrices.Add(newobj);
                //    #endregion
                //}
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                foreach (MaterialPrice obj in currStandardMPH.MaterialPrices)
                {
                    #region
                    MaterialPrice newobj = new MaterialPrice();
                    newobj.SuppRef = d.SuppRef;
                    newobj.PriceType = obj.PriceType;
                    newobj.Category = obj.Category;
                    newobj.EffectFromDate = newobjMPH.EffectFromDate.Date;
                    newobj.EffectEndDate = newobjMPH.EffectEndDate;
                    newobj.ColorRange = obj.ColorRange;
                    newobj.Size = obj.Size;
                    newobj.Cup = obj.Cup;
                    newobj.Price = obj.Price;
                    newobj.Ratio = obj.Ratio;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.MaterialPrices.Add(newobj);
                    #endregion
                }
                foreach (NewColorDetail obj in currStandardMPH.NewColorDetails)
                {
                    #region
                    NewColorDetail newobj = new NewColorDetail();
                    newobj.SuppRef = d.SuppRef;
                    newobj.Color = obj.Color;
                    newobj.Description = obj.Description;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.NewColorDetails.Add(newobj);

                    //Xsj20110820:此处功能，有待与JaneLai确认后处理
                    /*
                    foreach (SubColorDetail obj1 in obj.SubColorDetails)
                    {
                        #region
                        SubColorDetail newobj1 = new SubColorDetail();
                        newobj1.SuppRef = d.SuppRef;
                        newobj1.Color = obj1.Color;
                        newobj1.SubColor = obj1.SubColor;
                        newobj1.Description = obj1.Description;

                        newobj1.ColorDetail = newobj;
                        newobj.SubColorDetails.Add(newobj1);
                        #endregion
                    }
                    */
                    #endregion
                }

                foreach (NewSizeDetail obj in currStandardMPH.NewSizeDetails)
                {
                    #region
                    NewSizeDetail newobj = new NewSizeDetail();
                    newobj.SuppRef = d.SuppRef;
                    newobj.Size = obj.Size;
                    newobj.Description = obj.Description;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.NewSizeDetails.Add(newobj);
                    #endregion
                }

                foreach (NewCupDetail obj in currStandardMPH.NewCupDetails)
                {
                    #region
                    NewCupDetail newobj = new NewCupDetail();
                    newobj.SuppRef = d.SuppRef;
                    newobj.Cup = obj.Cup;
                    newobj.Description = obj.Description;
                    newobj.Version = newobjMPH.Version;
                    newobj.MaterialPriceHeader = newobjMPH;
                    newobjMPH.NewCupDetails.Add(newobj);
                    #endregion
                }
                #endregion

            }


            foreach (MaterialProcess obj in this.MaterialProcesses)
            {
                #region
                MaterialProcess newobj = new MaterialProcess();
                newobj.SuppRef = d.SuppRef;
                newobj.MatlForProcess = obj.MatlForProcess;
                newobj.ItemWidth = obj.ItemWidth;
                newobj.IsMain = obj.IsMain;
                newobj.Detail = d;
                d.MaterialProcesses.Add(newobj);
                #endregion
            }

            foreach (MIDcUpFile obj in this.MIDcUpFiles)
            {
                #region
                MIDcUpFile newobj = new MIDcUpFile();
                newobj.SuppRef = d.SuppRef;
                newobj.FileName = obj.FileName;
                newobj.FileContent = obj.FileContent;
                newobj.Detail = d;
                d.MIDcUpFiles.Add(newobj);
                #endregion
            }
        }


        public void GetARate()
        {
            try
            {
                this._arate = null;

                PH.MIDc.BO.MIDcDataContext curdatacontext = ContextBuilder.CreateContext<MIDcDataContext>();

                this.ARate = (from aa in curdatacontext.ARates
                              where aa.SupplierUnit == this.SupplierUnit && aa.PHUnit == this.PHUnit
                              select aa).First<ARate>();

            }
            catch
            {
            }

            if (this._arate == null)
                this._arate = new ARate();

        }

        public void GetSupplierProfile()
        {
            _supplierProfile = null;

            try
            {
                PH.BasicInfo.BO.BasicInfoDataContext curdatacontext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();// new PH.BasicInfo.BO.BasicInfoDataContext();

                this.SupplierProfile = (from aa in curdatacontext.SupplierProfiles
                                        where aa.Supplier == this.Supplier
                                        select aa).First<SupplierProfile>();

                GetCurrency();
                //curdatacontext.Connection.Close();
                //curdatacontext.Connection.Dispose();
            }
            catch { }


            if (this._supplierProfile == null)
                this._supplierProfile = new SupplierProfile();


        }

        private void GetCurrency()
        {
            try
            {
                PH.BasicInfo.BO.BasicInfoDataContext curdatacontext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();// new PH.BasicInfo.BO.BasicInfoDataContext();

                this.MidcCurrency = (from aa in curdatacontext.Currencies
                                     where aa.Currency1 == this.Currency
                                     select aa).First<PH.BasicInfo.BO.Currency>();
            }
            catch { }


            if (this._midcCurrency == null)
                this._midcCurrency = new PH.BasicInfo.BO.Currency();
        }

        public void GetMatTypeDimension()
        {
            _matTypeDimension = null;


            foreach (var a in this.SupplierProfile.MaterialTypeDimensions)
            {
                if (a.MaterialType == this.MaterialType)
                    _matTypeDimension = a;
            }

            if (this._matTypeDimension == null)
                this._matTypeDimension = new MaterialTypeDimension();

        }

        private Nullable<decimal> CalculateMaxMin(Nullable<decimal> aValue, string bValue, string typeStr)
        {
            Nullable<decimal> max = null, min = null, temp = 0;

            try
            {
                if (bValue.IndexOf("+/-") > -1 && bValue.IndexOf("MM") > -1)
                {
                    temp = Convert.ToDecimal(bValue.Replace("+/-", "").Replace("MM", ""));
                    min = aValue - temp;
                    max = aValue + temp;
                }
                else if (bValue.IndexOf("+/-") > -1 && bValue.IndexOf("%") > -1)
                {
                    temp = Convert.ToDecimal(bValue.Replace("+/-", "").Replace("%", ""));
                    min = aValue * (1 - temp / 100);
                    max = aValue * (1 + temp / 100);
                }
                else if (bValue.IndexOf("MM") > -1)
                {
                    string[] array = bValue.Replace("MM", "").Split('-');
                    if (array.Count() == 2)
                    {
                        min = Convert.ToDecimal(array[0]);
                        max = Convert.ToDecimal(array[1]);
                    }
                }

                if (typeStr == "min")
                    return min;
                else
                    return max;

            }
            catch
            {
                return null;
            }





        }

        private Nullable<decimal> CalculateMaxMinGSM(Nullable<decimal> aValue, string bValue, string typeStr)
        {
            Nullable<decimal> max = null, min = null, temp = 0;

            try
            {
                if (bValue.IndexOf("+/-") > -1 && bValue.IndexOf("%") > -1)
                {
                    temp = Convert.ToDecimal(bValue.Replace("+/-", "").Replace("%", ""));
                    min = aValue * (1 - temp / 100);
                    max = aValue * (1 + temp / 100);
                }
                else if (bValue.IndexOf("+/-") > -1 && bValue.IndexOf("GM/SQM") > -1)
                {
                    temp = Convert.ToDecimal(bValue.Replace("+/-", "").Replace("GM/SQM", ""));
                    min = aValue - temp;
                    max = aValue + temp;
                }
                else if (bValue.IndexOf("GM/SQM") > -1)
                {
                    string[] array = bValue.Replace("GM/SQM", "").Split('-');
                    if (array.Count() == 2)
                    {
                        min = Convert.ToDecimal(array[0]);
                        max = Convert.ToDecimal(array[1]);
                    }
                }


                if (typeStr == "min")
                    return min;
                else
                    return max;

            }
            catch
            {
                return null;
            }
        }

        public string HsCodeName
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext curdatacontext = ContextBuilder.CreateContext<MIDcDataContext>();
                try
                {
                    return (from aa in curdatacontext.CustomMaterials where aa.MidcHSCode == this._HsCode select aa).First<CustomMaterial>().materialName;
                }
                catch { return ""; }
            }
        }

        public string HsCodeNameBD
        {
            get
            {
                PH.MIDc.BO.MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
                try
                {
                    return db.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeBD).materialName;
                }
                catch { return ""; }
            }
        }


        public void GetPrintDetails()
        {
            _printDetails = new List<MaterialPrintDetail>();
            MaterialPrintDetail pd;
            int i = 0;
            foreach (RatioPrice r in this.RatioPrices)
            {
                pd = new MaterialPrintDetail();
                pd.ID = i;
                i++;
                pd.Price = r.Price ?? 0;
                pd.Ratio = r.Ratio ?? 0;
                pd.ColorCategory = r.ColorCategory;
                if (pd.Price == 0 || pd.Ratio == 0) continue;

                _printDetails.Add(pd);
            }
            //supp avg price
            if (this._RatioPrices.Count > 0)
            {
                pd = new MaterialPrintDetail();
                pd.ID = i;
                pd.Price = this.AvgPrice_Supplier;
                //pd.Ratio = r.Ratio;
                pd.ColorCategory = "Average:";
                _printDetails.Add(pd);
            }
            //_printDetails.Sort(MaterialPrintDetail.PrintDetailSort);
            i = 0;
            foreach (CompositionDetail c in this._CompositionDetails)
            {
                if (string.IsNullOrEmpty(c.Composition) || (c.Per ?? 0) == 0) continue;
                bool isNew = false;
                if (i > (_printDetails.Count - 1))
                {
                    pd = new MaterialPrintDetail();
                    isNew = true;
                    pd.ID = i;
                }
                else
                {
                    pd = _printDetails[i];
                }
                i++;

                pd.Composition = c.Composition;
                pd.Per = c.Per ?? 0;
                pd.YarnCount = c.YarnCount;
                pd.SpecialTerms = c.SpecialTerms;

                if (isNew)
                    _printDetails.Add(pd);
            }

            for (int j = 0; j < 4; j++)
            {
                pd = _printDetails.Find(delegate(MaterialPrintDetail mpd)
                {
                    return mpd.ID == j;
                }
                    );
                bool isNew = (pd == null);

                if (isNew)
                {
                    pd = new MaterialPrintDetail();
                    pd.ID = j;
                }
                switch (j)
                {
                    case 0:
                        pd.RatioPriceStr = "Color & Price:";
                        pd.CompositionStr = "Composition:";
                        pd.StatusLeadtimeDesc = "Status";
                        pd.StatusLeadtime = string.Format("[ {0} ] Control", (this.QAStatusStr == "" ? "          " : this.QAStatusStr));
                        pd.LeadtimeDays = "";
                        break;
                    case 1:
                        pd.StatusLeadtimeDesc = "Ttl lead time";
                        pd.StatusLeadtime = "Hv Yarn";
                        pd.LeadtimeDays = string.Format("{0} {1}    days", ((this.LeadTimeHYCheck ?? false) ? "[ X ]" : "[     ]"), this.YarnDays.ToString().PadLeft(5));
                        break;
                    case 2:
                        pd.StatusLeadtimeDesc = "";
                        pd.StatusLeadtime = "Hv Geige";
                        pd.LeadtimeDays = string.Format("{0} {1}    days", ((this.LeadTimeHYCheck ?? false) ? "[ X ]" : "[     ]"), this.GeigeDays.ToString().PadLeft(5));
                        break;
                    case 3:
                        pd.StatusLeadtimeDesc = "";
                        pd.StatusLeadtime = "Running";
                        pd.LeadtimeDays = string.Format("{0} {1}    days", ((this.LeadTimeHYCheck ?? false) ? "[ X ]" : "[     ]"), this.RunningDays.ToString().PadLeft(5));
                        break;
                    default:
                        break;
                }

                if (isNew)
                    _printDetails.Add(pd);
            }
            pd = new MaterialPrintDetail();
            pd.ID = _printDetails.Count;
            _printDetails.Add(pd);

        }

        partial void OnSupplierChanged()
        {
            GetSupplierProfile();
            this.SendPropertyChanged("Supplier");
        }

        partial void OnSupplierUnitChanged()
        {
            GetARate();
            this.SendPropertyChanged("SupplierUnit");
        }
        partial void OnPHUnitChanged()
        {
            GetARate();
            this.SendPropertyChanged("PHUnit");
        }
        partial void OnSupplierWidthChanged()
        {
            if (this._MaterialGroup == "L")
            {
                if (this._Edging_Single ?? false)
                    UsableWidth = (this._SupplierWidth - (this._ScallopHeight * 1));
                else
                    UsableWidth = (this._SupplierWidth - (this._ScallopHeight * 2));
            }

            //if (string.IsNullOrEmpty(this.SizeSpec) && this.IsSpecificSize)
            if (this.IsSpecificSize)
            {
                this.SizeSpec = string.Format("{0:0.####}", this._SupplierWidth);
            }


            CalculateWeightHsCode();



            this.SendPropertyChanged("SupplierWidth");
        }

        partial void OnSupplierWidthSChanged()
        {
            if (string.IsNullOrEmpty(this.SupplierWidthS))
            {
                this.SupplierWidthS = null;
            }
            this.SendPropertyChanged("SupplierWidthS");
        }



        partial void OnUsableWidthChanged()
        {
            //Jane require at 2014.7.4
            //Usable width 減15mm為marker width, 修改Citrix里Marker width計算方法 material group "M" and "L" - 但“L”只更改以下5個material type
            //NAL PSL RAL SAL EMA

            if (this._MaterialType != "ELW")
                switch (this._MaterialGroup)
                {
                    case "M":
                        //MarkerWidth = this._UsableWidth - 20;
                        if ((MarkerWidth ?? 0) == 0)
                            MarkerWidth = this._UsableWidth - 15;
                        //MarkerWidth = this._UsableWidth;
                        break;
                    case "E":
                        goto case "M";
                    case "L":
                        if (IsWideWidthOfL(this._MaterialType))
                            goto case "M";
                        else
                        {
                            if ((MarkerWidth ?? 0) == 0)
                                MarkerWidth = _UsableWidth * 0.98M;
                        }
                        break;
                    default:
                        break;
                }

            this.SendPropertyChanged("UsableWidth");
        }


        partial void OnUsableWidthSChanged()
        {
            if (string.IsNullOrEmpty(this.UsableWidthS))
            {
                this.UsableWidthS = null;
            }
            this.SendPropertyChanged("UsableWidthS");
        }


        partial void OnMarkerWidthSChanged()
        {
            if (string.IsNullOrEmpty(this.MarkerWidthS))
            {
                this.MarkerWidthS = null;
            }
            this.SendPropertyChanged("MarkerWidthS");
        }

        partial void OnMaterialGroupChanged()
        {
            //switch (_MaterialGroup)
            //{
            //    case "M":
            //        this.PHUnit = "M";
            //        break;
            //    case "E":
            //        goto case "M";
            //    case "L":
            //        goto case "M";
            //    default:
            //        break;
            //}

            CalculateWeightHsCode();
        }
        partial void OnCreated()
        {
            //this.RatioPrices.ListChanged += new System.ComponentModel.ListChangedEventHandler(RatioPrices_ListChanged);

            this.ValueAdjustAddDyeing = 0;
            this.PriceIncrProtect = 0;
            this.UncertainQuality = 0;
            this.OthersBuffer = 0;
            this.CreateDate = DateTime.Now;

            this.Status = "Study";
            this.MIDStatus = MIDc_MIDStatus.TMID_WIP;
            //this.SuppRef = "";
        }
        private void RatioPrices_ListChanged(object sender, System.ComponentModel.ListChangedEventArgs e)
        {
            if (e.ListChangedType == System.ComponentModel.ListChangedType.ItemDeleted)
                this.EstInterest = this.EstInterest;
        }
        partial void OnSuppRefChanged()
        {
            //foreach (CompositionDetail obj in this.CompositionDetails)
            //{
            //    obj.SuppRef = this.SuppRef;
            //}

            //foreach (RatioPrice obj in this.RatioPrices)
            //{
            //    obj.SuppRef = this.SuppRef;
            // }
        }

        partial void OnHangerPassedChanged()
        {
            if (this.HangerPassed ?? false)
            {
                this.HangerDataPreparedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                this.HangerDataPreparedDate = DateTime.Now;
            }
            else
            {
                this.HangerDataPreparedBy = "";
                this.HangerDataPreparedDate = null;
            }
            this.SendPropertyChanged("HangerPassed");
        }
        partial void OnSingleRangeSizeChanged()
        {
            string s = this._SingleRangeSize;
            if (string.IsNullOrEmpty(s)) return;

            //if (s == "Ss" || s == "Rs" || s == "Rc")            
            //{
            //    this.UnitForSize = "Number";
            //}
            //else
            //{
            //    this.UnitForSize = "MM";
            //}

            //add by shulin 2023-02-13           

            string CDimension = "";
            CDimension = s.Substring(0, 1);
            bool isHaveSizeMatrix = (CDimension == "4");
            this.HaveSizeMatrix = isHaveSizeMatrix;

            if (!isHaveSizeMatrix)
            {
                this.SizeMatrix = "";
            }


            if (_SingleRangeSize.IndexOf("s") > -1 || CDimension == "4")
            {
                this.UnitForSize = "Number";
            }
            else
            {
                this.UnitForSize = "MM";
            }




            this.SendPropertyChanged("SingleRangeSize");
        }

        #endregion

        #region other

        public string Factory { get { return this.SampleOrder.Factory; } }
        public string VersionNo { get { return string.Format("{0}.{1}", this.Version ?? 0, this.AmendmentNo ?? 0); } }
        public bool HaveAttachment { get { return this.MIDcUpFiles.Count() > 0; } }
        public bool HaveHanger { get { return this.HangerPassed ?? false; } }
        public bool HavePhoto { get { return this.Photo != null; } }



        #region Xsj20110817:为完善历史多单价而注释掉
        /*
        public string Sizes
        {
            get
            {
                string s = "";
                foreach (var a in this.SizeDetails)
                {
                    s += string.Format("{0},", a.Size);
                }
                return s;
            }
        }
        public string Cups
        {
            get
            {
                string s = "";
                foreach (var a in this.CupDetails)
                {
                    s += string.Format("{0},", a.Cup);
                }
                return s;
            }
        }
         */
        #endregion
        #endregion

        #region from 6P
        private IncontermsTransit _POTransit;
        //Xsj20120419:獲取SamplorOrder所選廠另的SupplierProfile的IncontermsTransit記錄
        public IncontermsTransit POTransit
        {
            get
            {
                if (_POTransit == null || (this.SampleOrder.Factory != _POTransit.PHFactories))
                    //_POTransit = GetPOTransit();
                    //Xsj2012-04-19：注釋掉以上代碼，添加如下代碼
                    _POTransit = GetPOTransit(this.SampleOrder.Factory);

                return _POTransit;
            }
            set { this._POTransit = value; }
        }

        #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private IncontermsTransit _SLPoTransit;
        public IncontermsTransit SLPOTransit
        {
            get
            {
                if (_SLPoTransit == null)
                    _SLPoTransit = GetPOTransit("SL");

                return _SLPoTransit;
            }
            set { this._SLPoTransit = value; }
        }
        #endregion


        //private PH.BasicInfo.BO.IncontermsTransit GetPOTransit()
        //{
        //    var aa = from a in this.SupplierProfile.IncontermsTransits
        //             where a.ERPSupplier == this.ERPSupplier && a.PHFactories == "SL" && a.IsLCL == true
        //             && a.FromEffectivedDate <= (this.CreateDate ?? DateTime.Now)
        //             select a;
        //    return aa.FirstOrDefault();
        //}

        //Xsj2012-04-19:注釋掉以代碼
        //private PH.BasicInfo.BO.IncontermsTransit GetPOTransit()
        //{
        //    DateTime dt = new DateTime(2011, 6, 2);
        //    var aa = from a in this.SupplierProfile.IncontermsTransits
        //             where a.ERPSupplier == this.ERPSupplier && a.PHFactories == "SL" && a.IsLCL == true
        //             && (a.FromEffectivedDate <= (this.CreateDate ?? DateTime.Now) || a.FromEffectivedDate < dt)
        //             orderby a.FromEffectivedDate descending
        //             select a;
        //    return aa.FirstOrDefault();
        //}

        //Xsj2012-04-19:應王先的要求，計算Item的成本時，不能固定計算“SL”的，改為依操作者選擇不同的“Byr Prod Site”計算不同的地點成本，同時計算“SL”的作為標准成本
        private PH.BasicInfo.BO.IncontermsTransit GetPOTransit(string PHFactory)
        {
            DateTime dt = new DateTime(2011, 6, 2);
            var aa = from a in this.SupplierProfile.IncontermsTransits
                     where a.ERPSupplier == this.ERPSupplier && a.PHFactories == PHFactory && a.IsLCL == true
                     && (a.FromEffectivedDate <= (this.CreateDate ?? DateTime.Now) || a.FromEffectivedDate < dt)
                         // && a.Standard1 == "Y"  //Add by shulin 20230201 添加条件, 应David 处理邮件 “Supplier code WANL 20230101-10:45” 
                     && (string.IsNullOrEmpty(a.NonStandard1) ? "" : a.NonStandard1) != "Y"
                     orderby a.FromEffectivedDate descending
                     select a;
            return aa.FirstOrDefault();
        }

        //(1) Point2PortOfOriginCost                --> InlandForwarderHandling
        //(2) FreightCost                           --> Frieght
        //(3) Port2PointOfDestinationCost           --> InlandTransportation
        //(4) PointOfDestination2ProductionSiteCost  --> TransitLoadingTransportation
        public string Incoterms
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.Incoterms;
            }
        }

        private PH.BasicInfo.BO.Incoterm _incoterm;
        public PH.BasicInfo.BO.Incoterm Incoterm
        {
            get
            {
                if (_incoterm == null)
                {
                    PH.BasicInfo.BO.IncotermList list = new PH.BasicInfo.BO.IncotermList();
                    _incoterm = (from a in list.CurrentDataContext.Incoterms
                                 where a.Code == this.Incoterms
                                 select a).FirstOrDefault<PH.BasicInfo.BO.Incoterm>();
                }

                return this._incoterm;
            }
        }
        public string IncotermsENDesc { get { return string.Format("{0} ({1})", this.Incoterm == null ? "" : this.Incoterm.EngDes, this.Incoterms); } }
        public string IncotermsCNDesc { get { return this.IncotermsENDesc; } }
        public string IncotermsTHDesc { get { return this.IncotermsENDesc;/*string.Format("{0} ({1})", this.Incoterm == null ? "" : this.Incoterm.ThaiDesc, this.Incoterms); */} }


        public string TransitMode
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.TransitMode;
            }
        }


        public string TransitPoit
        {
            get
            {
                return this.POTransit == null ? "" : string.Format("{0}: {1}", this.POTransit.TransitPointDescEN, this.POTransit.IncotermsPointPort);
            }
        }
        public string TransitPointDescEN
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.TransitPointDescEN;
            }
        }
        public string IncotermsPointPort
        {
            get
            {
                return this.POTransit == null ? "" : this.POTransit.IncotermsPointPort;
            }
        }

        private decimal _Point2PortOfOriginCost;
        public decimal Point2PortOfOriginCost
        {
            get
            {
                this._Point2PortOfOriginCost = this.POTransit == null ? 0 : this.POTransit.Point2PortOfOriginCost ?? 0;
                return this._Point2PortOfOriginCost;
            }
        }

        #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slPoint2PortOfOriginCost;
        public decimal SLPoint2PortOfOriginCost
        {
            get
            {
                this._slPoint2PortOfOriginCost = this.SLPOTransit == null ? 0 : this.SLPOTransit.Point2PortOfOriginCost ?? 0;
                return this._slPoint2PortOfOriginCost;
            }
        }
        #endregion

        private decimal _FreightCost;// Freight
        public decimal FreightCost
        {
            get
            {
                this._FreightCost = this.POTransit == null ? 0 : this.POTransit.FreightCost ?? 0;
                return this._FreightCost;
            }
        }
        #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slFreightCost;// Freight
        public decimal SLFreightCost
        {
            get
            {
                this._slFreightCost = this.SLPOTransit == null ? 0 : this.SLPOTransit.FreightCost ?? 0;
                return this._slFreightCost;
            }
        }
        #endregion

        private decimal _Port2PointOfDestinationCost;
        public decimal Port2PointOfDestinationCost
        {
            get
            {
                this._Port2PointOfDestinationCost = this.POTransit == null ? 0 : this.POTransit.Port2PointOfDestinationCost ?? 0;
                return this._Port2PointOfDestinationCost;
            }
        }
        #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slPort2PointOfDestinationCost;
        public decimal SLPort2PointOfDestinationCost
        {
            get
            {
                this._slPort2PointOfDestinationCost = this.SLPOTransit == null ? 0 : this.SLPOTransit.Port2PointOfDestinationCost ?? 0;
                return this._slPort2PointOfDestinationCost;
            }
        }
        #endregion

        private decimal _PointOfDestination2ProductionSiteCost;
        public decimal PointOfDestination2ProductionSiteCost
        {
            get
            {
                this._PointOfDestination2ProductionSiteCost = this.POTransit == null ? 0 : this.POTransit.PointOfDestination2ProductionSiteCost ?? 0;
                return this._PointOfDestination2ProductionSiteCost;
            }
        }

        #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
        private decimal _slPointOfDestination2ProductionSiteCost;
        public decimal SLPointOfDestination2ProductionSiteCost
        {
            get
            {
                this._slPointOfDestination2ProductionSiteCost = this.SLPOTransit == null ? 0 : this.SLPOTransit.PointOfDestination2ProductionSiteCost ?? 0;
                return this._slPointOfDestination2ProductionSiteCost;
            }
        }
        #endregion

        private string _TimeFrame1;
        public string TimeFrame1
        {
            get
            {
                this._TimeFrame1 = this.POTransit == null ? "N.A." : this.POTransit.TimeFrameDesc;
                return this._TimeFrame1;
            }
        }

        private string _TimeFrame2;
        public string TimeFrame2
        {
            get
            {
                this._TimeFrame2 = this.POTransit == null ? "N.A." : this.POTransit.TimeFrame2;
                return this._TimeFrame2;
            }
        }
        #endregion

        #region users
        private PH.Platform.AuthMgr.BO.Auth_User GetUser(string userid)
        {
            PH.Platform.AuthMgr.BO.DataListHelper helper = new PH.Platform.AuthMgr.BO.DataListHelper();
            PH.Platform.AuthMgr.BO.Auth_User user = helper.GetUserList().Where(p => p.UserID == userid).FirstOrDefault();
            return user;
        }

        public string PrepareUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.DataPreparedBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.DataPreparedBy);

                    return (user != null) ? user.UserName : this.DataPreparedBy;
                }
                else
                {
                    return "";
                }
            }
        }
        public string ConfirmedUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.ConfirmedBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.ConfirmedBy);

                    return (user != null) ? user.UserName : this.ConfirmedBy;
                }
                else
                {
                    return "";
                }
            }
        }
        public string ApprovedUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.ApprovedBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.ApprovedBy);

                    return (user != null) ? user.UserName : this.ApprovedBy;
                }
                else
                {
                    return "";
                }
            }
        }
        public string TMIDCompletedUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.TMIDCompletedBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.TMIDCompletedBy);

                    return (user != null) ? user.UserName : this.TMIDCompletedBy;
                }
                else
                {
                    return "";
                }
            }
        }
        public string PMIDWIPUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.PMIDWIPBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.PMIDWIPBy);

                    return (user != null) ? user.UserName : this.PMIDWIPBy;
                }
                else
                {
                    return "";
                }
            }
        }
        public string PMIDCompletedUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.PMIDCompletedBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.PMIDCompletedBy);

                    return (user != null) ? user.UserName : this.PMIDCompletedBy;
                }
                else
                {
                    return "";
                }
            }
        }
        public string HangerPrepareUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.HangerDataPreparedBy))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.HangerDataPreparedBy);

                    return (user != null) ? user.UserName : this.HangerDataPreparedBy;
                }
                else
                {
                    return "";
                }
            }
        }

        #endregion

        #region Liability
        public int LiabilitySort
        {
            get
            {
                if (this.LiabilityFollowUp ?? false)
                    return 0;
                else return (this.Liability ?? 3) + 1;
            }
        }
        public string LiabilityDesc
        {
            get
            {
                if (this.LiabilityFollowUp ?? false)
                    return "To be follow up";
                else
                {
                    switch (this.Liability ?? 3)
                    {
                        case 0: return "Subject to Negotiation";
                        case 1: return "For Customer Code";
                        case 2: return "For PH";
                        default:
                            return "Not apply to liability";
                    }
                }
            }
        }
        #endregion

        #region MultiPriceOption

        public bool MultiColorSize
        {
            get
            {
                return (this.MultiPriceOption ?? 0) == (int)MIDcMultiPriceOption.ColorSize;
            }
            set
            {
                if (value)
                {
                    this.MultiPriceOption = (int)MIDcMultiPriceOption.ColorSize;
                    //this.SendPropertyChanged("MultiColorSize");
                    this.OnMultiPriceOptionChanged();
                }
            }
        }
        public bool MultiColor
        {
            get
            {
                return (this.MultiPriceOption ?? 0) == (int)MIDcMultiPriceOption.Color;
            }
            set
            {
                if (value)
                {
                    this.MultiPriceOption = (int)MIDcMultiPriceOption.Color;
                    //this.SendPropertyChanged("MultiColor");
                    this.OnMultiPriceOptionChanged();
                }
            }
        }
        public bool MultiSize
        {
            get
            {
                return (this.MultiPriceOption ?? 0) == (int)MIDcMultiPriceOption.Size;
            }
            set
            {
                if (value)
                {
                    this.MultiPriceOption = (int)MIDcMultiPriceOption.Size;
                    //this.SendPropertyChanged("MultiSize");
                    this.OnMultiPriceOptionChanged();
                }
            }
        }

        #endregion

        #region Xsj20120302:應JaneLai和王生的討論結果，添加版本控制
        //獲取當前版本升級的原因
        public string RiseVersionReason
        {
            get
            {
                string reasonStr = "";
                DetailChangeConfirm currDetailChangeConfirm = this.DetailChangeConfirms.Where(p => p.Version == this.Version).FirstOrDefault();
                if (currDetailChangeConfirm != null)
                {
                    reasonStr = currDetailChangeConfirm.ChangeTypeMsg;
                }
                return reasonStr;
            }
        }

        #endregion

        #region Last Price

        private MaterialPriceHeader _CurrMaterialPriceHeader;
        public MaterialPriceHeader CurrMaterialPriceHeader
        {
            get
            {
                if (_CurrMaterialPriceHeader == null)
                    _CurrMaterialPriceHeader = new PriceHeaderInfo().GetCurrPriceHeader(this, "Standard", "");

                return _CurrMaterialPriceHeader;
            }
        }
        public string SizeRange
        {
            get
            {
                string s = "";
                if (CurrMaterialPriceHeader != null)
                {
                    string sMax = "";
                    string sMin = "";
                    int iMax = -1;
                    int iMin = -1;
                    int i = 0;
                    foreach (var c in CurrMaterialPriceHeader.NewSizeDetails)
                    {
                        int iSeq = c.Seq;
                        if (i == 0)
                        {
                            iMax = iSeq;
                            iMin = iSeq;
                            sMax = c.Size;
                            sMin = c.Size;
                        }
                        ++i;
                        if (iSeq > iMax)
                        {
                            sMax = c.Size;
                            iMax = iSeq;
                        }

                        if (iSeq < iMin)
                        {
                            sMin = c.Size;
                            iMin = iSeq;
                        }
                    }
                    if (string.IsNullOrEmpty(sMax)) sMax = sMin;
                    if (string.IsNullOrEmpty(sMin)) sMin = sMax;

                    if (sMax != sMin)
                        s = string.Format("{0}-{1}", sMin, sMax);
                    else s = sMax;
                }
                return s;
            }
        }
        public string CupRange
        {
            get
            {
                string s = "";
                if (CurrMaterialPriceHeader != null)
                {
                    string sMax = "";
                    string sMin = "";
                    int iMax = -1;
                    int iMin = -1;
                    int i = 0;
                    foreach (var c in CurrMaterialPriceHeader.NewCupDetails)
                    {
                        int iSeq = c.Seq;
                        if (i == 0)
                        {
                            iMax = iSeq;
                            iMin = iSeq;
                            sMax = c.Cup;
                            sMin = c.Cup;
                        }
                        ++i;
                        if (iSeq > iMax)
                        {
                            sMax = c.Cup;
                            iMax = iSeq;
                        }

                        if (iSeq < iMin)
                        {
                            sMin = c.Cup;
                            iMin = iSeq;
                        }
                    }
                    if (string.IsNullOrEmpty(sMax)) sMax = sMin;
                    if (string.IsNullOrEmpty(sMin)) sMin = sMax;

                    if (sMax != sMin)
                        s = string.Format("{0}-{1}", sMin, sMax);
                    else s = sMax;
                }
                return s;
            }
        }

        #endregion
    }


    partial class CustomMaterialDeclare : PH.Platform.BO.BaseEntity
    {
        public string ElementDesc
        {
            get
            {
                Misc_DataDictionary _dict = MiscHelper.MiscCtx.Misc_DataDictionaries.Where(p => p.DataType == "PH.MIDc.MaterialElement" && p.DataCode == this.ElementNo).FirstOrDefault();
                if (_dict != null)
                    return _dict.Description;
                else
                    return "";
            }
        }
    }

    public enum MIDcMultiPriceOption
    {
        None, ColorSize, Color, Size
    }
    public class MIDMaterial
    {
        public string Supplier { get; set; }
        public string ERPSupplier { get; set; }
        public string SupplierName { get; set; }
        public string VATSupplier
        {
            get
            {
                return string.Format("{0}{1}", (this.HaveVAT ?? false) ? "*" : "", this.ERPSupplier);
            }
            set { value = ""; }
        }

        #region Materail Type

        public string MaterialType { get; set; }
        public MaterialType _MaterialTypeInstance;
        public MaterialType MaterialTypeInstance
        {
            get
            {
                if (_MaterialTypeInstance == null)
                {
                    MaterialTypeList list = new MaterialTypeList();
                    _MaterialTypeInstance = list.GetMaterialType(this.MaterialType);


                }
                return _MaterialTypeInstance;
            }
            set { _MaterialTypeInstance = value; }
        }

        //public string DemensionDes
        //{
        //    get
        //    {
        //        return MaterialTypeInstance == null ? "" : MaterialTypeInstance.DemensionDes;
        //    }
        //    set { value = ""; }
        //}
        public string SuppSizeCupElementDes
        {
            get
            {
                return MaterialTypeInstance == null ? "" : MaterialTypeInstance.SuppSizeCupElementDes;
            }
            set { value = ""; }
        }

        public string YieldUsageDes
        {
            get
            {
                return MaterialTypeInstance == null ? "" : MaterialTypeInstance.YieldUsageDes;
            }
            set { value = ""; }
        }
        #endregion

        public string MaterialCode { get; set; }
        public int? MaterialCount { get; set; }
        public string SuppRef { get; set; } //key
        public decimal? SupplierWidth { get; set; }
        public string SupplierUnit { get; set; }
        public DateTime? CreateDate { get; set; }
        public string Status { get; set; }
        //public string Status1
        //{
        //    get
        //    {
        //        return CreateDate.HasValue ? Status : "";
        //    }
        //    set { value = ""; }
        //}

        public string MIDStatus { get; set; }
        public string MIDStatusDesc
        {
            get
            {
                if (MIDStatus.StartsWith("TMID")) return "TMID";
                else if (MIDStatus.StartsWith("PMID")) return "PMID";
                else return MIDStatus;
            }
            set { value = ""; }
        }
        public decimal? AllInPrice { get; set; }
        public string MIDcDimensionDesc
        {
            get
            {
                string s = "";
                switch (this.SingleRange)
                {
                    case "Mw":
                    case "Ss":
                    case "Sw":
                    case "Sl":
                    case "St":
                        s = "3Ds";
                        break;
                    case "Rs":
                    case "Rw":
                    case "Rl":
                        s = "3Dr";
                        break;
                    case "Rc":
                        s = "4D";
                        break;
                    default:
                        s = string.IsNullOrEmpty(this.Dimension) ? "" : string.Format("{0}D", this.Dimension);
                        break;
                }

                return s;
            }
            set { value = ""; }
        }
        public string Dimension { get; set; }
        public string DimensionD
        {
            get
            {
                return MIDcDimensionDesc;// string.Format("{0} D", Dimension);
            }
            set { value = ""; }
        }

        public string SingleRange { get; set; }
        public string SingleRangeDesc
        {
            get
            {
                //return string.IsNullOrEmpty(SingleRange) ? "" : string.Format("({0}D - {1})", Dimension, SingleRange);
                return string.IsNullOrEmpty(SingleRange) ? "" : string.Format("({0} - {1})", MIDcDimensionDesc, SingleRange);
            }
            set { value = ""; }
        }

        public string SizeWidthLength { get; set; }
        public string SizeWidthLengthUnitCount
        {
            get
            {
                return string.Format("{0}{1}{2}", SizeWidthLength,
                    string.IsNullOrEmpty(SizeWidthLength) ? "" : ((SingleRange == "Sw" || SingleRange == "Mw" || SingleRange == "Rw") ? " mm" : ""),
                    SizeRangeCount.HasValue ? string.Format(" ({0})", SizeRangeCount) : ""
                    );
            }
            set { value = ""; }
        }
        public string CupRange { get; set; }
        public string CupRangeUnitCount
        {
            get
            {
                return string.Format("{0}{1}", CupRange,
                    CupRangeCount.HasValue ? string.Format(" ({0})", CupRangeCount) : ""
                    );
            }
            set { value = ""; }
        }

        public int? SizeRangeCount { get; set; }
        public int? CupRangeCount { get; set; }
        public string SizeWidthLengthCup
        {
            get
            {//UnitForSize
                return string.Format("{0}\r\n{1}", SizeWidthLengthUnitCount, CupRangeUnitCount).TrimEnd();
            }
            set { value = ""; }
        }

        public string SuppWidth
        {
            get
            {
                if (string.IsNullOrEmpty(this.MIDcDimensionDesc)) return "";

                //switch (this.Dimension)
                switch (this.MIDcDimensionDesc)
                {
                    //case "1":
                    //case "2":
                    case "3Ds":
                        return string.Format("{0:#,0.###}", this.SupplierWidth);
                    default:
                        return "";
                }
            }
            set { value = ""; }
        }
        public string SuppSize
        {
            get
            {

                if (string.IsNullOrEmpty(this.MIDcDimensionDesc)) return "";
                if (this.MIDStatus == MIDc_MIDStatus.TMID_Completed)
                    return string.Format("{0:N0}", this.SupplierWidth);

                switch (this.MIDcDimensionDesc)
                {
                    case "3Ds":
                        if ((this.MaterialCount ?? 0) == 1) return string.Format("{0:N0}", this.SupplierWidth);
                        else
                        {
                            if (this.MaterialType == "ELW" || this.MaterialType == "RBT") return "Width Range";
                            return "Size Range";
                        }
                    //For 3D, we can shown figure of the single sz or single length or single width under calculation field
                    //For 3D, for the range, we shown the following wording:- "Size Range" or "Length Range" or "Width Range"

                    case "4D":
                        return "Size/Cup Range";
                    default:
                        return "";
                }

                //return "";
            }
            set { value = ""; }
        }

        public string SortStatus
        {
            get
            {
                if (string.IsNullOrEmpty(this.Status)) return "";

                if (this.Status.ToLower().StartsWith("study"))
                    return "1.1) Study";
                else if (this.Status.ToLower().StartsWith("test"))
                    return "1.2) Test";
                else if (this.Status.ToLower().StartsWith("run-gen"))
                    return "2.1) Run - Gen (General)";
                else if (this.Status.ToLower().StartsWith("run-ss"))
                    return "2.2) Run - SS (Season)";
                else if (this.Status.ToLower().StartsWith("run-sp"))
                    return "2.3) Run - SP (Special)";
                else if (this.Status.ToLower().StartsWith("hold"))
                    return "3) Hold";
                else if (this.Status.ToLower().StartsWith("stop"))
                    return "4.1) Stop";
                else if (this.Status.ToLower().StartsWith("drop"))
                    return "4.2) Drop";
                else return "";
            }
            set { value = ""; }
        }
        public string MaterialTypeDesc
        {
            get
            {
                MaterialTypeList list = new MaterialTypeList();
                MaterialType m = list.GetMaterialType(this.MaterialType);
                return m == null ? "" : m.Description;


            }
            set { value = ""; }
        }

        public bool? HaveVAT { get; set; }
        public decimal? VAT { get; set; }

        public System.Nullable<decimal> StockQty { get; set; }
        //public System.Nullable<decimal> StockValue { get { return AllInPrice * StockQty; } set { value = 0; } }
        public System.Nullable<decimal> StockValue { get; set; }
        public System.Nullable<int> AppliedtoStyles { get; set; }
        public System.Nullable<int> AppliedtoBOMs { get; set; }
        public System.Nullable<int> AppliedtoPOs { get; set; }
        public System.Nullable<int> AppliedtoCusts { get; set; }
        public string CoreCust { get; set; }
        public System.Nullable<int> BOMLastDate { get; set; }
        public DateTime? BOMLastDateTime
        {
            get
            {
                if (BOMLastDate.HasValue)
                {
                    string s = Convert.ToString((BOMLastDate ?? 0) + 19000000);
                    DateTime dt = new DateTime(Convert.ToInt32(s.Substring(0, 4)), Convert.ToInt32(s.Substring(4, 2)), Convert.ToInt32(s.Substring(6, 2)));
                    return dt;
                }
                else return null;
            }
            set { value = null; }
        }
        public System.Nullable<DateTime> POIssueLastDate { get; set; }
        public System.Nullable<decimal> POSampleValue { get; set; }
        public System.Nullable<decimal> POLast12MSampleValue { get; set; }

        //public System.Nullable<decimal> POSampleValue1 { get {
        //    if (this.Status.ToLower().StartsWith("study"))
        //        return POSampleValue;
        //    else return (decimal?)null;
        //} set { value = 0; } }

        public System.Nullable<decimal> POIssuedValue { get; set; }
        public System.Nullable<decimal> POLast12MIssuedValue { get; set; }
        public System.Nullable<decimal> POLast24MIssuedValue { get; set; }
        public System.Nullable<decimal> POLast36MIssuedValue { get; set; }

    }

    public class MaterialListReport
    {
        public MaterialListReport()
        {

        }
        public System.Nullable<int> CalcDate { get; set; }
        public string MatTypeSupp { get; set; }
        public System.Nullable<bool> IsStudyRun { get; set; }

        //public string IsStudyRunDesc { get { return (IsStudyRun ?? false) ? "Study, Check && Run-Gen" : "Hold"; } set { value = ""; } }
        public string IsStudyRunDesc { get { return (IsStudyRun ?? false) ? "Study,Test&Run" : "Hold,Stop&Drop"; } set { value = ""; } }

        public System.Nullable<DateTime> CalcDateTime { get; set; }
        public System.Nullable<bool> IsMatType { get; set; }
        public string IsMatTypeDesc { get { return (IsMatType ?? false) ? "Mat.Type Dependent" : "Supplier Dependent"; } set { value = ""; } }
        public string FileName { get; set; }
        public byte[] Report { get; set; }
        public string ShowReport { get { return (HaveData ?? false) ? "Show Report" : "No data"; } set { value = ""; } }
        public System.Nullable<bool> HaveData { get; set; }
    }

    partial class PriceHistory : PH.Platform.BO.BaseEntity
    {
        #region
        partial void OnCreated()
        {
            this.HistoryDate = DateTime.Now;
        }
        #endregion
    }

    partial class RatioPrice : PH.Platform.BO.BaseEntity
    {
        #region
        private int _Id;
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                this._Id = value;
            }

        }

        public RatioPrice(string colorCategory, decimal price)
        {
            this._Price = price;
            this._ColorCategory = colorCategory;
        }

        partial void OnCreated()
        {
            this.Ratio = 1;
        }
        partial void OnPriceChanged()
        {
            if (this.Detail != null)
                this.Detail.EstInterest = this.Detail.EstInterest;
        }
        partial void OnRatioChanged()
        {
            if (this.Detail != null)
                this.Detail.EstInterest = this.Detail.EstInterest;
        }
        #endregion
    }

    partial class Spec : PH.Platform.BO.BaseEntity
    {
        #region
        public void AutoInsertTechnicalInformation(MIDcDataContext context)
        {

            var TechDefault = from supplier in context.TechnicalInformationDefaults
                              select supplier;

            foreach (TechnicalInformationDefault ch in TechDefault)
            {
                TechnicalInformation obj = new TechnicalInformation();
                obj.SuppRef = this.SuppRef;
                obj.Color = this.Color;
                obj.ColorCategory = this.ColorCategory;
                obj.TestType = ch.TestType;
                obj.Grade = ch.Grade;
                obj.Group = ch.TypeGroup;
                obj.SpecifyMethod = ch.SpecifyMethod;
                obj.Remark = ch.TestMethodList;//璶琌┰絧﹚
                obj.Spec = this;
                this.TechnicalInformations.Add(obj);
                //context.TechnicalInformations.InsertOnSubmit(obj);
                //context.SubmitChanges();
            }
        }

        public string MaterialName
        {
            get { return this.Detail.MaterialCode; }
        }

        public string TechWarp
        {
            get
            {
                return (Convert.ToDecimal(this.Detail.TechWarp == null ? 0 : this.Detail.TechWarp).ToString("0.##") + " to " + Convert.ToDecimal(this.Detail.TechWarpF == null ? 0 : this.Detail.TechWarpF).ToString("0.##"));
            }
        }
        public string TechWept
        {
            get
            {
                return (Convert.ToDecimal(this.Detail.TechWept == null ? 0 : this.Detail.TechWept).ToString("0.##") + " to " + Convert.ToDecimal(this.Detail.TechWeptF == null ? 0 : this.Detail.TechWeptF).ToString("0.##"));
            }
        }

        #endregion
    }

    partial class TechnicalInformation : PH.Platform.BO.BaseEntity
    {
        #region
        private List<string> _testMethodStr;
        public List<string> TestMethodStr
        {
            get
            {
                char[] aa = { '&' };
                List<string> re = new List<string>();

                foreach (string bb in this.Remark.Split(aa))
                {
                    re.Add(bb);
                }

                this._testMethodStr = re;

                return _testMethodStr;
            }

        }
        #endregion
    }

    partial class TechnicalInformationDefault : PH.Platform.BO.BaseEntity
    {
        #region
        public List<string> TestMethodStr
        {
            get
            {
                List<string> re = new List<string>();

                if (this._TestMethodList == null)
                    return re;

                char[] aa = { '&' };

                foreach (string bb in this._TestMethodList.Split(aa))
                {
                    re.Add(bb);

                }

                return re;
            }

        }
        #endregion
    }

    partial class TechInforTest : PH.Platform.BO.BaseEntity
    {
        #region

        partial void OnCreated()
        {
            this._FinalResult = false;
            this.AutoResult = false;

        }

        private void ChangResult(string type)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

            string customer = (this._ProjectNo.Length < 4 ? "" : this._ProjectNo.Substring(0, 4));

            var objs = from c in context.TechReferInfos where c.CustmerID == customer select c;

            string refer = "";

            foreach (TechReferInfo obj in objs)
            {
                refer = obj.ReferInfo;
            }

            decimal maxvalueWept = 0, minvalueWept = 0, maxvalueWarp = 0, minvalueWarp = 0;

            minvalueWept = Convert.ToDecimal(this.Spec.Detail.TechWarp);
            maxvalueWept = Convert.ToDecimal(this.Spec.Detail.TechWarpF);

            minvalueWarp = Convert.ToDecimal(this.Spec.Detail.TechWept);
            maxvalueWarp = Convert.ToDecimal(this.Spec.Detail.TechWeptF);



            if (refer == "Elongation")
            {
                if ((minvalueWept < (this.ElongationWarp == null ? 0 : this.ElongationWarp) && (this.ElongationWarp == null ? 0 : this.ElongationWarp) < maxvalueWept) &&
                    (minvalueWarp < (this.ElongationWept == null ? 0 : this.ElongationWept) && (this.ElongationWept == null ? 0 : this.ElongationWept) < maxvalueWarp))
                {
                    this.AutoResult = true;
                }
                else
                    this.AutoResult = false;
            }
            else if (refer == "Recovery")
            {
                if ((minvalueWept < (this.RecoveryWarp == null ? 0 : this.RecoveryWarp) && (this.RecoveryWarp == null ? 0 : this.RecoveryWarp) < maxvalueWept) &&
                    (minvalueWarp < (this.RecoveryWept == null ? 0 : this.RecoveryWept) && (this.RecoveryWept == null ? 0 : this.RecoveryWept) < maxvalueWarp))
                {
                    this.AutoResult = true;
                }
                else
                    this.AutoResult = false;

            }
            else if (refer == "F(40%)Fapply")
            {
                if ((minvalueWept < (this.FapplyWarp == null ? 0 : this.FapplyWarp) && (this.FapplyWarp == null ? 0 : this.FapplyWarp) < maxvalueWept) &&
                    (minvalueWarp < (this.FapplyWept == null ? 0 : this.FapplyWept) && (this.FapplyWept == null ? 0 : this.FapplyWept) < maxvalueWarp))
                {
                    this.AutoResult = true;
                }
                else
                    this.AutoResult = false;
            }

        }
        partial void OnElongationWeptChanged() { ChangResult("wept"); }
        partial void OnElongationWarpChanged() { ChangResult("warp"); }
        partial void OnRecoveryWeptChanged() { ChangResult("wept"); }
        partial void OnRecoveryWarpChanged() { ChangResult("warp"); }
        partial void OnFapplyWeptChanged() { ChangResult("wept"); }
        partial void OnFapplyWarpChanged() { ChangResult("warp"); }
        partial void OnIDNrChanged()
        {
            this.StandardWarp = Convert.ToDecimal(this.Spec.Detail.TechWarp == null ? 0 : this.Spec.Detail.TechWarp).ToString("0.##") + " to " + Convert.ToDecimal(this.Spec.Detail.TechWarpF == null ? 0 : this.Spec.Detail.TechWarpF).ToString("0.##");
            this.StandardWept = Convert.ToDecimal(this.Spec.Detail.TechWept == null ? 0 : this.Spec.Detail.TechWept).ToString("0.##") + " to " + Convert.ToDecimal(this.Spec.Detail.TechWeptF == null ? 0 : this.Spec.Detail.TechWeptF).ToString("0.##");

        }


        #endregion
    }

    partial class SampleOrderPO : PH.Platform.BO.BaseEntity
    {
        #region

        public bool Selected { get; set; }
        #region
        private string _SampleOrderNo;
        public string SampleOrderNo
        {
            get
            {
                _SampleOrderNo = MIDcDetail.SampleOrderNo;
                return _SampleOrderNo;
            }

        }

        private string _Commodity;
        public string Commodity
        {
            get
            {
                //_Commodity = MIDcDetail.Commodity;
                _Commodity = MIDcDetail.Description;
                return _Commodity;

            }

        }

        private string _SupplierCode;
        public string SupplierCode
        {
            get
            {
                _SupplierCode = MIDcDetail.Supplier;
                return _SupplierCode;
            }

        }

        private string _SupplierName;
        public string SupplierName
        {
            get
            {
                _SupplierName = MIDcDetail.SupplierName;
                return _SupplierName;
            }

        }

        private string _SupplierAddress;
        public string SupplierAddress
        {
            get
            {
                _SupplierAddress = MIDcDetail.SupplierProfile.Address;
                return _SupplierAddress;
            }
        }

        private string _SupplierEmail;
        public string SupplierEmail
        {
            get
            {
                _SupplierEmail = MIDcDetail.SupplierProfile.EMail;
                return _SupplierEmail;
            }
        }

        private string _SupplierTel;
        public string SupplierTel
        {
            get
            {
                _SupplierTel = MIDcDetail.SupplierProfile.TEL;
                return _SupplierTel;
            }
        }


        private string _SupplierAttn;
        public string SupplierAttn
        {
            get
            {
                _SupplierAttn = MIDcDetail.SupplierProfile.AttnPerson;
                return _SupplierAttn;

            }

        }

        private string _SupplierFax;
        public string SupplierFax
        {
            get
            {
                _SupplierFax = MIDcDetail.SupplierProfile.Fax;
                return _SupplierFax;

            }

        }

        private string _PaymentTerm;
        public string PaymentTerm
        {
            get
            {
                _PaymentTerm = MIDcDetail.PaymentTerm;
                return _PaymentTerm;

            }

        }

        private string _DeliveryTerm;
        public string DeliveryTerm
        {
            get
            {
                _DeliveryTerm = MIDcDetail.DeliveryTerm;
                return _DeliveryTerm;

            }

        }

        private string _SupplierWidth;
        public string SupplierWidth
        {
            get
            {
                _SupplierWidth = string.Format("{0:0.##}MM", MIDcDetail.SupplierWidth ?? 0);
                return _SupplierWidth;

            }

        }

        private string _Currency;
        public string Currency
        {
            get
            {
                _Currency = MIDcDetail.Currency;
                return _Currency;

            }

        }

        private string _AdditionalTerm;
        public string AdditionalTerm
        {
            get
            {
                _AdditionalTerm = MIDcDetail.Comments;
                return _AdditionalTerm;

            }
        }

        private string _OrderColor;
        public string OrderColor
        {
            get
            {
                _OrderColor = "";
                List<SampleOrderPODetail> ds = new List<SampleOrderPODetail>();
                SampleOrderPODetail d1;


                if (this.SampleOrderPODetails != null)
                {

                    foreach (SampleOrderPODetail d in this.SampleOrderPODetails)
                    {
                        d1 = ds.Find(delegate(SampleOrderPODetail dtemp) { return d.Color == dtemp.Color; });
                        if (d1 != null) continue;
                        ds.Add(d);
                        _OrderColor += string.Format("{0}; ", d.Color);
                    }
                }


                if (_OrderColor != "")
                    _OrderColor = _OrderColor.Remove(_OrderColor.Length - 2);

                return _OrderColor;
            }
        }

        private string _OrderQty;
        public string OrderQty
        {
            get
            {
                _OrderColor = _OrderQty = "";
                List<SampleOrderPODetail> ds = new List<SampleOrderPODetail>();
                SampleOrderPODetail d1;

                foreach (SampleOrderPODetail d in this.SampleOrderPODetails)
                {
                    d1 = ds.Find(delegate(SampleOrderPODetail dtemp) { return d.Color == dtemp.Color; });
                    if (d1 != null) continue;
                    ds.Add(d);
                }
                foreach (SampleOrderPODetail d in ds)
                {
                    _OrderColor += string.Format("{0}; ", d.Color);
                    decimal qty = 0;
                    foreach (SampleOrderPODetail dd in this.SampleOrderPODetails)
                    {
                        if (dd.Color != d.Color) continue;
                        qty += Convert.ToDecimal(dd.Qty ?? 0);
                    }
                    _OrderQty += string.Format("{0:0.###}{1}; ", qty, _SupplierUnit);
                }
                if (_OrderColor != "")
                    _OrderColor = _OrderColor.Remove(_OrderColor.Length - 2);
                if (_OrderQty != "")
                    _OrderQty = _OrderQty.Remove(_OrderQty.Length - 2);
                return _OrderQty;
            }
        }

        private Detail _midcDetail;
        public Detail MIDcDetail
        {
            get
            {
                if (_midcDetail == null)
                    this.GetMIDcDetail();
                return _midcDetail;
            }
            set { this._midcDetail = value; }
        }

        #region Xsj20110321 add
        public string PaymentTermENDesc
        {
            get
            {
                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.MIDc.PaymentTerms", this.PaymentTerm);
                return dd == null ? this.PaymentTerm : string.Format("{0} ({1})", dd.Description, this.PaymentTerm);


            }
        }

        public string TransitPointEN
        {
            get
            {
                //if (this.MIDcDetail.Incoterms == null)
                return this.MIDcDetail.TransitPoit;

                //string s = string.Format("{0}:", this.Incoterm.TransitPointDescEN);
                //return s;
            }
        }


        //public PH.BasicInfo.BO.IncontermsTransit IncontermsTransit
        //{
        //    get
        //    {
        //        PH.BasicInfo.BO.IncontermsTransit v = (from a in this.MIDcDetail.SupplierProfile.IncontermsTransits
        //                                               where a.ERPSupplier == this.MIDcDetail.SupplierProfile .Supplier  
        //                                               && a.PHFactories == this.MIDcDetail .Factory 
        //                                               && a.FromEffectivedDate <= this.MIDcDetail.CreateDate 
        //                                               && a.IsLCL == true
        //                                               && a.LocationofSuppFactory == this.LocationOfSuppFactory
        //                                               select a).FirstOrDefault();

        //        PH.BasicInfo.BO.IncontermsTransit v = (from a in SupplierProfile.IncontermsTransits
        //                                               where a.ERPSupplier == this.Supplier
        //                                               && a.PHFactories == this.Factory
        //                                               && a.FromEffectivedDate <= this.OrderDate
        //                                               && a.IsLCL == true
        //                                               && a.LocationofSuppFactory == this.LocationOfSuppFactory
        //                                               select a).FirstOrDefault();

        //        return v;
        //    }
        //}

        //public string PurchaseOfficerEmail
        //{
        //    get
        //    {
        //        DicList list = new DicList();
        //        PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.POPC.PurchaseOfficerEmail", this.PurchaseOfficer);
        //        return dd == null ? "" : dd.Description;
        //    }
        //}
        //public string PurchaseOfficerAndEmail
        //{
        //    get
        //    {
        //        return string.IsNullOrEmpty(PurchaseOfficerEmail) ? this.PurchaseOfficer : string.Format("{0} ({1})", this.PurchaseOfficer, this.PurchaseOfficerEmail);
        //    }
        //}

        #endregion
        #endregion

        private void GetMIDcDetail()
        {

            if (string.IsNullOrEmpty(this.CommodityCode))
            {
                _midcDetail = new Detail();
                return;
            }

            try
            {
                MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
                MIDcDetail = (from cc in context.Details
                              where cc.SuppRef == this.CommodityCode && cc.MIDStatus != MIDc_MIDStatus.TMID_WIP
                              select cc).First<Detail>();
            }
            catch { }


            if (_midcDetail != null)
            {
                _midcDetail.GetARate();
                _midcDetail.GetSupplierProfile();
            }
            else
            {
                _midcDetail = new Detail();
            }


            this.SupplierUnit = _midcDetail.SupplierUnit;
            this.ShipmentMode = _midcDetail.ShipMode;
            this.RateToPHUnit = _midcDetail.RateToPHUnit ?? 0;
            this.PHUnit = _midcDetail.PHUnit;
        }

        private decimal _CostAmount;
        public decimal CostAmount
        {
            get
            {
                _CostAmount = 0;
                foreach (SampleOrderPODetail item in this.SampleOrderPODetails)
                {
                    _CostAmount += item.CostAmount;
                }
                return _CostAmount;
            }
        }

        private decimal _Qty;
        public decimal Qty
        {
            get
            {
                _Qty = 0;
                foreach (SampleOrderPODetail item in this.SampleOrderPODetails)
                {
                    _Qty += Convert.ToDecimal(item.Qty ?? 0);
                }
                return _Qty;
            }
        }


        partial void OnCreated()
        {
            this.DeliveryDate = DateTime.Now;
            this.ContractPerson = "Jane Lai";
            this.PrintType = "SKU";
            this.POState = "";
            this.PO_Date = DateTime.Now;
        }
        partial void OnCommodityCodeChanged()
        {
            GetMIDcDetail();
            this.SendPropertyChanged("CommodityCode");
        }

        public decimal RateToPHUnit { get; set; }
        public string PHUnit { get; set; }
        #endregion
    }

    partial class SampleOrderPODetail : PH.Platform.BO.BaseEntity
    {
        #region
        private SampleOrderPO _curSampleOrderPO;

        private decimal _CostAmount;
        public decimal CostAmount
        {
            get
            {
                _CostAmount = Convert.ToDecimal(this.Qty ?? 0) * (this.Price ?? 0);
                return _CostAmount;
            }
            set
            {
                _CostAmount = value;
            }
        }

        public string SupplierUnit
        {
            get
            {
                return this.SampleOrderPO.SupplierUnit;

            }
        }
        public decimal RateToPHUnit
        {
            get
            {
                return this.SampleOrderPO.RateToPHUnit;
            }
        }
        public decimal SuppPHQty
        {
            get
            {
                return Math.Round(RateToPHUnit * (this.Qty ?? 0), 2);
            }
        }
        public string PHUnit
        {
            get
            {
                return this.SampleOrderPO.PHUnit;

            }
        }

        partial void OnColorChanged()
        {

            //foreach (RatioPrice midcPrice in this.SampleOrderPO.MIDcDetail.RatioPrices)
            //{
            //    if (midcPrice.ColorCategory == this.Color)
            //    {
            //        if (midcPrice.Price != 0)
            //            this.Price = midcPrice.Price;
            //        break;
            //    }
            //}
        }

        #endregion
    }

    //public enum MIDcStauts
    //{
    //    #region
    //    NonApproved = 0,
    //    TMID = 1,
    //    PMID = 2,
    //    LabellingPackaging = 3
    //    #endregion
    //}

    public partial class MaterialType : PH.Platform.BO.BaseEntity
    {
        //public string HSCodeName
        //{
        //    get
        //    {
        //        string hscodename = "";

        //        if (!String.IsNullOrEmpty(this.HsCode))
        //        {
        //            MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
        //            if (context == null)
        //            {
        //                context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
        //            }

        //            hscodename = (from c in context.CustomMaterials where c.MidcHSCode == this.HsCode select c.materialName).FirstOrDefault();
        //        }

        //        return hscodename;

        //    }
        //}

        public string HSCodeNameRMB_TW
        {
            get
            {
                string name = "";
                if (!String.IsNullOrEmpty(this.HSCodeRMB))
                {
                    MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
                    if (context == null)
                    {
                        context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                    }
                    var obj = context.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeRMB);
                    name = (obj == null) ? "" : obj.materialName;
                }
                return name;
            }
        }

        public string HSCodeNameRMB_CN
        {
            get
            {
                string name = "";
                if (!String.IsNullOrEmpty(this.HSCodeRMB))
                {
                    MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
                    if (context == null)
                    {
                        context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                    }
                    var obj = context.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeRMB);
                    name = (obj == null) ? "" : obj.materialNameCN;
                }
                return name;
            }
        }

        public string HSCodeNameRMB_EN
        {
            get
            {
                string name = "";
                if (!String.IsNullOrEmpty(this.HSCodeRMB))
                {
                    MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
                    if (context == null)
                    {
                        context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                    }
                    var obj = context.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeRMB);
                    name = (obj == null) ? "" : obj.materialNameEN;
                }
                return name;
            }
        }

        public string HSCodeNameXRMB_TW
        {
            get
            {
                string name = "";
                if (!String.IsNullOrEmpty(this.HSCodeXRMB))
                {
                    MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
                    if (context == null)
                    {
                        context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                    }

                    var obj = context.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeXRMB);
                    name = (obj == null) ? "" : obj.materialName;
                }
                return name;
            }
        }

        public string HSCodeNameXRMB_CN
        {
            get
            {
                string name = "";
                if (!String.IsNullOrEmpty(this.HSCodeXRMB))
                {
                    MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
                    if (context == null)
                    {
                        context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                    }
                    var obj = context.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeXRMB);
                    name = (obj == null) ? "" : obj.materialNameCN;
                }
                return name;
            }
        }

        public string HSCodeNameXRMB_EN
        {
            get
            {
                string name = "";
                if (!String.IsNullOrEmpty(this.HSCodeXRMB))
                {
                    MIDcDataContext context = this.CurrentDataContext as MIDcDataContext;
                    if (context == null)
                    {
                        context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                    }
                    var obj = context.CustomMaterials.FirstOrDefault(p => p.MidcHSCode == this.HSCodeXRMB);
                    name = (obj == null) ? "" : obj.materialNameEN;
                }
                return name;
            }
        }
        PH.Platform.Misc.BO.PHPlatformMiscDataContext miscDc = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
        //demension
        private string _demensionDes;
        public string DemensionDes
        {
            get
            {
                switch (this.SuppSizeCupElement)
                {
                    case "3Ds-Mw":
                    case "3Ds-Ss":
                    case "3Ds-Sw":
                    case "3Ds-Sl":
                    case "3Ds-St":
                        _demensionDes = "3Ds";
                        break;
                    case "3Dr-Rs":
                    case "3Dr-Rw":
                    case "3Dr-Rl":
                        _demensionDes = "3Dr";
                        break;
                    case "4D-Rc":
                        _demensionDes = "4D";
                        break;
                    default:
                        _demensionDes = (this.Dimension ?? 0) == 0 ? "" : string.Format("{0}D", this.Dimension);
                        break;
                }

                return _demensionDes;
            }
        }

        //suppSizeCupElement
        private string _suppSizeCupElementDes;
        public string SuppSizeCupElementDes
        {
            get
            {
                _suppSizeCupElementDes = "";
                string suppSizeCupElement = this.SuppSizeCupElement;
                List<string> vals = (from val in miscDc.Misc_DataDictionaries
                                     where val.DataCode == suppSizeCupElement && val.DataType.Trim() == "PH.MIDc.SuppSizeCupElement"
                                     select val.Description).ToList();
                if (vals.Count() > 0)
                {
                    _suppSizeCupElementDes = vals.First();
                }
                return _suppSizeCupElementDes;
            }
        }

        //YieldUsage
        private string _yieldUsageDes;
        public string YieldUsageDes
        {
            get
            {
                _yieldUsageDes = "";
                string yieldUsage = this.YieldUsage;
                List<string> vals = (from val in miscDc.Misc_DataDictionaries
                                     where val.DataCode == yieldUsage && val.DataType.Trim() == "PH.MIDc.YieldCalculation"
                                     select val.Description).ToList();
                if (vals.Count() > 0)
                {
                    _yieldUsageDes = vals.First();
                }
                return _yieldUsageDes;
            }
        }
    }

    public partial class MaterialTypeSizeCup : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.Category = "Size";
        }

        //private IncontermsTransit _POTransit;
        //public IncontermsTransit POTransit
        //{
        //    get
        //    {
        //        if (_POTransit == null)
        //            //_POTransit = GetPOTransit();
        //            //Xsj2012-04-19注釋掉以上代碼更改為以下
        //            _POTransit = GetPOTransit(this.Factory);

        //        return _POTransit;
        //    }
        //    set { this._POTransit = value; }
        //}

        //Xsj:為了將Size劃分到多個SizeMask中而添加如下代碼
        #region
        PH.MIDc.BO.MIDcDataContext dc = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        //Xsj:標准組別名稱
        public string StandardGroupName
        {
            get
            {
                string standardGroupName = null;
                standardGroupName = (from val1 in dc.ColorSizeCupRanges
                                     join val2 in dc.ColorSizeCupGroups on val1.GroupCode equals val2.GroupCode
                                     where val1.DataCode == this.SizeCup && val1.Category == this.Category
                                     select val2.GroupName).FirstOrDefault();

                return standardGroupName;
            }
        }

        //Xsj:標准組別名稱
        public int? StandardGroupCode
        {
            get
            {
                int? GroupCode = null;
                GroupCode = (from val1 in dc.ColorSizeCupRanges
                             join val2 in dc.ColorSizeCupGroups on val1.GroupCode equals val2.GroupCode
                             where val1.DataCode == this.SizeCup && val1.Category == this.Category
                             select val2.GroupCode).FirstOrDefault();

                return GroupCode;
            }
        }

        //Xsj:根據不同的MaterailType指定的組別名稱
        public string SpecialGroupName
        {
            get
            {
                string groupName = null;

                PH.MIDc.BO.ColorSizeCupGroup cscGroup = this.dc.ColorSizeCupGroups.Where(p => p.GroupCode == this.GroupCode).FirstOrDefault();
                if (cscGroup != null)
                {
                    groupName = cscGroup.GroupName;
                }
                return groupName;
            }
        }
        #endregion

    }

    public enum MaterialSortby
    {
        SuppWidth, BuyerItem, SuppCode, SuppItemRef
    }
    public class SampleOrderList : BaseEntityList<SampleOrder, MIDcDataContext>
    {
        public SampleOrder GetSampleOrder(string samplerOrderNo)
        {
            var aa = (from a in CurrentDataContext.SampleOrders
                      where a.SampleOrderNo == samplerOrderNo
                      select a).FirstOrDefault<SampleOrder>();

            return aa;
        }
        public IEnumerable<SampleOrder> GetSampleOrdersDesc()
        {
            var aa = from a in CurrentDataContext.SampleOrders
                     orderby a.SampleOrderNo descending
                     select a;

            return aa;
        }
    }
    public class DetailList : BaseEntityList<Detail, MIDcDataContext>
    {
        public List<MIDMaterial> GetDetailbyMatType(string materailType, bool groupStatusStudyRun)
        {
            this.CurrentDataContext.CommandTimeout = 2000;
            //string sql = string.Format("sp_GetDetailByMatType '{0}',{1}", materailType, groupStatusStudyRun);
            string sql = string.Format("sp_GetDetailBySupplierMatType '','{0}',{1}", materailType, groupStatusStudyRun);
            List<MIDMaterial> list = this.CurrentDataContext.ExecuteQuery<MIDMaterial>(sql).ToList();
            return list;
        }
        public List<MIDMaterial> GetDetailbySupp(string supp, bool groupStatusStudyRun)
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            //string sql = string.Format("sp_GetDetailBySupplier '{0}',{1}", supp, groupStatusStudyRun);
            string sql = string.Format("sp_GetDetailBySupplierMatType '{0}','',{1}", supp, groupStatusStudyRun);
            List<MIDMaterial> list = this.CurrentDataContext.ExecuteQuery<MIDMaterial>(sql).ToList();
            return list;
        }
        public List<MaterialListReport> GetMaterialListPDFs(bool isMatType)
        {
            this.CurrentDataContext.CommandTimeout = 2000;
            string sql = string.Format("select  CalcDate ,MatTypeSupp ,CalcDateTime ,IsMatType ,IsStudyRun ,[FileName], HaveData from [PH.MIDc].dbo.MaterialListHistory");
            sql = string.Format("{0} where IsMatType={1}", sql, (isMatType ? 1 : 0));
            List<MaterialListReport> list = this.CurrentDataContext.ExecuteQuery<MaterialListReport>(sql).ToList();
            return list;
        }
        public MaterialListReport GetMaterialListPDF(MaterialListReport pdf)
        {
            this.CurrentDataContext.CommandTimeout = 2000;
            string sql = string.Format("select  CalcDate ,MatTypeSupp ,CalcDateTime ,IsMatType ,IsStudyRun ,[FileName],HaveData,Report from [PH.MIDc].dbo.MaterialListHistory where CalcDate={0} and MatTypeSupp='{1}' and IsStudyRun={2}",
                pdf.CalcDate, pdf.MatTypeSupp, (pdf.IsStudyRun ?? false) ? 1 : 0);
            List<MaterialListReport> list = this.CurrentDataContext.ExecuteQuery<MaterialListReport>(sql).ToList();
            if (list.Count > 0)
                return list[0];
            else return null;
        }

        public List<string> GetCustomers()
        {
            this.CurrentDataContext.CommandTimeout = 2000;
            string sql = string.Format(@" select distinct rTrim(a.CUSN20) as CustomerCode 
from [AS400DB].[dbo].[OEP20]  a
where a.CONO20='P1'
order by CustomerCode ");
            List<string> list = this.CurrentDataContext.ExecuteQuery<string>(sql).ToList();
            list.Insert(0, "ALL");
            return list;
        }

        public List<string> GetERPSuppliers(bool suppAscending)
        {
            this.CurrentDataContext.CommandTimeout = 2000;
            //string sql = string.Format("select distinct ERPSupplier from [PH.BasicInfo].[dbo].[SupplierProfile] order by ERPSupplier {0}", suppAscending ? "" : "desc");
            string sql = string.Format(@" select distinct a.ERPSupplier 
from [PH.BasicInfo].[dbo].[SupplierProfile]  a
inner join [PH.MIDc].dbo.[Detail] b on a.supplier=b.supplier and b.[MIDStatus] <>'TMID-WIP' and (a.DeleteFlag=0 or a.DeleteFlag is null) and a.Active='1'
order by ERPSupplier {0}", suppAscending ? "" : "desc");
            // 3: To-Drop
            List<string> list = this.CurrentDataContext.ExecuteQuery<string>(sql).ToList();
            return list;
        }

        public List<ERPMIDcSupplier> GetERPMIDcSuppliers(bool suppAscending)
        {
            this.CurrentDataContext.CommandTimeout = 2000;
            //string sql = string.Format("select distinct ERPSupplier from [PH.BasicInfo].[dbo].[SupplierProfile] order by ERPSupplier {0}", suppAscending ? "" : "desc");
            string sql = string.Format(@" select distinct a.ERPSupplier,a.Supplier as MIDcSupplier 
from [PH.BasicInfo].[dbo].[SupplierProfile]  a
inner join [PH.MIDc].dbo.[Detail] b on a.supplier=b.supplier and b.[MIDStatus] <>'TMID-WIP' and (a.DeleteFlag=0 or a.DeleteFlag is null) and a.Active<>'3'
order by ERPSupplier {0}", suppAscending ? "" : "desc");
            // 3: To-Drop
            List<ERPMIDcSupplier> list = this.CurrentDataContext.ExecuteQuery<ERPMIDcSupplier>(sql).ToList();
            ERPMIDcSupplier s = new ERPMIDcSupplier() { ERPSupplier = "ALL Supp", MIDcSupplier = "ALL Supp" };
            list.Insert(0, s);
            return list;
        }

        public Detail GetDetail(string suppref)
        {
            var aa = (from a in CurrentDataContext.Details
                      where a.SuppRef == suppref
                      select a).FirstOrDefault();

            return aa;
        }
        public Detail GetDetail(string suppRef, string itemCode)
        {
            Detail d = GetDetail(suppRef);
            if (d == null)
            {
                d = (from a in CurrentDataContext.Details
                     where a.MaterialCode == itemCode
                     select a).FirstOrDefault();
            }
            if (d == null && !string.IsNullOrEmpty(itemCode))
            {
                d = (from a in CurrentDataContext.Details
                     where a.MaterialCode.Substring(0, 8) == itemCode.Substring(0, 8)
                     select a).FirstOrDefault();
            }
            return d;

        }

        public IEnumerable<Detail> GetDetails(string suppMIDc, DateTime dtBegin, DateTime dtEnd, bool groupStatusStudyRun)
        {
            suppMIDc = suppMIDc == "ALL Supp" ? "" : suppMIDc;

            var aa = from a in CurrentDataContext.Details
                     where (suppMIDc == "" || a.Supplier == suppMIDc)
                     && (dtBegin == DateTime.MinValue || (a.CreateDate >= dtBegin && a.CreateDate <= dtEnd))
                     && (
                             (groupStatusStudyRun && (a.Status.StartsWith("STUDY") || a.Status.StartsWith("RUN") || a.Status.StartsWith("TEST")))
                          || (a.Status == "HOLD" || a.Status == "DROP" || a.Status == "STOP")
                         )
                     orderby a.Supplier, a.CreateDate
                     select a;

            return aa;
        }

        public void SaveToDB(System.IO.MemoryStream ms, string matTypeSupp, bool isMatType, bool isStudyRun, string filename, bool haveData)
        {
            string sql = "if exists (select * from [PH.MIDc].[dbo].[MaterialListHistory] where CalcDate = {0} and MatTypeSupp={1} and IsStudyRun={4}) ";
            sql += " update [PH.MIDc].[dbo].[MaterialListHistory] set Report={6},CalcDateTime={2},HaveData={7} where CalcDate = {0} and MatTypeSupp={1} and IsStudyRun={4} ";
            sql += " else INSERT INTO [PH.MIDc].[dbo].[MaterialListHistory]([CalcDate] ,[MatTypeSupp] ,[CalcDateTime],[IsMatType] ,[IsStudyRun] ,[FileName] ,[Report],HaveData) values ({0},{1},{2},{3},{4},{5},{6},{7}) ";
            object[] oparams = new object[8];
            oparams[0] = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            oparams[1] = matTypeSupp;
            oparams[2] = DateTime.Now;
            oparams[3] = isMatType;
            oparams[4] = isStudyRun;
            oparams[5] = filename;
            oparams[6] = ms.ToArray();
            oparams[7] = haveData;
            this.CurrentDataContext.ExecuteCommand(sql, oparams);
        }

        public List<SampleOrderGroup> GetSampleOrderGroups(IEnumerable<Detail> details)
        {
            List<SampleOrderGroup> sgs = new List<SampleOrderGroup>();
            foreach (var d in details)
            {

            }
            return sgs;
        }


        public List<PriceTrace> GetDetailsBySupplier(string supp, bool groupStatusStudyRun)
        {
            List<PriceTrace> list = new List<PriceTrace>();
            PriceTrace pt;
            this.CurrentDataContext.CommandTimeout = 1000;

            #region Supplier Profile

            PH.BasicInfo.BO.BasicInfoDataContext suppdatacontext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();

            SupplierProfile sp = (from aa in suppdatacontext.SupplierProfiles
                                  where aa.ERPSupplier == supp
                                  select aa).First<SupplierProfile>();

            if (sp == null) return list;

            //string midcSupp = sp.Supplier;

            #endregion

            #region Detail

            var ds = from d in CurrentDataContext.Details
                     where d.Supplier == sp.Supplier && d.MIDStatus != "TMID-WIP"
                     &&
                     (
                       (groupStatusStudyRun && (d.Status.ToUpper().StartsWith("STUDY") || d.Status.ToUpper().StartsWith("RUN") || d.Status.ToUpper().StartsWith("TEST")))
                       || (!groupStatusStudyRun && (d.Status.ToUpper().StartsWith("HOLD") || d.Status.ToUpper().StartsWith("DROP") || d.Status.ToUpper().StartsWith("STOP")))
                     )
                     select d;

            foreach (var d in ds)
            {
                pt = new PriceTrace();
                SetBaseValue(pt, d, sp);


                //HaveVAT, VAT

                #region Material Price Header 3 version

                MaterialPriceHeader currMPH = null;
                MaterialPriceHeader recentMPH = null;
                MaterialPriceHeader latterMPH = null;

                List<MaterialPriceHeader> mphList = d.MaterialPriceHeaders.Where(p => p.PriceType == "Standard" && p.Category == "").OrderByDescending(p => p.EffectFromDate).ToList();

                for (int i = 0; i < mphList.Count; i++)
                {
                    if (mphList[i].EffectFromDate.Date <= DateTime.Now.Date)
                    {
                        currMPH = mphList[i];
                        if ((i - 1) >= 0) recentMPH = mphList[i - 1];
                        if ((i - 2) >= 0) latterMPH = mphList[i - 2];

                        break;
                    }
                }

                //to do price---

                var sizeSeqs = from a in CurrentDataContext.ColorSizeCupRanges
                               where a.Category == "Size"
                               orderby a.Seq
                               select a;


                #region cuurent Price
                //List<PriceTraceVersion> version_Curr = new List<PriceTraceVersion>();

                if (currMPH != null)
                {
                    pt.AllInPrice_Curr = d.AllInPrice;

                    pt.EffectFromDate_Curr = currMPH.EffectFromDate;
                    pt.EffectEndDate_Curr = currMPH.EffectEndDate;

                    if (!(currMPH.IsMultiPrice ?? false)) //single price- color = ALL, size = ALL, cup = ALL
                    {
                        //pt.SizeCup=
                        foreach (var mp in currMPH.MaterialPrices)
                        {
                            pt.Version_Curr.Color1 = mp.ColorRange;
                            pt.Version_Curr.Price1 = mp.Price;
                        }
                    }
                    else //multi price
                    {
                        List<MaterialPrice> mps = currMPH.MaterialPrices.ToList<MaterialPrice>();
                        if (pt.MIDcDimensionDesc == "3Ds")// cup = ALL, single size
                        {
                            //group by colorrange,price
                            var prices1 = from a in mps
                                          group a by new { a.ColorRange, a.Price } into g
                                          select new { g.Key, Counts = g.Count() };

                            //foreach (var item in prices1)
                            //{
                            //    var sizes1 = from a in mps
                            //                 where a.ColorRange == item.Key.ColorRange && a.Price == item.Key.Price
                            //                 select a;
                            //}
                        }
                    }


                    //sizecup
                    //cup = all



                    //var currSizCup = from a in mps
                    //                 group a by a.Size into g
                    //                 select new { g.Key, Counts = g.Count(p => p.Cup == "ALL") };

                    //foreach (var m in currSizCup)
                    //{

                    //}


                    //var categories =
                    //    from p in db.Products
                    //    group p by new { p.CategoryID, p.SupplierID } into g
                    //    select new { g.Key, g };


                }
                #endregion

                #endregion

            }
            #endregion

            return list;
        }
        private void DoPriceVersion(MaterialPriceHeader mph)
        {

        }
        private void SetBaseValue(PriceTrace pt, Detail d, SupplierProfile sp)
        {
            pt.Supplier = sp.Supplier;
            pt.ERPSupplier = sp.ERPSupplier;
            pt.SupplierName = sp.SupplierName;
            pt.Currency = sp.Currency;

            pt.MaterialType = d.MaterialType;
            pt.MaterialCode = d.MaterialCode;
            pt.SuppRef = d.SuppRef;
            pt.SupplierWidth = d.SupplierWidth;
            pt.SupplierUnit = d.SupplierUnit;
            pt.CreateDate = d.CreateDate;
            pt.Status = d.Status;
            pt.MIDStatus = d.MIDStatus;

            pt.Dimension = d.Dimension;
            pt.SingleRange = d.SingleRangeSize;


        }
    }
    public class PriceTrace
    {
        public PriceTrace()
        {
            Version_Curr = new PriceTraceVersion();
            Version_Recent = new PriceTraceVersion();
            Version_Curr = new PriceTraceVersion();
        }

        #region base value

        public string Supplier { get; set; }
        public string ERPSupplier { get; set; }
        public string SupplierName { get; set; }
        public string Currency { get; set; }

        #region Materail Type

        public string MaterialType { get; set; }
        public MaterialType _MaterialTypeInstance;
        public MaterialType MaterialTypeInstance
        {
            get
            {
                if (_MaterialTypeInstance == null)
                {
                    MaterialTypeList list = new MaterialTypeList();
                    _MaterialTypeInstance = list.GetMaterialType(this.MaterialType);


                }
                return _MaterialTypeInstance;
            }
            set { _MaterialTypeInstance = value; }
        }

        public string SuppSizeCupElementDes
        {
            get
            {
                return MaterialTypeInstance == null ? "" : MaterialTypeInstance.SuppSizeCupElementDes;
            }
            set { value = ""; }
        }

        public string YieldUsageDes
        {
            get
            {
                return MaterialTypeInstance == null ? "" : MaterialTypeInstance.YieldUsageDes;
            }
            set { value = ""; }
        }
        public string MaterialTypeDesc
        {
            get
            {
                return MaterialTypeInstance == null ? "" : MaterialTypeInstance.Description;


            }
            set { value = ""; }
        }

        #endregion

        public string MaterialCode { get; set; }
        public string SuppRef { get; set; } //key
        public decimal? SupplierWidth { get; set; }
        public string SupplierUnit { get; set; }
        public DateTime? CreateDate { get; set; }
        public string Status { get; set; }

        public string MIDStatus { get; set; }
        public string MIDStatusDesc
        {
            get
            {
                if (MIDStatus.StartsWith("TMID")) return "TMID";
                else if (MIDStatus.StartsWith("PMID")) return "PMID";
                else return MIDStatus;
            }
            set { value = ""; }
        }

        public string MIDcDimensionDesc //3Ds, 3Dr, 4D
        {
            get
            {
                string s = "";
                switch (this.SingleRange)
                {
                    case "Mw":
                    case "Ss":
                    case "Sw":
                    case "Sl":
                    case "St":
                        s = "3Ds";
                        break;
                    case "Rs":
                    case "Rw":
                    case "Rl":
                        s = "3Dr";
                        break;
                    case "Rc":
                        s = "4D";
                        break;
                    default:
                        s = string.IsNullOrEmpty(this.Dimension) ? "" : string.Format("{0}D", this.Dimension);
                        break;
                }

                return s;
            }
            set { value = ""; }
        }
        public string Dimension { get; set; }// 3, 4

        public string SingleRange { get; set; } //'Mw', 'Ss', 'Sw', 'Sl', 'St' ...
        public string SingleRangeDesc //3Ds - Ss
        {
            get
            {
                //return string.IsNullOrEmpty(SingleRange) ? "" : string.Format("({0}D - {1})", Dimension, SingleRange);
                return string.IsNullOrEmpty(SingleRange) ? "" : string.Format("({0} - {1})", MIDcDimensionDesc, SingleRange);
            }
            set { value = ""; }
        }

        public string SizeCup { get; set; } //1525mm, 80;   5-46;   32B-40B

        #region Size Cup

        //public string Min_Size { get; set; }
        //public string Max_Size { get; set; }
        //public string Min_Cup { get; set; }
        //public string Max_Cup { get; set; }

        //public string SizeWidthLength
        //{
        //    get
        //    {
        //        string s = "";
        //        if (Dimension == "3" && (new string[] { "Mw", "Ss", "Sw", "Sl", "St" }).Contains(SingleRange))//3Ds
        //        {
        //            s = string.Format("{0}", (int)SupplierWidth);
        //        }
        //        else if ((Dimension == "3" && (new string[] { "Rs", "Rw", "Rl" }).Contains(SingleRange)) || Dimension == "4")//3Dr, 4D
        //        {
        //            s = Max_Size == Min_Size ? Max_Size : Min_Size + "-" + Max_Size;
        //        }

        //        return s;
        //    }
        //    set { value = ""; }
        //}
        //public string SizeWidthLengthUnitCount
        //{
        //    get
        //    {
        //        return string.Format("{0}{1}{2}", SizeWidthLength,
        //            string.IsNullOrEmpty(SizeWidthLength) ? "" : ((SingleRange == "Sw" || SingleRange == "Mw" || SingleRange == "Rw") ? " mm" : ""),
        //            SizeRangeCount.HasValue ? string.Format(" ({0})", SizeRangeCount) : ""
        //            );
        //    }
        //    set { value = ""; }
        //}
        //public string CupRange
        //{
        //    get
        //    {
        //        string s = "";
        //        if (Dimension == "4")//4D
        //        {
        //            s = Max_Cup == Min_Cup ? Max_Cup : Min_Cup + "-" + Max_Cup;
        //        }


        //        return s;
        //    }
        //    set { value = ""; }
        //}
        //public string CupRangeUnitCount
        //{
        //    get
        //    {
        //        return string.Format("{0}{1}", CupRange,
        //            CupRangeCount.HasValue ? string.Format(" ({0})", CupRangeCount) : ""
        //            );
        //    }
        //    set { value = ""; }
        //}

        //public int? SizeRangeCount { get; set; }
        //public int? CupRangeCount { get; set; }

        //public string SizeWidthLengthCup
        //{
        //    get
        //    {//UnitForSize
        //        return string.Format("{0}\r\n{1}", SizeWidthLengthUnitCount, CupRangeUnitCount).TrimEnd();
        //    }
        //    set { value = ""; }
        //}

        #endregion


        public string SortStatus
        {
            get
            {
                if (string.IsNullOrEmpty(this.Status)) return "";

                if (this.Status.ToLower().StartsWith("study"))
                    return "1.1) Study";
                else if (this.Status.ToLower().StartsWith("test"))
                    return "1.2) Test";
                else if (this.Status.ToLower().StartsWith("run-gen"))
                    return "2.1) Run - Gen (General)";
                else if (this.Status.ToLower().StartsWith("run-ss"))
                    return "2.2) Run - SS (Season)";
                else if (this.Status.ToLower().StartsWith("run-sp"))
                    return "2.3) Run - SP (Special)";
                else if (this.Status.ToLower().StartsWith("hold"))
                    return "3) Hold";
                else if (this.Status.ToLower().StartsWith("stop"))
                    return "4.1) Stop";
                else if (this.Status.ToLower().StartsWith("drop"))
                    return "4.2) Drop";
                else return "";
            }
            set { value = ""; }
        }

        public bool? HaveVAT { get; set; }
        public decimal? VAT { get; set; }

        #endregion

        public string ColorForShort(string colorRange)
        {
            if (string.IsNullOrEmpty(colorRange)) return "";

            switch (colorRange.ToUpper())
            {
                case "2TONE":
                    return "2";
                case "ALL":
                    return "A";
                case "BLACK":
                    return "B";
                case "DARK":
                    return "D";
                case "GOLD":
                    return "G";
                case "GREIGE":
                    return "g";
                case "LIGHT":
                    return "L";
                case "MEDIUM":
                    return "M";
                case "OTHER":
                    return "O";
                case "PRINT":
                    return "P";
                case "RAW":
                    return "R";
                case "SILVER":
                    return "S";
                case "TRANSPAREN":
                    return "T";
                case "WHITE":
                    return "W";
                default:
                    return "*";
            }
        }
        public int ColorSeq(string colorRange)
        {
            if (string.IsNullOrEmpty(colorRange)) return -1;

            switch (colorRange.ToUpper())
            {
                case "2TONE":
                    return 8;
                case "ALL":
                    return 1;
                case "BLACK":
                    return 3;
                case "DARK":
                    return 6;
                case "GOLD":
                    return 9;
                case "GREIGE":
                    return 15;
                case "LIGHT":
                    return 4;
                case "MEDIUM":
                    return 5;
                case "OTHER":
                    return 30;
                case "PRINT":
                    return 8;
                case "RAW":
                    return 17;
                case "SILVER":
                    return 10;
                case "TRANSPAREN":
                    return 16;
                case "WHITE":
                    return 2;
                default:
                    return 0;
            }
            //DataCode	Seq
            //2TONE	8
            //ALL	1
            //BLACK	3
            //CLEAR	11
            //DARK	6
            //DYETOMATCH	13
            //GOLD	9
            //GREIGE	15
            //LIGHT	4
            //MEDIUM	5
            //NATURE	18
            //OTHER	30
            //OTHER1	31
            //OTHER2	32
            //OTHER3	33
            //OTHER4	34
            //OTHER5	35
            //PRINT	8
            //RAW	17
            //SILVER	10
            //SKIN	19
            //STANDARD	12
            //TRANSPAREN	16
            //WHITE	2


        }
        private string GetColorPrice(string color, decimal? price)
        {
            return string.IsNullOrEmpty(color) ? "" : string.Format("{0}-{1:N2}", ColorForShort(color), price);
        }


        public PriceTraceVersion Version_Curr { get; set; }
        public PriceTraceVersion Version_Recent { get; set; }
        public PriceTraceVersion Version_Latter { get; set; }


        #region Current

        public decimal? AllInPrice_Curr { get; set; }

        public DateTime? EffectFromDate_Curr { get; set; }
        public DateTime? EffectEndDate_Curr { get; set; }

        public string Value1_Curr { get { return GetColorPrice(this.Color1_Curr, this.Price1_Curr); } set { value = ""; } }
        public string Color1_Curr { get { return Version_Curr == null ? "" : Version_Curr.Color1; } }
        public decimal? Price1_Curr { get { return Version_Curr == null ? (decimal?)null : Version_Curr.Price1; } }

        public string Value2_Curr { get { return GetColorPrice(this.Color2_Curr, this.Price2_Curr); } set { value = ""; } }
        public string Color2_Curr { get { return Version_Curr == null ? "" : Version_Curr.Color2; } }
        public decimal? Price2_Curr { get { return Version_Curr == null ? (decimal?)null : Version_Curr.Price2; } }

        public string Value3_Curr { get { return GetColorPrice(this.Color3_Curr, this.Price3_Curr); } set { value = ""; } }
        public string Color3_Curr { get { return Version_Curr == null ? "" : Version_Curr.Color3; } }
        public decimal? Price3_Curr { get { return Version_Curr == null ? (decimal?)null : Version_Curr.Price3; } }

        public string Value4_Curr { get { return GetColorPrice(this.Color4_Curr, this.Price4_Curr); } set { value = ""; } }
        public string Color4_Curr { get { return Version_Curr == null ? "" : Version_Curr.Color4; } }
        public decimal? Price4_Curr { get { return Version_Curr == null ? (decimal?)null : Version_Curr.Price4; } }

        public string Value5_Curr { get { return GetColorPrice(this.Color5_Curr, this.Price5_Curr); } set { value = ""; } }
        public string Color5_Curr { get { return Version_Curr == null ? "" : Version_Curr.Color5; } }
        public decimal? Price5_Curr { get { return Version_Curr == null ? (decimal?)null : Version_Curr.Price5; } }

        #endregion

        #region Recent

        public DateTime? EffectFromDate_Recent { get; set; }
        public DateTime? EffectEndDate_Recent { get; set; }

        public string Value1_Recent { get { return GetColorPrice(this.Color1_Recent, this.Price1_Recent); } set { value = ""; } }
        public string Color1_Recent { get { return Version_Recent == null ? "" : Version_Recent.Color1; } }
        public decimal? Price1_Recent { get { return Version_Recent == null ? (decimal?)null : Version_Recent.Price1; } }

        public string Value2_Recent { get { return GetColorPrice(this.Color2_Recent, this.Price2_Recent); } set { value = ""; } }
        public string Color2_Recent { get { return Version_Recent == null ? "" : Version_Recent.Color2; } }
        public decimal? Price2_Recent { get { return Version_Recent == null ? (decimal?)null : Version_Recent.Price2; } }

        public string Value3_Recent { get { return GetColorPrice(this.Color3_Recent, this.Price3_Recent); } set { value = ""; } }
        public string Color3_Recent { get { return Version_Recent == null ? "" : Version_Recent.Color3; } }
        public decimal? Price3_Recent { get { return Version_Recent == null ? (decimal?)null : Version_Recent.Price3; } }

        public string Value4_Recent { get { return GetColorPrice(this.Color4_Recent, this.Price4_Recent); } set { value = ""; } }
        public string Color4_Recent { get { return Version_Recent == null ? "" : Version_Recent.Color4; } }
        public decimal? Price4_Recent { get { return Version_Recent == null ? (decimal?)null : Version_Recent.Price4; } }

        public string Value5_Recent { get { return GetColorPrice(this.Color5_Recent, this.Price5_Recent); } set { value = ""; } }
        public string Color5_Recent { get { return Version_Recent == null ? "" : Version_Recent.Color5; } }
        public decimal? Price5_Recent { get { return Version_Recent == null ? (decimal?)null : Version_Recent.Price5; } }

        #endregion

        #region Latter

        public DateTime? EffectFromDate_Latter { get; set; }
        public DateTime? EffectEndDate_Latter { get; set; }

        public string Value1_Latter { get { return GetColorPrice(this.Color1_Latter, this.Price1_Latter); } set { value = ""; } }
        public string Color1_Latter { get { return Version_Latter == null ? "" : Version_Latter.Color1; } }
        public decimal? Price1_Latter { get { return Version_Latter == null ? (decimal?)null : Version_Latter.Price1; } }

        public string Value2_Latter { get { return GetColorPrice(this.Color2_Latter, this.Price2_Latter); } set { value = ""; } }
        public string Color2_Latter { get { return Version_Latter == null ? "" : Version_Latter.Color2; } }
        public decimal? Price2_Latter { get { return Version_Latter == null ? (decimal?)null : Version_Latter.Price2; } }

        public string Value3_Latter { get { return GetColorPrice(this.Color3_Latter, this.Price3_Latter); } set { value = ""; } }
        public string Color3_Latter { get { return Version_Latter == null ? "" : Version_Latter.Color3; } }
        public decimal? Price3_Latter { get { return Version_Latter == null ? (decimal?)null : Version_Latter.Price3; } }

        public string Value4_Latter { get { return GetColorPrice(this.Color4_Latter, this.Price4_Latter); } set { value = ""; } }
        public string Color4_Latter { get { return Version_Latter == null ? "" : Version_Latter.Color4; } }
        public decimal? Price4_Latter { get { return Version_Latter == null ? (decimal?)null : Version_Latter.Price4; } }

        public string Value5_Latter { get { return GetColorPrice(this.Color5_Latter, this.Price5_Latter); } set { value = ""; } }
        public string Color5_Latter { get { return Version_Latter == null ? "" : Version_Latter.Color5; } }
        public decimal? Price5_Latter { get { return Version_Latter == null ? (decimal?)null : Version_Latter.Price5; } }

        #endregion

    }
    public class PriceTraceVersion
    {
        //public string SizeCup { get; set; }//key

        public DateTime? EffectFromDate { get; set; }
        public DateTime? EffectEndDate { get; set; }

        public string Color1 { get; set; }
        public decimal? Price1 { get; set; }

        public string Color2 { get; set; }
        public decimal? Price2 { get; set; }

        public string Color3 { get; set; }
        public decimal? Price3 { get; set; }

        public string Color4 { get; set; }
        public decimal? Price4 { get; set; }

        public string Color5 { get; set; }
        public decimal? Price5 { get; set; }
    }

    public class MaterialTypeList : BaseEntityList<MaterialType, MIDcDataContext>
    {
        public MaterialType GetMaterialType(string materailType)
        {
            var aa = (from a in CurrentDataContext.MaterialTypes
                      where a.MaterialType1 == materailType
                      select a).FirstOrDefault<MaterialType>();

            return aa;
        }
        public IEnumerable<MaterialType> GetMaterialTypes()
        {
            var aa = from a in CurrentDataContext.MaterialTypes
                     orderby a.MaterialType1
                     select a;

            return aa;
        }
        public IEnumerable<MaterialType> GetMaterialTypes(bool matTypeAscending)
        {
            if (matTypeAscending)
            {
                var aa = from a in CurrentDataContext.MaterialTypes
                         where a.Status == "Active"
                         orderby a.MaterialType1
                         select a;

                return aa;
            }
            else
            {
                var bb = from a in CurrentDataContext.MaterialTypes
                         where a.Status == "Active"
                         orderby a.MaterialType1 descending
                         select a;

                return bb;
            }
        }
        public IEnumerable<MaterialType> GetActiveMaterialTypes(string includeMatType)
        {
            var aa = from a in CurrentDataContext.MaterialTypes
                     where a.Status == "Active" || a.MaterialType1 == includeMatType
                     orderby a.MaterialType1
                     select a;

            return aa;
        }
    }

    public partial class SpecialLabel : PH.Platform.BO.BaseEntity { }
    public partial class ARate : PH.Platform.BO.BaseEntity { }

    public partial class SizeDetail : PH.Platform.BO.BaseEntity
    {
        //Xsj101105:添加屬性,用於記錄是滯選定
        public bool IsChosed { get; set; }
    }
    public partial class ColorDetail : PH.Platform.BO.BaseEntity
    {
        //Xsj101105:添加屬性,用於記錄是滯選定
        public bool IsChosed { get; set; }
    }
    public partial class CupDetail : PH.Platform.BO.BaseEntity
    {
        //Xsj101105:添加屬性,用於記錄是選定
        public bool IsChosed { get; set; }
    }

    //Xsj101105 
    public partial class MaterialProcess : PH.Platform.BO.BaseEntity
    {

        private Detail _MIDcDetail;
        public Detail MIDcDetail
        {
            get
            {
                if (_MIDcDetail == null)
                {
                    DetailList midcList = new DetailList();
                    _MIDcDetail = midcList.GetDetail(this.MatlForProcess);
                }
                return _MIDcDetail;
            }
        }
        public string MIDcItemDesc
        {
            get
            {
                return this.MIDcDetail == null ? "" : this._MIDcDetail.Commodity;
            }

        }
        public string MIDcItemCode
        {
            get
            {
                return this.MIDcDetail == null ? "" : this._MIDcDetail.MaterialCode;
            }
        }
        public string MIDcItemUnit
        {
            get
            {
                return this.MIDcDetail == null ? "" : this._MIDcDetail.SupplierUOM;
            }
        }
    }

    //Xsj101105 
    public partial class MaterialPrice : PH.Platform.BO.BaseEntity
    {
        public int SizeOrder
        {
            get
            {
                //MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
                //context.CommandTimeout = 1000;
                //string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Size' and [Value]='{0}' ", this.Size);
                //int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                //return (orders ?? 0);

                ColorSizeCupRangeList list = new ColorSizeCupRangeList();
                ColorSizeCupRange r = list.GetColorSizeCupRange("Size", this.Size);
                return (r == null) ? 0 : (r.Seq ?? 0);
            }
        }

        //Xsj101123
        public string ColorRangeDesc { get; set; }
        //public string CupDesc { get; set; }
        //public string SizeDesc { get; set; }

        public string SizeDesc
        {
            get
            {
                return string.Format("{0}|{1}", this.SizeOrder.ToString().PadLeft(7, '0'), this.Size);
                //DicList dic = new DicList();
                //PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.Size", this.Size);
                //return dictionary == null ? this.Size : dictionary.Description;
            }
        }

        public string CupDesc
        {
            get
            {
                return this.Cup;
                //if (string.IsNullOrEmpty(this.Cup)) return "";
                //DicList dic = new DicList();
                //PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.Cup", this.Cup);
                //return dictionary == null ? this.Cup : dictionary.Description;
            }
        }

        #region Check Range

        private bool? _hasSizeRange;
        public bool HasSizeRange
        {
            get
            {
                CheckSizeRange();
                return _hasSizeRange ?? false;
            }
        }
        public int SizeRangeCount { get; set; }

        private bool? _hasCupRange;
        public bool HasCupRange
        {
            get
            {
                CheckCupRange();
                return _hasCupRange ?? false;
            }
        }
        public int CupRangeCount { get; set; }

        private MIDcDataContext _context;
        public MIDcDataContext Context
        {
            get
            {
                if (_context == null)
                    _context = this.CurrentDataContext as MIDcDataContext;
                if (_context == null)
                    _context = ContextBuilder.CreateContext<MIDcDataContext>();
                return _context;
            }
        }

        public void CheckSizeRange()
        {
            if (_hasSizeRange.HasValue) return;

            var aa = (from a in this.Context.ColorSizeCupRanges
                      where a.DataCode == this.Size && a.Category == "Size"
                      select a).FirstOrDefault();
            if (aa != null)
            {
                _hasSizeRange = aa.IsRange;
                SizeRangeCount = aa.ColorSizeCupRangeDetails.Count;
            }
        }
        public void CheckCupRange()
        {
            if (_hasCupRange.HasValue) return;

            var aa = (from a in this.Context.ColorSizeCupRanges
                      where a.DataCode == this.Cup && a.Category == "Cup"
                      select a).FirstOrDefault();
            if (aa != null)
            {
                _hasCupRange = aa.IsRange;
                CupRangeCount = aa.ColorSizeCupRangeDetails.Count;
            }
        }


        #endregion

        //Xsj20110812:为了报表Color,Cup排序，特别添加以下字段
        public int ColorSeq { get; set; }
        public int CupSeq { get; set; }


        //Xsj20120227:應Jane Lai和王生的討論結果要求，在顯示單價的表格中顯示帀別
        public string Currency
        {
            get;
            set;
        }



    }
    //Xsj101211:
    public partial class ColorSizeCupRange : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.IsRange = false;
        }


        //Xsj20120227:應Jane Lai和王生的討論結果要求，而添加版本控制
        private PH.MIDc.BO.MIDcDataContext midcDataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        public string GroupName
        {
            get
            {
                string groupName = "";
                if (midcDataContext != null)
                {
                    PH.MIDc.BO.ColorSizeCupGroup cscGroup = this.midcDataContext.ColorSizeCupGroups.Where(p => p.GroupCode == this.GroupCode).FirstOrDefault();
                    if (cscGroup != null)
                    {
                        groupName = cscGroup.GroupName;
                    }
                }
                return groupName;
            }
        }
    }
    public class ColorSizeCupRangeList : BaseEntityList<ColorSizeCupRange, MIDcDataContext>
    {
        public ColorSizeCupRange GetColorSizeCupRange(string category, string code)
        {
            var aa = (from a in CurrentDataContext.ColorSizeCupRanges
                      where a.Category == category && a.DataCode == code
                      select a).FirstOrDefault<ColorSizeCupRange>();

            return aa;
        }
        public IEnumerable<ColorSizeCupRange> GetColorSizeCupRanges(string category)
        {
            var aa = from a in CurrentDataContext.ColorSizeCupRanges
                     where a.Category == category
                     orderby a.Seq
                     select a;

            return aa;
        }
    }
    //Xsj101211:
    public partial class ColorSizeCupRangeDetail : PH.Platform.BO.BaseEntity
    {
        public bool IsChosed { get; set; }
    }

    public partial class RWM : PH.Platform.BO.BaseEntity { }
    public partial class TechReferInfo : PH.Platform.BO.BaseEntity { }
    public partial class CompositionDetail : PH.Platform.BO.BaseEntity
    {
        /// <summary>
        /// 繁體中文名
        /// </summary>
        public string ChineseName
        {
            get
            {
                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary d = list.GetDataDictionary("PH.MIDc.CompositionDefault", this.Composition);
                return (d == null) ? "" : d.DataName;
            }
        }

        /// <summary>
        /// 簡體中文名
        /// </summary>
        public string ChineseNameCN
        {
            get
            {
                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary d = list.GetDataDictionary("PH.MIDc.CompositionDefault", this.Composition);
                return (d == null) ? "" : d.DataNameCN;
            }
        }



        /// <summary>
        /// Xsj20120522:應JaneLai要求，如果SpecialTerms有值時，顯示SpecialTerms的值，否則顯示Composition
        /// </summary>
        public string SpecialTermsOrComposition
        {
            get
            {
                string result = "";
                if (this.SpecialTerms == null || this.SpecialTerms.Trim() == "")
                {
                    result = this.Composition;
                }
                else
                {
                    result = this.SpecialTerms;
                }
                return result;
            }
        }

    }
    public partial class CustomerBranded : PH.Platform.BO.BaseEntity { }
    public partial class RoleField : PH.Platform.BO.BaseEntity { }
    public partial class DetailImage : PH.Platform.BO.BaseEntity { }
    public partial class ConvertHS : PH.Platform.BO.BaseEntity { }
    public partial class CustomMaterial : PH.Platform.BO.BaseEntity
    {

        partial void OnHSCodeSeqChanged()
        {
            RefreshMidcHSCode();
        }

        partial void OnCustomNoChanged()
        {
            RefreshMidcHSCode();
        }


        private void RefreshMidcHSCode()
        {
            if (this.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New && this.HSCodeSeq.HasValue)
            {
                if (this.HSCodeFlag == "BD")
                {
                    this.MidcHSCode = this.CustomNo;
                }
                else
                {
                    this.MidcHSCode = this.CustomNo + "" + this.HSCodeSeq;
                }
            }
        }
    }
    public partial class compositiondetail_0911 : PH.Platform.BO.BaseEntity { }
    public partial class Color : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.CreateDate = DateTime.Now;
        }

    }

    partial class CustomMaterialElement : PH.Platform.BO.BaseEntity
    {

        public string AttachNo
        {
            get
            {

                return this.CustomNo.Substring(CustomNo.Length - 2, 2);
            }
        }

        public string ElementDesc
        {
            get
            {
                Misc_DataDictionary _dict = MiscHelper.MiscCtx.Misc_DataDictionaries.Where(p => p.DataType == "PH.MIDc.MaterialElement" && p.DataCode == this.ElementNo).FirstOrDefault();
                if (_dict != null)
                    return _dict.DataNameCN;
                //return _dict.Description;
                else
                    return "";
            }
        }

    }

    //Xsj101002:添加"MIDc Entrance Key"向導的實體類 
    /*
    public class MIDcWizardCls
    {
        #region 屬性
        public Detail DetailBO { get; set; }
        public bool IsNew { get; set; }
        //Add a Material(Supplier Reference): 
        private string _SuppRef;
        public string SuppRef//SuppRef
        {
            get
            {
                return _SuppRef;
            }
            set
            {
                if (_SuppRef != value)
                {
                    _SuppRef = value;
                    //獲取加工工序資訊
                    InitalMatProce();
                }
            }
        }
        public string BuyerItemCode { get; set; }
        private string _Supplier;
        public string Supplier
        {
            get
            {
                return _Supplier;
            }
            set
            {
                if (_Supplier != value)
                {
                    _Supplier = value;

                }
            }
        }
        public string ERPSupplier { get; set; }
        private string _MaterialType;
        public string MaterialType
        {
            get
            {
                return _MaterialType;
            }
            set
            {
                if (_MaterialType != value)
                {
                    _MaterialType = value;
                    ReSetYielUsage();
                    ReSetDimension();
                    GetMaterialgroup();
                    DetailBO.MaterialType = value;
                    //獲取ColorDetail,SizeDetail,CupDetail數據源
                    MakeUpColorRangeSizeCupDetailDataSource();
                    //獲取已填寫的單價
                    GetInitPrice();
                }
            }
        }
        private string _MaterialGroup;
        public string MaterialGroup
        {
            get
            {
                return _MaterialGroup;
            }
            set
            {
                if (_MaterialGroup != value)
                {
                    _MaterialGroup = value;
                    DetailBO.MaterialGroup = value;
                }
            }
        }
        public string MaterialTypeDesc { get; set; }

        //Yield Usage:YieldUsage
        public string YieldUsage { get; set; }

        //Single/Range for Size/Width/Length 
        public string SingleRange { get; set; }
        public string SingelRangeUnit { get; set; }
        public string UnitForSize { get; set; }

        //PO Information 
        private bool? _IsPurchaseItem;
        public bool? IsPurchaseItem
        {
            get
            {
                return _IsPurchaseItem ?? false;
            }
            set
            {
                if (_IsPurchaseItem != value)
                {
                    _IsPurchaseItem = value;
                }
            }
        }

        private decimal? _SupplierWidth;
        public decimal? SupplierWidth
        {
            get { return _SupplierWidth; }
            set
            {
                _SupplierWidth = value;
                DetailBO.SupplierWidth = _SupplierWidth;
            }
        }
        private decimal? _UsableWidth;
        public decimal? UsableWidth
        {
            get { return _UsableWidth; }
            set
            {
                _UsableWidth = value;
                DetailBO.UsableWidth = _UsableWidth;
                MarkerWidth = DetailBO.MarkerWidth;
            }
        }

        private decimal? _MarkerWidth;
        public decimal? MarkerWidth
        {
            get { return _MarkerWidth; }
            set
            {
                _MarkerWidth = value;
                DetailBO.MarkerWidth = _MarkerWidth;
            }
        }

        public string SizeMatrix { get; set; }

        private decimal? _PurchaseWidth;
        public decimal? PurchaseWidth
        {
            get { return _PurchaseWidth; }
            set
            {
                _PurchaseWidth = value;
            }
        }
        private int? _PurchaseWidthOption;
        public int? PurchaseWidthOption
        {
            get
            {
                return _PurchaseWidthOption ?? 1;
            }
            set
            {
                if (_PurchaseWidthOption != value)
                {
                    _PurchaseWidthOption = value;
                }

            }
        }

        private decimal? _WeightGmSqm;
        public decimal? WeightGmSqm
        {
            get { return _WeightGmSqm; }
            set
            {
                _WeightGmSqm = value;
                DetailBO.WeightGmSqm = value;
            }
        }

        public string Operation { get; set; }
        public List<MatlProcessingCls> MatlProcList { get; set; }

        public bool? HaveSizeMatrix { get; set; }
        //加工工序實體類
        public class MatlProcessingCls
        {
            public bool? IsMain { get; set; }
            public string MatlForProcessing { get; set; }
            public decimal? ItemWidth { get; set; }
        }

        //Status
        public string Status { get; set; }

        //Dimension 
        private string _Dimension;
        public string Dimension
        {
            get
            {
                return _Dimension;
            }
            set
            {
                if (this._Dimension != value)
                {
                    if (this._Dimension != null)
                    {
                        this.MultPriceOption = null;
                    }
                    this._Dimension = value;
                }
            }
        }

        //Supplier Information 
        public string Agent { get; set; }
        public string Beneficiary { get; set; }
        public string StandardDev { get; set; }

        //Scond Price Type
        public bool? HasCustomerFavorPrice { get; set; }
        public bool? HasVolumePrice { get; set; }
        public bool? HasPeriodPrice { get; set; }


        //Single px or Multiple px
        private double? _SinglePrice;
        public double? SinglePrice
        {
            get
            {
                return _SinglePrice;
            }
            set
            {
                if (_SinglePrice != value)
                {
                    _SinglePrice = value;
                }
            }
        }

        public int? MinOrder { get; set; }
        public int? MinColor { get; set; }
        public int? Liability { get; set; }
        public string LiabilityForCustomer { get; set; }

        public bool? CustomerAppointed { get; set; }
        private bool? _LiabilityFollowUp;
        public bool? LiabilityFollowUp
        {
            get
            {
                return _LiabilityFollowUp;
            }
            set
            {
                if (_LiabilityFollowUp != value)
                {
                    _LiabilityFollowUp = value;
                }
            }
        }

        private string _DyeingMultiple;
        public string DyeingMultiple
        {
            get { return _DyeingMultiple; }
            set
            {
                this._DyeingMultiple = value;
                this.DetailBO.DyeingMultiple = value;
            }
        }

        public bool? IsMultiPrice { get; set; }

        //價格信息基類
        public List<PriceCls> PriceList = new List<PriceCls>();
        public class PriceCls
        {
            public string PriceType { get; set; }
            public string ColorCode { get; set; }
            public string ColorDesc { get; set; }
            public string SizeCode { get; set; }
            public string SizeDesc { get; set; }
            public string CupCode { get; set; }
            public string CupDesc { get; set; }

            private double? _Price;
            public double? Price
            {
                get
                {
                    return _Price;
                }
                set
                {
                    if (_Price != value)
                    {
                        _Price = value;
                        if (!this.Ratio.HasValue || this.Ratio <= 0)
                        {
                            this.Ratio = 1;
                        }
                    }
                }
            }
            public DateTime EffectFromDate { get; set; }
            public DateTime? EffectEndDate { get; set; }

            //Xsj101130:Category
            public string Category { get; set; }
            //Xsj101130:Ration
            public int? Ratio { get; set; }
        }


        private bool? _HasSecondPrice;
        public bool? HasSecondPrice
        {
            get
            {
                return _HasSecondPrice;
            }
            set
            {
                if (_HasSecondPrice != value)
                {
                    _HasSecondPrice = value;
                }
            }
        }


        //Multiple price option
        private int? _MultPriceOption;
        public int? MultPriceOption
        {
            get
            {
                return _MultPriceOption;
            }
            set
            {
                if (_MultPriceOption != value)
                {
                    _MultPriceOption = value;
                }
            }
        }

        //Second Price Option
        public string SecondPriceOption { get; set; }
        public double? CustFavorSinglePrice { get; set; }
        public double? VolumeSinglePrice { get; set; }
        public double? PeriodSinglePrice { get; set; }

        //ColorDetail
        public List<ColorDetailCls> ColorList { get; set; }
        public class ColorDetailCls
        {
            public bool IsChosed { get; set; }
            public string ColorCode { get; set; }
            public string ColorNaem { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }
        //SizeDetail
        public List<SizeDetailCls> SizeList { get; set; }
        public class SizeDetailCls
        {
            public bool IsChosed { get; set; }
            public string SizeCode { get; set; }
            public string SizeName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }
        //CupDetail
        public List<CupDetailCls> CupList { get; set; }
        public class CupDetailCls
        {
            public bool IsChosed { get; set; }
            public string CupCode { get; set; }
            public string CupName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }

        private string _SupplierUnit;
        public string SupplierUnit
        {
            get { return _SupplierUnit; }
            set
            {
                _SupplierUnit = value;
                this.DetailBO.SupplierUnit = _SupplierUnit;
            }
        }
        private string _PHUnit;
        public string PHUnit
        {
            get { return _PHUnit; }
            set
            {
                _PHUnit = value;
                this.DetailBO.PHUnit = _PHUnit;
            }
        }


        public decimal? RateToPHUnit
        {
            get
            {
                //this.DetailBO.GetARate();
                return this.DetailBO.RateToPHUnit;
            }
        }

        //Xsj1101221:Detail物料的創建時間
        public DateTime? MaterialCreateDate { get; set; }


        #region Xsj20110525:加实现添加历史多单价而添加
        //用于记录当前Detail的所有单价项的头部信息
        public List<PH.MIDc.BO.MaterialPriceHeader> MaterialPriceHeaderList = new List<MaterialPriceHeader>();
        //用于标记是否存在Collective单价类型
        public bool? HasCollectivePrice { get; set; }
        #endregion

        #endregion

        #region 行為方法
        //構造函數
        public MIDcWizardCls()
        {
            //實例化子集
            this.MatlProcList = new List<MIDcWizardCls.MatlProcessingCls>();
            this.PriceList = new List<MIDcWizardCls.PriceCls>();

            this.ColorList = new List<MIDcWizardCls.ColorDetailCls>();
            this.SizeList = new List<MIDcWizardCls.SizeDetailCls>();
            this.CupList = new List<MIDcWizardCls.CupDetailCls>();
        }

        //取MIDcSupplier對應的ERPSupplier
        private void GetMaterialgroup()
        {
            PH.MIDc.BO.MIDcDataContext MIDcContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var aa = MIDcContext.MaterialTypes.Where(P => P.MaterialType1 == this.MaterialType);
            if (aa.Count() > 0)
            {
                MaterialType mt = aa.First();
                if (mt == null) return;

                this.MaterialGroup = mt.MaterialGroup;
                this.DetailBO.HsCode = mt.HsCode;
                this.MaterialTypeDesc = mt.Description;
                this.SingleRange = string.IsNullOrEmpty(mt.SuppSizeCupElement) ? this.SingleRange : mt.SuppSizeCupElement.Substring(3, 2);
            }

        }

        // 重置YieldUsage屬性值
        private void ReSetYielUsage()
        {
            //依MaterialType更改Yield Usage
            string SqlStr = string.Format("Select YieldUsage from [PH.MIDc].dbo.MaterialType Where MaterialType='{0}'", this.MaterialType);
            MIDcDataContext MContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            List<string> YieldUsageList = MContext.ExecuteQuery<string>(SqlStr).ToList();
            if (YieldUsageList == null || YieldUsageList.Count == 0)
            {
                this.YieldUsage = null;
            }
            else
            {
                this.YieldUsage = YieldUsageList[0];
            }
        }

        // 重置Dimension
        private void ReSetDimension()
        {
            //依MaterialType更改Yield Usage
            try
            {
                string SqlStr = string.Format("Select Dimension from [PH.MIDc].dbo.MaterialType Where MaterialType='{0}'", this.MaterialType);
                MIDcDataContext MContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                List<int?> DimensionList = MContext.ExecuteQuery<int?>(SqlStr).ToList();
                if (DimensionList == null || DimensionList.Count == 0)
                {
                    this.Dimension = null;
                }
                else
                {
                    this.Dimension = DimensionList[0].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        //加工工序資訊
        private void InitalMatProce()
        {
            MIDcDataContext MContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            List<PH.MIDc.BO.MaterialProcess> MaterialProcessList = MContext.MaterialProcesses.Where(P => P.SuppRef == this.SuppRef).ToList();
            foreach (PH.MIDc.BO.MaterialProcess item in MaterialProcessList)
            {
                this.MatlProcList.Add(new MatlProcessingCls { IsMain = item.IsMain, MatlForProcessing = item.MatlForProcess, ItemWidth = item.ItemWidth });
            }
        }

        //獲取ColorDetail,SizeDetail,CupDetail數據源
        private void MakeUpColorRangeSizeCupDetailDataSource()
        {
            //MIDcDataContext MIDcContext = ContextBuilder.CreateContext<MIDcDataContext>();

            MaterialTypeList list = new MaterialTypeList();
            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.MaterialType);

            //ColorDetail
            ColorList.Clear();
            //var ColorVar = MIDcContext.ColorSizeCupRanges.Where(P => P.Category == "PH.ColorRange").Select(P => new { IsChosed = false, ColorCode = P.DataCode, ColorName = "", Desc = P.DataCode }).ToList();
            var ColorVar = from a in MIDcContext.ColorSizeCupRanges
                           where a.Category == "ColorRange"
                           orderby a.Seq
                           select new { IsChosed = false, ColorCode = a.DataCode, ColorName = "", Desc = a.DataCode, IsRange = a.IsRange };

            foreach (var item in ColorVar)
            {
                ColorDetailCls NewColorDetail = new ColorDetailCls();
                NewColorDetail.IsChosed = item.IsChosed;
                NewColorDetail.ColorCode = item.ColorCode;
                NewColorDetail.ColorNaem = item.ColorName;
                NewColorDetail.Desc = item.Desc;
                NewColorDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                ColorList.Add(NewColorDetail);
            }
            List<PH.MIDc.BO.ColorDetail> ChosedColorList = MIDcContext.ColorDetails.Where(P => P.SuppRef == this.SuppRef).ToList();
            if (ChosedColorList.Count > 0)
            {
                foreach (ColorDetailCls item in ColorList)
                {
                    if (ChosedColorList.Where(P => P.Color == item.ColorCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }
            //SizeDetail
            SizeList.Clear();
            //var SizeVar = MIDcContext.ColorSizeCupRanges.Where(P => P.Category == "PH.Size").Select(P => new { IsChosed = false, SizeCode = P.DataCode, SizeName = "", Desc = P.Description }).ToList();
            bool haveDefalutSizeCups = false;
            if (mt != null)
            {
                var SizeVar = from a in mt.MaterialTypeSizeCups
                              join b in MIDcContext.ColorSizeCupRanges on new { SizeCup = a.SizeCup, a.Category } equals new { SizeCup = b.DataCode, b.Category } into c
                              from d in c.DefaultIfEmpty(new ColorSizeCupRange { IsRange = false })
                              where a.Category.Trim() == "Size"
                              orderby a.Seq
                              select new { IsChosed = false, SizeCode = a.SizeCup, SizeName = "", Desc = a.SizeCup, IsRange = d.IsRange };
                if (SizeVar.Count() > 0)
                {
                    haveDefalutSizeCups = true;
                    foreach (var item in SizeVar)
                    {
                        SizeDetailCls NewSizeDetail = new SizeDetailCls();
                        NewSizeDetail.IsChosed = item.IsChosed;
                        NewSizeDetail.SizeCode = item.SizeCode;
                        NewSizeDetail.SizeName = item.SizeName;
                        NewSizeDetail.Desc = item.Desc;
                        NewSizeDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                        SizeList.Add(NewSizeDetail);
                    }
                }
            }
            if (!haveDefalutSizeCups)
            {
                var SizeVar = from a in MIDcContext.ColorSizeCupRanges
                              where a.Category == "Size"
                              orderby a.Seq
                              select new { IsChosed = false, SizeCode = a.DataCode, SizeName = "", Desc = a.Description, IsRange = a.IsRange };
                foreach (var item in SizeVar)
                {
                    SizeDetailCls NewSizeDetail = new SizeDetailCls();
                    NewSizeDetail.IsChosed = item.IsChosed;
                    NewSizeDetail.SizeCode = item.SizeCode;
                    NewSizeDetail.SizeName = item.SizeName;
                    NewSizeDetail.Desc = item.Desc;
                    NewSizeDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                    SizeList.Add(NewSizeDetail);
                }
            }
            List<PH.MIDc.BO.SizeDetail> ChosedSizeList = MIDcContext.SizeDetails.Where(P => P.SuppRef == this.SuppRef).ToList();
            if (ChosedSizeList.Count > 0)
            {
                foreach (SizeDetailCls item in SizeList)
                {
                    if (ChosedSizeList.Where(P => P.Size == item.SizeCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }
            //CupDetail
            CupList.Clear();
            //var CupVar = MIDcContext.ColorSizeCupRanges.Where(P => P.Category == "PH.Cup").Select(P => new { IsChosed = false, CupCode = P.DataCode, CupName = "", Desc = P.Description }).ToList();
            haveDefalutSizeCups = false;
            if (mt != null)
            {
                var CupVar = from a in mt.MaterialTypeSizeCups
                             join b in MIDcContext.ColorSizeCupRanges on new { SizeCup = a.SizeCup, a.Category } equals new { SizeCup = b.DataCode, b.Category } into cs
                             from d in cs.DefaultIfEmpty(new ColorSizeCupRange { IsRange = false })
                             where a.Category == "Cup"
                             orderby a.Seq
                             select new { IsChosed = false, CupCode = a.SizeCup, CupName = "", Desc = a.SizeCup, IsRange = d.IsRange };
                if (CupVar.Count() > 0)
                {
                    haveDefalutSizeCups = true;
                    foreach (var item in CupVar)
                    {
                        CupDetailCls NewCupDetail = new CupDetailCls();
                        NewCupDetail.IsChosed = item.IsChosed;
                        NewCupDetail.CupCode = item.CupCode;
                        NewCupDetail.CupName = item.CupName;
                        NewCupDetail.Desc = item.Desc;
                        NewCupDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                        CupList.Add(NewCupDetail);
                    }
                }
            }
            if (!haveDefalutSizeCups)
            {
                var CupVar = from a in MIDcContext.ColorSizeCupRanges
                             where a.Category == "Cup"
                             orderby a.Seq
                             select new { IsChosed = false, CupCode = a.DataCode, CupName = "", Desc = a.Description, IsRange = a.IsRange };
                foreach (var item in CupVar)
                {
                    CupDetailCls NewCupDetail = new CupDetailCls();
                    NewCupDetail.IsChosed = item.IsChosed;
                    NewCupDetail.CupCode = item.CupCode;
                    NewCupDetail.CupName = item.CupName;
                    NewCupDetail.Desc = item.Desc;
                    NewCupDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                    CupList.Add(NewCupDetail);
                }
            }
            List<PH.MIDc.BO.CupDetail> ChosedCupList = MIDcContext.CupDetails.Where(P => P.SuppRef == this.SuppRef).ToList();
            if (ChosedCupList.Count > 0)
            {
                foreach (CupDetailCls item in CupList)
                {
                    if (ChosedCupList.Where(P => P.Cup == item.CupCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }
        }

        //獲取已填寫的單價
        private void GetInitPrice()
        {
            string[] PriceOption = new string[] { MaterialPriceType.Standard.ToString(),
                    MaterialPriceType.CustomerFavor.ToString(),
                    MaterialPriceType.Volume.ToString(), 
                    MaterialPriceType.Period.ToString(), 
                    MaterialPriceType .Collective .ToString() 
            };

            MIDcDataContext MIDcContext = ContextBuilder.CreateContext<MIDcDataContext>();
            this.PriceList.Clear();
            foreach (string PriceOptionStr in PriceOption)
            {
                List<PH.MIDc.BO.MaterialPrice> ChosedPircList = MIDcContext.MaterialPrices.Where(P => P.SuppRef == this.SuppRef && P.PriceType == PriceOptionStr).ToList();
                if (ChosedPircList.Count > 0)
                {
                    foreach (PH.MIDc.BO.MaterialPrice item in ChosedPircList)
                    {
                        this.PriceList.Add(new PriceCls { PriceType = PriceOptionStr, ColorCode = item.ColorRange, CupCode = item.Cup, SizeCode = item.Size, EffectEndDate = item.EffectEndDate, EffectFromDate = item.EffectFromDate, Price = (double?)item.Price, Ratio = (int?)item.Ratio, Category = item.Category });
                    }
                }
            }
        }

        #region 獲取數據字典值
        //獲取數據字典值
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string DataType, bool orderbyDataCode)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext MIScDataContext = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            if (orderbyDataCode)
            {
                var lists = from a in MIScDataContext.Misc_DataDictionaries
                            where a.DataType == DataType
                            orderby a.DataCode
                            select a;
                return lists;
            }
            else
            {
                var lists = from a in MIScDataContext.Misc_DataDictionaries
                            where a.DataType == DataType
                            orderby a.Description
                            select a;
                return lists;
            }
        }
        #endregion

        #endregion

    }
    */

    public class MIDc_MIDStatus
    {
        public const string TMID_WIP = "TMID-WIP"; //NonApproval
        public const string TMID_Completed = "TMID-Completed";//TMID
        public const string PMID_WIP = "PMID-WIP";//PMID
        public const string PMID_Completed = "PMID-Completed";
    }
    public class TMID_UserRight
    {
        public const string Prepare = "Prepare";
        public const string Confirm = "Confirm";
        public const string Audit = "Audit";
    }

    public enum MaterialPriceType
    {
        Standard,
        CustomerFavor,
        Volume,
        Period,
        #region Xsj20110525:加实现添加历史多单价而添加
        Collective
        #endregion
    }

    public enum MultPriceType
    {
        ColorRangeSizeCup = 1,
        ColorOnly = 2,
        CupSize = 3
    }

    //Xsj101205:價格類別:Single/Multiple
    public enum PriceType
    {
        Single,
        Multiple
    }

    //Xsj20110415:add
    public enum MIDcDimension
    {
        Is2D = 2,
        Is3D = 3,
        Is4D = 4
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

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string DataType, string DataCode)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == DataType && a.DataCode == DataCode
                       select a).FirstOrDefault();
            return dic;

        }
    }
    public class DictionaryList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string dataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == dataType
                        orderby a.DataCode
                        select a;
            return lists;
        }

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string dataType, string dataCode)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == dataType && a.DataCode == dataCode
                       select a).FirstOrDefault();
            return dic;
        }
        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string dataType, string dataCode, string dataName)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == dataType && a.DataCode == dataCode && a.DataName == dataName
                       select a).FirstOrDefault();
            return dic;
        }

        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionaryMutiLang(string dataType)
        {
            var dic = GetDataDictionary(dataType);
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
            MultiLanguageList lang = new MultiLanguageList();
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dic)
            {
                string text = lang.GetDictionaryLanguageText(dataType, item.DataCode, "Description", langID);
                if (string.IsNullOrEmpty(text)) continue;

                item.Description = text;
            }
            return dic;
        }

    }
    public class MultiLanguageList : BaseEntityList<PH.Platform.Lang.BO.Lang_Record, PH.Platform.Lang.BO.LangDataContext>
    {
        public PH.Platform.Lang.BO.Lang_Record GetLanguageRecord(Guid docID, string columnName, string langID)
        {
            var r = (from a in this.CurrentDataContext.Lang_Records
                     where a.DocID == docID && a.ColumnName == columnName && a.LangID == langID
                     select a).FirstOrDefault();
            return r;
        }

        public IEnumerable<PH.Platform.Lang.BO.Lang_Record> GetLanguageRecordList(Guid docID, string columnName)
        {
            var rs = from a in this.CurrentDataContext.Lang_Records
                     where a.DocID == docID && a.ColumnName == columnName
                     select a;
            return rs;
        }

        public string GetDictionaryLanguageText(string dataType, string dataCode, string columnName, string langID)
        {
            DictionaryList dicList = new DictionaryList();
            PH.Platform.Misc.BO.Misc_DataDictionary d = dicList.GetDataDictionary(dataType, dataCode);
            if (d == null) return string.Empty;

            PH.Platform.Lang.BO.Lang_Record r = (from a in this.CurrentDataContext.Lang_Records
                                                 where a.DocID == d.DocID && a.ColumnName == columnName && a.LangID == langID
                                                 select a).FirstOrDefault();
            if (r == null) return d.Description;

            return r.Text;
        }
    }

    //Xsj101210:
    partial class MIDcUpFile : PH.Platform.BO.BaseEntity
    {
        public System.IO.Stream Fs { get; set; }
    }

    /// <summary>
    /// Xsj20110212:Size區間記錄實體類,記錄當前Size區間包含的Size個數
    /// </summary>
    public class SizeRange
    {
        public string SizeCode { get; set; }
        public int RangeCount { get; set; }
    }
    /// <summary>
    /// Xsj20110212:Cup區間記錄實體類,記錄當前Cup區間包含的Cup個數
    /// </summary>
    public class CupRange
    {
        public string CupCode { get; set; }
        public int RangeCount { get; set; }
    }

    partial class MIDcEmailNotify : BaseEntity { }

    public class EmailAction
    {
        public string PassWord { get; set; }
        public string ToUserNames { get; set; }
        public string ToEmailAddress { get; set; }
        public string CCEmailAddress { get; set; }
        public string CCUserNames { get; set; }
        public string BCCEmailAddress { get; set; }
        public string Subject { get; set; }
        public string EmailBody { get; set; }
        public string Attachments { get; set; }
        public string ServerName { get; set; }
        public MailFormat Format { get; set; }

        private PH.Platform.AuthMgr.BO.AuthMgrDataContext authMgrContext = ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
        //獲取郵件的接收(TO)地址
        private void GetToEmailAddress()
        {
            if (string.IsNullOrEmpty(ToUserNames)) return;
            ToEmailAddress = GetEmailAddress(ToUserNames);
        }
        //獲取郵件CC地址
        private void GetCCEmailAddress()
        {
            CCEmailAddress = CCEmailAddress == null ? "" : CCEmailAddress;
            if (string.IsNullOrEmpty(CCUserNames)) return;
            CCEmailAddress = GetEmailAddress(CCUserNames);
            CCEmailAddress = CCEmailAddress == null ? "" : CCEmailAddress;
        }
        //獲取郵件地址
        private string GetEmailAddress(string UserNames)
        {
            string[] userNameArray = UserNames.Split(',');
            for (int i = 0; i < userNameArray.Length; i++)
            {
                userNameArray[i] = userNameArray[i].Trim();
            }
            List<string> emailAddressList = (from val in authMgrContext.Auth_User
                                             where val.UserName != null && userNameArray.Contains(val.UserName.Trim())
                                             select val.Email).ToList();
            if (emailAddressList.Count == 0) return null;
            string emailAddressStr = null;
            foreach (string val in emailAddressList)
            {
                emailAddressStr += emailAddressStr == null ? val : "," + val;
            }
            return emailAddressStr;
        }

        //檢查郵件輸入
        private void CheckInputContent()
        {
            if (Subject == null)
            {
                throw new Exception("郵件標題不能為空!");
            }
            if (string.IsNullOrEmpty(EmailBody))
            {
                throw new Exception("郵件內容不能為空!");
            }
            if (string.IsNullOrEmpty(ToEmailAddress))
            {
                throw new Exception("找不到收件用戶的Email地址!");
            }
        }

        public bool Send()
        {
            GetToEmailAddress();
            GetCCEmailAddress();
            CheckInputContent();

            //PH.Platform.Email.BO.NoteMailHelper notehelper = new NoteMailHelper("", ToEmailAddress, CCEmailAddress, "", Subject, EmailBody, "", "", "", false);
            //notehelper.Format = Format;
            //bool bOK = notehelper.SendMail();
            //return bOK;

            string MailTo = string.IsNullOrEmpty(ToEmailAddress) ? "" : ToEmailAddress.Replace(" ", "");  //多個郵件中間有空格時，發郵件不成功
            string Mailcc = string.IsNullOrEmpty(CCEmailAddress) ? "" : CCEmailAddress.Replace(" ", "");
            MailHelper mail = new MailHelper("WOAdministrator@phgmt.com.hk", "woadmin", MailTo, Mailcc, "", Subject, EmailBody, "", "svphhk01.phgmt.com.hk", 25, false);
            mail.IsBodyHtml = true;
            return mail.SendMail();

        }

    }

    public class ERPMIDcSupplier
    {
        public ERPMIDcSupplier()
        {

        }
        public string ERPSupplier { get; set; }
        public string MIDcSupplier { get; set; }
    }

    #region Xsj20110525:加实现添加历史多单价而添加
    public partial class MaterialPriceHeader : PH.Platform.BO.BaseEntity
    {
        //Xsj20110714:扩展字段用于PriceType的排序
        public int PriceTypeIndex
        {
            get
            {
                int index = 0;
                switch (this.PriceType)
                {
                    case "Standard":
                        index = 1;
                        break;
                    case "CustomerFavor":
                        index = 2;
                        break;
                    case "Period":
                        index = 3;
                        break;
                    case "Volume":
                        index = 4;
                        break;
                    case "Collective":
                        index = 5;
                        break;
                }
                return index;
            }
        }



        //重写MaterialPriceHeader的ToString（）方法，以供下拉历表使用。
        public override string ToString()
        {
            string EffectFromDateStr = this.EffectFromDate.ToString("yyyy/MM/dd");
            string EffectEndDateStr = null;
            if (this.EffectEndDate.HasValue)
            {
                EffectEndDateStr = Convert.ToDateTime(this.EffectEndDate).ToString("yyyy/MM/dd");
            }
            else
            {
                EffectEndDateStr = "NA";
            }
            return EffectFromDateStr + " To " + EffectEndDateStr;
        }
    }
    #endregion

    #region Xsj20110718：为取消Enterkey内的独立定的的BO而添加
    public partial class Detail
    {
        //ColorDetail
        private List<ColorDetailCls> _colorList;
        public List<ColorDetailCls> ColorList
        {
            get
            {
                if (_colorList == null || _colorList.Count == 0)
                {
                    GetColorRangeSource();
                }
                return _colorList;
            }
            set
            {
                _colorList = value;
            }
        }
        public class ColorDetailCls
        {
            public bool IsChosed { get; set; }
            public string ColorCode { get; set; }
            public string ColorNaem { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }

        //獲取ColorDetail,SizeDetail,CupDetail數據源
        private void GetColorRangeSource()
        {
            MaterialTypeList list = new MaterialTypeList();

            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.MaterialType);

            //ColorDetail
            if (_colorList == null) _colorList = new List<ColorDetailCls>();
            _colorList.Clear();
            var ColorVar = from a in MIDcContext.ColorSizeCupRanges
                           where a.Category == "ColorRange"
                           orderby a.Seq
                           select new { IsChosed = false, ColorCode = a.DataCode, ColorName = "", Desc = a.DataCode, IsRange = a.IsRange };

            foreach (var item in ColorVar)
            {
                ColorDetailCls NewColorDetail = new ColorDetailCls();
                NewColorDetail.IsChosed = item.IsChosed;
                NewColorDetail.ColorCode = item.ColorCode;
                NewColorDetail.ColorNaem = item.ColorName;
                NewColorDetail.Desc = item.Desc;
                NewColorDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                _colorList.Add(NewColorDetail);
            }
            List<PH.MIDc.BO.ColorDetail> ChosedColorList = this.ColorDetails.ToList();
            if (ChosedColorList.Count > 0)
            {
                foreach (ColorDetailCls item in _colorList)
                {
                    if (ChosedColorList.Where(P => P.Color == item.ColorCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }


        }

        #region Xsj20110817:为完善历史多单价而注释掉
        /*
        //SizeDetail
        public List<SizeDetailCls> _sizeList;
        public List<SizeDetailCls> SizeList
        {
            get
            {
                if (_sizeList == null || _sizeList.Count == 0)
                {
                    GetSizeDetailSource();
                }
                return _sizeList;
            }
            set
            {
                _sizeList = value;
            }
        }
        public class SizeDetailCls
        {
            public bool IsChosed { get; set; }
            public string SizeCode { get; set; }
            public string SizeName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }
        //CupDetail
        public List<CupDetailCls> _cupList;
        public List<CupDetailCls> CupList
        {
            get
            {
                if (_cupList == null || _cupList.Count == 0)
                {
                    GetCupDetailSource();
                }
                return _cupList;
            }
            set
            {
                _cupList = value;
            }
        }
        public class CupDetailCls
        {
            public bool IsChosed { get; set; }
            public string CupCode { get; set; }
            public string CupName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }

        private void GetSizeDetailSource()
        {
            MaterialTypeList list = new MaterialTypeList();
            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.MaterialType);


            //SizeDetail
            if (_sizeList == null) _sizeList = new List<SizeDetailCls>();
            _sizeList.Clear();
            bool haveDefalutSizeCups = false;
            if (mt != null)
            {
                var SizeVar = from a in mt.MaterialTypeSizeCups
                              join b in MIDcContext.ColorSizeCupRanges on new { SizeCup = a.SizeCup, a.Category } equals new { SizeCup = b.DataCode, b.Category } into c
                              from d in c.DefaultIfEmpty(new ColorSizeCupRange { IsRange = false })
                              where a.Category.Trim() == "Size"
                              orderby a.Seq
                              select new { IsChosed = false, SizeCode = a.SizeCup, SizeName = "", Desc = a.SizeCup, IsRange = d.IsRange };
                if (SizeVar.Count() > 0)
                {
                    haveDefalutSizeCups = true;
                    foreach (var item in SizeVar)
                    {
                        SizeDetailCls NewSizeDetail = new SizeDetailCls();
                        NewSizeDetail.IsChosed = item.IsChosed;
                        NewSizeDetail.SizeCode = item.SizeCode;
                        NewSizeDetail.SizeName = item.SizeName;
                        NewSizeDetail.Desc = item.Desc;
                        NewSizeDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                        _sizeList.Add(NewSizeDetail);
                    }
                }
            }
            if (!haveDefalutSizeCups)
            {
                var SizeVar = from a in MIDcContext.ColorSizeCupRanges
                              where a.Category == "Size"
                              orderby a.Seq
                              select new { IsChosed = false, SizeCode = a.DataCode, SizeName = "", Desc = a.Description, IsRange = a.IsRange };
                foreach (var item in SizeVar)
                {
                    SizeDetailCls NewSizeDetail = new SizeDetailCls();
                    NewSizeDetail.IsChosed = item.IsChosed;
                    NewSizeDetail.SizeCode = item.SizeCode;
                    NewSizeDetail.SizeName = item.SizeName;
                    NewSizeDetail.Desc = item.Desc;
                    NewSizeDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                    _sizeList.Add(NewSizeDetail);
                }
            }
            List<PH.MIDc.BO.SizeDetail> ChosedSizeList = this.SizeDetails.ToList();
            if (ChosedSizeList.Count > 0)
            {
                foreach (SizeDetailCls item in _sizeList)
                {
                    if (ChosedSizeList.Where(P => P.Size == item.SizeCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }

        }
        private void GetCupDetailSource()
        {
            MaterialTypeList list = new MaterialTypeList();
            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.MaterialType);

            //CupDetail
            if (_cupList == null) _cupList = new List<CupDetailCls>();
            _cupList.Clear();
            bool haveDefalutSizeCups = false;
            if (mt != null)
            {
                var CupVar = from a in mt.MaterialTypeSizeCups
                             join b in MIDcContext.ColorSizeCupRanges on new { SizeCup = a.SizeCup, a.Category } equals new { SizeCup = b.DataCode, b.Category } into cs
                             from d in cs.DefaultIfEmpty(new ColorSizeCupRange { IsRange = false })
                             where a.Category == "Cup"
                             orderby a.Seq
                             select new { IsChosed = false, CupCode = a.SizeCup, CupName = "", Desc = a.SizeCup, IsRange = d.IsRange };
                if (CupVar.Count() > 0)
                {
                    haveDefalutSizeCups = true;
                    foreach (var item in CupVar)
                    {
                        CupDetailCls NewCupDetail = new CupDetailCls();
                        NewCupDetail.IsChosed = item.IsChosed;
                        NewCupDetail.CupCode = item.CupCode;
                        NewCupDetail.CupName = item.CupName;
                        NewCupDetail.Desc = item.Desc;
                        NewCupDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                        _cupList.Add(NewCupDetail);
                    }
                }
            }
            if (!haveDefalutSizeCups)
            {
                var CupVar = from a in MIDcContext.ColorSizeCupRanges
                             where a.Category == "Cup"
                             orderby a.Seq
                             select new { IsChosed = false, CupCode = a.DataCode, CupName = "", Desc = a.Description, IsRange = a.IsRange };
                foreach (var item in CupVar)
                {
                    CupDetailCls NewCupDetail = new CupDetailCls();
                    NewCupDetail.IsChosed = item.IsChosed;
                    NewCupDetail.CupCode = item.CupCode;
                    NewCupDetail.CupName = item.CupName;
                    NewCupDetail.Desc = item.Desc;
                    NewCupDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                    _cupList.Add(NewCupDetail);
                }
            }
            List<PH.MIDc.BO.CupDetail> ChosedCupList = this.CupDetails.ToList();
            if (ChosedCupList.Count > 0)
            {
                foreach (CupDetailCls item in _cupList)
                {
                    if (ChosedCupList.Where(P => P.Cup == item.CupCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }
        }
        */
        #endregion

        partial void OnMaterialTypeChanging(string value)
        {
            ReSetYielUsage(value);
            ReSetDimension(value);
            GetMaterialgroup(value);

        }

        //2017-12-20由David 加入
        partial void OnIsPurchaseItemChanged()
        {
            if (this.IsPurchaseItem ?? false)
            {
                if (!string.IsNullOrEmpty(this.MaterialType))
                {
                    GetMaterialgroup(this.MaterialType);
                }
            }
            else
            {
                this.HsCode = "0000000000099";
            }
        }



        partial void OnMaterialTypeChanged()
        {
            GetColorRangeSource();

            #region Xsj20110817:为完善历史多单价而注释掉
            //GetCupDetailSource();
            //GetSizeDetailSource();
            #endregion
        }


        // 重置YieldUsage屬性值
        private void ReSetYielUsage(string MaterialType)
        {
            //依MaterialType更改Yield Usage
            string SqlStr = string.Format("Select YieldUsage from [PH.MIDc].dbo.MaterialType Where MaterialType='{0}'", MaterialType);
            MIDcDataContext MContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            List<string> YieldUsageList = MContext.ExecuteQuery<string>(SqlStr).ToList();
            if (YieldUsageList == null || YieldUsageList.Count == 0)
            {
                this.YieldUsage = null;
            }
            else
            {
                this.YieldUsage = YieldUsageList[0];
            }
        }
        // 重置Dimension
        private void ReSetDimension(string MaterialType)
        {
            //依MaterialType更改Yield Usage
            //SingleRangeSize
            try
            {
                PH.MIDc.BO.MIDcDataContext MIDcContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                var aa = MIDcContext.MaterialTypes.Where(P => P.MaterialType1 == MaterialType);
                if (aa.Count() > 0)
                {
                    MaterialType mt = aa.First();
                    if (mt == null) return;

                    this.Dimension = string.Format("{0}", mt.Dimension);
                    this.SingleRangeSize = mt.SuppSizeCupElement;//add by shulin 2023-02-13 //GetSuppSizeCupElementValue(mt.SuppSizeCupElement); 
                }
                else
                {
                    this.Dimension = null;
                    this.SingleRangeSize = null;
                }



                //string SqlStr = string.Format("Select Dimension from [PH.MIDc].dbo.MaterialType Where MaterialType='{0}'", MaterialType);
                //MIDcDataContext MContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                //List<int?> DimensionList = MContext.ExecuteQuery<int?>(SqlStr).ToList();
                //if (DimensionList == null || DimensionList.Count == 0)
                //{
                //    this.Dimension = null;
                //}
                //else
                //{
                //    this.Dimension = DimensionList[0].ToString();
                //}
            }
            catch (Exception ex)
            {

            }
        }
        private string GetSuppSizeCupElementValue(string value)
        {
            if (string.IsNullOrEmpty(value)) return value;

            int i = value.IndexOf("-");
            return value.Substring(i + 1);
        }

        //取MIDcSupplier對應的ERPSupplier
        private void GetMaterialgroup(string MaterialType)
        {
            PH.MIDc.BO.MIDcDataContext MIDcContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var aa = MIDcContext.MaterialTypes.Where(P => P.MaterialType1 == MaterialType);
            if (aa.Count() > 0)
            {
                MaterialType mt = aa.First();
                if (mt == null) return;

                this.MaterialGroup = mt.MaterialGroup;

                //this.HsCode = mt.HsCode;
                if (this.IsPurchaseItem ?? true)
                {
                    this.HsCode = this.Currency.ToUpper() == "RMB" ? mt.HSCodeRMB : mt.HSCodeXRMB;
                }
                else
                {
                    this.HsCode = "0000000000099";
                }

                this.MaterialTypeDesc = mt.Description;
                if (string.IsNullOrEmpty(this.SingleRangeSize))
                {
                    //Xsj2012-07-10:應Yan Yao的要求，當新增Detail記錄時，如果物料的MaterialType == "BOE",則默認的SingleRangeSize為Rl。
                    //通過代碼硬編碼的方式避免修改基礎數據帶來的影響。
                    if (this.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New && MaterialType == "BOE")
                    {
                        this.SingleRangeSize = "Rl";
                    }
                    else
                    {
                        this.SingleRangeSize = string.IsNullOrEmpty(mt.SuppSizeCupElement) ? this.SingleRangeSize : mt.SuppSizeCupElement.Substring(3, 2);
                    }
                }

            }
        }

        public string MaterialTypeDesc { get; set; }
    }

    /// <summary>
    /// 对比单价区间
    /// </summary>
    public enum ComparePriceType
    {
        StandardPrice = 0,
        SpecialPrice = 1,
        AllPrice = 2
    }

    /// <summary>
    /// 当前用户的MaterialPrice操作权限
    /// </summary>
    public class MaterialPriceBoRightForCurrUser
    {
        public bool AllowAdd { get; set; }
        public bool AllowDel { get; set; }
        public bool AllowUpdate { get; set; }
        public bool AllowRead { get; set; }
    }


    // 已被更改过价格的单价
    public partial class MaterialPrice
    {
        public bool IsMultiPrice
        {
            get
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //MaterialPriceHeader mPH = this.Detail.MaterialPriceHeaders.Where(p => p.SuppRef == this.SuppRef && p.PriceType == this.PriceType && p.Category == this.Category
                //    && p.EffectFromDate.Date == this.EffectFromDate.Date).FirstOrDefault();
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                MaterialPriceHeader mPH = this.MaterialPriceHeader;
                #endregion

                if (mPH != null)
                {
                    return (mPH.IsMultiPrice ?? false);
                }
                else
                {
                    return false;
                }
            }
        }

        private string _MultiPriceStr;
        public string MultiPriceStr
        {
            get
            {
                _MultiPriceStr = "";
                if (IsMultiPrice)
                {
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //switch (this.Detail.MultiPriceOption)
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    switch (this.MaterialPriceHeader.Detail.MultiPriceOption)
                    #endregion
                    {
                        case 1:
                            _MultiPriceStr = MultPriceType.ColorRangeSizeCup.ToString();
                            break;
                        case 2:
                            _MultiPriceStr = MultPriceType.ColorOnly.ToString();
                            break;
                        case 3:
                            _MultiPriceStr = MultPriceType.CupSize.ToString();
                            break;
                    }
                }
                return _MultiPriceStr;
            }
        }

        private string _MaterialType;
        public string MaterialType
        {
            get
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //_MaterialType = this.Detail.MaterialType;
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                _MaterialType = this.MaterialPriceHeader.Detail.MaterialType;
                #endregion
                return _MaterialType;
            }
        }


        private string _MIDcSuppRef;
        public string MIDcSuppRef
        {
            get
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //return this.Detail.Supplier;
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                return this.MaterialPriceHeader.Detail.Supplier;
                #endregion
            }
        }

        private string _ERPSupplier;
        public string ERPSupplier
        {
            get
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //return this.Detail.ERPSupplier;
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                return this.MaterialPriceHeader.Detail.ERPSupplier;
                #endregion
            }
        }
    }

    //Xsj20110816：为使ColorRange/Cup/Size与MaterialPrice相配套，特作以下更改
    //1.ColorDetail
    //2.CupDetail
    //3.SizeDetail
    public partial class MaterialPriceHeader
    {
        //ColorDetail
        private List<ColorDetailCls> _colorList;

        public List<ColorDetailCls> ColorList
        {
            get
            {
                if (_colorList == null || _colorList.Count == 0)
                {
                    GetColorRangeSource();
                }
                return _colorList;
            }
            set
            {
                _colorList = value;
            }
        }

        public class ColorDetailCls
        {
            public string SuppRef { get; set; }
            public string ColorCode { get; set; }
            public string ColorName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
            public bool IsChosed { get; set; }
        }

        //SizeDetail
        public List<SizeDetailCls> _sizeList;
        public List<SizeDetailCls> SizeList
        {
            get
            {
                if (_sizeList == null || _sizeList.Count == 0)
                {
                    GetSizeDetailSource();
                }
                return _sizeList;
            }
            set
            {
                _sizeList = value;
            }
        }
        public class SizeDetailCls
        {
            public bool IsChosed { get; set; }
            public string SuppRef { get; set; }
            public string SizeCode { get; set; }
            public string SizeName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
            public string GroupName { get; set; }

            //Xsj:20120327
            public int Seq { get; set; }
        }
        //CupDetail
        public List<CupDetailCls> _cupList;
        public List<CupDetailCls> CupList
        {
            get
            {
                if (_cupList == null || _cupList.Count == 0)
                {
                    GetCupDetailSource();
                }
                return _cupList;
            }
            set
            {
                _cupList = value;
            }
        }
        public class CupDetailCls
        {
            public bool IsChosed { get; set; }
            public string SuppRef { get; set; }
            public string CupCode { get; set; }
            public string CupName { get; set; }
            public string Desc { get; set; }
            public bool IsRange { get; set; }
        }

        //獲取ColorDetail,SizeDetail,CupDetail數據源

        private void GetColorRangeSource()
        {
            MaterialTypeList list = new MaterialTypeList();
            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.Detail.MaterialType);

            //ColorDetail
            if (_colorList == null) _colorList = new List<ColorDetailCls>();
            _colorList.Clear();
            var ColorVar = from a in MIDcContext.ColorSizeCupRanges
                           where a.Category == "ColorRange"
                           orderby a.Seq
                           select new { IsChosed = false, ColorCode = a.DataCode, ColorName = "", Desc = a.DataCode, IsRange = a.IsRange };

            foreach (var item in ColorVar)
            {
                ColorDetailCls NewColorDetail = new ColorDetailCls();
                NewColorDetail.SuppRef = this.SuppRef;
                NewColorDetail.IsChosed = item.IsChosed;
                NewColorDetail.ColorCode = item.ColorCode;
                NewColorDetail.ColorName = item.ColorName;
                NewColorDetail.Desc = item.Desc;
                NewColorDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                _colorList.Add(NewColorDetail);
            }
            List<PH.MIDc.BO.NewColorDetail> ChosedColorList = this.NewColorDetails.ToList();
            if (ChosedColorList.Count > 0)
            {
                foreach (ColorDetailCls item in _colorList)
                {
                    if (ChosedColorList.Where(P => P.Color == item.ColorCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }


        }

        private void GetSizeDetailSource()
        {
            MaterialTypeList list = new MaterialTypeList();
            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.Detail.MaterialType);


            //SizeDetail
            if (_sizeList == null) _sizeList = new List<SizeDetailCls>();
            _sizeList.Clear();
            bool haveDefalutSizeCups = false;
            if (mt != null)
            {
                var SizeVar = from a in mt.MaterialTypeSizeCups
                              join b in MIDcContext.ColorSizeCupRanges on new { SizeCup = a.SizeCup, a.Category }
                                        equals new { SizeCup = b.DataCode, b.Category } into c
                              where a.Category.Trim() == "Size"
                              from d in c.DefaultIfEmpty(new ColorSizeCupRange { IsRange = false })
                              orderby d.Seq, a.Seq ascending  //Xsj:優先按照基礎本的排列順序  
                              select new
                              {
                                  IsChosed = false,
                                  SizeCode = a.SizeCup,
                                  SizeName = "",
                                  Desc = a.SizeCup,
                                  IsRange = d.IsRange,
                                  GroupName = (a.SpecialGroupName == null || a.SpecialGroupName == "" ? d.GroupName : a.SpecialGroupName),
                                  Seq = d.Seq
                              };
                if (SizeVar.Count() > 0)
                {
                    haveDefalutSizeCups = true;
                    foreach (var item in SizeVar)
                    {
                        SizeDetailCls NewSizeDetail = new SizeDetailCls();
                        NewSizeDetail.IsChosed = item.IsChosed;
                        NewSizeDetail.SuppRef = this.SuppRef;
                        NewSizeDetail.SizeCode = item.SizeCode;
                        NewSizeDetail.SizeName = item.SizeName;
                        NewSizeDetail.Desc = item.Desc;
                        NewSizeDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                        NewSizeDetail.GroupName = item.GroupName;
                        //Xsj20120327:
                        NewSizeDetail.Seq = item.Seq ?? 0;
                        _sizeList.Add(NewSizeDetail);
                    }
                }
            }
            if (!haveDefalutSizeCups)
            {
                var SizeVar = from a in MIDcContext.ColorSizeCupRanges
                              where a.Category == "Size"
                              orderby a.Seq
                              select new { IsChosed = false, SizeCode = a.DataCode, SizeName = "", Desc = a.Description, IsRange = a.IsRange, GroupName = a.GroupName, Seq = a.Seq };
                foreach (var item in SizeVar)
                {
                    SizeDetailCls NewSizeDetail = new SizeDetailCls();
                    NewSizeDetail.IsChosed = item.IsChosed;
                    NewSizeDetail.SuppRef = this.SuppRef;
                    NewSizeDetail.SizeCode = item.SizeCode;
                    NewSizeDetail.SizeName = item.SizeName;
                    NewSizeDetail.Desc = item.Desc;
                    NewSizeDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                    NewSizeDetail.GroupName = item.GroupName;
                    //Xsj20120327:
                    NewSizeDetail.Seq = item.Seq ?? 0;
                    _sizeList.Add(NewSizeDetail);
                }
            }
            List<PH.MIDc.BO.NewSizeDetail> ChosedSizeList = this.NewSizeDetails.ToList();
            if (ChosedSizeList.Count > 0)
            {
                foreach (SizeDetailCls item in _sizeList)
                {
                    if (ChosedSizeList.Where(P => P.Size == item.SizeCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }


        }

        private void GetCupDetailSource()
        {
            MaterialTypeList list = new MaterialTypeList();
            MIDcDataContext MIDcContext = list.CurrentDataContext;
            MaterialType mt = list.GetMaterialType(this.Detail.MaterialType);

            //CupDetail
            if (_cupList == null) _cupList = new List<CupDetailCls>();
            _cupList.Clear();
            bool haveDefalutSizeCups = false;
            if (mt != null)
            {
                var CupVar = from a in mt.MaterialTypeSizeCups
                             join b in MIDcContext.ColorSizeCupRanges on new { SizeCup = a.SizeCup, a.Category } equals new { SizeCup = b.DataCode, b.Category } into cs
                             from d in cs.DefaultIfEmpty(new ColorSizeCupRange { IsRange = false })
                             where a.Category == "Cup"
                             orderby a.Seq
                             select new { IsChosed = false, CupCode = a.SizeCup, CupName = "", Desc = a.SizeCup, IsRange = d.IsRange };
                if (CupVar.Count() > 0)
                {
                    haveDefalutSizeCups = true;
                    foreach (var item in CupVar)
                    {
                        CupDetailCls NewCupDetail = new CupDetailCls();
                        NewCupDetail.IsChosed = item.IsChosed;
                        NewCupDetail.SuppRef = this.SuppRef;
                        NewCupDetail.CupCode = item.CupCode;
                        NewCupDetail.CupName = item.CupName;
                        NewCupDetail.Desc = item.Desc;
                        NewCupDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                        _cupList.Add(NewCupDetail);
                    }
                }
            }
            if (!haveDefalutSizeCups)
            {
                var CupVar = from a in MIDcContext.ColorSizeCupRanges
                             where a.Category == "Cup"
                             orderby a.Seq
                             select new { IsChosed = false, CupCode = a.DataCode, CupName = "", Desc = a.Description, IsRange = a.IsRange };
                foreach (var item in CupVar)
                {
                    CupDetailCls NewCupDetail = new CupDetailCls();
                    NewCupDetail.IsChosed = item.IsChosed;
                    NewCupDetail.SuppRef = this.SuppRef;
                    NewCupDetail.CupCode = item.CupCode;
                    NewCupDetail.CupName = item.CupName;
                    NewCupDetail.Desc = item.Desc;
                    NewCupDetail.IsRange = item.IsRange.HasValue ? item.IsRange.Value : false;
                    _cupList.Add(NewCupDetail);
                }
            }
            List<PH.MIDc.BO.NewCupDetail> ChosedCupList = this.NewCupDetails.ToList();
            if (ChosedCupList.Count > 0)
            {
                foreach (CupDetailCls item in _cupList)
                {
                    if (ChosedCupList.Where(P => P.Cup == item.CupCode).Count() > 0)
                    {
                        item.IsChosed = true;
                    }
                }
            }

        }
    }

    #endregion


    #region Xsj20120303:應JaneLai和王生的討論結果，添加版本控制

    public partial class DetailChangeConfirm : BaseEntity
    {
        public string ChangeTypeMsg
        {
            get
            {
                string changeTypeMsg = "";
                string changeTypeCodestr = this.ChangeType;
                if (!string.IsNullOrEmpty(changeTypeCodestr))
                {
                    changeTypeMsg = GetTypeMsg(changeTypeCodestr);
                }

                return changeTypeMsg;
            }

        }

        public string ConfirmTypeMsg
        {
            get
            {
                string confirmTypeMsg = "";
                string confirmTypeCodestr = this.ChangeType;
                if (!string.IsNullOrEmpty(confirmTypeCodestr))
                {
                    confirmTypeMsg = GetTypeMsg(confirmTypeCodestr);
                }
                return confirmTypeMsg;
            }
        }


        private string GetTypeMsg(string TypeCodes)
        {
            string typeMsg = "";
            if (!string.IsNullOrEmpty(TypeCodes))
            {
                string[] changeTypeCodeArr = TypeCodes.Split(',');
                foreach (string item in changeTypeCodeArr)
                {
                    if (item.Trim() == "")
                    {
                        continue;
                    }
                    switch (item.Trim())
                    {
                        case "1":
                            typeMsg = typeMsg + "● Mat'l price changed.  ";
                            break;
                        case "2":
                            typeMsg = typeMsg + "● Mat'l width changed.  ";
                            break;
                        case "3":
                            typeMsg = typeMsg + "● Mat'l MCQ or MOQ changed.  ";
                            break;
                        case "4":
                            typeMsg = typeMsg + "● Other changed.  ";
                            break;

                    }
                }
            }
            return typeMsg;

        }
    }

    public enum MIDcUpdateConfirmStatus
    {
        Prepare = 1,
        Submit = 2,
        Approval = 3
    }

    public class VersionRiseReason
    {
        /// <summary>
        /// Xsj:RiseReasonCode
        /// </summary>
        public int RiseReasionCode
        {
            get;
            set;
        }

        /// <summary>
        /// Xsj:RiseReason Information
        /// </summary>
        public string RiseReasionMsg
        {
            get;
            set;
        }

        public override string ToString()
        {
            return RiseReasionMsg;
        }
    }

    partial class ColorSizeCupGroup : PH.Platform.BO.BaseEntity
    {
    }

    //partial class ColorSizeCupRange
    //{
    //    public string GroupName
    //    {
    //        get
    //        {
    //            string groupName = "";
    //            if (this.ColorSizeCupGroup != null)
    //            {
    //                groupName = this.ColorSizeCupGroup.GroupName;
    //            }
    //            return groupName;
    //        }
    //    }
    //}

    /// <summary>
    /// Xsj:標識分組類別
    /// </summary>
    public enum GroupTypeEnum
    {
        None = 0,
        Color = 1,
        Size = 2,
        Cup = 3
    }

    #endregion Xsj20120303:應JaneLai和王生的討論結果，添加版本控制

    //添加過期單顯示功能而添加以下代碼 
    public partial class V_PricesOfTimeout : PH.Platform.BO.BaseEntity
    {
    }
    //End

    public class StockSumStatus
    {
        public string HSCODE { get; set; }
        public string StockStatus { get; set; }
        public decimal WEIGHT { get; set; }
        public string MaterialName { get; set; }

    }

    partial class Brand : PH.Platform.BO.BaseEntity
    {
    }

    partial class WeightMaterial : PH.Platform.BO.BaseEntity
    {
        public string Name { get { return string.Format("{0}.{1}", this.Seq.ToString().PadLeft(2, '0'), this.MaterialName); } }
    }
    partial class WeightStyle : PH.Platform.BO.BaseEntity
    {
        public string Name { get { return string.Format("{0}.{1}", this.Seq, this.StyleName); } }
    }
    partial class WipWeight : PH.Platform.BO.BaseEntity
    {
    }

    public class WeightList : BaseEntityList<WipWeight, MIDcDataContext>
    {
        public IEnumerable<WeightMaterial> GetWeightMaterials()
        {
            var aa = from a in CurrentDataContext.WeightMaterials
                     orderby a.Seq
                     select a;

            return aa;
        }
        public IEnumerable<WeightStyle> GetWeightStyles()
        {
            var aa = from a in CurrentDataContext.WeightStyles
                     orderby a.Seq
                     select a;

            return aa;
        }
        public IEnumerable<WipWeight> GetWipWeights()
        {
            var aa = from a in CurrentDataContext.WipWeights
                     orderby a.StyleName, a.MaterialName
                     select a;

            return aa;
        }

        public bool RemoveAllWipWeights()
        {
            var aa = GetWipWeights();
            try
            {
                this.CurrentDataContext.ExecuteNonQuery("delete a from [ph.midc].dbo.WipWeight a");
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
        public bool SaveWipWeights(VirtualWeightList weights)
        {
            string sql = "";
            try
            {
                for (int i = 0; i < weights.RecordCount; i++)
                {
                    string materialName = Convert.ToString(weights.GetRowValue(i, "MaterialName"));

                    foreach (VirtualPropertyDescriptorSimple p in weights.ColumnCollection)
                    {
                        if (!p.Name.StartsWith("Style_")) continue;

                        string styleName = p.StyleName;
                        object w = weights.GetRowValue(i, p.Name);
                        if (w == null || Convert.ToDecimal(w) == 0) continue;

                        sql += string.Format("insert into [ph.midc].dbo.WipWeight(StyleName,MaterialName,Weight) values(N'{0}',N'{1}',{2}) \r\n", styleName, materialName, w);
                    }
                }
                this.CurrentDataContext.ExecuteNonQuery(sql);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        public bool ActionWeightColumn(bool isStyle, WeightAction action, int seq, string name, string hscode)
        {
            string sql = "";
            try
            {
                if (isStyle)
                {
                    switch (action)
                    {
                        case WeightAction.Modify:
                            sql = string.Format("update a set a.StyleName=N'{0}',a.StyleHSCode='{1}' from [ph.midc].dbo.WeightStyle a where Seq={2}", name, hscode, seq);
                            break;
                        case WeightAction.Add:
                            sql = string.Format("insert into [ph.midc].dbo.WeightStyle(StyleName,StyleHSCode,Seq) values(N'{0}','{1}',{2})", name, hscode, seq);
                            break;
                        case WeightAction.Remove:
                            sql = string.Format("delete a from [ph.midc].dbo.WipWeight a where StyleName=N'{0}' \r\n  delete a from [ph.midc].dbo.WeightStyle a where StyleName=N'{0}'", name);
                            break;
                        default:
                            break;
                    }
                }
                else
                {
                    switch (action)
                    {
                        case WeightAction.Modify:
                            sql = string.Format("update a set a. MaterialName=N'{0}',a.MaterialHSCode='{1}' from [ph.midc].dbo.WeightMaterial a where Seq={2}", name, hscode, seq);
                            break;
                        case WeightAction.Add:
                            sql = string.Format("insert into [ph.midc].dbo.WeightMaterial(MaterialName,MaterialHSCode,Seq) values(N'{0}','{1}',{2})", name, hscode, seq);
                            break;
                        case WeightAction.Remove:
                            sql = string.Format("delete a from [ph.midc].dbo.WipWeight a where MaterialName=N'{0}' \r\n  delete a from [ph.midc].dbo.WeightMaterial a where MaterialName=N'{0}'", name);
                            break;
                        default:
                            break;
                    }
                }
                if (!string.IsNullOrEmpty(sql))
                    this.CurrentDataContext.ExecuteNonQuery(sql);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        public List<GetWipWeightResult> GetWipWeightData(string company, string projectNo, string customerCode, string factory, DateTime delivery1, DateTime delivery2)
        {
            if (string.IsNullOrEmpty(company)) company = "P1";
            if (string.IsNullOrEmpty(factory)) factory = "FG";//SL

            int dt1, dt2;
            dt1 = delivery1 == DateTime.MinValue ? 0 : (delivery1.Year * 10000 + delivery1.Month * 100 + delivery1.Day - 19000000);
            dt2 = delivery2 == DateTime.MinValue ? 0 : (delivery2.Year * 10000 + delivery2.Month * 100 + delivery2.Day - 19000000);

            ISingleResult<GetWipWeightResult> ww = this.CurrentDataContext.sp_GetWipWeight(company, factory, customerCode, projectNo, dt1, dt2);
            List<GetWipWeightResult> wws = ww.ToList<GetWipWeightResult>();

            return wws;
        }
    }

    public enum WeightAction
    {
        Add,
        Modify,
        Remove
    }

    public partial class GetWipWeightResult
    {
        private string _StyleHSCode;
        private string _StyleName;
        private string _MaterialHSCode;
        private string _MaterialName;

        private System.Nullable<double> _Qty55;
        private System.Nullable<double> _OrderQty;
        private System.Nullable<double> _Qty52;
        private System.Nullable<decimal> _Weight;
        private System.Nullable<int> _StyleSeq;
        private System.Nullable<int> _MaterialSeq;

        [Column(Storage = "_StyleHSCode", DbType = "VarChar(20)")]
        public string StyleHSCode
        {
            get
            {
                return this._StyleHSCode;
            }
            set
            {
                if ((this._StyleHSCode != value))
                {
                    this._StyleHSCode = value;
                }
            }
        }

        [Column(Storage = "_MaterialHSCode", DbType = "VarChar(20)")]
        public string MaterialHSCode
        {
            get
            {
                return this._MaterialHSCode;
            }
            set
            {
                if ((this._MaterialHSCode != value))
                {
                    this._MaterialHSCode = value;
                }
            }
        }

        [Column(Storage = "_StyleName", DbType = "NVarChar(100)")]
        public string StyleName
        {
            get
            {
                return this._StyleName;
            }
            set
            {
                if ((this._StyleName != value))
                {
                    this._StyleName = value;
                }
            }
        }

        [Column(Storage = "_MaterialName", DbType = "NVarChar(100)")]
        public string MaterialName
        {
            get
            {
                return this._MaterialName;
            }
            set
            {
                if ((this._MaterialName != value))
                {
                    this._MaterialName = value;
                }
            }
        }

        [Column(Storage = "_Weight", DbType = "Decimal(15,5)")]
        public System.Nullable<decimal> Weight
        {
            get
            {
                return this._Weight;
            }
            set
            {
                if ((this._Weight != value))
                {
                    this._Weight = value;
                }
            }
        }

        [Column(Storage = "_Qty55", DbType = "Float")]
        public System.Nullable<double> Qty55
        {
            get
            {
                return this._Qty55;
            }
            set
            {
                if ((this._Qty55 != value))
                {
                    this._Qty55 = value;
                }
            }
        }

        [Column(Storage = "_Qty52", DbType = "Float")]
        public System.Nullable<double> Qty52
        {
            get
            {
                return this._Qty52;
            }
            set
            {
                if ((this._Qty52 != value))
                {
                    this._Qty52 = value;
                }
            }
        }

        [Column(Storage = "_OrderQty", DbType = "Float")]
        public System.Nullable<double> OrderQty
        {
            get
            {
                return this._OrderQty;
            }
            set
            {
                if ((this._OrderQty != value))
                {
                    this._OrderQty = value;
                }
            }
        }

        [Column(Storage = "_StyleSeq", DbType = "Int")]
        public System.Nullable<int> StyleSeq
        {
            get
            {
                return this._StyleSeq;
            }
            set
            {
                if ((this._StyleSeq != value))
                {
                    this._StyleSeq = value;
                }
            }
        }

        [Column(Storage = "_MaterialSeq", DbType = "Int")]
        public System.Nullable<int> MaterialSeq
        {
            get
            {
                return this._MaterialSeq;
            }
            set
            {
                if ((this._MaterialSeq != value))
                {
                    this._MaterialSeq = value;
                }
            }
        }

        public System.Nullable<double> Weight55
        {
            get
            {
                if (Qty55.HasValue && Weight.HasValue)
                    return Qty55.Value * Convert.ToDouble(this.Weight ?? 0);
                else return null;
            }
            set { value = 0; }
        }
        public System.Nullable<double> Weight52
        {
            get
            {
                if (Qty52.HasValue && Weight.HasValue)
                    return Qty52.Value * Convert.ToDouble(this.Weight ?? 0);
                else return null;
            }
            set { value = 0; }
        }
        public System.Nullable<double> WeightOrder
        {
            get
            {
                if (OrderQty.HasValue && Weight.HasValue)
                    return OrderQty.Value * Convert.ToDouble(this.Weight ?? 0);
                else return null;
            }
            set { value = 0; }
        }
    }

    public enum ImportTariffOption
    {
        Detail,
        Summary,
        ByStyle
    }


    public class MaterialWeightHSCodeBO
    {
        public string HSCode { get; set; }
        public string SuppRef { get; set; }
        public string PHUnit { get; set; }
        public string WeightHSCode { get; set; }
    }


    public class MiscHelper
    {

        static PHPlatformMiscDataContext _misctx;
        public static PHPlatformMiscDataContext MiscCtx
        {
            get
            {
                if (_misctx == null)
                {
                    _misctx = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
                    _misctx.CommandTimeout = 1000;
                }
                return _misctx;
            }

        }
    }

    /// <summary>
    /// 款對應的HSCode列表 (成品)
    /// </summary>
    public class FGStyleHSCode : BaseEntity
    {
        /// <summary>
        /// 款號
        /// </summary>
        public string StyleNo { get; set; }
        /// <summary>
        /// 海關編號
        /// </summary>
        public string HSCode { get; set; }

        public string HSNameTW { get; set; }
        public string HSNameCN { get; set; }
        public string HSNameEN { get; set; }
    }

    /// <summary>
    /// 成品的成份
    /// </summary>
    public class FGComposition : BaseEntity
    {
        /// <summary>
        /// 款號
        /// </summary>
        public string StyleNo { get; set; }
        /// <summary>
        /// 成分編號
        /// </summary>
        public string Code { get; set; }
        /// <summary>
        /// 成份值
        /// </summary>
        public decimal Value { get; set; }

        /// <summary>
        /// 成份的名稱(繁體)
        /// </summary>
        public string NameTW
        {
            get
            {
                DicList dict = new DicList();
                return dict.GetDataDictionary("PH.MIDc.CompositionDefault_FG", this.Code).DataName;
            }
        }

        /// <summary>
        /// 成份的名稱(簡體)
        /// </summary>
        public string NameCN
        {
            get
            {
                DicList dict = new DicList();
                return dict.GetDataDictionary("PH.MIDc.CompositionDefault_FG", this.Code).DataNameCN;
            }
        }

        /// <summary>
        /// 成份的名稱(英文)
        /// </summary>
        public string NameEN
        {
            get
            {
                DicList dict = new DicList();
                return dict.GetDataDictionary("PH.MIDc.CompositionDefault_FG", this.Code).DataNameEN;
            }
        }
    }

    partial class CustomMaterialDeclare_FG : PH.Platform.BO.BaseEntity
    {
        public string ElementDesc
        {
            get
            {
                Misc_DataDictionary _dict = MiscHelper.MiscCtx.Misc_DataDictionaries.FirstOrDefault(p => p.DataType == "PH.MIDc.MaterialElement" && p.DataCode == this.ElementNo);
                if (_dict != null)
                    return _dict.Description;
                else
                    return "";
            }
        }
    }

    public partial class HSCodeList : BaseEntity
    {

    }

    public partial class ColorSuppCustName : BaseEntity
    {

    }


    public partial class MaterialWeight : BaseEntity
    {

    }


}
