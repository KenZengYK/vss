using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Data;
using System.Collections.Generic;
using System.Reflection;
using System.Linq;
using System.Linq.Expressions;
using System.ComponentModel;
using System;
using System.Globalization;
using System.IO;
using PH.Platform.BO;

namespace PH.POPC.BO
{
    public class DataAccess
    {
        //static PH.POPC.BO.POPCDataContext m_Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
        static PH.BasicInfo.BO.BasicInfoDataContext m_Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();

        public static SupplierInfo GetSupplierInfo(string ERPSupplier, string PHFactories, string LocationOfSuppFactory, DateTime OrderDate)
        {
            SupplierInfo info = (from a in m_Context.IncontermsTransits
                                 where a.ERPSupplier == ERPSupplier
                                 && a.PHFactories == PHFactories
                                 && a.FromEffectivedDate <= OrderDate
                                 && a.IsLCL == true
                                 && a.LocationofSuppFactory == LocationOfSuppFactory
                                 select new SupplierInfo
                                 {
                                     ERPSupplier = a.ERPSupplier,
                                     FromEffectivedDate = a.FromEffectivedDate,
                                     Incoterms = a.Incoterms,
                                     LocationOfSuppFactory = a.LocationofSuppFactory,
                                     PHFactories = a.PHFactories,
                                     ShipMode = a.TransitMode,
                                     ToEffectivedDate = a.ToEffectivedDate,
                                     TransitFrame = a.TimeFrame,
                                     PointofDestination = a.PointofDestination,
                                     TransitPoint = a.IncotermsPointPort,
                                     EndPoint = null,
                                     EndPointAddress = a.ForwarderAddressEn
                                 }
                        ).FirstOrDefault();

            if (info != null)
            {
                PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey ForPoint = (from a in m_Context.ForPointDeliveryofDestinationPHKeys
                                                                               where a.Code == info.PointofDestination
                                                                               select a).FirstOrDefault();
                if (ForPoint != null)
                {
                    info.EndPoint = string.Format("{0}{1}{0} \\ {2}", "\"", ForPoint.Name, ForPoint.EngDes);
                    info.EndPointAddress = ForPoint.Code != "9" ? ForPoint.ENGAddress : info.EndPointAddress;
                }

            }
            return info;

            //            string sql = string.Format(@"select 
            //a.ERPSupplier
            //,a.PHFactories
            //,a.LocationOfSuppFactory
            //,a.FromEffectivedDate
            //,a.ToEffectivedDate
            //,a.TransitMode as ShipMode
            //,a.Incoterms
            //,IncotermsPointPort as TransitPoint
            //,'{4}'+rtrim(b.Code)+'{4}'+'-'+rtrim(b.EngDes)    as [EndPoint]
            //,rtrim(b.ENGAddress)    as EndPointAddress
            //,TimeFrame as TransitFrame
            //from [PH.BasicInfo].dbo.IncontermsTransit a
            //left join [PH.BasicInfo].dbo.ForPointDeliveryofDestinationPHKey b on a.PointofDestination=b.Code
            //where a.ErPSupplier='{0}'
            //and PHFactories='{1}'
            //and LocationofSuppFactory='{2}'
            //and cast('{3}' as datetime) between FromEffectivedDate and  cast(isnull(ToEffectivedDate,'2100-01-01') as datetime)
            //", ERPSupplier, PHFactories, LocationOfSuppFactory, OrderDate.ToString("yyyy-MM-dd"), "\"");
            //            return m_Context.ExecuteQuery<SupplierInfo>(sql).FirstOrDefault();
        }

