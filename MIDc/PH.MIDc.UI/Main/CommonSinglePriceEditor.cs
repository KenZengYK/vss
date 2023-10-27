using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class CommonSinglePriceEditor : UserControl
    {
        public CommonSinglePriceEditor()
        {
            InitializeComponent();
            this.spinEdit_SinglePrice.Properties.DisplayFormat.FormatType = MaterialPrceFormat.FormatType;
            this.spinEdit_SinglePrice.Properties.DisplayFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
            this.spinEdit_SinglePrice.Properties.EditFormat.FormatType = MaterialPrceFormat.FormatType;
            this.spinEdit_SinglePrice.Properties.EditFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
            this.spinEdit_SinglePrice.Properties.EditMask = MaterialPrceFormat.PriceFormatStr;
        }

        private string _currency;
        public string Currency
        {
            get { return _currency; }
            set
            {
                _currency = value;
                Currencylabel.Text = this._currency;
            }
        }
        /// <summary>
        /// 是否显示币别
        /// </summary>
        public bool CurrencyVisible
        {
            set
            {
                this.lblCurrencyCaption.Visible = this.Currencylabel.Visible = value;
            }
        }

        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
        #region
        /// <summary>
        /// Xsj:是否顯示SpecialPrice的All-In-Price計算參數輸入模框
        /// </summary>
        public bool IsShowSpecialPriceAllInPriceProperty
        {
            set
            {
                if (this._currUserMaterialPriceHeader == null || this._currUserMaterialPriceHeader.PriceType.Trim() == "Standard")
                {
                    this.panelCtrl_Property.Visible = false;
                }
                else
                {
                    this.panelCtrl_Property.Visible = value;
                }
            } 
        } 
        #endregion

         

        //Price
        public decimal Price
        {
            get
            {
                return Convert.ToDecimal(this.spinEdit_SinglePrice.EditValue);
            }
            set
            {
                this.spinEdit_SinglePrice.EditValue = value;
            }
        }

        //Ratio
        public int Ratio
        {
            get
            {
                return Convert.ToInt32(this.spinEdit_Ratio.EditValue);
            }
            set
            {
                this.spinEdit_Ratio.EditValue = value;
            }
        }

        public Detail CurrMIDcSource { get; set; }


        /// <summary>
        /// Xsj:更新單價狀態提示
        /// </summary>
        public delegate void UpdatePriceNote();

        public UpdatePriceNote NotePriceStatus
        {
            get
            {
                return this._notePriceStatus;
            }
            set
            {
                this._notePriceStatus = value;
            }
        }
        private UpdatePriceNote _notePriceStatus;



        #region Xsj20110525:加实现添加历史多单价而添加
        public MaterialPriceHeader CurrUsedMaterialPriceHeader{
            get
            {
                return this._currUserMaterialPriceHeader ;
            }
            set
            {
                this._currUserMaterialPriceHeader=value;
                this.bindingSourcePriceHeader.DataSource = this._currUserMaterialPriceHeader;
                //Xsj如果是標准單價，則隱藏編輯框
                if (this._currUserMaterialPriceHeader == null || this._currUserMaterialPriceHeader.PriceType.Trim() == "Standard")
                {
                    this.panelCtrl_Property.Visible = false;
                } 

            }
        }


        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
        private MaterialPriceHeader _currUserMaterialPriceHeader;

        #endregion

        private void CommonSinglePriceEditor_Load(object sender, EventArgs e)
        {
            if (this.dateEdit_SinglePriceEffectStartDate.EditValue == null)
            {
                this.dateEdit_SinglePriceEffectStartDate.EditValue = DateTime.Now;
            }
        }


        //xsj20110411:创建显示单价表格的界面
        public void CreatShowSinglePrice()
        {
            MultPriceType currMultPriceType = new MultPriceType();
            //string currMultPriceOption = CurrMIDcSource.Dimension ?? "0";
            string currMultPriceOption = CurrMIDcSource.MIDcDimensionDesc ?? "0";
            switch (currMultPriceOption)
            {

                // add by shulin 2023-02-14 根据邮件“MIDC entrance key 畫面是否沒更新？ 3Ds,3Dr or 4D (2023/02/09 13:39)”做相应处理
                case "2D":
                    currMultPriceType = MultPriceType.ColorOnly;
                    break;
                case "3D":
                    currMultPriceType = MultPriceType.CupSize;
                    break;
                case "4D":
                    currMultPriceType = MultPriceType.ColorRangeSizeCup;
                    break;
                
                
                //case "3Ds":
                //    currMultPriceType = MultPriceType.ColorOnly;
                //    break;
                //case "3Dr":
                //    currMultPriceType = MultPriceType.CupSize;
                //    break;
                //case "4D":
                //    currMultPriceType = MultPriceType.ColorRangeSizeCup;
                //    break;
            }
            #region Xsj20110817:为完善历史多单价而注释掉
            //List<Detail.CupDetailCls> chosedCupDetails = CurrMIDcSource.CupList.Where(p => p.IsChosed).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            List<MaterialPriceHeader.CupDetailCls> chosedCupDetails = this.CurrUsedMaterialPriceHeader.CupList.Where(p => p.IsChosed).ToList();
            #endregion


            this.bindingSource1.EndEdit();
            PH.MIDc.BO.MaterialPrice priceCls = this.bindingSource1.Current as PH.MIDc.BO.MaterialPrice;
            this.commonGridForSinglePriceCtrl1.CurrMaterialPriceHeader = this.CurrUsedMaterialPriceHeader;
            this.commonGridForSinglePriceCtrl1.SinglePrice = Convert.ToDecimal(priceCls.Price);
            this.commonGridForSinglePriceCtrl1.SingleRatio = Convert.ToInt32(priceCls.Ratio);
            this.commonGridForSinglePriceCtrl1.CreatPriceDt(currMultPriceType, MaterialPriceType.Standard.ToString(), CurrMIDcSource, "", null); //chosedCupDetails);

        }

        //实时刷新单价
        bool isFirtLoad = true;
        private void spinEdit_SinglePrice_EditValueChanged(object sender, EventArgs e)
        {
            if (isFirtLoad)
            {
                isFirtLoad = false;
                return;
            }
            PH.MIDc.BO.MaterialPrice p = this.bindingSource1.Current as PH.MIDc.BO.MaterialPrice;
            p.Price = Convert.ToDecimal(this.spinEdit_SinglePrice.EditValue);
            CreatShowSinglePrice();
        }

        bool isRatioFirtLoad = true;
        private void spinEdit_Ratio_EditValueChanged(object sender, EventArgs e)
        {
            if (isRatioFirtLoad)
            {
                isRatioFirtLoad = false;
                return;
            }
            PH.MIDc.BO.MaterialPrice p = this.bindingSource1.Current as PH.MIDc.BO.MaterialPrice;
            p.Ratio = Convert.ToInt32(this.spinEdit_Ratio.EditValue);
            CreatShowSinglePrice();
        }


        #region Xsj20110525:加实现添加历史多单价而添加
        //有效开始日间----EffectFromDate 
        private DateTime oldEffectFromDate; 
        private void dateEdit_SinglePriceEffectStartDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (e.OldValue == null || e.OldValue.ToString() == "") return;
            if (e.NewValue == null)
            {
                e.Cancel = true;
                return;
            }
            oldEffectFromDate = Convert.ToDateTime(e.OldValue);
            DateTime newEffectFromDate = Convert.ToDateTime(e.NewValue);
            DateTime minAllowDate = new DateTime();
            DateTime maxAllowDate = new DateTime();

            MaterialPrice currMP = this.bindingSource1.Current as MaterialPrice;
            int mPHCount = this.CurrMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == CurrUsedMaterialPriceHeader.PriceType && p.Category == CurrUsedMaterialPriceHeader.Category).Count();
            if (mPHCount > 1)
            {
                List<MaterialPriceHeader> materialPriceList = this.CurrMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == currMP.PriceType && p.Category == currMP.Category && p.EffectFromDate.Date  < oldEffectFromDate.Date ).OrderBy(p => p.EffectFromDate).ToList();
                if (materialPriceList.Count > 0)
                {
                    minAllowDate = materialPriceList[materialPriceList.Count - 1].EffectFromDate.Date;
                }
                materialPriceList = this.CurrMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == currMP.PriceType && p.Category == currMP.Category && p.EffectFromDate.Date  > oldEffectFromDate.Date ).OrderBy(p => p.EffectFromDate).ToList();
                if (materialPriceList.Count > 0)
                {
                    maxAllowDate = materialPriceList[0].EffectFromDate.Date ;
                }
                if (minAllowDate.Date != Convert.ToDateTime("0001/01/01").Date && newEffectFromDate <= minAllowDate)
                {
                    MessageBox.Show("修改当前单价项的[EffectFromDate]不能小于或等于[" + minAllowDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    e.Cancel = true;
                    return;
                }
                if (maxAllowDate != Convert.ToDateTime("0001/01/01").Date && newEffectFromDate >= maxAllowDate)
                {
                    MessageBox.Show("修改当前单价项的[EffectFromDate]不能大于或等于[" + maxAllowDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    e.Cancel = true;
                    return;
                }
            }

            //修改的有效开始时间不能大于有效结束时间
            DateTime effectEndDate;
            if (this.dateEdit_SinglePriceEffectEndDate.EditValue == null )
            {
                effectEndDate = Convert.ToDateTime("2999-12-31");
            }
            else
            {
                effectEndDate = Convert.ToDateTime(this.dateEdit_SinglePriceEffectEndDate.EditValue.ToString().Trim() == "" ? "2999-12-31" : this.dateEdit_SinglePriceEffectEndDate.EditValue);
            }
            if (newEffectFromDate > effectEndDate)
            {
                MessageBox.Show("修改当前单价项的[EffectFromDate]不能大于[EffectEndDate:" + effectEndDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                e.Cancel = true;
                return;
            }
 
        }

        private void dateEdit_SinglePriceEffectStartDate_EditValueChanged(object sender, EventArgs e)
        {
            MaterialPrice currPriceCls = this.bindingSource1.Current as MaterialPrice;
            if (currPriceCls == null) return;

            currPriceCls.EffectFromDate = Convert.ToDateTime(this.dateEdit_SinglePriceEffectStartDate.EditValue).Date;

            MaterialPriceHeader materialPriceHeader = this.CurrMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == currPriceCls.PriceType
                && p.Category == currPriceCls.Category && p.EffectFromDate.Date == Convert.ToDateTime(oldEffectFromDate).Date).FirstOrDefault();
            if (materialPriceHeader != null)
            {
                materialPriceHeader.EffectFromDate = Convert.ToDateTime(this.dateEdit_SinglePriceEffectStartDate.EditValue).Date;
            }
            this.bindingSource1.EndEdit();

        }
        //更改當前有效時間所發生的相關邏輯---EffectEndDate
        private void dateEdit_EffectEndDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (this.dateEdit_SinglePriceEffectEndDate.EditValue != null)
            {
                DateTime effectFromDate = Convert.ToDateTime(this.dateEdit_SinglePriceEffectStartDate.EditValue);
                if (e.NewValue != null && Convert.ToDateTime(e.NewValue).Date < Convert.ToDateTime(effectFromDate))
                {
                    MessageBox.Show("修改当前单价项的[EffectEndDate]不能小于或等于[" + effectFromDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示");
                    e.Cancel = true;
                }

            }

        }

        private void dateEdit_EffectEndDate_EditValueChanged(object sender, EventArgs e)
        {
            MaterialPrice currMP = this.bindingSource1.Current as MaterialPrice;
            MaterialPriceHeader materialPrice = this.CurrMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == currMP.PriceType
                    && p.Category == currMP.Category && p.EffectFromDate.Date  == currMP.EffectFromDate.Date ).FirstOrDefault();
            if (this.dateEdit_SinglePriceEffectEndDate.EditValue != null)
            {
                materialPrice.EffectEndDate = Convert.ToDateTime(this.dateEdit_SinglePriceEffectEndDate.EditValue);
                currMP.EffectEndDate = materialPrice.EffectEndDate.Value;
            }
            else
            {
                materialPrice.EffectEndDate = null;
            }
            this.bindingSource1.EndEdit();

            //Xsj20111124:更新單價提示
            if (this.NotePriceStatus != null)
            {
                this.NotePriceStatus.Invoke();
            }
        }
        #endregion

        /// <summary>
        /// Xsj20120508:結束編輯
        /// </summary>
        public void EndEdit()
        {
            this.bindingSource1.EndEdit();
            this.bindingSourcePriceHeader.EndEdit();
        }
 
        #region Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼

        /// <summary>
        /// Xsj:觸發重新計算ALL-IN-Price
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Propert_ValueChanged(object sender, EventArgs e)
        {
            this.bindingSourcePriceHeader.EndEdit();
            if (this.Parent.Parent.GetType().Name == "PriceShowCtrl")
            {
                PH.MIDc.UI.PriceShowCtrl pShowCtrl = this.Parent.Parent as PH.MIDc.UI.PriceShowCtrl;
                pShowCtrl.ReSumAllInPrice();
            }
        }




        private void SpinEdit_KeyDown(object sender, KeyEventArgs e)
        {
            if ((int)e.KeyCode == 13)
            {
                DevExpress.XtraEditors.SpinEdit spEditor = sender as DevExpress.XtraEditors.SpinEdit;
                switch (spEditor.Name)
                {
                    case "wastageOnCACSpinEdit":
                        this.relaxtionSpinEdit.Focus();
                        break;
                    case "relaxtionSpinEdit":
                        this.valueAdjustAddDyeingSpinEdit.Focus();
                        break;
                    case "valueAdjustAddDyeingSpinEdit":
                        this.priceIncrProtectSpinEdit.Focus();
                        break;
                    case "priceIncrProtectSpinEdit":
                        this.uncertainQualitySpinEdit.Focus();
                        break;
                    case "uncertainQualitySpinEdit":
                        this.othersBufferSpinEdit.Focus();
                        break;
                }
            }
        }

        #endregion
    }
}
