//如果發現在dbml 修改BO後，相應的designer.cs文件丟失， 請將using 移到 namespace內即可解決。

namespace PH.BasicInfo.BO
{
    using System;
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Data;
    using System.Collections.Generic;
    using System.Reflection;
    using System.Linq;
    using System.Linq.Expressions;
    using System.ComponentModel;
    using PH.Platform.BO;
    using PH.Platform.BO.Interface;
    using PH.Platform.Common;
    using PH.Platform.AuthMgr.BO;
    using PH.Platform.Misc.BO;
    //using PH.MIDc.BO;
    using DevExpress.XtraGrid.Columns;
    using PH.MIDc.BO;

    partial class BasicInfoDataContext
    {
        //[Function(Name = "dbo.GetERPSupplier")]
        //public ISingleResult<GetERPSupplierResult> GetERPSupplier([Parameter(Name = "ERPSupplier", DbType = "VarChar(50)")] string eRPSupplier)
        //{
        //    IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), eRPSupplier);
        //    return ((ISingleResult<GetERPSupplierResult>)(result.ReturnValue));
        //}

        //[Function(Name = "dbo.GetERPSupplier")]
        //public ISingleResult<GetERPSupplierResult> GetERPSupplier([Parameter(Name = "ERPSupplier", DbType = "VarChar(50)")] string eRPSupplier)
        //{
        //    IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), eRPSupplier);
        //    return ((ISingleResult<GetERPSupplierResult>)(result.ReturnValue));
        //}

        partial void OnCreated()
        {

        }
    }

    public class ContextHelper
    {

        private static BasicInfoDataContext _ctx;
        private static PHPlatformMiscDataContext _miscctx;
        private static MIDcDataContext _midcctx;

        public static BasicInfoDataContext CurBasicCtx
        {
            get
            {
                if (_ctx == null)
                    _ctx = ContextBuilder.CreateContext<BasicInfoDataContext>();
                return _ctx;
            }
        }

        public static PHPlatformMiscDataContext CurMiscCtx
        {
            get
            {
                if (_miscctx == null)
                    _miscctx = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
                return _miscctx;
            }
        }

        public static MIDcDataContext CurMidcCtx
        {
            get
            {
                if (_midcctx == null)
                    _midcctx = ContextBuilder.CreateContext<MIDcDataContext>();
                return _midcctx;
            }
        }


    }


    public partial class TransitModeTransitPointChange : BaseEntity
    {
        BasicInfoDataContext context = ContextHelper.CurBasicCtx;//ContextBuilder.CreateContext<BasicInfoDataContext>();

