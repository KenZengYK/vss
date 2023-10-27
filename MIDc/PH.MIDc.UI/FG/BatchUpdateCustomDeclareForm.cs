using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class BatchUpdateCustomDeclareForm : Form
    {
        /// <summary>
        /// 成分含量000001批量更新選項
        /// </summary>
        public CustomDeclareBatchUpdates Element
        {
            get
            {
                if (!this.chkElement.Checked)
                {
                    return CustomDeclareBatchUpdates.None;
                }
                else
                {
                    return (CustomDeclareBatchUpdates)this.radElement.SelectedIndex;
                }
            }
        }

        /// <summary>
        /// 品牌000002批量更新選項
        /// </summary>
        public CustomDeclareBatchUpdates Brand
        {
            get
            {
                if (!this.chkBrand.Checked)
                {
                    return CustomDeclareBatchUpdates.None;
                }
                else
                {
                    return (CustomDeclareBatchUpdates)this.radBrand.SelectedIndex;
                }
            }
        }

        /// <summary>
        /// 貨號000020批量更新選項
        /// </summary>
        public CustomDeclareBatchUpdates GoodsNo
        {
            get
            {
                if (!this.chkGoodsNo.Checked)
                {
                    return CustomDeclareBatchUpdates.None;
                }
                else
                {
                    return (CustomDeclareBatchUpdates)this.radGoodsNo.SelectedIndex;
                }
            }
        }

        public BatchUpdateCustomDeclareForm()
        {
            InitializeComponent();
        }

        private void chkElement_CheckedChanged(object sender, EventArgs e)
        {
            this.radElement.Enabled = this.chkElement.Checked;
        }

        private void chkBrand_CheckedChanged(object sender, EventArgs e)
        {
            this.radBrand.Enabled = this.chkBrand.Checked;
        }

        private void chkGoodsNo_CheckedChanged(object sender, EventArgs e)
        {
            this.radGoodsNo.Enabled = this.chkGoodsNo.Checked;
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (this.chkElement.Checked || this.chkBrand.Checked || this.chkGoodsNo.Checked) return;

            if (MessageBox.Show("無可更新的資料，最少需要勾選一種更新項", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                this.DialogResult = DialogResult.None;
            }
        }
    }


    /// <summary>
    /// 成品對應的海關申報要素批量更新
    /// </summary>
    public enum CustomDeclareBatchUpdates
    {
        /// <summary>
        /// 更新當前行
        /// </summary>
        Current = 0,
        /// <summary>
        /// 只更新為空的申報項
        /// </summary>
        BlankLine = 1,
        /// <summary>
        /// 更新當前行
        /// </summary>
        All = 2,
        /// <summary>
        /// 不更新
        /// </summary>
        None = -1
    }
}
