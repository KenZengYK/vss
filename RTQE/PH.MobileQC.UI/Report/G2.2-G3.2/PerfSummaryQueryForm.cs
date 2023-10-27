using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using System.Globalization;

namespace PH.MobileQC.UI.CustQC
{
    public partial class PerfSummaryQueryForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        List<string> CustList = new List<string>();
       
        public PerfSummaryQueryForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {

            base.DataBind();

            string SqlStr = "select distinct Customer  from CustQCMaster where isnull(Customer,'') <> '' order by Customer";            
            CustList.Add("");
            CustList.AddRange(db.ExecuteQuery<string>(SqlStr).ToList());
            this.cbCustomer.Properties.Items.AddRange(CustList);
            this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
        }

        //private void cbCustomer_SelectedValueChanged(object sender, EventArgs e)
        //{
        //    if (cbCustomer.Text != "")
        //    {
        //        this.cbFactory.Text = "";
        //    }
        //}

        //private void cbFactory_SelectedValueChanged(object sender, EventArgs e)
        //{
        //    if (this.cbFactory.Text != "")
        //    {
        //        this.cbCustomer.Text = "";
                
        //    }
        //}

        DateTime Date1 = DateTime.MinValue;
        DateTime Date2 = DateTime.MinValue;
        DateTime Date3 = DateTime.MinValue;
        DateTime Date4 = DateTime.MinValue;
        List<DateTime> DataTimeList = new List<DateTime>();
        DateTime StartDate = DateTime.MinValue;
        DateTime DueDate = DateTime.MinValue;

