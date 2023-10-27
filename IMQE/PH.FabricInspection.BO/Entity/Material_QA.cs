using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.FabricInspection.BO
{
    public partial class Material_QA
    {

        private string _MaterialNo;

        private string _SupplierItemNo;

        private string _SupplierCode;

        private string _supplierFullName;

        private System.Nullable<int> _mcount;

        private System.Nullable<decimal> _TotalQty;

        private System.Nullable<decimal> _RefuseQTY;

        private System.Nullable<decimal> _RefusePercent;

        private string _SpreadName1;

        private System.Nullable<decimal> _SpreadQTY1;

        private string _SpreadName2;

        private System.Nullable<decimal> _SpreadQTY2;

        private string _SpreadName3;

        private System.Nullable<decimal> _SpreadQTY3;

        private string _SpreadName4;

        private System.Nullable<decimal> _SpreadQTY4;

        private string _SpreadName5;

        private System.Nullable<decimal> _SpreadQTY5;

        private System.Nullable<decimal> _OtherSpreadQTY;

        private string _PartName1;

        private System.Nullable<decimal> _PartQTY1;

        private string _PartName2;

        private System.Nullable<decimal> _PartQTY2;

        private string _PartName3;

        private System.Nullable<decimal> _PartQTY3;

        private string _PartName4;

        private System.Nullable<decimal> _PartQTY4;

        private string _PartName5;

        private System.Nullable<decimal> _PartQTY5;

        private string _PartName6;

        private System.Nullable<decimal> _PartQTY6;

        private string _PartName7;

        private System.Nullable<decimal> _PartQTY7;

        private string _PartName8;

        private System.Nullable<decimal> _PartQTY8;

        private string _PartName9;

        private System.Nullable<decimal> _PartQTY9;

        private string _PartName10;

        private System.Nullable<decimal> _PartQTY10;

        private System.Nullable<decimal> _OtherPartQTY;

        private System.Nullable<decimal> _ActualQty;

        private System.Nullable<decimal> _MouldTrail;

        private System.Nullable<decimal> _FabricColor;

        public Material_QA()
        {
        }

      
        public string MaterialNo
        {
            get
            {
                return this._MaterialNo;
            }
            set
            {
                if ((this._MaterialNo != value))
                {
                    this._MaterialNo = value;
                }
            }
        }

        public string SupplierItemNo
        {
            get
            {
                return this._SupplierItemNo;
            }
            set
            {
                if ((this._SupplierItemNo != value))
                {
                    this._SupplierItemNo = value;
                }
            }
        }

        
        public string SupplierCode
        {
            get
            {
                return this._SupplierCode;
            }
            set
            {
                if ((this._SupplierCode != value))
                {
                    this._SupplierCode = value;
                }
            }
        }

      
        public string supplierFullName
        {
            get
            {
                return this._supplierFullName;
            }
            set
            {
                if ((this._supplierFullName != value))
                {
                    this._supplierFullName = value;
                }
            }
        }

        
        public System.Nullable<decimal> TotalQty
        {
            get
            {
                return this._TotalQty;
            }
            set
            {
                if ((this._TotalQty != value))
                {
                    this._TotalQty = value;
                }
            }
        }

        public System.Nullable<int> MCount
        {
            get
            {
                return this._mcount;
            }
            set
            {
                if ((this._mcount != value))
                {
                    this._mcount = value;
                }
            }
        }

        
        public System.Nullable<decimal> RefuseQTY
        {
            get
            {
                return this._RefuseQTY;
            }
            set
            {
                if ((this._RefuseQTY != value))
                {
                    this._RefuseQTY = value;
                }
            }
        }

        
        public System.Nullable<decimal> RefusePercent
        {
            get
            {
                return this._RefusePercent;
            }
            set
            {
                if ((this._RefusePercent != value))
                {
                    this._RefusePercent = value;
                }
            }
        }

       
        public string SpreadName1
        {
            get
            {
                return this._SpreadName1;
            }
            set
            {
                if ((this._SpreadName1 != value))
                {
                    this._SpreadName1 = value;
                }
            }
        }

      
        public System.Nullable<decimal> SpreadQTY1
        {
            get
            {
                return this._SpreadQTY1;
            }
            set
            {
                if ((this._SpreadQTY1 != value))
                {
                    this._SpreadQTY1 = value;
                }
            }
        }

       
        public string SpreadName2
        {
            get
            {
                return this._SpreadName2;
            }
            set
            {
                if ((this._SpreadName2 != value))
                {
                    this._SpreadName2 = value;
                }
            }
        }

      
        public System.Nullable<decimal> SpreadQTY2
        {
            get
            {
                return this._SpreadQTY2;
            }
            set
            {
                if ((this._SpreadQTY2 != value))
                {
                    this._SpreadQTY2 = value;
                }
            }
        }

      
        public string SpreadName3
        {
            get
            {
                return this._SpreadName3;
            }
            set
            {
                if ((this._SpreadName3 != value))
                {
                    this._SpreadName3 = value;
                }
            }
        }

      
        public System.Nullable<decimal> SpreadQTY3
        {
            get
            {
                return this._SpreadQTY3;
            }
            set
            {
                if ((this._SpreadQTY3 != value))
                {
                    this._SpreadQTY3 = value;
                }
            }
        }

      
        public string SpreadName4
        {
            get
            {
                return this._SpreadName4;
            }
            set
            {
                if ((this._SpreadName4 != value))
                {
                    this._SpreadName4 = value;
                }
            }
        }

       
        public System.Nullable<decimal> SpreadQTY4
        {
            get
            {
                return this._SpreadQTY4;
            }
            set
            {
                if ((this._SpreadQTY4 != value))
                {
                    this._SpreadQTY4 = value;
                }
            }
        }

       
        public string SpreadName5
        {
            get
            {
                return this._SpreadName5;
            }
            set
            {
                if ((this._SpreadName5 != value))
                {
                    this._SpreadName5 = value;
                }
            }
        }

       
        public System.Nullable<decimal> SpreadQTY5
        {
            get
            {
                return this._SpreadQTY5;
            }
            set
            {
                if ((this._SpreadQTY5 != value))
                {
                    this._SpreadQTY5 = value;
                }
            }
        }

       
        public System.Nullable<decimal> OtherSpreadQTY
        {
            get
            {
                return this._OtherSpreadQTY;
            }
            set
            {
                if ((this._OtherSpreadQTY != value))
                {
                    this._OtherSpreadQTY = value;
                }
            }
        }

       
        public string PartName1
        {
            get
            {
                return this._PartName1;
            }
            set
            {
                if ((this._PartName1 != value))
                {
                    this._PartName1 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY1
        {
            get
            {
                return this._PartQTY1;
            }
            set
            {
                if ((this._PartQTY1 != value))
                {
                    this._PartQTY1 = value;
                }
            }
        }

        
        public string PartName2
        {
            get
            {
                return this._PartName2;
            }
            set
            {
                if ((this._PartName2 != value))
                {
                    this._PartName2 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY2
        {
            get
            {
                return this._PartQTY2;
            }
            set
            {
                if ((this._PartQTY2 != value))
                {
                    this._PartQTY2 = value;
                }
            }
        }

       
        public string PartName3
        {
            get
            {
                return this._PartName3;
            }
            set
            {
                if ((this._PartName3 != value))
                {
                    this._PartName3 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY3
        {
            get
            {
                return this._PartQTY3;
            }
            set
            {
                if ((this._PartQTY3 != value))
                {
                    this._PartQTY3 = value;
                }
            }
        }

       
        public string PartName4
        {
            get
            {
                return this._PartName4;
            }
            set
            {
                if ((this._PartName4 != value))
                {
                    this._PartName4 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY4
        {
            get
            {
                return this._PartQTY4;
            }
            set
            {
                if ((this._PartQTY4 != value))
                {
                    this._PartQTY4 = value;
                }
            }
        }

       
        public string PartName5
        {
            get
            {
                return this._PartName5;
            }
            set
            {
                if ((this._PartName5 != value))
                {
                    this._PartName5 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY5
        {
            get
            {
                return this._PartQTY5;
            }
            set
            {
                if ((this._PartQTY5 != value))
                {
                    this._PartQTY5 = value;
                }
            }
        }

       
        public string PartName6
        {
            get
            {
                return this._PartName6;
            }
            set
            {
                if ((this._PartName6 != value))
                {
                    this._PartName6 = value;
                }
            }
        }

      
        public System.Nullable<decimal> PartQTY6
        {
            get
            {
                return this._PartQTY6;
            }
            set
            {
                if ((this._PartQTY6 != value))
                {
                    this._PartQTY6 = value;
                }
            }
        }

        
        public string PartName7
        {
            get
            {
                return this._PartName7;
            }
            set
            {
                if ((this._PartName7 != value))
                {
                    this._PartName7 = value;
                }
            }
        }

        
        public System.Nullable<decimal> PartQTY7
        {
            get
            {
                return this._PartQTY7;
            }
            set
            {
                if ((this._PartQTY7 != value))
                {
                    this._PartQTY7 = value;
                }
            }
        }

       
        public string PartName8
        {
            get
            {
                return this._PartName8;
            }
            set
            {
                if ((this._PartName8 != value))
                {
                    this._PartName8 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY8
        {
            get
            {
                return this._PartQTY8;
            }
            set
            {
                if ((this._PartQTY8 != value))
                {
                    this._PartQTY8 = value;
                }
            }
        }

        
        public string PartName9
        {
            get
            {
                return this._PartName9;
            }
            set
            {
                if ((this._PartName9 != value))
                {
                    this._PartName9 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY9
        {
            get
            {
                return this._PartQTY9;
            }
            set
            {
                if ((this._PartQTY9 != value))
                {
                    this._PartQTY9 = value;
                }
            }
        }

        
        public string PartName10
        {
            get
            {
                return this._PartName10;
            }
            set
            {
                if ((this._PartName10 != value))
                {
                    this._PartName10 = value;
                }
            }
        }

       
        public System.Nullable<decimal> PartQTY10
        {
            get
            {
                return this._PartQTY10;
            }
            set
            {
                if ((this._PartQTY10 != value))
                {
                    this._PartQTY10 = value;
                }
            }
        }

       
        public System.Nullable<decimal> OtherPartQTY
        {
            get
            {
                return this._OtherPartQTY;
            }
            set
            {
                if ((this._OtherPartQTY != value))
                {
                    this._OtherPartQTY = value;
                }
            }
        }

        
        public System.Nullable<decimal> ActualQty
        {
            get
            {
                return this._ActualQty;
            }
            set
            {
                if ((this._ActualQty != value))
                {
                    this._ActualQty = value;
                }
            }
        }

       
        public System.Nullable<decimal> MouldTrail
        {
            get
            {
                return this._MouldTrail;
            }
            set
            {
                if ((this._MouldTrail != value))
                {
                    this._MouldTrail = value;
                }
            }
        }

       
        public System.Nullable<decimal> FabricColor
        {
            get
            {
                return this._FabricColor;
            }
            set
            {
                if ((this._FabricColor != value))
                {
                    this._FabricColor = value;
                }
            }
        }
    }
}
