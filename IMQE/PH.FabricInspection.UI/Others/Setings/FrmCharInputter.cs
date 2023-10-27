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
    public partial class FrmCharInputter : DevExpress.XtraEditors.XtraForm
    {
        private DevExpress.XtraEditors.TextEdit focusedTextEdit = null;
        public string currentValue = "";

        public FrmCharInputter(string caption,string initValue)
        {
            InitializeComponent();
            this.ActiveControl = teFrom;
            teFrom.Text = initValue;
            teFrom.SelectAll();
            this.Text = caption;
        }


        public static string ShowCharInputter(string caption, string initValue)
        {
            try
            {
                FrmCharInputter frmWidthSetting = new FrmCharInputter(caption, initValue);
               
                DialogResult result = frmWidthSetting.ShowDialog();
                if (result == DialogResult.OK) {
                    return frmWidthSetting.currentValue;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the Width Setting \n" + ex.Message);
            }
            return "";
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
                currentValue = teFrom.Text.Trim();
                this.DialogResult = DialogResult.OK;

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

       
        private void sbReturn_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void FrmCharInputter_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                sbNumEnter_Click(sender, null);
            }
        }

    }


}