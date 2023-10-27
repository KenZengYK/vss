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

namespace PH.MobileQC.UI.AQL
{
    public partial class SizeAuditCondition : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        string ReportType = "";
        public SizeAuditCondition()
        {
            InitializeComponent();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (this.CheckInputCondition())
            {
                if (this.cbProject.EditValue == null && this.cbWO.EditValue == null)
                {
                    var List = db.QC_Detail_Finals.Where(p => p.QC_Master_Final.QC_time >= this.deBeginDate.DateTime && p.QC_Master_Final.QC_time < this.deEndDate.DateTime.AddDays(1)
                                   && p.QC_Master_Final.AuditType.StartsWith(ReportType) && p.DetailType=="Size"
                                   && p.QC_Master_Final.Style == this.cbStyle.Text && p.QC_Master_Final.Color == this.cbColor.Text).
                                Select
                                (p => new
                                     {
                                         Project = p.QC_Master_Final.Project,
                                         WO = p.QC_Master_Final.WO
                                      }
                                 ).Distinct();

                    DevExpress.XtraReports.UI.XtraReport RptALL = new DevExpress.XtraReports.UI.XtraReport();
                    RptALL.CreateDocument();
                    foreach (var Data in List)
                    {
                        RptSizeAudit rpt = new RptSizeAudit(this.cbReportType.SelectedIndex, this.deBeginDate.DateTime, this.deEndDate.DateTime,
                         Data.Project, Data.WO, this.cbStyle.Text, this.cbColor.Text);


                        int i = rpt.bindingSource.List.Count;
                        if (i > 0)
                        {
                            rpt.CreateDocument();
                        }
                        rpt.CreateDocument();
                        RptALL.Pages.AddRange(rpt.Pages);
                    }
                    RptALL.ShowPreview();

                }
                else
                {
                    RptSizeAudit rpt = new RptSizeAudit(this.cbReportType.SelectedIndex, this.deBeginDate.DateTime, this.deEndDate.DateTime,
                        this.cbProject.Text, this.cbWO.Text, this.cbStyle.Text, this.cbColor.Text);
                    rpt.ShowPreview();
                }

            }
        }

