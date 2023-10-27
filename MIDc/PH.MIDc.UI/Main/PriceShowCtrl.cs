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
    public partial class PriceShowCtrl : UserControl
    {
        private Detail _currMIDcSource;
        private string _priceType;
        private bool _isStandardPrice;
        private string _category;
        private MultPriceType _multPrceType;
        private DataTable _currPriceDataTable;
        private bool _isAdd = false;
        private bool _isEdit = false;
        private bool _isDelAction = false;
        private List<PH.MIDc.BO.MaterialPriceHeader> _currMaterialPriceHeaderList;
        private MaterialPriceHeader _currUsedMaterialPriceHeader;
        public string Currency;

        //Xsj20110915
        //public Detail OutMIDcSourc;

        /// <summary>
        /// 是否显示币别
        /// </summary>
        public bool CurrencyVisible { get; set; }

        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
        #region
        /// <summary>
        /// Xsj:是否顯示SpecialPrice的All-In-Price計算參數輸入模框
        /// </summary>
        public bool IsShowSpecialPriceAllInPriceProperty
        {
            set
            {
                this._IsShowSpecialPriceAllInPriceProperty = value;
            }
            get
            {
                return this._IsShowSpecialPriceAllInPriceProperty;
            }
        }
        private bool _IsShowSpecialPriceAllInPriceProperty = true;
        #endregion


        /// <summary>
        /// 是否显示汇总区域
        /// </summary>
        public bool IsShowSumMsgPanel { get; set; }

        /// <summary>
        /// 当前父窗体
        /// </summary>
        public DetailDetailForm currDetailDetailForm { get; set; }

        /// <summary>
        /// 是否隐藏新增和删除按钮
        /// </summary>
        public bool IsHideShowAddDelBtns { get; set; }


        public PriceShowCtrl()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 显示数据
        /// </summary>
        public void ShowData(Detail CurrMIDcSource, bool IsStandard, string PriceType, string Category)
        {
            _currMIDcSource = CurrMIDcSource;
            //Xsj20110915:
            //this.OutMIDcSourc = CurrMIDcSource;
            _isStandardPrice = IsStandard;
            _priceType = PriceType;
            _category = Category;
            _currMaterialPriceHeaderList = this._currMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == _priceType && p.Category == this._category).OrderBy(p => p.EffectFromDate).ToList();

            //MultPriceType currMultPriceType = new MultPriceType();
            //switch (CurrMIDcSource.MultiPriceOption)
            //{
            //    case 1:
            //        currMultPriceType = MultPriceType.ColorRangeSizeCup;
            //        break;
            //    case 2:
            //        currMultPriceType = MultPriceType.ColorOnly;
            //        break;
            //    case 3:
            //        currMultPriceType = MultPriceType.CupSize;
            //        break;
            //}
            //_multPrceType = currMultPriceType;
            if (CurrMIDcSource.MultiPriceOption != null)
                _multPrceType = GetMultiPriceOption(CurrMIDcSource.MultiPriceOption.Value);

            //获取当前使用的单价项
            GetCurrPriceItem();

            //初始化历史单价选择框
            IntialHistoryPriceChkBox(null);

            //隐藏汇总区域
            this.panelCtr_SumMsg.Visible = !(IsShowSumMsgPanel == null || IsShowSumMsgPanel == false);

            this.panelCtrl_Btn.Visible = !(IsHideShowAddDelBtns == null ? false : IsHideShowAddDelBtns);

            //Xsj:刷新單價狀態
            NotePriceState();

        }

        //Xsj110803
        private MultPriceType GetMultiPriceOption(int MultiPriceOptionIndex)
        {
            MultPriceType currMultPriceType = new MultPriceType();
            switch (MultiPriceOptionIndex)
            {
                case 1:
                    currMultPriceType = MultPriceType.ColorRangeSizeCup;
                    break;
                case 2:
                    currMultPriceType = MultPriceType.ColorOnly;
                    break;
                case 3:
                    currMultPriceType = MultPriceType.CupSize;
                    break;
            }
            return currMultPriceType;

        }

        /// <summary>
        /// Xsj20111124:提示用戶，所有單價是否已過期
        /// </summary>
        private void NotePriceState()
        {
            PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            MaterialPriceHeader currMPH = pHInfo.GetCurrPriceHeader(this._currMIDcSource,this. _priceType, this._category);
            if (currMPH!=null && currMPH.EffectEndDate != null && currMPH.EffectEndDate < DateTime.Now.Date)
            {
                this.lblPriceStateNote.Text = "單價過期";
            }
            else
            {
                this.lblPriceStateNote.Text = "";
            }
        }

        //获取当前使用的单价项 
        private void GetCurrPriceItem()
        {
            _currUsedMaterialPriceHeader = new MaterialPriceHeader();
            if (_currMaterialPriceHeaderList.Count == 0) return;
            _currUsedMaterialPriceHeader = _currMaterialPriceHeaderList[0];
            foreach (MaterialPriceHeader item in _currMaterialPriceHeaderList)
            {
                if (item.EffectFromDate.Date <= DateTime.Now.Date && item.EffectFromDate.Date > _currUsedMaterialPriceHeader.EffectFromDate.Date)
                {
                    _currUsedMaterialPriceHeader = item;
                }
            }

        }

        //Xsj101218:初始化歷史單價選擇列表
        private void IntialHistoryPriceChkBox(MaterialPriceHeader CurrPriceItem)
        {
            #region Xsj20110817:为完善历史多单价而添加
            //控制编辑按钮的可编辑性
            if (this.comboBoxEditHistoryItem.Properties.Items.Count == 0)
            {
                this.sBtnEdit.Enabled = false;
            }
            #endregion
            this.panelCtr_PriceShow.Controls.Clear();
            this.comboBoxEditHistoryItem.Properties.Items.Clear();
            if (_currMaterialPriceHeaderList.Count == 0) return;

            foreach (PH.MIDc.BO.MaterialPriceHeader priceItem in _currMaterialPriceHeaderList)
            {
                this.comboBoxEditHistoryItem.Properties.Items.Add(priceItem);
            }

            if (CurrPriceItem != null && this.comboBoxEditHistoryItem.SelectedItem == CurrPriceItem)
            {
                ResetPriceEditor();
            }
            else
            {
                if (CurrPriceItem == null)
                {
                    if (_currUsedMaterialPriceHeader != null)
                    {
                        if (this.comboBoxEditHistoryItem.SelectedItem != _currUsedMaterialPriceHeader)
                        {
                            this.comboBoxEditHistoryItem.SelectedItem = _currUsedMaterialPriceHeader;
                        }
                        else
                        {
                            ResetPriceEditor();
                        }
                    }
                    else
                    {
                        this.comboBoxEditHistoryItem.SelectedIndex = 0;
                    }
                }
                else
                {
                    this.comboBoxEditHistoryItem.SelectedItem = CurrPriceItem;
                }
            }
            _isDelAction = false;
        }

        /// <summary>
        /// Xsj:保存當前的單價，並生成新單價對應的單價編輯框
        /// </summary>
        private void ResetPriceEditor()
        {
            PH.MIDc.BO.MaterialPriceHeader currMaterialPriceHeader = this.comboBoxEditHistoryItem.SelectedItem as PH.MIDc.BO.MaterialPriceHeader;
            bool isMultiPrice = currMaterialPriceHeader.IsMultiPrice ?? false;
            MaterialPrice currPriceCls;
            //Xsj:先清理原來的單價編輯界面
            foreach (Control item in this.panelCtr_PriceShow.Controls)
            {
                item.Dispose();
            }

            this.panelCtr_PriceShow.Controls.Clear();
            if (!isMultiPrice)
            {
                //SinglePrice
                #region Xsj20110817:为完善历史多单价而注释掉
                //currPriceCls = this._currMIDcSource.MaterialPrices.Where(p => p.Category == currMaterialPriceHeader.Category &&
                //                                                p.PriceType == currMaterialPriceHeader.PriceType && 
                //                                                p.EffectFromDate.Date == currMaterialPriceHeader.EffectFromDate.Date).FirstOrDefault();
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                currPriceCls = currMaterialPriceHeader.MaterialPrices.FirstOrDefault();
                #endregion
                if (currPriceCls == null)
                {
                    currPriceCls = new MaterialPrice();
                    currPriceCls.PriceType = this._priceType;
                    currPriceCls.Category = this._category;
                    currPriceCls.EffectFromDate = currMaterialPriceHeader.EffectFromDate.Date;
                    currPriceCls.EffectEndDate = currMaterialPriceHeader.EffectEndDate;
                    currPriceCls.ColorRange = "ALL";
                    currPriceCls.Size = "ALL";
                    currPriceCls.Cup = "ALL";
                    currPriceCls.Ratio = 1;

                    #region Xsj20110817:为完善历史多单价而添加
                    currPriceCls.Version = currMaterialPriceHeader.Version;
                    currPriceCls.SuppRef = currMaterialPriceHeader.SuppRef;
                    #endregion
                    if (this._isAdd)
                    {
                        #region
                        if (MessageBox.Show("是否复制当前单价至新的单价？", "新增提示", MessageBoxButtons.YesNo) == DialogResult.Yes)
                        {
                            MaterialPrice mPrice = null;
                            MaterialPriceHeader currMPH = new PH.MIDc.BO.PriceHeaderInfo().GetCurrPriceHeader(this._currMIDcSource, this._priceType, this._category);
                            if (currMPH != null)
                            {
                                #region Xsj20110817:为完善历史多单价而注释掉
                                //mPrice = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType && p.Category == currMPH.Category 
                                //    && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).FirstOrDefault();
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                mPrice = currMPH.MaterialPrices.FirstOrDefault();
                                #endregion
                                if (mPrice == null)
                                {
                                    currMPH = new PH.MIDc.BO.PriceHeaderInfo().GetLastPriceHeader(this._currMIDcSource, this._priceType, this._category);
                                    if (currMPH != null)
                                    {
                                        #region Xsj20110817:为完善历史多单价而注释掉
                                        //mPrice = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType 
                                        // && p.Category == currMPH.Category && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).FirstOrDefault();
                                        #endregion
                                        #region Xsj20110817:为完善历史多单价而添加
                                        mPrice = currMPH.MaterialPrices.FirstOrDefault();
                                        #endregion
                                    }
                                }
                            }
                            else
                            {
                                currMPH = new PH.MIDc.BO.PriceHeaderInfo().GetLastPriceHeader(this._currMIDcSource, this._priceType, this._category);
                                if (currMPH != null)
                                {
                                    #region Xsj20110817:为完善历史多单价而注释掉
                                    //mPrice = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType 
                                    //    && p.Category == currMPH.Category && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).FirstOrDefault();
                                    #endregion
                                    #region Xsj20110817:为完善历史多单价而添加
                                    mPrice = currMPH.MaterialPrices.FirstOrDefault();
                                    #endregion
                                }
                            }

                            if (mPrice != null && mPrice.Price > 0)
                            {
                                currPriceCls.Price = mPrice.Price;
                            }
                        }
                        #endregion
                    }

                    #region Xsj20110817:为完善历史多单价而注释掉
                    //this._currMIDcSource.MaterialPrices.Add(currPriceCls);
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    currPriceCls.ColorRange = "ALL";
                    currPriceCls.Size = "ALL";
                    currPriceCls.Cup = "ALL";
                    currMaterialPriceHeader.MaterialPrices.Add(currPriceCls);
                    #endregion
                }
                CommonSinglePriceEditor comSinglePriceEdt = new CommonSinglePriceEditor();
                //Xsj20111124:注冊單價狀態提示動作
                comSinglePriceEdt.NotePriceStatus = new CommonSinglePriceEditor.UpdatePriceNote(NotePriceState);
                comSinglePriceEdt.CurrMIDcSource = this._currMIDcSource;
                comSinglePriceEdt.CurrUsedMaterialPriceHeader = currMaterialPriceHeader;
                comSinglePriceEdt.bindingSource1.DataSource = currPriceCls;
                comSinglePriceEdt.CreatShowSinglePrice();
                comSinglePriceEdt.Currency = this.Currency;
                comSinglePriceEdt.CurrencyVisible = this.CurrencyVisible;
                comSinglePriceEdt.Dock = DockStyle.Fill;

                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                comSinglePriceEdt.IsShowSpecialPriceAllInPriceProperty = this.IsShowSpecialPriceAllInPriceProperty;
                #endregion


                //添加并显示
                this.panelCtr_PriceShow.Controls.Clear();
                this.panelCtr_PriceShow.Controls.Add(comSinglePriceEdt);

            }
            else
            {
                //MultiPrice
                CommonGridCtrl comMultiPriceEdit = new CommonGridCtrl();
                //Xsj20111124:注冊單價狀態提示動作
                comMultiPriceEdit.NotePriceStatus = new CommonGridCtrl.UpdatePriceNote(NotePriceState);
                comMultiPriceEdit.Currency = this.Currency;
                comMultiPriceEdit.CurrencyVisible = this.CurrencyVisible;
                comMultiPriceEdit.Dock = DockStyle.Fill;
                comMultiPriceEdit.CurrMaterialPriceHeader = currMaterialPriceHeader;

                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                comMultiPriceEdit.IsShowSpecialPriceAllInPriceProperty = this.IsShowSpecialPriceAllInPriceProperty;
                #endregion

                if (this._isAdd)
                {
                    #region
                    if (MessageBox.Show("是否复制当前单价至新的单价？", "新增提示", MessageBoxButtons.YesNo) == DialogResult.Yes)
                    {
                        List<MaterialPrice> mPriceList = new List<MaterialPrice>();
                        MaterialPriceHeader currMPH = new PH.MIDc.BO.PriceHeaderInfo().GetCurrPriceHeader(this._currMIDcSource, this._priceType, this._category);
                        if (currMPH != null)
                        {
                            #region Xsj20110817:为完善历史多单价而注释掉
                            //mPriceList = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType 
                            //    && p.Category == currMPH.Category && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).ToList();
                            #endregion
                            #region Xsj20110817:为完善历史多单价而添加
                            mPriceList = currMPH.MaterialPrices.ToList();
                            #endregion
                            if (mPriceList.Count == 0)
                            {
                                currMPH = new PH.MIDc.BO.PriceHeaderInfo().GetLastPriceHeader(this._currMIDcSource, this._priceType, this._category);
                                if (currMPH != null)
                                {
                                    #region Xsj20110817:为完善历史多单价而注释掉
                                    //mPriceList = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType 
                                    //    && p.Category == currMPH.Category && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).ToList();
                                    #endregion
                                    #region Xsj20110817:为完善历史多单价而添加
                                    mPriceList = currMPH.MaterialPrices.ToList();
                                    #endregion

                                }
                            }
                        }
                        else
                        {
                            currMPH = new PH.MIDc.BO.PriceHeaderInfo().GetLastPriceHeader(this._currMIDcSource, this._priceType, this._category);
                            if (currMPH != null)
                            {
                                #region Xsj20110817:为完善历史多单价而注释掉
                                //mPriceList = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType && p.Category == currMPH.Category
                                //    && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).ToList();
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                mPriceList = currMPH.MaterialPrices.ToList();
                                #endregion
                            }
                        }

                        foreach (MaterialPrice item in mPriceList)
                        {
                            currPriceCls = new MaterialPrice();
                            currPriceCls.PriceType = this._priceType;
                            currPriceCls.Category = this._category;
                            currPriceCls.EffectFromDate = currMaterialPriceHeader.EffectFromDate.Date;
                            currPriceCls.EffectEndDate = currMaterialPriceHeader.EffectEndDate;
                            currPriceCls.ColorRange = item.ColorRange;
                            currPriceCls.Size = item.Size;
                            currPriceCls.Cup = item.Cup;
                            if (item.Price.HasValue && item.Price.Value > 0)
                            {
                                currPriceCls.Price = item.Price;
                                currPriceCls.Ratio = 1;
                            }

                            #region Xsj20110817:为完善历史多单价而注释掉
                            //this._currMIDcSource.MaterialPrices.Add(currPriceCls);
                            #endregion
                            #region Xsj20110817:为完善历史多单价而添加
                            currMaterialPriceHeader.MaterialPrices.Add(currPriceCls);
                            #endregion
                        }
                    }
                    #endregion
                }
                comMultiPriceEdit.CreatPriceDt(this._multPrceType, this._priceType, this._currPriceDataTable, this._currMIDcSource, this._category);
                this.panelCtr_PriceShow.Controls.Clear();
                this.panelCtr_PriceShow.Controls.Add(comMultiPriceEdit);

            }

        }

        //保存当前编辑单价窗体的单价
        public void SavePirce()
        {
            if (this.panelCtr_PriceShow.Controls.Count != 1) return;
            object currPriceEditor = this.panelCtr_PriceShow.Controls[0];
            PH.MIDc.BO.MaterialPriceHeader currMaterialPriceHeader = this.comboBoxEditHistoryItem.SelectedItem as PH.MIDc.BO.MaterialPriceHeader;
            if (currMaterialPriceHeader == null) return;
            bool isMultiPrice = currMaterialPriceHeader.IsMultiPrice ?? false;
            if (isMultiPrice)
            {
                CommonGridCtrl priceEditor = currPriceEditor as CommonGridCtrl;
                priceEditor.SaveCurrPirce();
            }
            else
            {
                CommonSinglePriceEditor priceEditor = currPriceEditor as CommonSinglePriceEditor;
                //priceEditor.bindingSource1.EndEdit();\
                priceEditor.EndEdit();
            }

            ReSumAllInPrice();

            GetCurrPriceItem();
        }

        //新增单价项按钮事件
        private void sBtnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                //Xsj20110915:每次点击Add按钮都更新一下MultiPriceOption，保持与其它类别单价的输入一至
                //this._currMIDcSource.MultiPriceOption = this.OutMIDcSourc.MultiPriceOption;
                this._isAdd = true;
                //if (_currMaterialPriceHeaderList.Count == 0)
                //{
                //    MessageBox.Show("当前物料尝没建立相关资料，请运行EnterKey进行设置。");
                //    return;
                //}
                CreatePriceItemDialogBox cPriceItemDialogBox = new CreatePriceItemDialogBox(_currMaterialPriceHeaderList, this._currMIDcSource);
                if (cPriceItemDialogBox.ShowDialog() == DialogResult.Cancel)
                {
                    this._isAdd = false;
                    return;
                }

                DateTime effectFromDate = cPriceItemDialogBox.CurrMPH.EffectFromDate;
                bool isMultPrice = cPriceItemDialogBox.CurrMPH.IsMultiPrice ?? false;
                int multiPriceOptionIndex = cPriceItemDialogBox.CurrMPH.Detail.MultiPriceOption ?? 0;

                //添加MaterialPriceHeader
                MaterialPriceHeader newMaterialPriceHeader = new MaterialPriceHeader();
                newMaterialPriceHeader.SuppRef = this._currMIDcSource.SuppRef;
                newMaterialPriceHeader.PriceType = this._priceType;
                newMaterialPriceHeader.Category = this._category;
                newMaterialPriceHeader.IsMultiPrice = isMultPrice;
                newMaterialPriceHeader.EffectFromDate = effectFromDate.Date;
                newMaterialPriceHeader.Version = newMaterialPriceHeader.SuppRef.Trim() + "_" +
                    newMaterialPriceHeader.PriceType.Trim() + "_" +
                    (newMaterialPriceHeader.PriceType == MaterialPriceType.Standard.ToString() ? MaterialPriceType.Standard.ToString() : newMaterialPriceHeader.Category).Trim() + "_" +
                    DateTime.Now.ToString("yyyyMMddHHmmssfff");

                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                newMaterialPriceHeader.WastageOnCAC = cPriceItemDialogBox.CurrMPH.WastageOnCAC;
                newMaterialPriceHeader.Relaxtion = cPriceItemDialogBox.CurrMPH.Relaxtion;
                newMaterialPriceHeader.ValueAdjustAddDyeing = cPriceItemDialogBox.CurrMPH.ValueAdjustAddDyeing;
                newMaterialPriceHeader.PriceIncrProtect = cPriceItemDialogBox.CurrMPH.PriceIncrProtect;
                newMaterialPriceHeader.UncertainQuality = cPriceItemDialogBox.CurrMPH.UncertainQuality;
                newMaterialPriceHeader.OthersBuffer = cPriceItemDialogBox.CurrMPH.OthersBuffer;
                #endregion


                this._multPrceType = GetMultiPriceOption(multiPriceOptionIndex);


                #region Xsj20110817:为完善历史多单价而添加
                //newMaterialPriceHeader.ColorList = cPriceItemDialogBox.ColorDetailList;
                //newMaterialPriceHeader.CupList = cPriceItemDialogBox.CupDetailList;
                //newMaterialPriceHeader.SizeList = cPriceItemDialogBox.SizeDetailList;


                newMaterialPriceHeader.ColorList = cPriceItemDialogBox.CurrMPH.ColorList; //.ColorDetailList
                newMaterialPriceHeader.CupList = cPriceItemDialogBox.CurrMPH.CupList; // CupDetailList 
                newMaterialPriceHeader.SizeList = cPriceItemDialogBox.CurrMPH.SizeList; //.SizeDetailList;
                #region
                ////添加ColorDetail、CupDetail、SizeDetail
                //foreach (PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls item in cPriceItemDialogBox.ColorDetailList.Where(p => p.IsChosed).ToList())
                //{
                //    PH.MIDc.BO.NewColorDetail newColorDetail = new NewColorDetail();
                //    newColorDetail.SuppRef = item.SuppRef;
                //    newColorDetail.Color = item.ColorCode;
                //    newColorDetail.Description = item.Desc;
                //    newColorDetail.Version = newMaterialPriceHeader.Version;
                //    newColorDetail.MaterialPriceHeader = newMaterialPriceHeader;
                //    newMaterialPriceHeader.NewColorDetails.Add(newColorDetail);
                //}
                //foreach (PH.MIDc.BO.MaterialPriceHeader.CupDetailCls item in cPriceItemDialogBox.CupDetailList.Where(p => p.IsChosed).ToList())
                //{
                //    PH.MIDc.BO.NewCupDetail newCupDetail = new NewCupDetail();
                //    newCupDetail.SuppRef = item.SuppRef;
                //    newCupDetail.Cup = item.CupCode;
                //    newCupDetail.Description = item.Desc;
                //    newCupDetail.Version = newMaterialPriceHeader.Version;
                //    newCupDetail.MaterialPriceHeader = newMaterialPriceHeader;
                //    newMaterialPriceHeader.NewCupDetails.Add(newCupDetail);
                //}
                //foreach (PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls item in cPriceItemDialogBox.SizeDetailList.Where(p => p.IsChosed).ToList())
                //{
                //    PH.MIDc.BO.NewSizeDetail newSizeDetail = new NewSizeDetail();
                //    newSizeDetail.SuppRef = item.SuppRef;
                //    newSizeDetail.Size = item.SizeCode;
                //    newSizeDetail.Description = item.Desc; ;
                //    newSizeDetail.Version = newMaterialPriceHeader.Version;
                //    newSizeDetail.MaterialPriceHeader = newMaterialPriceHeader;
                //    newMaterialPriceHeader.NewSizeDetails.Add(newSizeDetail);
                //}
                #endregion
                #endregion

                this._currMIDcSource.MultiPriceOption = multiPriceOptionIndex;
                this._currUsedMaterialPriceHeader = newMaterialPriceHeader;
                this._currMIDcSource.MaterialPriceHeaders.Add(newMaterialPriceHeader);
                this._currMaterialPriceHeaderList.Add(newMaterialPriceHeader);
                IntialHistoryPriceChkBox(newMaterialPriceHeader);

                this._isAdd = false;


                //Xsj20111124:更新單價提示 
                this.NotePriceState();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }
        //编辑当前单价项按钮事件
        private void sBtnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                _isEdit = true;
                PH.MIDc.BO.MaterialPriceHeader currMaterialPriceHeader = this.comboBoxEditHistoryItem.SelectedItem as PH.MIDc.BO.MaterialPriceHeader;
                if (currMaterialPriceHeader == null) return;
                CreatePriceItemDialogBox cPriceItemDialogBox = new CreatePriceItemDialogBox(_currMaterialPriceHeaderList, this._currMIDcSource, currMaterialPriceHeader);
                if (cPriceItemDialogBox.ShowDialog() == DialogResult.Cancel)
                {
                    _isEdit = false;
                    return;
                }
                ResetPriceEditor();
                _isEdit = false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

                this.Cursor = Cursors.Default;
            }
        }
        //删除单价项按钮事件
        private void sBtnDel_Click(object sender, EventArgs e)
        {
            try
            {

                this.Cursor = Cursors.WaitCursor;
                if (this.comboBoxEditHistoryItem.Properties.Items.Count == 0)
                {
                    return;
                }
                if (this.comboBoxEditHistoryItem.Properties.Items.Count == 1)
                {
                    MessageBox.Show("当前单价项已是唯一单价项，不能删除？", "系统提示");
                    return;
                }
                if (MessageBox.Show("你确定要删除当前单价项吗？", "删除确认", MessageBoxButtons.YesNo) != DialogResult.Yes)
                {
                    return;
                }

                _isDelAction = true;

                MaterialPriceHeader currMPH = this.comboBoxEditHistoryItem.SelectedItem as MaterialPriceHeader;
                List<MaterialPrice> waitForDelList = new List<MaterialPrice>();

                #region Xsj20110817:为完善历史多单价而注释掉
                //waitForDelList = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == currMPH.PriceType && p.Category.Trim() == currMPH.Category.Trim() 
                //    && p.EffectFromDate.Date == currMPH.EffectFromDate.Date).ToList();
                //foreach (MaterialPrice item in waitForDelList)
                //{
                //    this._currMIDcSource.MaterialPrices.Remove(item);
                //}
                #endregion

                this._currMIDcSource.MaterialPriceHeaders.Remove(currMPH);
                this._currMaterialPriceHeaderList.Remove(currMPH);

                //刷新_currUsedMaterialPriceItem
                GetCurrPriceItem();
                IntialHistoryPriceChkBox(null);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

                this.Cursor = Cursors.Default;
            }
        }

        //Xsj101218:切換單價記錄
        #region
        private void comboBoxEditHistoryItem_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            //保存当前单价 
            if (!_isDelAction)
            {
                SavePirce();
            }
        }
        private void comboBoxEditHistoryItem_SelectedValueChanged(object sender, EventArgs e)
        {
            //保存当前单价  
            ResetPriceEditor();
            CheckToForbid();
            ReSumAllInPrice();
            ResetCurrPHM();
        }
        #endregion

        /// <summary>
        /// 更改Standard的单价项时，重新设定父窗体EnterKeyForm的CurrentMaterialPHM
        /// </summary>
        private void ResetCurrPHM()
        {
            if (this.ParentForm.GetType() == typeof(PH.MIDc.UI.EntranceKeyForm) && this._currUsedMaterialPriceHeader != null && this._currUsedMaterialPriceHeader.PriceType == MaterialPriceType.Standard.ToString())
            {
                PH.MIDc.UI.EntranceKeyForm eKForm = this.ParentForm as PH.MIDc.UI.EntranceKeyForm;
                eKForm.CurrStandardMPH = _currUsedMaterialPriceHeader;
            }

        }

        /// <summary>
        /// 禁止修改历史单价
        /// </summary>
        /// <param name="IsForbid"></param>
        private void ForbidChangeHistoryPrice(bool IsForbid)
        {
            this.sBtnDel.Enabled = IsForbid;
            EditorStatusManager.EnableCtrl(this, IsForbid, this.currDetailDetailForm.MatlPriceBORightForCurrUser);
        }

        /// <summary>
        /// Xsj：檢查是否禁用單價編輯
        /// </summary>
        public void CheckToForbid()
        {
            MaterialPriceHeader currMPH = this.comboBoxEditHistoryItem.SelectedItem as MaterialPriceHeader;
            if (currMPH == null) return;
            DateTime currPriceEffectFromDate = currMPH.EffectFromDate.Date;
            if (_currUsedMaterialPriceHeader == null) return;

            //是否有修改权限
            if (this.currDetailDetailForm.MatlPriceBORightForCurrUser.AllowUpdate)
            {
                if (_currUsedMaterialPriceHeader.EffectFromDate.Date > currMPH.EffectFromDate.Date)
                {
                    //禁止修改单价
                    ForbidChangeHistoryPrice(false);
                }
                else
                {
                    //允许修改单价
                    ForbidChangeHistoryPrice(true && (this.currDetailDetailForm == null ? true : ((this.currDetailDetailForm.BindingSource.Current as Detail).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit || (this.currDetailDetailForm.BindingSource.Current as Detail).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)));
                }
            }
            else
            {
                //禁止修改单价
                ForbidChangeHistoryPrice(false);
            }
        }

        /// <summary>
        /// 依MaterialPriceHeader重計AllInPrice
        /// </summary>
        public void ReSumAllInPrice()
        {
            PH.MIDc.BO.MaterialPriceHeader currMaterialPriceHeader = this.comboBoxEditHistoryItem.SelectedItem as PH.MIDc.BO.MaterialPriceHeader;
            if (currMaterialPriceHeader == null || this._currMIDcSource == null) return;
            decimal allInPriceSpecial;
            decimal allInPriceFuture_Supplier = 0;

            //Xsj2012-05-07:在此區別性計算All-In-Price：
            //1.如果是Standard單價，則沿用舊的算法。
            //2.如果是Special單價，則采用MaterialPriceHeader中的針對該單價維護的計算參數。
            decimal c0 = (this._currMIDcSource.Point2PortOfOriginCost + this._currMIDcSource.FreightCost + this._currMIDcSource.Port2PointOfDestinationCost
                + this._currMIDcSource.PointOfDestination2ProductionSiteCost + this._currMIDcSource.EstInterest + this._currMIDcSource.StandardDev) / 100;

            decimal avgPrice = this._currMIDcSource.SupplierAvgPrice(currMaterialPriceHeader);
            decimal c1 = avgPrice * (1 + c0) * this._currMIDcSource.ExchangeRate;
            //decimal totalAjust = ((this._currMIDcSource.ValueAdjustAddDyeing ?? 0) + (this._currMIDcSource.PriceIncrProtect ?? 0) + (this._currMIDcSource.UncertainQuality ?? 0) + (this._currMIDcSource.OthersBuffer ?? 0)); ;
            //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
            #region
            decimal totalAjust = 0;
            if (currMaterialPriceHeader.PriceType == "Standard")
            {
                totalAjust = ((this._currMIDcSource.ValueAdjustAddDyeing ?? 0) + (this._currMIDcSource.PriceIncrProtect ?? 0) + (this._currMIDcSource.UncertainQuality ?? 0) + (this._currMIDcSource.OthersBuffer ?? 0)); ;
            }
            else
            {
                totalAjust = ((currMaterialPriceHeader.ValueAdjustAddDyeing ?? 0) + (currMaterialPriceHeader.PriceIncrProtect ?? 0) + (currMaterialPriceHeader.UncertainQuality ?? 0) + (currMaterialPriceHeader.OthersBuffer ?? 0)); ;
            }
            #endregion
 
            decimal c2 = totalAjust;
            allInPriceFuture_Supplier = c1 + c2;
            if ((this._currMIDcSource.RateToPHUnit ?? 0) == 0)
            {
                allInPriceSpecial = 0;
            }
            else
            {
                allInPriceSpecial = allInPriceFuture_Supplier / (this._currMIDcSource.RateToPHUnit ?? 1);
            }
            //AllInPrice
            this.editPrice.EditValue = allInPriceSpecial;
            //AllInPrice_Supplier
            this.spinEdit_AllInPriceSupplier.EditValue = allInPriceFuture_Supplier;
            //Unit
            this.lblPHUnit.Text = this._currMIDcSource.PHUnit;
            this.lblSupplierUnit.Text = this._currMIDcSource.SupplierUnit;
        }

        private void PriceShowCtrl_Load(object sender, EventArgs e)
        {
            ForbidRollPriceItem();
        }

        /// <summary>
        /// Xsj20110816:没有MaterialPriceBo新增和删除权限的，禁止滚动历史单价选择项
        /// </summary>
        private void ForbidRollPriceItem()
        {
            if (this.currDetailDetailForm != null)
            {
                PH.MIDc.BO.MaterialPriceBoRightForCurrUser MPBORightForCurrUser = this.currDetailDetailForm.MatlPriceBORightForCurrUser;
                if (MPBORightForCurrUser.AllowAdd || MPBORightForCurrUser.AllowDel || MPBORightForCurrUser.AllowUpdate)
                {
                    return;
                }
            }
            this.comboBoxEditHistoryItem.Enabled = false;
        } 

    }
}
