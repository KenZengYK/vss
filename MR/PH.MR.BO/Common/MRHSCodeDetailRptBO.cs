using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MR.BO
{
    /*
     * 
     * Xsj:Add for Print MidcHSCodeByMRDetailReort
     * 
     * 
     * */
    public class MRHSCodeDetailRptBO
    {
        //Xsj:以下字段打印海關物料外發用-------------

        public string ProjectNO
        {
            get;
            set;
        }
        public string WONO
        {
            get;
            set;
        }
        public string Fty
        {
            get;
            set;
        }
        public DateTime? IssueDate
        {
            get;
            set;
        }

        //------------------End----------------------


        public String Customer
        {
            get;
            set;
        }
        public String SalesOrder
        {
            get;
            set;
        }
        public String PHStyleNo
        {
            get;
            set;
        }
        public String StyleType
        {
            get;
            set;
        }
        public int StyleHSCodeSeq
        {
            get;
            set;
        }
        public String StyleHSCode
        {
            get;
            set;
        }
        public String StyleName
        {
            get;
            set;
        }
        public String StyleHSName
        {
            get;
            set;
        }
        public String StyleHSDesc
        {
            get;
            set;
        }
        public string StyleHSUnit
        {
            get;
            set;
        }
        public string ProductUnit
        {
            get;
            set;
        }

        public int ProductQty
        {
            get;
            set;
        }

        public int ProductQty_Purchase
        {
            get;
            set;
        }

        public decimal ProductWeightPer
        {
            get;
            set;
        }
        public String PHItemNO
        {
            get;
            set;
        }
        public int ItemHSCodeSeq
        {
            get;
            set;
        }
        public String ItemHSCode
        {
            get;
            set;
        }
        public String ItemName
        {
            get;
            set;
        }
        public String ItemHSName
        {
            get;
            set;
        }
        public String ItemHSDesc
        {
            get;
            set;
        }
        public string ItemHSUnit
        {
            get;
            set;
        }
        public decimal ItemWeightPer
        {
            get;
            set;
        }
        public int TotalMRQty
        {
            get;
            set;
        }
        public decimal WeightHsCode
        {
            get;
            set;
        }
        public decimal MRPer
        {
            get;
            set;
        }
        public decimal TotalWeight
        {
            get;
            set;
        }
        public string PHUnit
        {
            get;
            set;
        }
        public string Currency
        {
            get;
            set;
        }
        public string IsPurchaseItem
        {
            get;
            set;
        }
        public decimal FabricRate
        {
            get;
            set;
        }
        public decimal Wastage
        {
            get;
            set;
        }
        public decimal ItemNetWeight
        {
            get;
            set;
        }

    }


    public class IssueSummaryRptBO
    {
        public int HSCodeSeq
        {
            get;
            set;
        }
        public String HSCode
        {
            get;
            set;
        }
        public String HSName
        {
            get;
            set;
        }
        public decimal IssuedWeightOther
        {
            get;
            set;
        }
        public decimal IssuedWeightRMB
        {
            get;
            set;
        }
    }

}
