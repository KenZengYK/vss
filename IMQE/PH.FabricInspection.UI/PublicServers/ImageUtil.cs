using System;
using System.Collections.Generic;
using System.Text;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;

namespace PH.FabricInspection.UI
{
    public class ImageUtil
    {
        /// <summary>
        ///  Xsj(补)20110926：把Image转成byte[]
        /// </summary>
        /// <param name="image"></param>
        /// <returns></returns>
        public static byte[] ImageToJpegBytes(Image image)
        {
            if (image == null)
            {
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