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
    public partial class CreatePriceItemDialogBox : Form
    {
        private List<PH.MIDc.BO.MaterialPriceHeader> _materialPriceHeaderList;
        private PH.MIDc.BO.Detail _currMIDcSource;
        public MIDc.BO.MaterialPriceHeader CurrMPH = new PH.MIDc.BO.MaterialPriceHeader();
        public PH.MIDc.BO.MaterialPriceHeader _currMPH;
        private bool _formStatueIsAdd = false;

        #region 構造函數
        //Add
        public CreatePriceItemDialogBox(List<PH.MIDc.BO.MaterialPriceHeader> MaterialPriceHeaderList, PH.MIDc.BO.Detail Detail)
        {
            InitializeComponent();
            _formStatueIsAdd = true;
            this.Text = "新增";
            this._materialPriceHeaderList = MaterialPriceHeaderList;
            this._currMIDcSource = Detail;
            CreateCurrMPHCopy(null);
        }
        //Edit
        public CreatePriceItemDialogBox(List<PH.MIDc.BO.MaterialPriceHeader> MaterialPriceHeaderList, PH.MIDc.BO.Detail Detail, PH.MIDc.BO.MaterialPriceHeader CurrMaterialPriceHeader)
        {
            InitializeComponent();
            this.Text = "修改";
            this._materialPriceHeaderList = MaterialPriceHeaderList;
            //不允許修改EffectFromDate
            this.dateEditEffectFromDate.Properties.ReadOnly = true;
            this._currMIDcSource = Detail;
            this._currMPH = CurrMaterialPriceHeader;
            CreateCurrMPHCopy(CurrMaterialPriceHeader);
            IsShowMultiPriceOption();
        }

        /// <summary>
        /// 創建操作的MaterialPriceHeader副本
        /// </summary>
        /// <param name="MPH"></param>
        private void CreateCurrMPHCopy(PH.MIDc.BO.MaterialPriceHeader MPH)
        {
            //CurrMPH = new PH.MIDc.BO.MaterialPriceHeader();
            CurrMPH.SuppRef = this._currMIDcSource.SuppRef;
            PH.MIDc.BO.Detail newDetail = new PH.MIDc.BO.Detail();
            newDetail.SuppRef = this._currMIDcSource.SuppRef;
            newDetail.Supplier = this._currMIDcSource.Supplier;
            newDetail.MaterialType = this._currMIDcSource.MaterialType;
            newDetail.MultiPriceOption = this._currMIDcSource.MultiPriceOption;
            newDetail.MultiColorSize = MPH == null ? false : MPH.Detail.MultiColorSize;
            newDetail.MultiColor = MPH == null ? false : MPH.Detail.MultiColor;
            newDetail.MultiSize = MPH == null ? false : MPH.Detail.MultiSize;
            CurrMPH.Detail = newDetail;
            if (this._formStatueIsAdd)
            {
                this.CurrMPH.EffectFromDate = DateTime.Now;
                PH.MIDc.BO.PriceHeaderInfo pInfo = new PH.MIDc.BO.PriceHeaderInfo();
                if (this._materialPriceHeaderList.Count != 0)
                {
                    MPH = pInfo.GetCurrPriceHeader(this._currMIDcSource, this._materialPriceHeaderList[0].PriceType, this._materialPriceHeaderList[0].Category);
                }


                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                CurrMPH.WastageOnCAC = this._currMIDcSource.WastageOnCAC;
                CurrMPH.Relaxtion = this._currMIDcSource.RedirectPrice;
                #endregion
            }
            else
            {
                CurrMPH.EffectFromDate = MPH.EffectFromDate;
                CurrMPH.IsMultiPrice = MPH.IsMultiPrice;
                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                CurrMPH.WastageOnCAC = MPH.WastageOnCAC;
                CurrMPH.Relaxtion = MPH.Relaxtion;
                #endregion
            }
            if (MPH != null)
            {
                foreach (PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls item in MPH.ColorList)
                {
                    PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls newColorDetail = this.CurrMPH.ColorList.Where(p => p.ColorCode == item.ColorCode).FirstOrDefault();
                    if (newColorDetail == null) continue;
                    newColorDetail.IsChosed = item.IsChosed;
                }
                foreach (PH.MIDc.BO.MaterialPriceHeader.CupDetailCls item in MPH.CupList)
                {
                    PH.MIDc.BO.MaterialPriceHeader.CupDetailCls newCupDetail = this.CurrMPH.CupList.Where(p => p.CupCode == item.CupCode).FirstOrDefault();
                    if (newCupDetail == null) continue;
                    newCupDetail.IsChosed = item.IsChosed;
                }
                foreach (PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls item in MPH.SizeList)
                {
                    PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls newSizeDetail = this.CurrMPH.SizeList.Where(p => p.SizeCode == item.SizeCode).FirstOrDefault();
                    if (newSizeDetail == null) continue;
                    newSizeDetail.IsChosed = item.IsChosed;
                }

                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                CurrMPH.ValueAdjustAddDyeing = MPH.ValueAdjustAddDyeing;
                CurrMPH.PriceIncrProtect = MPH.PriceIncrProtect;
                CurrMPH.UncertainQuality = MPH.PriceIncrProtect;
                CurrMPH.OthersBuffer = MPH.OthersBuffer;
                #endregion
            }
            this.bindingSource1.DataSource = CurrMPH;
        }
        #endregion

        /// <summary>
        /// 是否顯示MultiPriceOption
        /// </summary>
        private void IsShowMultiPriceOption()
        {
            if (this._currMIDcSource.MultiPriceOption == null && !(this.radioGroupPriceType.EditValue is System.DBNull) && this.radioGroupPriceType.EditValue != null && (bool)this.radioGroupPriceType.EditValue)
            {

                //如果是2D則只能選ColorOnly
                //if (this._currMIDcSource.DataPreparedBy == "3Ds")
                if (this._currMIDcSource.DataPreparedBy == "2D")
                {
                    this.chkEdit_ColorSize.Properties.ReadOnly = true;
                    this.chkEditSize.Properties.ReadOnly = true;
                    this.chkEditColor.Properties.ReadOnly = false;
                    this.CurrMPH.Detail.MultiPriceOption = 2;
                }
                else
                {
                    this.chkEdit_ColorSize.Properties.ReadOnly = false;
                    this.chkEditSize.Properties.ReadOnly = false;
                    this.chkEditColor.Properties.ReadOnly = false;
                }
                this.xtPage_MultiPriceOption.PageVisible = true;

            }
            else
            {
                this.xtPage_MultiPriceOption.PageVisible = false;
            }

            //顯示和隱藏Color/Cup/Size的顯示頁面             
            ShowXtaPageForColorCupSize(this._currMIDcSource.MIDcDimensionDesc);
        }

        /// <summary>
        /// 顯示或隱藏Color/Cup/Size的顯示頁面 
        /// </summary>
        /// <param name="DimensionDesc"></param>
        private void ShowXtaPageForColorCupSize(string DimensionDesc)
        {
            switch (DimensionDesc)
            //switch (Dimension)
            {
                //case "2":
                //case "3Ds":
                //    xtPage_Size.PageVisible = xtPage_Cup.PageVisible = false;
                //    break;
                //case "3Dr":
                //    xtPage_Size.PageVisible = true;
                //    xtPage_Cup.PageVisible = false;
                //    break;
                //default:
                //    xtPage_Size.PageVisible = true;
                //    xtPage_Cup.PageVisible = true;
                //    break;
                case "2D":
                    xtPage_Size.PageVisible = xtPage_Cup.PageVisible = false;
                    break;
                case "3D":

                    switch (_currMIDcSource.SingleRangeSize)
                    {
                        case "3Das":

                            xtPage_Size.PageVisible = xtPage_Cup.PageVisible = false;

                            break;
                        case "3Das-rc":
                            goto case "3Das";
                        case "3Dat":
                            goto case "3Das";
                        case "3Daw":
                            goto case "3Das";
                        default:
                            xtPage_Size.PageVisible = true;
                            xtPage_Cup.PageVisible = false; 
                            break;
                    }                   
                    break;


                   
                    
                default:
                    xtPage_Size.PageVisible = true;
                    xtPage_Cup.PageVisible = true;
                    break;
            }
        }

        /// <summary>
        /// 驗證必輸
        /// </summary>
        /// <returns></returns>
        private bool CheckInput()
        {
            bool result = true;
            PH.MIDc.BO.MaterialPriceHeader maxEffectFromDateMPH = this._materialPriceHeaderList.OrderBy(p => p.EffectFromDate).LastOrDefault();
            if (this._formStatueIsAdd)  //Add
            {
                if (this.CurrMPH.IsMultiPrice == null)
                {
                    MessageBox.Show("請選擇單價的類別[PriceType]。", "系統提示");
                    result = false;
                }
                else if (this.CurrMPH.EffectFromDate == null)
                {
                    MessageBox.Show("請選取單價的有效開始日期。", "系統提示");
                    result = false;
                }
                else if (maxEffectFromDateMPH != null && maxEffectFromDateMPH.EffectFromDate.Date > Convert.ToDateTime(this.dateEditEffectFromDate.EditValue).Date)
                {
                    MessageBox.Show("新建單價項的有效開始日期不能小於[" + maxEffectFromDateMPH.EffectFromDate.ToString("yyyy/MM/dd") + "]", "系統提示");
                    result = false;
                }
                else if (_materialPriceHeaderList.Where(p => p.EffectFromDate.Date == Convert.ToDateTime(this.dateEditEffectFromDate.EditValue).Date).Count() > 0)
                {
                    MessageBox.Show("已存在有效開始日期[" + Convert.ToDateTime(this.dateEditEffectFromDate.EditValue).Date.ToString() + "]的單價項,請確認。", "系統提示");
                    result = false;
                }
            }
            if (result)  //Add Or Edit
            {
                if (!(this.CurrMPH.IsMultiPrice ?? false)) //Single
                {
                    string msg = "信息提示：\r\n";
                    int n = 1;
                    string bk = "  ";
                    switch (this._currMIDcSource.MIDcDimensionDesc)
                    {
                        case "2D":
                            if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                            {
                                msg += bk + (n++).ToString() + ": 你尚未選擇ColorRange 。\r\n";
                            }
                            break;
                        case "3D":

                            switch (_currMIDcSource.SingleRangeSize)
                            {
                                case "3Das":

                                    if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                                    {
                                        msg += bk + (n++).ToString() + ": 你尚未選擇ColorRange 。\r\n";
                                    }

                                    break;
                                case "3Das-rc":
                                    goto case "3Das";
                                case "3Dat":
                                    goto case "3Das";
                                case "3Daw":
                                    goto case "3Das";
                                default:
                                    if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                                    {
                                        msg += bk + (n++).ToString() + ": 你尚未選擇ColorRange 。\r\n";
                                    }
                                    if (this.CurrMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                                    {
                                        msg += bk + (n++).ToString() + ": 你尚未選擇Size 。\r\n";
                                    }
                                    break;
                            }
                            break;


                        case "4D":
                            if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                            {
                                msg += bk + (n++).ToString() + ": 你尚未選擇ColorRange 。\r\n";
                            }
                            if (this.CurrMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                            {
                                msg += bk + (n++).ToString() + ": 你尚未選擇Size 。\r\n";
                            }
                            break;
                        //case "3Ds":
                        //    if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                        //    {
                        //        msg += bk + (n++).ToString() + ": 你尚未選擇ColorRange 。\r\n";
                        //    }
                        //    break;
                        //case "3Dr":
                        //case "4D":
                        //    if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                        //    {
                        //        msg += bk + (n++).ToString() + ": 你尚未選擇ColorRange 。\r\n";
                        //    }
                        //    if (this.CurrMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                        //    {
                        //        msg += bk + (n++).ToString() + ": 你尚未選擇Size 。\r\n";
                        //    }
                        //    break;
                    }
                    if (n != 1)
                    {
                        msg += "請選擇上述內容?";
                        MessageBox.Show(msg, "系統提示");
                        result = false;
                    }
                }
                //this.chkEdit_ColorSize.Checked&& !this.chkEditColor.Checked && !this.chkEditSize.Checked
                else if (this._currMIDcSource.MultiPriceOption == null & !(this.CurrMPH.Detail.MultiColorSize) && !(this.CurrMPH.Detail.MultiColor) && !(this.CurrMPH.Detail.MultiSize)) //Multi
                {
                    MessageBox.Show("請選擇單價的類別[Multiple price option]。", "系統提示");
                    result = false;
                }
                #region Xsj20110817:為完善歷史多單價而添加
                //this.chkEdit_ColorSize.Checked || this.chkEditColor.Checked || this.chkEditSize.Checked
                else if (this.CurrMPH.Detail.MultiColorSize || this.CurrMPH.Detail.MultiColor || this.CurrMPH.Detail.MultiSize) //檢測Color,Size,Cup
                {
                    #region
                    int multiPriceOption = 0;
                    if (this._currMIDcSource.MultiPriceOption != null)
                    {
                        multiPriceOption = this._currMIDcSource.MultiPriceOption.Value;
                    }
                    else
                    {
                        if (this.CurrMPH.Detail.MultiColorSize) //this.chkEdit_ColorSize.Checked
                        {
                            multiPriceOption = 1;
                        }
                        else if (this.CurrMPH.Detail.MultiColor) //this.chkEditColor.Checked
                        {
                            multiPriceOption = 2;
                        }
                        else if (this.CurrMPH.Detail.MultiSize) //this.chkEditSize.Checked
                        {
                            multiPriceOption = 3;
                        }
                    }
                    switch (multiPriceOption)
                    {
                        case 1:
                            if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                            {
                                MessageBox.Show("請選擇ColorRange信息");
                                this.xtralContrl_PriceInfo.SelectedTabPage = this.xtPage_ColorRange;
                                result = false;
                            }
                            else if (this.CurrMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                            {
                                MessageBox.Show("請選擇Size信息");
                                this.xtralContrl_PriceInfo.SelectedTabPage = this.xtPage_Size;
                                result = false;
                            }
                            break;
                        case 2:
                            if (this.CurrMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                            {
                                MessageBox.Show("請選擇ColorRange信息");
                                this.xtralContrl_PriceInfo.SelectedTabPage = this.xtPage_ColorRange;
                                result = false;
                            }
                            break;
                        case 3:
                            if (this.CurrMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                            {
                                MessageBox.Show("請選擇Size信息");
                                this.xtralContrl_PriceInfo.SelectedTabPage = this.xtPage_Size;
                                result = false;
                            }
                            break;
                    }

                    #endregion
                }
                #endregion
            }
            return result;
        }

        private void CreatePriceItemDialogBox_Load(object sender, EventArgs e)
        {
            IsShowMultiPriceOption();
        }

        private void radioGroupPriceType_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void radioGroupPriceType_EditValueChanged(object sender, EventArgs e)
        {
            IsShowMultiPriceOption();

        }

        #region 按鈕事件
        private void sBtn_Cancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void sBtn_OK_Click(object sender, EventArgs e)
        {
            if (!CheckInput())
            {
                return;
            }
            if (_formStatueIsAdd) //Add
            {
                this._currMIDcSource.MultiPriceOption = this.CurrMPH.Detail.MultiPriceOption; // MultiPriceOption; 
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else //Edit
            {
                //ColorList  
                foreach (PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls item in this.CurrMPH.ColorList)
                {
                    PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls newColorDetail = this._currMPH.ColorList.Where(p => p.ColorCode == item.ColorCode).FirstOrDefault();
                    if (newColorDetail == null) continue;
                    newColorDetail.IsChosed = item.IsChosed;
                }
                this._currMPH.NewColorDetails.Clear();
                List<PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls> choosedColorList = this._currMPH.ColorList.Where(p => p.IsChosed).ToList();
                foreach (PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls item in choosedColorList)
                {
                    PH.MIDc.BO.NewColorDetail newColorDetail = new PH.MIDc.BO.NewColorDetail();
                    newColorDetail.SuppRef = item.SuppRef;
                    newColorDetail.Color = item.ColorCode;
                    newColorDetail.Description = item.Desc;
                    newColorDetail.MaterialPriceHeader = this._currMPH;
                    newColorDetail.Version = this._currMPH.Version;
                    this._currMPH.NewColorDetails.Add(newColorDetail);
                }
                //CupList
                foreach (PH.MIDc.BO.MaterialPriceHeader.CupDetailCls item in this.CurrMPH.CupList)
                {
                    PH.MIDc.BO.MaterialPriceHeader.CupDetailCls newCupDetail = this._currMPH.CupList.Where(p => p.CupCode == item.CupCode).FirstOrDefault();
                    if (newCupDetail == null) continue;
                    newCupDetail.IsChosed = item.IsChosed;
                }
                this._currMPH.NewCupDetails.Clear();
                List<PH.MIDc.BO.MaterialPriceHeader.CupDetailCls> choosedCupList = this._currMPH.CupList.Where(p => p.IsChosed).ToList();
                foreach (PH.MIDc.BO.MaterialPriceHeader.CupDetailCls item in choosedCupList)
                {
                    PH.MIDc.BO.NewCupDetail newCupDetail = new PH.MIDc.BO.NewCupDetail();
                    newCupDetail.SuppRef = item.SuppRef;
                    newCupDetail.Cup = item.CupCode;
                    newCupDetail.Description = item.Desc;
                    newCupDetail.MaterialPriceHeader = this._currMPH;
                    newCupDetail.Version = this._currMPH.Version;
                    this._currMPH.NewCupDetails.Add(newCupDetail);
                }
                //SizeList
                foreach (PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls item in this.CurrMPH.SizeList)
                {
                    PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls newSizeDetail = this._currMPH.SizeList.Where(p => p.SizeCode == item.SizeCode).FirstOrDefault();
                    if (newSizeDetail == null) continue;
                    newSizeDetail.IsChosed = item.IsChosed;
                }
                this._currMPH.NewCupDetails.Clear();
                List<PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls> choosedSizeList = this._currMPH.SizeList.Where(p => p.IsChosed).ToList();
                foreach (PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls item in choosedSizeList)
                {
                    PH.MIDc.BO.NewSizeDetail newSizeDetail = new PH.MIDc.BO.NewSizeDetail();
                    newSizeDetail.SuppRef = item.SuppRef;
                    newSizeDetail.Size = item.SizeCode;
                    newSizeDetail.Description = item.Desc;
                    newSizeDetail.MaterialPriceHeader = this._currMPH;
                    newSizeDetail.Version = this._currMPH.Version;
                    this._currMPH.NewSizeDetails.Add(newSizeDetail);
                }

                if (this._currMPH.IsMultiPrice != (this.CurrMPH.IsMultiPrice ?? false))
                {
                    if ((this._currMPH.IsMultiPrice ?? false)) //如果單價項由Multiple轉為Single
                    {
                        PH.MIDc.BO.MaterialPrice newMP = new PH.MIDc.BO.MaterialPrice();
                        PH.MIDc.BO.MaterialPrice oldMP = this._currMPH.MaterialPrices.FirstOrDefault();
                        if (oldMP != null)
                        {
                            newMP.SuppRef = oldMP.SuppRef;
                            newMP.PriceType = oldMP.PriceType;
                            newMP.Category = oldMP.Category;
                            newMP.EffectFromDate = oldMP.EffectFromDate.Date;
                            newMP.EffectEndDate = oldMP.EffectEndDate;
                            newMP.ColorRange = "ALL";
                            newMP.Cup = "ALL";
                            newMP.Size = "ALL";
                            newMP.Price = oldMP.Price;
                            newMP.Ratio = oldMP.Ratio;
                            newMP.MaterialPriceHeader = oldMP.MaterialPriceHeader;
                        }
                        this._currMPH.MaterialPrices.Clear();
                        this._currMPH.MaterialPrices.Add(newMP);
                    }
                    this._currMPH.IsMultiPrice = (bool)(this.radioGroupPriceType.EditValue);
                }
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }
        #endregion
    }
}
