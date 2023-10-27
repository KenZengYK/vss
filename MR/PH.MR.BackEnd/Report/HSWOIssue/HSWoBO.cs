using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MR.BackEnd.Report.HSWOIssue
{
    public class HSWoBO
    {
        public string IDO { get; set; }
        public string SalesOrderNO { get; set; }
        public string ProjectNO { get; set; }
        public string GatePass { get; set; }
        public string CustStyle { get; set; }
        public string IssuedDate { get; set; }
        public string WarehouseCode { get; set; }
        public string Company { get; set; }
        public string HSContractID { get; set; }
        public string HSContractNO { get; set; }
        public string WorkNO { get; set; }
        public string HSCodeSeq { get; set; }
        public string HSCode { get; set; }
        public string HSName { get; set; }
        public Decimal IssuedWeightRMB { get; set; }
        public Decimal IssuedWeightOther { get; set; }
        public string Currency { get; set; }
        public string Factory { get; set; } 
    }
}
