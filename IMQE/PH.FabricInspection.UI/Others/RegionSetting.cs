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
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    public partial class FrmSpreadDefectSetting : DevExpress.XtraEditors.XtraForm
    {
        private DevExpress.XtraEditors.TextEdit focusedTextEdit = null;
        //private SpreadDefect spreadDefectDetail = null;
        public int WidthFromPlace = 0;
        public int WidthToPlace = 0;
        public decimal LengthFromPlace = 0;
        public decimal LengthToPlace = 0;


        public FrmSpreadDefectSetting(int AWidthFromPlace, int AWidthToPlace, decimal ALengthFromPlace, decimal ALengthToPlace)
        {
            InitializeComponent();
            //spreadDefectDetail = paramSpreadDefectDetail;
            if (AWidthFromPlace > 0)
            {
                teWidthFrom.Text = AWidthFromPlace.ToString();
                WidthFromPlace = AWidthFromPlace;
            }
            if (AWidthToPlace > 0)
            {
                teWidthTo.Text = AWidthToPlace.ToString();
                WidthToPlace = AWidthToPlace;
            }
            if (ALengthFromPlace > 0)
            {
                teLengthFrom.Text = ALengthFromPlace.ToString();
                LengthFromPlace = ALengthFromPlace;
            }
            if (ALengthToPlace > 0)
            {
                teLengthTo.Text = ALengthToPlace.ToString();
                LengthToPlace = ALengthToPlace;
            }

            this.ActiveControl = teWidthFrom;
            teWidthFrom.SelectAll();
        }


        //public static bool ShowSpreadDefectSetting(SpreadDefect paramSpreadDefectDetail)
        /// <summary>
        /// Xsj(补)20110926：输入出现问题的物料部位
        /// </summary>
        /// <param name="fromPlace">开始部位</param>
        /// <param name="toPlace">结束部位</param>
        /// <returns></returns>
        public static bool ShowSpreadDefectSetting(ref int AWidthFromPlace, ref int AWidthToPlace, ref decimal ALengthFromPlace, ref decimal ALengthToPlace)
        {
            try
            {
                FrmSpreadDefectSetting frmSpreadDefectSetting = new FrmSpreadDefectSetting(AWidthFromPlace, AWidthToPlace, ALengthFromPlace, ALengthToPlace);

                DialogResult result = frmSpreadDefectSetting.ShowDialog();
                if (result == DialogResult.OK)
                {
                    AWidthFromPlace = frmSpreadDefectSetting.WidthFromPlace;
                    AWidthToPlace = frmSpreadDefectSetting.WidthToPlace;
                    ALengthFromPlace = frmSpreadDefectSetting.LengthFromPlace;
                    ALengthToPlace = frmSpreadDefectSetting.LengthToPlace;
                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the SpreadDefectSetting form  \n" + ex.Message);
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
            if (!FloatUtil.IsFloat(teWidthFrom.Text.Trim()))
            {
                MessageBox.Show("Please input a validate value for From Place");
                this.ActiveControl = teWidthFrom;
                teWidthFrom.SelectAll();
                return;
            }

            if (!FloatUtil.IsFloat(teWidthTo.Text.Trim()))
            {
                MessageBox.Show("Please input a validate value for To Place");
                this.ActiveControl = teWidthTo;
                teWidthTo.SelectAll();
                return;
            }

            if (Convert.ToInt32(teWidthFrom.Text.Trim()) < 0)
            {
                MessageBox.Show("The value of From Place must be greater than zero");
                this.ActiveControl = teWidthFrom;
                teWidthFrom.SelectAll();
                return;
            }

            if (Convert.ToInt32(teWidthTo.Text.Trim()) <= 0)
            {
                MessageBox.Show("The value of To Place must be greater than zero");
                this.ActiveControl = teWidthTo;
                teWidthTo.SelectAll();
                return;
            }

            if (Convert.ToInt32(teWidthFrom.Text.Trim()) > Convert.ToInt32(teWidthTo.Text.Trim()))
            {
                MessageBox.Show("From Place must be less than To Place!");
                this.ActiveControl = teWidthTo;
                teWidthTo.SelectAll();
                return;
            }


            if (!FloatUtil.IsFloat(teLengthFrom.Text.Trim()))
            {
                MessageBox.Show("Please input a validate value for From Place");
                this.ActiveControl = teLengthFrom;
                teLengthFrom.SelectAll();
                return;
            }

            if (!FloatUtil.IsFloat(teLengthTo.Text.Trim()))
            {
                MessageBox.Show("Please input a validate value for To Place");
                this.ActiveControl = teLengthTo;
                teLengthTo.SelectAll();
                return;
            }

            if (Convert.ToDecimal(teLengthFrom.Text.Trim()) < 0)
            {
                MessageBox.Show("The value of From Place must be greater than zero");
                this.ActiveControl = teLengthFrom;
                teLengthFrom.SelectAll();
                return;
            }

            if (Convert.ToDecimal(teLengthTo.Text.Trim()) <= 0)
            {
                MessageBox.Show("The value of To Place must be greater than zero");
                this.ActiveControl = teLengthTo;
                teLengthTo.SelectAll();
                return;
            }

            if (Convert.ToDecimal(teLengthFrom.Text.Trim()) > Convert.ToDecimal(teLengthTo.Text.Trim()))
            {
                MessageBox.Show("From Place must be less than To Place!");
                this.ActiveControl = teLengthFrom;
                teLengthTo.SelectAll();
                return;
            }

            WidthFromPlace = Convert.ToInt32(teWidthFrom.Text.Trim());
            WidthToPlace = Convert.ToInt32(teWidthTo.Text.Trim());
            LengthFromPlace = Convert.ToDecimal(teLengthFrom.Text.Trim());
            LengthToPlace = Convert.ToDecimal(teLengthTo.Text.Trim());
            this.DialogResult = DialogResult.OK;


            //if (focusedTextEdit != null)
            //{
            //    if (focusedTextEdit == teWidthFrom)
            //    {
            //        this.ActiveControl = teWidthTo;
            //        teWidthTo.SelectAll();

            //    }
            //    else if (focusedTextEdit == teWidthTo)
            //    {

            //            if (!FloatUtil.IsFloat(teWidthFrom.Text.Trim()))
            //            {
            //                MessageBox.Show("Please input a validate value for From Place");
            //                this.ActiveControl = teWidthFrom;
            //                teWidthFrom.SelectAll();
            //                return;
            //            }

            //            if (Convert.ToInt32(teWidthFrom.Text.Trim()) < 0)
            //            {
            //                MessageBox.Show("The value of From Place must be greater than zero");
            //                this.ActiveControl = teWidthFrom;
            //                teWidthFrom.SelectAll();
            //                return;
            //            }

            //            if (!FloatUtil.IsFloat(teWidthTo.Text.Trim()))
            //            {
            //                MessageBox.Show("Please input a validate value for To Place");
            //                this.ActiveControl = teWidthTo;
            //                teWidthTo.SelectAll();

            //                return;
            //            }

            //            if (Convert.ToInt32(teWidthTo.Text.Trim()) <= 0)
            //            {
            //                MessageBox.Show("The value of To Place must be greater than zero");
            //                this.ActiveControl = teWidthTo;
            //                teWidthTo.SelectAll();
            //                return;
            //            }


            //        if (Convert.ToInt32(teWidthFrom.Text.Trim()) > Convert.ToInt32(teWidthTo.Text.Trim())) {
            //            MessageBox.Show("From Place must be less than To Place!");
            //            this.ActiveControl = teWidthTo;
            //            teWidthTo.SelectAll();
            //            return;
            //        }

            //        currentFromPlace = Convert.ToInt32(teWidthFrom.Text.Trim());
            //        currentToPlace = Convert.ToInt32(teWidthTo.Text.Trim());
            //        this.DialogResult = DialogResult.OK;

            //    }

            //}

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

        private void FrmSpreadDefectSetting_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                sbNumEnter_Click(sender, null);
            }

        }

    }


}