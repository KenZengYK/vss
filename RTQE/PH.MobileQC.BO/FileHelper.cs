using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace PH.MobileQC.BO
{
    /// <summary>
    /// 文件幫助者，用于上傳文件到文件服務器上, 文件服務器默認路徑為：\\10.2.1.74\devdata
    /// </summary>
    public class FileHelper
    {
        static FileHelper()
        {
            Process p = new Process();
            p.StartInfo.FileName = System.Environment.GetEnvironmentVariable("ComSpec");
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.CreateNoWindow = true;
            p.Start();

            
            //string Str = @"net use \\10.2.1.74\devdata /del";
            //因Kang更換新的10.2.1.16服務器地址，add by shulin 220230218
            string Str = @"net use \\10.2.1.16\devdata /del";

            p.StandardInput.WriteLine(Str);
            //Str = @"net use \\10.2.1.74\devdata ""devuser"" /user:devuser";
            Str = @"net use \\10.2.1.16\devdata ""itadm1n"" /user:PHGroup\Devuser";
            p.StandardInput.WriteLine(Str);
            p.StandardInput.WriteLine("exit"); //如果不加这句WaitForExit会卡住
            p.WaitForExit();
            p.Close();
        }

        /// <summary>
        /// 連接文件服務器
        /// </summary>
        /// <returns></returns>
        public static bool ConnectFileServer()
        {
            return true;
        }

        /// <summary>
        /// 得到文件保存的完整路徑，包括文件名
        /// </summary>
        /// <param name="ADir">當前Project在文件服務器使用的子目錄，如需要保存到：\\10.2.1.74\devdata\Defect\目錄下，本參數為：Defect</param>
        /// <returns></returns>
        public static string GetFileSavePath(string ADir)
        {
            
            //return string.Format(@"\\10.2.1.74\devdata\{0}\{1}.jpg", ADir, DateTime.Now.ToString("yyyyMMddHHmmssfff"));
            //因Kang更換新的\\10.2.1.16服務器地址，add by shulin 220230218
            return string.Format(@"\\10.2.1.16\devdata\{0}\{1}.jpg", ADir, DateTime.Now.ToString("yyyyMMddHHmmssfff"));
        }

        /// <summary>
        /// 刪除文件
        /// </summary>
        /// <param name="AFileName">Defect圖片文件的路徑，包括文件名</param>
        public static void DeleteFile(string AFileName)
        {
            try
            {
                System.IO.File.Delete(AFileName);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// 得到文件服務器默認保存路徑：\\10.2.1.74\devdata\
        /// //因Kang更換新的\\10.2.1.16服務器地址，add by shulin 220230218
        /// 
        /// </summary>
        /// <returns></returns>
        public static string GetFileServerPath()
        {
            //return string.Format(@"\\10.2.1.74\devdata\");
            return string.Format(@"\\10.2.1.16\devdata\");
        }
    }
}
