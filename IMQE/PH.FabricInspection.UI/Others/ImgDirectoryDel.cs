using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace PH.FabricInspection.UI
{
    public class ImgDirectoryDel
    {
        public static bool HasDelAtToday = false;


        string _imgDirectoryPath = new PHCameraController.CameraActionProperty().ClientSavePath;

        protected List<DirectoryMsg> _directoryMsgList = new List<DirectoryMsg>();

        public ImgDirectoryDel()
        { 

        }

        public void ImgDirectoryDelAction()
        {
            string dirPath = this._imgDirectoryPath;
            if (dirPath == null) return;

            GetDirectoryInfoList(0, dirPath);

            if (this._directoryMsgList.Count == 0) return;

            int level = _directoryMsgList.Max(p => p.Level);

            for (int i = level; i > 0; i--)
            {

                List<DirectoryMsg> currDireList = _directoryMsgList.Where(p => p.Level == i).ToList();
                for (int k = currDireList.Count() - 1; k >= 0; k--)
                {
                    DirectoryInfo directList = new DirectoryInfo(currDireList[k].DirePath);
                    if (directList.Exists)
                    {
                        if (directList.GetDirectories().Count() == 0 && directList.GetFiles().Count() == 0)
                        {
                            directList.Delete();
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Xsj:獲取指定文件夾下的所有子文件夾
        /// </summary>
        /// <param name="DirePath"></param>
        public void GetDirectoryInfoList(int Level, string DirePath)
        {
            string direPath = DirePath;
            //檢驗服務器端的連通性
            if (Level == 0)
            {
                //檢測服務器端網絡
                if (!System.IO.Directory.Exists(direPath))
                {
                    //Xsj:刷新界面，標識任務開始 
                    return;
                }
            }
            Level++;
            try
            {
                DirectoryInfo dirInfo = new DirectoryInfo(direPath);
                if (!System.IO.Directory.Exists(direPath)) return;
                DirectoryInfo[] dirInfoArr = dirInfo.GetDirectories();
                foreach (DirectoryInfo item in dirInfoArr)
                {
                    DirectoryMsg currDireMsg = new DirectoryMsg();
                    currDireMsg.Level = Level;
                    currDireMsg.DireInfo = item;
                    _directoryMsgList.Add(currDireMsg);
                    GetDirectoryInfoList(Level, item.FullName);
                }
            }
            catch (Exception ex)
            {
                string errorMsg = "程序在[Process.GetDirectoryInfoList]方法中產生錯誤，獲取任務的操作文件夾路徑伯敗!失敗信息:\r\n" + ex.ToString();
            }
        }


        /// <summary>
        /// Xsj:文件夾信息：
        /// 1.文件夾對應於根文件夾的Level
        /// 2.文件夾的DirectoryInfo對象
        /// </summary>
        public class DirectoryMsg
        {
            /// <summary>
            /// Xsj:文件夾對應於根文件夾的Level
            /// </summary>
            public int Level { get; set; }

            /// <summary>
            /// Xsj:文件夾路徑
            /// </summary>
            public string DirePath
            {
                get
                {
                    return this.DireInfo.FullName;
                }
            }

            /// <summary>
            /// Xsj:文件夾的DirectoryInfo對象
            /// </summary>
            public System.IO.DirectoryInfo DireInfo { get; set; }
        }




    }
}
