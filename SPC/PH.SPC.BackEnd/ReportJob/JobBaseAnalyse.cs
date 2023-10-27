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
using PH.SPC.BackEnd.ReportJob;

namespace PH.SPC.BackEnd
{
    public partial class JobBaseAnalyse : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobBaseAnalyse()
        {
            InitializeComponent();

            
            string a =" 1" ;
            //if ( typeof(SampleMakedAnalyseReport).FullName=="" )
            //{ this.editCustomer.Visible = false; }
            //else
            //{ this.checkedComboBoxEdit1.Visible = false; }

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;
            InitValues();
        }

        #region IServerReport Members

        public virtual int CheckDataSource(string parameters)
        {
            //return -1;
            return -1;
        }

        public string Param { get; set; }

        public string Cust { get; set; }
        public string SampleType { get; set; }
        public int Status { get; set; }
        public string SortID { get; set; }
        public int Phase { get; set; }
        public string Season1 { get; set; }
        public string Season2 { get; set; }

        public string ReqFrom { get; set; }
        public string ReqTo { get; set; }
        public string CreateFrom { get; set; }
        public string CreateTo { get; set; }
        public string ActFrom { get; set; }
        public string ActTo { get; set; }
        public string IssueFrom { get; set; }
        public string IssueTo { get; set; }
        public string PreFrom { get; set; }
        public string PreTo { get; set; }
        //public string ReportTypeName { get; set; }

        public Type ReportType { get; set; }

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this.Cust = ss[0];
            this.SampleType = ss[1];
            this.Status = Convert.ToInt32(ss[2]);
            this.SortID = ss[3];
            this.Phase = Convert.ToInt32(ss[4]);
            this.Season1 = ss[5];
            this.Season2 = ss[6];
            this.ReqFrom = ss[7];
            this.ReqTo = ss[8];
            this.CreateFrom = ss[9];
            this.CreateTo = ss[10];
            this.ActFrom = ss[11];
            this.ActTo = ss[12];
            this.IssueFrom = ss[13];
            this.IssueTo = ss[14];
            this.PreFrom = ss[15];
            this.PreTo = ss[16];

