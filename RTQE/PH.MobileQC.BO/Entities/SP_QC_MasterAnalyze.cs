using System;
using System.Linq;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Data;
using System.Configuration;
using System.Reflection;
using System.Xml;

namespace PH.MobileQC.BO
{
    [Table(Name = "")]
    public class SP_QC_MasterAnalyz : PH.Platform.BO.BaseEntity
    {
        public string WFID
        { get; set; }
        public string OptCode
        { get; set; }
        public string CheckQty
        { get; set; }
        public string P
        { get; set; }
        public string F
        { get; set; }
        public string U
        { get; set; }
        public string S
        { get; set; }
        public string CP
        { get; set; }
        public string EV
        { get; set; }
        public string MA
        { get; set; }
        public string WS
        { get; set; }
        public string Other
        { get; set; }
        public string OPTName
        { get; set; }
        public string WFHame
        { get; set; } 
    }
}
