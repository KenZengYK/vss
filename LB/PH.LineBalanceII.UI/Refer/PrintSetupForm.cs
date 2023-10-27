using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO.ErrorMessages;

namespace PH.LineBalanceII.UI
{
    public partial class PrintSetupForm : Form
    {
        public PrintSetupForm()
        {
            InitializeComponent();
        }

        public string SideProgramid;
        public string FileID;
        public string FormName;
        public string Langid;

        /// <summary>
        /// 是否列印主工序表
        /// </summary>
        public bool PrintMainTable
        {
            get
            {
                return this.chkMainTable.Checked;
            }
        }

        /// <summary>
        /// 是否列印附表
        /// </summary>
        public bool PrintAdjTable
        {
            get 
            {
                return this.chkAdjTable.Checked;
            }
        }


        /// <summary>
        /// 是否英文
        /// </summary>
        public bool PrintEnglish
        {
            get
            {
                return this.checkPrintEnglish.Checked;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if ((!this.chkMainTable.Checked && !this.chkAdjTable.Checked))
            {
               // MessageBox.Show("請您選擇要輸出的表格", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                ErrorMessageManager.ShowMessage(this.SideProgramid, this.FileID, this.FormName, "msgSelectReport", this.Langid);
                this.DialogResult = DialogResult.None;
            }
        }

        
	
    }
}