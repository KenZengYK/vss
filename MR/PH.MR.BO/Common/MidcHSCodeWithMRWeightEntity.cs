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

    public class MidcHSCodeWithMRWeightEntity
    {
        public List<MidcHSCodeWithMRWeightSummaryHeaderEntity> SummaryList
        {
            get;
            set;
        }

        public List<MidcHSCodeWithMRWeightSummaryDetailEntity> DetailList
        {
            get;
            set;
        }
    }


    public class MidcHSCodeWithMRWeightSummaryHeaderEntity
    {
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
        //public String ItemNo
        //{
        //    get;
        //    set;
        //}
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
        //public int StyleHSCodeProductQty
        //{
        //    get;
        //    set;
        //}
        //public decimal WeightHSCode
        //{
        //    get;
        //    set;
        //}
        //public decimal ItemTotalWeight
        //{
        //    get;
        //    set;
        //}
        public decimal ItemWeightPerProduct
        {
            get;
            set;
        }
    }



    public class MidcHSCodeWithMRWeightSummaryDetailEntity
    { 
        public String StyleNo
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
        public int ProductQty
        {
            get;
            set;
        }


        public String ItemNo
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
        public decimal WeightPer
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
    }




}
