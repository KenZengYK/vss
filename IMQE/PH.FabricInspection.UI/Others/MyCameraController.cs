using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PHCameraController;

namespace PH.FabricInspection.UI
{
    public class MyCameraController
    {
        /// <summary>
        /// Xsj20121221:能守single Ton模式，实例化相机控制器
        /// </summary>
        public static PHCameraController.MyPHCameraController CameraController
        {
            get
            {
                if (_cameraController == null)
                {
                    _cameraController = new PHCameraController.MyPHCameraController(1);
                }
                return _cameraController;
            }
            set
            {
                _cameraController = value;
            }
        }
        private static PHCameraController.MyPHCameraController _cameraController;
 
        /// <summary>
        /// Xsj20121220:没置当前操作的图片保存路径
        /// </summary>
        /// <param name="SavePath"></param>
        public static void SetPhotoSavePath(List<string> SavePath)
        {
            CameraController.SetPhotoSavePath(SavePath); 
        }

        /// <summary>
        /// Xsj20121220:清除当前操作的图片保存路径
        /// </summary>
        /// <param name="SavePath"></param>
        public static void ClearPhotoSavePath()
        {
            CameraController.ClearPhotoSavePath();
        }

        /// <summary>
        /// Xsj:异步清理空图片文件夹
        /// </summary>
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
                System.Windows.Forms.MessageBox.Show("系統在[FrmDefectsSetting_Load]中產生異常，嘗試刪除已被上傳圖片的穿文件夾失敗!\r\n" + ex.ToString());
            }
            #endregion
        }


    }
}
