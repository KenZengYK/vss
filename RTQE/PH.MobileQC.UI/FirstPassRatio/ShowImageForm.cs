using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class ShowImageForm : DevExpress.XtraEditors.XtraForm
    {
        public ShowImageForm(string AImgUrl)
        {
            InitializeComponent();

            //���s�DƬ�󣬌�Դ�ς����ļ�copy������һ��Ŀ�MobileQCPics_Small�У�������@ʾʹ��
            //Image img_Big = Image.FromFile(@"\\10.2.1.53\MobileQCPics\" + AImgUrl);
            //Image img_Samll = PictureHelper.ResizeImage(img_Big, new Size(54 * 15, 45 * 15));
            //Image img_Samll = PictureHelper.ResizeImage(img_Big, new Size(54 * 15, 45 * 15));
            //pictureEdit1.Image = img_Samll;

            pictureEdit1.Image = Image.FromFile(@"\\10.2.1.53\MobileQCPics\" + AImgUrl);



        }

    }
}