using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
/*
 * 
 * Xsj:20111128添加用於操作IQC拍攝的相片
 * 
 * */
namespace PH.FabricInspection.UI
{
    public class Img
    {
        #region 屬性

        /// <summary>
        /// Xsj:操作的圖片
        /// </summary>
        public Image CurrImg
        {
            get
            {
                return this._currImg;
            }
            set
            {
                this._currImg = value;
            }
        }
        private Image _currImg;

        /// <summary>
        /// Xsj:圖片顯示的PictureBox
        /// </summary>
        public DevExpress.XtraEditors.PictureEdit CurrPictureEdit
        {
            get
            {
                return this._currrPictureEdit;
            }
            set
            {
                this._currrPictureEdit = value;
            }
        }
        private DevExpress.XtraEditors.PictureEdit _currrPictureEdit;

        /// <summary>
        /// Xsj:圖片容器的Size
        /// </summary>
        protected Size PicContainerSize
        {
            get
            {
                return this.CurrPictureEdit.Size;
            }
        }

        /// <summary>
        /// Xsj:圖片Size
        /// </summary>
        protected Size PhotoSize
        {
            get
            {
                return this.CurrImg.Size;
            }
        }

        /// <summary>
        /// Xsj:圖片容器的長寬比(Width/Height)
        /// </summary>
        protected decimal PicContainerScale
        {
            get
            {
                if (this._picContainerScale == 0 && !this.PicContainerSize.IsEmpty)
                {
                    this._picContainerScale = Convert.ToDecimal(this.PicContainerSize.Width) / this.PicContainerSize.Height;
                }
                return this._picContainerScale;
            }
        }
        public decimal _picContainerScale = 0;

        /// <summary>
        /// Xsj:圖片的長寬比(Width/Height)
        /// </summary>
        protected decimal PhotoScale
        {
            get
            {
                //    if (this._photoScale == 0 && !this.PhotoSize.IsEmpty)
                //    {
                this._photoScale = Convert.ToDecimal(this.PhotoSize.Width) / this.PhotoSize.Height;
                //}
                return this._photoScale;
            }
        }
        public decimal _photoScale = 0;

        public int ScrollBarHeight
        {
            get;
            set;
        }


        /// <summary>
        /// Xsj:圖片左邊距
        /// </summary>
        protected int PaddingLeft
        {
            get
            {
                if (this.PicContainerScale < this.PhotoScale)
                {
                    return 0;
                }
                else
                {
                    return Convert.ToInt32((this.PicContainerSize.Width - this.PhotoSize.Width * Convert.ToDecimal(this.PicContainerSize.Height) / Convert.ToDecimal(this.PhotoSize.Height)) / 2);
                }
            }
        }

        /// <summary>
        /// Xsj:圖片左邊距
        /// </summary>
        protected int PaddingTop
        {
            get
            {
                if (this.PicContainerScale < this.PhotoScale)
                {
                    return Convert.ToInt32((this.PicContainerSize.Height - this.PhotoSize.Height * Convert.ToDecimal(this.PicContainerSize.Width) / Convert.ToDecimal(this.PhotoSize.Width)) / 2);
                }
                else
                {
                    return 0;
                }
            }
        }

        /// <summary>
        /// Xsj:图片显示区有效尺寸
        /// </summary>
        public Size DisplayRectangle
        {
            get
            {
                return this._displayRectangle;
            }
            set
            {
                this._displayRectangle = value;
            }
        }
        private Size _displayRectangle;



        /// <summary>
        /// Xsj:圖片縮放比例
        /// </summary>
        private decimal ZoonPercent_OnStep
        {
            get
            {
                return this._zoonPercent_OnStep;
            }
            set
            {
                this._zoonPercent_OnStep = value;
            }
        }
        private decimal _zoonPercent_OnStep = 0.1M;


        //Xsj:獲取圖片每次放大/縮小寬度
        private int ZoomWidth_OnStep
        {
            get
            {
                return Convert.ToInt32(this.CurrPictureEdit.Width * this.ZoonPercent_OnStep);
            }
        }

        //Xsj:獲取圖片每次放大/縮小高度
        private int ZoomHeight_OnStep
        {
            get
            {
                return Convert.ToInt32(this.CurrPictureEdit.Height * this.ZoonPercent_OnStep);
            }
        }

        #endregion 屬性

        #region 方法

        #region 圖片剪切

