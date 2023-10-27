using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.BO
{
    [Serializable]
    public class MaterialPrintDetail
    {
        private int _id;
        public int ID
        {
            get
            {
                return _id;
            }
            set
            {
                _id = value;
            }
        }

        private string _RatioPriceStr;
        public string RatioPriceStr
        {
            get
            {
                return _RatioPriceStr;
            }
            set
            {
                _RatioPriceStr = value;
            }
        }

        private decimal _price;
        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }

        private string _priceStr;
        public string PriceStr
        {
            get
            {
                _priceStr = ((_colorCategory == null || _colorCategory == "") && _price == 0) ? "" : _price.ToString("0.0000##");
                return _priceStr;
            }
        }

        private int _ratio;
        public int Ratio
        {
            get { return _ratio; }
            set { _ratio = value; }
        }

        private string _colorCategory;
        public string ColorCategory
        {
            get { return _colorCategory; }
            set { _colorCategory = value; }
        }

        private string _CompositionStr;
        public string CompositionStr
        {
            get
            {
                return _CompositionStr;
            }
            set
            {
                _CompositionStr = value;
            }
        }

        private string _composition;
        public string Composition
        {
            get
            {
                return this._composition;
            }
            set
            {
                this._composition = value;
            }
        }

        private decimal _per;
        public decimal Per
        {
            get { return _per; }
            set { _per = value; }
        }

        private string _perStr;
        public string PerStr
        {
            get
            {
                _perStr = ((_composition == null || _composition == "") && _per == 0) ? "" : _per.ToString("0.00");
                return _perStr;
            }
        }

        private string _yarnCount;
        public string YarnCount
        {
            get { return _yarnCount; }
            set { _yarnCount = value; }
        }

        private string _specialTerms;
        public string SpecialTerms
        {
            get { return _specialTerms; }
            set { _specialTerms = value; }
        }

        private string _statusLeadtimeDesc;
        public string StatusLeadtimeDesc
        {
            get
            {
                return _statusLeadtimeDesc;
            }
            set
            {
                _statusLeadtimeDesc = value;
            }
        }

        private string _statusLeadtime;
        public string StatusLeadtime
        {
            get
            {
                return _statusLeadtime;
            }
            set
            {
                _statusLeadtime = value;
            }
        }

        private string _LeadtimeDays;
        public string LeadtimeDays
        {
            get
            {
                return _LeadtimeDays;
            }
            set
            {
                _LeadtimeDays = value;
            }
        }

        public static int PrintDetailSort(MaterialPrintDetail x, MaterialPrintDetail y)
        {
            if (x.ID > y.ID) return 1;
            else if (x.ID < y.ID) return -1;
            else return 0;
        }
    }
}
