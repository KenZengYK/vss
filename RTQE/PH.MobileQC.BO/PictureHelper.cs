using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace PH.MobileQC.BO
{
    public class PictureHelper
    {
        public static Image ResizeImage(Image AImgToResize, Size ASize)
        {
            //获取图片宽度
            int sourceWidth = AImgToResize.Width;
            //获取图片高度
            int sourceHeight = AImgToResize.Height;

            float nPercent = 0;
            float nPercentW = 0;
            float nPercentH = 0;

            //计算宽度的缩放比例
            nPercentW = ((float)ASize.Width / (float)sourceWidth);
            //计算高度的缩放比例
            nPercentH = ((float)ASize.Height / (float)sourceHeight);

            if (nPercentH < nPercentW)
                nPercent = nPercentH;
            else
                nPercent = nPercentW;
            //期望的宽度
            int destWidth = (int)(sourceWidth * nPercent);
            //期望的高度
            int destHeight = (int)(sourceHeight * nPercent);

            Bitmap b = new Bitmap(destWidth, destHeight);
            Graphics g = Graphics.FromImage((System.Drawing.Image)b);
            g.InterpolationMode = InterpolationMode.HighQualityBicubic;

            //绘制图像
            g.DrawImage(AImgToResize, 0, 0, destWidth, destHeight);
            g.Dispose();
            GC.Collect();

            return (System.Drawing.Image)b;
        }
    }
}
