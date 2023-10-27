using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Linq.Expressions;

namespace PH.SPC.BO
{
    public static class SQLHelper
    {
        public static DataTable EXEC_SP_RPT_SampleProcessingStatus(string cust, string sampleType, int status, string sortID, int phase,
            string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            PH.SPC.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("sp_rpt_SampleProcessingStatus", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SampleType", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SortID", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Phase", SqlDbType.Int));

            da.SelectCommand.Parameters.Add(new SqlParameter("@reqFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@reqTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@createFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@createTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@actFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@actTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@issueFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@issueTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@preFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@preTo", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Customer"].Value = cust;
            da.SelectCommand.Parameters["@SampleType"].Value = sampleType;
            da.SelectCommand.Parameters["@Status"].Value = status;
            da.SelectCommand.Parameters["@SortID"].Value = sortID;
            da.SelectCommand.Parameters["@Phase"].Value = phase;

            da.SelectCommand.Parameters["@reqFrom"].Value = reqFrom;
            da.SelectCommand.Parameters["@reqTo"].Value = reqTo;
            da.SelectCommand.Parameters["@createFrom"].Value = createFrom;
            da.SelectCommand.Parameters["@createTo"].Value = createTo;
            da.SelectCommand.Parameters["@actFrom"].Value = actFrom;
            da.SelectCommand.Parameters["@actTo"].Value = actTo;
            da.SelectCommand.Parameters["@issueFrom"].Value = issueFrom;
            da.SelectCommand.Parameters["@issueTo"].Value = issueTo;
            da.SelectCommand.Parameters["@preFrom"].Value = preFrom;
            da.SelectCommand.Parameters["@preTo"].Value = preTo;

            da.SelectCommand.CommandTimeout = 1500;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static DataTable EXEC_SampleOntimeAnalyse(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            PH.SPC.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("SampleOntimeAnalyse_New", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SampleType", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SortID", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Phase", SqlDbType.Int));

            da.SelectCommand.Parameters.Add(new SqlParameter("@season1", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@season2", SqlDbType.VarChar, 50));

            da.SelectCommand.Parameters.Add(new SqlParameter("@reqFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@reqTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@createFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@createTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@actFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@actTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@issueFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@issueTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@preFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@preTo", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Customer"].Value = cust;
            da.SelectCommand.Parameters["@SampleType"].Value = sampleType;
            da.SelectCommand.Parameters["@Status"].Value = status;
            da.SelectCommand.Parameters["@SortID"].Value = sortID;
            da.SelectCommand.Parameters["@Phase"].Value = phase;

            da.SelectCommand.Parameters["@season1"].Value = season1;
            da.SelectCommand.Parameters["@season2"].Value = season2;

            da.SelectCommand.Parameters["@reqFrom"].Value = reqFrom;
            da.SelectCommand.Parameters["@reqTo"].Value = reqTo;
            da.SelectCommand.Parameters["@createFrom"].Value = createFrom;
            da.SelectCommand.Parameters["@createTo"].Value = createTo;
            da.SelectCommand.Parameters["@actFrom"].Value = actFrom;
            da.SelectCommand.Parameters["@actTo"].Value = actTo;
            da.SelectCommand.Parameters["@issueFrom"].Value = issueFrom;
            da.SelectCommand.Parameters["@issueTo"].Value = issueTo;
            da.SelectCommand.Parameters["@preFrom"].Value = preFrom;
            da.SelectCommand.Parameters["@preTo"].Value = preTo;
            da.SelectCommand.CommandTimeout = 1500;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];


        }

        public static DataTable EXEC_SampleOntimeAnalyseDetail(string cust, string sampleType, int status, string sortID, int phase, string season1, string season2,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            PH.SPC.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(sqlstr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("SampleOntimeAnalyseDetail_New", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SampleType", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
            da.SelectCommand.Parameters.Add(new SqlParameter("@SortID", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Phase", SqlDbType.Int));

            da.SelectCommand.Parameters.Add(new SqlParameter("@season1", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@season2", SqlDbType.VarChar, 50));

            da.SelectCommand.Parameters.Add(new SqlParameter("@reqFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@reqTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@createFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@createTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@actFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@actTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@issueFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@issueTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@preFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@preTo", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Customer"].Value = cust;
            da.SelectCommand.Parameters["@SampleType"].Value = sampleType;
            da.SelectCommand.Parameters["@Status"].Value = status;
            da.SelectCommand.Parameters["@SortID"].Value = sortID;
            da.SelectCommand.Parameters["@Phase"].Value = phase;

            da.SelectCommand.Parameters["@season1"].Value = season1;
            da.SelectCommand.Parameters["@season2"].Value = season2;

            da.SelectCommand.Parameters["@reqFrom"].Value = reqFrom;
            da.SelectCommand.Parameters["@reqTo"].Value = reqTo;
            da.SelectCommand.Parameters["@createFrom"].Value = createFrom;
            da.SelectCommand.Parameters["@createTo"].Value = createTo;
            da.SelectCommand.Parameters["@actFrom"].Value = actFrom;
            da.SelectCommand.Parameters["@actTo"].Value = actTo;
            da.SelectCommand.Parameters["@issueFrom"].Value = issueFrom;
            da.SelectCommand.Parameters["@issueTo"].Value = issueTo;
            da.SelectCommand.Parameters["@preFrom"].Value = preFrom;
            da.SelectCommand.Parameters["@preTo"].Value = preTo;
            da.SelectCommand.CommandTimeout = 1500;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];


        }
    }



    public class FastPropertyComparer<T> : IEqualityComparer<T>
    {
        private Func<T, Object> getPropertyValueFunc = null;

        /// <summary>
        /// 通过propertyName 获取PropertyInfo对象
        /// </summary>
        /// <param name="propertyName"></param>
        public FastPropertyComparer(string propertyName)
        {
            PropertyInfo _PropertyInfo = typeof(T).GetProperty(propertyName,
            BindingFlags.GetProperty | BindingFlags.Instance | BindingFlags.Public);
            if (_PropertyInfo == null)
            {
                throw new ArgumentException(string.Format("{0} is not a property of type {1}.",
                    propertyName, typeof(T)));
            }

            ParameterExpression expPara = Expression.Parameter(typeof(T), "obj");
            MemberExpression me = Expression.Property(expPara, _PropertyInfo);
            getPropertyValueFunc = Expression.Lambda<Func<T, object>>(me, expPara).Compile();
        }

        #region IEqualityComparer<T> Members

        public bool Equals(T x, T y)
        {
            object xValue = getPropertyValueFunc(x);
            object yValue = getPropertyValueFunc(y);

            if (xValue == null)
                return yValue == null;

            return xValue.Equals(yValue);
        }

        public int GetHashCode(T obj)
        {
            object propertyValue = getPropertyValueFunc(obj);

            if (propertyValue == null)
                return 0;
            else
                return propertyValue.GetHashCode();
        }

        #endregion
    }

    /*
     * 
    使用通用FastPropertyComparer比較類：

    var distinctProduct = products.Distinct(new FastPropertyComparer<Product>("Id")).ToList();
     
     * */

}
