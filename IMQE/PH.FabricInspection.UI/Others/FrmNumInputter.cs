using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI
{
    public partial class FrmNumInputter : DevExpress.XtraEditors.XtraForm
    {
        private DevExpress.XtraEditors.TextEdit focusedTextEdit = null;
        public decimal currentValue = 0;

        public FrmNumInputter(string caption, decimal initValue)
        {
            InitializeComponent();
            this.ActiveControl = teFrom;
            if (initValue > 0)
            {
                teFrom.Text = initValue.ToString();
            }
            teFrom.SelectAll();
            this.Text = caption;
        }


        public static bool ShowNumInputter(string caption, ref decimal initValue)
        {
            try
            {
                FrmNumInputter frmWidthSetting = new FrmNumInputter(caption, initValue);
               
                DialogResult result = frmWidthSetting.ShowDialog();
                if (result == DialogResult.OK)
                {
                    initValue = frmWidthSetting.currentValue;
                    return true;
                }
                else {
                    return false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the Width Setting \n" + ex.Message);
            }
            return false;
        }

        private void sbNum7_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
                {
                    string str = (string)((SimpleButton)sender).Tag;
                    for (int i = 0, iSize = str.Length; i < iSize; i++)
                    {
                        KeyPressEventArgs keyArgs = new KeyPressEventArgs(str[i]);
                        focusedTextEdit.SendKey(keyArgs);
                    }

                }

            }
        }

        private void teFrom_Enter(object sender, EventArgs e)
        {
            focusedTextEdit = (DevExpress.XtraEditors.TextEdit)sender;
            focusedTextEdit.SelectAll();

        }

        private void sbNumEnter_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if (!FloatUtil.IsFloat(teFrom.Text.Trim()))
                {
                    MessageBox.Show("Please input a validate value for From Place");
                    this.ActiveControl = teFrom;
                    teFrom.SelectAll();
                    return;
                }

                currentValue = Convert.ToDecimal(teFrom.Text.Trim());
                this.DialogResult = DialogResult.OK;

            }

        }

        private void sbNumClear_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
                {
                    focusedTextEdit.Text = "";
                }

            }

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void FrmNumInputter_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                sbNumEnter_Click(sender, null);
            }
        }

        private void sbReturn_Click(object sender, EventArgs e)
        {

            this.DialogResult = DialogResult.Cancel;

        }

    }


}