        private void btnPreview_Click(object sender, EventArgs e)
        {        
            if (this.CheckInputData())
            {
                //DateTime StartDate = this.deStartDate.DateTime.Date;
                //DateTime DueDate = this.deDueDate.DateTime.Date;                 
                //if (this.rgByWeekOrMonth.Text == "ByWeek")
                //{
                //    int Week = (int)deStartDate.DateTime.DayOfWeek; //获取当前日期为周几
                //    StartDate = this.deStartDate.DateTime.AddDays(1 - Week);     //本周一
                //    DueDate = this.deDueDate.DateTime.AddDays(1 - (int)this.deDueDate.DateTime.DayOfWeek + 6);   //結束日期那一周的周日，但取數時只取到周六的數據                  
                //}
                //else //选择ByMonth情况
                //{
                //    StartDate = deStartDate.DateTime.AddDays(1 - deStartDate.DateTime.Day); //获取开始日期的当前月份的第一天
                //    DueDate = deDueDate.DateTime.AddDays(1 - deDueDate.DateTime.Day).AddMonths(1).AddDays(-1);//获取结束日期的当前月份的最后一天
                //}            

                DateTime StartDate = DataTimeList.Min();
                DateTime DueDate = DataTimeList.Max();

                string SqlStr = "exec sp_CustQCPerformceSummaryReport '{0}', '{1}', '{2}', '{3}', '{4}'";
                string Factory = this.cbFactory.Text == "CN(SL+RX)" ? "CN" : this.cbFactory.Text;


                string ByWeekOrMonth = this.rgByWeekOrMonth.Text == "ByWeek" ? "每周" : "每月";
                //string ByFtyOrCusText = this.cbCustomer.Text == "" ? Factory : this.cbCustomer.Text;
                //string ByFtyOrCusHeader = this.cbCustomer.Text == "" ? (this.cbFactory.Text == "CN(SL+RX+GG)" ? "區" : "工廠") : "客戶";

                DevExpress.XtraReports.UI.XtraReport RptALL=new DevExpress.XtraReports.UI.XtraReport();
                RptALL.CreateDocument();

                if (cbFactory.Text == "" && cbCustomer.Text == "")
                {
                    foreach (var Custname in CustList.Where(p => p != ""))
                    //for (int i = 1; i <= CustList.Where(p => p != "").Count(); i++)
                    {

                        SqlStr = string.Format(SqlStr, this.rgByWeekOrMonth.Text, Factory, Custname, StartDate.Date, DueDate.Date);
                        List<sp_CustQCPerformceSummaryReportResult> lists = db.ExecuteDataSet(SqlStr, new DataSet(), "Opt").Tables[0].AsEnumerable().Select
                       (dr => new sp_CustQCPerformceSummaryReportResult()
                       {
                           Week = this.rgByWeekOrMonth.Text == "ByWeek" ? dr["Week"].ToString() : dr["Month"].ToString(),
                           ExamLotQty = Convert.ToInt32(dr["ExamLotQty"].ToString()),
                           PassLotQty = Convert.ToInt32(dr["PassLotQty"].ToString()),
                           LotFPY = Convert.ToDouble(dr["LotFPY"].ToString()),
                           ExamQty = Convert.ToInt32(dr["ExamQty"].ToString()),
                           PassShipmentQty = Convert.ToInt32(dr["PassShipmentQty"].ToString()),
                           FPY = Convert.ToDouble(dr["FPY"].ToString())
                       }
                       ).ToList();

                        AQLControlPerf_Summarywithdiagram RptName = new AQLControlPerf_Summarywithdiagram(ByWeekOrMonth, "", Custname, lists);
                        if (lists.Count > 0)
                        {
                            RptName.CreateDocument();
                            RptALL.Pages.AddRange(RptName.Pages);
                        }
                    }
                    RptALL.ShowPreview();
                }
                else 
                {
                    SqlStr = string.Format(SqlStr, this.rgByWeekOrMonth.Text, Factory, this.cbCustomer.Text, StartDate.Date, DueDate.Date);
                    List<sp_CustQCPerformceSummaryReportResult> lists = db.ExecuteDataSet(SqlStr, new DataSet(), "Opt").Tables[0].AsEnumerable().Select
                   (dr => new sp_CustQCPerformceSummaryReportResult()
                   {
                       Week = this.rgByWeekOrMonth.Text == "ByWeek" ? dr["Week"].ToString() : dr["Month"].ToString(),
                       ExamLotQty = Convert.ToInt32(dr["ExamLotQty"].ToString()),
                       PassLotQty = Convert.ToInt32(dr["PassLotQty"].ToString()),
                       LotFPY = Convert.ToDouble(dr["LotFPY"].ToString()),
                       ExamQty = Convert.ToInt32(dr["ExamQty"].ToString()),
                       PassShipmentQty = Convert.ToInt32(dr["PassShipmentQty"].ToString()),
                       FPY = Convert.ToDouble(dr["FPY"].ToString())
                   }
                   ).ToList();

                    //string ByWeekOrMonth = this.rgByWeekOrMonth.Text == "ByWeek" ? "每周" : "每月";
                    //string ByFtyOrCusText = this.cbCustomer.Text == "" ? Factory : this.cbCustomer.Text;
                    //string ByFtyOrCusHeader = this.cbCustomer.Text == "" ? (this.cbFactory.Text == "CN(SL+RX+GG)" ? "區" : "工廠") : "客戶";

                    AQLControlPerf_Summarywithdiagram RptName = new AQLControlPerf_Summarywithdiagram(ByWeekOrMonth, Factory, this.cbCustomer.Text, lists);
                    RptName.ShowPreview();
                }            
                // ALTER PROCEDURE [dbo].[sp_CustQCPerformceSummaryReport]
                //@ByMonthOrWeek varchar(20),  -- By Month或By Week匯總， 參數傳入：ByMonth或ByWeek
                //@Factory       varchar(20),  -- CL、SL、RX、GG、CN(包括SL、RX、GG)，傳入本參數則按Factory匯總，@Customer參數傳入空值
                //@Customer      varchar(20),  -- 客人代號, 傳入本參數則按Customer匯總，@Factory參數則傳入空值
                //@StartDate     datetime,     -- 開始日期
                //@EndDate       datetime      -- 截止日期
            }

        }

