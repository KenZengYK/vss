using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI.RPT
{
    public partial class OptExamFailureForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        public OptExamFailureForm()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (checkNull()) 
            {
                string SqlStr = "exec sp_MobileQARejectDetail '{0}','{1}','{2}','{3}','{4}' ";
                SqlStr = string.Format(SqlStr, this.cbFactory.Text, this.cbWorkShop.Text, this.cbLine.Text, this.dateStart.Text.ToString(), this.dateDue.Text.ToString());
                List<sp_MobileQARejectDetailClass> list = db.ExecuteDataSet(SqlStr, new DataSet(), "Opts").Tables[0].AsEnumerable().Select(dr => new sp_MobileQARejectDetailClass 
                {
                    Line = dr["Line"].ToString(),
                    Project = dr["Project"].ToString(),
                    CustStyle = dr["CustStyle"].ToString(),
                    AuditDate = dr["AuditDate"].ToString(),
                    WFName = dr["WFName"].ToString(),
                    OPTName = dr["OPTName"].ToString(),
                    ExamQty = dr["ExamQty"].ToString(),
                    FailQty = dr["FailQty"].ToString(),
                    FailDefectName = dr["FailDefectName"].ToString(),
                    OptCode = dr["OptCode"].ToString(),
                }).ToList();

                string TimeHorizon = this.dateStart.Text.ToString() + " ~ " + this.dateDue.Text.ToString();

                OptExamFailureReport rpt = new OptExamFailureReport(list, TimeHorizon,cbFactory.Text,cbWorkShop.Text);
                rpt.ShowPreview();
            }

        }

        private void cbWorkShop_EditValueChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.cbWorkShop.Text))
            {
                this.cbLine.Properties.Items.Clear();
                List<string> LineList = db.QC_Masters.Where(p => p.WorkShop == this.cbWorkShop.Text).Select(p => p.Line).Distinct().ToList();
                this.cbLine.Properties.Items.AddRange(LineList);
            }
        }

        private void cbFactory_EditValueChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.cbFactory.Text))
            {
                this.cbWorkShop.Properties.Items.Clear();
                //List<string> LineList = db.QC_Masters.Where(p => p.Factory == this.cbFactory.Text).Select(p => p.WorkShop).Distinct().ToList();
                List<string> LineList = db.QC_Masters.Where(p => (   (this.cbFactory.Text == "GX" && ("GG,RX").Split(',').Contains(p.Factory)) || p.Factory == this.cbFactory.Text)  ).Select(p => p.WorkShop).Distinct().ToList();
                this.cbWorkShop.Properties.Items.AddRange(LineList);
            }
        }

        bool checkNull() 
        {
            if (string.IsNullOrEmpty(this.dateStart.Text))
            {
                MessageBox.Show("請選擇開始日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (string.IsNullOrEmpty(this.dateDue.Text))
            {
                MessageBox.Show("請選擇結束日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }


            if (this.dateStart.DateTime > this.dateDue.DateTime) 
            {
                MessageBox.Show("請開始日期不能大於結束日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (string.IsNullOrEmpty(this.cbFactory.Text))
            {
                MessageBox.Show("請選擇工廠", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            //if (string.IsNullOrEmpty(this.cbWorkShop.Text))
            //{
            //    MessageBox.Show("請選擇車間", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}

            //if (string.IsNullOrEmpty(this.cbLine.Text))
            //{
            //    MessageBox.Show("請選擇產線", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}

            return true;
        }

       


    }
}