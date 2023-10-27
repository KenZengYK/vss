using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.SPC.BackEnd;

namespace PH.SPC.UI
{
    public partial class QuotationProcessingStatusReportForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public QuotationProcessingStatusReportForm()
        {
            InitializeComponent();
        }

        private void QuotationProcessingStatusReportForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            #region Customer

            var objs = from c in context.Misc_DataDictionaries
                       where c.DataType == "PH.SPC.SampleOrder.Customer"
                       orderby c.DataCode
                       select c;

            this.cbb_CustCode.Properties.Items.Clear();
            this.cbb_CustCode.Properties.Items.Add("---ALL---");
            foreach (var item in objs)
            {
                this.cbb_CustCode.Properties.Items.Add(item.DataCode);
            }
            this.cbb_CustCode.SelectedIndex = 0;
            //cbb_CustCode.SelectedValueChanged += new EventHandler(cbb_CustCode_SelectedValueChanged);
            #endregion

            #region 報價類型
            DictionaryList list2 = new DictionaryList();
            var objs2 = list2.GetDataDictionaryMutiLang("PH.SPC.StyleSortEdition.Sample");

            this.cbb_SampleType.Properties.Items.Clear();
            foreach (var item in objs2)
            {
                this.cbb_SampleType.Properties.Items.Add(item.DataName);
            }
            #endregion

