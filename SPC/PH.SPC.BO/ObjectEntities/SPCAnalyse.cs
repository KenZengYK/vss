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

namespace PH.SPC.BO
{

    public class SPCAnalyse
    {
        #region 落單成功率分析

        public string ProductCategory { get; set; }
        public int? QuotationStyleCount { get; set; }
        public int? LDStyleCount { get; set; }
        public string QuotationStyleID { get; set; }
        public string LDStyleID { get; set; }

        public decimal LDPercent { 
            get 
            { 
                return (QuotationStyleCount ?? 0) == 0 ? 0 : ((LDStyleCount ?? 0) / (Convert.ToDecimal( QuotationStyleCount ?? 0))); 
            }
            set { value = 0; }
        }

        #endregion

        #region 樣辦如期分析(summary+Detail)

        public string SortID { get; set; }
        public int? FinishedStyleCount { get; set; }
        public int? OntimeStyleCount { get; set; }

        public int? AllVersionStyleCount { get; set; }
        public int? Delay1WeekStyleCount { get; set; }
        public int? Delay2WeekStyleCount { get; set; }
        public int? Delay3WeekStyleCount { get; set; }

        public decimal Delay1WeekStyleCountPer { get { return (AllVersionStyleCount ?? 0) == 0 ? 0 : (Delay1WeekStyleCount ?? 0) / Convert.ToDecimal(AllVersionStyleCount ?? 0); } set { value = 0; } }
        public decimal Delay2WeekStyleCountPer { get { return (AllVersionStyleCount ?? 0) == 0 ? 0 : (Delay2WeekStyleCount ?? 0) / Convert.ToDecimal(AllVersionStyleCount ?? 0); } set { value = 0; } }
        public decimal Delay3WeekStyleCountPer { get { return (AllVersionStyleCount ?? 0) == 0 ? 0 : (Delay3WeekStyleCount ?? 0) / Convert.ToDecimal(AllVersionStyleCount ?? 0); } set { value = 0; } }

        //Detail
        public int? DelayWeekStyleCount { get; set; }
        public string DelayCause { get; set; }
        public string DelayDatas { get; set; }
        
        
        #endregion

      

        #region 樣板制造數量分析(用於成本分析)

        //public string ProductCategory { get; set; }
        public int? SampleMakedQty { get; set; }
        public decimal? LDMakedQty { get; set; }

        public decimal LDMakedPercent { get { return (LDMakedQty ?? 0) == 0 ? 0 : (SampleMakedQty ?? 0) / (LDMakedQty ?? 0); } set { value = 0; } }

        #endregion

        #region 樣辦批核通過率分析

        //public string ProductCategory { get; set; }
        //public string SortID { get; set; }
        public string StyleID { get; set; }
        public int Version { get; set; }

        #endregion

        #region Xsj:20130116  
        //Xsj20130116:款式數量
        public int? StyleCount { get; set; }
        //xsj2013218:做版次數
        public int? MakeSampleTimes { get; set; }
        //Xsj20130225:發單日期
        public DateTime? EditionDate { get; set; }
        //Xsj20130225:預設完成日期
        public DateTime? EditionDueDate { get; set; }
        //Xsj20130225:實際完成日期
        public DateTime? EditionActualDate { get; set; }
        //Xsj20130225:客戶
        public string CustomerID { get; set; }
        //Xsj20130225:開拓辦順序號
        public string SamplerOrderOther { get; set; }
        //Xsj20130225:開拓辦順序號
        public string ShowEditionID { get; set; }       


        #endregion
    }
}
