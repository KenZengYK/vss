using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraEditors.Controls;
using PH.Platform.ExtendLibrary;

namespace PH.MobileQC.UI
{
    public partial class CheckRptWorkforceAnalyze : Form
    {
        #region properties

        public string Factory
        {
            get
            {
                if (this.lue_Factory.EditValue == null)
                    return "";
                else
                    return this.lue_Factory.EditValue.ToString();
            }
        }

        public string WorkShop
        {
            get
            {
                if (this.lue_WorkShop.EditValue == null)
                    return "";
                else
                    return this.lue_WorkShop.EditValue.ToString();
            }
        }

        public DateTime FactQCTimeFrom
        {
            get
            {
                if (this.date_FromDate.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return Convert.ToDateTime(this.date_FromDate.DateTime.ToString("yyyy-MM-dd hh:mm:ss"));
            }
        }

        public int IsWklyOrMthly
        {
            get
            {
                return rgByWeekOrMonth.SelectedIndex;
            }
           
        }

        public List<DateTime> TimeList
        {
            get
            {
                return DataTimeList;

            }
        }

        public string  grade
        {
            get
            {
                return this.spinEdit1.EditValue.ToString();
            }
        }

        public string symbol
        {
            get
            {
                return this.comboBoxEdit1.Text;
            }
        }

        public bool IsConformity
        {
            get
            {
                return radioGroup1.SelectedIndex == 0 ? true : false;
            }
        }


        public DateTime FactQCTimeTo
        {
            get
            {
                if (this.date_ToDate.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return Convert.ToDateTime(this.date_ToDate.DateTime.ToString("yyyy-MM-dd hh:mm:ss"));

            }
        }

        public string GradeP
        {
            get
            {
                return Grade;
            }
        }


        //public int QNQty
        //{
        //    get
        //    {
        //        return context.GetQNQty(this.Line, this.Style, this.AddSimpleQuo(this.Project), this.AddSimpleQuo(this.QN));
        //    }
        //}

        //將Project和QN見到分號加一個對單引號
        private string AddSimpleQuo(string AProcessStr)
        {
            string Str = AProcessStr;
            Str = "'" + Str + "'";
            for (int i = 0; i < AProcessStr.Length; i++)
            {
                if (AProcessStr[i] == ',')
                {
                    Str.Insert(i - 1, "'");
                }
            }
            return Str;
        }

        private IList<mobileqc> ls;
        BindingSource bs = new BindingSource();

        private IList<lines> lsline;

        MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        string Grade;

        #endregion


        private IList<lines> _lsQCMaster;

        public CheckRptWorkforceAnalyze()
        {
            InitializeComponent();

            this.lue_Factory.EditValueChanged += new EventHandler(lue_Factory_EditValueChanged);
            this.lue_WorkShop.EditValueChanged += new EventHandler(lue_WorkShop_EditValueChanged);


            //this.date_FromDate.EditValueChanged += new System.EventHandler(this.date_FromDate_EditValueChanged);
            //this.date_ToDate.EditValueChanged += new System.EventHandler(this.date_FromDate_EditValueChanged);


            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.MinimumSize = this.Size;
            this.MaximumSize = this.Size;

            _lsQCMaster = GetBaseInfo();// context.ExecuteQuery<lines>("select distinct  Factory,WorkShop as TSHOP,line as PLINE From dbo.QC_Master").ToList<lines>();

            this.date_FromDate.EditValue = DateTime.Now; // DateTime.Now.AddMonths(-1);
            this.date_ToDate.EditValue = DateTime.Now;

            this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
            // this.lue_Factory.Properties.Items.Clear();

            // List<string> facs = (from c in _lsQCMaster
            //                     select c.FACTORY).Distinct().ToList();


            //// foreach (lines li in _lsQCMaster)
            // //this.lue_Factory.Properties.Items.AddRange(facs.ToArray());
            // this.lue_Factory.Properties.Items.Add("GX");
            // this.lue_Factory.Properties.Items.AddRange(facs);
            // this.lue_Factory.Text = "SL";

            //string sqlstr = @"select pline  from openquery(INTERBASE, 'select distinct pline from Mobile_QC')";
            //string sqlstr = "SELECT DISTINCT Line AS PLine FROM QC_Master order by Line ";

            //this.lsline = context.ExecuteQuery<lines>(sqlstr).ToList<lines>();
            //this.edtLine.Properties.DataSource = this.lsline;
            //this.edtLine.Properties.DisplayMember = "PLINE";
            //this.edtLine.Properties.ValueMember = "PLINE";
            //this.date_FromDate.EditValue = DateTime.Now.AddMonths(-1);
            //this.date_ToDate.EditValue = DateTime.Now;


        }


        public List<lines> GetBaseInfo()
        {
            List<lines> lineList = new List<lines>();
            string sqlstr = string.Empty;
            sqlstr = @"select tshop,pline,isnull(tplant,'') as factory from openquery(INTERBASE, 'select distinct tshop,pline,tplant from Mobile_QC ')";
            // sqlstr = string.Format(sqlstr, PH.Platform.Common.SysParamHelper.Instance.Location);  
            lineList = this.context.ExecuteQuery<lines>(sqlstr).ToList<lines>();
            return lineList;
        }


        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {
            this.lue_WorkShop.Properties.Items.Clear();
            this.lue_WorkShop.Properties.Items.Add("");

            DataTable dt = this.context.GetAllWorkshop(this.Factory);
            foreach (DataRow dr in dt.Rows)
                this.lue_WorkShop.Properties.Items.Add(dr["Workshop"].ToString());

        }

        private void lue_WorkShop_EditValueChanged(object sender, EventArgs e)
        {
            List<lines> objs = (from c in _lsQCMaster
                                where c.FACTORY == this.Factory && c.TSHOP == this.WorkShop
                                select c).Distinct().ToList();



            this.lsline = objs;



        }




        private bool CheckPage()
        {

            //if (deStartDate.EditValue ==null)
            //{
            //    MessageBox.Show("Please select DateTime!");
            //    return false;
            //}

            if (this.FactQCTimeFrom == Convert.ToDateTime("1900-01-01") || this.FactQCTimeTo == Convert.ToDateTime("1900-01-01"))
            {
                MessageBox.Show("Please select QC time!");
                return false;
            }

            return true;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (!CheckPage())
                return;

            this.DialogResult = DialogResult.OK;

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }




        private void lue_Factory_EditValueChanged_1(object sender, EventArgs e)
        {
            // Grade = context.WorkforceFPYTargets.Where(p => p.Factory == this.lue_Factory.Text).Select(p => p.FPYTarget).FirstOrDefault().ToString();
            // this.radioGroup1.Properties.Items[0].Description = "standard ≥" + Grade;
            //this.radioGroup1.Properties.Items[1].Description = "non-standard <" + Grade;

            Grade = Convert.ToInt32(context.WorkforceFPYTargets.Where(p => p.Factory == this.lue_Factory.Text).Select(p => p.FPYTarget).FirstOrDefault()).ToString();
            this.radioGroup1.Properties.Items[0].Description = "=" + Grade;
            this.radioGroup1.Properties.Items[1].Description = "<" + Grade;
        }

        List<DateTime> DataTimeList = new List<DateTime>();
        DateTime Date1 = DateTime.MinValue;
        DateTime Date2 = DateTime.MinValue;

        public void GetDataTime()
        {
            if (deStartDate.Text == "") return;
            DataTimeList.Clear();
            if (this.rgByWeekOrMonth.SelectedIndex == 0)
            {
               

                this.deStartDate.GetDate(DateEditWorkMode.ByWeek, out Date1, out Date2);
                //this.deDueDate.GetDate(DateEditWorkMode.ByWeek, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);
                //DataTimeList.Add(Date3);
                //DataTimeList.Add(Date4);
               
            }
            else if (this.rgByWeekOrMonth.SelectedIndex == 1)
            {
                

                this.deStartDate.GetDate(DateEditWorkMode.ByMonth, out Date1, out Date2);
            //    this.deDueDate.GetDate(DateEditWorkMode.ByMonth, out Date3, out Date4);

                DataTimeList.Add(Date1);
                DataTimeList.Add(Date2);

               
            //    DataTimeList.Add(Date3);
            //    DataTimeList.Add(Date4);
            }
        }

        private void rgByWeekOrMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.rgByWeekOrMonth.SelectedIndex == 0)
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByWeek);
                labelControl7.Text = "Wkly:";
            }
            else if (this.rgByWeekOrMonth.SelectedIndex == 1)
            {
                this.SetDateEditShowMode(DateEditWorkMode.ByMonth);
                labelControl7.Text = "Mthly:";
            }
            GetDataTime();
        }

        public void SetDateEditShowMode(DateEditWorkMode ADateEditWorkMode)
        {
            this.deStartDate.SetWorkMode(ADateEditWorkMode);
           // this.deDueDate.SetWorkMode(ADateEditWorkMode);
        }

        private void deStartDate_EditValueChanged(object sender, EventArgs e)
        {
            if (deStartDate.Text == "") return;
            GetDataTime();
        }







    }


}
