using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.BasicInfo.BO;
using PH.MIDc.BO;
using System.Linq;
using System.Data.Linq;
using PH.Platform.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraEditors.Controls;
using PH.Platform.Misc.BO;

namespace PH.MIDc.UI
{
    public partial class EntranceKeyForm : DevExpress.XtraEditors.XtraForm
    {
        private PH.MIDc.BO.MIDcDataContext MIDcContext = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        //頁簽列表
        private List<DevExpress.XtraTab.XtraTabPage> xTabPageList = new List<DevExpress.XtraTab.XtraTabPage>();
        private List<DevExpress.XtraTab.XtraTabPage> xTabPageToForbidFinishBtnList = new List<DevExpress.XtraTab.XtraTabPage>();
        private DevExpress.XtraTab.XtraTabPage PrePage = new DevExpress.XtraTab.XtraTabPage();
        private DevExpress.XtraTab.XtraTabPage CurrPage = new DevExpress.XtraTab.XtraTabPage();
        //Xsj20110803:
        private MaterialPriceHeader _currStandardMPH;
        #region Xsj20110817:为完善历史多单价而添加
        public MaterialPriceHeader CurrStandardMPH
        {
            get
            {
                return _currStandardMPH;
            }
            set
            {
                if (this._currStandardMPH != value)
                {
                    this._currStandardMPH = value;
                    if (value != null)
                    {
                        this.gridCtrl_ColorDataSource.DataSource = this._currStandardMPH.ColorList;
                        this.gridCtrl_CupDataSource.DataSource = this._currStandardMPH.CupList;
                        this.gridCtrl_SizeDataSource.DataSource = this._currStandardMPH.SizeList;
                    }
                }
            }
        }
        #endregion
        //價格種類
        private string[] PriceOption = null;
        public Detail MIDcSource;

        private PH.MIDc.BO.Detail _CurrDetail;
        private int FixColorColWidth = 100;
        private int FixCupColWidth = 60;
        private int FixSizeColWidth = 60;

        private List<CupRange> CupRangeList = new List<CupRange>();
        private List<SizeRange> SizeRangeList = new List<SizeRange>();

        //新增,修改標識
        public enum FormStatus { IsNew, IsEdite };
        public FormStatus CurrStatus = new FormStatus();

        public DetailDetailForm CurrDetailDetailForm { get; set; }
        //構造函數
        public EntranceKeyForm(PH.MIDc.BO.Detail tMIDcSource)
        {
            InitializeComponent();


            _CurrDetail = tMIDcSource;

            //初始化本地數據源 
            #region Xsj20110718：为取消Enterkey内的独立定的的BO而添加
            MIDcSource = new Detail();
            #endregion

            //通過對拷方式,初始化數據源
            InitalDataSourc();


            #region 注冊頁面

            xTabPageList.Add(this.xtraTPage_addMatl);
            xTabPageList.Add(this.xtraTPage_POInformation);
            xTabPageList.Add(this.xtraTPage_YieldUsage);
            xTabPageList.Add(this.xtraTPage_ZoneOfSWL);
            xTabPageList.Add(this.xtraTPage_Status);
            //xTabPageList.Add(this.xtraTPage_Dimension);
            xTabPageList.Add(this.xtraTPage_SingOrMulPx);
            xTabPageList.Add(this.xtraTPage_ColorRangeSizeCup);
            xTabPageList.Add(this.xtraTPage_SinglePrice);
            xTabPageList.Add(this.xtraTPage_MultiplePriceType);
            xTabPageList.Add(this.xtraTPage_MultiPriceInput);
            xTabPageList.Add(this.xtraTPage_SecondSinglePrice);
            xTabPageList.Add(this.xtraTPage_SecondMulPrice);
            xTabPageList.Add(this.xtraTPage_BasicSelection);
            xTabPageList.Add(this.xtraTPage_PurchaseWidthUnit);

            //添加禁用Finish按鈕的頁面 
            xTabPageToForbidFinishBtnList.Add(xtraTPage_SingOrMulPx);
            xTabPageToForbidFinishBtnList.Add(xtraTPage_SinglePrice);
            xTabPageToForbidFinishBtnList.Add(xtraTPage_MultiplePriceType);
            xTabPageToForbidFinishBtnList.Add(xtraTPage_MultiPriceInput);
            xTabPageToForbidFinishBtnList.Add(xtraTPage_SecondSinglePrice);
            xTabPageToForbidFinishBtnList.Add(xtraTbPage_CustomerFavor);
            xTabPageToForbidFinishBtnList.Add(xtraTPage_ColorRangeSizeCup);
            #endregion

            this.gridView_MatlProc.IndicatorWidth = 30;
            this.gridView_MatlProc.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_ColorDetail.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_CupDetail.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView_SizeDetail.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

            PriceOption = new string[] { MaterialPriceType.Standard.ToString(),
                    MaterialPriceType.CustomerFavor.ToString(),
                    MaterialPriceType.Volume.ToString(), 
                    MaterialPriceType.Period.ToString() };


            #region Xsj20120228:應Jane Lai和王生的討論結果要求，添加Size的分類顯示和Detail版本控制
            this.gridView_SizeDetail.OptionsView.ShowGroupPanel = false;
            //this.detailVersionControlCtrl1.CurrDetail = this.MIDcSource;
            #endregion
        }
        //頁面載入
        private void EntranceKeyForm_Load(object sender, EventArgs e)
        {
            //設置初始頁
            this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage = xTabPageList[0] as DevExpress.XtraTab.XtraTabPage;
            //隱藏和顯示第一頁和最後一頁
            ShowHideBackOrNextBtn();
            //綁定Supplier數據源
            //BindSupplier();
            BindMaterialType();
            BindOperation();
            if (_CurrDetail.SuppRef == null || _CurrDetail.SuppRef.Trim() == "")
            {
                CurrStatus = FormStatus.IsNew;
            }
            else
            {
                CurrStatus = FormStatus.IsEdite;
            }
            if (CurrStatus == FormStatus.IsNew)
            {
                //新建時默認為"Study"
                MIDcSource.Status = "Study";

                //add by shulin 2023-03-24 "新建立MIDc Entrance Key MOQ&MCQ設定"   Yan Yao 2023/03/24 10:21 邮件设置默认值
                MIDcSource.MinColor = 0;
                MIDcSource.MinOrder = 0;
                MIDcSource.DyeingMultiple = "0";
                MIDcSource.WastageOnCAC = 0;
                MIDcSource.Relaxtion = 0;
                /************************************************************************************************************/


                this.txtEditSuppRef.Enabled = true;
            }

            //status界面控件赋值
           // DevExpress.XtraEditors.RadioGroup Ritem = new RadioGroup();
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();// new PH.Platform.Misc.BO.PHPlatformMiscDataContext();

            List<Misc_DataDictionary> StatusList = context.Misc_DataDictionaries.Where(dr => dr.DataType == "PH.MIDc.Status").ToList();
                //from dic in context.Misc_DataDictionaries
                //                                  where dic.DataType == "PH.MIDc.Status"
                //                                select dic;
            radGroup_Status.Properties.Items.Clear();
            foreach (Misc_DataDictionary obj in StatusList) 
            {
                DevExpress.XtraEditors.Controls.RadioGroupItem Ritem =
                    new DevExpress.XtraEditors.Controls.RadioGroupItem(obj.DataCode, obj.DataName);
                radGroup_Status.Properties.Items.Add(Ritem);
            }
            
           


            this.bindingSource1.DataSource = MIDcSource;
            this.xtraTabCtrl_MIDcEntranceKey.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            //初始化已選擇的CustomerFavor清單
            InitialCustomerFavorList();
            //初始化已選擇的Volume清單
            InitialVolumeList();
            //初始化已選擇的Period清單
            InitialPeriodList();
            //初始化已選擇的Period清單
            InitialCollectiveList();
        }

