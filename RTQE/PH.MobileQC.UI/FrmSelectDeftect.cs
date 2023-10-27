using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class FrmSelectDeftect : Form
    {

        MobileQCDataContext CurCtx;
        TraceInfoDetailForm ParentForm;
        string value = "";
        string factory = "", workshop = "", line = "";

        public FrmSelectDeftect()
        {
            InitializeComponent();
        }

        public FrmSelectDeftect(TraceInfoDetailForm parent,MobileQCDataContext mqdc,string fac,string ws,string li)
        {
            InitializeComponent();
            ParentForm = parent;
            CurCtx = mqdc;
            factory = fac; workshop = ws; line = li;
            AddFix();
        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            if (deEnd.DateTime.ToShortDateString() == "0001/1/1" || deStart.DateTime.ToShortDateString() == "0001/1/1")
            {
                MessageBox.Show("請選擇開始日期與結束日期!");
                return;
            }
            if (deEnd.DateTime < deStart.DateTime)
            {
                MessageBox.Show("結束日期應大于等于開始日期!");
                return;
            }
            try
            {
               // DataTable dt = CurCtx.GetDefectRecently(deStart.DateTime.ToShortDateString(), deEnd.DateTime.ToShortDateString());
                DataTable dt = CurCtx.GetDefectRecently(factory,workshop,line,deStart.DateTime.ToShortDateString(), deEnd.DateTime.ToShortDateString());
                dt.Columns.Add("check", System.Type.GetType("System.Boolean"));
                gcDefect.DataSource = dt;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void AddFix()
        {
            cklDefect.Items.Clear();
            DataTable dt = CurCtx.GetDefectFix();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cklDefect.Items.Add(dt.Rows[i]["description"].ToString());
                cklDefect.SetItemChecked(i, true);
            }

        }

        private string GetSelectItems()
        {
            //常見
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

            //最近
            for (int i = 0; i < this.gvDefect.RowCount; i++)
            {
                string value = gvDefect.GetDataRow(i)["check"].ToString();
                if (value == "True")
                {
                    if (strCollected == string.Empty)
                    {
                        strCollected = gvDefect.GetDataRow(i)["defectname"].ToString();
                    }
                    else
                    {
                        strCollected = strCollected + "/" + gvDefect.GetDataRow(i)["defectname"].ToString();
                    }
                }
            }
            //發現
            if (strCollected == string.Empty)
                strCollected = edtFindDefect.Text;
            else if (!string.IsNullOrEmpty(edtFindDefect.Text))
                strCollected = strCollected + "/" + edtFindDefect.Text;

            return strCollected;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            ParentForm.SelectDefect = this.GetSelectItems();
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
