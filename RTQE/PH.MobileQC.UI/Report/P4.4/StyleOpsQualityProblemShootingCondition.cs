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
using DevExpress.XtraReports.UI;

namespace PH.MobileQC.UI
{
    public partial class StyleOpsQualityProblemShootingCondition : PH.Platform.UI.CS.UI0.BlankForm
    {

        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        public StyleOpsQualityProblemShootingCondition()
        {
            InitializeComponent();

            //var ListStyle = db.QC_Masters.OrderBy(p => p.Style).Select(p => p.Style).Distinct();
            //this.comStyle.Properties.Items.AddRange(ListStyle.ToArray());

            this.txtDateTo.EditValue = DateTime.Now.AddDays(-1).ToString("yyyy-MM-dd");
            this.txtDateFrom.EditValue = DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd"); ;


            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = context.GetFactoryType();
            cmbFac.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cmbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if( string.IsNullOrEmpty(this.comStyle.Text) )
            {
                MessageBox.Show("請選擇Cust Style!");
                return;
            }
            if (Check(Convert.ToDateTime(this.txtDateFrom.Text), Convert.ToDateTime(this.txtDateTo.Text)))
            {

                MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
                string SqlStr = string.Format("exec sp_StyleOptQualityProblemShootingReport '{0}', '{1}', '{2}' , '{3}'", this.cmbFac.Text, this.comStyle.Text, this.txtDateFrom.Text, this.txtDateTo.Text);

                DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "tb_ShootingReport");


                StyleOpsQualityProblemShootingReport rpt = new StyleOpsQualityProblemShootingReport(ds , this.comStyle.Text, this.txtDateFrom.Text, this.txtDateTo.Text, this.cmbFac.Text);
                rpt.ShowPreview();
            }
            else
            {
                MessageBox.Show("時間範圍有誤，請重新選擇 !");
            }

        }

        private void txtDateFrom_EditValueChanged(object sender, EventArgs e)
        {
            this.comStyle.Properties.Items.Clear();
            this.comStyle.Text = "";

            if (!string.IsNullOrEmpty(this.txtDateTo.Text) && !string.IsNullOrEmpty(this.txtDateFrom.Text) && !string.IsNullOrEmpty(cmbFac.Text))
                if (Check(Convert.ToDateTime(this.txtDateFrom.Text), Convert.ToDateTime(this.txtDateTo.Text)))
                {
                    DataTable dt = db.getQCStyle(txtDateFrom.Text, txtDateTo.Text, cmbFac.Text);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {


                        //string SqlStr = string.Format("exec sp_StyleOptQualityProblemShootingReport '{0}', '{1}', '{2}' , '{3}'", this.cmbFac.Text, dt.Rows[i]["Style"].ToString(), txtDateFrom.Text, txtDateTo.Text);
                        //DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "tb_ShootingReport");
                        //if (ds.Tables[2].Rows.Count > 0)
                        //{
                        comStyle.Properties.Items.Add(dt.Rows[i]["Style"].ToString());
                        //}

                    }
                }

        }

        private void txtDateTo_EditValueChanged(object sender, EventArgs e)
        {
            this.comStyle.Properties.Items.Clear();
            this.comStyle.Text = "";

            if (!string.IsNullOrEmpty(this.txtDateTo.Text) && !string.IsNullOrEmpty(this.txtDateFrom.Text) && !string.IsNullOrEmpty(cmbFac.Text))
                if (Check(Convert.ToDateTime(this.txtDateFrom.Text), Convert.ToDateTime(this.txtDateTo.Text)))
                {
                    DataTable dt = db.getQCStyle(txtDateFrom.Text, txtDateTo.Text, cmbFac.Text);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        //string SqlStr = string.Format("exec sp_StyleOptQualityProblemShootingReport '{0}', '{1}', '{2}' , '{3}'", this.cmbFac.Text, dt.Rows[i]["Style"].ToString(), txtDateFrom.Text, txtDateTo.Text);
                        //DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "tb_ShootingReport");
                        //if (ds.Tables[2].Rows.Count > 0)
                        //{
                        comStyle.Properties.Items.Add(dt.Rows[i]["Style"].ToString());
                        //}

                    }
                }

        }

        bool Check(DateTime StartTime, DateTime EndTime)
        {

            return (StartTime < EndTime) ? true : ((StartTime == EndTime) ? true : false);
        }

        private void cmbFac_SelectedValueChanged(object sender, EventArgs e)
        {
            this.comStyle.Properties.Items.Clear();
            this.comStyle.Text = "";

            if (!string.IsNullOrEmpty(this.txtDateTo.Text) && !string.IsNullOrEmpty(this.txtDateFrom.Text) && !string.IsNullOrEmpty(cmbFac.Text))
                if (Check(Convert.ToDateTime(this.txtDateFrom.Text), Convert.ToDateTime(this.txtDateTo.Text)))
                {
                    DataTable dt = db.getQCStyle(txtDateFrom.Text, txtDateTo.Text, cmbFac.Text);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        //string SqlStr = string.Format("exec sp_StyleOptQualityProblemShootingReport '{0}', '{1}', '{2}' , '{3}'", this.cmbFac.Text, dt.Rows[i]["Style"].ToString(), txtDateFrom.Text, txtDateTo.Text);
                        //DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "tb_ShootingReport");
                        //if (ds.Tables[2].Rows.Count > 0)
                        //{
                        comStyle.Properties.Items.Add(dt.Rows[i]["Style"].ToString());
                        //}
                    }
                }
        }

        

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.txtDateTo.Text) || string.IsNullOrEmpty(this.txtDateFrom.Text) || string.IsNullOrEmpty(cmbFac.Text))
            {
                return;
            }

            if (!Check(Convert.ToDateTime(this.txtDateFrom.Text), Convert.ToDateTime(this.txtDateTo.Text)))
            {
                return;
            }
            XtraReport RptAll = new XtraReport();
            RptAll.CreateDocument();

            this.Cursor = Cursors.WaitCursor;
            try
            {

                this.comStyle.Properties.Items.Clear();
                this.comStyle.Text = "";

                DataTable dt = db.getQCStyle(txtDateFrom.Text, txtDateTo.Text, cmbFac.Text);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string SqlStr = string.Format("exec sp_StyleOptQualityProblemShootingReport '{0}', '{1}', '{2}' , '{3}'", this.cmbFac.Text, dt.Rows[i]["Style"].ToString(), txtDateFrom.Text, txtDateTo.Text);
                    DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "tb_ShootingReport");
                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        comStyle.Properties.Items.Add(dt.Rows[i]["Style"].ToString());                  

                        StyleOpsQualityProblemShootingReport rpt = new StyleOpsQualityProblemShootingReport(ds, this.comStyle.Text, this.txtDateFrom.Text, this.txtDateTo.Text, this.cmbFac.Text);
                        rpt.CreateDocument();
                        RptAll.PrintingSystem.Pages.AddRange(rpt.Pages);
                       

                    }
                }
                RptAll.ShowPreview();
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

       

    }
}
