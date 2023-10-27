using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace PH.BasicInfo.UI
{
    public static class Controller
    {
        public static void PostGridValue(DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            if (view.PostEditor())
            {
                view.HideEditor();
                view.UpdateCurrentRow();
            }
        }
    }

    public class ByteFile
    {
        //打開文件的類型常量

        public const string PdfFileFilter = "PDF 文档(*.PDF)|*.PDF";
        public const string ExcelFileFilter = "Excel 文档(*.xls)|*.xls";
        public const string WordFileFilter = "Word 文档(*.doc)|*.doc";
        public const string TxtileFilter = "文本 文档(*.txt)|*.txt";

        //讀取文件為二進制形式
        public static byte[] ReadFile(string FileName)
        {
            if (System.IO.File.Exists(FileName) == true)
            {
                FileStream fs = new FileStream(FileName, FileMode.Open);
                int length = Convert.ToInt32(fs.Length);
                byte[] bt = new byte[length];
                fs.Position = 0;
                fs.Read(bt, 0, length);
                fs.Close();
                return bt;
            }
            else
            {
                return null;
            }
        }

    }
}
