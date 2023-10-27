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
using DevExpress.XtraEditors;

namespace PH.MobileQC.UI
{
    /*
           a)	Factory(工廠）      ----可下拉選擇 (可列出KB、SL、FJ供用戶選擇)
           b)	Work Shop(車間）    ----可下拉選擇
           c)	Customer(客戶）     ----可下拉選擇(即Project的前四位)
           d)	Cust Style(客款）   ----可下拉選擇，也可以手工輸入款號
           e)	Project(工程號）    ----可下拉選擇，也可以手工輸入工程號
           f)	Line(拉名）         ----可下拉選擇
           g)	Time Period(時間段）----任意選擇一個時間段(本條件為必選項)
           
           a>	除條件7為必選項外，其他條件為可選項，但選擇Work Shop後一定需要選擇Factory
           b>	Work Shop的資料可參考Dashboard中的視圖: View_WorkShop
           c>	7個條件，選擇任何前面的條件後，下面的選擇條件均需要加上前面條件的選擇，以減少用戶選擇無效條件
           d>	報表的模式與原報表一樣，先讓用戶設置條件篩選資料，條件即為上面列出的7個，然後顯示符合條件的資料出來，顯示的Column與報表中的Column一致，然後用戶還可以在顯示資料的UI上篩選資料，報表的資料來源於UI上顯示的資料
              

        */

    public partial class CheckQCMasterCondition : Form
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

