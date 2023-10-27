using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Report
{
    public partial class IQAOutPutQueryForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public IQAOutPutQueryForm()
        {
            InitializeComponent();
            this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
        }

        private void deStartDate_EditValueChanged(object sender, EventArgs e)
        {
            GetDataTime();
        }



        private void deDueDate_EditValueChanged(object sender, EventArgs e)
        {
            GetDataTime();
        }

        public void SetDateEditShowMode(DateEditWorkMode ADateEditWorkMode)
        {
            DataTimeList.Clear();
            this.deStartDate.Text = "";
            this.deDueDate.Text = "";

            this.deStartDate.SetWorkMode(ADateEditWorkMode);
            this.deDueDate.SetWorkMode(ADateEditWorkMode);
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (this.CheckInputData())
            {
                DateTime StartDate = DataTimeList.Min();
                DateTime DueDate = DataTimeList.Max();

                string SqlStr = "exec sp_IQAOutPutReport '{0}', '{1}', '{2}', '{3}' ";
                //string Factory = this.cbFactory.Text == "CN(SL+RX+GG)" ? "CN" : this.cbFactory.Text;
                FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                string ByWeekOrMonth = this.rgByWeekOrMonth.Text == "ByWeek" ? "ByWeek" : "ByMonth";
                SqlStr = string.Format(SqlStr, ByWeekOrMonth, cmbWhse.Text, StartDate.ToString("yyyy-MM-dd"), DueDate.ToString("yyyy-MM-dd") );
                List<IQAOutPutClass> lists = db.ExecuteDataSet(SqlStr, new DataSet(), "Opt").Tables[0].AsEnumerable().Select
                      (dr => new IQAOutPutClass()
                      {
                          AYear = Convert.ToInt32(dr["AYear"].ToString()),
                          DataType = dr["DataType"].ToString(),
                          Unit = dr["Unit"].ToString(),
                          MaterialGroup = dr["MaterialGroup"].ToString(),
                          TatalSingleItem = Convert.ToInt32(dr["TatalSingleItem"].ToString()),
                          TotalRoll = Convert.ToInt32(dr["TotalRoll"].ToString()),
                          AuditRoll = Convert.ToInt32(dr["AuditRoll"].ToString()),
                          TotalAuditQty = Convert.ToDecimal(dr["TotalAuditQty"].ToString()),
                          TotalQuantity = Convert.ToDecimal(dr["TotalQuantity"].ToString())
                      }).ToList();


                IQAOutPutReport Rpt = new IQAOutPutReport(cmbWhse.Text, ByWeekOrMonth, StartDate, DueDate, lists);
                Rpt.ShowPreview();

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

            if (string.IsNullOrEmpty(cmbWhse.Text)) 
            {
                MessageBox.Show("Please chosen Whse date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.cmbWhse.Focus();
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
        }

        public int DayfWeek(DateTime StartDt)
        {
            System.Globalization.GregorianCalendar gc = new System.Globalization.GregorianCalendar();
            return gc.GetWeekOfYear(StartDt, System.Globalization.CalendarWeekRule.FirstDay, DayOfWeek.Monday);
        }



        DateTime Date1 = DateTime.MinValue;
        DateTime Date2 = DateTime.MinValue;
        DateTime Date3 = DateTime.MinValue;
        DateTime Date4 = DateTime.MinValue;
        List<DateTime> DataTimeList = new List<DateTime>();
        DateTime StartDate = DateTime.MinValue;
        DateTime DueDate = DateTime.MinValue;

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

        

       

    }
}
