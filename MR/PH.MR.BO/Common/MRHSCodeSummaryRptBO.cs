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
    public class MRHSCodeSummaryRptBO
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
 

        public int StyleHSCodeSeq
        {
            get;
            set;
        }
        public int StyleHSCodeIndexValue
        {
            get;
            set;
        }
        public String StyleHSCode
        {
            get;
            set;
        }
        public String StyleType
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
        public String StyleHSUnit
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
        public int ItemHSCodeSeq
        {
            get;
            set;
        }
        public int ItemHSCodeIndexValue
        {
            get;
            set;
        }
        public String ItemHSCode
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
        public decimal SalesOrderItemTotalWeight
        {
            get;
            set;
        }
        public decimal SalesOrderWastage
        {
            get;
            set;
        }

        public decimal SalesOrderItemTotalNetWeight
        {
            get;
            set;
        }
        public decimal SalesOrderItemNetWeightPer
        {
            get;
            set;
        }
        public decimal SalesOrderItemTotalWeightPer
        {
            get;
            set;
        }
        //Xsj20160629:物料購買幣別
        public string Currency
        {
            get;
            set;
        }
    }
}