        /// <summary>
        /// Xsj:圖片容器上的點坐標轉換成圖片上的點坐標
        /// </summary>
        public Point PointAtPhoto(Point PointAtPicContainer)
        {
            Point _pointAtPhoto = Point.Empty;
            if (PointAtPicContainer.X < this.PaddingLeft)
            {
                _pointAtPhoto = Point.Empty;
            }
            else if (PointAtPicContainer.Y < this.PaddingTop)
            {
                _pointAtPhoto = Point.Empty;
            }

            int marginLeft = PointAtPicContainer.X - this.PaddingLeft;
            int marginTop = PointAtPicContainer.Y - this.PaddingTop;

            _pointAtPhoto.X = marginLeft * this.PhotoSize.Width / (this.PicContainerSize.Width - this.PaddingLeft * 2);
            _pointAtPhoto.Y = marginTop * this.PhotoSize.Height / (this.PicContainerSize.Height - this.PaddingTop * 2);
            return _pointAtPhoto;
        }

        /// <summary>
        /// Xsj:剪切圖片
        /// </summary>
        public Image CutImg(Point CutFromPoint, Point CutEndPoint)
        {
            Point cutPhotoStartPoint = new Point();
            Point cutPhotoEndPoint = new Point();

            cutPhotoStartPoint = this.PointAtPhoto(CutFromPoint);
            cutPhotoEndPoint = this.PointAtPhoto(CutEndPoint);

            int imgWidth = Math.Abs(cutPhotoStartPoint.X - cutPhotoEndPoint.X);
            int imgHeight = Math.Abs(cutPhotoStartPoint.Y - cutPhotoEndPoint.Y);

            //Xsj:截取和長寬  
            if (imgWidth == 0 || imgHeight == 0)
            {
                return null;
            }

            //Xsj:計算截取的起點(截取區域的左上角座標)
            Point pLeftTop = new Point();
            pLeftTop.X = Math.Min(cutPhotoStartPoint.X, cutPhotoEndPoint.X);
            pLeftTop.Y = Math.Min(cutPhotoStartPoint.Y, cutPhotoEndPoint.Y);

            Rectangle rt = new Rectangle(0, 0, imgWidth, imgHeight);

            //Xsj:開始剪切圖片 
            Bitmap cutBitmap = new Bitmap(imgWidth, imgHeight);
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(cutBitmap);
            g.Clear(Color.Transparent);
            g.DrawImage(this.CurrImg, rt, pLeftTop.X, pLeftTop.Y, imgWidth, imgHeight, GraphicsUnit.Pixel);

            //Xsj:產生顯示圖片
            Image cutImg = Image.FromHbitmap(cutBitmap.GetHbitmap());
            //Xsj:釋放資源
            cutBitmap.Dispose();
            cutBitmap = null;
            g.Dispose();

            //返回圖片 
            return cutImg;
        }

        #endregion 圖片剪切

        #region 圖片縮放

        /// <summary>
        /// Xsj：放大图片
        /// </summary>
        public void ZoonIn()
        {
            if (this.PicContainerScale < this.PhotoScale)
            {
                if (this.CurrPictureEdit.Width <= this.DisplayRectangle.Width)
                {
                    int photoHeight = this.DisplayRectangle.Height;
                    this.CurrPictureEdit.Height = photoHeight;
                    this.CurrPictureEdit.Width = Convert.ToInt32(photoHeight * this.PhotoScale);
                }
                else
                {
                    //Xsj:寬度  
                    this.CurrPictureEdit.Width += ZoomWidth_OnStep;
                    //Xsj:髙度 
                    this.CurrPictureEdit.Height += ZoomHeight_OnStep;
                }
            }
            else
            {
                if (this.CurrPictureEdit.Height <= this.DisplayRectangle.Height)
                {
                    int photoWidth = this.DisplayRectangle.Width;
                    this.CurrPictureEdit.Width = photoWidth;
                    this.CurrPictureEdit.Height = Convert.ToInt32(photoWidth / this.PhotoScale);
                }
                else
                {
                    //Xsj:髙度 
                    this.CurrPictureEdit.Height += ZoomHeight_OnStep;
                    //Xsj:寬度  
                    this.CurrPictureEdit.Width += ZoomWidth_OnStep;
                }
            }
        }


