namespace PH.SPC.BO
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Linq;
    using System.Reflection;
    using PH.Platform.BO;
    using PH.Platform.Common;
    using PH.Platform.Misc.BO;
    using PH.RWO.BO;
    using System.ComponentModel;
    using PH.DespatchSample.BO;

    //WorkLoad Report using
    public class WorkLoad
    {
        public string YYMM { get; set; }
        public string Team { get; set; }
        public string Customer { get; set; }
        public int Bra_Groups { get; set; }
        public int Bri_Groups { get; set; }
        public int Otr_Groups { get; set; }

        public int Bra_Styles { get; set; }
        public int Bri_Styles { get; set; }
        public int Otr_Styles { get; set; }

        public int Bra_AllTimes { get; set; }
        public int Bri_AllTimes { get; set; }
        public int Otr_AllTimes { get; set; }

        public int Bra_ProdSampleTimes { get; set; }
        public int Bri_ProdSampleTimes { get; set; }
        public int Otr_ProdSampleTimes { get; set; }

        public int Bra_ConfirmOrders { get; set; }
        public int Bri_ConfirmOrders { get; set; }
        public int Otr_ConfirmOrders { get; set; }
    }


    [Table(Name = "dbo.ConfirmStyle")]
    public partial class ConfirmStyle : BaseEntity, INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _RowId;

        private string _YYMM;

        private string _CustomerId;

        private char _StyleType;

        private System.Nullable<int> _Qty;

        #region Extensibility Method Definitions
        //partial void OnLoaded();
        //partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnRowIdChanging(int value);
        partial void OnRowIdChanged();
        partial void OnYYMMChanging(string value);
        partial void OnYYMMChanged();
        partial void OnCustomerIdChanging(string value);
        partial void OnCustomerIdChanged();
        partial void OnStyleTypeChanging(char value);
        partial void OnStyleTypeChanged();
        partial void OnQtyChanging(System.Nullable<int> value);
        partial void OnQtyChanged();
        #endregion

        public ConfirmStyle()
        {
            OnCreated();
        }

        [Column(Storage = "_RowId", AutoSync = AutoSync.OnInsert, DbType = "Int NOT NULL IDENTITY", IsPrimaryKey = true, IsDbGenerated = true)]
        public int RowId
        {
            get
            {
                return this._RowId;
            }
            set
            {
                if ((this._RowId != value))
                {
                    this.OnRowIdChanging(value);
                    this.SendPropertyChanging();
                    this._RowId = value;
                    this.SendPropertyChanged("RowId");
                    this.OnRowIdChanged();
                }
            }
        }

        [Column(Storage = "_YYMM", DbType = "VarChar(6) NOT NULL", CanBeNull = false)]
        public string YYMM
        {
            get
            {
                return this._YYMM;
            }
            set
            {
                if ((this._YYMM != value))
                {
                    this.OnYYMMChanging(value);
                    this.SendPropertyChanging();
                    this._YYMM = value;
                    this.SendPropertyChanged("YYMM");
                    this.OnYYMMChanged();
                }
            }
        }

        [Column(Storage = "_CustomerId", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string CustomerId
        {
            get
            {
                return this._CustomerId;
            }
            set
            {
                if ((this._CustomerId != value))
                {
                    this.OnCustomerIdChanging(value);
                    this.SendPropertyChanging();
                    this._CustomerId = value;
                    this.SendPropertyChanged("CustomerId");
                    this.OnCustomerIdChanged();
                }
            }
        }

        [Column(Storage = "_StyleType", DbType = "Char(1) NOT NULL")]
        public char StyleType
        {
            get
            {
                return this._StyleType;
            }
            set
            {
                if ((this._StyleType != value))
                {
                    this.OnStyleTypeChanging(value);
                    this.SendPropertyChanging();
                    this._StyleType = value;
                    this.SendPropertyChanged("StyleType");
                    this.OnStyleTypeChanged();
                }
            }
        }

        [Column(Storage = "_Qty", DbType = "Int")]
        public System.Nullable<int> Qty
        {
            get
            {
                return this._Qty;
            }
            set
            {
                if ((this._Qty != value))
                {
                    this.OnQtyChanging(value);
                    this.SendPropertyChanging();
                    this._Qty = value;
                    this.SendPropertyChanged("Qty");
                    this.OnQtyChanged();
                }
            }
        }


        string _typedesc;
        public string TypeDesc
        {
            get
            {

                if (this._StyleType == 'A')
                    return "Bra";
                else if (this.StyleType == 'B')
                    return "Brief";
                else
                    return "Others";
            }
            set
            {
                this._typedesc = value;
            }

        }

        public event PropertyChangingEventHandler PropertyChanging;

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void SendPropertyChanging()
        {
            if ((this.PropertyChanging != null))
            {
                this.PropertyChanging(this, emptyChangingEventArgs);
            }
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            if ((this.PropertyChanged != null))
            {
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }

    public partial class SPCDataContext
    {
        #region
        public System.Data.Linq.Table<ConfirmStyle> ConfirmStyles
        {
            get
            {
                return this.GetTable<ConfirmStyle>();
            }
        }


        #region my defult

        [Function(Name = "dbo.sp_GetNewSampleOrderID")]
        [return: Parameter(DbType = "Int")]
        public int GetNewSampleOrderID([Parameter(Name = "@CustomerID", DbType = "VARCHAR(20)")] string customerID, [Parameter(Name = "@NewSampleOrderID", DbType = "VARCHAR(20)")] ref string newSampleOrderID)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customerID, newSampleOrderID);
            newSampleOrderID = (string)result.GetParameterValue(1);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.SampleOntimeAnalyse")]
        public ISingleResult<SPCAnalyse> SampleOntimeAnalyse([Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "SeasonCode1", DbType = "VarChar(30)")] string seasonCode1, [Parameter(Name = "SeasonCode2", DbType = "VarChar(30)")] string seasonCode2, [Parameter(Name = "CreateDate1", DbType = "VarChar(30)")] string createDate1, [Parameter(Name = "CreateDate2", DbType = "VarChar(30)")] string createDate2)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customer, seasonCode1, seasonCode2, createDate1, createDate2);
            return ((ISingleResult<SPCAnalyse>)(result.ReturnValue));
        }

        [Function(Name = "dbo.SampleOntimeAnalyseDetail")]
        public ISingleResult<SPCAnalyse> SampleOntimeAnalyseDetail([Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "SeasonCode1", DbType = "VarChar(30)")] string seasonCode1, [Parameter(Name = "SeasonCode2", DbType = "VarChar(30)")] string seasonCode2, [Parameter(Name = "CreateDate1", DbType = "VarChar(30)")] string createDate1, [Parameter(Name = "CreateDate2", DbType = "VarChar(30)")] string createDate2)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customer, seasonCode1, seasonCode2, createDate1, createDate2);
            return ((ISingleResult<SPCAnalyse>)(result.ReturnValue));
        }


        #endregion

        #region StyleSortEdition

        public void AfterDeleteStyleSortEdition(StyleSortEdition instance)
        {
            #region Init

            string SampleOrderID;
            string CustomerID;
            string StyleID;
            string SortID;
            int delEditionID;
            int iMaxEditionID;

            SampleOrderID = instance.SampleOrderID;
            CustomerID = instance.StyleSort.Style.SampleOrder.CustomerID;

            SortID = instance.SortID;
            delEditionID = instance.EditionID ?? 0;
            StyleID = instance.StyleID;

            //-- 得到max EditionID
            var a1 = from a in this.StyleSortEditions
                     where a.SampleOrderID == SampleOrderID && a.StyleID == StyleID && a.SortID == SortID && a.EditionID != instance.EditionID
                     select a;


            iMaxEditionID = (a1.Count() > 0) ? a1.Max(p => p.EditionID ?? 0) : -1;

            //  --比较是否delete最后一个版本
            if (delEditionID < iMaxEditionID) return;
            #endregion

            if (iMaxEditionID == -1)
            {
                UpdateCustomerNullValue(instance.StyleSort);
            }
            else
            {
                UpdateCustomerValue(instance, iMaxEditionID);
            }

        }

        private void UpdateCustomerNullValue(StyleSort instance)
        {
            string SampleOrderID;
            string CustomerID;
            string StyleID;
            string SortID;

            SampleOrderID = instance.SampleOrderID;
            CustomerID = instance.Style.SampleOrder.CustomerID;
            SortID = instance.SortID;
            StyleID = instance.StyleID;


            SPCCustomer e = instance.Style.SPCCustomer;
            if (e == null) return;
            {
                var s1 =
                    from p in this.StyleSortEditions
                    group p by new { p.SampleOrderID, p.StyleID } into g
                    select new
                    {
                        g.Key,
                        MaxEditionDate = g.Max(p3 => p3.EditionDate)
                    };
                var s2 = from a1 in this.StyleSortEditions
                         from b1 in s1
                         where a1.SampleOrderID == b1.Key.SampleOrderID && a1.StyleID == b1.Key.StyleID && a1.EditionDate == b1.MaxEditionDate
                         select a1;
                var s3 = from a in this.StyleSorts
                         from b in s2
                         where a.SampleOrderID == b.SampleOrderID && a.StyleID == b.StyleID && a.SortID == b.SortID && a.SampleOrderID == SampleOrderID && a.StyleID == StyleID
                         select new { a, b.EditionDate, b.EditionDueDate, b.EditionActualDate, b.DifferenceDays, b.ActionRemark, b.SampleStatus, b.RejectReason, b.Sample, b.MaterialStatus, b.BaseSizeSpec, b.InsteadMaterial, b.SizeSpec, b.WinningBid, b.Structure, b.DelayCause };
                var s4 = s3.Take(1);

                if (s4.Count() == 0)
                {
                    #region
                    e.PatternSource = "";
                    e.WorkShop = "";
                    e.MaterialStatus_MidSpec = false;
                    e.BaseSizeSpec_RVS = false;
                    e.BaseSizeSpec_NC = false;
                    e.GradeRules_RVS = false;
                    e.GradeRules_NC = false;
                    e.Construction_RVS = false;
                    e.Construction_NC = false;
                    e.MatlTrims_RVS = false;
                    e.MatlTrims_NC = false;
                    e.MatlTrims_Subt = false;
                    #endregion
                }
                else
                {
                    foreach (var ss in s4)
                    {
                        #region
                        e.PatternSource = ss.a.MarkSource;
                        e.WorkShop = ss.a.ProduceDepartment;
                        e.MaterialStatus_MidSpec = ss.WinningBid;
                        e.BaseSizeSpec_RVS = ss.BaseSizeSpec == "RVS";
                        e.BaseSizeSpec_NC = ss.BaseSizeSpec == "NC";
                        e.GradeRules_RVS = ss.SizeSpec == "RVS";
                        e.GradeRules_NC = ss.SizeSpec == "NC";
                        e.Construction_RVS = ss.Structure == "RVS";
                        e.Construction_NC = ss.Structure == "NC";
                        e.MatlTrims_RVS = ss.MaterialStatus == "RVS";
                        e.MatlTrims_NC = ss.MaterialStatus == "NC";
                        e.MatlTrims_Subt = ss.InsteadMaterial;
                        #endregion
                    }
                }

                switch (SortID)
                {
                    #region
                    case "DVP":
                        e.SPS_SeqNr = null; //ShowEditionID;
                        e.SPS_IssueDate = null; //EditionDate;
                        e.SPS_DefaultFinishDate = null; //EditionDueDate;
                        e.SPS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "RVS":
                        e.RVS_SeqNr = null; //ShowEditionID;
                        e.RVS_IssueDate = null; //EditionDate;
                        e.RVS_DefaultFinishDate = null; //EditionDueDate;
                        e.RVS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "SS":
                        e.SS_SeqNr = null; //ShowEditionID;
                        e.SS_IssueDate = null; //EditionDate;
                        e.SS_DefaultFinishDate = null; //EditionDueDate;
                        e.SS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "PS":
                        e.PS_SeqNr = null; //ShowEditionID;
                        e.PS_IssueDate = null; //EditionDate;
                        e.PS_DefaultFinishDate = null; //EditionDueDate;
                        e.PS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "PP":
                        e.PP_SeqNr = null; //ShowEditionID;
                        e.PP_IssueDate = null; //EditionDate;
                        e.PP_DefaultFinishDate = null; //EditionDueDate;
                        e.PP_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "FIT":
                        e.FIT_SeqNr = null; //ShowEditionID;
                        e.FIT_IssueDate = null; //EditionDate;
                        e.FIT_DefaultFinishDate = null; //EditionDueDate;
                        e.FIT_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "AD":
                        e.AD_SeqNr = null; //ShowEditionID;
                        e.AD_IssueDate = null; //EditionDate;
                        e.AD_DefaultFinishDate = null; //EditionDueDate;
                        e.AD_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "CAP":
                        e.CAP_SeqNr = null; //ShowEditionID;
                        e.CAP_IssueDate = null; //EditionDate;
                        e.CAP_DefaultFinishDate = null; //EditionDueDate;
                        e.CAP_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "CB":
                        e.CB_SeqNr = null; //ShowEditionID;
                        e.CB_IssueDate = null; //EditionDate;
                        e.CB_DefaultFinishDate = null; //EditionDueDate;
                        e.CB_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "CS":
                        e.CS_SeqNr = null; //ShowEditionID;
                        e.CS_IssueDate = null; //EditionDate;
                        e.CS_DefaultFinishDate = null; //EditionDueDate;
                        e.CS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "CSG":
                        e.CSG_SeqNr = null; //ShowEditionID;
                        e.CSG_IssueDate = null; //EditionDate;
                        e.CSG_DefaultFinishDate = null; //EditionDueDate;
                        e.CSG_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "JSS":
                        e.JSS_SeqNr = null; //ShowEditionID;
                        e.JSS_IssueDate = null; //EditionDate;
                        e.JSS_DefaultFinishDate = null; //EditionDueDate;
                        e.JSS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "MS":
                        e.MS_SeqNr = null; //ShowEditionID;
                        e.MS_IssueDate = null; //EditionDate;
                        e.MS_DefaultFinishDate = null; //EditionDueDate;
                        e.MS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "MW":
                        e.MW_SeqNr = null; //ShowEditionID;
                        e.MW_IssueDate = null; //EditionDate;
                        e.MW_DefaultFinishDate = null; //EditionDueDate;
                        //e.MW_CurrentFinishDate =null; //EditionActualDate;
                        break;
                    case "MWS":
                        e.MWS_SeqNr = null; //ShowEditionID;
                        e.MWS_IssueDate = null; //EditionDate;
                        e.MWS_DefaultFinishDate = null; //EditionDueDate;
                        e.MWS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "PRES":
                        e.PRES_SeqNr = null; //ShowEditionID;
                        e.PRES_IssueDate = null; //EditionDate;
                        e.PRES_DefaultFinishDate = null; //EditionDueDate;
                        e.PRES_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "QA":
                        e.QA_SeqNr = null; //ShowEditionID;
                        e.QA_IssueDate = null; //EditionDate;
                        e.QA_DefaultFinishDate = null; //EditionDueDate;
                        e.QA_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "TOP":
                        e.TOP_SeqNr = null; //ShowEditionID;
                        e.TOP_IssueDate = null; //EditionDate;
                        e.TOP_DefaultFinishDate = null; //EditionDueDate;
                        e.TOP_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "WT":
                        e.WT_SeqNr = null; //ShowEditionID;
                        e.WT_IssueDate = null; //EditionDate;
                        e.WT_DefaultFinishDate = null; //EditionDueDate;
                        e.WT_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "WS":
                        e.WS_SeqNr = null; //ShowEditionID;
                        e.WS_IssueDate = null; //EditionDate;
                        e.WS_DefaultFinishDate = null; //EditionDueDate;
                        e.WS_CurrentFinishDate = null; //EditionActualDate;
                        break;
                    case "CMS":
                        e.CMS = null; //EditionActualDate;
                        break;
                    case "CSS":
                        e.CSSDate = null; //EditionActualDate;
                        break;
                    case "FRS":
                        e.FRSDate = null; //EditionActualDate;
                        break;
                    default:
                        break;
                    #endregion
                }
            }

        }

        private void UpdateCustomerValue(StyleSortEdition instance, int maxEditionID)
        {

            string SampleOrderID;
            string CustomerID;
            string StyleID;
            string SortID;

            SampleOrderID = instance.SampleOrderID;
            CustomerID = instance.StyleSort.Style.SampleOrder.CustomerID;
            SortID = instance.SortID;
            StyleID = instance.StyleID;

            var StyleSortEditionlist = from a in this.StyleSortEditions
                                       where a.SampleOrderID == SampleOrderID && a.StyleID == StyleID && a.SortID == SortID && a.EditionID == maxEditionID
                                       select a;

            foreach (StyleSortEdition s in StyleSortEditionlist)
            {
                UpdateCustomerValue(s);
            }
        }

        private void UpdateCustomerValue(StyleSortEdition instance)
        {
            string SampleOrderID;
            string CustomerID;
            string StyleID;
            string SortID;
            StyleSortEdition s = instance;

            SampleOrderID = s.SampleOrderID;
            CustomerID = s.StyleSort.Style.SampleOrder.CustomerID;
            SortID = s.SortID;
            StyleID = s.StyleID;


            var ETAMlist2 =
                from a in this.SPCCustomers
                where a.SampleOrderID == SampleOrderID && a.StyleID == StyleID
                select a;


            foreach (SPCCustomer e in ETAMlist2)
            {
                #region update Pattern,WorkShop... RVS,NC...

                var s1 =
                    from p in this.StyleSortEditions
                    group p by new { p.SampleOrderID, p.StyleID } into g
                    select new
                    {
                        g.Key,
                        MaxEditionDate = g.Max(p3 => p3.EditionDate)
                    };
                var s2 = from a1 in this.StyleSortEditions
                         from b1 in s1
                         where a1.SampleOrderID == b1.Key.SampleOrderID && a1.StyleID == b1.Key.StyleID && a1.EditionDate == b1.MaxEditionDate
                         select a1;
                var s3 = from a in this.StyleSorts
                         from b in s2
                         where a.SampleOrderID == b.SampleOrderID && a.StyleID == b.StyleID && a.SortID == b.SortID && a.SampleOrderID == SampleOrderID && a.StyleID == StyleID
                         select new { a, b.EditionDate, b.EditionDueDate, b.EditionActualDate, b.DifferenceDays, b.ActionRemark, b.SampleStatus, b.RejectReason, b.Sample, b.MaterialStatus, b.BaseSizeSpec, b.InsteadMaterial, b.SizeSpec, b.WinningBid, b.Structure, b.DelayCause };

                var s4 = s3.Take(1);

                if (s4.Count() == 0)
                {
                    e.PatternSource = "";
                    e.WorkShop = "";
                    e.MaterialStatus_MidSpec = false;
                    e.BaseSizeSpec_RVS = false;
                    e.BaseSizeSpec_NC = false;
                    e.GradeRules_RVS = false;
                    e.GradeRules_NC = false;
                    e.Construction_RVS = false;
                    e.Construction_NC = false;
                    e.MatlTrims_RVS = false;
                    e.MatlTrims_NC = false;
                    e.MatlTrims_Subt = false;
                }
                else
                    foreach (var ss in s4)
                    {
                        e.PatternSource = ss.a.MarkSource;
                        e.WorkShop = ss.a.ProduceDepartment;
                        e.MaterialStatus_MidSpec = ss.WinningBid;
                        e.BaseSizeSpec_RVS = ss.BaseSizeSpec == "RVS";
                        e.BaseSizeSpec_NC = ss.BaseSizeSpec == "NC";
                        e.GradeRules_RVS = ss.SizeSpec == "RVS";
                        e.GradeRules_NC = ss.SizeSpec == "NC";
                        e.Construction_RVS = ss.Structure == "RVS";
                        e.Construction_NC = ss.Structure == "NC";
                        e.MatlTrims_RVS = ss.MaterialStatus == "RVS";
                        e.MatlTrims_NC = ss.MaterialStatus == "NC";
                        e.MatlTrims_Subt = ss.InsteadMaterial;
                    }

                #endregion

                #region update
                switch (SortID)
                {
                    #region
                    case "DVP":
                        e.SPS_SeqNr = s.ShowEditionID;
                        e.SPS_IssueDate = s.EditionDate;
                        e.SPS_DefaultFinishDate = s.EditionDueDate;
                        e.SPS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "RVS":
                        e.RVS_SeqNr = s.ShowEditionID;
                        e.RVS_IssueDate = s.EditionDate;
                        e.RVS_DefaultFinishDate = s.EditionDueDate;
                        e.RVS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "SS":
                        e.SS_SeqNr = s.ShowEditionID;
                        e.SS_IssueDate = s.EditionDate;
                        e.SS_DefaultFinishDate = s.EditionDueDate;
                        e.SS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "PS":
                        e.PS_SeqNr = s.ShowEditionID;
                        e.PS_IssueDate = s.EditionDate;
                        e.PS_DefaultFinishDate = s.EditionDueDate;
                        e.PS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "PP":
                        e.PP_SeqNr = s.ShowEditionID;
                        e.PP_IssueDate = s.EditionDate;
                        e.PP_DefaultFinishDate = s.EditionDueDate;
                        e.PP_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "FIT":
                        e.FIT_SeqNr = s.ShowEditionID;
                        e.FIT_IssueDate = s.EditionDate;
                        e.FIT_DefaultFinishDate = s.EditionDueDate;
                        e.FIT_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "AD":
                        e.AD_SeqNr = s.ShowEditionID;
                        e.AD_IssueDate = s.EditionDate;
                        e.AD_DefaultFinishDate = s.EditionDueDate;
                        e.AD_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "CAP":
                        e.CAP_SeqNr = s.ShowEditionID;
                        e.CAP_IssueDate = s.EditionDate;
                        e.CAP_DefaultFinishDate = s.EditionDueDate;
                        e.CAP_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "CB":
                        e.CB_SeqNr = s.ShowEditionID;
                        e.CB_IssueDate = s.EditionDate;
                        e.CB_DefaultFinishDate = s.EditionDueDate;
                        e.CB_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "CS":
                        e.CS_SeqNr = s.ShowEditionID;
                        e.CS_IssueDate = s.EditionDate;
                        e.CS_DefaultFinishDate = s.EditionDueDate;
                        e.CS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "CSG":
                        e.CSG_SeqNr = s.ShowEditionID;
                        e.CSG_IssueDate = s.EditionDate;
                        e.CSG_DefaultFinishDate = s.EditionDueDate;
                        e.CSG_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "JSS":
                        e.JSS_SeqNr = s.ShowEditionID;
                        e.JSS_IssueDate = s.EditionDate;
                        e.JSS_DefaultFinishDate = s.EditionDueDate;
                        e.JSS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "MS":
                        e.MS_SeqNr = s.ShowEditionID;
                        e.MS_IssueDate = s.EditionDate;
                        e.MS_DefaultFinishDate = s.EditionDueDate;
                        e.MS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "MW":
                        e.MW_SeqNr = s.ShowEditionID;
                        e.MW_IssueDate = s.EditionDate;
                        e.MW_DefaultFinishDate = s.EditionDueDate;
                        //e.MW_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "MWS":
                        e.MWS_SeqNr = s.ShowEditionID;
                        e.MWS_IssueDate = s.EditionDate;
                        e.MWS_DefaultFinishDate = s.EditionDueDate;
                        e.MWS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "PRES":
                        e.PRES_SeqNr = s.ShowEditionID;
                        e.PRES_IssueDate = s.EditionDate;
                        e.PRES_DefaultFinishDate = s.EditionDueDate;
                        e.PRES_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "QA":
                        e.QA_SeqNr = s.ShowEditionID;
                        e.QA_IssueDate = s.EditionDate;
                        e.QA_DefaultFinishDate = s.EditionDueDate;
                        e.QA_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "TOP":
                        e.TOP_SeqNr = s.ShowEditionID;
                        e.TOP_IssueDate = s.EditionDate;
                        e.TOP_DefaultFinishDate = s.EditionDueDate;
                        e.TOP_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "WT":
                        e.WT_SeqNr = s.ShowEditionID;
                        e.WT_IssueDate = s.EditionDate;
                        e.WT_DefaultFinishDate = s.EditionDueDate;
                        e.WT_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "WS":
                        e.WS_SeqNr = s.ShowEditionID;
                        e.WS_IssueDate = s.EditionDate;
                        e.WS_DefaultFinishDate = s.EditionDueDate;
                        e.WS_CurrentFinishDate = s.EditionActualDate;
                        break;
                    case "CMS":
                        e.CMS = s.EditionActualDate;
                        break;
                    case "CSS":
                        e.CSSDate = s.EditionActualDate;
                        break;
                    case "FRS":
                        e.FRSDate = s.EditionActualDate;
                        break;
                    default:
                        break;
                    #endregion
                }
                #endregion
            }


        }

        public void AfterInsertStyleSortEdition(StyleSortEdition instance)
        {
            UpdateCustomerValue(instance);
        }

        public void HandleEditionID(StyleSortEdition instance)
        {
            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            var aa = from a in context.StyleSortEditions
                     where a.SampleOrderID == instance.SampleOrderID
                     && a.StyleID == instance.StyleID && a.SortID == instance.SortID
                     select a;

            int maxEditionID;

            maxEditionID = (aa.Count() == 0) ? 0 : aa.Max(a => a.EditionID ?? 0);
            instance.EditionID = maxEditionID == 0 ? 1 : maxEditionID + 1;
        }

        public void AfterUpdateStyleSortEdition(StyleSortEdition instance)
        {
            string SampleOrderID;
            string CustomerID;
            string StyleID;
            string SortID;
            int delEditionID;
            int iMaxEditionID;

            SampleOrderID = instance.SampleOrderID;
            CustomerID = instance.StyleSort.Style.SampleOrder.CustomerID;
            SortID = instance.SortID;
            StyleID = instance.StyleID;
            delEditionID = instance.EditionID ?? 0;

            var a1 = from a in this.StyleSortEditions
                     where a.SampleOrderID == SampleOrderID && a.StyleID == StyleID && a.SortID == SortID
                     select a;

            iMaxEditionID = (a1.Count() > 0) ? a1.Max(p => p.EditionID ?? 0) : -1;

            //  --比较是否修改最后一个版本
            if (iMaxEditionID > -1 && delEditionID != iMaxEditionID) return;

            UpdateCustomerValue(instance);
        }

        #endregion

        #region StyleSort

        public void AfterDeleteStyleSort(StyleSort instance)
        {
            UpdateCustomerNullValue(instance);

        }
        public void AfterUpdateStyleSort(StyleSort instance)
        {
            var aa = (from a in instance.StyleSortEditions
                      orderby a.EditionID descending
                      select a).Take(1);
            foreach (StyleSortEdition s in aa)
            {
                UpdateCustomerValue(s);
            }

        }

        #endregion

        #region Style

        public void AfterInsertStyle(Style instance)
        {
            UpdateStyleInfor(instance);
        }
        public void AfterUpdateStyle(Style instance)
        {
            UpdateStyleInfor(instance);
        }
        private void UpdateStyleInfor(Style instance)
        {
            Style s = instance;
            string CustomerID = s.SampleOrder.CustomerID;
            string SampleOrderID = s.SampleOrderID;
            string StyleID = s.StyleID;
            bool tagNul = false;

            SPCCustomer e = s.SPCCustomer;
            if (e == null)
            {
                tagNul = true;
                e = new SPCCustomer();
                e.SampleOrderID = s.SampleOrderID;
                e.StyleID = s.StyleID;
                e.Style = s;

            }
            e.Customer = CustomerID;
            e.DelDate = s.SampleOrder.Garment1stDelDate;
            e.CustStyleNr = s.CustomerStyle;
            e.BrandName = s.Brand;
            e.GroupName = s.Group;
            e.SeasonCode = s.Season;
            e.Phase = s.SampleOrder.Phase;
            e.ProjectNo = s.SampleOrder.ProjectNo;
            e.CustDept = s.SampleOrder.CustDept;
            e.FtyStartDate = s.SampleOrder.FactoryStartDate;
            e.ExFtyDate = s.SampleOrder.DueDate;
            e.PCCode = s.ProductCategory;
            e.BriefDesr = s.ProductDesc;
            e.Completed = s.IsComplete;

            s.SPCCustomer = e;

            if (tagNul)
                this.SubmitChanges();    //zrtag

        }
        #endregion

        #region SampleOrder

        public void AfterUpdateSampleOrder(SampleOrder instance)
        {

            string CustomerID = instance.CustomerID;
            SampleOrder s = instance;

            foreach (Style style in s.Styles)
            {
                SPCCustomer e = style.SPCCustomer;
                if (e == null) continue;
                e.DelDate = s.Garment1stDelDate;
                e.Phase = s.Phase;
                e.ProjectNo = s.ProjectNo;
                e.CustDept = s.CustDept;
                e.FtyStartDate = s.FactoryStartDate;
                e.ExFtyDate = s.DueDate;
                e.Completed = style.IsComplete;

            }
        }

        #endregion

        public void UpdateCustomerInformation(IList<object> updateList, IList<object> insertList, IList<object> deleteList, bool saveImmediately)
        {
            foreach (object obj in updateList)
            {
                if (obj is SampleOrder)
                {
                    SampleOrder s = obj as SampleOrder;
                    this.AfterUpdateSampleOrder(s);
                }
                else if (obj is Style)
                {
                    Style s = obj as Style;
                    this.AfterUpdateStyle(s);
                }
                else if (obj is StyleSort)
                {
                    StyleSort s = obj as StyleSort;
                    this.AfterUpdateStyleSort(s);
                }
                else if (obj is StyleSortEdition)
                {
                    StyleSortEdition s = obj as StyleSortEdition;
                    this.AfterUpdateStyleSortEdition(s);
                }
            }
            foreach (object obj in insertList)
            {
                if (obj is Style)
                {
                    Style s = obj as Style;
                    this.AfterInsertStyle(s);
                }
                else if (obj is StyleSortEdition)
                {
                    StyleSortEdition s = obj as StyleSortEdition;
                    this.AfterInsertStyleSortEdition(s);
                }
            }
            foreach (object obj in deleteList)
            {
                if (obj is StyleSort)
                {
                    StyleSort s = obj as StyleSort;
                    this.AfterDeleteStyleSort(s);
                }
                else if (obj is StyleSortEdition)
                {
                    StyleSortEdition s = obj as StyleSortEdition;
                    this.AfterDeleteStyleSortEdition(s);
                }
            }
            if (saveImmediately && (this.GetChangeSet().Inserts.Count > 0 || this.GetChangeSet().Updates.Count > 0))
                this.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        }

        #endregion
    }

    public class SPCBaseEntity : BaseEntity
    {
        #region
        public override bool Save()
        {
            SPCDataContext context = this.CurrentDataContext as SPCDataContext;
            if (context == null)
                return base.Save();


            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;

            foreach (object obj in insertList)
            {
                if (obj is SampleOrder)
                {
                    SampleOrder s = obj as SampleOrder;
                    s.AutoSampleOrderID();
                }
                else if (obj is StyleSortEdition)
                {
                    StyleSortEdition s = obj as StyleSortEdition;
                    s.AutoEditionID();
                }
            }

            bool isOK = base.Save();

            if (isOK)
                context.UpdateCustomerInformation(updateList, insertList, deleteList, true);

            return isOK;
        }

        public override bool Delete()
        {
            SPCDataContext context = this.CurrentDataContext as SPCDataContext;
            if (context == null) return base.Delete();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            List<object> deleteList = new List<object>();
            deleteList.Add(this);

            context.UpdateCustomerInformation(updateList, insertList, deleteList, false);

            return base.Delete();
        }

        #endregion
    }

    public partial class SampleOrder : SPCBaseEntity
    {
        //public DateTime DespatchDateShow
        //{
        //    get
        //    {
        //        if (CurrentDataContext == null)
        //        {
        //            CurrentDataContext = ContextBuilder.CreateContext<SPCDataContext>();
        //        }

        //        return (CurrentDataContext as SPCDataContext).StyleSortEditions
        //            .Where(p => p.EditionDueDate.HasValue && p.StyleSort.Style.SampleOrder == this)
        //            .Select(p => p.EditionDueDate ?? DateTime.MaxValue).Max();
        //    }
        //}


        private DataDictMasterDB QtnMethod
        {
            get
            {
                DSPDataContext DSPDB = ContextBuilder.CreateContext<DSPDataContext>();
                return DSPDB.DataDictMasterDBs.FirstOrDefault(p => p.Flag == "SampleTypePurpose" && p.DataType == this.SamplePurpose);
            }
        }

        public string QtnMethodCN
        {
            get
            {
                return QtnMethod == null ? this.SamplePurpose : QtnMethod.DescCN;
            }
        }

        public string QtnMethodEN
        {
            get
            {
                return QtnMethod == null ? this.SamplePurpose : QtnMethod.DescEN;
            }
        }

        public string QtnWayDescENCNShow
        {
            get
            {
                return QtnMethodEN.Trim() + " " + QtnMethodCN.Trim();
            }
        }

        public string SuffixNoShow
        {
            get
            {
                string Str = "0000" + (this.Version1 ?? 0).ToString();
                return Str.Substring(Str.Length - 3) + "-" + (this.Version2 ?? 0).ToString();
            }
        }


        #region 计算Sample Order对应的有多少个款，多少件板时，用计算字段太慢，改为用存储过程计算 由David加入 2021-09-28


        ////No. of Style
        //int? _TotalStyle;
        //[Column(Storage = "_TotalStyle", DbType = "Int", UpdateCheck = UpdateCheck.Never, IsDbGenerated = false, IsDiscriminator = false)]
        //public int? TotalStyle
        //{
        //    get
        //    {
        //        return this._TotalStyle;
        //    }
        //    set
        //    {
        //        if ((this._TotalStyle != value))
        //        {
        //            this._TotalStyle = value;
        //        }
        //    }
        //}

        ////Smpl Order Qty
        //int? _TotalSampleOrderQty;
        //[Column(Storage = "_TotalSampleOrderQty", DbType = "Int", UpdateCheck = UpdateCheck.Never, IsDbGenerated = false, IsDiscriminator = false)]
        //public int? TotalSampleOrderQty
        //{
        //    get
        //    {
        //        return this._TotalSampleOrderQty;
        //    }
        //    set
        //    {
        //        if ((this._TotalSampleOrderQty != value))
        //        {
        //            this._TotalSampleOrderQty = value;
        //        }
        //    }
        //}

        //int _Stage;
        //[Column(Storage = "_Stage", DbType = "Int", UpdateCheck = UpdateCheck.Never, IsDbGenerated = false, IsDiscriminator = false)]
        //public int Stage
        //{
        //    get
        //    {
        //        return this._Stage;
        //    }
        //    set
        //    {
        //        if ((this._Stage != value))
        //        {
        //            //this.SendPropertyChanging();
        //            this._Stage = value;
        //            //this.SendPropertyChanged("Stage");
        //        }
        //    }
        //}

        public void ReCalculateTotalInformation()
        {
            TotalStyle = this.Styles.Select(p => p.StyleID).Distinct().Count();
            TotalSampleOrderQty = this.Styles.Select(p => p.TotalSampleOrderQty).Sum();

            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<SPCDataContext>();
            }

            RequestDespatchDate = (this.CurrentDataContext as SPCDataContext).StyleSortEditions
                .Where(p => p.EditionDueDate.HasValue && p.StyleSort.Style.SampleOrder == this)
                .Select(p => p.EditionDueDate).Max();


            if (!RequestDespatchDate.HasValue)
            {
                DespatchDate = null;
            }
            else if ((this.CurrentDataContext as SPCDataContext).StyleSortEditions
                .Where(p => p.StyleSort.Style.SampleOrder == this && !p.EditionActualDate.HasValue).Count() > 0)
            //.Where(p => p.StyleSort.Style.SampleOrder == this && p.EditionDueDate == RequestDespatchDate && !p.EditionActualDate.HasValue).Count() > 0)
            {
                DespatchDate = null;
            }
            else
            {
                DespatchDate = (this.CurrentDataContext as SPCDataContext).StyleSortEditions
                    .Where(p => p.EditionActualDate.HasValue && p.StyleSort.Style.SampleOrder == this && p.EditionDueDate == RequestDespatchDate)
                    .Select(p => p.EditionActualDate).Max();
            }

            //TotalStyle = this.Styles.Where(p => this.Stage == 0 || p.Stage == this.Stage).Select(p => p.StyleID).Distinct().Count();
            //TotalSampleOrderQty = this.Styles.Where(p => this.Stage == 0 || p.Stage == this.Stage).Select(p => p.TotalSampleOrderQty).Sum();
        }

        ////No. of Style
        //public int TotalStyle
        //{
        //    get
        //    {
        //        return this.Styles.Where(p => this.Stage == 0 || p.Stage == this.Stage).Select(p => p.StyleID).Distinct().Count();
        //    }
        //}

        ////Smpl Order Qty
        //public int? TotalSampleOrderQty
        //{

        //    get
        //    {
        //        return this.Styles.Where(p => this.Stage == 0 || p.Stage == this.Stage).Select(p => p.TotalSampleOrderQty).Sum();
        //    }
        //}
        #endregion

        #region
        partial void OnCreated()
        {
            this.CreateDate = DateTime.Now;
            //this.Phase = 0;
            this.Factory = "SL";

            this.Version1 = 0;
            this.Version2 = 0;
        }

        public void AutoSampleOrderID()
        {
            //實現辦單號生成演算法
            if (string.IsNullOrEmpty(this.CustomerID)) return;

            if (string.IsNullOrEmpty(this.SampleOrderID))
            {
                string newSampleOrderID = "";
                SPCDataContext context = this.CurrentDataContext as SPCDataContext;
                if (context == null) return;

                context.GetNewSampleOrderID(this.CustomerID, ref newSampleOrderID);
                this.SampleOrderID = newSampleOrderID;

            }
        }

        partial void OnDueDateChanged()
        {
            if (this.CustomerID == null || this.Factory == null || this.DueDate == null)
                return;


            SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();

            foreach (Style item1 in this.Styles)
            {
                foreach (StyleSort item2 in item1.StyleSorts)
                {
                    foreach (StyleSortEdition item3 in item2.StyleSortEditions)
                    {
                        item3.PlanComfirmData = context.fn_PlanConfirmData(this.DueDate, this.CustomerID, this.Factory);
                    }
                }
            }
        }

        partial void OnProjectNoChanged()
        {
            RWOSOPCDataContext rwoDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            SPCDataContext spcContext = this.CurrentDataContext as SPCDataContext;// PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();


            var objs = from c in rwoDataContext.Projects where c.ProjectNo == this.ProjectNo select c;

            if (objs.Count() == 0)
                return;

            var objsW = from c in rwoDataContext.WorkOrders
                        where c.Company == objs.First<Project>().Company && c.SalesOrderNo == objs.First<Project>().SalesOrderNo
                        orderby c.DeliveryShipCompleted
                        select c;

            if (objsW.Count() > 0)
            {
                WorkOrder wo = objsW.First();

                this.FactoryStartDate = wo.FactoryWorkShipCompleted;
                //this.DueDate = wo.DeliveryShipCompleted;
                //this.ShipmentDate = wo.LCLExFtyShipCompleted;

                this.DueDate = wo.Project.Customer == "TAMA" ? wo.FCLExFtyShipCompleted : wo.LCLExFtyShipCompleted;
                this.ShipmentDate = wo.DeliveryShipCompleted;

                if (this.CustomerID != null || this.Factory != null && this.DueDate != null)
                {
                    foreach (Style item1 in this.Styles)
                    {
                        foreach (StyleSort item2 in item1.StyleSorts)
                        {
                            foreach (StyleSortEdition item3 in item2.StyleSortEditions)
                            {
                                item3.PlanComfirmData = wo.FactoryWorkShipCompleted;// spcContext.fn_PlanConfirmData(this.DueDate, this.CustomerID, this.Factory);
                            }
                        }
                    }
                }
            }

        }

        //public string GenerateFromWorkOrderTips { get; set; }
        //public bool GenerateFromWorkOrderStatus { get; set; }
        #endregion

    }

    public partial class Style : SPCBaseEntity
    {

        public override bool Save()
        {
            if (StyleID.Length >= 7 && (string.IsNullOrEmpty(Class) || Class == "Nil"))
            {
                Class = StyleID.Substring(5, 2);
            }
            return base.Save();
        }

        public string ProductCodeAndDesc
        {
            get
            {
                return ProductCategory.TrimEnd() + " - " + ProductDesc.TrimStart();
            }
        }

        public int TotalSampleOrderQty
        {
            get
            {
                return this.StyleSorts.Select(p => p.TotalSampleOrderQty).Sum();
            }
        }

        public string SampleOrderNoShow
        {
            get
            {
                return this.SampleOrder.SampleOrderID;
            }
        }

        public string ChildSampleOrderSuffixShow
        {
            get
            {
                return this.SampleOrder.SuffixNoShow;

                //if (!this.ChildSampleOrderSuffix.HasValue)
                //{
                //    return "";
                //}
                //else
                //{
                //    return (this.ChildSampleOrderSuffix ?? 0).ToString().PadLeft(2, '0');
                //}
            }
        }

        public bool IsRedoStatusShow
        {
            get { return (StyleStatus)(Status ?? 0) == StyleStatus.Redo; }
        }

        public bool IsPassFoward_SingleStatusShow
        {
            get { return (StyleStatus)(Status ?? 0) == StyleStatus.PassForward_Single; }
        }

        public bool IsPassFoward_MultiStatusShow
        {
            get { return (StyleStatus)(Status ?? 0) == StyleStatus.PassForward_Multi; }
        }

        public bool IsCompletedStatusShow
        {
            get { return (StyleStatus)(Status ?? 0) == StyleStatus.Completed; }
        }

        public bool IsDropStatusShow
        {
            get { return (StyleStatus)(Status ?? 0) == StyleStatus.Drop; }
        }


        ////新增Style时，自动生成子板单后缀 (其实就是子板单的版本号)
        //partial void OnValidate(System.Data.Linq.ChangeAction action)
        //{
        //    if (action == ChangeAction.Insert)
        //    {
        //        this.ChildSampleOrderSuffix = GetNewChildSmplOrderSuffix();
        //    }

        //}

        //int GetNewChildSmplOrderSuffix()
        //{
        //    int ChildSmplOrderSuffix = this.SampleOrder.Styles.Select(p => p.ChildSampleOrderSuffix ?? 0).Max();
        //    return ChildSmplOrderSuffix + 1;
        //}

        #region

        public string SizeMatrixStr
        {
            get
            {
                if (!string.IsNullOrEmpty(this.SizeMatrix))
                {
                    string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                    MultiLanguageList langList = new MultiLanguageList();
                    return langList.GetDictionaryLanguageText("PH.WO.SizeMatrix", this.SizeMatrix, "Description", langID);
                }
                else
                {
                    return "";
                }
            }
        }

        public decimal TotalYBCB
        {
            get
            {
                PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
                context.CommandTimeout = 300;

                var objs = from a in context.StyleSizes
                           where a.SampleOrderID == this.SampleOrderID &&
                            a.StyleID == this.StyleID
                           select a;
                int totalQty = objs.Sum(p => p.Qty) ?? 0;
                return totalQty * (this.YBCB ?? 1);

                //decimal _totalybcb = 0;
                //foreach (StyleSize ss in this.StyleSizes)
                //{
                //    _totalybcb += ss.Qty ?? 0;
                //}
                //_totalybcb *= this.YBCB ?? 1;

                //return _totalybcb;
            }
        }

        //public string ProjectNo
        //{
        //    get { return this.SampleOrder.ProjectNo; }
        //}

        partial void OnProductCategoryChanged()
        {
            PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            Misc_DataDictionary d = (from a in context.Misc_DataDictionaries
                                     where a.DataType == "PH.Project.ProductCategory" && a.DataCode == this.ProductCategory
                                     select a).FirstOrDefault();

            this.ProductDesc = (d == null) ? "" : d.Description;

        }

        #endregion
    }

    public partial class StyleSort : SPCBaseEntity
    {
        public string SampleOrderNoShow
        {
            get
            {
                return this.Style.SampleOrderNoShow;
            }
        }

        public string ChildSampleOrderSuffixShow
        {
            get
            {
                return this.Style.ChildSampleOrderSuffixShow;
            }
        }

        public string PHStyleNoShow
        {
            get
            {
                return this.Style.StyleID;
            }
        }


        public int TotalSampleOrderQty
        {
            get
            {
                return this.StyleSortEditions.Select(p => p.TotalSampleOrderQty).Sum();
            }
        }

        public string SampleTypeShow
        {
            get
            {
                return this.Style.SampleOrder.SampleType;
            }
        }





        #region
        public decimal TotalYBCB
        {
            get
            {
                PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
                context.CommandTimeout = 300;

                var objs = from a in context.StyleSizes
                           where a.SampleOrderID == this.SampleOrderID &&
                           a.StyleID == this.StyleID && a.SortID == this.SortID
                           select a;
                int totalQty = objs.Sum(p => p.Qty) ?? 0;
                return totalQty * (this.YBCB ?? 1);

                //decimal _totalybcb = 0;
                //foreach (StyleSize ss in this.StyleSizes)
                //{
                //    _totalybcb += ss.Qty ?? 0;
                //}
                //_totalybcb *= this.YBCB ?? 1;

                //return _totalybcb;
            }
        }

        private string _editionID;
        public string EditionID
        {
            get
            {
                long id = GetMaxEditionID();
                _editionID = (id == -1) ? "" :
                    string.Format("{0}{1}", this.SortID, id.ToString().PadLeft(2, '0'));
                return _editionID;
            }

        }

        //public DateTime? SortDate { get; set; }
        //public DateTime? DueDate { get; set; }
        //public DateTime? ActualDate { get; set; }
        //public int? ProduceDays { get; set; }


        private long GetMaxEditionID()
        {
            long id1 = -1;
            if (this.StyleSortEditions.Count == 0)
            {
                this.SortDate = null;
                this.DueDate = null;
                this.ActualDate = null;
                this.ProduceDays = null;
                id1 = -1;
            }
            else
            {
                id1 = this.StyleSortEditions.Max(et => et.EditionID ?? 0);
                foreach (StyleSortEdition e in this.StyleSortEditions)
                {
                    if (e.EditionID == id1)
                    {
                        this.SortDate = e.EditionDate;
                        this.DueDate = e.EditionDueDate;
                        this.ActualDate = e.EditionActualDate;
                        this.ProduceDays = e.ProduceDays;
                        break;
                    }
                    //id2 = e.EditionID;
                    //id1 = Math.Max(id1, id2);
                }
            }
            return id1;
        }

        public string ProjectNo
        {
            get { return this.Style.SampleOrder.ProjectNo; }
        }

        public string SortDesc
        {
            get
            {
                PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
                context.CommandTimeout = 300;

                ISingleResult<GetCustomerSampleOrderSortResult> sampleOrderSortList = context.GetCustomerSampleOrderSort(this.Style.SampleOrder.CustomerID, this.Style.SampleOrder.Factory, "");
                var aa = from a in sampleOrderSortList
                         where a.SampleOrderType == this.SortID
                         select a;
                string cn = "";
                foreach (GetCustomerSampleOrderSortResult item in aa)
                {
                    cn = item.Chinese_Name;
                }
                return cn;

            }
        }

        #endregion
    }

    public partial class StyleSortEdition : SPCBaseEntity
    {
        public bool? IsPendingShow
        {
            get
            {
                return this.StyleSort.Style.SampleOrder.IsPending;
            }
            set
            {
                this.StyleSort.Style.SampleOrder.IsPending = value;

                if (!(value ?? false))  //从Pending移到WIP时
                {
                    this.EditionDate = DateTime.Now;                             //Issue Date显示为当天日期 
                    this.StyleSort.Style.SampleOrder.CreateDate = DateTime.Now;  //Sample Order的Create Date显示为当天日期
                }
            }
        }

        public string SampleOrderNoShow
        {
            get
            {
                return this.StyleSort.SampleOrderNoShow;
            }
        }

        public string ChildSampleOrderSuffixShow
        {
            get
            {
                return this.StyleSort.ChildSampleOrderSuffixShow;
            }
        }

        public string PHStyleNoShow
        {
            get
            {
                return this.StyleSort.PHStyleNoShow;
            }
        }

        public string SampleTypeShow
        {
            get
            {
                return this.StyleSort.SortID;
            }
        }

        /// <summary>
        /// 预设制作天数 = 要求速递日期 - 发单日期(EditionDate)
        /// </summary>
        public int? DefaultProduceDueDaysShow
        {
            get
            {
                if (!EditionDueDate.HasValue || !EditionDate.HasValue)
                {
                    return null;
                }

                return ((EditionDueDate ?? DateTime.MinValue) - (EditionDate ?? DateTime.MinValue)).Days;
            }
        }

        /// <summary>
        /// 制作天数 = 速递日期(EditionActualDate) - 发单日期 (EditionDate)
        /// </summary>
        public int? ProduceDueDaysShow
        {
            get
            {
                if (!EditionActualDate.HasValue || !EditionDate.HasValue)
                {
                    return null;
                }
                return ((EditionActualDate ?? DateTime.MinValue) - (EditionDate ?? DateTime.MinValue)).Days;
            }
        }

        /// <summary>
        /// 差异天数 = 预设制作天数(DefaultProduceDueDaysShow) - 制作天数(ProduceDueDaysShow)
        /// </summary>
        public int? DiffDaysShow
        {
            get
            {
                if (!DefaultProduceDueDaysShow.HasValue || !ProduceDueDaysShow.HasValue)
                {
                    return null;
                }

                return (DefaultProduceDueDaysShow ?? 0) - (ProduceDueDaysShow ?? 0);
            }
        }

        /// <summary>
        /// 辦序速遞件數
        /// </summary>
        public int? SampleEditionDespatchQtyShow
        {
            get
            {
                return this.StyleSizes.Select(p => p.Qty ?? 0).Sum();
            }
        }

        /// <summary>
        /// 辦序貯存件數
        /// </summary>
        public int? SampleEditionKeepQtyShow
        {
            get
            {
                return this.StyleSizes.Select(p => p.KeepQty ?? 0).Sum();
            }
        }

        /// <summary>
        /// 辦序的總件數頁(Qty + Keep Qty)
        /// </summary>
        public int TotalSampleOrderQty
        {
            get
            {
                return this.StyleSizes.Select(p => (p.Qty ?? 0) + (p.KeepQty ?? 0)).Sum();
            }
        }

        #region

        private PH.RWO.BO.Style _RWO_Style;
        public PH.RWO.BO.Style RWO_Style
        {
            get
            {
                if (this._RWO_Style == null)
                {
                    PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
                    var objs = from c in context.Styles where c.StyleNo == this.StyleID && c.Company == "P1" select c;
                    if (objs.Count() > 0)
                        this._RWO_Style = objs.First<PH.RWO.BO.Style>();
                    else
                        this._RWO_Style = new PH.RWO.BO.Style();
                }
                return _RWO_Style;
            }
        }

        public bool? RWO_MaterialContrastColor
        {
            get { return this.RWO_Style.MaterialContrastColor; }
        }
        public bool? RWO_MaterialVariousWidth
        {
            get { return this.RWO_Style.MaterialVariousWidth; }
        }
        public bool? RWO_MaterialOthers
        {
            get { return this.RWO_Style.MaterialOthers; }
        }
        public string RWO_MaterialConfirm
        {
            get { return this.RWO_Style.MaterialConfirm; }
        }
        public System.Nullable<DateTime> RWO_MaterialDate
        {
            get { return this.RWO_Style.MaterialDate; }
        }
        public string RWO_MaterialOthersRemark
        {
            get { return this.RWO_Style.MaterialOthersRemark; }

        }
        public bool? RWO_CuttingBackPart
        {
            get { return this.RWO_Style.CuttingBackPart; }

        }
        public bool? RWO_CuttingCoverButton
        {
            get { return this.RWO_Style.CuttingCoverButton; }

        }
        public bool? RWO_CuttingNotch
        {
            get { return this.RWO_Style.CuttingNotch; }

        }

        public int? DiffProData
        {
            get;
            set;
        }

        private void ChanageIsComplete()
        {
            try
            {
                if (this.IsComplete == null)
                {
                    if ((this.StyleSort.Style.SampleOrder.Phase ?? 0) > 1)
                    {
                        this.IsComplete = true;
                    }
                }
            }
            catch { }
        }

        public void AutoEditionID()
        {
            var aa = from a in this.StyleSort.StyleSortEditions
                     select a;

            //var aa = from a in this.StyleSort.StyleSortEditions
            //         where a.SampleOrderID == this.StyleSort.SampleOrderID
            //         && a.StyleID == this.StyleSort.StyleID && a.SortID == this.StyleSort.SortID
            //         select a;

            int maxEditionID;

            if (aa.ToList().Count == 0)
            {
                maxEditionID = 0;
            }
            else
            {
                maxEditionID = aa.Max(a => a.EditionID ?? 0);
            }

            this.EditionID = maxEditionID == 0 ? 1 : maxEditionID + 1;
        }

        public string ShowEditionID
        {
            get
            {
                if (this.EditionID == 0 || this.StyleSort == null) return "";

                return this.StyleSort.SortID + this.EditionID.ToString().PadLeft(2, '0');
            }
        }

        public string ProjectNo
        {
            get { return this.StyleSort.Style.SampleOrder.ProjectNo; }
        }

        public string SampleDesc { get { return (this.Sample ?? false) ? "Yes" : "No"; } }

        public string InsteadMaterialDesc { get { return (this.InsteadMaterial ?? false) ? "Yes" : "No"; } }

        public string WinningBidDesc { get { return (this.WinningBid ?? false) ? "Yes" : "No"; } }

        /*         
            预设完成日期EditionDueDate	    -发单日期EditionDate	=预设天数    BeforehandData
            实际完成日期EditionActualDate	-发单日期EditionDate	=实际生产天数 ProduceDays
            实际生产天数ProduceDays		    -预设天数BeforehandData	= 差异天数。  DifferenceDays
         */

        partial void OnEditionDueDateChanged()
        {
            ChanageIsComplete();

            SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();

            if (this._EditionDueDate == null || this._EditionDate == null)
                this.BeforehandData = null;
            else
            {
                this.BeforehandData = context.fn_DetachWorkDateInt(this._EditionDate, this._EditionDueDate.Value.AddHours(23), this.StyleSort.Style.SampleOrder.Factory) ?? 0;
            }
        }

        partial void OnEditionDateChanged()
        {
            ChanageIsComplete();
            SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();

            if (this._EditionDueDate == null || this._EditionDate == null)
                this.BeforehandData = null;
            else
            {
                this.BeforehandData = context.fn_DetachWorkDateInt(this._EditionDate, this._EditionDueDate.Value.AddHours(23), this.StyleSort.Style.SampleOrder.Factory) ?? 0;
            }

            if (this._EditionActualDate == null || this._EditionDate == null)
                this.ProduceDays = null;
            else
            {
                this.ProduceDays = context.fn_DetachWorkDateInt(this._EditionDate, this._EditionActualDate.Value.AddHours(23), this.StyleSort.Style.SampleOrder.Factory) ?? 0;
            }
        }

        partial void OnEditionActualDateChanged()
        {
            ChanageIsComplete();
            SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();

            if (this._EditionDate == null || this._EditionActualDate == null)
                this.ProduceDays = null;
            else
            {
                this.ProduceDays = context.fn_DetachWorkDateInt(this._EditionDate, this._EditionActualDate.Value.AddHours(23), this.StyleSort.Style.SampleOrder.Factory) ?? 0;
            }
        }

        partial void OnProduceDaysChanged()
        {
            if (ProduceDays == null || BeforehandData == null)
                return;

            this.DifferenceDays = (this.ProduceDays ?? 0) - (BeforehandData ?? 0);
        }

        partial void OnBeforehandDataChanged()
        {
            if (ProduceDays == null || BeforehandData == null)
                return;

            this.DifferenceDays = (this.ProduceDays ?? 0) - (BeforehandData ?? 0);
        }

        public override void InitEntity()
        {
            base.InitEntity();
            this.PlanComfirmData = (this.CurrentDataContext as SPCDataContext).fn_PlanConfirmData(this.StyleSort.Style.SampleOrder.DueDate, this.StyleSort.Style.SampleOrder.CustomerID, this.StyleSort.Style.SampleOrder.Factory);
        }

        #endregion

    }

    public partial class StyleSize : BaseEntity
    {

        public int OrdersShow
        {
            get
            {
                RWOSOPCDataContext RWOContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                var OrderObj = RWOContext.RwoOrders.Where(dr => dr.Value == this.SizeID && dr.Type == "Size").Select(dr => dr.Orders ?? 0).FirstOrDefault();
                return OrderObj;
            }
        }



        public int CupOrdersShow
        {
            get
            {
                RWOSOPCDataContext RWOContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                var OrderObj = RWOContext.RwoOrders.Where(dr => dr.Value == this.Cup && dr.Type == "Cup").Select(dr => dr.Orders ?? 0).FirstOrDefault();
                return OrderObj;
            }
        }

        public string ColorIDShow
        {
            get
            {
                return string.IsNullOrEmpty(this.ColorID) ? "" : this.ColorID;
            }
        }



        public string WoShow { get; set; }

        //public string SortIDShow { get { return this.StyleSortEdition.ShowEditionID; } }

        public int QtyShow { get { return (this.Qty ?? 0) + (this.KeepQty ?? 0); } }

        public string SampleOrderNoShow
        {
            get
            {
                return this.StyleSortEdition.SampleOrderNoShow;
            }
        }

        public string ChildSampleOrderSuffixShow
        {
            get
            {
                return this.StyleSortEdition.ChildSampleOrderSuffixShow;
            }
        }

        public string PHStyleNoShow
        {
            get
            {
                return this.StyleSortEdition.PHStyleNoShow;
            }
        }

        public string SampleTypeShow
        {
            get
            {
                return this.StyleSortEdition.SampleTypeShow;
            }
        }

        public string STVersionShow
        {
            get
            {
                return this.StyleSortEdition.ShowEditionID;
            }
        }


        #region
        public string ProjectNo
        {
            get { return this.StyleSortEdition.StyleSort.Style.SampleOrder.ProjectNo; }
        }

        public RWOSOPCDataContext Context
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }
                return this.CurrentDataContext as RWOSOPCDataContext;
            }
        }
        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type == "size" && o.Value == this.SizeID
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }
        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type == "cup" && o.Value == this.Cup
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }
        #endregion
    }

    public partial class SPCCustomer : BaseEntity
    {
        #region

        public string AdoptedDesc { get { return (this.Adopted ?? false) ? "Y" : "N"; } }
        public string CompletedDesc { get { return (this.Completed ?? false) ? "Y" : "N"; } }
        public string MatlTrims_NCDesc { get { return (this.MatlTrims_NC ?? false) ? "Y" : "N"; } }
        public string MatlTrims_RVSDesc { get { return (this.MatlTrims_RVS ?? false) ? "Y" : "N"; } }
        public string MatlTrims_SubtDesc { get { return (this.MatlTrims_Subt ?? false) ? "Y" : "N"; } }
        public string MaterialStatus_MidSpecDesc { get { return (this.MaterialStatus_MidSpec ?? false) ? "Y" : "N"; } }
        public string QS_MIDcDesc { get { return (this.QS_MIDc ?? false) ? "Y" : "N"; } }
        public string QS_PatternDesc { get { return (this.QS_Pattern ?? false) ? "Y" : "N"; } }
        public string SampleMakeOrNotDesc { get { return (this.SampleMakeOrNot ?? false) ? "Y" : "N"; } }
        public string BaseSizeSpec_NCDesc { get { return (this.BaseSizeSpec_NC ?? false) ? "Y" : "N"; } }
        public string BaseSizeSpec_RVSDesc { get { return (this.BaseSizeSpec_RVS ?? false) ? "Y" : "N"; } }
        public string Construction_NCDesc { get { return (this.Construction_NC ?? false) ? "Y" : "N"; } }
        public string Construction_RVSDesc { get { return (this.Construction_RVS ?? false) ? "Y" : "N"; } }
        public string GradeRules_NCDesc { get { return (this.GradeRules_NC ?? false) ? "Y" : "N"; } }
        public string GradeRules_RVSDesc { get { return (this.GradeRules_RVS ?? false) ? "Y" : "N"; } }



        //Xsj20130122:添加“開拓辦順序號"顯示
        public string SampleOrderOther
        {
            get
            {
                string sampleOrderOther = "";
                if (this.Style != null && this.Style.SampleOrder != null)
                {
                    sampleOrderOther = this.Style.SampleOrder.SamplerOrderOther;
                }
                return sampleOrderOther;
            }
        }
        #endregion

    }

    public class SizeRatio
    {
        public SizeRatio()
        {

        }

        public string AmendVersion { get; set; }
        public string Brand { get; set; }
        public string Cup { get; set; }
        public string Customer { get; set; }
        public string ProductCategory { get; set; }
        public int? Qty { get; set; }
        public string Size { get; set; }
        public string Team { get; set; }
        public string Version { get; set; }

        private RWOSOPCDataContext _rwoContext;

        public RWOSOPCDataContext RWOContext
        {
            get
            {
                if (this._rwoContext == null)
                {
                    this._rwoContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }
                return this._rwoContext;
            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in RWOContext.RwoOrders
                             where o.Type == "size" && o.Value == this.Size
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public int CupOrder
        {
            get
            {
                var order = (from o in RWOContext.RwoOrders
                             where o.Type == "cup" && o.Value == this.Cup
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }
    }

    public class ByWeekSummaryReportResult
    {
        public string Customer { get; set; }
        public int Year { get; set; }
        public int Week { get; set; }
        public int Groups { get; set; }
        public int Styles { get; set; }
        public int Times { get; set; }
    }

    public enum StyleStatus
    {
        PassForward_Single = 1,
        PassForward_Multi = 2,
        Redo = 3,
        Completed = 4,
        Drop = 5
    }

    public partial class GetCustomerSampleOrderSortResult
    {
        //Style Action时使用
        public bool CheckFlag { get; set; }

    }

    public class SummaryReportClass
    {
        public string CustomerCode { get; set; }
        public string SampleType { get; set; }
        //public string CustomerStyle { get; set; }
        public int StyleQty { get; set; }
        public int SampleQty { get; set; }
        public decimal Ratio { get; set; }

    }

    public class SummaryReportByPHStyleClass
    {
        public string CustomerCode { get; set; }
        public string SampleType { get; set; }
        public int StyleQty { get; set; }
        public string StyleID { get; set; }
        public int SampleQty { get; set; }
        public string Remark { get; set; }

    }


}




