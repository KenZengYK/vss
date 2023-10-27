using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;
using PH.MIDc.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.MIDc.UI 
{/*
    /// <summary>
    /// 通用數據查詢窗體。他可以根據BO的ClassType、ColumnView、DataContext和用戶輸入的查詢條件
    /// 產生IQueryable對象。
    /// </summary>
    public partial class QueryForm  : Form
    {
        /// <summary>
        /// 構造函數
        /// </summary>
        public QueryForm()
        {
            InitializeComponent();
        }


        /// <summary>
        /// 應用查詢
        /// </summary>
        /// <returns>根據用戶輸入條件產生的IQueryable對象</returns>
        public IQueryable ApplyQuery()
        {
            if (this.ShowDialog() != DialogResult.OK)
                return null;

            try
            {
                return QueryParameter.DataContext.ExecuteQuery(QueryParameter.BoType, this.SelectSql).AsQueryable();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return null;
        }

        /// <summary>
        /// 初始化查詢參數
        /// </summary>
        ///<param name="queryParameter">數據查詢參數</param>
        public void SetFindParameters(DataQueryParameter  queryParameter)
        {
            ReleaseQueryItems();

            QueryParameter.DataContext = queryParameter.DataContext;
            QueryParameter.View = queryParameter.View;
            QueryParameter.BoType = queryParameter.BoType;
            QueryParameter.WarnRecord = queryParameter.WarnRecord;

            tableName = QueryParameter.DataContext.Mapping.GetTable(QueryParameter.BoType).TableName;
            BuildQueryItems();
        }


        /// <summary>
        /// 數據查詢參數
        /// </summary>
        public DataQueryParameter  QueryParameter
        {
            get
            {
                return _QueryParameter;
            }
        }

        /// <summary>
        /// 表示數據查詢的參數
        /// </summary>
        public class DataQueryParameter 
        {
            public DataQueryParameter ()
            {
                this.WarnRecord = -1;
            }
            /// <summary>
            /// 被查詢BO的Class Type
            /// </summary>
            public Type BoType { get; set; }
            /// <summary>
            /// 被查詢BO所在的DataContext
            /// </summary>
            public DataContext DataContext { get; set; }

            /// <summary>
            /// 顯示查詢結果的ColumnView
            /// </summary>
            //public ColumnView View { get; set; }

            /// <summary>
            /// 最大記錄數。如果返回的結果的記錄數超過這個數量，則給出提示。
            /// 并讓用戶選擇繼續或者更改搜索條件。默認為-1，即不給出提示。
            /// </summary>
            public int WarnRecord { get; set; }
        }
    }*/
}
