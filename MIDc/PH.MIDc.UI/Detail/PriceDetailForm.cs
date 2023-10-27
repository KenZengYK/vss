using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
using System.Reflection;
using System.Runtime.InteropServices;


namespace PH.MIDc.UI
{
    public partial class PriceDetailForm : UserControl
    {
        private PH.MIDc.BO.Detail MIDcSource;
        private bool _isStandardPrice = false;
        /// <summary>
        /// 当前父窗体
        /// </summary>
        public DetailDetailForm currDetailDetailForm { get; set; }

        /// <summary>
        /// 单价输入框是否可编辑
        /// </summary>
        public bool IsEnable
        {
            set
            {
                //EditorStatusManager.EnableCtrl(this, value,this.currDetailDetailForm.MatlPriceBORightForCurrUser);
                SetPriceShowCtrlEnable(this);
            }
        }

        //记录Special单价
        private void SetPriceShowCtrlEnable(Control CurrCtrl)
        {
            if (CurrCtrl.Controls.Count > 0)
            {
                if (CurrCtrl.GetType() == typeof(PriceShowCtrl))
                {
                    PriceShowCtrl currPriceShow = CurrCtrl as PriceShowCtrl;
                    currPriceShow.CheckToForbid();
                }
                else
                {
                    foreach (Control item in CurrCtrl.Controls)
                    {
                        SetPriceShowCtrlEnable(item);
                    }
                }
            }
        }

        /// <summary>
        /// 是否显示币别
        /// </summary>
        public bool CurrencyVisible { get; set; }


        //構造函數
        public PriceDetailForm()
        {
            InitializeComponent();
        }

        //顯示數據入口 
        public void ShowPriceDetailData(PH.MIDc.BO.Detail TCurrDetail, bool IsStandard)
        {
            _isStandardPrice = IsStandard;
            InitalDataSourc(TCurrDetail);
            ShowHideTabPge(_isStandardPrice);
            CreatePriceEditors();
        }

        #region 添加外部增加和删除单价功能
        //添加/刪除相關的頁簽/錄入數據的SinglePriceEditor 
        private void AddOrDelTabPageAndEditor(DevExpress.XtraTab.XtraTabControl xtraTabCtrl, List<string> PageList, MaterialPriceType CurrMaterialPriceType)
        {
            List<string> AddPageList = new List<string>();
            xtraTabCtrl.TabPages.Clear();
            foreach (string item in PageList)
            {
                string PageName = "TabPageSingleMultiPrice_" + item.Trim();
                AddPageList.Add(PageName);
            }
            //進行页签添加并绑定数据源
            for (int i = 0; i < AddPageList.Count; i++)
            {
                string PageName = AddPageList[i];
                DevExpress.XtraTab.XtraTabPage NewTabPage = new DevExpress.XtraTab.XtraTabPage();
                NewTabPage.Name = PageName;
                NewTabPage.Text = PageName.Split('_')[1];
                xtraTabCtrl.TabPages.Add(NewTabPage);
                PriceShowCtrl newPriceShowCtrl = new PriceShowCtrl();
                newPriceShowCtrl.Name = "ComSingleMultiPriceEditor" + CurrMaterialPriceType.ToString() + PageName.Split('_')[1];
                newPriceShowCtrl.currDetailDetailForm = this.currDetailDetailForm;
                newPriceShowCtrl.Currency = this.MIDcSource.Currency;
                newPriceShowCtrl.CurrencyVisible = this.CurrencyVisible;
                newPriceShowCtrl.IsShowSumMsgPanel = true;
                NewTabPage.Controls.Add(newPriceShowCtrl);
                newPriceShowCtrl.Dock = DockStyle.Fill;
                newPriceShowCtrl.ShowData(MIDcSource, false, CurrMaterialPriceType.ToString(), PageName.Split('_')[1]);
            }
        }

