using System;
using System.Collections.Generic;
using System.Text;

namespace PH.LineBalanceII.BO
{
    /// <summary>
    /// StyleMasterQuery
    /// </summary>
    [Serializable]
    public class StyleMasterQuery  //zrtag: PH.Common.DataAccess.OoDb.IQuery<StyleMaster>
    {
        /// <summary>
        /// 構造函數
        /// </summary>
        public StyleMasterQuery()
        {

        }

        /// <summary>
        /// 構造函數
        /// </summary>
        /// <param name="AKHKH">客戶款號</param>
        /// <param name="APHKH">PH款號</param>
        /// <param name="AZH">組合</param>
        public StyleMasterQuery(string AKHKH, string APHKH, string AZH)
        {
            this._KHKH = AKHKH;
            this._PHKH = APHKH;
            this._ZH = AZH;
        }

        /// <summary>
        /// Check
        /// </summary>
        /// <param name="master">StyleMaster</param>
        /// <returns></returns>
        public bool Check(StyleMaster master)
        {
            if (master == null)
                return false;

            return (master.KHKH == this._KHKH && master.PHKH == this._PHKH && master.ZH == this._ZH);
        }

        private string _KHKH;
        /// <summary>
        /// 客戶款號
        /// </summary>
        public string KHKH
        {
            get
            {
                return _KHKH;
            }

            set
            {
                _KHKH = value;
            }
        }

        private string _PHKH;
        /// <summary>
        /// PH款號
        /// </summary>
        public string PHKH
        {
            get
            {
                return _PHKH;
            }

            set
            {
                _PHKH = value;
            }
        }

        private string _ZH;
        /// <summary>
        /// 組合
        /// </summary>
        public string ZH
        {
            get
            {
                return _ZH;
            }

            set
            {
                _ZH = value;
            }
        }



    }
}
