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

namespace PH.MobileQC.UI
{
    public partial class CheckRptCondition : Form
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


        public string Line
        {
            get
            {
                if (this.edtLine.EditValue == null)
                    return "";
                else
                    return this.edtLine.EditValue.ToString();
            }
        }
        public string Project
        {
            get
            {
                if (this.edtProject.Text == "")
                    return "";
                else
                    return this.edtProject.Text.ToString();
            }
        }
        public string WO
        {
            get
            {
                if (this.edtWO.EditValue == null)
                    return "";
                else
                    return this.edtWO.EditValue.ToString();
            }
        }
        public string Style
        {
            get
            {
                if (this.edtStyle.EditValue == null)
                    return "";
                else
                    return this.edtStyle.EditValue.ToString();
            }
        }
        public string WOC
        {
            get
            {
                if (this.edtWOc.EditValue == null)
                    return "";
                else
                    return this.edtWOc.EditValue.ToString();
            }
        }
        public string QN
        {
            get
            {
                if (this.edtQNNo.EditValue == null)
                    return "";
                else
                    return this.edtQNNo.EditValue.ToString();
            }
        }
        public DateTime FactQCTimeFrom
        {
            get
            {
                if (this.date_FactQCTimeFrom.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return Convert.ToDateTime(this.date_FactQCTimeFrom.DateTime.ToString("yyyy-MM-dd"));
            }
        }
        public DateTime FactQCTimeTo
        {
            get
            {
                if (this.date_FactQCTimeTo.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return Convert.ToDateTime(this.date_FactQCTimeTo.DateTime.ToString("yyyy-MM-dd"));

            }
        }
        public DateTime FromDate
        {
            get
            {
                if (this.date_FromDate.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return Convert.ToDateTime(this.date_FromDate.DateTime.ToString("yyyy-MM-dd hh:mm:ss"));

            }
        }
        public DateTime ToDate
        {
            get
            {
                if (this.date_ToDate.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return Convert.ToDateTime(this.date_ToDate.DateTime.ToString("yyyy-MM-dd hh:mm:ss"));
            }
        }

        public int QNQty
        {
            get
            {
                return context.GetQNQty(this.Line, this.Style, this.AddSimpleQuo(this.Project), this.AddSimpleQuo(this.QN));
            }
        }

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

        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

        #endregion


        private IList<lines> _lsQCMaster;

        public CheckRptCondition()
        {
            InitializeComponent();

            this.lue_Factory.EditValueChanged += new EventHandler(lue_Factory_EditValueChanged);
            this.lue_WorkShop.EditValueChanged += new EventHandler(lue_WorkShop_EditValueChanged);


            this.date_FromDate.EditValueChanged += new System.EventHandler(this.date_FromDate_EditValueChanged);
            this.date_ToDate.EditValueChanged += new System.EventHandler(this.date_FromDate_EditValueChanged);
            this.edtStyle.EditValueChanged += new System.EventHandler(this.edtStyle_EditValueChanged);
            this.edtProject.EditValueChanged += new System.EventHandler(this.edtProject_EditValueChanged);

            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.MinimumSize = this.Size;
            this.MaximumSize = this.Size;

            _lsQCMaster = GetBaseInfo();// context.ExecuteQuery<lines>("select distinct  Factory,WorkShop as TSHOP,line as PLINE From dbo.QC_Master").ToList<lines>();

            this.date_FromDate.EditValue = DateTime.Now.AddMonths(-1);
            this.date_ToDate.EditValue = DateTime.Now;


           // this.lue_Factory.Properties.Items.Clear();

           // List<string> facs = (from c in _lsQCMaster
           //                     select c.FACTORY).Distinct().ToList();


           //// foreach (lines li in _lsQCMaster)
           // this.lue_Factory.Properties.Items.AddRange(facs.ToArray());
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
            sqlstr = @"select tshop,pline,tplant as factory from openquery(INTERBASE, 'select distinct tshop,pline,tplant from Mobile_QC ')";
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
                            where c.FACTORY==this.Factory && c.TSHOP == this.WorkShop                                                         
                           select c).Distinct().ToList();



                this.lsline = objs;                         
            this.edtLine.Properties.DataSource = this.lsline;
            this.edtLine.Properties.DisplayMember = "PLINE";
            this.edtLine.Properties.ValueMember = "PLINE";


        }


        private bool CheckPage()
        {
            if (this.Line == "")
            {
                MessageBox.Show("Please select line!");
                return false;

            }
            else if (this.Project == "")
            {
                MessageBox.Show("Please select project!");
                return false;
            }
            else if (this.Style == "")
            {
                MessageBox.Show("Please select style!");
                return false;
            }
            else if (this.QN == "")
            {
                MessageBox.Show("Please select QN!");
                return false;
            }
            else if (this.FactQCTimeFrom == Convert.ToDateTime("1900-01-01") || this.FactQCTimeTo == Convert.ToDateTime("1900-01-01"))
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

        private void edtLine_EditValueChanged(object sender, EventArgs e)
        {
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = string.Format("SELECT distinct line,qnno as FCCS,project AS J_NO,style AS CSTYLE,wo AS WO,woc as CWO FROM QC_MASTER WHERE Line='{0}' and qnno is not null and qnno!=''", this.edtLine.Text);
            ls = context.ExecuteQuery<mobileqc>(SqlStr).ToList<mobileqc>();

            bs.DataSource = ls;

            this.edtWOc.DataBindings.Clear();
            this.edtWO.DataBindings.Clear();
            this.edtWOc.DataBindings.Clear();

            this.edtStyle.DataBindings.Clear();
            this.edtProject.Text = "";
            this.edtQNNo.Text = "";
            this.date_FactQCTimeFrom.EditValue = null;

            this.edtWOc.DataBindings.Add("Text", bs, "CWO");
            this.edtWO.DataBindings.Add("Text", bs, "WO");


            date_FromDate_EditValueChanged(null, null);

        }

        private void date_FromDate_EditValueChanged(object sender, EventArgs e)
        {
            this.edtStyle.Properties.DataSource = null;

            DateTime dt = Convert.ToDateTime("1900-01-01");

            if (this.FromDate != dt && this.ToDate != dt && this.Line != "")
            {
                var objs = from c in context.QC_Masters
                           where c.Line == this.Line
                              && c.QC_time >= this.FromDate && c.QC_time <= this.ToDate
                           group c by c.Style into g
                           select new { Style = g.Key };


                this.edtStyle.Properties.DataSource = objs;
                this.edtStyle.Properties.DisplayMember = "Style";
                this.edtStyle.Properties.ValueMember = "Style";
            }
        }

        private void edtStyle_EditValueChanged(object sender, EventArgs e)
        {
            DateTime dt = Convert.ToDateTime("1900-01-01");
            this.edtProject.Properties.Items.Clear();

            if (this.FromDate != dt && this.ToDate != dt && this.Line != "" && this.Style != "")
            {
                var objs = from c in context.QC_Masters
                           where c.Line == this.Line
                              && c.QC_time > this.FromDate && c.QC_time < this.ToDate
                              && c.Style == this.Style
                           group c by c.Project into g
                           select new { Project = g.Key };

                for (int i = 0; i < objs.Count(); i++)
                {
                    this.edtProject.Properties.Items.Add(objs.ToList()[i].Project);
                }

            }

        }

        private void edtProject_EditValueChanged(object sender, EventArgs e)
        {
            DateTime dt = Convert.ToDateTime("1900-01-01");
            this.edtQNNo.Properties.Items.Clear();

            if (this.FromDate != dt && this.ToDate != dt && this.Line != "" && this.Style != "" && this.Project != "")
            {
                var objs = from c in context.QC_Masters
                           where c.Line == this.Line
                              && c.QC_time > this.FromDate && c.QC_time < this.ToDate
                              && c.Style == this.Style
                              && this.Project.IndexOf(c.Project) > -1
                           group c by c.QNNo into g
                           select new { QNNo = g.Key };

                for (int i = 0; i < objs.Count(); i++)
                {
                    this.edtQNNo.Properties.Items.Add(objs.ToList()[i].QNNo);
                }

            }
        }

        private void edtQNNo_EditValueChanged(object sender, EventArgs e)
        {
            DateTime dt = Convert.ToDateTime("1900-01-01");

            if (this.FromDate != dt && this.ToDate != dt && this.Line != "" && this.Style != "" && this.Project != "" && this.QN != "")
            {
                string SqlStr = string.Format("SELECT  *  FROM QC_MASTER WHERE Line='{0}' and Style='{1}' and ( '{2}'='' or charindex(Project,'{2}')>-1  ) and  ( '{3}'='' or charindex(QNNo,'{3}')>-1  )  and QC_time between '{4}' and '{5}' order by qc_time  ",
                                                    this.Line,
                                                    this.Style,
                                                    this.Project,
                                                    this.QN,
                                                    this.FromDate.ToString("yyyy-MM-dd"), this.ToDate.ToString("yyyy-MM-dd")
                                                    );
                var objs = context.ExecuteQuery<QC_Master>(SqlStr).ToList<QC_Master>();

                if (objs.Count() > 0)
                {
                    this.date_FactQCTimeFrom.EditValue = objs.First<QC_Master>().QC_time;
                    this.date_FactQCTimeTo.EditValue = objs.Last<QC_Master>().QC_time;
                }
            }
        }

    }


}