        //操作數據源
        #region 操作數據源
        //操作數據源 
        private List<string> MaterialList = new List<string>();
        //綁定Mat'l Type
        private void BindMaterialType()
        {
            MaterialList.Clear();
            this.cmbMaterialType.Properties.Items.Clear();
          
           MaterialTypeList list = new MaterialTypeList();
           var aa = list.GetActiveMaterialTypes("N.A.");
           foreach (var item in aa)
           {
               this.cmbMaterialType.Properties.Items.Add(item.MaterialType1);
           }

            this.cmbMaterialType.EditValue = MIDcSource.MaterialType;
        }
        private void BindOperation()
        {
            this.cbOperation.Properties.Items.Clear();
            DictionaryList list = new DictionaryList();
            var aa = list.GetDataDictionary("PH.MIDc.Operation");
            foreach (var a in aa)
            {
                this.cbOperation.Properties.Items.Add(a.DataCode);
            }
            this.cbOperation.EditValue = MIDcSource.Operation;
        }
        //通過對拷方式,初始化數據源
        private void InitalDataSourc()
        {
            MIDcSource.BOWorkMode = _CurrDetail.BOWorkMode;
            MIDcSource.SuppRef = _CurrDetail.SuppRef;
            MIDcSource.Supplier = _CurrDetail.Supplier;
            MIDcSource.WERPSupplier = _CurrDetail.ERPSupplier;

            MIDcSource.MaterialGroup = _CurrDetail.MaterialGroup;
            MIDcSource.MaterialCode = _CurrDetail.MaterialCode;

            MIDcSource.YieldUsage = _CurrDetail.YieldUsage;
            MIDcSource.SingleRangeSize = _CurrDetail.SingleRangeSize;
            MIDcSource.UnitForSize = _CurrDetail.UnitForSize;

            MIDcSource.IsPurchaseItem = _CurrDetail.IsPurchaseItem ?? true;
            MIDcSource.Operation = _CurrDetail.Operation;

            MIDcSource.Status = _CurrDetail.Status;
            MIDcSource.Dimension = _CurrDetail.Dimension;

            MIDcSource.MultiPriceOption = _CurrDetail.MultiPriceOption;
            MIDcSource.HasSpecialPrice = _CurrDetail.HasSpecialPrice;
            MIDcSource.HasPeriodPrice = _CurrDetail.HasPeriodPrice;
            MIDcSource.HasVolumePrice = _CurrDetail.HasVolumePrice;
            MIDcSource.HasCustFavorPrice = _CurrDetail.HasCustFavorPrice;
            MIDcSource.HasCollectivePrice = _CurrDetail.HasCollectivePrice;

            MIDcSource.MinOrder = _CurrDetail.MinOrder;
            MIDcSource.MinColor = _CurrDetail.MinColor;

            MIDcSource.SizeMatrix = _CurrDetail.SizeMatrix;

            MIDcSource.LiabilityFollowUp = _CurrDetail.LiabilityFollowUp;
            MIDcSource.DyeingMultiple = _CurrDetail.DyeingMultiple;
            MIDcSource.Liability = _CurrDetail.Liability;
            MIDcSource.LiabilityForCustomer = _CurrDetail.LiabilityForCustomer;
            MIDcSource.CustomerAppointed = _CurrDetail.CustomerAppointed;

            MIDcSource.PurchaseWidthOption = (_CurrDetail.PurchaseWidthOption ?? 1);
            MIDcSource.PurchaseWidth = _CurrDetail.PurchaseWidth;
            MIDcSource.SupplierWidth = _CurrDetail.SupplierWidth;
            MIDcSource.UsableWidth = _CurrDetail.UsableWidth;
            MIDcSource.MarkerWidth = _CurrDetail.MarkerWidth;
            MIDcSource.WeightGmSqm = _CurrDetail.WeightGmSqm;
            MIDcSource.SizeSpec = _CurrDetail.SizeSpec;

            MIDcSource.SupplierUnit = string.IsNullOrEmpty(_CurrDetail.SupplierUnit) ?
                (_CurrDetail.SupplierProfile != null ? _CurrDetail.SupplierProfile.SupplierUOM : "") : _CurrDetail.SupplierUnit;
            MIDcSource.PHUnit = string.IsNullOrEmpty(_CurrDetail.PHUnit) ?
                (_CurrDetail.SupplierProfile != null ? _CurrDetail.SupplierProfile.PHUOM : "") : _CurrDetail.PHUnit;

            _CurrDetail.SupplierUnit = MIDcSource.SupplierUnit;
            _CurrDetail.PHUnit = MIDcSource.PHUnit;
            //MIDcSource.RateToPHUnit = _CurrDetail.RateToPHUnit;

            MIDcSource.HaveSizeMatrix = _CurrDetail.HaveSizeMatrix ?? false;

            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            //SupplierUnit
            this.txtEditSupplierUnit.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Unit" select dictionaryData;
            this.txtEditSupplierUnit.Properties.DisplayMember = "DataCode";
            this.txtEditSupplierUnit.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.txtEditSupplierUnit.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Unit", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //PHUnit
            this.txtEditPHUnit.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Unit" select dictionaryData;
            this.txtEditPHUnit.Properties.DisplayMember = "DataCode";
            this.txtEditPHUnit.Properties.ValueMember = "DataCode";
            coll = this.txtEditPHUnit.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Unit", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //Size Matrix
            DictionaryList list = new DictionaryList();
            this.cbSizeMatrix.Properties.DataSource = list.GetDataDictionaryMutiLang("PH.WO.SizeMatrix");
            this.cbSizeMatrix.Properties.DisplayMember = "Description";
            this.cbSizeMatrix.Properties.ValueMember = "DataCode";

            MIDcSource.CreateDate = _CurrDetail.CreateDate;

            //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
            #region
            MIDcSource.WastageOnCAC = _CurrDetail.WastageOnCAC;
            MIDcSource.Relaxtion = _CurrDetail.Relaxtion;
            MIDcSource.ValueAdjustAddDyeing = _CurrDetail.ValueAdjustAddDyeing;
            MIDcSource.PriceIncrProtect = _CurrDetail.PriceIncrProtect;
            MIDcSource.UncertainQuality = _CurrDetail.UncertainQuality;
            MIDcSource.OthersBuffer = _CurrDetail.UncertainQuality;
            #endregion



            #region Xsj20110525:加实现添加历史多单价而添加
            #region Xsj20110817:为完善历史多单价而注释掉
            //ColorDetail 
            foreach (ColorDetail item in _CurrDetail.ColorDetails)
            {
                ColorDetail newColorDetail = new ColorDetail();
                newColorDetail.SuppRef = item.SuppRef;
                newColorDetail.Color = item.Color;
                newColorDetail.Description = item.Description;
                MIDcSource.ColorDetails.Add(newColorDetail);
            }
            ////CupDetail
            //foreach (CupDetail item in _CurrDetail.CupDetails)
            //{
            //    CupDetail newCupDetail = new CupDetail();
            //    newCupDetail.SuppRef = item.SuppRef;
            //    newCupDetail.Cup = item.Cup;
            //    newCupDetail.Description = item.Description;
            //    MIDcSource.CupDetails.Add(newCupDetail);
            //}
            ////SizeDetail
            //foreach (SizeDetail item in _CurrDetail.SizeDetails)
            //{
            //    SizeDetail newSizeDetail = new SizeDetail();
            //    newSizeDetail.SuppRef = item.SuppRef;
            //    newSizeDetail.Size = item.Size;
            //    newSizeDetail.Description = item.Description;
            //    MIDcSource.SizeDetails.Add(newSizeDetail);
            //}
            #endregion
            //MaterialProcesses
            foreach (MaterialProcess item in _CurrDetail.MaterialProcesses)
            {
                MaterialProcess newMaterialProcess = new MaterialProcess();
                newMaterialProcess.SuppRef = item.SuppRef;
                newMaterialProcess.MatlForProcess = item.MatlForProcess;
                newMaterialProcess.ItemWidth = item.ItemWidth;
                newMaterialProcess.IsMain = item.IsMain;
                MIDcSource.MaterialProcesses.Add(newMaterialProcess);
            }
            //MaterialPriceHeader
            foreach (MaterialPriceHeader item in _CurrDetail.MaterialPriceHeaders)
            {
                MaterialPriceHeader newMaterialPriceHeader = new MaterialPriceHeader();
                newMaterialPriceHeader.SuppRef = item.SuppRef;
                newMaterialPriceHeader.PriceType = item.PriceType;
                newMaterialPriceHeader.Category = item.Category;
                newMaterialPriceHeader.IsMultiPrice = item.IsMultiPrice;
                newMaterialPriceHeader.EffectFromDate = item.EffectFromDate.Date;
                newMaterialPriceHeader.EffectEndDate = item.EffectEndDate;

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

                #region Xsj20110817:为完善历史多单价而添加
                //ColorDetail 
                newMaterialPriceHeader.Version = item.Version;
                foreach (NewColorDetail itemColor in item.NewColorDetails)
                {
                    NewColorDetail newColorDetail = new NewColorDetail();
                    newColorDetail.SuppRef = itemColor.SuppRef;
                    newColorDetail.Color = itemColor.Color;
                    newColorDetail.Description = itemColor.Description;
                    newColorDetail.Version = newMaterialPriceHeader.Version;
                    newMaterialPriceHeader.NewColorDetails.Add(newColorDetail);
                }
                //CupDetail
                foreach (NewCupDetail itemCup in item.NewCupDetails)
                {
                    NewCupDetail newCupDetail = new NewCupDetail();
                    newCupDetail.SuppRef = itemCup.SuppRef;
                    newCupDetail.Cup = itemCup.Cup;
                    newCupDetail.Description = itemCup.Description;
                    newCupDetail.Version = newMaterialPriceHeader.Version;
                    newMaterialPriceHeader.NewCupDetails.Add(newCupDetail);
                }
                //SizeDetail
                foreach (NewSizeDetail itemSize in item.NewSizeDetails)
                {
                    NewSizeDetail newSizeDetail = new NewSizeDetail();
                    newSizeDetail.SuppRef = itemSize.SuppRef;
                    newSizeDetail.Size = itemSize.Size;
                    newSizeDetail.Description = itemSize.Description;
                    newSizeDetail.Version = newMaterialPriceHeader.Version;
                    newMaterialPriceHeader.NewSizeDetails.Add(newSizeDetail);
                }
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
            //foreach (MaterialPrice item in _CurrDetail.MaterialPrices)
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

            MIDcSource.MaterialType = _CurrDetail.MaterialType;

            //if (CurrStatus == FormStatus.IsNew)
            //{
            //    MIDcSource.ColorList = new List<Detail.ColorDetailCls>();
            //    MIDcSource.CupList = new List<Detail.CupDetailCls>();
            //    MIDcSource.SizeList = new List<Detail.SizeDetailCls>();
            //}


            #region Xsj20120228:應Jane lai和王生的討論結果，添加版本控制

            this.MIDcSource.Version = this._CurrDetail.Version;
            foreach (PH.MIDc.BO.DetailChangeConfirm detailChangeConfirmItem in _CurrDetail.DetailChangeConfirms)
            {
                PH.MIDc.BO.DetailChangeConfirm newDetailChangeConfirmItem = new DetailChangeConfirm();
                newDetailChangeConfirmItem.SuppRef = detailChangeConfirmItem.SuppRef;
                newDetailChangeConfirmItem.Version = detailChangeConfirmItem.Version;
                newDetailChangeConfirmItem.ChangeType = detailChangeConfirmItem.ChangeType;
                newDetailChangeConfirmItem.ChangeUser = detailChangeConfirmItem.ChangeUser;
                newDetailChangeConfirmItem.ChangeDate = detailChangeConfirmItem.ChangeDate;
                newDetailChangeConfirmItem.ConfirmType = detailChangeConfirmItem.ConfirmType;
                newDetailChangeConfirmItem.ConfirmUser = detailChangeConfirmItem.ConfirmUser;
                newDetailChangeConfirmItem.ConfirmDate = detailChangeConfirmItem.ConfirmDate;
                newDetailChangeConfirmItem.Detail = this.MIDcSource;
                this.MIDcSource.DetailChangeConfirms.Add(newDetailChangeConfirmItem);
            }

            #endregion


            #endregion

            #region 應王生的要求，計算Item的單價必須是SampleOrder所選定的PHFactory
            PH.MIDc.BO.SampleOrder newSampleOrder = new SampleOrder();
            newSampleOrder.Factory = this._CurrDetail.SampleOrder.Factory;
            MIDcSource.SampleOrder = newSampleOrder;
            #endregion
        }
        //更新數據源

        #region Xsj20110525:加实现添加历史多单价而添加
        //清除已却掉Category的单价项
        private void ClearUnChosedPrice()
        {
            MaterialPriceHeader currUsedMaterialPriceItem = new MaterialPriceHeader(); ;
            string[] materialPriceTypeArry = new string[] { MaterialPriceType.CustomerFavor.ToString(), MaterialPriceType.Period.ToString(), 
                                                                MaterialPriceType.Volume.ToString(), MaterialPriceType.Collective.ToString() };
            List<string> newCategoryList = new List<string>();
            foreach (string priceTypeitem in materialPriceTypeArry)
            {
                switch (priceTypeitem)
                {
                    case "CustomerFavor":
                        newCategoryList = (from val in this.CustFavorChoseList
                                           select val.Trim()).ToList();
                        break;
                    case "Period":
                        newCategoryList = this.PeriodChoseList;
                        break;
                    case "Volume":
                        newCategoryList = this.VolumeChoseList;
                        break;
                    case "Collective":
                        newCategoryList = this.CollectiveChoseList;
                        break;
                }
                List<string> oldCategoryList = MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == priceTypeitem).Select(p => p.Category).ToList();
                //获取需要删除的Category列表
                List<string> delCategoryList = oldCategoryList.Except(newCategoryList).ToList();
                //获取当前使用的单价项 
                foreach (string delCategoryItem in delCategoryList)
                {
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //List<MaterialPrice> delMPList = MIDcSource.MaterialPrices.Where(p => p.PriceType == priceTypeitem && p.Category == delCategoryItem).ToList();
                    //for (int i = delMPList.Count - 1; i >= 0; i--)
                    //{
                    //    MIDcSource.MaterialPrices.Remove(delMPList[i]);
                    //}
                    #endregion

                    List<MaterialPriceHeader> delMPHList = MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == priceTypeitem && p.Category == delCategoryItem).ToList();
                    for (int i = delMPHList.Count - 1; i >= 0; i--)
                    {
                        MIDcSource.MaterialPriceHeaders.Remove(delMPHList[i]);
                    }
                }
            }

        }
        #endregion

        #endregion


        //CustomerFavorPrice/VolumePrice/Period的操作
        #region CustomerFavorPrice/VolumePrice/Period的操作
        //初始化已選擇的CustomerFavor/Volume/Period清單
        List<string> CustFavorChoseList = new List<string>();
        List<string> VolumeChoseList = new List<string>();
        List<string> PeriodChoseList = new List<string>();
        List<string> CollectiveChoseList = new List<string>();
        //初始化CustFavor
        private void InitialCustomerFavorList()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();


            //應shulin “MIDc Review”郵件2023/03/28 12:32，改成下方數據源
            PH.MIDc.BO.MIDcDataContext midscontext = ContextBuilder.CreateContext<MIDcDataContext>();
            string SqlStr = "select distinct PGRP from [PH.RWO1]..LWPM_CustomerProfile order by PGRP";
            DataTable dtCustomer = midscontext.ExecuteDataTable(SqlStr, "dtCustomer");
            cbTobeFollowup.Properties.Items.Clear();
            chkComBoxEditCustList.Properties.Items.Clear();

            foreach (DataRow dr in dtCustomer.Rows)
            {
                cbTobeFollowup.Properties.Items.Add(dr["PGRP"].ToString());
                this.chkComBoxEditCustList.Properties.Items.Add(dr["PGRP"].ToString());
            }



            //應David “更新MIDC Cust code”郵件2022/05/13 15:14中小燕子的要求，改成下方數據源
            //string SqlStr = "select distinct Customer from [PH.RWO1]..CustomerCode";
            //DataTable dtCustomer = context.ExecuteDataTable(SqlStr, "dtCustomer");
            //cbTobeFollowup.Properties.Items.Clear();
            //foreach (DataRow dr in dtCustomer.Rows)
            //{
            //    this.cbTobeFollowup.Properties.Items.Add(dr["Customer"].ToString());
            //    this.chkComBoxEditCustList.Properties.Items.Add(dr["Customer"].ToString());
            //}


            
            //var custs = from a in context.Misc_DataDictionaries
            //            where a.DataType == "PH.SPC.SampleOrder.Customer"
            //            orderby a.DataCode
            //            select a;
            //foreach (var item in custs)
            //{
            //    this.chkComBoxEditCustList.Properties.Items.Add(item.DataCode);
            //    this.cbTobeFollowup.Properties.Items.Add(item.DataCode);
            //}

