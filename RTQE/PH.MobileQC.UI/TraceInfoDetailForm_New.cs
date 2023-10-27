using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class TraceInfoDetailForm_New : DetailForm
    {

        string[] AryFix;
        public TraceInfoDetailForm_New()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {            
            base.DataBind();
            this.BindLevel();
            this.BindExecuter();
            GetDefectFix();
            this.BindDefectList();

            this.cklDefect.Enabled = this.IsNew||this.IsEditting;
            this.chkAll.Enabled = this.IsNew || this.IsEditting;

        }


        //private void btnAddDefect_Click(object sender, EventArgs e)
        //{
        //    AddFix();
        //    AddRecently();
        //}

        private void GetDefectFix()
        {
            DataTable dt = (this.DataContext as MobileQCDataContext).GetDefectFix();
            if (dt.Rows.Count > 0)
            {
                AryFix = new string[dt.Rows.Count];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    AryFix[i] = dt.Rows[i]["description"].ToString();
                }
            }
        }

        private void AddFix()
        {
           // cklDefect.Items.Clear();

            DataTable dt = (this.DataContext as MobileQCDataContext).GetDefectFix();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cklDefect.Items.Add(dt.Rows[i]["description"].ToString());
            }
            
            //cklDefect.Items.Add("挑爆線");
            //cklDefect.Items.Add("跳針");
            //cklDefect.Items.Add("拉度");
        }
        private void AddRecently()
        {
            string value = "";
            for (int i = 0; i < this.gvDefect.RowCount; i++)
            {
                value = gvDefect.GetDataRow(i)["defectname"].ToString();
                string _check = gvDefect.GetDataRow(i)["check"].ToString();
                if (_check == "True")
                {
                    cklDefect.Items.Add(value);
                }
            } 
        }

        private void BindDefectList()
        {
            cklDefect.Items.Clear();
            if (AryFix != null && AryFix.Length > 0)
            { 
            
            }


            TraceInfo tri = BindingSource.Current as TraceInfo;


            if (tri != null && !string.IsNullOrEmpty(tri.DefectList))
            {
                
                string[] ss = tri.DefectList.Split(new char[] { '/'});
                
                for (int i = 0; i < ss.Length; i++)
                {
                    cklDefect.Items.Add(ss[i]);
                    cklDefect.SetItemChecked(i, true);
                }
            }
        }

        private void BindLevel()
        {
            DataTable db = (this.DataContext as MobileQCDataContext).GetLevel();
            this.gluLeve.Properties.DataSource = db;

        }

        private void BindExecuter()
        {
            DataTable db = (this.DataContext as MobileQCDataContext).GeExecuter();
            this.lueExec.Properties.DataSource = db;
        }

        private void BindCheckList()
        {
           
            AddFix();
        }

        private void TraceInfoDetailForm_Load(object sender, EventArgs e)
        {

        }

        private void btnQuery_Click(object sender, EventArgs e)
        {

            if (deEnd.DateTime.ToShortDateString() == "0001/1/1" || deStart.DateTime.ToShortDateString() == "0001/1/1")
            {
                MessageBox.Show("請選擇開始日期與結束日期!");
                return;
            }
            if (deEnd.DateTime<deStart.DateTime)
            {
               MessageBox.Show("結束日期應大于等于開始日期!");
                return;
            }
            try
            {
                DataTable dt = (this.DataContext as MobileQCDataContext).GetDefectRecently(deStart.DateTime.ToShortDateString(), deEnd.DateTime.ToShortDateString());
                dt.Columns.Add("check", System.Type.GetType("System.Boolean"));
                gcDefect.DataSource = dt;              

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }



        private void AddSelectItems()
        {
            string value = "";
            for (int i = 0; i < this.gvDefect.RowCount; i++)
            {
                value = gvDefect.GetDataRow(i)["defectname"].ToString();
                if (value == "True")
                {
                    cklDefect.Items.Add(value);
                }
            }        

        }



        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAll.Checked)
            {
                for (int j = 0; j < cklDefect.Items.Count; j++)
                    cklDefect.SetItemChecked(j, true);
            }
            else
            {
                for (int j = 0; j < cklDefect.Items.Count; j++)
                    cklDefect.SetItemChecked(j, false);
            }
        }


        private bool BeforeSave()
        {
            //base.SaveCurrent();
            string defectstr = GetSelectItems();
            if (string.IsNullOrEmpty(defectstr))
            {
                MessageBox.Show("請選擇暇疵 !");
                return false;
            }
            if (string.IsNullOrEmpty(gluLeve.Text))
            {
                MessageBox.Show("請選擇追蹤程度 !");
                return false;
            
            }

            if (string.IsNullOrEmpty(this.lueExec.Text))
            {
                MessageBox.Show("請選擇執行者 !");
                return false;

            }

            string _user = PH.Platform.Common.SysParamHelper.Instance.UserID;
            TraceInfo tcf = this.BindingSource.Current as TraceInfo;

            if (!string.IsNullOrEmpty(edtFindDefect.Text))
                defectstr = defectstr + "/" + edtFindDefect.Text;

            tcf.DefectList = defectstr;
            tcf.LevelCode = gluLeve.EditValue.ToString();  //char.Parse(gluLeve.EditValue.ToString());
            tcf.Executer = this.lueExec.EditValue.ToString();//char.Parse(this.lueExec.EditValue.ToString());
              
            if (IsEditting)
            {
                tcf.UpdateBy = _user; tcf.UpdateTime = DateTime.Now;
            }
            else {
                tcf.CreateBy = _user; tcf.CreateTime = DateTime.Now;
            }

            return true;

        }

        protected override void OnClickSaveAndReturn()
        {
           if (BeforeSave())
             base.OnClickSaveAndReturn();
        
        }

        protected override void OnClickSave()
        {
            if (BeforeSave())
              base.OnClickSave();
        }

        private string GetSelectItems()
        {
            string strCollected = string.Empty;
            for (int i = 0; i < cklDefect.Items.Count; i++)
            {

                if (cklDefect.GetItemChecked(i))
                {
                    if (strCollected == string.Empty)
                    {
                        strCollected = this.cklDefect.GetItemValue(i).ToString();
                    }
                    else
                    {
                        strCollected = strCollected + "/" + cklDefect.GetItemValue(i).ToString();
                    }
                }
            }
            return strCollected;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            if (cklDefect.Items.Count > 0)
            {
                //cklDefect.Items.Clear();
                //this.AddFix();
                for (int i = 0; i < cklDefect.Items.Count; i++)
                {

                    if (cklDefect.GetItemChecked(i))
                    {
                        
                    }
                }

            }
        }


    }
}
