///============================================================================
///Builder:Yunyi
///Build Date :2008-08-15
///Description:
///============================================================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.FabricInspection.BO
{
    /// <summary>
    /// 疵点数据
    /// </summary>
    public class DefectNumber
    {
        public DefectNumber(string sMCode,string name,decimal number)
        {

            this._Name = name;
            this._Number = number;
            this._SMCode = sMCode;//供应商或物料编号
        }
        public DefectNumber(string name, decimal number)
        {

            this._Name = name;
            this._Number = number;
           
        }
        private string _SMCode;
        private string _Name;
        private decimal _Number;

        /// <summary>
        /// 供应商或物料编号
        /// </summary>
        public string SMCode
        {
            get
            {
                return this._SMCode;
            }
            set
            {
                this._SMCode = value;
            }
        }

        public string Name
        {
            get
            {
                return this._Name; 
            }
            set
            { 
                this._Name=value; 
            }
        }

        public decimal Number
        {
            get
            {
               return this._Number ;
            }
            set 
            {
                this._Number = value ;
            }
        }
    }
}
