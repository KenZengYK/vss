using System;
using System.Collections.Generic;
using System.Text;

namespace PH.LineBalanceII.BO
{
    /// <summary>
    /// 衣車類(用於摘要部分工作位統計)
    /// </summary>
    [Serializable]
    public class Summary
    {
        /// <summary>
        /// 構造函數
        /// </summary>
        public Summary()
            : base()
        {
        }

        private string _YCDM;
        /// <summary>
        /// 衣車代碼
        /// </summary>
        public string YCDM
        {
            get
            {
                return _YCDM;
            }

            set
            {
                _YCDM = value;
            }
        }

        private string _YCType;
        /// <summary>
        /// 衣車種類
        /// </summary>
        public string YCType
        {
            get
            {
                return _YCType;
            }

            set
            {
                _YCType = value;
            }
        }

        private int _NoneLBYCCount;
        /// <summary>
        /// 未拆夾衣車數量
        /// </summary>
        public int NoneLBYCCount
        {
            get
            {
                return _NoneLBYCCount;
            }

            set
            {
                _NoneLBYCCount = value;
            }
        }

        private int _CJLBMainAreaYCCount;
        /// <summary>
        /// 拆夾LB(主區數量)
        /// </summary>
        public int CJLBMainAreaYCCount
        {
            get
            {
                return _CJLBMainAreaYCCount;
            }

            set
            {
                _CJLBMainAreaYCCount = value;
            }
        }

        private int _CJLBSupportAreaYCCount;
        /// <summary>
        /// 拆夾LB(支援區數量)
        /// </summary>
        public int CJLBSupportAreaYCCount
        {
            get
            {
                return _CJLBSupportAreaYCCount;
            }

            set
            {
                _CJLBSupportAreaYCCount = value;
            }
        }

        /// <summary>
        /// 拆夾LB總數量 = 主區數量 + 支援區數量
        /// </summary>
        public int CJLBYCCount
        {
            get
            {
                return this.CJLBMainAreaYCCount + this.CJLBSupportAreaYCCount;
            }
        }

        //private int _YHLBMainAreaYCCount;
        /// <summary>
        /// 優化LB(主區數量)
        /// </summary>
        public int YHLBMainAreaYCCount
        {
            get
            {
                //return _YHLBMainAreaYCCount;
                return this.CJLBMainAreaYCCount;
            }

            //set
            //{
            //    _YHLBMainAreaYCCount = value;
            //}
        }

        //private int _YHLBSupportAreaYCCount;
        /// <summary>
        /// 優化LB(支援區數量) 
        /// </summary>
        public int YHLBSupportAreaYCCount
        {
            get
            {
                //return _YHLBSupportAreaYCCount;
                return this.CJLBSupportAreaYCCount;
            }

            //set
            //{
            //    _YHLBSupportAreaYCCount = value;
            //}
        }

        /// <summary>
        /// 優化LB衣車總數 = 主區數量 + 支援區數量) 
        /// </summary>
        public int YHLBYCCount
        {
            get
            {
                return this.YHLBMainAreaYCCount + this.YHLBSupportAreaYCCount;
            }
        }

        //private int _BestLBMainAreaYCCount;
        /// <summary>
        /// 優化LB(主區數量)
        /// </summary>
        public int BestLBMainAreaYCCount
        {
            get
            {
                //return _BestLBMainAreaYCCount;
                return this.CJLBMainAreaYCCount;
            }

            //set
            //{
            //    _BestLBMainAreaYCCount = value;
            //}
        }

        //private int _BestLBSupportAreaYCCount;
        /// <summary>
        /// 優化LB(支援區數量)
        /// </summary>
        public int BestLBSupportAreaYCCount
        {
            get
            {
                //return _BestLBSupportAreaYCCount;
                return this.CJLBSupportAreaYCCount;
            }

            //set
            //{
            //    _BestLBSupportAreaYCCount = value;
            //}
        }

        private int _BestLBFloaterAreaYCCount;
        /// <summary>
        /// 優化LB(尖工區數量)
        /// </summary>
        public int BestLBFloaterAreaYCCount
        {
            get
            {
                return _BestLBFloaterAreaYCCount;
            }

            set
            {
                _BestLBFloaterAreaYCCount = value;
            }
        }

        /// <summary>
        /// 優化LB總數量 = 主區 + 支援區 + 尖工區
        /// </summary>
        public int BestLBYCCount
        {
            get
            {
                return this.BestLBMainAreaYCCount + this.BestLBSupportAreaYCCount + this.BestLBFloaterAreaYCCount;
            }
        }
    }
}
