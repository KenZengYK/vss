using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.FabricInspection.BO 
{
    public class ImgMsg
    {
        /// <summary>
        /// Xsj:顯示的文字"顯示圖片"/""
        /// </summary>
        public string DisplayText
        {
            get
            {
                return this._displayText;
            }
            set
            {
                this._displayText = value;
            }
        }
        private string _displayText;

        /// <summary>
        /// Xsj:圖片路徑
        /// </summary>
        public string PicPath
        {
            get
            {
                return this._picPath;
            }
            set
            {
                this._picPath = value;
            }
        }
        private string _picPath;

        /// <summary>
        /// Xsj:顯示文字
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return this.DisplayText;
        }
    }
}