            #region 製版種類
            SetSampeTypeValues("");
            #endregion


        }
        private void SetSampeTypeValues(string customer)
        {
            SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            ISingleResult<GetCustomerSampleOrderSortResult> sampleOrderSortList = context.GetCustomerSampleOrderSort(customer, "SL", "");

            List<string> ss = new List<string>();

            ccbSort.Properties.Items.Clear();
            this.ccbSort.Properties.Items.Add("---ALL---");
            foreach (var obj in sampleOrderSortList)
            {
                string s = ss.Find(delegate(string s1)
                {
                    return s1 == obj.SampleOrderType;
                });
                if (string.IsNullOrEmpty(s))
                {
                    ss.Add(obj.SampleOrderType);
                    this.ccbSort.Properties.Items.Add(obj.SampleOrderType);
                }
            }
            this.ccbSort.Text = "---ALL---";
        }

        private void cbb_CustCode_SelectedValueChanged(object sender, EventArgs e)
        {
            string cust = cbb_CustCode.Text;
            if (cust == "---ALL---") cust = "";
            SetSampeTypeValues(cust);
        }
        private void btnDetail_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string reqFrom = GetDateString(this.editReqFrom);
            string reqTo = GetDateString(this.editReqTo);

            string createFrom = GetDateString(this.dtCreateFrom);
            string createTo = GetDateString(this.dtCreateTo);

            string actFrom = GetDateString(this.dtActFrom);
            string actTo = GetDateString(this.dtActTo);

            string issueFrom = GetDateString(this.dtIssueFrom);
            string issueTo = GetDateString(this.dtIssueTo);

            string preFrom = GetDateString(this.dtPreFrom);
            string preTo = GetDateString(this.dtPreTo);

            ApplyValue(ref reqFrom, ref reqTo);
            ApplyValue(ref createFrom, ref createTo);
            ApplyValue(ref actFrom, ref actTo);
            ApplyValue(ref issueFrom, ref issueTo);
            ApplyValue(ref preFrom, ref preTo);

            int phase = Convert.ToInt32(this.ccbPhase.EditValue);
            int status = Convert.ToInt32(this.StatusEditor.EditValue);

            string cust = this.cbb_CustCode.Text;
            if (cust == "---ALL---") cust = "";
            string sampleType = this.cbb_SampleType.Text;

            string sortID = this.ccbSort.Text;
            if (sortID == "---ALL---") sortID = "";

            QuotationProcessingStatusReport rpt = new QuotationProcessingStatusReport(cust, sampleType, status, sortID, phase, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
            rpt.ShowPreviewDialog();
        }

        private string GetDateString(DevExpress.XtraEditors.DateEdit dateEdit)
        {
            if (dateEdit.EditValue == null) return "";
            else return string.Format("{0:yyyy-MM-dd}", dateEdit.DateTime);
        }
        private void ApplyValue(ref string v1, ref string v2)
        {
            v1 = string.IsNullOrEmpty(v1) ? v2 : v1;
            v2 = string.IsNullOrEmpty(v2) ? v1 : v2;
        }

        private void btnSum_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintSummary();
        }

        private void PrintSummary()
        {
            /*
             * 存儲過程sp_rpt_SampleMakedAnalyse_New的參數
             * 
              @Customer	    VARCHAR(20),
              @SampleType		VARCHAR(20) ,
              @Status		int, 
              @sortID		VARCHAR(20), 
              @phase		int, 
              @season1		VARCHAR(50), 
              @season2		VARCHAR(50), 
              @reqFrom		VARCHAR(10), 
              @reqTo		VARCHAR(10), 
              @createFrom		VARCHAR(10), 
              @createTo		VARCHAR(10), 
              @actFrom		VARCHAR(10), 
              @actTo		VARCHAR(10), 
              @issueFrom		VARCHAR(10), 
              @issueTo		VARCHAR(10), 
              @preFrom		VARCHAR(10), 
              @preTo		VARCHAR(10) 
             * */

            string cust = this.cbb_CustCode.Text;
            if (cust == "---ALL---") cust = "";

            string sampleType = this.cbb_SampleType.Text;

            int status = Convert.ToInt32(this.StatusEditor.EditValue);

            string sortID = this.ccbSort.Text;
            if (sortID == "---ALL---") sortID = "";

            int phase = Convert.ToInt32(this.ccbPhase.EditValue);

            string reqFrom = GetDateString(this.editReqFrom);
            string reqTo = GetDateString(this.editReqTo);

            string createFrom = GetDateString(this.dtCreateFrom);
            string createTo = GetDateString(this.dtCreateTo);

            string actFrom = GetDateString(this.dtActFrom);
            string actTo = GetDateString(this.dtActTo);

            string issueFrom = GetDateString(this.dtIssueFrom);
            string issueTo = GetDateString(this.dtIssueTo);

            string preFrom = GetDateString(this.dtPreFrom);
            string preTo = GetDateString(this.dtPreTo);

            ApplyValue(ref reqFrom, ref reqTo);
            ApplyValue(ref createFrom, ref createTo);
            ApplyValue(ref actFrom, ref actTo);
            ApplyValue(ref issueFrom, ref issueTo);
            ApplyValue(ref preFrom, ref preTo);

            //string season1 = "", season2 = "";

            //Xsj:構成時間區間：date1~date2
            string[] dateFromArr = new string[] { reqFrom, createFrom, actFrom, issueFrom, preFrom };
            string[] dateToArr = new string[] { reqTo, createTo, actTo, issueTo, preTo };
            string date1 = "", date2 = "";
            date1 = GetMinOrMaxDateTime(dateFromArr, false);
            date2 = GetMinOrMaxDateTime(dateToArr, true);



            //string sql = string.Format(@"sp_rpt_SampleMakedAnalyse_New '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}'",
            //    cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            string sql = string.Format(@"sp_rpt_SampleProcessingSummary '{0}','{1}',{2},'{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}'",
               cust, sampleType, status, sortID, phase, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);


            PH.SPC.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            context.CommandTimeout = 300;

            List<SPCAnalyse> lists = context.ExecuteQuery<SPCAnalyse>(sql).ToList<SPCAnalyse>();

            PH.SPC.BackEnd.QuotationProcessingStatusSummaryReport qSummaryRpt = new QuotationProcessingStatusSummaryReport(cust, date1, date2);
            qSummaryRpt.DataSource = lists;
            qSummaryRpt.ShowPreview();
        }


        /// <summary>
        /// Xsj:獲取最小/最大的日期
        /// </summary>
        /// <param name="DateStrArr"></param>
        /// <returns></returns>
        private string GetMinOrMaxDateTime(string[] DateStrArr, bool IsMax)
        { 
            string dateStr = "";
            dateStr = DateStrArr[0];
            for (int i = 1; i < DateStrArr.Length; i++)
            {
                if (DateStrArr[i] == null || DateStrArr[i] == "")
                {
                    continue;
                }
                if (dateStr == null || dateStr == "")
                {
                    dateStr = DateStrArr[i];
                }
                else
                {
                    int flag = DateTime.Compare(Convert.ToDateTime(dateStr), Convert.ToDateTime(DateStrArr[i]));
                    if (IsMax)
                    {
                        if (flag == -1)
                        {
                            dateStr = DateStrArr[i];
                        }
                    }
                    else
                    {
                        if (flag == 1)
                        {
                            dateStr = DateStrArr[i];
                        }
                    }
                }
            }
            return dateStr;
        }
    }
}
