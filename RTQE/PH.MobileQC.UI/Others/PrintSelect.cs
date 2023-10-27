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
    public partial class PrintSelect : Form
    {
        #region 屬性
        public string Line { get; set; }
        public string Project { get; set; }
        public string WO { get; set; }
        public string Style { get; set; }
        public string SelectTimeFrom { get; set; }
        public string SelectTimeTo { get; set; }

        //private DataTable _WorkDataTable;
        private PH.MobileQC.BO.MobileQCDataContext context;

        #endregion

        public PrintSelect()
        {
            InitializeComponent();

            this.date_FromTime.EditValue =Convert.ToDateTime(DateTime.Now.Year.ToString() +"-" + (DateTime.Now.Month - 1).ToString() +"-"+DateTime.Now.Day.ToString());
            this.date_ToTime.EditValue = DateTime.Now;

            this.context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            var q = from c in this.context.QC_Masters
                    orderby c.Line
                    group c by c.Line into g
                    select new
                    {
                        Line = g.Key
                    };

            LookUpColumnInfoCollection coll = this.lue_Line.Properties.Columns;
            this.lue_Line.Properties.DataSource = from a in q orderby a.Line select a;
            this.lue_Line.Properties.DisplayMember = "Line";
            this.lue_Line.Properties.ValueMember = "Line";
            coll.Add(new LookUpColumnInfo("Line", "Line", 0));
 
 
        }

        private void lue_Line_TextChanged(object sender, EventArgs e)
        {
            this.lue_Project.Properties.DataSource = null;
            this.lue_Project.Properties.Columns.Clear();
            this.lue_WO.Properties.DataSource = null;
            this.lue_WO.Properties.Columns.Clear();
            this.lue_Style.Properties.DataSource = null;
            this.lue_Style.Properties.Columns.Clear();

            var q = from c in this.context.QC_Masters
                    where c.Line==this.lue_Line.EditValue.ToString()
                    orderby c.Project
                    group c by c.Project into g                 
                    select new
                    {
                        Project = g.Key
                    };           

            LookUpColumnInfoCollection coll = this.lue_Project.Properties.Columns;
            this.lue_Project.Properties.DataSource = q;
            this.lue_Project.Properties.DisplayMember = "Project";
            this.lue_Project.Properties.ValueMember = "Project";
            coll.Add(new LookUpColumnInfo("Project", "Project", 0)); 

        }

        private void lue_Project_TextChanged(object sender, EventArgs e)
        {
            this.lue_WO.Properties.DataSource = null;
            this.lue_WO.Properties.Columns.Clear();
            this.lue_Style.Properties.DataSource = null;
            this.lue_Style.Properties.Columns.Clear();


            var q = from c in this.context.QC_Masters
                    where c.Line == this.lue_Line.EditValue.ToString()
                        && c.Project == this.lue_Project.EditValue.ToString()
                    orderby c.Style
                    group c by c.Style into g
                    select new
                    {
                        Style = g.Key
                    };

            LookUpColumnInfoCollection coll = this.lue_WO.Properties.Columns;
            this.lue_Style.Properties.DataSource = q;
            this.lue_Style.Properties.DisplayMember = "Style";
            this.lue_Style.Properties.ValueMember = "Style";
            coll.Add(new LookUpColumnInfo("Style", "Style", 0)); 

        }

        private void lue_Style_EditValueChanged(object sender, EventArgs e)
        {
            this.lue_WO.Properties.DataSource = null;
            this.lue_WO.Properties.Columns.Clear();

            var q = from c in this.context.QC_Masters
                    where c.Line == this.lue_Line.EditValue.ToString()
                        && c.Project == this.lue_Project.EditValue.ToString()
                        && c.Style == this.lue_Style.EditValue.ToString()
                    orderby c.WO
                    group c by c.WO into g
                    select new
                    {
                        WO = g.Key
                    };

            LookUpColumnInfoCollection coll = this.lue_Style.Properties.Columns;
            this.lue_WO.Properties.DataSource = q;
            this.lue_WO.Properties.DisplayMember = "WO";
            this.lue_WO.Properties.ValueMember = "WO";
            coll.Add(new LookUpColumnInfo("WO", "WO", 0)); 

        }            

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            this.lue_Line.Focus();
            this.Line = this.lue_Line.EditValue==null ? "" : this.lue_Line.EditValue.ToString();
            this.Project = this.lue_Project.EditValue == null ? "" : this.lue_Project.EditValue.ToString();
            this.WO = this.lue_WO.EditValue == null ? "" : this.lue_WO.EditValue.ToString();
            this.Style = this.lue_Style.EditValue == null ? "" : this.lue_Style.EditValue.ToString();
            this.SelectTimeFrom = this.date_FromTime.EditValue == null ? "" : ((DateTime)this.date_FromTime.EditValue).ToShortDateString();
            this.SelectTimeTo = this.date_ToTime.EditValue == null ? "" : ((DateTime)this.date_ToTime.EditValue).ToShortDateString();

            if (this.Line == "")
            {
                MessageBox.Show("Line值不能為空", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.lue_Line.Focus();
                return;
            }
            else if (this.Project == "")
            {
                MessageBox.Show("Project值不能為空", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.lue_Project.Focus();
                return;
            }
            else if (this.Style == "")
            {
                MessageBox.Show("Style值不能為空", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.lue_Style.Focus();
                return;

            } 

            this.DialogResult = DialogResult.OK;            

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

       
    }
}