        partial void OnCreated()
        {
            this.FromEffectivedDate = new DateTime(DateTime.Today.Year, 1, 1);
        }
        public string TransitPointDescEN
        {
            get
            {
                return this.SupplierProfile.IncontermsTransits.Count > 0 ? this.SupplierProfile.IncontermsTransits[0].TransitPointDescEN : string.Empty;
                //return context.Incoterms.Where(P => P.Code == this.SupplierProfile.IncontermsTransits[0].Incoterms).Select(E => E.TransitPointDescEN).FirstOrDefault();
            }
        }
        public string ForwarderAddressENOths
        {
            get
            {
                return this.PointofDestination != "9" ? context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.ENGAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string ForwarderAddressCHOths
        {
            get
            {
                return this.PointofDestination != "9" ? context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.CHIAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string ForwarderAddressTHOths
        {
            get
            {
                return this.PointofDestination != "9" ? context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.ThaiAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string PointOfDestinationEN
        {
            get
            {
                return context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.PointOfDestinationEN).FirstOrDefault();
                //return context.TimeFrameIICompanies.Where(p => p.CompanyCode == this.PointofDestination).Select(S => S.PointOfDestinationEN).FirstOrDefault();
            }
        }

        public TransitModeTransitPointChange TransitModeChange { get { return this; } }

    }
    public partial class Customer : PH.Platform.BO.BaseEntity
    {
    }
    public partial class Performance : PH.Platform.BO.BaseEntity
    {
        //partial void OnCreated()
        //{
        //    this.Seq = Guid.NewGuid();

        //}
        public double WeightAve
        {
            get
            {
                double f = 0;
                double w = 1;
                int i = 0;
                foreach (var item in this.PerformanceRankings)
                {
                    f += (item.Weight ?? 0) * w;
                    ++i;
                }
                return f;
            }
        }

    }
    public partial class PerformanceRanking : PH.Platform.BO.BaseEntity
    {
        public PerformanceItem _performanceitem;
        public PerformanceItem Performanceitem
        {
            get
            {
                if (_performanceitem == null)
                {
                    BasicInfoDataContext context = ContextHelper.CurBasicCtx;//this.CurrentDataContext as BasicInfoDataContext;
                    //if (context == null)
                    //    context = ContextBuilder.CreateContext<BasicInfoDataContext>();
                    var aa = from a in context.PerformanceItems
                             where a.Category == this.Category && a.ItemCode == this.ItemCode
                             select a;
                    _performanceitem = aa.First<PerformanceItem>();
                }
                return _performanceitem;
            }
        }

        public string Description
        {
            get
            {
                return Performanceitem.Description;
            }
        }
        public string Specific
        {
            get
            {
                return Performanceitem.Specific;
            }
        }
        public double MaxWeight
        {
            get
            {
                return Performanceitem.MaxWeight ?? 0;
            }
        }

        partial void OnWeightChanged()
        {
            this.Performance.ConfirmPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            this.Performance.ConfrimDate = DateTime.Now;
        }
    }
    public partial class PerformanceItem : PH.Platform.BO.BaseEntity
    {
    }
    public partial class Incoterm : PH.Platform.BO.BaseEntity
    {
    }
    public partial class EndPointFactoryFrame : PH.Platform.BO.BaseEntity
    {
        public string TimeFrameDesc
        {
            get
            {
                return this.TimeFrame.ToString() + " days";
            }
        }
    }
    public partial class SupplierFactory : BaseEntity
    {
        public string RegionOrCountry
        {
            get
            {
                return string.Format("{0}", this.Description);
            }
        }
    }

    public partial class MaterialType : BaseEntity
    {
    }

    public partial class MaterialTypeDimension : BaseEntity
    {
        BasicInfoDataContext context = ContextHelper.CurBasicCtx;//ContextBuilder.CreateContext<BasicInfoDataContext>();
        partial void OnCreated()
        {
            this.MaterialType = string.Empty;
            this.EndCustomer = string.Empty;
            //this.HaveVAT = false;
        }

        public string WidthSpecDesc
        {
            get
            {

                //return ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec" && P.DataCode == (this.WidthSpec ?? string.Empty)).Select(S => S.DataName).FirstOrDefault();
                return ContextHelper.CurMiscCtx.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec" && P.DataCode == (this.WidthSpec ?? string.Empty)).Select(S => S.DataName).FirstOrDefault();
                //return string.Empty;
            }
        }
        public string SuppWidth
        {
            get
            {

                return this.Dimension == "2" ? string.Format("{0}-{1}", this.WidthSpec, this.WidthSpecDesc) : "";
                //return string.Empty;
            }
        }
        public string SuppSize
        {
            get
            {

                return (this.Dimension == "3" || this.Dimension == "4") ? string.Format("{0}-{1}", this.WidthSpec, this.WidthSpecDesc) : "";
            }
        }

        public string ShipmentTolerantDes
        {
            get
            {
                return this.ShipmentTolerant != null ? string.Format("{0}{1}{2}", "+/-", this.ShipmentTolerant.ToString(), "%") : string.Empty; ;
            }
        }

        public string DimensionNo
        {

            get
            {
                return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.DimensionNo).FirstOrDefault();
            }
        }
        public string ItemColor
        {

            get
            {
                return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.ItemColor).FirstOrDefault();
            }
        }

        //public bool? DependentOrIndependent { get; set; }


        //Xsj100817:擴展如下欄位,用於記錄眾[PH.MIDc].dbo.MaterialType中取得的數據----Start
        PH.MIDc.BO.MIDcDataContext midcDc = ContextHelper.CurMidcCtx;   //ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        PH.Platform.Misc.BO.PHPlatformMiscDataContext MiscDc = ContextHelper.CurMiscCtx;//ContextBuilder.CreateContext<PHPlatformMiscDataContext>();

        //dimensio
        private string _dimensionMaterial;
        public string dimensionMaterial
        {
            get
            {
                _dimensionMaterial = "";
                var vals = from val in midcDc.MaterialTypes
                           where val.MaterialType1 == this.MaterialType
                           select val.Dimension;
                if (vals.Count() > 0 && !string.IsNullOrEmpty(vals.First().ToString()))
                {
                    _dimensionMaterial = vals.First().ToString() + "D";
                }
                return _dimensionMaterial;
            }
        }

        //suppSize_2D
        private string _suppSize_2D;
        public string suppSize_2D
        {
            get
            {
                _suppSize_2D = "";
                if (this.dimensionMaterial.Replace(" ", "") == "2D")
                {

                    var vals = (from val1 in midcDc.MaterialTypes
                                where val1.MaterialType1 == this.MaterialType
                                select val1.SuppSizeCupElement).ToList();

                    if (vals.Count() > 0 && !string.IsNullOrEmpty(vals.First()))
                    {
                        List<string> vals1 = (from val2 in MiscDc.Misc_DataDictionaries
                                              where val2.DataType == "PH.MIDc.SuppSizeCupElement" && val2.DataCode == vals.First().ToString()
                                              select val2.Description).ToList();
                        if (vals1.Count > 0)
                        {
                            _suppSize_2D = vals1.First();
                        }
                    }
                }
                return _suppSize_2D;

            }
        }

        ////suppSize_3D4D
        private string _suppSize_3D4D;
        public string suppSize_3D4D
        {
            get
            {
                _suppSize_3D4D = "";
                if (this.dimensionMaterial.Replace(" ", "") == "3D" || this.dimensionMaterial.Replace(" ", "") == "4D")
                {
                    var vals = from val1 in midcDc.MaterialTypes
                               where val1.MaterialType1 == this.MaterialType
                               select val1.SuppSizeCupElement;
                    if (vals.Count() > 0 && !string.IsNullOrEmpty(vals.First()))
                    {
                        List<string> vals1 = (from val2 in MiscDc.Misc_DataDictionaries
                                              where val2.DataType == "PH.MIDc.SuppSizeCupElement" && val2.DataCode == vals.First()
                                              select val2.Description).ToList();
                        if (vals1.Count > 0)
                        {
                            _suppSize_3D4D = vals1.First();
                        }
                    }
                }
                return _suppSize_3D4D;

            }
        }


        //YieldUsage
        private string _yieldUsageMaterial;
        public string yieldUsageMaterial
        {
            get
            {
                _yieldUsageMaterial = "";
                List<string> vals = (from val1 in midcDc.MaterialTypes
                                     where val1.MaterialType1 == this.MaterialType
                                     select val1.YieldUsage).ToList();

                if (vals.Count() > 0 && !string.IsNullOrEmpty(vals.First()))
                {
                    List<string> vals1 = (from val2 in MiscDc.Misc_DataDictionaries
                                          where val2.DataType == "PH.MIDc.YieldCalculation" && val2.DataCode == vals.First()
                                          select val2.Description).ToList();
                    if (vals1.Count() > 0)
                    {
                        _yieldUsageMaterial = vals1.First();
                    }
                }
                return _yieldUsageMaterial;

            }
        }
        //Xsj100817:擴展如下欄位,用於記錄眾[PH.MIDc].dbo.MaterialType中取得的數據----End



    }

    public partial class EmailName : PH.Platform.BO.BaseEntity
    {

    }
    public partial class CurrencyRecord : PH.Platform.BO.BaseEntity
    {

    }

    public partial class ForPointDeliveryofDestinationPHKey : PH.Platform.BO.BaseEntity
    {
        public string PointOfDestinationEN
        {
            get
            {
                return string.Format("\"{0}\"/{1}", this.Name, this.EngDes);
            }
        }

        public string PointOfDestinationCN
        {
            get
            {
                return string.Format("\"{0}\"-{1}", this.Code, this.CHIDes);
            }
        }

    }

    public partial class SupplierProfile : PH.Platform.BO.BaseEntity
    {
        //由David增加 2023-02-21
        public string ChangeToActive
        {
            get
            {

                return this.Active == "3" ? "Not" : null; //Check状态显示为Not
            }
        }


        //由David增加 2023-02-13
        public string TransitPointCode
        {
            get
            {
                IncontermsTransit obj = CurrentIncontermsTransit;
                return obj == null ? null : obj.TransitPointCode;
            }
        }

        //由David增加 2023-02-13
        public string TransitPointRegionCode
        {
            get
            {
                IncontermsTransit obj = CurrentIncontermsTransit;
                return obj == null ? null : obj.TransitPointRegionCode;
            }
        }

        //由David增加 2023-02-13
        public string PointofDestination
        {
            get
            {
                IncontermsTransit obj = CurrentIncontermsTransit;
                return obj == null ? null : obj.PointofDestination;
            }
        }

        private IncontermsTransit CurrentIncontermsTransit
        {
            get
            {
                IncontermsTransit obj = this.IncontermsTransits.FirstOrDefault(p => p.DeliveryRouting == "D");
                if (obj == null)
                {
                    obj = this.IncontermsTransits.FirstOrDefault(p => p.DeliveryRouting == "C");
                }
                return obj;
            }
        }


        //由David增加 2023-01-31
        public string SupplierFactoryRegionCode
        {
            get
            {
                var obj = this.SupplierFactories.FirstOrDefault();
                return obj == null ? null : obj.RegionCode;
            }
        }

        //由David增加 2023-01-31
        public string SupplierFactoryCountryCode
        {
            get
            {
                var obj = this.SupplierFactories.FirstOrDefault();
                return obj == null ? null : obj.CountryCode;
            }
        }

        //由David增加 2023-01-31
        public string SupplierFactoryCode
        {
            get
            {
                var obj = this.SupplierFactories.FirstOrDefault();
                return obj == null ? null : obj.SupplierFactoryCode;
            }
        }

        //由David增加 2023-02-01
        public string DeliveryRoutingTF2Apply
        {
            get
            {
                if (DeliveryRouting == "C") return "Y";
                else if (DeliveryRouting == "D") return "N";
                else return null;
            }
        }


        public string OurWhseSiteShow
        {
            get
            {
                return string.Join("/", this.IncontermsTransits.Select(p => p.PHFactories).Distinct().ToArray());
            }
        }

        public string SuppPrdnSite
        {
            get
            {
                SupplierFactory obj = this.SupplierFactories.FirstOrDefault(p => p.ERPSupplier == this.ERPSupplier);

                if (obj == null) return null;
                return BuyerCode == "PHDG" ? obj.DescriptionCN : obj.Description;
            }
        }

        //判断Supplier的Region Cde 与Supplier Factory中输入的Region Cde是否相同, 由David加入 2022-03-28
        public bool IsSameRegionCodeSupplierFactory
        {
            get
            {
                return this.SupplierFactories.Where(p => p.RegionCode != this.RegionCode).Count() == 0;
            }
        }


        public bool Flag { get; set; }

        BasicInfoDataContext context = ContextHelper.CurBasicCtx; //ContextBuilder.CreateContext<BasicInfoDataContext>();
        //無用字段++++++++++++++++++++++++++++++++++++++++++++++++++++++
        public string CCEmail { get; set; }
        public string BCCEmail { get; set; }
        //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        public string TermsDaysDes
        {
            get
            {
                //return ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.MIDc.PaymentTerms" && P.DataCode == this.PaymentTerms).Select(E => E.Description).FirstOrDefault();
                return ContextHelper.CurMiscCtx.Misc_DataDictionaries.Where(P => P.DataType == "PH.MIDc.PaymentTerms" && P.DataCode == this.PaymentTerms).Select(E => E.Description).FirstOrDefault();
            }
        }
        //public double OverallServices
        //{
        //    get
        //    {
        //        return (this.DevelopmentCapability ?? 0)+(this.Quality??0)+(this.Color??0)+(this.Shipment??0);
        //    }
        //}
        public string TermsDaysCodeAndDescription
        {
            get
            {
                return this.PaymentTerms + "\r\n\n(" + this.TermsDaysDes + ")";

            }
        }
        public string ERPName
        {
            get
            {
                return this.ERPSupplier + " / " + this.SupplierName;

            }
        }
        public string WidthSpecDesc
        {
            get
            {
                //return ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec" && P.DataCode == (this.WidthSpec ?? string.Empty)).Select(S => S.DataName).FirstOrDefault();
                return ContextHelper.CurMiscCtx.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec" && P.DataCode == (this.WidthSpec ?? string.Empty)).Select(S => S.DataName).FirstOrDefault();
                //return string.Empty;
            }
        }
        //public string ItemWidthYesNo
        //{
        //    get
        //    {
        //        return this.WidthSpec == 1 ? "Y" : string.Empty;

        //    }
        //}
        //public string ItemSpecificSizeYesNo
        //{
        //    get
        //    {
        //        return this.WidthSpec == 2 ? "Y" : string.Empty;

        //    }
        //}

        public string ColorIssueYesNo
        {
            get
            {
                return Convert.ToBoolean(this.ColorIssue) ? "Y" : string.Empty;
            }
        }
        //public string WidthSpecYesNo
        //{
        //    get
        //    {
        //        return this.WidthSpec == 3 ? "Y" : string.Empty;
        //    }
        //}


        public string DimensionNo
        {

            get
            {
                //return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.DimensionNo).FirstOrDefault();
                return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.DimensionNo).FirstOrDefault();
            }
        }
        public string ItemColor
        {
            get
            {
                //return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.ItemColor).FirstOrDefault();
                return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.ItemColor).FirstOrDefault();
            }
        }
        public bool? ColorIssue
        {
            get
            {
                //return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.ColorIssue).FirstOrDefault();
                return context.Dimensions.Where(P => P.Seq == this.Dimension).Select(E => E.ColorIssue).FirstOrDefault();

            }
        }
        public int SupplierDetailsNum
        {
            get
            {
                //PH.MIDc.BO.MIDcDataContext context1 = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

                //return context1.Details.Where(p => p.Supplier == this.Supplier
                //    && (p.MIDStatus == PH.MIDc.BO.MIDc_MIDStatus.PMID_Completed || p.MIDStatus == PH.MIDc.BO.MIDc_MIDStatus.PMID_WIP)).Count();

                return ContextHelper.CurMidcCtx.Details.Where(p => p.Supplier == this.Supplier
                        && (p.MIDStatus == PH.MIDc.BO.MIDc_MIDStatus.PMID_Completed || p.MIDStatus == PH.MIDc.BO.MIDc_MIDStatus.PMID_WIP)).Count();
            }

        }

        partial void OnCreated()
        {
            this.CreateDate = DateTime.Now;
            this.HaveSupplementSheet = false;

        }
        partial void OnERPSupplierChanging(string value)
        {
            if (this.BOWorkMode == WorkMode.New && (string.IsNullOrEmpty(this.Beneficiary) || this.Beneficiary == "--"))
                this.Beneficiary = "--";
        }

        partial void OnBankChargeChanged()
        {
            this.EstInterest = (this._BankCharge ?? 0) + (this._StockInterest ?? 0);
        }
        partial void OnStockInterestChanged()
        {
            this.EstInterest = (this._BankCharge ?? 0) + (this._StockInterest ?? 0);
        }

        partial void OnInlandForwarderHandlingChanged()
        {
            this.Transportation = (this._InlandForwarderHandling ?? 0) + (this._InlandTransportation ?? 0) + (this._TransitLoadingTransportation ?? 0);
        }
        partial void OnInlandTransportationChanged()
        {
            this.Transportation = (this._InlandForwarderHandling ?? 0) + (this._InlandTransportation ?? 0) + (this._TransitLoadingTransportation ?? 0);
        }
        partial void OnTransitLoadingTransportationChanged()
        {
            this.Transportation = (this._InlandForwarderHandling ?? 0) + (this._InlandTransportation ?? 0) + (this._TransitLoadingTransportation ?? 0);
        }

        partial void OnFrieght_AirChanged()
        {
            this.Frieght = (this._Frieght_Air ?? 0) + (this._Frieght_Boat ?? 0);
        }
        partial void OnFrieght_BoatChanged()
        {
            this.Frieght = (this._Frieght_Air ?? 0) + (this._Frieght_Boat ?? 0);
        }
        //public string ShipmentTolerantDes
        //{
        //    get
        //    {
        //        return this.ShipmentTolerant != null ? string.Format("{0}{1}{2}", "+/-", this.ShipmentTolerant.ToString(), "%") : string.Empty; ;
        //    }
        //}

        //public List<Dimen> DimensionCol
        //{
        //    get
        //    {
        //        if (!string.IsNullOrEmpty(this.Dimension))
        //        {
        //            Dimen di = new Dimen();
        //            di.Seq = this.Dimension;
        //            di.DimensionNo = this.DimensionNo;
        //            di.ItemColor = this.ItemColor;
        //            List<Dimen> DDDLst = new List<Dimen>();
        //            DDDLst.Add(di);
        //            return DDDLst;
        //        }
        //        else
        //        {
        //            List<Dimen> DDDLst = new List<Dimen>();
        //            foreach (MaterialTypeDimension item in this.MaterialTypeDimensions)
        //            {
        //                Dimen di = new Dimen();
        //                di.Seq = item.Dimension;
        //                di.DimensionNo = item.DimensionNo;
        //                di.ItemColor = item.ItemColor;

        //                DDDLst.Add(di);
        //            }
        //            return DDDLst;
        //        }

        //    }
        //}
        public string NameAndAddress
        {
            get
            {
                return this.SupplierName + "\r\n\n" + this.Address;
            }
        }

        #region Supplier with Associate Partner
        public string MultiIncoterms
        {
            get
            {
                string s = "";
                var aa = this.IncontermsTransits.Select(S => S.Incoterms).Distinct();
                foreach (var item in aa)
                {
                    s += item + "/";
                }
                if (string.IsNullOrEmpty(s)) return this.DeliveryTerms;

                s = s.Substring(0, s.Length - 1);
                return s;
            }
        }

        //Xsj100824:原來的Location of Supp Factory(Region or Country)取數邏輯
        public string MultiSupplierFactory
        {
            get
            {
                string s = "";
                var aa = this.IncontermsTransits.Select(S => S.RegionOrCountry).Distinct();

                foreach (var item in aa)
                {
                    s += item + "\r\n";
                }
                if (string.IsNullOrEmpty(s)) return s;

                s = s.TrimEnd();
                return s;
            }
        }

        public string AssociatePartnerStr { get { return (this.AssociatePartner ?? false) ? "Y" : "N"; } }
        public string SupplierGroupName
        {
            get
            {
                //return ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierGroup" && P.DataCode == this.SupplierGroup).Select(E => E.DataName).FirstOrDefault();
                return ContextHelper.CurMiscCtx.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierGroup" && P.DataCode == this.SupplierGroup).Select(E => E.DataName).FirstOrDefault();
            }
        }
        public string SupplierGroupCode
        {
            get
            {
                if (string.IsNullOrEmpty(this.SupplierGroup)) return "";
                return this.SupplierGroup.PadLeft(3, '0');
            }
        }
        #endregion

        //Xsj100924:添加UpdateCount屬性用於記錄Prepare的次數 
        public int UpdateCount
        {
            get
            {
                //BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
                int updateTime = context.SupplierCycleHistories.Where(P => P.ERPSupplier == this.ERPSupplier).Count();
                updateTime += 1;
                return updateTime;
            }
        }

        //Xsj110113:Supplier Status Description
        public string SupplierStatusDescription
        {
            get
            {
                string returnValStr = "";
                //PHPlatformMiscDataContext BasicInfoDataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
                List<string> SupplierStatusDescriptionList = ContextHelper.CurMiscCtx.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierStatus" && P.DataCode == this.Active).Select(P => P.DataName).ToList();
                if (SupplierStatusDescriptionList.Count != 0)
                {
                    returnValStr = SupplierStatusDescriptionList[0];
                }
                return returnValStr;
            }
        }


        public string AgentName
        {
            get
            {
                string name = "--";
                if (!string.IsNullOrEmpty(this.Agent))
                {
                    //    PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                    PH.BasicInfo.BO.SupplierProfile sp = (from a in ContextHelper.CurBasicCtx.SupplierProfiles
                                                          where a.ERPSupplier == this.Agent || a.Supplier == this.Agent
                                                          select a).FirstOrDefault<PH.BasicInfo.BO.SupplierProfile>();
                    if (sp != null) name = sp.SupplierName;
                }
                return name;
            }
        }
        public string BeneficiaryName
        {
            get
            {
                string name = "--";
                if (!string.IsNullOrEmpty(this.Beneficiary))
                {
                    //    PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                    PH.BasicInfo.BO.SupplierProfile sp = (from a in context.SupplierProfiles
                                                          where a.ERPSupplier == this.Beneficiary || a.Supplier == this.Beneficiary
                                                          select a).FirstOrDefault<PH.BasicInfo.BO.SupplierProfile>();
                    if (sp != null) name = sp.SupplierName;
                }
                return name;
            }
        }

