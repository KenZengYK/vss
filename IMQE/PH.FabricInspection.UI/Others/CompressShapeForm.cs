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
    public partial class CompressShapeForm : Form
    {
        //Xsj：原始圖片
        public Image OrgImg
        {
            get
            {
                return this._orgImg;
            }

            set
            {
                this._orgImg = value;
            }
        }
        private Image _orgImg;

        //Xsj:當前壓縮比例
        private int compressPercentage
        {
            get
            {
                int cmpPercent = 100 - this.trackBarCtrl_Compress.Value;
                return cmpPercent == 0 ? 1 : cmpPercent;
            }
        }

        //Xsj:壓縮後圖片
        private Image img
        {
            get
            {
                Image thumbImg = this._orgImg.GetThumbnailImage(this._orgImg.Width * compressPercentage / 100, this._orgImg.Height * compressPercentage / 100
                    , null, IntPtr.Zero);

                this.picEdit_Show.Width = thumbImg.Width;
                this.picEdit_Show.Height = thumbImg.Height;

                return thumbImg;
            }
        }

        public CompressShapeForm()
        {
            InitializeComponent();
        }

        private void CompressShapeForm_Load(object sender, EventArgs e)
        {
            this.picEdit_Show.EditValue = this.img;
            if (this.OrgImg != null)
            {
                this.picEdit_Show.Width = this.img.Width;
                this.picEdit_Show.Height = this.img.Height;

                //System.IO.MemoryStream ms = new System.IO.MemoryStream();
                //Bitmap bmp = (Bitmap)this.img;
                //bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                //long length = ms.Length /8000;
                //this.lblOrigPhotoSize.Text = length.ToString("##0.####");
                //bmp.Dispose();
                //ms.Close();
                //ms.Dispose();
            }
        }

        private void trackBarCtrl_Compress_EditValueChanged(object sender, EventArgs e)
        {
            this.lblCompressPercentage.Enabled = false; 
            this.lblCompressPercentage.Text = this.trackBarCtrl_Compress.Value.ToString();

            this.picEdit_Show.EditValue = this.img;
            this.picEdit_Show.Refresh();

            this.lblCompressPercentage.Enabled = true; 

        }
    }
}
