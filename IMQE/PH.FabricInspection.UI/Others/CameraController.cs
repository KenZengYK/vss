using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PHCameraController;

namespace PH.FabricInspection.UI
{
    public static class CameraController
    {
        public MyPHCameraController MyCameraController
        {
            get
            {
                if (this._myCameraController == null)
                {
                    this._myCameraController = new MyPHCameraController();
                }
            }
        }
        private PHCameraController.MyPHCameraController _myCameraController;


        public static void PhotoDirecClear()
        {
            #region Xsj2012-04-23:Add 在此發出異步信息，讓客戶端自動清理已被上傳圖片而留下的空文件夾。
            try
            {
                int timeNumber = DateTime.Now.Hour;
                if (timeNumber < 9 && !ImgDirectoryDel.HasDelAtToday)
                {
                    ImgDirectoryDel imgDirDel = new ImgDirectoryDel();
                    System.Threading.Thread imgDelThread = new System.Threading.Thread(new System.Threading.ThreadStart(imgDirDel.ImgDirectoryDelAction));
                    imgDelThread.Start();
                    ImgDirectoryDel.HasDelAtToday = true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("系統在[FrmDefectsSetting_Load]中產生異常，嘗試刪除已被上傳圖片的穿文件夾失敗!\r\n" + ex.ToString());
            }
            #endregion
        }
    }
}