            CustFavorChoseList = MIDcContext.MaterialPriceHeaders.Where(P => P.SuppRef == _CurrDetail.SuppRef && P.PriceType == MaterialPriceType.CustomerFavor.ToString()).Select(P => P.Category == null ? "" : P.Category.Trim()).Distinct().ToList();

            string InitEditValue = null;
            foreach (string item in CustFavorChoseList)
            {
                InitEditValue += " " + item + ",";
            }
            if (InitEditValue != null)
            {
                InitEditValue = InitEditValue.Trim().Substring(0, InitEditValue.Trim().Length - 1);
                this.chkComBoxEditCustList.EditValue = InitEditValue;
            }

            this.panelCtrlCustomerPrice.Enabled = this.MIDcSource.HasCustFavorPrice ?? false;
        }
        //Xsj101201:CustFavor客戶選擇事件
        private void chkComBoxEditCustList_EditValueChanged(object sender, EventArgs e)
        {
            string CustStr = this.chkComBoxEditCustList.EditValue.ToString();
            CustFavorChoseList = CustStr.Split(',').ToList();
            if (CustStr.Trim() != "")
            {
                CustStr = " " + CustStr;
                this.listBoxCtrlCustmer.Items.Clear();
                foreach (string item in CustFavorChoseList)
                {
                    this.listBoxCtrlCustmer.Items.Add(item.Trim());
                }
            }
        }
        //Xsj101201:刪除CustFavor客戶按鈕事件
        private void sBtnRemoveCustomer_Click(object sender, EventArgs e)
        {
            if (this.listBoxCtrlCustmer.SelectedItem == null)
            {
                return;
            }
            this.listBoxCtrlCustmer.Items.Remove(this.listBoxCtrlCustmer.SelectedItem);
            string InitEditValue = null;
            foreach (var item in this.listBoxCtrlCustmer.Items)
            {
                InitEditValue += item.ToString() + ",";
            }
            if (InitEditValue != null)
            {
                InitEditValue = InitEditValue.Trim().Substring(0, InitEditValue.Trim().Length - 1);
                this.chkComBoxEditCustList.EditValue = InitEditValue;
            }
            else
            {
                this.chkComBoxEditCustList.EditValue = "";
            }
        }
        //初始化InitialVolumeList
        private void InitialVolumeList()
        {
            VolumeChoseList = InitCategoryData(MaterialPriceType.Volume, listBoxCtrlVolume);
            this.panelCtrlVolume.Enabled = this.MIDcSource.HasVolumePrice ?? false;
        }
        //初始化InitialPeriod
        private void InitialPeriodList()
        {
            PeriodChoseList = InitCategoryData(MaterialPriceType.Period, listBoxCtrlPeriod);
            this.panelCtrlPeriod.Enabled = this.MIDcSource.HasPeriodPrice ?? false;
        }

        //初始化InitialCollectiveList
        private void InitialCollectiveList()
        {
            CollectiveChoseList = InitCategoryData(MaterialPriceType.Collective, listBoxCtrlCollective);
            this.panelCtrlCollective.Enabled = this.MIDcSource.HasCollectivePrice ?? false;
        }

        //Xsj101201:添加Volume清單
        private void sBtnAddVolume_Click(object sender, EventArgs e)
        {
            AddCategoryData(this.textEditVolumeVal, this.listBoxCtrlVolume, VolumeChoseList);
        }
        //Xsj101201:刪除Volume清單
        private void sBtnRemoveVolume_Click(object sender, EventArgs e)
        {
            DelCategoryData(this.listBoxCtrlVolume, VolumeChoseList);
        }
        //Xsj101201:添加Period清單
        private void sBtnAddPeriod_Click(object sender, EventArgs e)
        {
            AddCategoryData(this.textEditPeriod, listBoxCtrlPeriod, PeriodChoseList);
        }
        //Xsj101201:刪除Period清單
        private void sBtnRemovePeriod_Click(object sender, EventArgs e)
        {
            DelCategoryData(this.listBoxCtrlPeriod, PeriodChoseList);
        }
        //添加Collective清單
        private void sBtnCollective_Click(object sender, EventArgs e)
        {
            AddCategoryData(this.textEditCollective, this.listBoxCtrlCollective, CollectiveChoseList);
        }
        //刪除Collective清單
        private void sBtnRemoveCollective_Click(object sender, EventArgs e)
        {
            DelCategoryData(this.listBoxCtrlCollective, CollectiveChoseList);
        }
        //初始化數據
        private List<string> InitCategoryData(MaterialPriceType srcType, ListBoxControl ListBoxCtrl)
        {
            List<string> recordSrc = MIDcContext.MaterialPriceHeaders.Where(P => P.SuppRef == _CurrDetail.SuppRef && P.PriceType == srcType.ToString()).Select(P => P.Category).Distinct().ToList();
            if (recordSrc.Count > 0)
            {
                ListBoxCtrl.Items.AddRange(recordSrc.ToArray());
            }
            return recordSrc;
        }
        //添加數據
        private void AddCategoryData(TextEdit txtEditVal, ListBoxControl ListBoxCtrl, List<string> recordSrc)
        {
            string volumeVal = txtEditVal.EditValue == null ? "" : txtEditVal.EditValue.ToString();
            if (volumeVal.Trim() == "")
            {
                return;
            }
            //檢查是否存在相同的項目
            for (int i = 0; i < ListBoxCtrl.Items.Count; i++)
            {
                if (ListBoxCtrl.Items[i].ToString() == volumeVal)
                {
                    MessageBox.Show("當前添加項已存在，請確認！", "系統提示");
                    return;
                }
            }
            ListBoxCtrl.Items.Add(volumeVal);
            recordSrc.Add(volumeVal);
            txtEditVal.EditValue = "";
        }
        //刪除數據
        private void DelCategoryData(ListBoxControl ListBoxCtrl, List<string> recordSrc)
        {
            if (ListBoxCtrl.SelectedItem == null)
            {
                return;
            }
            //检查是否请允许删除
            if (!IsAllowDelCategory(ListBoxCtrl.Tag.ToString(), ListBoxCtrl.SelectedValue.ToString()))
            {
                return;
            }
            ListBoxCtrl.Items.Remove(ListBoxCtrl.SelectedItem);
            recordSrc.Clear();
            foreach (var item in ListBoxCtrl.Items)
            {
                recordSrc.Add(item.ToString());
            }
        }

        //验证是否允许删除当前Category项
        private bool IsAllowDelCategory(string PriceType, string Category)
        {
            bool result = true;
            List<MIDc.BO.MaterialPriceHeader> mPHList = MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == PriceType && p.Category == Category && p.EffectFromDate.Date <= DateTime.Now.Date).ToList();
            if (mPHList.Count > 1)
            {
                result = false;
                MessageBox.Show("当前单价[" + PriceType + "]的Category[" + Category + "]已存在历史单价，不能删除!", "禁止删除提示");
            }
            return result;

        }
        #endregion

        /// <summary>
        /// 创建数据源 
        /// </summary>
        private void CreatePriceEditors()
        {
            //Standard
            object[] standardPriceShowCtrls = this.Controls.Find("priceShowCtrl_StandardMultiPrice", true);
            if (standardPriceShowCtrls.Count() > 0)
            {
                PriceShowCtrl currStandardPriceShowCtrl = standardPriceShowCtrls[0] as PriceShowCtrl;
                currStandardPriceShowCtrl.Currency = this._CurrDetail.Currency;
                currStandardPriceShowCtrl.CurrencyVisible = true;
                currStandardPriceShowCtrl.IsShowSpecialPriceAllInPriceProperty = false;

                currStandardPriceShowCtrl.IsHideShowAddDelBtns = (this.CurrStatus == FormStatus.IsNew);
                currStandardPriceShowCtrl.currDetailDetailForm = this.CurrDetailDetailForm;
                currStandardPriceShowCtrl.ShowData(MIDcSource, true, "Standard", "");
            }
            //Special
            if (CustFavorChoseList.Count > 0)
                AddOrDelTabPageAndEditor(this.xtraTabCtrlCustPrice, this.CustFavorChoseList, MaterialPriceType.CustomerFavor);
            if (VolumeChoseList.Count > 0)
                AddOrDelTabPageAndEditor(this.xtraTabCtrlVolumePrice, this.VolumeChoseList, MaterialPriceType.Volume);
            if (PeriodChoseList.Count > 0)
                AddOrDelTabPageAndEditor(this.xtraTabCtrlPeriodPrice, this.PeriodChoseList, MaterialPriceType.Period);
            if (CollectiveChoseList.Count > 0)
                AddOrDelTabPageAndEditor(this.xtraTabCtrlCollectivePrice, this.CollectiveChoseList, MaterialPriceType.Collective);
        }

        //添加/刪除相關的頁簽/錄入數據的SinglePriceEditor
        private void AddOrDelTabPageAndEditor(DevExpress.XtraTab.XtraTabControl xtraTabCtrl, List<string> PageList, MaterialPriceType CurrMaterialPriceType)
        {
            List<string> AddPageList = new List<string>();
            xtraTabCtrl.TabPages.Clear();
            foreach (string item in PageList)
            {
                string PageName = "TabPageSinglePrice_" + item.Trim();
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
                newPriceShowCtrl.Name = "ComSinglePriceEditor" + CurrMaterialPriceType.ToString() + PageName.Split('_')[1];
                newPriceShowCtrl.Currency = this._CurrDetail.Currency;
                newPriceShowCtrl.CurrencyVisible = true;
                newPriceShowCtrl.IsShowSpecialPriceAllInPriceProperty = false;
                newPriceShowCtrl.currDetailDetailForm = this.CurrDetailDetailForm;
                newPriceShowCtrl.IsHideShowAddDelBtns = (this.CurrStatus == FormStatus.IsNew);
                NewTabPage.Controls.Add(newPriceShowCtrl);
                newPriceShowCtrl.Dock = DockStyle.Fill;
                newPriceShowCtrl.ShowData(MIDcSource, false, CurrMaterialPriceType.ToString(), PageName.Split('_')[1]);
            }
        }


        //驗證必輸欄位
        #region 驗證必輸欄位
        string SpecialNotMsg = null;
        private bool CheckInputValues()
        {
            bool resultBool = false;
            string noteMsg = null;
            object WarnObj = null;

            DevExpress.XtraTab.XtraTabPage xTabPage = this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage;
            switch (xTabPage.Name.ToUpper())
            {
                case "XTRATPAGE_ADDMATL":
                    #region
                    if (this.txtEditSuppRef.EditValue == null || this.txtEditSuppRef.EditValue.ToString().Trim() == "")
                    {
                        noteMsg = this.txtEditSuppRef.Tag.ToString();
                        WarnObj = this.txtEditSuppRef;
                    }
                    else if (CheckSuppref())//驗證是否已存在相同的物料
                    {
                        SpecialNotMsg = "此 SupplierReference 已存在! 請重新輸入.";
                        WarnObj = this.txtEditSuppRef;
                    }
                    else if (this.cmbMaterialType.EditValue == null || this.cmbMaterialType.EditValue.ToString().Trim() == "")
                    {
                        noteMsg = this.cmbMaterialType.Tag.ToString();
                        WarnObj = this.cmbMaterialType;
                    }
                    //else if (this.cmbMaterialType.EditValue != null && this.cmbMaterialType.EditValue.ToString().Trim() != "" && !MaterialList.Contains(this.cmbMaterialType.EditValue.ToString().Trim()))
                    //{
                    //    //檢驗輸入的物料類別是否存在
                    //    noteMsg = this.cmbMaterialType.Tag.ToString();
                    //    WarnObj = this.cmbMaterialType;
                    //    SpecialNotMsg = "你輸入的物料類別不存在，請確認！";
                    //}
                    #endregion
                    break;
                case "XTRATPAGE_YIELDUSAGE":
                    break;

                //改成默认栏位，估不再检查 add by shulin 2023-02-13
                //case "XTRATPAGE_ZONEOFSWL":
                //    #region
                //    //if (MIDcSource.SingleRangeSize == null || MIDcSource.SingleRangeSize.Trim() == "")
                //    //{
                //    //    noteMsg = this.radGroup_SRforSWL.Tag.ToString();
                //    //    WarnObj = this.radGroup_SRforSWL;
                //    //}
                //    //else if (MIDcSource.UnitForSize == null || MIDcSource.UnitForSize.Trim() == "")
                //    //{
                //    //    noteMsg = this.radGroup_Unit.Tag.ToString();
                //    //    WarnObj = this.radGroup_Unit;
                //    //}
                //    //else if (!MIDcSource.HaveSizeMatrix.HasValue)
                //    //{
                //    //    noteMsg = this.radioGroup_HaveSizeMatrix.Tag.ToString();
                //    //    WarnObj = this.radioGroup_HaveSizeMatrix;
                //    //}
                //    //else if ((bool)MIDcSource.HaveSizeMatrix.Value && string.IsNullOrEmpty(MIDcSource.SizeMatrix))
                //    //{
                //    //    noteMsg = this.cbSizeMatrix.Tag.ToString();
                //    //    WarnObj = this.cbSizeMatrix;
                //    //}
                //    #endregion
                //    break;
                case "XTRATPAGE_DIMENSION":
                    #region
                    if (MIDcSource.Dimension == null)
                    {
                        noteMsg = this.radGroup_Dimension.Tag.ToString();
                        WarnObj = this.radGroup_Dimension;
                    }
                    #endregion
                    break;
                case "XTRATPAGE_POINFORMATION":
                    #region
                    if (this.radGroupIsPurchaseItem.EditValue == null || this.radGroupIsPurchaseItem.EditValue.ToString().Trim() == "")
                    {
                        noteMsg = this.radGroupIsPurchaseItem.Tag.ToString();
                        WarnObj = this.radGroupIsPurchaseItem;
                    }
                    else if (!(bool)this.radGroupIsPurchaseItem.EditValue)
                    {
                        if (this.cbOperation.EditValue == null || this.cbOperation.EditValue.ToString().Trim() == "")
                        {
                            noteMsg = this.cbOperation.Tag.ToString();
                            WarnObj = this.cbOperation;
                        }
                        else if (CleanBlankMatlProc())
                        {
                            noteMsg = this.gridCtrl_MatlProc.Tag.ToString();
                            WarnObj = this.gridCtrl_MatlProc;
                        }
                    }
                    #endregion
                    break;
                case "XTRATPAGE_SINGORMULPX":
                    #region
                    if (this.radGroup_IsMultPrice.EditValue == null)
                    {
                        SpecialNotMsg = "請選擇[Price Type]内容!";
                        WarnObj = this.radGroup_IsMultPrice;
                    }
                    else if (MIDcSource.HasSpecialPrice ?? false)
                    {
                        if (!(MIDcSource.HasCustFavorPrice ?? false) && !(MIDcSource.HasVolumePrice ?? false) && !(MIDcSource.HasPeriodPrice ?? false))
                        {
                            SpecialNotMsg = "請選擇SpecialPrice類型!";
                            WarnObj = this.panelCustPrice;
                        }
                        else
                        {
                            if ((MIDcSource.HasCustFavorPrice ?? false) && this.listBoxCtrlCustmer.Items.Count == 0)
                            {
                                SpecialNotMsg = "請選擇Custmer!";
                                WarnObj = this.chkComBoxEditCustList;
                            }
                            else if ((MIDcSource.HasVolumePrice ?? false) && this.listBoxCtrlVolume.Items.Count == 0)
                            {
                                SpecialNotMsg = "請填寫Volume!";
                                WarnObj = this.textEditVolumeVal;
                            }
                            else if ((MIDcSource.HasPeriodPrice ?? false) && this.listBoxCtrlPeriod.Items.Count == 0)
                            {
                                SpecialNotMsg = "請填寫Period!";
                                WarnObj = this.textEditPeriod;
                            }
                        }
                    }
                    #endregion
                    break;
                case "XTRATPAGE_COLORRANGESIZECUP":
                    #region
                    if (MIDcSource.MultiPriceOption == 1)
                    {
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //if (MIDcSource.ColorList.Where(P => P.IsChosed).Count() == 0)
                        //{
                        //    SpecialNotMsg = "請選擇ColorRange信息";
                        //    WarnObj = this.gridCtrl_ColorDataSource;
                        //}
                        //else if (MIDcSource.SizeList.Where(P => P.IsChosed).Count() == 0)
                        //{
                        //    SpecialNotMsg = "請選擇Size信息";
                        //    WarnObj = this.gridCtrl_SizeDataSource;
                        //}
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        if (this._currStandardMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                        {
                            SpecialNotMsg = "請選擇ColorRange信息";
                            WarnObj = this.gridCtrl_ColorDataSource;
                        }
                        else if (this._currStandardMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                        {
                            SpecialNotMsg = "請選擇Size信息";
                            WarnObj = this.gridCtrl_SizeDataSource;
                        }
                        #endregion
                    }
                    if (MIDcSource.MultiPriceOption == 2)
                    {
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //if (MIDcSource.ColorList.Where(P => P.IsChosed).Count() == 0)
                        //{
                        //    SpecialNotMsg = "請選擇ColorRange信息";
                        //    WarnObj = this.gridCtrl_ColorDataSource;
                        //}
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        if (this._currStandardMPH.ColorList.Where(P => P.IsChosed).Count() == 0)
                        {
                            SpecialNotMsg = "請選擇ColorRange信息";
                            WarnObj = this.gridCtrl_ColorDataSource;
                        }
                        #endregion
                    }
                    if (MIDcSource.MultiPriceOption == 3)
                    {
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //if (MIDcSource.SizeList.Where(P => P.IsChosed).Count() == 0)
                        //{
                        //    SpecialNotMsg = "請選擇Size信息";
                        //    WarnObj = this.gridCtrl_SizeDataSource;
                        //}
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        if (this._currStandardMPH.SizeList.Where(P => P.IsChosed).Count() == 0)
                        {
                            SpecialNotMsg = "請選擇Size信息";
                            WarnObj = this.gridCtrl_SizeDataSource;
                        }
                        #endregion
                    }
                    #endregion
                    break;
                case "XTRATPAGE_MULTIPLEPRICETYPE":
                    #region
                    if (!this.chkEdit_ColorSize.Checked && !this.chkEditColor.Checked && !this.chkEditSize.Checked)
                    {
                        noteMsg = this.groupCtrl_MultiPriceOption.Tag.ToString();
                        WarnObj = this.groupCtrl_MultiPriceOption;
                    }
                    else
                    {
                        int choseIndex = 0;
                        if (this.chkEdit_ColorSize.Checked) choseIndex = 1;
                        if (this.chkEditColor.Checked) choseIndex = 2;
                        if (this.chkEditSize.Checked) choseIndex = 3;
                        if (this._CurrDetail.MultiPriceOption != null && (choseIndex != this._CurrDetail.MultiPriceOption.Value))
                        {
                            if (MessageBox.Show("更改MultOption会清除掉原来的历史单价，请确认是否要进行当前更改操作？", "更改提示", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) != DialogResult.Yes)
                            {
                                return false;
                            }
                        }
                    }
                    #endregion
                    break;
                case "XTRATPAGE_MULTIPRICEINPUT":  //Xsj101208:驗證是滯已輸入Standard的MultPrice
                    #region
                    if (!IsInputMultPrice(true))
                    {
                        #region Xsj20110525:加实现添加历史多单价而注释
                        //WarnObj = this.ComGridCtrlStandardStandard;
                        #endregion
                    }
                    #endregion
                    break;
                case "XTRATPAGE_SECONDMULPRICE":
                    #region
                    if (!IsInputMultPrice(false))
                    {
                        WarnObj = this.xtraTPage_SecondMulPrice;
                    }
                    #endregion
                    break;
                case "XTRATPAGE_SINGLEPRICE":
                    #region
                    if (!IsInputSinglePrice(true))
                    {
                        WarnObj = this.ComSinglePriceEditorStandard;
                    }
                    #endregion
                    break;
                case "XTRATPAGE_SECONDSINGLEPRICE":
                    #region
                    if (!IsInputSinglePrice(false))
                    {
                        WarnObj = this.xtraTabControl_SecondSinglePrice;
                    }
                    #endregion
                    break;
                case "XTRATPAGE_SECONDPRICETYPE":
                    #region
                    if (MIDcSource.HasPeriodPrice ?? false)
                    {
                        if (!(MIDcSource.HasCustFavorPrice ?? false) && !(MIDcSource.HasVolumePrice ?? false) && !(MIDcSource.HasPeriodPrice ?? false))
                        {
                            noteMsg = this.panelCustPrice.Tag.ToString();
                            WarnObj = this.panelCustPrice;
                        }
                    }
                    #endregion
                    break;
                //Peter 2011.3.10
                case "XTRATPAGE_PURCHASEWIDTHUNIT":
                    #region
                    if (!IsSelectWidth())
                    {
                        WarnObj = this.xtraTPage_PurchaseWidthUnit;
                    }
                    #endregion
                    break;

            }
            if (noteMsg != null || SpecialNotMsg != null)
            {
                #region
                noteMsg = "請輸入或選取“" + noteMsg + "”值!";
                MessageBox.Show(SpecialNotMsg == null ? noteMsg : SpecialNotMsg, "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                try
                {
                    Control Ctrl = WarnObj as Control;
                    Ctrl.Focus();
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    SpecialNotMsg = null;
                }
                #endregion
            }
            else
            {
                resultBool = true;
            }
            return resultBool;
        }
        //驗證是否已存在相同的物料
        private bool CheckSuppref()
        {
            this.bindingSource1.EndEdit();

            bool result = false;
            if (MIDcSource.SuppRef != _CurrDetail.SuppRef)
            {
                try
                {
                    PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
                    int aa = (from c in context.Details
                              where c.SuppRef == MIDcSource.SuppRef
                              select c).Count();

                    if (aa != 0)
                    {
                        result = true;
                    }


                }
                catch { }
            }

            return result;

        }
        //Xsj101208:驗證是否已輸入MultPrice
        private bool IsInputMultPrice(bool IsStandard)
        {
            bool IsHadInputVal = false;
            if (IsStandard)
            {
                RecordStandardPrice();

                string msg = CheckPriceInputed(MaterialPriceType.Standard.ToString());
                if (msg == "OK")
                {
                    IsHadInputVal = true;
                }
                else
                {
                    SpecialNotMsg = msg;
                }
            }
            else
            {
                SaveSpecialPrice(this.xtraTbCtrl_SecondPrice);
                string[] materialPriceTypeArry = new string[] { MaterialPriceType.CustomerFavor.ToString(), MaterialPriceType.Period.ToString(), 
                                                                MaterialPriceType.Volume.ToString(), MaterialPriceType.Collective.ToString() };
                foreach (string item in materialPriceTypeArry)
                {
                    switch (item)
                    {
                        case "CustomerFavor":
                            if (!(this.MIDcSource.HasCustFavorPrice ?? false))
                            {
                                continue;
                            }
                            break;
                        case "Period":
                            if (!(this.MIDcSource.HasPeriodPrice ?? false))
                            {
                                continue;
                            }
                            break;
                        case "Volume":
                            if (!(this.MIDcSource.HasVolumePrice ?? false))
                            {
                                continue;
                            }
                            break;
                        case "Collective":
                            if (!(this.MIDcSource.HasCollectivePrice ?? false))
                            {
                                continue;
                            }
                            break;
                    }
                    string msg = CheckPriceInputed(item);
                    if (msg == "OK")
                    {
                        IsHadInputVal = true;
                    }
                    else
                    {
                        SpecialNotMsg = msg;
                        break;
                    }
                }
            }
            return IsHadInputVal;
        }

        /// <summary>
        /// 检验是否已输入单价 
        /// </summary>
        /// <returns></returns>
        public string CheckPriceInputed(string PriceType)
        {
            string result = "OK";
            List<string> strList = new List<string>();
            switch (PriceType)
            {
                case "Standard":
                    strList.Add("");
                    break;
                case "CustomerFavor":
                    strList = CustFavorChoseList;
                    break;
                case "Period":
                    strList = PeriodChoseList;
                    break;
                case "Volume":
                    strList = VolumeChoseList;
                    break;
                case "Collective":
                    strList = CollectiveChoseList;
                    break;
            }
            foreach (string categoryItem in strList)
            {
                List<MaterialPriceHeader> currMPHList = this.MIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == PriceType && p.Category == categoryItem.Trim()).ToList();
                if (currMPHList.Count == 0)
                {
                    result = string.Format("[{0}_{1}]的單價不能為空,請錄入!", PriceType, categoryItem.Trim());
                    return result;
                }
                List<MaterialPrice> inputPriceList = new List<MaterialPrice>();
                foreach (MaterialPriceHeader item in currMPHList)
                {
                    inputPriceList.Clear();

                    #region Xsj20110817:为完善历史多单价而注释掉
                    //inputPriceList = this.MIDcSource.MaterialPrices.Where(p => p.PriceType == item.PriceType && p.Category.Trim() == item.Category.Trim() 
                    //    && p.EffectFromDate.Date == item.EffectFromDate.Date && p.Price > 0).ToList();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    inputPriceList = item.MaterialPrices.ToList();
                    #endregion
                    if (inputPriceList.Count == 0)
                    {
                        result = string.Format("[{0}_{1}]有效日期[{2}--{3}]的單價不能為空,請錄入!", item.PriceType, (item.Category == "" ? "Standard" : item.Category),
                            item.EffectFromDate.ToString("yyyy/MM/dd"),
                            (item.EffectEndDate == null ? "NA" : item.EffectEndDate.Value.ToString("yyyy/MM/dd")));
                        break;
                    }
                }
            }
            return result;
        }


        //Xsj101209:驗證是否已輸入SinglePrice 
        private bool IsInputSinglePrice(bool IsStandard)
        {
            bool IsHadInputVal = false;
            if (IsStandard)
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //if (MIDcSource.MaterialPrices.Where(P => P.PriceType == MaterialPriceType.Standard.ToString()).Count() > 0)
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                List<MaterialPriceHeader> mPHList = MIDcSource.MaterialPriceHeaders.Where(P => P.PriceType == MaterialPriceType.Standard.ToString()).ToList();
                if (mPHList.Count() > 0)
                #endregion
                {
                    #region Xsj20110817:为完善历史多单价而添加
                    foreach (MaterialPriceHeader item in mPHList)
                    {
                        IsHadInputVal = false;
                        foreach (MaterialPrice val in item.MaterialPrices)
                        {
                    #endregion
                            #region Xsj20110817:为完善历史多单价而注释掉
                            //MaterialPrice val = MIDcSource.MaterialPrices.Where(P => P.PriceType == MaterialPriceType.Standard.ToString()).First();
                            #endregion
                            #region Xsj20110817:为完善历史多单价而添加
                            #endregion

                            if (val.Price.HasValue && val.Price > 0)
                            {
                                IsHadInputVal = true;
                                break;
                            }
                        }
                        #region Xsj20110817:为完善历史多单价而添加
                        if (!IsHadInputVal)
                        {
                            SpecialNotMsg = "[Standard]單價不能為空,並且不能小於0,請確認!";
                        }
                        #endregion

                    }
                }
                else
                {
                    SpecialNotMsg = "你还没有建立[Standard]單價项,請確認!";
                }

                #region Xsj20110817:为完善历史多单价而注释掉
                //if (!IsHadInputVal)
                //{
                //    SpecialNotMsg = "Standard單價不能為空,並且不能小於0,請確認!";
                //}
                #endregion
            }
            else
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //List<MaterialPrice> CurrMaterialPriceList = MIDcSource.MaterialPrices.Where(P => P.PriceType != MaterialPriceType.Standard.ToString()).ToList();
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                List<MaterialPriceHeader> mPHList = MIDcSource.MaterialPriceHeaders.Where(P => P.PriceType != MaterialPriceType.Standard.ToString()).ToList();
                foreach (MaterialPriceHeader itemMPH in mPHList)
                {
                    List<MaterialPrice> CurrMaterialPriceList = itemMPH.MaterialPrices.ToList();
                    IsHadInputVal = false;
                #endregion
                    if (CurrMaterialPriceList.Count > 0)
                    {
                        foreach (MaterialPrice item in CurrMaterialPriceList)
                        {
                            //Peter 2011.3.10
                            if (item.PriceType == MaterialPriceType.CustomerFavor.ToString() && !chkCustomerFavor.Checked)
                                continue;
                            else if (item.PriceType == MaterialPriceType.Period.ToString() && !chkPeriod.Checked)
                                continue;
                            else if (item.PriceType == MaterialPriceType.Volume.ToString() && !this.chkVolume.Checked)
                                continue;
                            else if (item.PriceType == MaterialPriceType.Collective.ToString() && !this.chkCollective.Checked)
                                continue;

                            #region Xsj20110817:为完善历史多单价而注释掉
                            //IsHadInputVal = false;
                            #endregion
                            if (item.Price.HasValue && item.Price > 0)
                            {
                                IsHadInputVal = true;
                            }
                            if (!IsHadInputVal)
                            {
                                SpecialNotMsg = "[" + item.PriceType + "]的[" + item.Category + "]單價不能為空,並且不能小於0,請確認!";
                                break;
                            }
                        }
                    }
                    else
                    {
                        SpecialNotMsg = "你还没有建立[" + itemMPH.PriceType + "]的單價项,請確認!";
                    }
                    if (!IsHadInputVal)
                    {
                        break;
                    }
                }
            }
            return IsHadInputVal;
        }

        //Peter 2011.3.10
        private bool IsSelectWidth()
        {
            if (radGroup_PurchaseWidthOption.SelectedIndex == -1)
            {
                SpecialNotMsg = "必須要選擇 Purchase width 類型!";
                return false;
            }
            return true;
        }
        #endregion

        //按鈕事件
        #region 按鈕事件
        // Back
        private void sBtnBack_Click(object sender, EventArgs e)
        {
            int PrePageIndex = -1;
            if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == xtraTPage_BasicSelection) //"xtraTPage_BasicSelection"
            {
                if (MIDcSource.HasSpecialPrice ?? false)
                {
                    PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_SecondMulPrice);
                }
                else
                {
                    PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_MultiPriceInput);
                }
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_SecondMulPrice) //"xtraTPage_SecondMulPrice"
            {
                PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_MultiPriceInput);
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_SecondSinglePrice) //"XTRATPAGE_SECONDPRICETYPE"
            {
                PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_SinglePrice);
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_MultiPriceInput) //xtraTPage_MultiPriceInput
            {
                PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_ColorRangeSizeCup);
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_ColorRangeSizeCup) // "XTRATPAGE_MULTIPLEPRICETYPE"
            {
                //Xsj20110802:根据选择的是Single/Multiple进行跳转
                if ((bool)this.radGroup_IsMultPrice.EditValue)
                {
                    PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_MultiplePriceType);
                }
                else
                {
                    PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_SingOrMulPx);
                }
                //PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_MultiplePriceType);
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_MultiplePriceType)
            {
                PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_SingOrMulPx);
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_SinglePrice)
            {
                PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_ColorRangeSizeCup);
            }
            else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == xtraTPage_YieldUsage)
            {
                if (!(MIDcSource.IsPurchaseItem ?? true))
                {
                    PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_POInformation);
                }
                else
                {
                    PrePageIndex = xTabPageList.IndexOf(this.xtraTPage_addMatl);
                }
            }
            else
            {
                PrePageIndex = xTabPageList.IndexOf(this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage) - 1;
            }
            this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage = xTabPageList[PrePageIndex];
            ShowHideBackOrNextBtn();
        }
        //Next
        private void sBtnNext_Click(object sender, EventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                if (!CheckInputValues()) return;
                PrePage = this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage;
                int nextPageIndex = -1;
                //標識是否需跳頁
                bool needJumpPage = false;
                if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_addMatl)
                {
                    if (MIDcSource.IsPurchaseItem ?? true)
                    {
                        nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_YieldUsage);
                        needJumpPage = true;
                    }
                }
                else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_SingOrMulPx) //xtraTPage_SingOrMulPx
                {
                    //Xsj20110802:根据选择的是Single/Multiple进行跳转
                    if ((bool)this.radGroup_IsMultPrice.EditValue)
                    {
                        nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_MultiplePriceType);
                    }
                    else
                    {
                        nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_ColorRangeSizeCup);
                    }
                    needJumpPage = true;
                }
                else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_MultiplePriceType) //xtraTPage_MultiplePriceType
                {
                    nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_ColorRangeSizeCup);
                    if ((this.MIDcSource.MultiPriceOption ?? 0) == 3)
                        xtraTabCtrl_PriceOption.SelectedTabPage = xtraTPage_Size;
                    else
                        xtraTabCtrl_PriceOption.SelectedTabPage = xtraTPage_Color;
                    needJumpPage = true;
                }
                else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_ColorRangeSizeCup)  //"XTRATPAGE_ColorRangeSizeCup"
                {
                    nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_MultiPriceInput);
                    needJumpPage = true;
                }
                else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_SinglePrice) //"XTRATPAGE_SINGLEPRICE"
                {
                    if (MIDcSource.HasSpecialPrice ?? false)
                    {
                        nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_SecondSinglePrice);
                    }
                    else
                    {
                        nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_BasicSelection);
                    }
                    needJumpPage = true;
                }
                else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_MultiPriceInput) //"XTRATPAGE_SECONDPRICETYPE"
                {
                    if (MIDcSource.HasSpecialPrice ?? false)
                    {
                        nextPageIndex = xTabPageList.IndexOf(this.xtraTPage_SecondMulPrice);
                    }
                    else
                    {
                        nextPageIndex = xTabPageList.IndexOf(xtraTPage_BasicSelection);
                    }
                    needJumpPage = true;
                }
                else if (this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage == this.xtraTPage_SecondSinglePrice) //"XTRATPAGE_SECONDSINGLEPRICE"
                {
                    nextPageIndex = xTabPageList.IndexOf(xtraTPage_BasicSelection);
                    needJumpPage = true;
                }
                if (!needJumpPage)
                {
                    nextPageIndex = xTabPageList.IndexOf(this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage) + 1;
                }
                DoSomethingByChangePage();
                try
                {
                    this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage = xTabPageList[nextPageIndex];
                }
                catch (Exception ex)
                {
                }
                CurrPage = this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage;
                ShowHideBackOrNextBtn();
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
        //Finish
        private void sBtnFinish_Click(object sender, EventArgs e)
        {
            //Xsj101123:更新前驗證當前頁簽的必輸欄位
            if (CheckInputValues())
            {
                //更新數據源  
                UpdateDataSourc();

                this.DialogResult = DialogResult.OK;
            }
        }


        private void UpdateDataSourc()
        {

            //在此清空不必要的輸入
            ClearUnChosedPrice();
            if (MIDcSource.Liability != 1)
            {
                MIDcSource.LiabilityForCustomer = null;
            }

            //Xsj20120228:應Janel Lai和王生的討論結果，添加Version版本控制
            //this.detailVersionControlCtrl1.SaveVersion();
        }


        //Cancel
        private void sBtnCancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("你確定要Cancel當前的操作嗎？", "系統提示", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                this.Close();
            }
        }
        //Xsj20110415：根据选择的Dimension清空相关的Color/Size/Cup
        private void CheckColorSizeCup()
        {
            //switch (this.MIDcSource.Dimension)
            switch (this.MIDcSource.MIDcDimensionDesc)
            {
                #region Xsj20110817:为完善历史多单价而注释掉
                //case "2":
                //    foreach (Detail.SizeDetailCls item in MIDcSource.SizeList)
                //    {
                //        item.IsChosed = false;
                //    }
                //    foreach (Detail.CupDetailCls item in MIDcSource.CupList)
                //    {
                //        item.IsChosed = false;
                //    }
                //    break;
                //case "3":
                //    foreach (Detail.CupDetailCls item in MIDcSource.CupList)
                //    {
                //        item.IsChosed = false;
                //    }
                //    break;
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                case "2D":
                    foreach (MaterialPriceHeader.SizeDetailCls item in this._currStandardMPH.SizeList)
                    {
                        item.IsChosed = false;
                    }
                    foreach (MaterialPriceHeader.CupDetailCls item in this._currStandardMPH.CupList)
                    {
                        item.IsChosed = false;
                    }
                    break;
                //case "3":
                case "3D":
                    foreach (MaterialPriceHeader.CupDetailCls item in this._currStandardMPH.CupList)
                    {
                        item.IsChosed = false;
                    }
                    break;
                //case "2":
                //case "3Ds":
                //    foreach (MaterialPriceHeader.SizeDetailCls item in this._currStandardMPH.SizeList)
                //    {
                //        item.IsChosed = false;
                //    }
                //    foreach (MaterialPriceHeader.CupDetailCls item in this._currStandardMPH.CupList)
                //    {
                //        item.IsChosed = false;
                //    }
                //    break;
                ////case "3":
                //case "3Dr":
                //    foreach (MaterialPriceHeader.CupDetailCls item in this._currStandardMPH.CupList)
                //    {
                //        item.IsChosed = false;
                //    }
                //    break;
                #endregion
            }
        }
        // 隱藏和顯示第一頁和最後一頁
        private bool IsForbidEver = false;
        private void ShowHideBackOrNextBtn()
        {
            int currentPageIndex = xTabPageList.IndexOf(this.xtraTabCtrl_MIDcEntranceKey.SelectedTabPage);
            this.sBtnBack.Enabled = !(currentPageIndex == 0);
            this.sBtnNext.Enabled = !(currentPageIndex == xTabPageList.Count - 1);
            if (CurrStatus == FormStatus.IsNew)
            {
                this.sBtnFinish.Enabled = (currentPageIndex == xTabPageList.Count - 1);
            }
            else
            {
                if (CurrPage == xtraTPage_SingOrMulPx)
                {
                    IsForbidEver = true;
                }
                else if (CurrPage == xtraTPage_BasicSelection)
                {
                    IsForbidEver = false;
                }
                this.sBtnFinish.Enabled = !xTabPageToForbidFinishBtnList.Contains(CurrPage) && !IsForbidEver;
            }
        }
        //是否需要第二價格
        private void chkEditSpecialPrice_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkEditSpecialPrice.Checked)
            {
                this.panelCustPrice.Enabled = true;
                this.panelVolume.Enabled = true;
                this.panelPeriod.Enabled = true;
                this.panelCollective.Enabled = true;
            }
            else
            {
                this.chkCustomerFavor.Checked = this.chkVolume.Checked = this.chkPeriod.Checked = this.chkCollective.Checked = false;
                this.panelCustPrice.Enabled = false;
                this.panelVolume.Enabled = false;
                this.panelPeriod.Enabled = false;
                this.panelCollective.Enabled = false;
            }
        }

        /// <summary>
        /// 由切換頁面引起的事件邏輯
        /// </summary>
        private void DoSomethingByChangePage()
        {
            //如果當前頁是"xtraTPage_MultiPriceInput"頁,則需要回寫:PriceList
            if (PrePage == this.xtraTPage_MultiPriceInput)
            {
                //20110723：因为Linq提示重复键值而注释掉
                //RecordStandardPrice(); 
            }
            //如果當前頁是"xtraTPage_ColorRangeSizeCup"頁,更新MIDcSource.PriceList數據源
            else if (PrePage == this.xtraTPage_ColorRangeSizeCup)
            {
                #region Xsj20110817:为完善历史多单价而添加
                if (this.CurrStatus == FormStatus.IsNew)
                {
                    foreach (MaterialPriceHeader mPHItem in this.MIDcSource.MaterialPriceHeaders)
                    {
                        if (mPHItem.PriceType == MaterialPriceType.Standard.ToString())
                        {
                            continue;
                        }

                        mPHItem.ColorList.Clear();
                        foreach (PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls colorItem in this._currStandardMPH.ColorList)
                        {
                            PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls newColorDetail = new MaterialPriceHeader.ColorDetailCls();
                            newColorDetail.SuppRef = colorItem.SuppRef;
                            newColorDetail.IsChosed = colorItem.IsChosed;
                            newColorDetail.ColorCode = colorItem.ColorCode;
                            newColorDetail.Desc = colorItem.Desc;
                            newColorDetail.IsRange = colorItem.IsRange;
                            mPHItem.ColorList.Add(newColorDetail);
                        }
                        mPHItem.CupList.Clear();
                        foreach (PH.MIDc.BO.MaterialPriceHeader.CupDetailCls cupItem in this._currStandardMPH.CupList)
                        {
                            PH.MIDc.BO.MaterialPriceHeader.CupDetailCls newCupDetail = new MaterialPriceHeader.CupDetailCls();
                            newCupDetail.SuppRef = cupItem.SuppRef;
                            newCupDetail.IsChosed = cupItem.IsChosed;
                            newCupDetail.CupCode = cupItem.CupCode;
                            newCupDetail.Desc = cupItem.Desc;
                            newCupDetail.IsRange = cupItem.IsRange;
                            mPHItem.CupList.Add(newCupDetail);
                        }
                        mPHItem.SizeList.Clear();
                        foreach (PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls sizeItem in this._currStandardMPH.SizeList)
                        {
                            PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls newSizeDetail = new MaterialPriceHeader.SizeDetailCls();
                            newSizeDetail.SuppRef = sizeItem.SuppRef;
                            newSizeDetail.IsChosed = sizeItem.IsChosed;
                            newSizeDetail.SizeCode = sizeItem.SizeCode;
                            newSizeDetail.Desc = sizeItem.Desc;
                            newSizeDetail.IsRange = sizeItem.IsRange;
                            mPHItem.SizeList.Add(newSizeDetail);
                        }
                    }
                }
                #endregion

                //Xsj110213:記錄Color/Cup/Size區間的大小
                RecordColorCupSizeRangeSize();

                CreatePriceEditors();

            }
            else if (PrePage == xtraTPage_ZoneOfSWL)//Peter : dimension
            {
                #region Dimension
                // this.MIDcSource.SingleRangeSize.Substring(0, 2);
                switch (this.MIDcSource.SingleRangeSize.Substring(0,2))
                {
                    //case "Mw":
                    //case "Ss":
                    //case "Sw":
                    //case "Sl":
                    //case "St":

                    case "2D":
                        this.MIDcSource.Dimension = "2";
                        break;

                    //case "Rs":
                    //case "Rw":
                    //case "Rl":
                    case "3D":
                        this.MIDcSource.Dimension = "3";
                        break;

                    //case "Rc":
                    case "4D":
                        this.MIDcSource.Dimension = "4";
                        break;
                    default:
                        break;
                }
                #endregion
            }

            //如果當前頁是"xtraTPage_SecondMulPrice"頁,則需要回寫:SecondPrice 
            else if (PrePage == this.xtraTPage_SecondMulPrice)
            {
                SaveSpecialPrice(this.xtraTbCtrl_SecondPrice);
            }
            //if (PrePage == this.xtraTPage_SecondSinglePrice)
            //{
            //    UpdateSinglePrice(false);
            //}
            else if (PrePage == this.xtraTPage_SingOrMulPx)
            {
                //Xsj20110802:如果是新建状态，新增MaterialPriceHeader。
                if (CurrStatus == FormStatus.IsNew || this.MIDcSource.MaterialPriceHeaders.Count == 0)
                {
                    CreateMaterialPriceHeaderForNew();
                }

                if (_currStandardMPH != null && _currStandardMPH.IsMultiPrice != (bool)this.radGroup_IsMultPrice.EditValue)
                {
                    ClearupPriceByChangePriceType(_currStandardMPH);
                    _currStandardMPH.IsMultiPrice = (bool)this.radGroup_IsMultPrice.EditValue;
                }


                if (MIDcSource.HasSpecialPrice ?? false) //根据不同的第二价格选项显示不同的页面
                {
                    this.xtraTbPage_CustomerFavor.PageVisible = this.chkCustomerFavor.Checked;
                    this.xtraTbPage_Volume.PageVisible = this.chkVolume.Checked;
                    this.xtraTbPage_Period.PageVisible = this.chkPeriod.Checked;
                    this.xtraTbPage_Collective.PageVisible = this.chkCollective.Checked;
                }

                this.xtraTabPage_CustFavorSinglePrice.PageVisible = MIDcSource.HasCustFavorPrice ?? false;
                this.xtraTabPage_VolumeSinglePrice.PageVisible = MIDcSource.HasVolumePrice ?? false;
                this.xtraTabPage_PeriodSinglePrice.PageVisible = MIDcSource.HasPeriodPrice ?? false;
                this.xtraTabPage_CollectiveSinglePrice.PageVisible = MIDcSource.HasCollectivePrice ?? false;

                //如果是2D则只能选ColorOnly
                if ((bool)this.radGroup_IsMultPrice.EditValue)
                {
                    //if (this.MIDcSource.Dimension == "2")
                    //if (MIDcSource.MIDcDimensionDesc == "3Ds")
                    if (MIDcSource.MIDcDimensionDesc == "2D")
                    {
                        this.chkEdit_ColorSize.Properties.ReadOnly = true;
                        this.chkEditSize.Properties.ReadOnly = true;
                        this.chkEditColor.Properties.ReadOnly = false;
                        this.MIDcSource.MultiColor = true;
                    }
                    else
                    {
                        this.chkEdit_ColorSize.Properties.ReadOnly = false;
                        this.chkEditSize.Properties.ReadOnly = false;
                        this.chkEditColor.Properties.ReadOnly = false;
                    }
                }
                else
                {
                    this.MIDcSource.MultiColor = false;
                    bool isHaveMultMPH = false;
                    foreach (MaterialPriceHeader item in this.MIDcSource.MaterialPriceHeaders)
                    {
                        if (item.IsMultiPrice ?? false)
                        {
                            isHaveMultMPH = true;
                        }
                    }
                    if (!isHaveMultMPH)
                    {
                        this.MIDcSource.MultiPriceOption = null;
                    }
                }

                //Xsj20110816:将ColorRange、Cup、Size的数据源改为
                if (this._currStandardMPH != null)
                {
                    this.gridCtrl_ColorDataSource.DataSource = this._currStandardMPH.ColorList;
                    this.gridCtrl_CupDataSource.DataSource = this._currStandardMPH.CupList;
                    this.gridCtrl_SizeDataSource.DataSource = this._currStandardMPH.SizeList;
                }
            }

            else if (PrePage == this.xtraTPage_BasicSelection)
            {
                DoPurchaseWidthOption();
            }
            else if (PrePage == this.xtraTPage_Status)//Peter
            //else if (PrePage == this.xtraTPage_Dimension)
            {
                RadGroup_MultOption.Properties.Items.Clear();
                DevExpress.XtraEditors.Controls.RadioGroupItem rgi1, rgi2, rgi3;
                rgi1 = new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Color/Size Range Dependent");
                rgi2 = new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Color Range Dependent and Size Range Independent");
                rgi3 = new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "Size Range Dependent and Color Range Independent");

                switch (MIDcSource.Dimension)
                //switch (MIDcSource.MIDcDimensionDesc)
                {

                   
                    case "2":
                        xtraTPage_Size.PageVisible = xtraTPage_Cup.PageVisible = false;
                        RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi2 });
                        //CheckColorSizeCup();
                        break;
                    case "3":
                       switch(MIDcSource.SingleRangeSize) 
                       {
                           case "3Das":
                               xtraTPage_Size.PageVisible = xtraTPage_Cup.PageVisible = false;
                               RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi2 });
                               break;
                           case "3Das-rc":
                               goto case "3Das";                           
                           case "3Dat":
                               goto case "3Das";
                           case "3Daw":
                               goto case "3Das";  
                           default:
                               xtraTPage_Size.PageVisible = true;
                               xtraTPage_Cup.PageVisible = false;
                               RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi1, rgi2, rgi3 });
                               break;                        
                       }
                        //CheckColorSizeCup(); 
                        break;
                    default://4D
                        xtraTPage_Size.PageVisible = true;
                        xtraTPage_Cup.PageVisible = true;
                        RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi1, rgi2, rgi3 });
                        break;


                   
                    ////case "3Ds":
                    //    xtraTPage_Size.PageVisible = xtraTPage_Cup.PageVisible = false;
                    //    RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi2 });
                    //    //CheckColorSizeCup();
                    //    break;
                    
                    ////case "3Dr":
                    //    xtraTPage_Size.PageVisible = true;
                    //    xtraTPage_Cup.PageVisible = false;
                    //    RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi1, rgi2, rgi3 });
                    //    //CheckColorSizeCup();
                    //    break;
                    //default://4D
                    //    xtraTPage_Size.PageVisible = true;
                    //    xtraTPage_Cup.PageVisible = true;
                    //    RadGroup_MultOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] { rgi1, rgi2, rgi3 });
                    //    break;

                }

                //Xsj:20110802:读取Standard当前的MaterialPriceHeader用于标识Single/MultiPrice
                PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
                _currStandardMPH = pHInfo.GetCurrPriceHeader(this.MIDcSource, "Standard", "");
                if (_currStandardMPH != null)
                {
                    this.radGroup_IsMultPrice.EditValue = _currStandardMPH.IsMultiPrice;
                }

            }
        }

        /// <summary>
        /// 新增状态下，创建MaterialPriceHeader
        /// </summary>
        private void CreateMaterialPriceHeaderForNew()
        {
            string[] specialPriceTypes = new string[]{MaterialPriceType .Standard .ToString (), MaterialPriceType.CustomerFavor .ToString(),MaterialPriceType .Volume .ToString (),
                MaterialPriceType .Period .ToString(),MaterialPriceType .Collective .ToString ()};
            foreach (string item in specialPriceTypes)
            {
                List<string> categoryList = new List<string>();
                switch (item)
                {
                    case "Standard":
                        categoryList.Add("");
                        break;
                    case "CustomerFavor":
                        categoryList = this.CustFavorChoseList;
                        break;
                    case "Volume":
                        categoryList = this.VolumeChoseList;
                        break;
                    case "Period":
                        categoryList = this.PeriodChoseList;
                        break;
                    case "Collective":
                        categoryList = this.CollectiveChoseList;
                        break;
                }
                PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
                foreach (string categoryItem in categoryList)
                {
                    if (item != MaterialPriceType.Standard.ToString() && categoryItem.Trim() == "") continue;
                    MaterialPriceHeader standardMPH = pHInfo.GetCurrPriceHeader(this.MIDcSource, item, categoryItem);
                    if (standardMPH == null)
                    {
                        standardMPH = new MaterialPriceHeader();
                        standardMPH.PriceType = item;
                        standardMPH.SuppRef = this.MIDcSource.SuppRef;
                        standardMPH.Category = categoryItem.Trim();
                        standardMPH.IsMultiPrice = (bool)this.radGroup_IsMultPrice.EditValue;
                        standardMPH.EffectFromDate = DateTime.Now.Date;
                        this.MIDcSource.MaterialPriceHeaders.Add(standardMPH);
                        #region Xsj20110817:为完善历史多单价而添加
                        standardMPH.Version = standardMPH.SuppRef + "_"
                            + standardMPH.PriceType + "_"
                            + (standardMPH.PriceType == MaterialPriceType.Standard.ToString() ? "Standard" : standardMPH.Category).Trim() + "_"
                            + DateTime.Now.ToString("yyyyMMddHHmmssfff");
                        if (categoryItem == "")
                        {
                            this._currStandardMPH = standardMPH;
                        }
                        #endregion
                    }
                    else
                    {
                        if (standardMPH.IsMultiPrice != (bool)this.radGroup_IsMultPrice.EditValue)
                        {
                            ClearupPriceByChangePriceType(standardMPH);
                            standardMPH.IsMultiPrice = (bool)this.radGroup_IsMultPrice.EditValue;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// 转换单价类别时（Single/Multi），清空原来的单价
        /// </summary>
        /// <param name="MPHeader"></param>
        private void ClearupPriceByChangePriceType(MaterialPriceHeader MPHeader)
        {
            #region Xsj20110817:为完善历史多单价而注释掉
            //PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            //List<MaterialPrice> mPList = this.MIDcSource.MaterialPrices.Where(p => p.PriceType == MPHeader.PriceType && p.Category == MPHeader.Category 
            //    && p.EffectFromDate.Date == MPHeader.EffectFromDate.Date).ToList();
            //for (int i = mPList.Count - 1; i >= 0; i--)
            //{
            //    this.MIDcSource.MaterialPrices.Remove(mPList[i]);
            //}
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            MPHeader.MaterialPrices.Clear();
            #endregion
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
        //Xsj110213:記錄Color/Cup/Size區間的大小
        private void RecordColorCupSizeRangeSize()
        {
            //CupRange
            #region Xsj20110817:为完善历史多单价而注释掉
            //List<Detail.CupDetailCls> cupDetailRangeList = MIDcSource.CupList.Where(P => P.IsChosed).Where(P => P.IsRange).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            List<MaterialPriceHeader.CupDetailCls> cupDetailRangeList = this._currStandardMPH.CupList.Where(P => P.IsChosed).Where(P => P.IsRange).ToList();
            #endregion

            CupRangeList.Clear();
            #region Xsj20110817:为完善历史多单价而注释掉
            //foreach (Detail.CupDetailCls item in cupDetailRangeList)
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            foreach (MaterialPriceHeader.CupDetailCls item in cupDetailRangeList)
            #endregion
            {
                var aa = (from a in MIDcContext.ColorSizeCupRanges
                          where a.DataCode == item.CupCode && a.Category == "Cup"
                          select a).FirstOrDefault();
                if (aa != null)
                {
                    CupRange newCupRange = new CupRange();
                    newCupRange.CupCode = item.CupCode;
                    newCupRange.RangeCount = aa.ColorSizeCupRangeDetails.Count;
                    CupRangeList.Add(newCupRange);
                }
            }
            //SizeRange
            #region Xsj20110817:为完善历史多单价而注释掉
            //List<Detail.SizeDetailCls> sizeDetailRangeList = MIDcSource.SizeList.Where(P => P.IsChosed).Where(P => P.IsRange).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            List<MaterialPriceHeader.SizeDetailCls> sizeDetailRangeList = this._currStandardMPH.SizeList.Where(P => P.IsChosed).Where(P => P.IsRange).ToList();
            #endregion
            SizeRangeList.Clear();
            #region Xsj20110817:为完善历史多单价而注释掉
            //foreach (Detail.SizeDetailCls item in sizeDetailRangeList)
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            foreach (MaterialPriceHeader.SizeDetailCls item in sizeDetailRangeList)
            #endregion
            {
                var aa = (from a in MIDcContext.ColorSizeCupRanges
                          where a.DataCode == item.SizeCode && a.Category == "Size"
                          select a).FirstOrDefault();
                if (aa != null)
                {
                    SizeRange newSizeRange = new SizeRange();
                    newSizeRange.SizeCode = item.SizeCode;
                    newSizeRange.RangeCount = aa.ColorSizeCupRangeDetails.Count;
                    SizeRangeList.Add(newSizeRange);
                }
            }
        }
        private void DoPurchaseWidthOption()
        {
            //bool isL = (this._CurrDetail.MaterialGroup == "L") && "EMA/NAL/PSL/RAL/SAL".IndexOf(this._CurrDetail.MaterialType) < 0;
            bool isL = (this._CurrDetail.MaterialGroup == "L") && "EMA/NAL/PSL/RAL/SAL".IndexOf(this.MIDcSource.MaterialType) < 0;

            radGroup_PurchaseWidthOption.Properties.Items[0].Description = isL ?
                "top to top of scallop" :
                "Edge to Edge";
            radGroup_PurchaseWidthOption.Properties.Items[1].Description = isL ?
                "lower to lower scallop" : "Usable Width";
            //radGroup_PurchaseWidthOption.Properties.Items[2].Description = "N.A.";
            this.panel_edge.Visible = !isL;
            this.panel_toplower.Visible = isL;

            //this.lblSuppWidth.Text = isL ? "Purchase Width(Supp Width)-top to top of scallop:" : "Purchase Width(Supp Width)-Edge to Edge:";
            //this.lblUsableWidth.Text = isL ? "Purchase Width(Supp Width)-lower to lower scallop:" : "Purchase Width(Supp Width)-Usable Width:";

            //Peter 2011.3.10
            txtEditPurchaseWidth.Properties.NullText = txtEditUsableWidth.Properties.NullText = (MIDcSource.PurchaseWidthOption.HasValue) ? "N.A." : "";

            //SpecificSize
            //this.SizeSpeclabel.Visible = this.editSizeSpec.Visible = (MIDcSource.IsSpecificSize);
            //if (string.IsNullOrEmpty(MIDcSource.SizeSpec)) MIDcSource.SizeSpec = string.Format("{0:0.####}", MIDcSource.UsableWidth); 
        }

        //第二单价对象录入
        private void chkCustomerFavor_CheckedChanged(object sender, EventArgs e)
        {
            this.panelCtrlCustomerPrice.Enabled = this.chkCustomerFavor.Checked;
        }
        private void chkVolume_CheckedChanged(object sender, EventArgs e)
        {
            this.panelCtrlVolume.Enabled = this.chkVolume.Checked;
        }
        private void chkPeriod_CheckedChanged(object sender, EventArgs e)
        {
            this.panelCtrlPeriod.Enabled = this.chkPeriod.Checked;
        }
        private void chkCollective_CheckedChanged(object sender, EventArgs e)
        {
            this.panelCtrlCollective.Enabled = this.chkCollective.Checked;
        }


        //由radioGroupHaveSizeMatrix的选项Yes/No来决定是否显示Size Matrix System选择项的
        private void radioGroupHaveSizeMatrix_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        #endregion

        //物料加工工序處理
        #region 物料加工工序處理
        //判斷是否顯示加工工序
        private void radGroup_IsPurchaseItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.groupCtrl_MatlProc.Visible = !((bool)this.radGroupIsPurchaseItem.EditValue);
        }
        //添加功工工序
        private void sBtn_AddMatlProc_Click(object sender, EventArgs e)
        {
            this.gridView_MatlProc.AddNewRow();
        }
        //刪除加工工序
        private void sBtn_DelMatlProc_Click(object sender, EventArgs e)
        {
            this.gridView_MatlProc.DeleteSelectedRows();
        }
        //清除掉沒效的工序
        public bool CleanBlankMatlProc()
        {
            this.gridView_MatlProc.CloseEditor();
            this.gridView_MatlProc.UpdateCurrentRow();
            bool ResultBool = false;
            string DelIndexList = null;
            string RepeatRowList = null;
            if (this.gridView_MatlProc.RowCount == 0)
            {
                //標注提示內容
                SpecialNotMsg = "請輸入工序信息!";
            }
            else
            {
                for (int i = 0; i < this.gridView_MatlProc.RowCount; i++)
                {
                    MaterialProcess MatlProc = this.gridView_MatlProc.GetRow(i) as MaterialProcess;
                    if (MatlProc.MatlForProcess == null || MatlProc.MatlForProcess.ToString().Trim() == "" || (MatlProc.ItemWidth ?? 0) < 0)
                    {
                        DelIndexList += (i + 1).ToString() + ",";
                    }
                    else if (MatlProc.MatlForProcess != null && MatlProc.MatlForProcess.ToString().Trim() != "")
                    {
                        if (MIDcSource.MaterialProcesses.Where(P => P.MatlForProcess != null && P.MatlForProcess.Trim() == MatlProc.MatlForProcess.Trim()).Count() > 1)
                        {
                            RepeatRowList += (i + 1).ToString() + ",";
                        }
                    }
                }
            }
            if (DelIndexList != null)
            {
                DelIndexList = DelIndexList.Substring(0, DelIndexList.Length - 1);
                //標注提示內容
                SpecialNotMsg = "以下行號工序信息不完整[" + DelIndexList + "],請確認!";
            }
            else if (RepeatRowList != null)
            {
                RepeatRowList = RepeatRowList.Substring(0, RepeatRowList.Length - 1);
                //標注提示內容
                SpecialNotMsg = "行號為[" + RepeatRowList + "]的 Mat'l For Processing 有重複,請修正!";
            }

            if (DelIndexList != null || RepeatRowList != null)
            {
                ResultBool = true;
            }
            return ResultBool;
        }
        //標注物料工序輸入的行號
        private void gridView_MatlProc_CustomDrawRowIndicator(object sender, DevExpress.XtraGrid.Views.Grid.RowIndicatorCustomDrawEventArgs e)
        {
            if (e.Info.IsRowIndicator && e.RowHandle >= 0)
            {
                e.Info.DisplayText = (e.RowHandle + 1).ToString().Trim();
            }
        }
        #endregion

        //單位換算
        private void radGroup_PurchaseType_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (this.radGroup_PurchaseWidthOption.EditValue != null && this.radGroup_PurchaseWidthOption.EditValue.ToString() == "1")
            //{
            //    this.lblSuppWidth.Text = "Purchase Width(Supp Width)-Edge to Edge:";
            //}
            //else
            //{
            //    this.lblSuppWidth.Text = "Purchase Width(Supp Width)-Usable Width:";
            //}
            //Peter 2011.3.10
            txtEditPurchaseWidth.Properties.NullText = txtEditUsableWidth.Properties.NullText = (radGroup_PurchaseWidthOption.SelectedIndex == -1) ? "" : "N.A.";

            //Xsj20120418:應王生的要求:(1)當用戶選擇"Edge to Edge",顯示第一個"Purchase Width".(2)當用戶選擇"Usable Width"，顯示第二個"Purchase Width".
            if (radGroup_PurchaseWidthOption.SelectedIndex == 0)
            {
                this.lblSuppWidth_ETE.Visible = true;
                this.lblUsableWidth_UW.Visible = false;
            }
            if (radGroup_PurchaseWidthOption.SelectedIndex == 1)
            {
                this.lblSuppWidth_ETE.Visible = false;
                this.lblUsableWidth_UW.Visible = true;
            }
            if (radGroup_PurchaseWidthOption.SelectedIndex == 2)
            {
                this.lblSuppWidth_ETE.Visible = false;
                this.lblUsableWidth_UW.Visible = false;
            }
        }
        //private void radGroup_SRforSWL_EditValueChanged(object sender, EventArgs e)
        //{
        //    string oldV = this.MIDcSource.SingleRangeSize;
        //    object obj = radGroup_SRforSWL.EditValue;
        //    if (Convert.IsDBNull(obj)) return;
        //    string newV = (string)obj;
        //    if (string.IsNullOrEmpty(oldV) || string.IsNullOrEmpty(newV)) return;

        //    if (oldV != newV)
        //    {
        //        if (newV == "Ss" || newV == "Rs" || newV == "Rc")
        //        {
        //            radGroup_Unit.EditValue = "Number";
        //            MIDcSource.UnitForSize = "Number";
        //        }
        //        else
        //        {
        //            radGroup_Unit.EditValue = "MM";
        //            MIDcSource.UnitForSize = "MM";
        //        }
        //    }
        //    //size matrix
        //    bool isHaveSizeMatrix = (newV == "Rc");
        //    this.sizeMatrixLabel.Enabled = this.cbSizeMatrix.Enabled = isHaveSizeMatrix;
        //    this.MIDcSource.HaveSizeMatrix = isHaveSizeMatrix;
        //    if (!isHaveSizeMatrix)
        //    {
        //        this.cbSizeMatrix.ItemIndex = -1;
        //        this.cbSizeMatrix.EditValue = "";
        //        this.MIDcSource.SizeMatrix = "";
        //    }
        //    this.MIDcSource.SingleRangeSize = newV;
        //}

        private void txtEditMaterialCode_Leave(object sender, EventArgs e)
        {
            if (this.CurrStatus == FormStatus.IsNew && CheckSuppref())
            {
                MessageBox.Show("此 SupplierReference 已存在! 請重新輸入.");
            }

        }

        private void txtEditMaterialCode_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && this.CurrStatus == FormStatus.IsNew)
            {
                if (CheckSuppref())
                {
                    MessageBox.Show("此 SupplierReference 已存在! 請重新輸入.");
                }
            }
        }

        private void cmbMaterialType_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                this.sBtnNext.Focus();
            }
        }

        private void repositoryItemButtonEdit1_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            MaterialProcess matlProc = this.gridView_MatlProc.GetRow(this.gridView_MatlProc.FocusedRowHandle) as MaterialProcess;
            if (matlProc == null) return;
            string suppref = matlProc.MatlForProcess;


            PH.MIDc.BO.DetailList list = new DetailList();
            Detail d = list.GetDetail(suppref);
            if (d == null) return;

            object obj;
            if (d.Supplier == "C049" || d.Supplier == "P008-DYE") obj = d.SupplierWidth;
            else obj = d.UsableWidth;

            this.gridView_MatlProc.SetRowCellValue(this.gridView_MatlProc.FocusedRowHandle, "ItemWidth", obj);
        }

        private void btnSetNonLiability_Click(object sender, EventArgs e)
        {
            this.MIDcSource.Liability = null;
            this.radioGroupLiability.SelectedIndex = -1;
            cbTobeFollowup.EditValue = null;
            this.bindingSource1.EndEdit();
        }

        private void buttonEdit_Properties_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            string s = e.Button.Caption;
            TextEdit edit = sender as TextEdit;
            if (edit != null)
                edit.EditValue = null;
        }

        private void RecordStandardPrice()
        {
            this.priceShowCtrl_StandardMultiPrice.SavePirce();
        }

        //Xsj110803
        private void radioGroupLiability_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.radioGroupLiability.EditValue != null && Convert.ToInt32(this.radioGroupLiability.EditValue) == 1)
            {
                this.cbTobeFollowup.Properties.ReadOnly = false;
            }
            else
            {
                this.cbTobeFollowup.Properties.ReadOnly = true;
            }
        }


        // Xsj:應JaneLai的要求，當前組別的行顯示內容：為 MaterialType所用的Ｓize的起止Ｓize
        private void gridView_SizeDetail_CustomDrawGroupRow(object sender, DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventArgs e)
        {
            string noteTxt = "(";
            if (((DevExpress.XtraGrid.Views.Grid.ViewInfo.GridGroupRowInfo)(e.Info)).EditValue != null)
            {
                string groupText = ((DevExpress.XtraGrid.Views.Grid.ViewInfo.GridGroupRowInfo)(e.Info)).EditValue.ToString();
                MaterialPriceHeader.SizeDetailCls sizeCls = this._currStandardMPH.SizeList.Where(p => p.GroupName == groupText).OrderBy(p => p.Seq).FirstOrDefault();
                if (sizeCls != null)
                {
                    noteTxt += sizeCls.SizeCode;
                }
                sizeCls = this._currStandardMPH.SizeList.Where(p => p.GroupName == groupText).OrderBy(p => p.Seq).LastOrDefault();
                if (sizeCls != null)
                {
                    noteTxt += "-" + sizeCls.SizeCode;
                }
                noteTxt += ")";
                string displayText = ((DevExpress.XtraGrid.Views.Grid.ViewInfo.GridGroupRowInfo)(e.Info)).GroupText;
                int index = displayText.LastIndexOf("(");
                if (index != -1)
                {
                    displayText = displayText.Substring(0, index) + noteTxt;
                }
                else
                {
                    displayText += noteTxt;
                }
                ((DevExpress.XtraGrid.Views.Grid.ViewInfo.GridGroupRowInfo)(e.Info)).GroupText = displayText;
            }
        }

        private void cmbMaterialType_SelectedValueChanged(object sender, EventArgs e)
        {
            PH.MIDc.BO.MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();

            if (string.IsNullOrEmpty(this.cmbMaterialType.Text)) return;

            PH.MIDc.BO.MaterialType MaterialTypeDB = db.MaterialTypes.Where(dr => dr.MaterialType1 == this.cmbMaterialType.Text).FirstOrDefault();

            //this.MIDcSource.SingleRangeSize = MaterialTypeDB.SuppSizeCupElement;


            //string s = this.MIDcSource.SingleRangeSize;
            //if (!string.IsNullOrEmpty(s))
            //{
            //    if (s.IndexOf("s") > -1 || MaterialTypeDB.Dimension == 4)
            //    {
            //        radGroup_Unit.EditValue = "Number";
            //        MIDcSource.UnitForSize = "Number";
            //    }
            //    else
            //    {
            //        radGroup_Unit.EditValue = "MM";
            //        MIDcSource.UnitForSize = "MM";
            //    }
            //}

            cbSizeMatrix.Visible = sizeMatrixLabel.Visible = (MaterialTypeDB.Dimension == 4);


            bool isHaveSizeMatrix = (MaterialTypeDB.Dimension == 4);
            this.sizeMatrixLabel.Enabled = this.cbSizeMatrix.Enabled = isHaveSizeMatrix;
            //this.MIDcSource.HaveSizeMatrix = isHaveSizeMatrix;
            if (!isHaveSizeMatrix)
            {
                this.cbSizeMatrix.ItemIndex = -1;
                this.cbSizeMatrix.EditValue = "";
                // this.MIDcSource.SizeMatrix = "";
            }

            
           



            /*
              private void radGroup_SRforSWL_EditValueChanged(object sender, EventArgs e)
        {
            string oldV = this.MIDcSource.SingleRangeSize;
            object obj = radGroup_SRforSWL.EditValue;
            if (Convert.IsDBNull(obj)) return;
            string newV = (string)obj;
            if (string.IsNullOrEmpty(oldV) || string.IsNullOrEmpty(newV)) return;

            if (oldV != newV)
            {
                if (newV == "Ss" || newV == "Rs" || newV == "Rc")
                {
                    radGroup_Unit.EditValue = "Number";
                    MIDcSource.UnitForSize = "Number";
                }
                else
                {
                    radGroup_Unit.EditValue = "MM";
                    MIDcSource.UnitForSize = "MM";
                }
            }
            //size matrix
            bool isHaveSizeMatrix = (newV == "Rc");
            this.sizeMatrixLabel.Enabled = this.cbSizeMatrix.Enabled = isHaveSizeMatrix;
            this.MIDcSource.HaveSizeMatrix = isHaveSizeMatrix;
            if (!isHaveSizeMatrix)
            {
                this.cbSizeMatrix.ItemIndex = -1;
                this.cbSizeMatrix.EditValue = "";
                this.MIDcSource.SizeMatrix = "";
            }
            this.MIDcSource.SingleRangeSize = newV;
        }
             
             */



        }

        private void cmbMaterialType_TextChanged(object sender, EventArgs e)
        {
            //PH.MIDc.BO.MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();

            //if (string.IsNullOrEmpty(this.cmbMaterialType.Text)) return;

            //PH.MIDc.BO.MaterialType MaterialTypeDB = db.MaterialTypes.Where(dr => dr.MaterialType1 == this.cmbMaterialType.Text).FirstOrDefault();

            ////this.MIDcSource.SingleRangeSize = MaterialTypeDB.SuppSizeCupElement;


            ////string s = this.MIDcSource.SingleRangeSize;
            ////if (!string.IsNullOrEmpty(s))
            ////{
            ////    if (s.IndexOf("s") > -1 || MaterialTypeDB.Dimension == 4)
            ////    {
            ////        radGroup_Unit.EditValue = "Number";
            ////        MIDcSource.UnitForSize = "Number";
            ////    }
            ////    else
            ////    {
            ////        radGroup_Unit.EditValue = "MM";
            ////        MIDcSource.UnitForSize = "MM";
            ////    }
            ////}

            //cbSizeMatrix.Visible = sizeMatrixLabel.Visible = (MaterialTypeDB.Dimension == 4);


            //bool isHaveSizeMatrix = (MaterialTypeDB.Dimension == 4);
            //this.sizeMatrixLabel.Enabled = this.cbSizeMatrix.Enabled = isHaveSizeMatrix;
            //this.MIDcSource.HaveSizeMatrix = isHaveSizeMatrix;
            //if (!isHaveSizeMatrix)
            //{
            //    this.cbSizeMatrix.ItemIndex = -1;
            //    this.cbSizeMatrix.EditValue = "";
            //   // this.MIDcSource.SizeMatrix = "";
            //}
        }


    }
}