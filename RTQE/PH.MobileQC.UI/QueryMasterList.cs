using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.UI.CS.DataQuery.MultiCondition;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class QueryMasterList : EnquiryForm
    {

        DataQueryParameter _QueryParameter = new DataQueryParameter();
        public QueryMasterList()
        {
            InitializeComponent();         

        }

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


        //public void SetFindParameters(DataQueryParameter queryParameter)
        //{
        //   // ReleaseQueryItems();

        //    QueryParameter.BoType = typeof(QC_Master_Extend);    //被查詢BO的Class Type
        //    QueryParameter.DataContext = this.context;     //數據查詢使用的DataContext
        //    QueryParameter.View = this.gridView1;             //顯示數據所用的ColumnView
        //    QueryParameter.WarnRecord = 10;

        //   // tableName = QueryParameter.DataContext.Mapping.GetTable(QueryParameter.BoType).TableName;
        //  //  BuildQueryItems();
        //}


        /// <summary>
        /// 數據查詢參數
        /// </summary>
        public DataQueryParameter QueryParameter
        {
            get
            {
                return _QueryParameter;
            }
        }


        /// <summary>
        /// 表示數據查詢的參數
        /// </summary>
        //public class DataQueryParameter
        //{
        //    public DataQueryParameter()
        //    {
        //        this.WarnRecord = -1;
        //    }
        //    /// <summary>
        //    /// 被查詢BO的Class Type
        //    /// </summary>
        //    public Type BoType { get; set; }
        //    /// <summary>
        //    /// 被查詢BO所在的DataContext
        //    /// </summary>
        //    public DataContext DataContext { get; set; }
        //    /// <summary>
        //    /// 顯示查詢結果的ColumnView
        //    /// </summary>
        //    public ColumnView View { get; set; }

        //    /// <summary>
        //    /// 最大記錄數。如果返回的結果的記錄數超過這個數量，則給出提示。
        //    /// 并讓用戶選擇繼續或者更改搜索條件。默認為-1，即不給出提示。
        //    /// </summary>
        //    public int WarnRecord { get; set; }
        //}
    }
}
