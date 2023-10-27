using System;
using System.Collections.Generic;
using System.Text;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;

namespace PH.FabricInspection.BO
{
    public class ImageUtil
    {
        public static byte[] ImageToJpegBytes(Image image)
        {
            if (image == null)
            {
                //throw new NullReferenceException();
                return new byte[0];
            }
            MemoryStream stream = new MemoryStream();
            image.Save(stream, ImageFormat.Jpeg);
            return stream.GetBuffer();
        }

        public static Image JpegBytesToImage(byte[] imageContent)
        {
            if ((imageContent == null) || (imageContent.Length == 0))
            {
                return null;
            }


            Stream stream = new MemoryStream(imageContent);
            return Image.FromStream(stream);

        }

    }
}