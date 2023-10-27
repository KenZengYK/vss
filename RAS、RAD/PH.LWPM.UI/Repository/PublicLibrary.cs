using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.LWPM.UI.IRepository;
using System.Data.Linq;
using PH.LWPM.BO;
using System.Windows.Forms;
using System.Reflection;

namespace PH.LWPM.UI.Repository
{
    public class PublicLibrary : IPublicLibrary
    {
        public string[] getItems(string type,DataContext context)
        {
            return (context as RAPLQDataContext).BaseCodes.Where(P => P.Type == type).Select(S => S.Name).ToArray();
        }


        public string[] getItems(string type,string[] Code, DataContext context)
        {
            return (context as RAPLQDataContext).BaseCodes.Where(P => P.Type == type&&Code.Contains(P.Code)).Select(S => S.Name).ToArray();
        }

        public Dictionary<string, string> GetCodeName(string type, DataContext context)
        {
            return (context as RAPLQDataContext).BaseCodes.Where(P => P.Type == type).Select(S => new { S.Code, S.Name }).ToDictionary(p=>p.Code,t=>t.Name);
        }


        public string getSelectIndex(string type, string description, string name,DataContext context)
        {
            if (description == null)
            {
                string stra = (context as RAPLQDataContext).BaseCodes.Where(p => p.Type == type && p.Name.Trim() == name).Select(s => s.Description).FirstOrDefault();
                string strb = (context as RAPLQDataContext).BaseCodes.Where(p => p.Type == type && p.Name == name).Select(s => s.Lang).FirstOrDefault();
                StringBuilder sbstr = new StringBuilder();
                if (strb == null || strb == "")
                {

                    sbstr.Append(stra);
                }
                else
                {
                    strb = strb.Trim().ToString();
                    sbstr.Append(stra.Trim());

                    //if (strb == "")
                    //{
                    //    sbstr.Append(stra.Trim());
                    //}
                    //else
                    //{
                    //    sbstr.Append(stra.Trim() + "|" + strb);
                    //}
                }

                return sbstr.ToString();
            }
            else
            {
                return (context as RAPLQDataContext).BaseCodes.Where(p => p.Type == type && p.Description == description).Select(s => s.Name).FirstOrDefault();
            }


        }
        public string getSelectIndex(string type, LangType langtype, string name, DataContext context)
        {
            string str = string.Empty;
            if (name != "")
            {
                switch(langtype)
                {
                    case LangType.En:
                        str = name.Trim();
                        break;
                    case LangType.Chn:
                       str= (context as RAPLQDataContext).BaseCodes.Where(p => p.Type == type && p.Name.Trim() == name).Select(s => s.Description).FirstOrDefault();
                        break;
                    case LangType.Bd:
                        str = (context as RAPLQDataContext).BaseCodes.Where(p => p.Type == type && p.Name.Trim() == name).Select(s => s.NameBd).FirstOrDefault();
                        if (str == "" || str == null)
                        {
                            str = "- -";
                        }
                        break;
                }

            }
            return str;
        }
        public string getSelectIndex(string type, LangType langtype,  string name,string Code,DataContext context)
        {
            string str = string.Empty;
            switch (langtype)
            {
                case LangType.En:
                    str = (context as RAPLQDataContext).BaseCodes.Where(p => p.Type == type && p.Code == Code).Select(s => s.Name).FirstOrDefault();
                   
                 break;

            }
            return str;
        }

        public void ExportXlsSummy(string excelfile,int groupcount,int rowcount)
        {

            //创建Application对象 
            Microsoft.Office.Interop.Excel.Application xApp = new Microsoft.Office.Interop.Excel.ApplicationClass();
            Microsoft.Office.Interop.Excel.Worksheet xSheet;
            Microsoft.Office.Interop.Excel.Workbook xBook;
            try
            {
                xApp.Visible = false;
                //得到WorkBook对象, 可以用两种方式之一: 下面的是打开已有的文件
                xBook = xApp.Workbooks._Open(excelfile,
                Missing.Value, Missing.Value, Missing.Value, Missing.Value
                , Missing.Value, Missing.Value, Missing.Value, Missing.Value
                , Missing.Value, Missing.Value, Missing.Value, Missing.Value);

                //指定要操作的Sheet，两种方式：

                xSheet = (Microsoft.Office.Interop.Excel.Worksheet)xBook.Sheets[1];

                //int groupCount = this.gridView1.GroupCount;
                //this.gridView1.ExpandAllGroups();
                //int rowCount = this.gridView1.RowCount;

                for (int i = rowcount + 1; i >= 1; i--)
                {
                    bool isGroupRow = false;
                    for (int j = 1; j <= groupcount; j++)
                    {
                        Microsoft.Office.Interop.Excel.Range rng2 = (Microsoft.Office.Interop.Excel.Range)xSheet.Cells[i, j];
                        if (rng2.Value2 != null)
                        {
                            isGroupRow = true;
                            break;
                        }
                    }

                    if (!isGroupRow)
                    {
                        Microsoft.Office.Interop.Excel.Range range4 = (Microsoft.Office.Interop.Excel.Range)xSheet.Rows[i, Missing.Value];
                        range4.Delete(Microsoft.Office.Interop.Excel.XlDeleteShiftDirection.xlShiftUp);

                    }
                }

                //保存方式三
                xBook.Save();
            }
            catch 
            {
            }
            finally
            {
                xSheet = null;
                xBook = null;
                xApp.Quit(); //这一句是非常重要的，否则Excel对象不能从内存中退出
                xApp = null;
            }



        }

        /// <summary>
        /// 日期計算
        /// </summary>
        /// <param name="d1"></param>
        /// <param name="d2"></param>
        /// <param name="drf"></param>
        /// <returns></returns>
        public static int[] toResult(DateTime d1, DateTime d2, diffResultFormat drf)
        {
            #region 数据初始化
            DateTime max;
            DateTime min;
            int year;
            int month;
            int tempYear, tempMonth;
            if (d1 > d2)
            {
                max = d1;
                min = d2;
            }
            else
            {
                max = d2;
                min = d1;
            }
            tempYear = max.Year;
            tempMonth = max.Month;
            if (max.Month < min.Month)
            {
                tempYear--;
                tempMonth = tempMonth + 12;
            }
            year = tempYear - min.Year;
            month = tempMonth - min.Month;
            #endregion
            #region 按条件计算
            if (drf == diffResultFormat.dd)
            {
                TimeSpan ts = max - min;
                return new int[] { ts.Days };
            }
            if (drf == diffResultFormat.mm)
            {
                return new int[] { month + year * 12 };
            }
            if (drf == diffResultFormat.yy)
            {
                return new int[] { year };
            }
            return new int[] { year, month };
            #endregion
        }


    }



    /// <summary>
    /// 关于返回值形式的枚举
    /// </summary>
    public enum diffResultFormat
    {
        /// <summary>
        /// 年数和月数
        /// </summary>
        yymm,
        /// <summary>
        /// 年数
        /// </summary>
        yy,
        /// <summary>
        /// 月数
        /// </summary>
        mm,
        /// <summary>
        /// 天数
        /// </summary>
        dd,
    } 



}

//是否直接打開文件
//DialogResult dlg = MessageBox.Show("Do you want to open the file now?", "Open Dialog", MessageBoxButtons.YesNo);
//DialogResult dlg = this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgIfopenfile", "msgIfopenfile");
//if (dlg == DialogResult.Yes)
//{
//    ProcessStartInfo pInfo = new ProcessStartInfo();
//    pInfo.FileName = sfd.FileName;
//    Process p = Process.Start(pInfo);
//}