        public static SupplierInfo GetSupplierInfo(string ERPSupplier, string PHFactories, string LocationOfSuppFactory, DateTime OrderDate, string TransitMode)
        {
            SupplierInfo info = (from a in m_Context.IncontermsTransits
                                 where a.ERPSupplier == ERPSupplier
                                 && a.PHFactories == PHFactories
                                 && a.FromEffectivedDate <= OrderDate
                                 && a.IsLCL == true
                                 && a.LocationofSuppFactory == LocationOfSuppFactory
                                 && a.TransitMode == TransitMode
                                 select new SupplierInfo
                                 {
                                     ERPSupplier = a.ERPSupplier,
                                     FromEffectivedDate = a.FromEffectivedDate,
                                     Incoterms = a.Incoterms,
                                     LocationOfSuppFactory = a.LocationofSuppFactory,
                                     PHFactories = a.PHFactories,
                                     ShipMode = a.TransitMode,
                                     ToEffectivedDate = a.ToEffectivedDate,
                                     TransitFrame = a.TimeFrame,
                                     PointofDestination = a.PointofDestination,
                                     TransitPoint = a.IncotermsPointPort,
                                     EndPoint = null,
                                     EndPointAddress = a.ForwarderAddressEn
                                 }
                        ).FirstOrDefault();

            if (info != null)
            {
                PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey ForPoint = (from a in m_Context.ForPointDeliveryofDestinationPHKeys
                                                                               where a.Code == info.PointofDestination
                                                                               select a).FirstOrDefault();
                if (ForPoint != null)
                {
                    info.EndPoint = string.Format("{0}{1}{0} \\ {2}", "\"", ForPoint.Name, ForPoint.EngDes);
                    info.EndPointAddress = ForPoint.Code != "9" ? ForPoint.ENGAddress : info.EndPointAddress;
                }

            }
            return info;
        }




        public static List<SuppFactory> GetSuppFactory(string ERPSupplier, string PHFactories, DateTime OrderDate)
        {
            List<SuppFactory> list = (from a in m_Context.IncontermsTransits
                                      from b in m_Context.SupplierFactories
                                      where a.LocationofSuppFactory != string.Empty
                                      && a.ERPSupplier == ERPSupplier
                                      && a.PHFactories == PHFactories
                                      && a.IsLCL == true
                                      && a.FromEffectivedDate <= OrderDate
                                      && a.ERPSupplier == b.ERPSupplier
                                      && a.LocationofSuppFactory == b.SupplierFactoryCode
                                      select new SuppFactory { LocationofSuppFactory = a.LocationofSuppFactory, FactoryDesc = b.Description }).ToList();
            list.Insert(0, new SuppFactory { LocationofSuppFactory = string.Empty, FactoryDesc = string.Empty });
            return list;



            //            string sql = string.Format(@"select LocationOfSuppFactory from   [PH.BasicInfo].dbo.IncontermsTransit 
            //where  isnull(LocationOfSuppFactory,'')<>''
            //and    ErPSupplier='{0}'
            //and    PHFactories='{1}'
            //and    cast('{2}' as datetime) between FromEffectivedDate and  cast(isnull(ToEffectivedDate,'2100-01-01') as datetime)
            //",ERPSupplier, PHFactories, OrderDate.ToString("yyyy-MM-dd"));
            //            return m_Context.ExecuteQuery<string>(sql).ToList();

        }