        /// <summary>
        /// Xsj:缩小圖片
        /// </summary>
        public void ZoonOut()
        {
            int newHeight = 0;
            int oldHeight = 0;
            int newWidth = 0;
            int oldWidth = 0;
            oldHeight = this.CurrPictureEdit.Height;
            oldWidth = this.CurrPictureEdit.Width;
            newHeight = this.CurrPictureEdit.Height - ZoomHeight_OnStep;
            newWidth = this.CurrPictureEdit.Width - ZoomWidth_OnStep;
            if (this.PicContainerScale < this.PhotoScale)
            {
                if (this.CurrPictureEdit.Height <= this.DisplayRectangle.Height)
                {
                    this.CurrPictureEdit.Size = this.DisplayRectangle;
                    this.CurrPictureEdit.Top = 0;
                    this.CurrPictureEdit.Left = 0;
                }
                else
                {
                    //Xsj:高度
                    this.CurrPictureEdit.Height = newHeight;
                    //Xsj:寬度  
                    this.CurrPictureEdit.Width = newWidth;
                }
            }
            else
            {
                if (newWidth < this.DisplayRectangle.Width)
                {
                    this.CurrPictureEdit.Size = this.DisplayRectangle;
                    this.CurrPictureEdit.Top = 0;
                    this.CurrPictureEdit.Left = 0;
                }
                else
                {
                    //Xsj:寬度   
                    this.CurrPictureEdit.Width = newWidth;
                    //Xsj:髙度 
                    this.CurrPictureEdit.Height = newHeight;
                }
            }

            //Xsj:坐標
            if (this.CurrPictureEdit.Top < this.DisplayRectangle.Height - this.CurrPictureEdit.Height)
            {
                this.CurrPictureEdit.Top = this.DisplayRectangle.Height - this.CurrPictureEdit.Height;
            }
            else
            {
                this.CurrPictureEdit.Top += (newHeight - oldHeight) / 2;
            }

            if (this.CurrPictureEdit.Left < this.DisplayRectangle.Width - this.CurrPictureEdit.Width)
            {
                this.CurrPictureEdit.Left = this.DisplayRectangle.Width - this.CurrPictureEdit.Width;
            }
            else
            {
                this.CurrPictureEdit.Top += (newWidth - oldWidth) / 2;
            }
        }

        #endregion 圖片縮放

        #region 移動圖片

        //Xsj:移動圖片
        public void ImgMove(Point MoveFromPoint, Point MoveEndPoint)
        {
            //Xsj:計算移動寬度
            int moveWidth = MoveEndPoint.X - MoveFromPoint.X;
            int moveHeight = MoveEndPoint.Y - MoveFromPoint.Y;
            if ((this.CurrPictureEdit.Width - this.DisplayRectangle.Width) > 0)
            {
                //Xsj:計算移動寬度  
                int marginLeft = this.CurrPictureEdit.Left + moveWidth;
                if (marginLeft > 0)
                {
                    this.CurrPictureEdit.Left = 0;
                }
                else if (marginLeft < this.DisplayRectangle.Width - this.CurrPictureEdit.Width)
                {
                    this.CurrPictureEdit.Left = this.DisplayRectangle.Width - this.CurrPictureEdit.Width;
                }
                else
                {
                    this.CurrPictureEdit.Left = marginLeft;
                }
            }
            if ((this.CurrPictureEdit.Height - this.DisplayRectangle.Height) > 0)
            {

                //Xsj:計算移動高度                  
                int marginTop = this.CurrPictureEdit.Top + moveHeight;
                if (marginTop > 0)
                {
                    this.CurrPictureEdit.Top = 0;
                }
                else if (marginTop < this.DisplayRectangle.Height - this.CurrPictureEdit.Height)
                {
                    this.CurrPictureEdit.Top = this.DisplayRectangle.Height - this.CurrPictureEdit.Height;
                }
                else
                {
                    this.CurrPictureEdit.Top = marginTop;
                }

                ////Xsj:計算移動高度  
                //if (this.vScrollBar.Value - moveHeight * this.vScrollBar.Maximum / (this.CurrrPictureEdit.Height - this._availHeight) < 0)
                //{
                //    this.vScrollBar.Value = 0;
                //    this.CurrrPictureEdit.Top = 0;
                //}
                //else if (this.vScrollBar.Value - moveHeight * this.vScrollBar.Maximum / (this.CurrrPictureEdit.Height - this._availHeight) > this.vScrollBar.Maximum)
                //{
                //    this.vScrollBar.Value = this.vScrollBar.Maximum;
                //    this.CurrrPictureEdit.Top = -(this.CurrrPictureEdit.Height - this._availHeight);
                //}
                //else
                //{
                //    this.vScrollBar.Value -= moveHeight * this.vScrollBar.Maximum / (this.CurrrPictureEdit.Height - this._availHeight);
                //    this.CurrrPictureEdit.Top += moveHeight;
                //}
            }
        }
        #endregion

        #endregion 方法
    }



}
