using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.LWPM.UI.LB4
{
    /// <summary>
    /// 修改當前記錄的值
    /// </summary>
    public partial class frmSetFieldValue : Form
    {
        /// <summary>
        /// 設置字段的值
        /// </summary>
        /// <param name="AFormText">Form Caption</param>
        /// <param name="ASourceValue">要設置的值</param>
        public frmSetFieldValue(string AFormText, string ASourceValue)
        {
            InitializeComponent();
            this.Text = AFormText;
            this.txtOld.Text = ASourceValue;
        }

        /// <summary>
        /// 新值
        /// </summary>
        public string NewValue
        {
            get
            {
                return this.txtNew.Text;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.txtNew.Text == "")
            {
                MessageBox.Show("Please Input New Value", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.txtNew.Focus();
                this.DialogResult = DialogResult.None;
            }
        }
    }
}