        public static SupplierInfo GetMIDcSupplierInfo(string ERPSupplier, string PHFactories, string LocationOfSuppFactory, DateTime OrderDate)
        {
            SupplierInfo info = (from a in m_Context.IncontermsTransitForMIDcs
                                 where a.ERPSupplier == ERPSupplier
                                 && a.PHFactories == PHFactories
                                 && a.FromEffectivedDate <= OrderDate
                                 && a.IsLCL == true
                                 && a.LocationofSuppFactory == LocationOfSuppFactory
                                 select new SupplierInfo
                                 {
                                     ERPSupplier = a.ERPSupplier,
                                     FromEffectivedDate = a.FromEffectivedDate,
                                     Incoterms = a.Incoterms,
                                     LocationOfSuppFactory = a.LocationofSuppFactory,
                                     PHFactories = a.PHFactories,
                                     ShipMode = a.TransitMode,
                                     ToEffectivedDate = a.ToEffectivedDate,
                                     TransitFrame = a.TimeFrame,
                                     PointofDestination = a.PointofDestination,
                                     TransitPoint = a.IncotermsPointPort,
                                     EndPoint = null,
                                     EndPointAddress = a.ForwarderAddressEn
                                 }
                        ).FirstOrDefault();

            if (info != null)
            {
                PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey ForPoint = (from a in m_Context.ForPointDeliveryofDestinationPHKeys
                                                                               where a.Code == info.PointofDestination
                                                                               select a).FirstOrDefault();
                if (ForPoint != null)
                {
                    info.EndPoint = string.Format("{0}{1}{0} \\ {2}", "\"", ForPoint.Name, ForPoint.EngDes);
                    info.EndPointAddress = ForPoint.Code != "9" ? ForPoint.ENGAddress : info.EndPointAddress;
                }

            }
            return info;

            //            string sql = string.Format(@"select 
            //a.ERPSupplier
            //,a.PHFactories
            //,a.LocationOfSuppFactory
            //,a.FromEffectivedDate
            //,a.ToEffectivedDate
            //,a.TransitMode as ShipMode
            //,a.Incoterms
            //,IncotermsPointPort as TransitPoint
            //,'{4}'+rtrim(b.Code)+'{4}'+'-'+rtrim(b.EngDes)    as [EndPoint]
            //,rtrim(b.ENGAddress)    as EndPointAddress
            //,TimeFrame as TransitFrame
            //from [PH.BasicInfo].dbo.IncontermsTransit a
            //left join [PH.BasicInfo].dbo.ForPointDeliveryofDestinationPHKey b on a.PointofDestination=b.Code
            //where a.ErPSupplier='{0}'
            //and PHFactories='{1}'
            //and LocationofSuppFactory='{2}'
            //and cast('{3}' as datetime) between FromEffectivedDate and  cast(isnull(ToEffectivedDate,'2100-01-01') as datetime)
            //", ERPSupplier, PHFactories, LocationOfSuppFactory, OrderDate.ToString("yyyy-MM-dd"), "\"");
            //            return m_Context.ExecuteQuery<SupplierInfo>(sql).FirstOrDefault();
        }
        public static List<SuppFactory> GetMIDcSuppFactory(string ERPSupplier, string PHFactories, DateTime OrderDate)
        {
            List<SuppFactory> list = (from a in m_Context.IncontermsTransits  //.IncontermsTransitForMIDcs
                                      from b in m_Context.SupplierFactories
                                      where a.LocationofSuppFactory != string.Empty
                                      && a.ERPSupplier == ERPSupplier
                                      && a.PHFactories == PHFactories
                                      && a.IsLCL == true
                                      && a.FromEffectivedDate <= OrderDate
                                      && a.ERPSupplier == b.ERPSupplier
                                      && a.LocationofSuppFactory == b.SupplierFactoryCode //b.ERPSupplier
                                      select new SuppFactory { LocationofSuppFactory = a.LocationofSuppFactory, FactoryDesc = b.Description }).ToList();
            list.Insert(0, new SuppFactory { LocationofSuppFactory = string.Empty, FactoryDesc = string.Empty });
            return list;



            //string sql = string.Format(@"select LocationOfSuppFactory from   [PH.BasicInfo].dbo.IncontermsTransit 
            //where  isnull(LocationOfSuppFactory,'')<>''
            //and    ErPSupplier='{0}'
            //and    PHFactories='{1}'
            //and    cast('{2}' as datetime) between FromEffectivedDate and  cast(isnull(ToEffectivedDate,'2100-01-01') as datetime)
            //",ERPSupplier, PHFactories, OrderDate.ToString("yyyy-MM-dd"));
            //            return m_Context.ExecuteQuery<string>(sql).ToList();

        }

        public static List<string> GetCustomer()
        {
            string sql = "select distinct FROM [PH.Platform.Misc].[dbo].[Misc_DataDictionary] ";
            List<string> list = m_Context.ExecuteQuery<string>(sql).ToList();

            //string[] list =new string[lists.Count];

            //for (int i=0;i<lists.Count;i++)
            //{
            //    list[i]=lists[i].CustomerCode;

            //}
            return list;
        }

    }


    public class SuppFactory
    {
        public string LocationofSuppFactory { get; set; }
        public string FactoryDesc { get; set; }

    }
    public class SupplierInfo
    {
        public string ERPSupplier { get; set; }
        public string PHFactories { get; set; }
        public string LocationOfSuppFactory { get; set; }
        public System.Nullable<DateTime> FromEffectivedDate { get; set; }
        public System.Nullable<DateTime> ToEffectivedDate { get; set; }
        public string ShipMode { get; set; }
        public string Incoterms { get; set; }
        public string TransitPoint { get; set; }
        public string EndPoint { get; set; }
        public string EndPointAddress { get; set; }
        public System.Nullable<int> TransitFrame { get; set; }
        public string PointofDestination { get; set; }

    }
}