        public string SuppIsDrop
        {
            get
            {
                string name = "--";
                if (this.Active == "3")//To-Drop
                {
                    name = "Drop";
                }
                return name;
            }
        }

        public bool HaveVAT
        {
            get
            {
                return (this.VAT ?? 0) > 0;
            }
        }
        public System.Nullable<decimal> GetVATValue(string matType)
        {

            if ((this.VAT ?? 0) > 0) return this.VAT;
            else
            {
                var aa = (from a in this.MaterialTypeDimensions
                          where a.MaterialType == matType
                          select a).FirstOrDefault();

                //return (aa.HaveVAT ?? false) ? aa.VAT : (decimal?)null;
                return (aa != null) && (aa.HaveVAT ?? false) ? aa.VAT : (decimal?)null;
            }

        }


    }

    public partial class ShipmentLeadtime : PH.Platform.BO.BaseEntity
    {
    }
    public partial class IncontermsTransit : PH.Platform.BO.BaseEntity
    {

        private IncotermMasterDB IncotermMasterDBObj
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }

                return (CurrentDataContext as BasicInfoDataContext).IncotermMasterDBs.FirstOrDefault(p => p.Code == this.Incoterms);
            }
        }

        public string TransitPointCode
        {
            get
            {
                IncotermMasterDB obj = IncotermMasterDBObj;
                return obj == null ? null : obj.TransitPointCode;
            }
        }







        #region 由David增加以下代碼 2022-04-22
        private TimeFrameIICompany TimeFrameIICompanyObj
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }
                return (CurrentDataContext as BasicInfoDataContext).TimeFrameIICompanies.FirstOrDefault(p => p.CompanyCode == this.PointofDestination);
            }
        }

        public string EndPointDescriptionShow
        {
            get
            {
                return TimeFrameIICompanyObj == null ? "" : TimeFrameIICompanyObj.Description;
            }
        }

        public string EndPointAddressShow
        {
            get
            {
                return TimeFrameIICompanyObj == null ? "" : TimeFrameIICompanyObj.Address;
            }
        }



        private TimeFrameIICompany FCLTimeFrameIICompanyObj
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }
                return (CurrentDataContext as BasicInfoDataContext).TimeFrameIICompanies.FirstOrDefault(p => p.CompanyCode == this.FCLPointofDestination);
            }
        }

        public string FCLEndPointDescriptionShow
        {
            get
            {
                return FCLTimeFrameIICompanyObj == null ? "" : FCLTimeFrameIICompanyObj.Description;
            }
        }

        public string FCLEndPointAddressShow
        {
            get
            {
                return FCLTimeFrameIICompanyObj == null ? "" : FCLTimeFrameIICompanyObj.Address;
            }
        }

        #endregion



        //BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
        public string Name
        {
            get
            {
                return ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.Name).FirstOrDefault();

            }
        }

        partial void OnCreated()
        {

            this.IsLCL = true;
            this.FromEffectivedDate = DateTime.Today;
        }
        public string ForwarderAddressENOths
        {
            get
            {
                return this.PointofDestination != "9" ? ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.ENGAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string ForwarderAddressCHOths
        {
            get
            {
                return this.PointofDestination != "9" ? ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.CHIAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string ForwarderAddressTHOths
        {
            get
            {
                return this.PointofDestination != "9" ? ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.ThaiAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string TimeFrameDesc
        {
            get
            {
                return this.TimeFrame == null ? "n.a" : this.TimeFrame.ToString() + " days";
            }
        }

        //public string ERPName
        //{
        //    get
        //    {
        //        return this.SupplierProfile.ERPName;
        //    }
        //}

        public string IncotermDes
        {
            get
            {
                //string SSSS = ContextBuilder.CreateContext<BasicInfoDataContext>().Incoterms.Where(P => P.Code == this.Incoterms).Select(E => E.EngDes).FirstOrDefault();
                string SSSS = ContextHelper.CurBasicCtx.Incoterms.Where(P => P.Code == this.Incoterms).Select(E => E.EngDes).FirstOrDefault();
                string PointPort = SSSS != null ? SSSS : string.Empty;
                PointPort = PointPort != string.Empty ? " (" + PointPort + ")" : string.Empty;
                return this.Incoterms != null ? this.Incoterms + "\r\n\n" + PointPort : PointPort;
            }
        }

        public string TransitPointDescEN
        {
            get
            {
                return ContextHelper.CurBasicCtx.Incoterms.Where(P => P.Code == this.Incoterms).Select(E => E.TransitPointDescEN).FirstOrDefault();
            }
        }

        public string TransitPoint
        {
            get
            {
                //select IncotermsPointPort 
                return string.Format("{0}:\r\n{1}", TransitPointDescEN, this.IncotermsPointPort);
            }
        }


        //public string LCLorFCL
        //{
        //    get
        //    {
        //        return this.IsLCL ? "LCL" : "FCL";
        //    }
        //}

        public string LocationofSuppFactoryDesc
        {
            get
            {
                return this.SupplierProfile.SupplierFactories.Where(P => P.SupplierFactoryCode == (this.LocationofSuppFactory ?? string.Empty)).Select(S => S.Description).FirstOrDefault();
            }
        }
        public string RegionOrCountry
        {
            get
            {
                return this.SupplierProfile.SupplierFactories.Where(P => P.SupplierFactoryCode == (this.LocationofSuppFactory ?? string.Empty)).Select(S => S.RegionOrCountry).FirstOrDefault();
            }
        }

        public string TimeFrame2
        {
            get
            {
                var TF = ContextHelper.CurBasicCtx.EndPointFactoryFrames.Where(P => P.EndPointCode == this.PointofDestination && P.PHFactory == this.PHFactories).Select(S => S.TimeFrame).FirstOrDefault();
                return TF != null ? TF.ToString() + " days" : "n.a";
            }
        }
        public string FCLTimeFrame2
        {
            get
            {
                var TF = ContextHelper.CurBasicCtx.EndPointFactoryFrames.Where(P => P.EndPointCode == this.FCLPointofDestination && P.PHFactory == this.PHFactories).Select(S => S.TimeFrame).FirstOrDefault();
                return TF != null ? TF.ToString() + " days" : "n.a";
            }
        }
        //public string FCLAgreedRequestDesc
        //{
        //    get
        //    {
        //        return Convert.ToBoolean(this.FCLAgreedRequest)? "√" : string.Empty;
        //    }
        //}
        public string FCLIncotermsPointPortDesc
        {
            get
            {
                return !string.IsNullOrEmpty(this.FCLIncotermsPointPort) ? this.FCLIncotermsPointPort : "n.a";

            }
        }
        public string FCLTransitPointDescEN
        {
            get
            {
                return string.IsNullOrEmpty(this.FCLIncotermsPointPort) ? string.Empty : TransitPointDescEN + ":";
            }
        }

        public string FCLPointofDestinationDesc
        {
            get
            {
                var NameS = ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.FCLPointofDestination).Select(S => S.Name).FirstOrDefault();
                return string.IsNullOrEmpty(NameS) ? "n.a" : NameS;
            }
        }

        public string FCLPointOfDestination6PDesc
        {
            get
            {
                return this.FCLPointOfDestination6P ?? "n.a";
            }
        }

        public string FCLTimeFrameDesc
        {
            get
            {
                return this.FCLTimeFrame != null ? this.FCLTimeFrame.ToString() + " days" : "n.a";
            }
        }

        //public string FCLTimeFrame2Desc
        //{
        //    get
        //    {
        //        return this.FCLTimeFrame2!=null ?this.FCLTimeFrame2.ToString(): "n.a";
        //    }
        //}

        public string PointOfDestinationEN
        {
            get
            {
                return ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.PointOfDestinationEN).FirstOrDefault();
            }
        }
        public string PointOfDestinationName
        {
            get
            {
                return ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.Name).FirstOrDefault();
            }
        }
        public string FCLPointOfDestinationEN
        {
            get
            {
                return ContextHelper.CurBasicCtx.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.FCLPointofDestination).Select(S => S.PointOfDestinationEN).FirstOrDefault();
            }
        }


        #region FCL
        public string FCLPortBorderOfDestinationDesc
        {
            get
            {
                return string.IsNullOrEmpty(FCLPortBorderOfDestination) ? "n.a" : FCLPortBorderOfDestination;
            }
        }
        public string FCLPlaceOfDestinationDesc
        {
            get
            {
                return string.IsNullOrEmpty(FCLPlaceOfDestination) ? "n.a" : FCLPlaceOfDestination;
            }
        }
        public string FCLPointOfDestinationAddressDesc
        {
            get
            {
                return string.IsNullOrEmpty(FCLPointOfDestinationAddress) ? "n.a" : FCLPointOfDestinationAddress;
            }
        }
        #endregion

        #region Xsj110113:擴展Cost用於區分LCL,FCL
        //Point2PortOfOriginCost
        public string Point2PortOfOriginCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.Point2PortOfOriginCost.HasValue)
                    {
                        returnValStr = Point2PortOfOriginCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string Point2PortOfOriginCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.Point2PortOfOriginCost.HasValue)
                    {
                        returnValStr = Point2PortOfOriginCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        //FreightCost
        public string FreightCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.FreightCost.HasValue)
                    {
                        returnValStr = FreightCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string FreightCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.FreightCost.HasValue)
                    {
                        returnValStr = FreightCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        //Port2PointOfDestinationCost
        public string Port2PointOfDestinationCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.Port2PointOfDestinationCost.HasValue)
                    {
                        returnValStr = Port2PointOfDestinationCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string Port2PointOfDestinationCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.Port2PointOfDestinationCost.HasValue)
                    {
                        returnValStr = Port2PointOfDestinationCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        //PointOfDestination2ProductionSiteCost
        public string PointOfDestination2ProductionSiteCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.PointOfDestination2ProductionSiteCost.HasValue)
                    {
                        returnValStr = PointOfDestination2ProductionSiteCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string PointOfDestination2ProductionSiteCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.PointOfDestination2ProductionSiteCost.HasValue)
                    {
                        returnValStr = PointOfDestination2ProductionSiteCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }

        #endregion


    }


    public partial class SupplierProductRange : PH.Platform.BO.BaseEntity
    {
    }

    public partial class Currency : PH.Platform.BO.BaseEntity
    {
    }

    public partial class PH_Unit : PH.Platform.BO.BaseEntity
    {
    }

    public partial class ProductRange : PH.Platform.BO.BaseEntity
    {
    }

    public partial class BI_View_CustomerTypeSize : PH.Platform.BO.BaseEntity
    {
    }

    public class SupplierCount
    {
        /// <summary>
        /// 凳婖滲杅
        /// </summary>
        /// <param name="name"></param>
        /// <param name="count"></param>
        public SupplierCount(string name, int count)
        {
            this._SupplierCode = name;
            this._SupplierNum = count;
        }
        private string _SupplierCode;
        public string SupplierCode
        {
            get
            {
                return this._SupplierCode;
            }
            set
            {
                this._SupplierCode = value;
            }
        }
        private int? _SupplierNum;
        public int? SupplierNum
        {
            get
            {
                return this._SupplierNum;
            }
            set
            {
                this._SupplierNum = value;
            }
        }
    }



    public partial class Dimension : PH.Platform.BO.BaseEntity
    {
        public string ColorIssueYesNo
        {
            get
            {
                return Convert.ToBoolean(this.ColorIssue) ? "Y" : "N";
            }
        }
    }



    public partial class Misc_DataDictionaryByDataTypeList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<Misc_DataDictionary> GetAllMisc_DataDictionaryByDataType(string sDataType)
        {
            var q = from md in CurrentDataContext.Misc_DataDictionaries
                    where md.DataType == sDataType
                    select md;
            return q;

        }
    }

    public partial class CurrenciesList : BaseEntityList<Currency, BasicInfoDataContext>
    {
        public IEnumerable<Currency> GetAllCurrencies()
        {
            var q = from c in CurrentDataContext.Currencies select c;
            return q;
        }
    }

    public partial class ProductRangeList : BaseEntityList<ProductRange, BasicInfoDataContext>
    {
        public IEnumerable<ProductRange> GetAllProductRange()
        {
            var q = from pr in CurrentDataContext.ProductRanges select pr;
            return q;
        }
    }

    public partial class ProductRangeByMaterialGroupList : BaseEntityList<ProductRange, BasicInfoDataContext>
    {
        public IEnumerable<ProductRange> GetAllProductRangeByMaterialGroup(string sMaterialGroup)
        {
            var q = from mm in CurrentDataContext.ProductRanges
                    where mm.MaterialGroup == sMaterialGroup
                    select mm;
            return q;
        }
    }


    public partial class SupplierProfileList : BaseEntityList<SupplierProfile, BasicInfoDataContext>
    {
        public IEnumerable<SupplierProfile> GetAffiliatePartners(string suppGroup)
        {
            if (string.IsNullOrEmpty(suppGroup))
            {
                var q = from sp in CurrentDataContext.SupplierProfiles
                        where sp.SupplierGroup == "-1" && !(sp.DeleteFlag ?? false)
                        select sp;
                return q;
            }
            else
            {
                var q = from sp in CurrentDataContext.SupplierProfiles
                        where sp.SupplierGroup == suppGroup && !(sp.DeleteFlag ?? false)
                        select sp;
                return q;
            }
        }
    }


    #region
    //Xsj20110406:添加
    public partial class SupplierProfileForMIDcList : BaseEntityList<SupplierProfileForMIDc, BasicInfoDataContext>
    {
    }
    public partial class SupplierProfileForMIDc : BaseEntity
    {
    }
    #endregion


    public partial class CustomerList : BaseEntityList<Customer, BasicInfoDataContext>
    {
        public IEnumerable<Customer> GetAllCustomer()
        {
            var q = from c in CurrentDataContext.Customers select c;
            return q;
        }
    }

    public class IncotermList : BaseEntityList<Incoterm, BasicInfoDataContext> { }
    public class DimensionList : BaseEntityList<Dimension, BasicInfoDataContext> { }
    public class ForPointDeliveryofDestinationPHKeyList : BaseEntityList<ForPointDeliveryofDestinationPHKey, BasicInfoDataContext> { }
    public class SupplierFactoryList : BaseEntityList<SupplierFactory, BasicInfoDataContext> { }
    #region  Misc滖綎腔Table腔BaseEntity
    public partial class Employee : PH.Platform.BO.BaseEntity { }
    public partial class EmployeeUser : PH.Platform.BO.BaseEntity { }

    public partial class Organization : PH.Platform.BO.BaseEntity
    {
        public IEnumerable<Employee> GetNotAttachEmployee()
        {
            //PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            //PH.BasicInfo.BO.BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
            List<string> lstEmployees = new List<string>();
            //foreach (OrgEmployee oe in this.OrgEmployees)
            //{
            //    lstEmployees.Add(oe.EmpID);
            //}
            foreach (OrgEmployee oe in ContextHelper.CurBasicCtx.OrgEmployees)
            {
                lstEmployees.Add(oe.EmpID);
            }

            var rLists = from a in ContextHelper.CurBasicCtx.Employees
                         where (!(lstEmployees.Contains(a.EmpID)) && a.Expired == false)
                         select a;

            return rLists;
        }

    }

    public partial class OrganizationType : PH.Platform.BO.BaseEntity { }

    public partial class OrgEmployee : PH.Platform.BO.BaseEntity { }
    #endregion

    public class Fun
    {
        public static string GetGridViewFilterCondition(DevExpress.XtraGrid.Views.Grid.GridView GridView)
        {
            string FilterText = !string.IsNullOrEmpty(GridView.FilterPanelText) ? GridView.FilterPanelText : string.Empty;
            if (!string.IsNullOrEmpty(FilterText))
            {
                foreach (GridColumn column in GridView.Columns)
                {
                    FilterText = FilterText.Replace(column.Caption, column.FieldName);
                }
                return FilterText;

            }

            return string.Empty;
        }


    }

    [Table(Name = "dbo.MaterialType")]
    public partial class MaterialType : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private string _MaterialType1;

        private string _Description;

        private string _MaterialGroup;

        private string _HsCode;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnMaterialType1Changing(string value);
        partial void OnMaterialType1Changed();
        partial void OnDescriptionChanging(string value);
        partial void OnDescriptionChanged();
        partial void OnMaterialGroupChanging(string value);
        partial void OnMaterialGroupChanged();
        partial void OnHsCodeChanging(string value);
        partial void OnHsCodeChanged();
        #endregion

        public MaterialType()
        {
            OnCreated();
        }

        [Column(Name = "MaterialType", Storage = "_MaterialType1", DbType = "VarChar(20) NOT NULL", CanBeNull = false, IsPrimaryKey = true)]
        public string MaterialType1
        {
            get
            {
                return this._MaterialType1;
            }
            set
            {
                if ((this._MaterialType1 != value))
                {
                    this.OnMaterialType1Changing(value);
                    this.SendPropertyChanging();
                    this._MaterialType1 = value;
                    this.SendPropertyChanged("MaterialType1");
                    this.OnMaterialType1Changed();
                }
            }
        }

        [Column(Storage = "_Description", DbType = "VarChar(250)")]
        public string Description
        {
            get
            {
                return this._Description;
            }
            set
            {
                if ((this._Description != value))
                {
                    this.OnDescriptionChanging(value);
                    this.SendPropertyChanging();
                    this._Description = value;
                    this.SendPropertyChanged("Description");
                    this.OnDescriptionChanged();
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
                    this.OnMaterialGroupChanging(value);
                    this.SendPropertyChanging();
                    this._MaterialGroup = value;
                    this.SendPropertyChanged("MaterialGroup");
                    this.OnMaterialGroupChanged();
                }
            }
        }

        [Column(Storage = "_HsCode", DbType = "VarChar(20)")]
        public string HsCode
        {
            get
            {
                return this._HsCode;
            }
            set
            {
                if ((this._HsCode != value))
                {
                    this.OnHsCodeChanging(value);
                    this.SendPropertyChanging();
                    this._HsCode = value;
                    this.SendPropertyChanged("HsCode");
                    this.OnHsCodeChanged();
                }
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

    public partial class Dimen
    {
        public string Seq { get; set; }
        public string DimensionNo { get; set; }
        public string ItemColor { get; set; }

    }

    //Xsj110114
    public partial class TransportationCostElement : BaseEntity
    {


        public string LCLorFCL
        {
            get
            {
                return this.IsLCL.HasValue && this.IsLCL.Value ? "LCL" : "FCL";
            }
        }
    }

    //Xsj110406
    public partial class IncontermsTransitForMIDc : BaseEntity { }

    //Xsj110406
    public partial class IncontermsTransitForMIDc : PH.Platform.BO.BaseEntity
    {
        //(Add by shulin 因为根据 ”Citrix Supplier Profile for Mat'l Sample 有問題，請幫忙處理“邮件，发现未添加David以下代码，导致的报错)
        #region 由David增加以下代碼 2022-04-22

        private TimeFrameIICompany TimeFrameIICompanyObj
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }
                return (CurrentDataContext as BasicInfoDataContext).TimeFrameIICompanies.FirstOrDefault(p => p.CompanyCode == this.PointofDestination);
            }
        }

        public string EndPointDescriptionShow
        {
            get
            {
                return TimeFrameIICompanyObj == null ? "" : TimeFrameIICompanyObj.Description;
            }
        }

        public string EndPointAddressShow
        {
            get
            {
                return TimeFrameIICompanyObj == null ? "" : TimeFrameIICompanyObj.Address;
            }
        }

        private TimeFrameIICompany FCLTimeFrameIICompanyObj
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }
                return (CurrentDataContext as BasicInfoDataContext).TimeFrameIICompanies.FirstOrDefault(p => p.CompanyCode == this.FCLPointofDestination);
            }
        }

        public string FCLEndPointDescriptionShow
        {
            get
            {
                return FCLTimeFrameIICompanyObj == null ? "" : FCLTimeFrameIICompanyObj.Description;
            }
        }

        public string FCLEndPointAddressShow
        {
            get
            {
                return FCLTimeFrameIICompanyObj == null ? "" : FCLTimeFrameIICompanyObj.Address;
            }
        }

        #endregion



        BasicInfoDataContext context = ContextHelper.CurBasicCtx;
        public string Name
        {
            get
            {
                return context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.Name).FirstOrDefault();

            }
        }

        partial void OnCreated()
        {

            this.IsLCL = true;
            this.FromEffectivedDate = DateTime.Today;
        }

        public string ForwarderAddressENOths
        {
            get
            {
                return this.PointofDestination != "9" ? context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.ENGAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string ForwarderAddressCHOths
        {
            get
            {
                return this.PointofDestination != "9" ? context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.CHIAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string ForwarderAddressTHOths
        {
            get
            {
                return this.PointofDestination != "9" ? context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.ThaiAddress).FirstOrDefault() : string.Empty;
            }
        }
        public string TimeFrameDesc
        {
            get
            {
                return this.TimeFrame == null ? "n.a" : this.TimeFrame.ToString() + " days";
            }
        }

        //public string ERPName
        //{
        //    get
        //    {
        //        return this.SupplierProfile.ERPName;
        //    }
        //}

        public string IncotermDes
        {
            get
            {
                //string SSSS = ContextBuilder.CreateContext<BasicInfoDataContext>().Incoterms.Where(P => P.Code == this.Incoterms).Select(E => E.EngDes).FirstOrDefault();
                string SSSS = context.Incoterms.Where(P => P.Code == this.Incoterms).Select(E => E.EngDes).FirstOrDefault();
                string PointPort = SSSS != null ? SSSS : string.Empty;
                PointPort = PointPort != string.Empty ? " (" + PointPort + ")" : string.Empty;
                return this.Incoterms != null ? this.Incoterms + "\r\n\n" + PointPort : PointPort;
            }
        }

        public string TransitPointDescEN
        {
            get
            {
                return context.Incoterms.Where(P => P.Code == this.Incoterms).Select(E => E.TransitPointDescEN).FirstOrDefault();
            }
        }

        public string TransitPoint
        {
            get
            {
                //select IncotermsPointPort 
                return string.Format("{0}:\r\n{1}", TransitPointDescEN, this.IncotermsPointPort);
            }
        }


        //public string LCLorFCL
        //{
        //    get
        //    {
        //        return this.IsLCL ? "LCL" : "FCL";
        //    }
        //}

        public string LocationofSuppFactoryDesc
        {
            get
            {
                return this.SupplierProfile.SupplierFactories.Where(P => P.SupplierFactoryCode == (this.LocationofSuppFactory ?? string.Empty)).Select(S => S.Description).FirstOrDefault();
            }
        }
        public string RegionOrCountry
        {
            get
            {
                return this.SupplierProfile.SupplierFactories.Where(P => P.SupplierFactoryCode == (this.LocationofSuppFactory ?? string.Empty)).Select(S => S.RegionOrCountry).FirstOrDefault();
            }
        }

        public string TimeFrame2
        {
            get
            {
                var TF = context.EndPointFactoryFrames.Where(P => P.EndPointCode == this.PointofDestination && P.PHFactory == this.PHFactories).Select(S => S.TimeFrame).FirstOrDefault();
                return TF != null ? TF.ToString() + " days" : "n.a";
            }
        }
        public string FCLTimeFrame2
        {
            get
            {
                var TF = context.EndPointFactoryFrames.Where(P => P.EndPointCode == this.FCLPointofDestination && P.PHFactory == this.PHFactories).Select(S => S.TimeFrame).FirstOrDefault();
                return TF != null ? TF.ToString() + " days" : "n.a";
            }
        }
        //public string FCLAgreedRequestDesc
        //{
        //    get
        //    {
        //        return Convert.ToBoolean(this.FCLAgreedRequest)? "√" : string.Empty;
        //    }
        //}
        public string FCLIncotermsPointPortDesc
        {
            get
            {
                return !string.IsNullOrEmpty(this.FCLIncotermsPointPort) ? this.FCLIncotermsPointPort : "n.a";

            }
        }
        public string FCLTransitPointDescEN
        {
            get
            {
                return string.IsNullOrEmpty(this.FCLIncotermsPointPort) ? string.Empty : TransitPointDescEN + ":";
            }
        }

        public string FCLPointofDestinationDesc
        {
            get
            {
                var NameS = context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.FCLPointofDestination).Select(S => S.Name).FirstOrDefault();
                return string.IsNullOrEmpty(NameS) ? "n.a" : NameS;
            }
        }

        public string FCLPointOfDestination6PDesc
        {
            get
            {
                return this.FCLPointOfDestination6P ?? "n.a";
            }
        }

        public string FCLTimeFrameDesc
        {
            get
            {
                return this.FCLTimeFrame != null ? this.FCLTimeFrame.ToString() + " days" : "n.a";
            }
        }

        //public string FCLTimeFrame2Desc
        //{
        //    get
        //    {
        //        return this.FCLTimeFrame2!=null ?this.FCLTimeFrame2.ToString(): "n.a";
        //    }
        //}

        public string PointOfDestinationEN
        {
            get
            {
                return context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.PointOfDestinationEN).FirstOrDefault();
            }
        }
        public string PointOfDestinationName
        {
            get
            {
                return context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.PointofDestination).Select(S => S.Name).FirstOrDefault();
            }
        }
        public string FCLPointOfDestinationEN
        {
            get
            {
                return context.ForPointDeliveryofDestinationPHKeys.Where(P => P.Code == this.FCLPointofDestination).Select(S => S.PointOfDestinationEN).FirstOrDefault();
            }
        }


        #region FCL
        public string FCLPortBorderOfDestinationDesc
        {
            get
            {
                return string.IsNullOrEmpty(FCLPortBorderOfDestination) ? "n.a" : FCLPortBorderOfDestination;
            }
        }
        public string FCLPlaceOfDestinationDesc
        {
            get
            {
                return string.IsNullOrEmpty(FCLPlaceOfDestination) ? "n.a" : FCLPlaceOfDestination;
            }
        }
        public string FCLPointOfDestinationAddressDesc
        {
            get
            {
                return string.IsNullOrEmpty(FCLPointOfDestinationAddress) ? "n.a" : FCLPointOfDestinationAddress;
            }
        }
        #endregion

        #region Xsj110113:擴展Cost用於區分LCL,FCL
        //Point2PortOfOriginCost
        public string Point2PortOfOriginCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.Point2PortOfOriginCost.HasValue)
                    {
                        returnValStr = Point2PortOfOriginCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string Point2PortOfOriginCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.Point2PortOfOriginCost.HasValue)
                    {
                        returnValStr = Point2PortOfOriginCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        //FreightCost
        public string FreightCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.FreightCost.HasValue)
                    {
                        returnValStr = FreightCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string FreightCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.FreightCost.HasValue)
                    {
                        returnValStr = FreightCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        //Port2PointOfDestinationCost
        public string Port2PointOfDestinationCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.Port2PointOfDestinationCost.HasValue)
                    {
                        returnValStr = Port2PointOfDestinationCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string Port2PointOfDestinationCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.Port2PointOfDestinationCost.HasValue)
                    {
                        returnValStr = Port2PointOfDestinationCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        //PointOfDestination2ProductionSiteCost
        public string PointOfDestination2ProductionSiteCost_LCL
        {
            get
            {
                string returnValStr = "";
                if (this.IsLCL)
                {
                    if (this.PointOfDestination2ProductionSiteCost.HasValue)
                    {
                        returnValStr = PointOfDestination2ProductionSiteCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }
        public string PointOfDestination2ProductionSiteCost_FCL
        {
            get
            {
                string returnValStr = "";
                if (!this.IsLCL)
                {
                    if (this.PointOfDestination2ProductionSiteCost.HasValue)
                    {
                        returnValStr = PointOfDestination2ProductionSiteCost.Value.ToString("#0.####");
                    }
                }
                return returnValStr;
            }
        }

        #endregion


    }


    //Xsj20151009:
    partial class TradeMethodTransform : PH.Platform.BO.BaseEntity
    {
        private List<PH.Platform.Misc.BO.Misc_DataDictionary> ddlist
        {
            get
            {
                if (this._ddlist == null)
                {
                    PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

                    this._ddlist = (from val in context.Misc_DataDictionaries
                                    where val.DataType == "PH.BasicInfo.TradeMethod"
                                    select val).ToList();
                }
                return this._ddlist;
            }
        }
        private List<PH.Platform.Misc.BO.Misc_DataDictionary> _ddlist;

        public string TradeMethodFromDesc
        {
            get
            {
                if (this.TradeMethodFrom != null && this.TradeMethodFrom.Trim() != "")
                {
                    var val = this.ddlist.Where(p => p.DataCode == this.TradeMethodFrom).FirstOrDefault();
                    if (val != null)
                    {
                        this._tradeMethodFromDesc = val.DataName;
                    }
                }
                return this._tradeMethodFromDesc;
            }
        }
        private string _tradeMethodFromDesc;


        public string TradeMethodTODesc
        {
            get
            {
                if (this.TradeMethodTO != null && this.TradeMethodTO.Trim() != "")
                {
                    var val = this.ddlist.Where(p => p.DataCode == this.TradeMethodTO).FirstOrDefault();
                    if (val != null)
                    {
                        this._tradeMethodTODesc = val.DataName;
                    }
                }
                return this._tradeMethodTODesc;
            }
        }
        private string _tradeMethodTODesc;
    }

    //Xsj20151009:
    public partial class TradeMethodTransformList : BaseEntityList<TradeMethodTransform, BasicInfoDataContext>
    {
        public IEnumerable<TradeMethodTransform> GetAllTradeMethodTransform()
        {
            var q = from val in CurrentDataContext.TradeMethodTransforms
                    select val;
            return q;
        }
    }

    //Xsj20151009:
    public partial class TradeMethodList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetAllTradeMethod()
        {
            var q = from val in CurrentDataContext.Misc_DataDictionaries
                    where val.DataType == "PH.BasicInfo.TradeMethod"
                    select val;
            return q;
        }
    }


    public partial class TransitPointArea : BaseEntity
    {
    }

    public partial class SupplierRegion : BaseEntity
    {

    }

    public partial class IncotermMasterDB : BaseEntity
    {
        public string OddEvenRowFlag { get; set; }

        public int TotalSupplierShow
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }
                return (CurrentDataContext as BasicInfoDataContext).IncontermsTransits
                    .Where(p => p.SupplierProfile.Active == "1" && (p.SupplierProfile.DeleteFlag ?? false) == false && p.Incoterms == this.Code)
                    .Select(p => p.ERPSupplier).Distinct().Count();
            }
        }
    }

    public partial class TimeFrameIICompany : BaseEntity
    {
        public string PointOfDestinationEN
        {
            get
            {
                return string.Format("{0} & {1}", this.CompanyCode, this.Description);
            }
        }
    }

    public partial class TimeFrameII : BaseEntity
    {

        public string TradeMethodDescShow
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }

                TradeMethod obj = (CurrentDataContext as BasicInfoDataContext).TradeMethods.FirstOrDefault(p => p.TradeCode == this.TradeMethodCde);
                return obj == null ? null : obj.TradeMethodEN;
            }
        }

        public string OddEvenRowFlag { get; set; }
        private TimeFrameIICompany CurrentTimeFrameIICompany
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
                }

                return (CurrentDataContext as BasicInfoDataContext).TimeFrameIICompanies.FirstOrDefault(p => p.CompanyCode == this.StartPoint);

            }
        }

        public string StartPointAddress
        {
            get
            {
                return CurrentTimeFrameIICompany == null ? "" : CurrentTimeFrameIICompany.Address;
            }
        }

        public string StartPointFullDescription
        {
            get
            {
                return CurrentTimeFrameIICompany == null ? "" : CurrentTimeFrameIICompany.Description;
            }
        }
    }

    public partial class TradeMethod : BaseEntity
    {

    }

    public partial class EmailNotify : BaseEntity
    {

    }

    public partial class CoGroupMainDiff : BaseEntity
    {

    }

    public partial class POFormNo : BaseEntity
    {

    }


}
