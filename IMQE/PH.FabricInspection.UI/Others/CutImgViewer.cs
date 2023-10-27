using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    public partial class CutImgViewer : Form
    {
        #region 屬性
        /// <summary>
        /// Xsj:當前截圖
        /// </summary>
        public Image CurrCutImg
        {
            get;
            set;
        }

        /// <summary>
        /// Xsj:是否顯示工具欄
        /// </summary>
        public bool IsShowToolBar
        {
            get
            {
                return this._isShowToolBar;
            }
            set
            {
                this._isShowToolBar = value;
            }
        }
        private bool _isShowToolBar = true;

        #endregion 屬性

        #region 方法

        public CutImgViewer()
        {
            InitializeComponent();
        }

        private void CutImgViewer_Load(object sender, EventArgs e)
        {
            ShowCutImg();
            this.panelTool.Visible = this.IsShowToolBar;
        }

        /// <summary>
        /// Xsj：顯示圖片
        /// </summary>
        private void ShowCutImg()
        {
            if (this.CurrCutImg != null)
            {
                this.pictureEdit_Show.EditValue = this.CurrCutImg;
                this.pictureEdit_Show.Refresh();
            }
        }

        /// <summary>
        /// Xsj:調整窗體盡寸邏輯
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CutImgViewer_Resize(object sender, EventArgs e)
        {
            if (this.pictureEdit_Show.Width > this.CurrCutImg.Width && this.pictureEdit_Show.Height > this.CurrCutImg.Height)
            {
                this.pictureEdit_Show.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Clip;
            }
            else
            {
                this.pictureEdit_Show.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            }
        }

        #endregion 方法 
 
    }
}
