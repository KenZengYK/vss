using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.FabricInspection.BO
{
    //Fabric中一些通用处理的帮助类
    public class FabricHelper
    {
        /// <summary>
        /// 将Fabric中一个Audit#中多个Project拼结成一个用指定分隔符分隔的字符串
        /// </summary>
        /// <param name="AProjectList">一个Audit#中所有Project#的集合</param>
        /// <param name="ASeparateSymbol">指定分隔符，如："/"</param>
        /// <returns></returns>
        public static string GetProjectFormatString(List<string> AProjectList, string ASeparateSymbol)
        {
            if (AProjectList.Count == 0) return "";

            List<string> ProjectList = new List<string>();
            foreach (var obj in AProjectList)
            {
                ProjectList.AddRange(obj.Split(new string[] { "\r\n" }, StringSplitOptions.None).ToList());
            }

            return "(" + string.Join(ASeparateSymbol, ProjectList.Distinct().OrderBy(p => p).ToArray<string>()) + ")";
        }
    }

    /// <summary>
    /// Notice报表的类型
    /// </summary>
    public enum NoticeReportTypes
    {
        /// <summary>
        /// 結果通告
        /// </summary>
        ResultNotice,
        /// <summary>
        /// 拒收通知
        /// </summary>
        RejectNotice
    }
}
