using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.FabricInspection.BackEnd
{
    public class SpreadDefectProcSolutionByReport
    {
        private string _item_no;
        public string Item_No
        {
            get
            {
                return _item_no;
            }
            set
            {
                _item_no = value;
            }
        }

        private string _Stock_In_Date;
        public string Stock_In_Date
        {
            get
            {
                return _Stock_In_Date;
            }
            set
            {
                _Stock_In_Date = value;
            }
        }
        private string   _QNum;
        public string QNum
        {
            get
            {
                return _QNum;
            }
            set
            {
                _QNum = value;
            }
        }
        private string _KSQty;
        public string KSQty
        {
            get
            {
                return _KSQty;
            }
            set
            {
                _KSQty = value;
            }
        }
        private string _ReturnQty;
        public string ReturnQty
        {
            get
            {
                return _ReturnQty;
            }
            set
            {
                _ReturnQty = value;
            }
        }
        private string _WastageQty;
        public string WastageQty
        {
            get
            {
                return _WastageQty;
            }
            set
            {
                _WastageQty = value;
            }
        }
        private string _SpreadDefect_Name;
        public string SpreadDefect_Name
        {
            get
            {
                return _SpreadDefect_Name;
            }
            set
            {
                _SpreadDefect_Name = value;
            }
        }
        private string _SpreadDefeceSolution;
        public string SpreadDefeceSolution
        {
            get
            {
                return _SpreadDefeceSolution;
            }
            set
            {
                _SpreadDefeceSolution = value;
            }
        }
        private string _Wastage;
        public string Wastage
        {
            get
            {
                return _Wastage;
            }
            set
            {
                _Wastage = value;
            }
        }

        private string _SpreadDefectResult;
        public string SpreadDefectResult
        {
            get
            {
                return _SpreadDefectResult;
            }
            set
            {
                _SpreadDefectResult = value;
            }
        }
        private string _SpreadDefectResult2;
        public string SpreadDefectResult2
        {
            get
            {
                return _SpreadDefectResult2;
            }
            set
            {
                _SpreadDefectResult2 = value;
            }
        }


    }
}