        public string Customer
        {
            get
            {
                if (this.lue_Customer.EditValue == null)
                    return "";
                else
                    return this.lue_Customer.EditValue.ToString();
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
                if (this.edtProject.Text == null)
                    return "";
                else
                    return this.edtProject.Text.ToString();
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

        public DateTime FromDate
        {
            get
            {
                if (this.date_FromDate.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return this.date_FromDate.DateTime;
            }
        }

        public DateTime ToDate
        {
            get
            {
                if (this.date_ToDate.EditValue == null)
                    return Convert.ToDateTime("1900-01-01");
                else
                    return this.date_ToDate.DateTime;
            }
        }


        //public int ReportType
        //{
        //    get
        //    {
        //        if (this.radioGroup1.SelectedIndex == null)
        //            return -1;
        //        else
        //            return this.radioGroup1.SelectedIndex;
        //    }
        //}

        //public ReportTypes ReportType
        //{
        //    get
        //    {
        //        return (ReportTypes)this.radioGroup1.SelectedIndex;
        //    }
        //}


        public bool SortByFpy;


        private IList<lines> lsline;

        private IList<QC_MasterQueryEntity> _lsQCMaster;

        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();


        #endregion

        public CheckQCMasterCondition()
        {
            InitializeComponent();

            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.MinimumSize = this.Size;
            this.MaximumSize = this.Size;

            _lsQCMaster = context.ExecuteQuery<QC_MasterQueryEntity>("select distinct  factory,WorkShop,Customer=substring(Project,0,5),style,project=isnull(project,''),line From dbo.QC_Master").ToList<QC_MasterQueryEntity>();

        }


        public CheckQCMasterCondition(string Flag)
        {
            InitializeComponent();

            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.MinimumSize = this.Size;
            this.MaximumSize = this.Size;

            _lsQCMaster = context.ExecuteQuery<QC_MasterQueryEntity>("select distinct  factory,WorkShop,Customer=substring(Project,0,5),style,project=isnull(project,''),line From dbo.QC_Master_Final").ToList<QC_MasterQueryEntity>();

        }



        /// <summary>
        /// 將Project和QN見到分號加一個對單引號
        /// </summary>
        /// <param name="AProcessStr"></param>
        /// <returns></returns>
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

        private bool CheckPage()
        {
            //if (this.Line == "")
            //{
            //    MessageBox.Show("請選擇Line!");
            //    return false;

            //}
            //else if (this.Project == "")
            //{
            //    MessageBox.Show("請選擇Project!");
            //    return false;
            //}
            //else if (this.Style == "")
            //{
            //    MessageBox.Show("請選擇Style!");
            //    return false;
            //}
            //else if (this.QN == "")
            //{
            //    MessageBox.Show("請選擇QN!");
            //    return false;
            //}
            if (this.FromDate == Convert.ToDateTime("1900-01-01") || this.ToDate == Convert.ToDateTime("1900-01-01"))
            {
                MessageBox.Show("Please select time period!");
                return false;
            }


            return true;
        }

        private void ClearValue(string type)
        {
            this.lue_Factory.EditValueChanged -= new EventHandler(lue_Factory_EditValueChanged);
            this.lue_WorkShop.EditValueChanged -= new EventHandler(lue_WorkShop_EditValueChanged);
            this.lue_Customer.EditValueChanged -= new EventHandler(lue_Customer_EditValueChanged);
            this.edtStyle.EditValueChanged -= new System.EventHandler(this.edtStyle_EditValueChanged);
            this.edtProject.EditValueChanged -= new System.EventHandler(this.edtProject_EditValueChanged);


            switch (type)
            {
                case "factory":
                    this.lue_WorkShop.EditValue = null;
                    this.lue_Customer.EditValue = null;
                    this.edtStyle.EditValue = null;
                    this.edtProject.EditValue = null;
                    this.edtLine.EditValue = null;
                    break;
                case "workshop":
                    this.lue_Customer.EditValue = null;
                    this.edtStyle.EditValue = null;
                    this.edtProject.EditValue = null;
                    this.edtLine.EditValue = null;
                    break;
                case "customer":
                    this.edtStyle.EditValue = null;
                    this.edtProject.EditValue = null;
                    this.edtLine.EditValue = null;
                    break;
                case "style":
                    this.edtProject.EditValue = null;
                    this.edtLine.EditValue = null;
                    break;
                case "project":
                    this.edtLine.EditValue = null;
                    break;
                default:
                    break;
            }




            this.lue_Factory.EditValueChanged += new EventHandler(lue_Factory_EditValueChanged);
            this.lue_WorkShop.EditValueChanged += new EventHandler(lue_WorkShop_EditValueChanged);
            this.lue_Customer.EditValueChanged += new EventHandler(lue_Customer_EditValueChanged);
            this.edtStyle.EditValueChanged += new System.EventHandler(this.edtStyle_EditValueChanged);
            this.edtProject.EditValueChanged += new System.EventHandler(this.edtProject_EditValueChanged);
        }

        private void BandCombox(string type)
        {
            ClearValue(type);

            if (type == "load")
            {
                lue_Customer.Properties.Items.Clear();
                edtStyle.Properties.Items.Clear();
                edtLine.Properties.Items.Clear();

                lue_Customer.Properties.Items.Add("");
                edtStyle.Properties.Items.Add("");
                edtLine.Properties.Items.Add("");

                var objsCust = (from c in this._lsQCMaster where c.Customer != null orderby c.Customer select new { Customer = c.Customer }).Distinct();

                foreach (var item in objsCust)
                    this.lue_Customer.Properties.Items.Add(item.Customer);

                var objsStyle = (from c in this._lsQCMaster where c.Style != null orderby c.Style select new { Style = c.Style }).Distinct();
                foreach (var item in objsStyle)
                    this.edtStyle.Properties.Items.Add(item.Style);


                var objsLine = (from c in this._lsQCMaster where c.Line != null orderby c.Line select new { Line = c.Line }).Distinct();
                foreach (var item in objsLine)
                    this.edtLine.Properties.Items.Add(item.Line);
            }
            else
            {
                ClearValue(type);

                lue_Customer.Properties.Items.Clear();
                edtStyle.Properties.Items.Clear();
                edtProject.Properties.Items.Clear();
                edtLine.Properties.Items.Clear();

                lue_Customer.Properties.Items.Add("");
                edtStyle.Properties.Items.Add("");
                edtLine.Properties.Items.Add("");

                // 3.Customer.
                var objsCust = (from c in this._lsQCMaster
                                where (c.WorkShop == this.WorkShop || this.WorkShop == "") &&
                                      (c.Factory == this.Factory || this.Factory == "") &&
                                      c.Customer != null
                                orderby c.Customer //dong
                                select new { Customer = c.Customer }).Distinct();
                foreach (var item in objsCust)
                    this.lue_Customer.Properties.Items.Add(item.Customer);

                // 4.Style.
                var objsStyle = (from c in this._lsQCMaster
                                 where (c.WorkShop == this.WorkShop || this.WorkShop == "") &&
                                       (c.Factory == this.Factory || this.Factory == "") &&
                                       (c.Customer == this.Customer || this.Customer == "") &&
                                        c.Style != null
                                 orderby c.Style //dong
                                 select new { Style = c.Style }).Distinct();
                foreach (var item in objsStyle)
                    this.edtStyle.Properties.Items.Add(item.Style);


                // 5.Project.
                var objsProject = (from c in this._lsQCMaster
                                   where (c.WorkShop == this.WorkShop || this.WorkShop == "") &&
                                         (c.Factory == this.Factory || this.Factory == "") &&
                                         (c.Style == this.Style || this.Style == "") &&
                                         (c.Customer == this.Customer || this.Customer == "") &&
                                          c.Project != null
                                   orderby c.Project //dong
                                   select new { Project = c.Project }).Distinct();
                foreach (var item in objsProject)
                    this.edtProject.Properties.Items.Add(item.Project);

                // 6.Line.
                var objsLine = (from c in this._lsQCMaster
                                where (c.WorkShop == this.WorkShop || this.WorkShop == "") &&
                                      (c.Factory == this.Factory || this.Factory == "") &&
                                      (c.Style == this.Style || this.Style == "") &&
                                      (c.Customer == this.Customer || this.Customer == "") &&
                                      (this.Project.IndexOf(c.Project) > -1 || this.Project == "") &&
                                       c.Line != null
                                orderby c.Line  //dong
                                select new { Line = c.Line }).Distinct();
                foreach (var item in objsLine)
                    this.edtLine.Properties.Items.Add(item.Line);

            }
        }

        private void edtProject_EditValueChanged(object sender, EventArgs e)
        {
            BandCombox("project");
        }

        private void edtStyle_EditValueChanged(object sender, EventArgs e)
        {
            BandCombox("style");

        }

        private void lue_Customer_EditValueChanged(object sender, EventArgs e)
        {
            BandCombox("customer");

        }

        private void lue_WorkShop_EditValueChanged(object sender, EventArgs e)
        {
            BandCombox("workshop");

        }

        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {
            this.lue_WorkShop.Properties.Items.Clear();
            this.lue_WorkShop.Properties.Items.Add("");

            DataTable dt = this.context.GetAllWorkshop(this.Factory);
            foreach (DataRow dr in dt.Rows)
                this.lue_WorkShop.Properties.Items.Add(dr["Workshop"].ToString());

            BandCombox("factory");

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (!CheckPage())
                return;
            // this.SortByFpy = chkSort.Checked;
            this.DialogResult = DialogResult.OK;
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void CheckRptCondition2_Load(object sender, EventArgs e)
        {
            this.lue_Factory.Properties.Items.Clear();
            this.lue_Factory.Properties.Items.Add("");

            //1.Factory(工廠）

            //foreach (DataRow dr in this.context.GetAllFactory().Rows)
            //{
            //    this.lue_Factory.Properties.Items.Add(dr[0].ToString());
            //}

            MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            lue_Factory.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                lue_Factory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

            //var objs = (new PH.Platform.Misc.BO.Misc_SystemParameterList()).GetAllData().ToList<PH.Platform.Misc.BO.Misc_SystemParameter>();
            //foreach (var item in objs)
            //{
            //    this.lue_Factory.Properties.Items.Add(item.Location);
            //}

            BandCombox("load");

            this.lue_Factory.EditValueChanged += new EventHandler(lue_Factory_EditValueChanged);
            this.lue_WorkShop.EditValueChanged += new EventHandler(lue_WorkShop_EditValueChanged);
            this.lue_Customer.EditValueChanged += new EventHandler(lue_Customer_EditValueChanged);
            this.edtStyle.EditValueChanged += new System.EventHandler(this.edtStyle_EditValueChanged);
            this.edtProject.EditValueChanged += new System.EventHandler(this.edtProject_EditValueChanged);
        }

    }

    /// <summary>
    /// 報表類型
    /// </summary>
    //public enum ReportTypes
    //{
    //    /// <summary>
    //    /// 審定報表
    //    /// </summary>
    //    Audit = 0,
    //    /// <summary>
    //    /// 審查報表
    //    /// </summary>
    //    Inspection = 1
    //}
}
