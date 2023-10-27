using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.LineBalanceII.BO
{
    /// <summary>
    /// 拆操作Form
    /// </summary>
    public partial class frmDismantle : Form
    {
        private decimal _OldValue;

        /// <summary>
        /// 構造函數
        /// </summary>
        /// <param name="AOldValue">要拆操作的值</param>
        public frmDismantle(decimal AOldValue)
        {
            InitializeComponent();
            this._OldValue = AOldValue;
            this.txtOld.Text = AOldValue.ToString();
            this.txtOld.Enabled = false;
            this.txtNew1.Focus();
        }

        /// <summary>
        /// 拆的每一個值
        /// </summary>
        public decimal NewValue1
        {
            get
            {
                return Convert.ToDecimal(this.txtNew1.Text);
            }
        }
        /// <summary>
        /// 拆的每二個值
        /// </summary>
        public decimal NewValue2
        {
            get
            {
                return Convert.ToDecimal(this.txtNew2.Text);
            }
        }

        private void txtNew1_Validated(object sender, EventArgs e)
        {
            txtNew2.Text = Convert.ToString(Convert.ToDecimal(txtOld.Text) - Convert.ToDecimal(txtNew1.Text));
        }

        private void txtNew2_Validated(object sender, EventArgs e)
        {
            txtNew1.Text = Convert.ToString(Convert.ToDecimal(txtOld.Text) - Convert.ToDecimal(txtNew2.Text));
        }
    }
}