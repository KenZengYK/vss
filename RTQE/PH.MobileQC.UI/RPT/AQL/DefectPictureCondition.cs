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
    public partial class DefectPictureCondition : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        public DefectPictureCondition()
        {
            InitializeComponent();

            //DataTable dt = db.GetFactoryType();
            //cbFactory.Properties.Items.Clear();
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    cbFactory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //}
            //cbFactory.Properties.Items.Add("GX(GG+RX)");

        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (this.CheckInputCondition())
            {
                RptDefectPicture rpt = new RptDefectPicture(this.cbReportType.SelectedIndex, this.deBeginDate.DateTime,
                    this.deEndDate.DateTime, this.cbCustomer.Text, this.cbStyle.Text, this.cbFactory.Text, this.cbWorkshop.Text);
                rpt.ShowPreview();
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
            else if (string.IsNullOrEmpty(this.cbFactory.Text))
            {
                this.cbFactory.Focus();
                MessageBox.Show("請選擇工廠!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.cbWorkshop.Text))
            {
                this.cbWorkshop.Focus();
                MessageBox.Show("請選擇車間!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            return true;
        }

        private void deBeginDate_EditValueChanged(object sender, EventArgs e)
        {
            this.PrepareWorkShopChoice();
        }

        private void deEndDate_EditValueChanged(object sender, EventArgs e)
        {
            this.PrepareWorkShopChoice();
        }

        private void cbFactory_SelectedValueChanged(object sender, EventArgs e)
        {
            this.PrepareWorkShopChoice();
        }

        private void PrepareWorkShopChoice()
        {
            if (this.deBeginDate.EditValue == null || this.deEndDate.EditValue == null)
            {
                this.cbWorkshop.Properties.Items.Clear();
                return;
                //
            }

            this.cbWorkshop.Properties.Items.Clear();
            DataTable dtWorkShop = db.GetWorkShopData(this.cbReportType.SelectedIndex, this.cbFactory.Text,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            for (int i = 0; i < dtWorkShop.Rows.Count; i++)
            {
                this.cbWorkshop.Properties.Items.Add(dtWorkShop.Rows[i]["WorkShop"]);
            }

            this.cbCustomer.Properties.Items.Clear(); this.cbCustomer.Text = "";
            this.cbStyle.Properties.Items.Clear(); this.cbStyle.Text = "";
        }

        private void cbWorkshop_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.deBeginDate.EditValue == null || this.deEndDate.EditValue == null)
            {
                return;
            }

            this.cbStyle.Properties.Items.Clear(); this.cbStyle.Text = "";
            this.cbCustomer.Properties.Items.Clear(); this.cbCustomer.Text = "";

            DataTable dtCustomer = db.GetCustomerData(this.cbReportType.SelectedIndex, this.cbFactory.Text, this.cbWorkshop.Text,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            //this.cbCustomer.Properties.Items.Add("");
            for (int i = 0; i < dtCustomer.Rows.Count; i++)
            {
                this.cbCustomer.Properties.Items.Add(dtCustomer.Rows[i]["Customer"]);
            }

            //this.cbCustomer.Properties.Items.Insert(0, "");
        }

        private void cbCustomer_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.deBeginDate.EditValue == null || this.deEndDate.EditValue == null)
            {
                return;
            }

            this.cbStyle.Properties.Items.Clear(); this.cbStyle.Text = "";

            DataTable dtStyle = db.GetStyleData(this.cbReportType.SelectedIndex, this.cbFactory.Text, this.cbWorkshop.Text, this.cbCustomer.Text,
                  this.deBeginDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

            //this.cbStyle.Properties.Items.Add("");

            for (int i = 0; i < dtStyle.Rows.Count; i++)
            {
                this.cbStyle.Properties.Items.Add(dtStyle.Rows[i]["Style"]);
            }
            //this.cbStyle.Properties.Items.Insert(0, "");
        }


        //void PrepareChoiceData()
        //{
        //    if (this.deBeginDate.EditValue == null || this.deEndDate.EditValue == null)
        //    {
        //        this.cbCustomer.Properties.Items.Clear();
        //        return;
        //    }

        //    MobileQCDataContext db = new MobileQCDataContext();

        //    //得到客戶
        //    this.cbCustomer.Properties.Items.Clear();
        //    DataTable dtCustomer = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "left(Project, 4) as Customer",
        //        this.deBeginDate.DateTime.ToString("yyyy-MM-dd"),
        //        this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtCustomer.Rows.Count; i++)
        //    {
        //        this.cbCustomer.Properties.Items.Add(dtCustomer.Rows[i]["Customer"]);
        //    }

        //    if (dtCustomer.Rows.Count > 0)
        //    {
        //        this.cbCustomer.Properties.Items.Insert(0, "");
        //    }

        //    //得到款號
        //    this.cbStyle.Properties.Items.Clear();
        //    DataTable dtStyle = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "Style",
        //        this.deBeginDate.DateTime.ToString("yyyy-MM-dd"),
        //        this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtStyle.Rows.Count; i++)
        //    {
        //        this.cbStyle.Properties.Items.Add(dtStyle.Rows[i]["Style"]);
        //    }

        //    if (dtStyle.Rows.Count > 0)
        //    {
        //        this.cbStyle.Properties.Items.Insert(0, "");
        //    }

        //    //得到車間
        //    this.cbWorkshop.Properties.Items.Clear();
        //    DataTable dtWorkshop = db.GetChoiceData_Final(this.cbReportType.SelectedIndex, "WorkShop",
        //        this.deBeginDate.DateTime.ToString("yyyy-MM-dd"),
        //        this.deEndDate.DateTime.ToString("yyyy-MM-dd"));

        //    for (int i = 0; i < dtWorkshop.Rows.Count; i++)
        //    {
        //        this.cbWorkshop.Properties.Items.Add(dtWorkshop.Rows[i]["WorkShop"]);
        //    }

        //    if (dtWorkshop.Rows.Count > 0)
        //    {
        //        this.cbWorkshop.Properties.Items.Insert(0, "");
        //    }
        //}

    }
}
