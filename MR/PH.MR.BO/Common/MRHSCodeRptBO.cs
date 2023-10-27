using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MR.BO
{
    /*
    * 
    * Xsj:Add for Print MidcHSCodeRpeort
    * 
    * 
    * */
    public class MRHSCodeRptBO
    {
        //Xsj:海關Style合計
        public List<MRHSCodeStyleBO> StyleSummaryList = new List<MRHSCodeStyleBO>();
        //Xsj:海關物料合計
        public List<MRHSCodeSummaryRptBO> SummaryList = new List<MRHSCodeSummaryRptBO>();
        //Xsj:海關物料明細
        public List<MRHSCodeDetailRptBO> DetailList = new List<MRHSCodeDetailRptBO>();
    }
}
