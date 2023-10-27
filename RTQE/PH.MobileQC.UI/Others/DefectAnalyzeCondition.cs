using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
//using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Others
{
    public partial class DefectAnalyzeCondition : PH.Platform.UI.CS.UI0.PrintBaseForm
    {
        public DefectAnalyzeCondition()
        {
            InitializeComponent();
        }


        private IList<lines> lsline;

        private IList<QC_MasterQueryEntity> _lsQCMaster;

        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();



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
    
    
    
        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {
            this.lue_WorkShop.Properties.Items.Clear();
            this.lue_WorkShop.Properties.Items.Add("");

            //PH.Dashboard.BO.DashboardDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Dashboard.BO.DashboardDataContext>();
            //var objs = (from c in context.View_WorkShops where c.Factory == this.Factory && c.WorkShop != null select new { WorkShop = c.WorkShop }).Distinct();
            //foreach (var item in objs)
            //    this.lue_WorkShop.Properties.Items.Add(item.WorkShop);

            DataTable dt = this.context.GetAllWorkshop(this.Factory);
            foreach(DataRow dr in dt.Rows)
                this.lue_WorkShop.Properties.Items.Add(dr["Workshop"].ToString());

            BandCombox("factory");

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



        private bool CheckPage()
        {
            if (this.FromDate == Convert.ToDateTime("1900-01-01") || this.ToDate == Convert.ToDateTime("1900-01-01"))
            {
                MessageBox.Show("Please select time period!");
                return false;
            }

            return true;
        }



        private void sBut_Cancel_Click(object sender, EventArgs e)
        {
        
            //this.DialogResult = DialogResult.Cancel;        
        }

        private void sbut_OK_Click(object sender, EventArgs e)
        {
        
        }

        private void DefectAnalyzeCondition_Load(object sender, EventArgs e)
        {
            _lsQCMaster = context.ExecuteQuery<QC_MasterQueryEntity>("select distinct  factory,WorkShop,Customer=substring(Project,0,5),style,project=isnull(project,''),line From dbo.QC_Master").ToList<QC_MasterQueryEntity>();

            //this.lue_Factory.Properties.Items.Clear();
            //this.lue_Factory.Properties.Items.Add("");

            //1.Factory(工廠）
            //DataTable dt = context.GetFactoryType();
          
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    lue_Factory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //}


            //foreach (DataRow dr in this.context.GetAllFactory().Rows)
            //{
            //    this.lue_Factory.Properties.Items.Add(dr[0].ToString());
            //}


            BandCombox("load");

            this.lue_Factory.EditValueChanged += new EventHandler(lue_Factory_EditValueChanged);
            this.lue_WorkShop.EditValueChanged += new EventHandler(lue_WorkShop_EditValueChanged);
            this.lue_Customer.EditValueChanged += new EventHandler(lue_Customer_EditValueChanged);
            this.edtStyle.EditValueChanged += new System.EventHandler(this.edtStyle_EditValueChanged);
            this.edtProject.EditValueChanged += new System.EventHandler(this.edtProject_EditValueChanged);
        }

        private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
               rpt_DefectAnalyze rpt = new rpt_DefectAnalyze(this.Factory,this.WorkShop,this.Customer,this.Style,this.Project,this.Line,this.FromDate,this.ToDate);
               rpt.ShowPreview();
        }

    
    }
}