        public bool CheckInputData()
        {
            if (this.deStartDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please chosen start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deStartDate.Focus();
                return false;
            }

            if (this.deDueDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please chosen due date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deDueDate.Focus();
                return false;
            }

            if (Date1 > Date3)
            {
                MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.deDueDate.Focus();
                return false;
            }
            else
            {
                if (deDueDate.DateTime.Year == deStartDate.DateTime.Year)
                {
                    if (this.rgByWeekOrMonth.SelectedIndex == 1)
                    {
                        if (this.deDueDate.DateTime.Month < this.deStartDate.DateTime.Month)
                        {
                            MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            this.deDueDate.Focus();
                            return false;
                        }
                    }

                    if (this.rgByWeekOrMonth.SelectedIndex == 0)
                    {
                        if ((deDueDate.EditValue != null && !string.IsNullOrEmpty(deDueDate.EditValue.ToString())) || (deStartDate.EditValue != null && !string.IsNullOrEmpty(deStartDate.EditValue.ToString())))
                        {
                            if (DayfWeek(deDueDate.DateTime) < DayfWeek(deStartDate.DateTime))
                            {
                                MessageBox.Show("The due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                                this.deDueDate.Focus();
                                return false;
                            }
                        }
                    }
                }
            }

            return true;
            //if (string.IsNullOrEmpty(this.cbFactory.Text) || string.IsNullOrEmpty(this.cbCustomer.Text))
            //{     
            //        MessageBox.Show("Please chosen factory or customer", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return false;                   
            //}

         

        }

        public int DayfWeek(DateTime StartDt ) 
        {
            System.Globalization.GregorianCalendar gc = new System.Globalization.GregorianCalendar();
            return gc.GetWeekOfYear(StartDt, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Monday);             
        }


        public void SetDateEditShowMode(DateEditWorkMode ADateEditWorkMode)
        {
            this.deStartDate.SetWorkMode(ADateEditWorkMode);
            this.deDueDate.SetWorkMode(ADateEditWorkMode);
        }

        private void rgByWeekOrMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.rgByWeekOrMonth.SelectedIndex == 0)
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
            }
            else if (this.rgByWeekOrMonth.SelectedIndex == 1)
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByMonth);
            }
        }

        List<string> FactoryList = new List<string>();
        private void deStartDate_EditValueChanged(object sender, EventArgs e)
        {
            GetCustData();
        }

        private void deDueDate_EditValueChanged(object sender, EventArgs e)
        {
            GetCustData(); 
        }

        private void cbFactory_EditValueChanged(object sender, EventArgs e)
        {
            GetCustData(); 
        }

        public void GetDataTime() 
        {
            if (this.rgByWeekOrMonth.SelectedIndex == 0)
            {
                DataTimeList.Clear();

                this.deStartDate.GetDate(DateEditWorkMode.ByWeek, out Date1, out Date2);
                this.deDueDate.GetDate(DateEditWorkMode.ByWeek, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);
                DataTimeList.Add(Date3);
                DataTimeList.Add(Date4);
            }
            else if (this.rgByWeekOrMonth.SelectedIndex == 1)
            {               
                DataTimeList.Clear();

                this.deStartDate.GetDate(DateEditWorkMode.ByMonth, out Date1, out Date2);
                this.deDueDate.GetDate(DateEditWorkMode.ByMonth, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);
                DataTimeList.Add(Date3);
                DataTimeList.Add(Date4);
            }
        }

        public void GetCustData() 
        {
            if (deDueDate.Text == "" || deStartDate.Text == "" ) return;

            GetDataTime();

            if (cbFactory.Text == "CN(SL+RX+GG)")
            {
                FactoryList.Clear();
                FactoryList.AddRange(new string[] { "SL", "RX", "GG" });
            }
            else if (cbFactory.Text == "GX(GG+RX)")
            {
                FactoryList.Clear();
                FactoryList.AddRange(new string[] { "RX", "GG" });
            }
            else
            {
                FactoryList.Clear();
                FactoryList.Add(cbFactory.Text);
            }

             CustList = db.CustQCMasters.Where(p => (cbFactory.Text =="" || FactoryList.Contains(p.MfgLocation)) && p.ExamDate >= DataTimeList.Min() && p.ExamDate < DataTimeList.Max().AddDays(1)).Select(p => p.Customer).Distinct().ToList();
            this.cbCustomer.Properties.Items.Clear();
            this.cbCustomer.Properties.Items.Add("");
            this.cbCustomer.Properties.Items.AddRange(CustList);
        }

    }
}