        bool CheckInputCondition()
        {
            if (this.deBeginDate.EditValue == null)
            {
                this.deBeginDate.Focus();
                MessageBox.Show("請選擇審定開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.deEndDate.EditValue == null)
            {
                this.deEndDate.Focus();
                MessageBox.Show("請選擇審定截止日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.deEndDate.DateTime < this.deBeginDate.DateTime)
            {
                MessageBox.Show("審定截止日期必須大于或等於開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            //else if (string.IsNullOrEmpty(this.cbProject.Text))
            //{
            //    this.cbProject.Focus();
            //    MessageBox.Show("請選擇工程!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //}
            //else if (string.IsNullOrEmpty(this.cbWO.Text))
            //{
            //    this.cbWO.Focus();
            //    MessageBox.Show("請選擇制單!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //}
            else if (string.IsNullOrEmpty(this.cbStyle.Text))
            {
                this.cbStyle.Focus();
                MessageBox.Show("請選擇款!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.cbColor.Text))
            {
                this.cbColor.Focus();
                MessageBox.Show("請選擇顏色!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            return true;
        }

        private void deEndDate_EditValueChanged(object sender, EventArgs e)
        {
            if (this.deEndDate.EditValue == null)
            {
                this.deEndDate.Focus();
                MessageBox.Show("請選擇審定截止日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            this.PrepareProjectChoice();
        }

        private void deBeginDate_EditValueChanged(object sender, EventArgs e)
        {
            if (this.deBeginDate.EditValue == null) 
            {
                this.deBeginDate.Focus();
                MessageBox.Show("請選擇審定開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            this.PrepareProjectChoice();
        }

          bool CheckData(){
            if (this.deBeginDate.EditValue == null)
            {
                this.deBeginDate.Focus();
                MessageBox.Show("請選擇審定開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.deEndDate.EditValue == null)
            {
                this.deEndDate.Focus();
                MessageBox.Show("請選擇審定截止日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.deEndDate.DateTime < this.deBeginDate.DateTime)
            {
                MessageBox.Show("審定截止日期必須大于或等於開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }



        void PrepareProjectChoice()
        {
           
            if (this.deBeginDate.EditValue == null || this.deEndDate.EditValue == null)
            {
                this.cbProject.Properties.Items.Clear();
                this.cbWO.Properties.Items.Clear();
                this.cbStyle.Properties.Items.Clear();
                this.cbColor.Properties.Items.Clear();
                return;
            }

            //得到Project
            this.cbProject.Properties.Items.Clear(); this.cbProject.EditValue = null;
            DataTable dtProject = db.GetProjectData(this.cbReportType.SelectedIndex,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            for (int i = 0; i < dtProject.Rows.Count; i++)
            {
                this.cbProject.Properties.Items.Add(dtProject.Rows[i]["Project"]);
            }

            this.cbStyle.Properties.Items.Clear(); this.cbStyle.EditValue = null;
            ReportType = this.cbReportType.SelectedIndex == 0 ? "AQL" : "FullAudit";


            List<string> StyleList = db.QC_Detail_Finals.Where(p => p.DetailType == "Size" &&
                p.QC_Master_Final.QC_time >= this.deBeginDate.DateTime && p.QC_Master_Final.QC_time < this.deEndDate.DateTime.AddDays(1) &&
                p.QC_Master_Final.AuditType.StartsWith(ReportType))
                .Select(p => p.QC_Master_Final.Style).Distinct().ToList(); ;


            //var StyleList1 = from a in db.QC_Master_Finals
            //                 join b in db.QC_Detail_Finals on a.MasterID equals b.MasterID
            //                 where a.QC_time >= this.deBeginDate.DateTime && p.QC_time < this.deEndDate.DateTime.AddDays(1) && a.AuditType.StartsWith(ReportType)
            //                 select a;


            //List<string> StyleList = db.QC_Master_Finals.Where(p => p.QC_time >= this.deBeginDate.DateTime && p.QC_time < this.deEndDate.DateTime.AddDays(1) &&
            //                p.AuditType.StartsWith(ReportType)).Select(p => p.Style).Distinct().ToList();

            cbStyle.Properties.Items.AddRange(StyleList);

            this.cbWO.Properties.Items.Clear(); this.cbWO.EditValue = null;
            this.cbColor.Properties.Items.Clear(); this.cbColor.EditValue = null;
        }

        private void cbProject_EditValueChanged(object sender, EventArgs e)
        {
            if (this.deBeginDate.Text == "" || this.deEndDate.Text == "" )
            {
                MessageBox.Show("日期不能爲空!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            this.cbWO.Properties.Items.Clear(); this.cbWO.EditValue = null;
            this.cbStyle.Properties.Items.Clear(); this.cbStyle.EditValue = null;
            this.cbColor.Properties.Items.Clear(); this.cbColor.EditValue = null;

            DataTable dtWO = db.GetWOData(this.cbReportType.SelectedIndex, this.cbProject.Text,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            for (int i = 0; i < dtWO.Rows.Count; i++)
            {
                this.cbWO.Properties.Items.Add(dtWO.Rows[i]["WO"]);
            }

        }

        private void cbWO_EditValueChanged(object sender, EventArgs e)
        {
            if (this.deBeginDate.Text == "" || this.deEndDate.Text == "")
            {
                MessageBox.Show("日期不能爲空!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            this.cbStyle.Properties.Items.Clear(); this.cbStyle.EditValue = null;
            this.cbColor.Properties.Items.Clear(); this.cbColor.EditValue = null;

            DataTable dtStyle = db.GetStyleData(this.cbReportType.SelectedIndex, this.cbProject.Text, this.cbWO.Text,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            for (int i = 0; i < dtStyle.Rows.Count; i++)
            {
                this.cbStyle.Properties.Items.Add(dtStyle.Rows[i]["Style"]);
            }
        }

        private void cbStyle_EditValueChanged(object sender, EventArgs e)
        {
            this.cbColor.Properties.Items.Clear(); this.cbColor.EditValue = null;

            DataTable dtColor = db.GetColorData(this.cbReportType.SelectedIndex, this.cbProject.Text, this.cbWO.Text, this.cbStyle.Text,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            for (int i = 0; i < dtColor.Rows.Count; i++)
            {
                this.cbColor.Properties.Items.Add(dtColor.Rows[i]["Color"]);
            }
        }

        //void PrepareChoiceData()
        //{
        //    if (this.deBeginDate.EditValue == null || this.deEndDate.EditValue == null)
        //    {
        //        this.cbProject.Properties.Items.Clear();
        //        return;
        //    }

        //    MobileQCDataContext db = new MobileQCDataContext();

        //    //得到Project
        //    this.cbProject.Properties.Items.Clear();
        //    DataTable dtProject = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "Project",
        //          this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtProject.Rows.Count; i++)
        //    {
        //        this.cbProject.Properties.Items.Add(dtProject.Rows[i]["Project"]);
        //    }

        //    if (dtProject.Rows.Count > 0)
        //    {
        //        this.cbProject.Properties.Items.Insert(0, "");
        //    }

        //    //得到WO
        //    this.cbWO.Properties.Items.Clear();
        //    DataTable dtWO = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "WO",
        //          this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtWO.Rows.Count; i++)
        //    {
        //        this.cbWO.Properties.Items.Add(dtWO.Rows[i]["WO"]);
        //    }

        //    if (dtWO.Rows.Count > 0)
        //    {
        //        this.cbWO.Properties.Items.Insert(0, "");
        //    }

        //    //得到Style
        //    this.cbStyle.Properties.Items.Clear();
        //    DataTable dtStyle = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "Style",
        //          this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtStyle.Rows.Count; i++)
        //    {
        //        this.cbStyle.Properties.Items.Add(dtStyle.Rows[i]["Style"]);
        //    }

        //    if (dtStyle.Rows.Count > 0)
        //    {
        //        this.cbStyle.Properties.Items.Insert(0, "");
        //    }

        //    //得到Color
        //    this.cbColor.Properties.Items.Clear();
        //    DataTable dtColor = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "Color",
        //          this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtColor.Rows.Count; i++)
        //    {
        //        this.cbColor.Properties.Items.Add(dtColor.Rows[i]["Color"]);
        //    }

        //    if (dtColor.Rows.Count > 0)
        //    {
        //        this.cbColor.Properties.Items.Insert(0, "");
        //    }
        //}

    }
}
