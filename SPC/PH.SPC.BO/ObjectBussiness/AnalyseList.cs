using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Reflection;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.Misc.BO;


namespace PH.SPC.BO
{
    public class AnalyseList
    {
        public static object GetAnalyseDatas(string reportType, string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            switch (reportType)
            {
                case "LDSuccessAnalyseReport"://1
                    return GetLDSuccessSummaryDatas(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                case "LDSuccessAnalyseDetailReport"://2
                    return GetLDSuccessDetailDatas(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                case "SampleApprovalAnalyseReport"://3
                    return GetSampleApprovalDatas(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                case "SampleMakedAnalyseReport"://4
                    return GetSampleMakedtDatas(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                case "SampleMakedAnalyseDetailReport"://4
                    return GetSampleMakedtDetailDatas(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                case "SampleOntimeAnalyseReport"://5
                    return GetSampleOntimeDatas(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                    //return GetSampleOntimeDatasDetail(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                case "SampleOntimeAnalyseDetailReport"://6
                    return GetSampleOntimeDatasDetail(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
                default:
                    return null;
            }
        }

        //落單成功率分析Summay
        public static object GetLDSuccessSummaryDatas(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            string sql = string.Format(@"sp_rpt_LDSuccessAnalyseReport_New '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}' ",
                cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            List<SPCAnalyse> lists = context.ExecuteQuery<SPCAnalyse>(sql).ToList<SPCAnalyse>();
            return lists;
        }

        //落單成功率分析
        public static object GetLDSuccessDetailDatas(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            string sql = string.Format(@"sp_rpt_LDSuccessAnalyseDetailReport_New '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}' ",
                 cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            List<SPCAnalyse> lists = context.ExecuteQuery<SPCAnalyse>(sql).ToList<SPCAnalyse>();
            return lists;
        }

        //樣辦如期分析(summary)
        public static object GetSampleOntimeDatas(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            //ISingleResult<SPCAnalyse> sampleOntimeAnalyses = context.SampleOntimeAnalyse(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
            //return sampleOntimeAnalyses;
            DataTable dt = new DataTable();
            dt = SQLHelper.EXEC_SampleOntimeAnalyse(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
            return dt;
        }

        //樣辦如期分析(Detail)
        public static object GetSampleOntimeDatasDetail(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            DataTable dt = new DataTable();
            dt = SQLHelper.EXEC_SampleOntimeAnalyseDetail(cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            List<SPCAnalyse> aa = new List<SPCAnalyse>();
            foreach (DataRow item in dt.Rows)
            {
                SPCAnalyse obj = new SPCAnalyse();

                obj.SortID = item["SortID"] == null ? "" : item["SortID"].ToString();//	varchar
                obj.FinishedStyleCount = item["FinishedStyleCount"] == null ? 0 : Convert.ToInt32(item["FinishedStyleCount"].ToString());//	int
                obj.OntimeStyleCount = item["OntimeStyleCount"] == null ? 0 : Convert.ToInt32(item["OntimeStyleCount"].ToString()); ;//	int
                obj.DelayWeekStyleCount = item["DelayWeekStyleCount"] == null ? 0 : Convert.ToInt32(item["DelayWeekStyleCount"].ToString()); ;//	int
                obj.StyleID = item["StyleID"] == null ? "" : item["StyleID"].ToString();//	varchar
                obj.DelayCause = item["DelayCause"] == null ? "" : item["DelayCause"].ToString();//	varchar
                obj.DelayDatas = item["DelayDatas"] == null ? "" : item["DelayDatas"].ToString(); ;//	int
                aa.Add(obj);

            }
            return aa;
        }

        ///樣板制造數量分析(用於成本分析)
        public static object GetSampleMakedtDatas(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {

            string sql = string.Format(@"sp_rpt_SampleMakedAnalyse_New '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}'",
                cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 8000;

            List<SPCAnalyse> lists = context.ExecuteQuery<SPCAnalyse>(sql).ToList<SPCAnalyse>();
            return lists;
        }

        //Xsj20130225:樣板制造數量分析(Detail)
        public static object GetSampleMakedtDetailDatas(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {

            string sql = string.Format(@"sp_rpt_SampleMakedAnalyseDetail '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}'",
                cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            List<SPCAnalyse> lists = context.ExecuteQuery<SPCAnalyse>(sql).ToList<SPCAnalyse>();
            return lists;
        }

        //樣辦批核通過率分析
        public static object GetSampleApprovalDatas(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            string sql = string.Format(@"sp_rpt_GetSampleApprovalData_New '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}'",
                 cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            List<SPCAnalyse> lists = context.ExecuteQuery<SPCAnalyse>(sql).ToList<SPCAnalyse>();
            return lists;
        }
    }
}