        private void CreatePriceEditors()
        {
            //从选定的ColorRange/Size/Cup数据构建MIDcSource.PriceList数据源-20101105
            //Standard
            if (this._isStandardPrice)
            {
                object[] standardPriceShowCtrls = this.Controls.Find("priceShowCtrl_StandardMultiPrice", true);
                if (standardPriceShowCtrls.Count() > 0)
                {
                    PriceShowCtrl currStandardPriceShowCtrl = standardPriceShowCtrls[0] as PriceShowCtrl;
                    currStandardPriceShowCtrl.currDetailDetailForm = this.currDetailDetailForm;
                    currStandardPriceShowCtrl.Currency = this.MIDcSource.Currency;
                    currStandardPriceShowCtrl.CurrencyVisible = this.CurrencyVisible;
                    currStandardPriceShowCtrl.IsShowSumMsgPanel = true;
                    currStandardPriceShowCtrl.ShowData(MIDcSource, true, "Standard", "");
                }
            }
            else
            {
                //Special
                List<string> CustFavorChoseList = this.MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == MaterialPriceType.CustomerFavor.ToString()).Select(p => p.Category).Distinct().ToList();
                if (CustFavorChoseList.Count > 0)
                {
                    AddOrDelTabPageAndEditor(this.xtraTabCtrl_OutMultCustFavor, CustFavorChoseList, MaterialPriceType.CustomerFavor);
                }
                List<string> VolumeChoseList = this.MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == MaterialPriceType.Volume.ToString()).Select(p => p.Category).Distinct().ToList();
                if (VolumeChoseList.Count > 0)
                {
                    AddOrDelTabPageAndEditor(this.xtraTabCtrl_OutMultVolume, VolumeChoseList, MaterialPriceType.Volume);
                }
                List<string> PeriodChoseList = this.MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == MaterialPriceType.Period.ToString()).Select(p => p.Category).Distinct().ToList();
                if (PeriodChoseList.Count > 0)
                {
                    AddOrDelTabPageAndEditor(this.xtraTabCtrl_OutMultPeriod, PeriodChoseList, MaterialPriceType.Period);
                }
                List<string> CollectiveChoseList = this.MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == MaterialPriceType.Collective.ToString()).Select(p => p.Category).Distinct().ToList();
                if (CollectiveChoseList.Count > 0)
                {
                    AddOrDelTabPageAndEditor(this.xtraTabCtrl_OutMultCollective, CollectiveChoseList, MaterialPriceType.Collective);
                }
            }
        }


        /// <summary>
        /// 通過對拷方式,初始化數據源
        /// </summary>
        /// <param name="CurrDetail"></param>
        private void InitalDataSourc(PH.MIDc.BO.Detail CurrDetail)
        {
            MIDcSource = new Detail();
            PH.MIDc.BO.Detail currDetail = CurrDetail;
            MIDcSource.SuppRef = currDetail.SuppRef;
            MIDcSource.Supplier = currDetail.Supplier;
            MIDcSource.WERPSupplier = currDetail.ERPSupplier;
            MIDcSource.MaterialGroup = currDetail.MaterialGroup;
            MIDcSource.MaterialCode = currDetail.MaterialCode;

            MIDcSource.YieldUsage = currDetail.YieldUsage;
            MIDcSource.SingleRangeSize = currDetail.SingleRangeSize;
            MIDcSource.UnitForSize = currDetail.UnitForSize;

            MIDcSource.IsPurchaseItem = currDetail.IsPurchaseItem ?? true;
            MIDcSource.Operation = currDetail.Operation;

            MIDcSource.Status = currDetail.Status;
            MIDcSource.Dimension = currDetail.Dimension;

            MIDcSource.MultiPriceOption = currDetail.MultiPriceOption;
            MIDcSource.HasSpecialPrice = currDetail.HasSpecialPrice;
            MIDcSource.HasPeriodPrice = currDetail.HasPeriodPrice;
            MIDcSource.HasVolumePrice = currDetail.HasVolumePrice;
            MIDcSource.HasCustFavorPrice = currDetail.HasCustFavorPrice;
            MIDcSource.HasCollectivePrice = currDetail.HasCollectivePrice;

            MIDcSource.MinOrder = currDetail.MinOrder;
            MIDcSource.MinColor = currDetail.MinColor;

            MIDcSource.SizeMatrix = currDetail.SizeMatrix;

            MIDcSource.LiabilityFollowUp = currDetail.LiabilityFollowUp;
            MIDcSource.DyeingMultiple = currDetail.DyeingMultiple;
            MIDcSource.Liability = currDetail.Liability;
            MIDcSource.LiabilityForCustomer = currDetail.LiabilityForCustomer;
            MIDcSource.CustomerAppointed = currDetail.CustomerAppointed;

            MIDcSource.PurchaseWidthOption = currDetail.PurchaseWidthOption;
            MIDcSource.PurchaseWidth = currDetail.PurchaseWidth;
            MIDcSource.SupplierWidth = currDetail.SupplierWidth;
            MIDcSource.UsableWidth = currDetail.UsableWidth;
            MIDcSource.MarkerWidth = currDetail.MarkerWidth;
            MIDcSource.WeightGmSqm = currDetail.WeightGmSqm;

            MIDcSource.SupplierUnit = string.IsNullOrEmpty(currDetail.SupplierUnit) ?
                (currDetail.SupplierProfile != null ? currDetail.SupplierProfile.SupplierUOM : "") : currDetail.SupplierUnit;
            MIDcSource.PHUnit = string.IsNullOrEmpty(currDetail.PHUnit) ?
                (currDetail.SupplierProfile != null ? currDetail.SupplierProfile.PHUOM : "") : currDetail.PHUnit;

            currDetail.SupplierUnit = MIDcSource.SupplierUnit;
            currDetail.PHUnit = MIDcSource.PHUnit;
            //MIDcSource.RateToPHUnit = currDetail.RateToPHUnit;

            MIDcSource.HaveSizeMatrix = currDetail.HaveSizeMatrix ?? false;

            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();


            MIDcSource.CreateDate = currDetail.CreateDate;

            //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
            #region
            MIDcSource.WastageOnCAC = currDetail.WastageOnCAC;
            MIDcSource.Relaxtion = currDetail.Relaxtion;
            MIDcSource.ValueAdjustAddDyeing = currDetail.ValueAdjustAddDyeing;
            MIDcSource.PriceIncrProtect = currDetail.PriceIncrProtect;
            MIDcSource.UncertainQuality = currDetail.UncertainQuality;
            MIDcSource.OthersBuffer = currDetail.OthersBuffer;
            #endregion

            //ColorDetail
            foreach (ColorDetail item in currDetail.ColorDetails)
            {
                ColorDetail newColorDetail = new ColorDetail();
                newColorDetail.SuppRef = item.SuppRef;
                newColorDetail.Color = item.Color;
                newColorDetail.Description = item.Description;
                MIDcSource.ColorDetails.Add(newColorDetail);
            }
            #region Xsj20110817:为完善历史多单价而注释掉
            ////CupDetail
            //foreach (CupDetail item in currDetail.CupDetails)
            //{
            //    CupDetail newCupDetail = new CupDetail();
            //    newCupDetail.SuppRef = item.SuppRef;
            //    newCupDetail.Cup = item.Cup;
            //    newCupDetail.Description = item.Description;
            //    MIDcSource.CupDetails.Add(newCupDetail);
            //}
            ////SizeDetail
            //foreach (SizeDetail item in currDetail.SizeDetails)
            //{
            //    SizeDetail newSizeDetail = new SizeDetail();
            //    newSizeDetail.SuppRef = item.SuppRef;
            //    newSizeDetail.Size = item.Size;
            //    newSizeDetail.Description = item.Description;
            //    MIDcSource.SizeDetails.Add(newSizeDetail);
            //}
            #endregion 
            //MaterialProcesses
            foreach (MaterialProcess item in currDetail.MaterialProcesses)
            {
                MaterialProcess newMaterialProcess = new MaterialProcess();
                newMaterialProcess.SuppRef = item.SuppRef;
                newMaterialProcess.MatlForProcess = item.MatlForProcess;
                newMaterialProcess.ItemWidth = item.ItemWidth;
                newMaterialProcess.IsMain = item.IsMain;
                MIDcSource.MaterialProcesses.Add(newMaterialProcess);
            }
            //MaterialPriceHeader
            foreach (MaterialPriceHeader item in currDetail.MaterialPriceHeaders)
            {
                MaterialPriceHeader newMaterialPriceHeader = new MaterialPriceHeader();
                newMaterialPriceHeader.SuppRef = item.SuppRef;
                newMaterialPriceHeader.PriceType = item.PriceType;
                newMaterialPriceHeader.Category = item.Category;
                newMaterialPriceHeader.IsMultiPrice = item.IsMultiPrice;
                newMaterialPriceHeader.EffectFromDate = item.EffectFromDate.Date;
                newMaterialPriceHeader.EffectEndDate = item.EffectEndDate;
                newMaterialPriceHeader.Version = item.Version;

                //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                #region
                newMaterialPriceHeader.WastageOnCAC = item.WastageOnCAC;
                newMaterialPriceHeader.Relaxtion = item.Relaxtion;
                newMaterialPriceHeader.ValueAdjustAddDyeing = item.ValueAdjustAddDyeing;
                newMaterialPriceHeader.PriceIncrProtect = item.PriceIncrProtect;
                newMaterialPriceHeader.UncertainQuality = item.UncertainQuality;
                newMaterialPriceHeader.OthersBuffer = item.OthersBuffer;
                #endregion

                MIDcSource.MaterialPriceHeaders.Add(newMaterialPriceHeader);
                //ColorDetail
                foreach (NewColorDetail itemColor in item.NewColorDetails)
                {
                    NewColorDetail newColorDetail = new NewColorDetail();
                    newColorDetail.SuppRef = item.SuppRef;
                    newColorDetail.Color = itemColor.Color;
                    newColorDetail.Description = itemColor.Description;
                    newColorDetail.Version = newMaterialPriceHeader.Version;
                    newMaterialPriceHeader.NewColorDetails.Add(newColorDetail);
                }
                //ColorDetail
                foreach (NewCupDetail itemCup in item.NewCupDetails)
                {
                    NewCupDetail newCupDetail = new NewCupDetail();
                    newCupDetail.SuppRef = item.SuppRef;
                    newCupDetail.Cup = itemCup.Cup;
                    newCupDetail.Description = itemCup.Description;
                    newCupDetail.Version = newMaterialPriceHeader.Version;
                    newMaterialPriceHeader.NewCupDetails.Add(newCupDetail);
                }
                //ColorDetail
                foreach (NewSizeDetail itemSize in item.NewSizeDetails)
                {
                    NewSizeDetail newSizeDetail = new NewSizeDetail();
                    newSizeDetail.SuppRef = item.SuppRef;
                    newSizeDetail.Size = itemSize.Size;
                    newSizeDetail.Description = itemSize.Description;
                    newSizeDetail.Version = newMaterialPriceHeader.Version;
                    newMaterialPriceHeader.NewSizeDetails.Add(newSizeDetail);
                }
                #region Xsj20110817:为完善历史多单价而添加
                //MaterialPrice
                foreach (MaterialPrice itemPrice in item.MaterialPrices)
                {
                    PH.MIDc.BO.MaterialPrice NewMatlPrice = new MaterialPrice();
                    NewMatlPrice.SuppRef = itemPrice.SuppRef;
                    NewMatlPrice.PriceType = itemPrice.PriceType;
                    NewMatlPrice.Category = itemPrice.Category.Trim();
                    NewMatlPrice.ColorRange = itemPrice.ColorRange;
                    NewMatlPrice.Cup = itemPrice.Cup;
                    NewMatlPrice.Size = itemPrice.Size;
                    NewMatlPrice.EffectFromDate = itemPrice.EffectFromDate.Date;
                    NewMatlPrice.EffectEndDate = itemPrice.EffectEndDate;
                    NewMatlPrice.Price = itemPrice.Price;
                    NewMatlPrice.Ratio = itemPrice.Ratio;
                    NewMatlPrice.Version = itemPrice.Version;
                    newMaterialPriceHeader.MaterialPrices.Add(NewMatlPrice);
                }
                #endregion
            }
            #region Xsj20110817:为完善历史多单价而注释掉
            ////MaterialPrice
            //foreach (MaterialPrice item in currDetail.MaterialPrices)
            //{
            //    PH.MIDc.BO.MaterialPrice NewMatlPrice = new MaterialPrice();
            //    NewMatlPrice.SuppRef = item.SuppRef;
            //    NewMatlPrice.PriceType = item.PriceType;
            //    NewMatlPrice.Category = item.Category.Trim();
            //    NewMatlPrice.ColorRange = item.ColorRange;
            //    NewMatlPrice.Cup = item.Cup;
            //    NewMatlPrice.Size = item.Size;
            //    NewMatlPrice.EffectFromDate = item.EffectFromDate.Date;
            //    NewMatlPrice.EffectEndDate = item.EffectEndDate;
            //    NewMatlPrice.Price = item.Price;
            //    NewMatlPrice.Ratio = item.Ratio;
            //    MIDcSource.MaterialPrices.Add(NewMatlPrice);
            //}
            #endregion
            MIDcSource.MaterialType = currDetail.MaterialType;


            #region 應王生的要求，計算Item的單價必須是SampleOrder所選定的PHFactory
            PH.MIDc.BO.SampleOrder newSampleOrder = new SampleOrder();
            newSampleOrder.Factory = currDetail.SampleOrder.Factory;
            MIDcSource.SampleOrder = newSampleOrder;
            #endregion
        }

        /// <summary>
        /// 根据Standard/Multity页签显示和隐藏相关的面签
        /// </summary>
        /// <param name="CurrDetail"></param>
        /// <param name="IsStandard"></param>
        private void ShowHideTabPge(bool IsStandard)
        {
            //Standard/CustFavor/Volume/Period/Collective
            if (IsStandard)
            {
                //Special
                this.xtraTabCtrl_OutMultPriceEditor.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
                this.xtraTabPageOutMultStandardPrice.PageVisible = true;
                this.xtraTabPageOutMultCustFavorPrice.PageVisible = false;
                this.xtraTabPageOutMultVolumePrice.PageVisible = false;
                this.xtraTabPageOutMultPeriodPrice.PageVisible = false;
                this.xtraTabPageOutMultCollectivePrice.PageVisible = false;
            }
            else
            {
                //Special
                this.xtraTabCtrl_OutMultPriceEditor.ShowTabHeader = DevExpress.Utils.DefaultBoolean.True;
                this.xtraTabPageOutMultStandardPrice.PageVisible = false;
                this.xtraTabPageOutMultCustFavorPrice.PageVisible = (MIDcSource.HasCustFavorPrice ?? false);
                this.xtraTabPageOutMultVolumePrice.PageVisible = (MIDcSource.HasVolumePrice ?? false);
                this.xtraTabPageOutMultPeriodPrice.PageVisible = (MIDcSource.HasPeriodPrice ?? false);
                this.xtraTabPageOutMultCollectivePrice.PageVisible = (MIDcSource.HasCollectivePrice ?? false);
            }
        }

        public PH.MIDc.BO.Detail SavePrice()
        {
            SaveSpecialPrice(this.xtraTabCtrl_OutMultPriceEditor);
            return MIDcSource;
        }
        //记录Special单价
        private void SaveSpecialPrice(Control CurrCtrl)
        {
            if (CurrCtrl.Controls.Count > 0)
            {
                if (CurrCtrl.GetType() == typeof(PriceShowCtrl))
                {
                    PriceShowCtrl currPriceShow = CurrCtrl as PriceShowCtrl;
                    currPriceShow.SavePirce();
                }
                else
                {
                    foreach (Control item in CurrCtrl.Controls)
                    {
                        SaveSpecialPrice(item);
                    }
                }
            }
        }
        #endregion
    }

}