            //if (ss.Length > 5)
            //{
            //    this.ReportTypeName = ss[5];
            //    if (!string.IsNullOrEmpty(this.ReportTypeName))
            //        ReportType = Type.GetType(this.ReportTypeName);
            //}

        }


        public virtual DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this.Param = parameters;
            GetValues(parameters);
            if (ReportType == null) 
                return new DevExpress.XtraReports.UI.XtraReport();
            DevExpress.XtraReports.UI.XtraReport report = null;
            report = (DevExpress.XtraReports.UI.XtraReport)Activator.CreateInstance(this.ReportType, parameters);          
            return report;
        }

        public virtual object GetReportDataSource(string parameters)
        {
            GetValues(parameters);

            return PH.SPC.BO.AnalyseList.GetAnalyseDatas(ReportType.Name, Cust, SampleType, Status, SortID, Phase, Season1, Season2, ReqFrom, ReqTo, CreateFrom, CreateTo, ActFrom, ActTo, IssueFrom, IssueTo, PreFrom, PreTo);
        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
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



            //Xsj:構成時間區間：date1~date2
            string[] dateFromArr = new string[] { reqFrom, createFrom, actFrom, issueFrom, preFrom };
            string[] dateToArr = new string[] { reqTo, createTo, actTo, issueTo, preTo };
            string minDate = "", maxDate = "";
            minDate = GetMinOrMaxDateTime(dateFromArr, false);
            maxDate = GetMinOrMaxDateTime(dateToArr, true);



            ApplyValue(ref reqFrom, ref reqTo);
            ApplyValue(ref createFrom, ref createTo);
            ApplyValue(ref actFrom, ref actTo);
            ApplyValue(ref issueFrom, ref issueTo);
            ApplyValue(ref preFrom, ref preTo);

            string season1 = this.edtSeason_From.Text;
            string season2 = this.edtSeason_To.Text;
            ApplyValue(ref season1, ref season2);

            int phase = Convert.ToInt32(this.ccbPhase.EditValue);
            int status = Convert.ToInt32(this.StatusEditor.EditValue);



            string cust;



            if (this.ReportType == typeof(SampleMakedAnalyseReport))
            {
                //cust = checkedComboBoxEdit1.Text;
                cust = ((JobSampleMakedAnalyseReport)this).checkedComboBoxEdit1.Text;
            }
            else
            {
                cust = this.editCustomer.Text;
            }
            //string cust = this.editCustomer.Text;
            if (cust == "---ALL---") cust = "";
            string sampleType = this.cbb_SampleType.Text;

            string sortID = this.ccbSort.Text;
            if (sortID == "---ALL---") sortID = "";

            //string s = string.Format("{0};{1};{2};{3};{4};{5};{6};{7};{8};{9};{10};{11};{12};{13};{14};{15};{16};",
            //    cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);
            

            string s = string.Format("{0};{1};{2};{3};{4};{5};{6};{7};{8};{9};{10};{11};{12};{13};{14};{15};{16};{17};{18}",
                cust, sampleType, status, sortID, phase, season1, season2, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo,minDate ,maxDate);
            //string s = string.Format("{0};{1};{2};{3};{4};", customer, season1, season2, date1, date2);//執行數據源時候需要使用的參數
            return s;
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

        public UserControl ParameterControl(string parameters)
        {
            JobBaseAnalyse ctl = new JobBaseAnalyse();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCustomer.EditValue = paras[0];
                ctl.edtSeason_From.EditValue = paras[1];
                ctl.edtSeason_To.EditValue = paras[2];
                //ctl.editCreateDate_From.EditValue = string.IsNullOrEmpty(paras[3]) ? null : (object)paras[3];
                //ctl.editCreateDate_To.EditValue = string.IsNullOrEmpty(paras[4]) ? null : (object)paras[4];
            }
            return ctl;
        }

        #endregion

        private void InitSeason()
        {
            this.edtSeason_From.Properties.Items.Clear();
            this.edtSeason_To.Properties.Items.Clear();
            PH.SPC.BO.SeasonList list = new PH.SPC.BO.SeasonList();

            //Xsj20130125:為解決重復的SeasonForm/To而注釋掉以下代碼並添加新代碼
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary obj in list.GetAllSeason())
            //{
            //    this.edtSeason_From.Properties.Items.Add(obj.DataName);
            //    this.edtSeason_To.Properties.Items.Add(obj.DataName);
            //}

            List<string> seasonSrtList = list.GetAllSeason().Select(p => p.DataName).Distinct().OrderBy(p=>p).ToList();
            foreach (string seasonItem in seasonSrtList)
            {
                this.edtSeason_From.Properties.Items.Add(seasonItem);
                this.edtSeason_To.Properties.Items.Add(seasonItem);
            }
            //-----End 
        }
        private void InitCustomer()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            var objs = from c in context.Misc_DataDictionaries where c.DataType == "PH.SPC.SampleOrder.Customer" select c;
            int aaa = objs.Count();
            editCustomer.Properties.Items.Clear();
            this.editCustomer.Properties.Items.Add("---ALL---");

            //if (ReportType.Name == "SampleMakedAnalyseReport") { editCustomer.Visible = false; }

            foreach (var item in objs)
            {
                this.editCustomer.Properties.Items.Add(item.DataCode);
                //this.checkedComboBoxEdit1.Properties.Items.Add(item.DataCode);
            }
            this.editCustomer.SelectedIndex = 0;
            //editCustomer.SelectedValueChanged += new EventHandler(cbb_CustCode_SelectedValueChanged);
        }

        private void InitValues()
        {
            InitSeason();
            InitCustomer();
            
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
        
            string cust = editCustomer.Text;            
            if (cust == "---ALL---") cust = "";
            SetSampeTypeValues(cust);
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
    }
}
