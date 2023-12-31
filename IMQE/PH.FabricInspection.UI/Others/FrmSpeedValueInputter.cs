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
    public partial class FrmSpeedValueInputter : DevExpress.XtraEditors.XtraForm
    {
        private DevExpress.XtraEditors.TextEdit focusedTextEdit = null;

        public FrmSpeedValueInputter()
        {
            InitializeComponent();
            this.ActiveControl = teBroadPerMinute;
            teBroadPerMinute.SelectAll();
            //this.Text = caption;
        }


        public static SpeedValue ShowSpeedValueInputter(decimal dBroadPerMinute, decimal dSecondPerClick,  decimal dRate, string sLightStatus, string sWeftYarnClass,
            decimal dWeftYarnPercentage, string sElongation, string sMouldTrial, string sWeftYarn,
            //以下幾個參數由David加入 2020-10-09
            Fabric_Insp_Header ACurrentFabric_Insp_Header)
        {
            try
            {
                FrmSpeedValueInputter frmSpeedSetting = new FrmSpeedValueInputter();

                //以下三句代碼由David加入 2020-10-09
                frmSpeedSetting.txtColorMatching.Text = ACurrentFabric_Insp_Header.ColorMatching;


                //frmSpeedSetting.txtLamination.Text = ACurrentFabric_Insp_Header.Lamination;                
                //frmSpeedSetting.txtBonding.Text = ACurrentFabric_Insp_Header.Bonding;
                //frmSpeedSetting.txtCutCurling.Text = ACurrentFabric_Insp_Header.CutCurling;


                /************change by shulin 2022-11-10*****************/
                if(ACurrentFabric_Insp_Header.Lamination != null)
                {
                    frmSpeedSetting.txtLamination.Text = ACurrentFabric_Insp_Header.Lamination;
                }

                if (ACurrentFabric_Insp_Header.Bonding != null)
                {
                    frmSpeedSetting.txtBonding.Text = ACurrentFabric_Insp_Header.Bonding;
                }
                if (ACurrentFabric_Insp_Header.CutCurling != null)
                {
                    frmSpeedSetting.txtCutCurling.Text = ACurrentFabric_Insp_Header.CutCurling;
                }
                /****************************/

                if (sLightStatus.Length > 0)
                {
                    frmSpeedSetting.txtLightStatus.Text = sLightStatus.Trim().ToString();
                }
                if (dBroadPerMinute > 0)
                {
                    frmSpeedSetting.teBroadPerMinute.Text = dBroadPerMinute.ToString();
                }
                if (dSecondPerClick > 0)
                {
                    frmSpeedSetting.teSecondPerClick.Text = dSecondPerClick.ToString();
                }
                if (dRate > 0)
                {
                    frmSpeedSetting.teRate.Text = dRate.ToString();
                }
                if (sWeftYarnClass.Length > 0)
                {
                    frmSpeedSetting.txtWeftYarnClass.Text = sWeftYarnClass.Trim().ToString();
                }
                if (dWeftYarnPercentage >= 0)
                {
                    frmSpeedSetting.teWeftYarnPercentage.Text = dWeftYarnPercentage.ToString();
                }
                if (sElongation.Length > 0)
                {
                    frmSpeedSetting.txtElongation.Text = sElongation.Trim().ToString();
                }
                if (sElongation.Length > 0)
                {
                    frmSpeedSetting.txtElongation.Text = sElongation.Trim().ToString();
                }
                if (sMouldTrial.Length > 0)
                {
                    frmSpeedSetting.txtMouldTrial.Text = sMouldTrial.Trim().ToString();
                }
                if (sWeftYarn.Length > 0)
                {
                    frmSpeedSetting.txtWeftYarn.Text = sWeftYarn.Trim().ToString();
                }

                DialogResult result = frmSpeedSetting.ShowDialog();
                if (result == DialogResult.OK)
                {

                    SpeedValue speedValue = new SpeedValue();
                    decimal broadPerMinute = Convert.ToDecimal(frmSpeedSetting.teBroadPerMinute.Text.Trim());
                    if (broadPerMinute == 0)
                    {
                        speedValue.SecondPerBroad = 0;
                    }
                    else
                    {
                        speedValue.SecondPerBroad = 60 / broadPerMinute;
                    }

                    speedValue.TimeForPhotograph = Convert.ToDecimal(frmSpeedSetting.teSecondPerClick.Text.Trim());
                    speedValue.RatePercent = string.IsNullOrEmpty(frmSpeedSetting.teRate.Text) ? 0 : Convert.ToDecimal(frmSpeedSetting.teRate.Text.Trim());
                    speedValue.WeftYarnPercentage = string.IsNullOrEmpty(frmSpeedSetting.teWeftYarnPercentage.Text)? 0: Convert.ToDecimal(frmSpeedSetting.teWeftYarnPercentage.Text.Trim());
                    speedValue.WeftYarnClass = frmSpeedSetting.txtWeftYarnClass.Text;
                    speedValue.LightStatus = frmSpeedSetting.txtLightStatus.Text;
                    speedValue.Elongation = frmSpeedSetting.txtElongation.Text;
                    speedValue.MouldTrial = frmSpeedSetting.txtMouldTrial.Text;
                    speedValue.WeftYarn = frmSpeedSetting.txtWeftYarn.Text;

                    speedValue.ColorMatching = frmSpeedSetting.txtColorMatching.Text;
                    speedValue.Lamination = frmSpeedSetting.txtLamination.Text;
                    speedValue.Bonding = frmSpeedSetting.txtBonding.Text;
                    speedValue.CutCurling = frmSpeedSetting.txtCutCurling.Text;
                    //ACurrentFabric_Insp_Header.ColorMatching = frmSpeedSetting.txtColorMatching.Text;
                    //ACurrentFabric_Insp_Header.Lamination = frmSpeedSetting.txtLamination.Text;
                    //ACurrentFabric_Insp_Header.Bonding = frmSpeedSetting.txtBonding.Text;



                    return speedValue;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the Setup Speed \n" + ex.Message);
            }
            return null;
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
                if (focusedTextEdit == txtLightStatus)
                {
                    this.ActiveControl = txtLightStatus;
                    txtLightStatus.SelectAll();
                }

                else if (focusedTextEdit == teBroadPerMinute)
                {
                    this.ActiveControl = teSecondPerClick;
                    teSecondPerClick.SelectAll();
                }
                else if (focusedTextEdit == teSecondPerClick)
                {
                    this.ActiveControl = teRate;
                    teRate.SelectAll();
                }
                else if (focusedTextEdit == teRate)
                {

                    if (!FloatUtil.IsFloat(teBroadPerMinute.Text.Trim()))
                    {
                        MessageBox.Show("Please input a validate value for Broad/Minute");
                        this.ActiveControl = teBroadPerMinute;
                        teBroadPerMinute.SelectAll();
                        return;
                    }

                    if (!FloatUtil.IsFloat(teSecondPerClick.Text.Trim()))
                    {
                        MessageBox.Show("Please input a validate value for Camera Gap (S)");
                        this.ActiveControl = teSecondPerClick;
                        teSecondPerClick.SelectAll();
                        return;
                    }

                    if (!FloatUtil.IsFloat(teRate.Text.Trim()))
                    {
                        MessageBox.Show("Please input a validate value for  Tensional Force");
                        this.ActiveControl = teRate;
                        teRate.SelectAll();
                        return;
                    }

                    this.DialogResult = DialogResult.OK;
                }
                else if (focusedTextEdit == txtWeftYarnClass)
                {
                    this.ActiveControl = txtWeftYarnClass;
                    txtWeftYarnClass.SelectAll();
                }
                else if (focusedTextEdit == teWeftYarnPercentage)
                {
                    this.ActiveControl = teWeftYarnPercentage;
                    teWeftYarnPercentage.SelectAll();
                }
                else if (focusedTextEdit == txtElongation)
                {
                    this.ActiveControl = txtElongation;
                    txtElongation.SelectAll();
                }
                else if (focusedTextEdit == txtMouldTrial)
                {
                    this.ActiveControl = txtMouldTrial;
                    txtMouldTrial.SelectAll();
                }
                else if (focusedTextEdit == txtWeftYarn)
                {
                    this.ActiveControl = txtWeftYarn;
                    txtWeftYarn.SelectAll();
                }

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
            //this.DialogResult = DialogResult.Cancel;
            this.DialogResult = DialogResult.OK; //由David修改 2020-10-07
        }

        private void teSecondPerClick_Enter(object sender, EventArgs e)
        {
            focusedTextEdit = (DevExpress.XtraEditors.TextEdit)sender;
            focusedTextEdit.SelectAll();

        }

        private void teRate_Enter(object sender, EventArgs e)
        {
            focusedTextEdit = (DevExpress.XtraEditors.TextEdit)sender;
            focusedTextEdit.SelectAll();

        }



    }


    public class SpeedValue
    {
        private decimal _secondPerBroad;

        public decimal SecondPerBroad
        {
            get { return _secondPerBroad; }
            set { _secondPerBroad = value; }
        }

        private decimal _TimeForPhotograph;

        public decimal TimeForPhotograph
        {
            get { return _TimeForPhotograph; }
            set { _TimeForPhotograph = value; }
        }

        private decimal _ratePercent;

        public decimal RatePercent
        {
            get { return _ratePercent; }
            set { _ratePercent = value; }
        }

        private string _LightStatus;

        public string LightStatus
        {
            get { return _LightStatus; }
            set { _LightStatus = value; }
        }

        private string _WeftYarnClass;

        public string WeftYarnClass
        {
            get { return _WeftYarnClass; }
            set { _WeftYarnClass = value; }
        }

        private decimal _WeftYarnPercentage;

        public decimal WeftYarnPercentage
        {
            get { return _WeftYarnPercentage; }
            set { _WeftYarnPercentage = value; }
        }

        private string _Elongation;

        public string Elongation
        {
            get { return _Elongation; }
            set { _Elongation = value; }
        }

        private string _MouldTrial;

        public string MouldTrial
        {
            get { return _MouldTrial; }
            set { _MouldTrial = value; }
        }

        private string _WeftYarn;

        public string WeftYarn
        {
            get { return _WeftYarn; }
            set { _WeftYarn = value; }
        }
        public decimal Rate
        {
            get { return 1 + _ratePercent / 100; }

        }

        //由David加入 2020-01-07
        public string ColorMatching { get; set; }
        public string Lamination { get; set; }
        public string Bonding { get; set; }

        //由David加入 2020-11-10
        public string CutCurling { get; set; }
    }

}