/* 

$Header: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Main/DetailDetailForm.cs 1     08-08-27 10:37 Water Zhang $ 
$Author: Water Zhang $ 
$Date: 08-08-27 10:37 $ 
$Revision: 1 $ 

$History: DetailDetailForm.cs $ 
 * 
 * *****************  Version 1  *****************
 * User: Water Zhang  Date: 08-08-27   Time: 10:37
 * Created in $/PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Main

*/


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.MIDc.BO;
using System.Reflection;

using DevExpress.XtraGrid.Views.Grid;
using System.Diagnostics;
using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;

using System.Threading;
using PH.MIDc.UI.Config;

namespace PH.MIDc.UI
{
    public partial class DetailDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region
        private RepositoryItemPHSpinEdit _riseRWM;

        private PH.MIDc.BO.Detail _midcDetail
        {
            get { return (this.BindingSource.Current as PH.MIDc.BO.Detail); }
        }


        #region Xsj20110525:加實現添加歷史多單價而添加
        //因為當前日期決定了當前使用的單價，所以不能隨便更改系統時間，增加兩個時間變量用於對比資料加載日期和保存日期是否一至。
        private DateTime _loadMsgDateTime;
        private DateTime _saveMsgDateTime;
        public MaterialPriceBoRightForCurrUser MatlPriceBORightForCurrUser = new MaterialPriceBoRightForCurrUser();
        #endregion

        private int ControlTag { get; set; }
        private bool _HasLoadFromDB = false;//是否有打開圖片頁{true 是; false 否}
        #endregion


        public DetailDetailForm()
        {
            _dt1 = DateTime.Now;
            //TranceLog("DetailDetailForm Begin");
            InitializeComponent();




            //(this.PrevForm as SampleOrderDetailForm)

            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            CreateSpinEdit();

            ControlTag = 0;

            this.btnDeclare.Enabled = false;

            //Xsj101215
            this.pictureEdit1.Properties.ImageChanged += new EventHandler(Properties_ImageChanged);

            //TranceLog("DetailDetailForm End");
        }

        //Xsj20120924:添加該構造函數，用於過期單價跳轉維護
        public DetailDetailForm(Detail CurrDetail, PH.MIDc.BO.MIDcDataContext Dc)
            : this()
        {
            this.BindingSource.DataSource = CurrDetail;
            this.DataContext = Dc;

            this.barBtnSaveAndReturn.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barToolbarsListRet.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;


        }


        #region Test Log
        DateTime _dt1, _dt2;
        private void TranceLog(string s)
        {
            return;
            DateTime dt2 = DateTime.Now;
            using (StreamWriter sw = File.AppendText("MIDcLog.txt"))
            {
                sw.WriteLine(string.Format("{0}:[{1}]-[{2}] Seconds:{3}\r\n", s, _dt1, dt2, (dt2 - _dt1).Seconds));
            }
            _dt1 = DateTime.Now;
        }

        #endregion


        #region Init Value

        private void InitValue(string status)
        {
            if (status == "save")
            {
                SampleOrderDetailForm f = (this.PrevForm as SampleOrderDetailForm);
                if (f != null)
                    f.CurSaveData();
                _midcDetail.AutoInsertComposition((this.DataContext as MIDcDataContext), true);
                //_midcDetail.AutoInsertRatioPrice((this.DataContext as MIDcDataContext), true);
                if (f != null)
                    f.CurSaveData();
                //(this.PrevForm as SampleOrderDetailForm).CurSaveData();


                this.CompositionDetailListForm1.BandData(_midcDetail, (this.DataContext as MIDcDataContext));
                //this.RatioPriceListForm1.BandData(_midcDetail, (this.DataContext as MIDcDataContext));
            }
            SetSpecSizeLabel();
        }

        /// <summary>
        /// Xsj100813:讀取父控件數據源的當前項作為當前控件的數據源
        /// </summary>
        private void NewDataLoad()
        {
            //try
            //{
            //if (this.BindingSource.Current != null && (((PH.MIDc.BO.Detail)this.BindingSource.Current).Supplier == null || ((PH.MIDc.BO.Detail)this.BindingSource.Current).Supplier == ""))
            if (this._midcDetail != null && (this._midcDetail.Supplier == null || this._midcDetail.Supplier == ""))
            {
                SampleOrderDetailForm f = (this.PrevForm as SampleOrderDetailForm);
                if (f == null) return;

                SampleOrder sampleOrder = (f.BindingSource.Current as SampleOrder);

                _midcDetail.Supplier = sampleOrder.Supplier;//.GetSupplierProfile(sampleOrder.Supplier); 
                _midcDetail.SeasonNo = sampleOrder.SeasonNo;
                _midcDetail.CreateDate = DateTime.Now;
                _midcDetail.SampleOrderNo = sampleOrder.SampleOrderNo;
                _midcDetail.MIDStatus = MIDc_MIDStatus.TMID_WIP;

                _midcDetail.RiskQA = "N.A.";

                _midcDetail.DataPreparedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName; // PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                _midcDetail.DataPreparedDate = DateTime.Now;

            }
            //}
            //catch (Exception ex)
            //{ }



        }

        /// <summary>
        /// Xsj100816:設置Combox的初始值
        /// </summary>
        private void BindComBoxData()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            PH.MIDc.BO.MIDcDataContext midscontext = ContextBuilder.CreateContext<MIDcDataContext>();
            PH.BasicInfo.BO.BasicInfoDataContext basicInfoDataContext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();// new PH.BasicInfo.BO.BasicInfoDataContext();

            LookUpColumnInfoCollection coll;
            //MaterialType in config
            #region Material Type

            if (this.IsNew)
            {
                //MaterialTypeList list = new MaterialTypeList();

                //var aa = list.GetActiveMaterialTypes(this._midcDetail.MaterialType);
                //this.lookUpEdit1.Properties.DataSource = aa;

                //this.lookUpEdit1.Properties.DisplayMember = "MaterialType1";
                //this.lookUpEdit1.Properties.ValueMember = "MaterialType1";

                //coll = this.lookUpEdit1.Properties.Columns;

                //LookUpColumnInfo col0 = new LookUpColumnInfo("MaterialType1", "MaterialType1", 1);
                //col0.Width = 6;
                //coll.Add(col0);
                //LookUpColumnInfo col = new LookUpColumnInfo("Description", "Description", 2);
                //col.Width = 150;
                //coll.Add(col);
                //LookUpColumnInfo col2 = new LookUpColumnInfo("MaterialGroup", "MaterialGroup", 3);
                //col.Width = 50;
                //coll.Add(col2);
                //coll.Add(new LookUpColumnInfo("MaterialGroup", "MaterialGroup", 0));
            }
            #endregion

            //Status
            #region Status
            //if (this.IsNew)
            {
                this.lookUpEdit2.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Status" orderby dictionaryData.Description select dictionaryData;
                this.lookUpEdit2.Properties.DisplayMember = "DataCode";
                this.lookUpEdit2.Properties.ValueMember = "DataCode";
                coll = this.lookUpEdit2.Properties.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "Status", 50));
                coll.Add(new LookUpColumnInfo("DataName", "Description", 80));
                coll.Add(new LookUpColumnInfo("Description", "Seq", 20));
            }
            #endregion

            //PatternCode
            #region PatternCode

            this.lookUpEdit3.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.PatternCode" select dictionaryData;
            this.lookUpEdit3.Properties.DisplayMember = "DataCode";
            this.lookUpEdit3.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit3.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "PatternCode", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));
            #endregion

            //LaceCode
            #region LaceCode

            this.lookUpEdit4.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.LaceCode" select dictionaryData;
            this.lookUpEdit4.Properties.DisplayMember = "DataCode";
            this.lookUpEdit4.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit4.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "LaceCode", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));
            #endregion

            //SpecialLabel
            //this.lookUpEdit5.Properties.DataSource = from SpecialLabels in midscontext.SpecialLabels select SpecialLabels;
            //this.lookUpEdit5.Properties.DisplayMember = "SpecialLabel1";
            //this.lookUpEdit5.Properties.ValueMember = "SpecialLabel1";
            //coll = this.lookUpEdit5.Properties.Columns;
            //coll.Add(new LookUpColumnInfo("SpecialLabel1", "SpecialLabel", 0));
            //coll.Add(new LookUpColumnInfo("[Group]", "group", 0));

            //Season
            #region Season
            this.lookUpEdit6.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Season" select dictionaryData;
            this.lookUpEdit6.Properties.DisplayMember = "DataCode";
            this.lookUpEdit6.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit6.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Season", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));
            #endregion

            #region Unit

            //if (this.IsNew)
            {
                //SupplierUnit
                this.lookUpEdit7.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Unit" select dictionaryData;
                this.lookUpEdit7.Properties.DisplayMember = "DataCode";
                this.lookUpEdit7.Properties.ValueMember = "DataCode";
                coll = this.lookUpEdit7.Properties.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "Unit", 0));
                coll.Add(new LookUpColumnInfo("Description", "Description", 0));

                //PHUnit
                this.lookUpEdit8.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Unit" select dictionaryData;
                this.lookUpEdit8.Properties.DisplayMember = "DataCode";
                this.lookUpEdit8.Properties.ValueMember = "DataCode";
                coll = this.lookUpEdit8.Properties.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "Unit", 0));
                coll.Add(new LookUpColumnInfo("Description", "Description", 0));
            }
            #endregion


            //Supplier
            #region Supplier
            if (this.IsNew)
            {
                this.editSupplier.Properties.DataSource = from supplier in basicInfoDataContext.SupplierProfiles
                                                          select supplier;
                this.editSupplier.Properties.DisplayMember = "Supplier";
                this.editSupplier.Properties.ValueMember = "Supplier";
                coll = this.editSupplier.Properties.Columns;
                coll.Add(new LookUpColumnInfo("Supplier", "Supplier", 0));
                coll.Add(new LookUpColumnInfo("SupplierName", "Supplier Name", 0));
            }
            editSupplier.Visible = this.IsNew;
            #endregion

            //Customer
            #region Customer


            //應shulin “MIDc Review”郵件2023/03/28 12:32，改成下方數據源
            string SqlStr = "select distinct PGRP from [PH.RWO1]..LWPM_CustomerProfile order by PGRP";
            DataTable dtCustomer = (this.DataContext as MIDcDataContext).ExecuteDataTable(SqlStr, "dtCustomer");
            cbTobeFollowup.Properties.Items.Clear();
            foreach (DataRow dr in dtCustomer.Rows)
            {
                cbTobeFollowup.Properties.Items.Add(dr["PGRP"].ToString());
            }

            //應David “更新MIDC Cust code”郵件2022/05/13 15:14中小燕子的要求，改成下方數據源
            //string SqlStr = "select distinct Customer from [PH.RWO1]..CustomerCode";
            //DataTable dtCustomer = (this.DataContext as MIDcDataContext).ExecuteDataTable(SqlStr, "dtCustomer");
            //cbTobeFollowup.Properties.Items.Clear();
            //foreach (DataRow dr in dtCustomer.Rows)
            //{
            //    cbTobeFollowup.Properties.Items.Add(dr["Customer"].ToString());
            //}

            //var custs = from a in context.Misc_DataDictionaries
            //            where a.DataType == "PH.SPC.SampleOrder.Customer"
            //            orderby a.DataCode
            //            select a;
            //foreach (var item in custs)
            //{
            //    //this.cbxCust.Properties.Items.Add(item.DataCode);
            //    this.cbTobeFollowup.Properties.Items.Add(item.DataCode);
            //}

            #endregion

            //Size Matrix
            #region Size Matrix

            PH.MIDc.BO.DictionaryList dlist = new PH.MIDc.BO.DictionaryList();
            this.cbSizeMatrix.Properties.DataSource = dlist.GetDataDictionaryMutiLang("PH.WO.SizeMatrix");
            this.cbSizeMatrix.Properties.DisplayMember = "Description";
            this.cbSizeMatrix.Properties.ValueMember = "DataCode";
            #endregion

        }

        private void BandDataPhoto()
        {
            if (_HasLoadFromDB)
                return;

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            var obj = (from a in context.DetailImages where a.SuppRef == this._midcDetail.SuppRef select a).FirstOrDefault();

            if (obj != null)
            {
                this.pictureEdit1.EditValue = obj.Photo;
                _HasLoadFromDB = true;
            }

        }
        private void CreateSpinEdit()
        {
            _riseRWM = new RepositoryItemPHSpinEdit();
            //this.gcCMYS.RepositoryItems.Add(riseRWM);
            _riseRWM.AutoHeight = false;
            _riseRWM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            _riseRWM.Increment = new decimal(new int[] {
              0,
              0,
              0,
              0});
            _riseRWM.Buttons.Clear();
            _riseRWM.IsFloatValue = true;
            //this.repositoryItemMySpinEdit.EditFormat.FormatType = FormatType.Custom;
            _riseRWM.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            _riseRWM.Mask.EditMask = "0.##";
            //_riseRWM.Mask.FormatType = DevExpress.Utils.FormatType.Numeric;
            _riseRWM.DisplayFormat.FormatString = "0.####";
        }

        private void SetCanEditBO()
        {
            DetailListForm f = (this.PrevForm as DetailListForm);
            if (f == null) return;
            string mstatus = f.MIDStatus;

            switch (mstatus)
            {
                case "Spec":
                case "Photo":
                case "ColorCode":
                case "PatternLace":
                    this.barBtnEdit.Enabled = true;
                    break;
                default:
                    break;
            }
        }
        private void SetPurchaseWidthVisible()
        {
            if (_midcDetail == null || string.IsNullOrEmpty(this._midcDetail.MaterialType)) return;

            bool isL = (this._midcDetail.MaterialGroup == "L") && "EMA/NAL/PSL/RAL/SAL".IndexOf(this._midcDetail.MaterialType) < 0;
            this.panel_edge.Visible = !isL;
            this.panel_toplower.Visible = isL;

            this.SizeSpeclabel.Visible = this.editSizeSpec.Visible = (_midcDetail.IsSpecificSize);// (this._midcDetail.MaterialGroup == "P");
        }

        private void DoWithPurchaseWidthOption(PH.MIDc.BO.Detail DetailCls)
        {
            //Xsj20120418:應王生的要求:(1)當用戶選擇"Edge to Edge",顯示第一個"Purchase Width".(2)當用戶選擇"Usable Width"，顯示第二個"Purchase Width".
            if ((DetailCls.PurchaseWidthOption ?? 0) == 1)
            {
                this.lblSuppWidth.Visible = true;
                this.lblUsableWidth.Visible = false;
            }
            else if ((DetailCls.PurchaseWidthOption ?? 0) == 2)
            {
                this.lblSuppWidth.Visible = false;
                this.lblUsableWidth.Visible = true;
            }
            else
            {
                this.lblSuppWidth.Visible = false;
                this.lblUsableWidth.Visible = false;
            }
        }

        #endregion

        #region Load
        public override void DataBind()
        {
            //TranceLog("DataBind Begin");
            base.DataBind();


            InitValue("load");

            //SetPageVisible();
            //SetPurchaseWidthVisible();


            #region Xsj:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標準ALLInPrice
            PH.MIDc.BO.Detail detail = this._midcDetail; // this.BindingSource.Current as PH.MIDc.BO.Detail;

            //string s = detail.SizeRange;

            //if (detail.Factory == "SL")
            //{
            //    this.panelCtrl_SLAllInPrice.Visible = false;
            //}
            //Xsj20120512
            DoWithPurchaseWidthOption(detail);
            #endregion

            //if (this._midcDetail.MIDStatus != MIDc_MIDStatus.TMID_Completed)// MIDc_MIDStatus.TMID.ToString()
            //{
            //    btnPromote.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //}

            Detail AObj = this.BindingSource.Current as Detail;
            WeightGmSqmlabel.Text = AObj.MaterialGroup != "E" ? "Weight gm/sqm" : "Weight gm/m";

            if (AObj.MaterialGroup == "A") //由Davd加入 2021-06-29 小燕子要求Material Type = 'A'的物料，克重按Stock in单位输入重量
            {
                WeightGmSqmlabel.Text = "Weight gm/" + AObj.PHUnit.ToLower();
            }

            string[] MaterialTypeTeam = new string[] { "EMB", "NNL", "NRL", "NRN", "NRT", "NSC", "NST" };
            if (AObj.MaterialGroup == "L" && MaterialTypeTeam.Contains(AObj.MaterialType))
            {
                WeightGmSqmlabel.Text = "Weight gm/m";
            }




            txtPatternShapeRepeatStandard.Enabled = (AObj.MaterialGroup == "E" || AObj.MaterialGroup == "L");
            txtPatternShapeRepeatS.Enabled = (AObj.MaterialGroup == "E" || AObj.MaterialGroup == "L");
            txtPatternShapeRepeatMin.Enabled = (AObj.MaterialGroup == "E" || AObj.MaterialGroup == "L");
            txtPatternShapeRepeatMax.Enabled = (AObj.MaterialGroup == "E" || AObj.MaterialGroup == "L");

            this.SetMIDcDataSource();

            spinEdit12.Properties.ReadOnly = true;
            txtWeightHsCodReference.Properties.ReadOnly = true;

            //TranceLog("DataBind End");

            //materialWeightUserControl1.PrepareData(DataContext as MIDcDataContext, _midcDetail);
            materialWeightForm1.PrepareData(DataContext as MIDcDataContext, _midcDetail);


            //InitMaterialWeight();
        }



        public override void EditCurrent()
        {
            base.EditCurrent();
            txtWeightHsCodReference.Properties.ReadOnly = true;
            materialWeightForm1.AllowEditMaterialWeight = true;
        }




        private void DetailDetailForm_Load(object sender, EventArgs e)
        {
            //TranceLog("DetailDetailForm_Load begin");
            //SetCanEditBO();
            //#region Xsj20110525:加實現添加歷史多單價而添加
            //_loadMsgDateTime = DateTime.Now;
            //#endregion
            //TranceLog("DetailDetailForm_Load End");
        }
        protected override void OnLoad(EventArgs e)
        {
            //TranceLog("OnLoad Begin");
            base.OnLoad(e);

            _haveProcessPrice = false;
            //TranceLog("SetCanEditBO Begin");
            SetCanEditBO();
            #region Xsj20110525:加實現添加歷史多單價而添加
            _loadMsgDateTime = DateTime.Now;
            #endregion
            //TranceLog("SetCanEditBO End");

            //ProcessFunctionRight();
            //TranceLog("BindComBoxData Begin");
            BindComBoxData();
            //TranceLog("BindComBoxData End");

            NewDataLoad();

            //if (this._midcDetail.MIDStatus != MIDc_MIDStatus.TMID_Completed)
            //{
            //    btnPromote.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //}

            //SetCanShow_Unit();
            //TranceLog("DisableSpinEditScrollings Begin");
            Controller.DisableSpinEditScrollings(this);
            //TranceLog("DisableSpinEditScrollings End");

            this.tbMIDc.SelectedTabPageIndex = 1;

            //command.ObjectLists.Add(this.RatioPriceListForm1.BindingSource);
            //command.ObjectLists.Add(this.CompositionDetailListForm1.BindingSource);
            //command.ObjectLists.Add(this.PriceHistoryListForm1.BindingSource);
            //command.ObjectLists.Add(this.specListForm1.BindingSource);

            //Xsj101101: 發出線程,用於顯示新增和編輯嚮導
            #region
            if (this.IsNew)
            {
                Thread Rthread = new Thread(new ThreadStart(RunInThread));
                Rthread.Start();
            }

            //Xsj101117:顯示單價          
            this.OutComStandardPriceEditor.currDetailDetailForm = this;
            this.OutComStandardPriceEditor.CurrencyVisible = false;
            this.OutComSpecialPriceEditor.currDetailDetailForm = this;
            this.OutComSpecialPriceEditor.CurrencyVisible = false;

            //TranceLog("GetMaterialPriceBORightForCurrUser Begin");
            GetMaterialPriceBORightForCurrUser();
            //TranceLog("GetMaterialPriceBORightForCurrUser End");
            //TranceLog("ShowCurrPriceMsg Begin");
            ShowCurrPriceMsg();
            //TranceLog("ShowCurrPriceMsg End");

            SetPageVisible();
            SetPurchaseWidthVisible();

            if (this.IsNew || this.IsEditting)
            {
                IsEnableCtrl(true);
            }
            else
            {
                IsEnableCtrl(false);
            }
            this.BindingSource.CurrentChanged += new EventHandler(BindingSource_CurrentChanged);
            #endregion

            //TranceLog("OnLoad End");
        }
        #endregion

        #region Platform processing
        private void SetSpecSizeLabel()
        {
            string s = "Specific Size";
            if (_midcDetail != null && this._midcDetail.IsSpecificSize)
            {
                switch (this._midcDetail.SingleRangeSize)
                {
                    case "Ss": s = "Specific Size(Ss)"; break;
                    case "Sw": s = "Specific Width(Sw)"; break;
                    case "Sl": s = "Specific Length(Sl)"; break;
                    case "St": s = "Specific Thickness(St)"; break;
                    default:
                        break;
                }
            }
            this.SizeSpeclabel.Text = s;
        }
        private void SetMIDcDataSource()
        {
            DetailListForm f = (this.PrevForm as DetailListForm);
            if (f == null)
            {
                SetAllDataSource();
                return;
            }
            string mstatus = f.MIDStatus;

            switch (mstatus)
            {
                case "Spec":
                    this.upAndDownFileForm1.CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;
                    this.upAndDownFileForm1.CurrDataContext = this.DataContext as PH.MIDc.BO.MIDcDataContext;
                    this.upAndDownFileForm1.DataBind();
                    break;
                case "Photo":

                    break;
                case "ColorCode":
                    //this.ColorDetailListForm1.EditorTypeName = typeof(ColorDetailDetailForm).FullName;

                    this.ColorDetailListForm1.BindingSource.DataSource = this._midcDetail.ColorDetails;
                    this.barBtnSave.Visibility = this.barBtnSaveAndReturn.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

                    break;
                case "PatternLace":

                    break;
                default:
                    SetAllDataSource();
                    break;
            }

        }

        private void SetAllDataSource()
        {
            //xsj100813:指定TabControl中各頁簽的表格控件的編輯控件
            //this.ColorDetailListForm1.EditorTypeName = typeof(ColorDetailDetailForm).FullName;
            this.ColorDetailListForm1.BindingSource.DataSource = this._midcDetail.ColorDetails;

            this.PriceHistoryListForm1.EditorTypeName = typeof(PriceHistoryDetailForm).FullName;
            this.PriceHistoryListForm1.BindingSource.DataSource = this._midcDetail.PriceHistories;

            //this.RWMListForm1.EditorTypeName = typeof(RWMDetailForm).FullName;
            //this.RWMListForm1.BindingSource.DataSource = this._midcDetail.RWMs;

            this.SizeDetailListForm1.EditorTypeName = typeof(SizeDetailDetailForm).FullName;
            #region Xsj20110817:為完善歷史多單價而註釋掉
            //this.SizeDetailListForm1.BindingSource.DataSource = this._midcDetail.SizeDetails;
            #endregion
            #region Xsj20110817:為完善歷史多單價而添加
            #endregion

            //this.specListForm1.EditorTypeName = typeof(SpecDetailForm).FullName;
            //this.specListForm1.BindingSource.DataSource = this._midcDetail.Specs;

            this.CompositionDetailListForm1.BindingSource.DataSource = this._midcDetail.CompositionDetails;
            //this.RatioPriceListForm1.BindingSource.DataSource = this._midcDetail.RatioPrices;

            //this.customerBrandedListForm1.BindingSource.DataSource = this._midcDetail.CustomerBrandeds;

            //Xsj101115:添加顯示Cup的頁簽
            this.cupDetailListForm1.EditorTypeName = typeof(CupDetailDetailForm).FullName;
            #region Xsj20110817:為完善歷史多單價而註釋掉
            //this.cupDetailListForm1.BindingSource.DataSource = this._midcDetail.CupDetails;
            #endregion
            #region Xsj20110817:為完善歷史多單價而添加
            #endregion

            //Xsj101115:添加顯示MaterialProcess
            this.matlProcessDetailListForm1.BindingSource.DataSource = this._midcDetail.MaterialProcesses;
            this.matlProcessDetailListForm1.EditorTypeName = typeof(MatlProcessDetailDetailForm).FullName;

            //Xsj101210:添加顯示上傳文檔功能
            this.upAndDownFileForm1.CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;
            this.upAndDownFileForm1.CurrDataContext = this.DataContext as PH.MIDc.BO.MIDcDataContext;


            this.upAndDownFileForm1.DataBind();


            #region Xsj20110525:加實現添加歷史多單價而添加
            this.newPriceHistoryForm1.CurrDetail = this._midcDetail;
            #endregion

            //在Unit標籤中顯示海關申報表格 由David加入 2017-11-15
            this.gridDeclare.DataSource = ((MIDcDataContext)this.DataContext).CustomMaterialDeclares
                .Where(p => p.SuppRef == this._midcDetail.SuppRef && p.MidcHSCode == this._midcDetail.HsCode)
                .OrderBy(p => p.SortId);
        }
        public override void ProcessLanguage()
        {
            //base.ProcessLanguage();
            this.SupplierUnitlabel1.TextAlign = ContentAlignment.MiddleLeft;
            this.PHUnitlabel.TextAlign = ContentAlignment.MiddleLeft;
            this.RateToPHUnitlabel.TextAlign = ContentAlignment.MiddleLeft;
        }
        public override void ProcessBORight()
        {
            base.ProcessBORight();
        }
        public override void ProcessFunctionRight()
        {
            //base.ProcessFunctionRight();
        }
        protected override void SetFormControlState()
        {
            //if (this.IsNew)
            //    this._midcDetail.BOWorkMode = PH.Platform.BO.Interface.WorkMode.New;
            //else if (this.IsEditting)
            //    this._midcDetail.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Edit;
            //else this._midcDetail.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;

            base.SetFormControlState();

            IsEnableCtrl(this.IsNew || this.IsEditting);
            radGroupIsPurchaseItem.Enabled = false;

            buttonEdit6.Properties.ReadOnly = true;
            this.editMaterialCode.Properties.ReadOnly = !((this.IsEditting) &&
                (this._midcDetail.MIDStatus == MIDc_MIDStatus.TMID_Completed
                || this._midcDetail.MIDStatus == MIDc_MIDStatus.PMID_WIP
                || this._midcDetail.MIDStatus == MIDc_MIDStatus.PMID_Completed));

            textMaterialType.Properties.ReadOnly = true;
            editMIDStatus.Properties.ReadOnly = true;
            txtSupplier.Properties.ReadOnly = true;



            /****add by shulin 2023-03-23 应David要求将下方计算控件置成ReadOnly************/
            spinEdit12.Properties.ReadOnly = true;
            spinEdit13.Properties.ReadOnly = true;
            spinEdit14.Properties.ReadOnly = true;
            spinEdit15.Properties.ReadOnly = true;
            spinEdit16.Properties.ReadOnly = true;
            spinEdit17.Properties.ReadOnly = true;
            spinEdit18.Properties.ReadOnly = true;
            spinEdit19.Properties.ReadOnly = true;

            txtPatternShapeRepeatMin.Properties.ReadOnly = true;
            txtPatternShapeRepeatMax.Properties.ReadOnly = true;
            /***************/


            this.btnDeclare.Enabled = (this.IsNew || this.IsEditting);
            this.hsCodeButtonEdit.Enabled = this.btnDeclare.Enabled;

            DetailQueryListForm parentForm = (this.PrevForm as DetailQueryListForm);
            if (parentForm != null)
            {
                memoExEdit1.Properties.ReadOnly = parentForm.getRiskQAEidt;
            }
            else
            {
                memoExEdit1.Properties.ReadOnly = true;
            }
        }

        public void SetFormEnable()
        {
            //this.IsEditting = true;
            //this.barBtnEdit.Enabled = false;

            //this.barBtnSaveAndReturn.Enabled = true;
            //this.barBtnSave.Enabled = true;
            //this.barBtnCancel.Enabled = true;
            //this.specListForm1.barBtnDel.Enabled = true;
            //this.specListForm1.barBtnAddNew.Enabled = true;
            //this.specListForm1.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            //this.specListForm1.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            //IsEnableCtrl(this.IsNew || this.IsEditting);
            //radGroupIsPurchaseItem.Enabled = false;
        }

        #endregion

        #region Save

        protected override void OnClickSaveAndReturn()
        {

            //    //if (!CheckCanSave())
            //    //    return;

            //    //SavePhoto();

            //    try
            //    {
            //        //Xsj:101119
            //        //ClearMaterialProcee();

            //        //SavePriceList();
            materialWeightForm1.AllowEditMaterialWeight = false;
            base.OnClickSaveAndReturn();

            //Xsj20110808:刷新父窗體的AllInCost 
            if (this.ListForm != null)
            {
                PH.Platform.UI.CS.UI2.ListForm dForm = this.ListForm as PH.Platform.UI.CS.UI2.ListForm;
                dForm.BindingSource.ResetCurrentItem();
            }



            //this._midcDetail.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            //        this.IsNew = false;
            //        //Controller.WriteQuotationToRDB(this._midcDetail);
            //    }
            //    catch
            //    {
            //        MessageBox.Show(string.Format("Supplier Reference:{0} has exists!", this._midcDetail.SuppRef + "/r/n"), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return;
            //    }
            //    finally
            //    {
            //        InitBrowse();
            //    }
        }
        public void CurSaveData()
        {
            this.BindingSource.EndEdit();

            try
            {
                (this.PrevForm as SampleOrderDetailForm).CurSaveData();//zr20081117
            }
            catch
            {
                base.SaveData();
            }
        }
        protected override void SaveCurrent()
        {
            #region Xsj20110525:加實現添加歷史多單價而添加
            this._saveMsgDateTime = DateTime.Now;
            if (!CheckSysTimeChange())
            {
                MessageBox.Show("系統日期發生修改，保存動作被禁止，請重新打開當前功能重新錄入單價。");
                return;
            }
            #endregion

            bool curisnew = this.IsNew;

            if (!CheckCanSave())
                return;

            SavePhoto();

            ClearMaterialProcee();


            SavePriceList();


            this.BindingSource.EndEdit();


            base.SaveCurrent();
            this.editSuppRef.Properties.ReadOnly = true;

            Controller.WriteQuotationToRDB(this._midcDetail);

            if (curisnew)
            {
                InitValue("save");
            }

            Detail obj = this.BindingSource.Current as Detail;
            if (obj != null && obj.WeightHsCode != obj.WeightHsCodReference)
            {
                string Str = string.Format("請留意, 海關重量已從參考值 {0} 修改為 {1}", obj.WeightHsCodReference, obj.WeightHsCode);
                MessageBox.Show(Str, "重要提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        protected override void OnClickCancel()
        {
            this.editSuppRef.Leave -= new System.EventHandler(this.editSuppRef_Leave);
            if (IsNew)
            {
                this._midcDetail.SuppRef = "";
                //this.BindingSource.CancelEdit();
                if (this.DataContext.GetChangeSet().Inserts.Contains(this._midcDetail)) //this.BindingSource.Current
                {
                    this.DataContext.GetTable<Detail>().DeleteOnSubmit(this._midcDetail); //this.BindingSource.Current
                    this.BindingSource.Remove(this._midcDetail); //this.BindingSource.Current
                    if (this.PrevForm != null)
                        this.PrevForm.BringToFront();
                    return;
                }
            }
            materialWeightForm1.AllowEditMaterialWeight = false;
            base.OnClickCancel();

            //Xsj101118:禁用價格輸入
            SetCanEditBO();

        }
        private bool CheckCanSave()
        {
            Controller.PostGridValue(this.RatioPriceListForm1.objListGridView);
            Controller.PostGridValue(this.CompositionDetailListForm1.objListGridView);
            Controller.PostGridValue(this.PriceHistoryListForm1.objListGridView);
            Controller.PostGridValue(this.customerBrandedListForm1.objListGridView);
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();

            if (IsNew)
            {
                try
                {
                    if (editSuppRef.Text == "")
                    {
                        MessageBox.Show("suppref 不能為空！", "提示");
                        return false;
                    }

                    if ((from c in context.Details where c.SuppRef == editSuppRef.Text select c).Count() != 0)
                    {
                        MessageBox.Show("此suppref 已存在! 請重新輸入", "提示");
                        return false;
                    }

                }
                catch { }
            }
            bool bNeedCheck = (this._midcDetail.MIDStatus == MIDc_MIDStatus.TMID_Completed || this._midcDetail.MIDStatus == MIDc_MIDStatus.PMID_WIP);
            if (bNeedCheck && (!string.IsNullOrEmpty(editMaterialCode.Text)))
            {
                var aa = from a in context.Details
                         where a.SuppRef != this._midcDetail.SuppRef && a.MaterialCode == editMaterialCode.Text
                         select a;
                if (aa.Count() > 0)
                {
                    MessageBox.Show("此Material Code已存在! 請重新輸入", "提示");
                    return false;
                }
            }
            if (this._midcDetail.SuppRef == string.Empty)
            {
                MessageBox.Show("Supplier Reference cannot be blank!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return true;
        }

        private bool CheckCanPromote()
        {
            if (this._midcDetail.MaterialType == null || this._midcDetail.MaterialType == "")
            {
                MessageBox.Show("Must enter a Material Type!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (this._midcDetail.MaterialType.Length != 3)
            {
                MessageBox.Show("Must enter a correct Material Type!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (this._midcDetail.MaterialCode == null || this._midcDetail.MaterialCode == "")
            {
                MessageBox.Show("Must enter a Material code!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            //if (this._midcDetail.MaterialCode.Length != 9 || ImportDBData.GetMaterialCodeFromSQL2005(this._midcDetail.SuppRef, this._midcDetail.ERPSupplier).Length != 9)
            if (this._midcDetail.MaterialCode.Length != 9)
            {
                MessageBox.Show("Must enter a correct Material code!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void SaveCurrentApproval()
        {
            if (!CheckCanSave()) return;
            try
            {
                this.BindingSource.EndEdit();
                this.SaveCurrent();

                this.barBtnDel.Enabled = false;//.RemoveButton("Delete");
                this.barBtnCancel.Enabled = false;//.objEditBar.RemoveButton("Cancel");
                this.barBtnSave.Enabled = false;//.objEditBar.RemoveButton("Save");
                this.barBtnSaveAndReturn.Enabled = false;//.objEditBar.RemoveButton("SaveAndReturn");

                IsEditting = false;

                this.BindingSource.ResetBindings(false);
                this.ReturnToPrevForm();
            }
            catch
            {
                MessageBox.Show(string.Format("Supplier Reference:{0} has exists!", this._midcDetail.SuppRef), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                //this.ReleaseWaitDialog();
            }
        }

        private void InitBrowse()
        {
            //Controller.ControlReadonly(this, true, true);
            //RefreshApprovalCycleStatus();

        }

        private void SetCanShow_Unit()
        {
            //this.panelCA.Visible = (this._midcDetail.MaterialGroup == "A" || this._midcDetail.MaterialGroup == "C");// && (this._midcDetail.MaterialType != "BND");
            //this.panelScallops.Visible = this.panelL.Visible = (this._midcDetail.MaterialGroup == "L") && !PH.MIDc.BO.Detail.IsWideWidthOfL(this._midcDetail.MaterialType);

        }

        private void SavePriceList()
        {
            Detail CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;  

            PriceType[] PriceTypeArr = new PriceType[] { PriceType.Single, PriceType.Multiple };
            string[] SaveType = new string[] { "Standard", "Special" };

            //Detail outMIDcDetail = new Detail();
            foreach (string SaveTypeItem in SaveType)
            {
                if (SaveTypeItem == "Standard")
                {
                    Detail outMIDcDetail = this.OutComStandardPriceEditor.SavePrice();
                    if (outMIDcDetail != null)
                        SavePrice(CurrDetail, outMIDcDetail, ComparePriceType.StandardPrice);
                }
                if (SaveTypeItem == "Special")
                {
                    Detail outMIDcDetail = this.OutComSpecialPriceEditor.SavePrice();
                    if (outMIDcDetail != null)
                        SavePrice(CurrDetail, outMIDcDetail, ComparePriceType.SpecialPrice);
                }
            }
            //重讀 AvgPrice_Supplier/AllInPrice_Supplier 以刷新平均單價
            this.spinEdit5.EditValue = CurrDetail.AvgPrice_Supplier;
            this.spinEdit6.EditValue = CurrDetail.AvgPrice_PH;

            this.editPrice.EditValue = CurrDetail.AllInPrice;
            this.spinEdit_AllInPriceSupplier.EditValue = CurrDetail.AllInPrice_Supplier;

            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標準ALLInPrice
            this.editSLPrice.EditValue = CurrDetail.SLAllInPrice;
            this.spinEdit_SLAllInPriceSupplier.EditValue = CurrDetail.SLAllInPrice_Supplier;
            #endregion


            //重新顯示歷史單價顯示面簽 
            this.newPriceHistoryForm1.ShowDate();
        }

        private void ClearMaterialProcee()
        {
            Detail CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;
            //清空工序
            if (CurrDetail.IsPurchaseItem ?? true)
            {
                this.matlProcessDetailListForm1.BindingSource.Clear();
                CurrDetail.MaterialProcesses.Clear();

                CurrDetail.Operation = null;
                this.DataContext.SubmitChanges();
            }
        }

        #endregion

        #region 圖片處理
        bool IsNeedCreateSmallPic = false;
        private void SavePhoto()
        {
            if (!_HasLoadFromDB)
                return;

            if (Command.CompareByteEquals(this.pictureEdit1.EditValue, (this._midcDetail.DetailImage == null ? null : this._midcDetail.DetailImage.Photo)))
                return;

            //Xsj101214:保存縮略圖
            if (this.pictureEdit1.Image == null)
            {
                this._midcDetail.DetailImage.Photo = null;
                return;
            }
            byte[] NormalPic = (byte[])this.pictureEdit1.EditValue;
            if (IsNeedCreateSmallPic)
            {
                Detail CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;
                CurrDetail.Photo = CreateSmallPic(NormalPic);
                IsNeedCreateSmallPic = false;
            }
            else
            {
                return;
            }

            if (this.pictureEdit1.EditValue != null && this._midcDetail.DetailImage == null)
            {
                DetailImage image = new DetailImage();
                image.Photo = NormalPic;
                image.SuppRef = this._midcDetail.SuppRef;
                this._midcDetail.DetailImage = image;
            }
            else if (this.pictureEdit1.EditValue != null && this._midcDetail.DetailImage != null)
            {
                if (this.pictureEdit1.EditValue.ToString() == "")
                    this._midcDetail.DetailImage.Photo = null;
                else
                    this._midcDetail.DetailImage.Photo = NormalPic;
            }
        }
        //Xsj101215:如果是通過Load本地圖片來改變，則需要重新產生宿略圖
        void Properties_ImageChanged(object sender, EventArgs e)
        {
            if (this.IsEditting)
            {
                IsNeedCreateSmallPic = true;
                this.pictureEditNormalPic.EditValue = null;
                //this.pictureEditNormalPic.Image = pictureEdit1.Image;
            }
        }
        //Xsj101214:生成縮略圖
        private byte[] CreateSmallPic(byte[] InitialPicArr)
        {
            MemoryStream MStream = new MemoryStream(InitialPicArr);
            Image InitialPic = Image.FromStream(MStream);

            //圖片在尺寸範圍內，不需要生成縮略圖
            if (InitialPic.Width < 220 && InitialPic.Height < 170) return InitialPicArr;

            //計算縮略比例
            int Ratio = 1;
            if (InitialPic.Width < InitialPic.Height)
            {
                Ratio = Convert.ToInt32(Math.Floor(Convert.ToDecimal(InitialPic.Height / 170)));
            }
            else
            {
                Ratio = Convert.ToInt32(Math.Floor(Convert.ToDecimal(InitialPic.Width / 220)));
            }
            //生成縮略圖
            Image SmallPic = InitialPic.GetThumbnailImage(Convert.ToInt32(Math.Floor(Convert.ToDecimal(InitialPic.Width / Ratio))), Convert.ToInt32(Math.Floor(Convert.ToDecimal(InitialPic.Height / Ratio))), null, IntPtr.Zero);
            //將縮略圖轉成byte[]
            MemoryStream OtherMStream = new MemoryStream();
            SmallPic.Save(OtherMStream, System.Drawing.Imaging.ImageFormat.Jpeg);
            byte[] img = new byte[OtherMStream.Length];
            OtherMStream.Position = 0;
            OtherMStream.Read(img, 0, Convert.ToInt32(OtherMStream.Length));
            OtherMStream.Close();

            MStream.Close();
            return img;
        }

        #region Photo

        //Xsj101215:顯示正常尺寸的圖片
        private void sBtnShowNormalPic_Click(object sender, EventArgs e)
        {
            ShowDetailPhoto();
        }

        private void ShowDetailPhoto()
        {
            Detail CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;
            if (CurrDetail.Photo == null || CurrDetail.DetailImage == null || CurrDetail.DetailImage.Photo == null)
            {
                return;
            }
            this.pictureEditNormalPic.EditValue = CurrDetail.DetailImage.Photo;
        }

        private void pictureEdit1_ImageChanged(object sender, EventArgs e)
        {
            // MessageBox.Show("Test1");
        }

        private void pictureEdit1_EditValueChanged(object sender, EventArgs e)
        {
            if (!_HasLoadFromDB)
                _HasLoadFromDB = true;
            else
            {
                //this.pictureEditNormalPic.Image = pictureEdit1.Image;
                //MessageBox.Show("Test2");
            }
        }
        #endregion
        #endregion

        #region Page Visible

        private void SetPageVisible()
        {
            DetailListForm f = (this.PrevForm as DetailListForm);
            if (f == null) return;
            this.tbMIDc.BeginUpdate();
            try
            {
                string mstatus = f.MIDStatus;
                switch (mstatus)
                {
                    case "Spec":
                        SetPageInvisible();
                        SetDetailDisable();
                        this.pageCompositionSpec.PageVisible = true;
                        this.CompositionDetailListForm1.Visible = false;
                        this.Gaugelabel.Visible = this.editGauge.Visible = false;
                        break;
                    case "Photo":
                        SetPageInvisible();
                        SetDetailDisable();
                        this.pagePhoto.PageVisible = true;
                        break;
                    case "ColorCode":
                        SetPageInvisible();
                        SetDetailDisable();
                        this.pageColorRange.PageVisible = true;
                        break;
                    case "PatternLace":
                        SetPageInvisible();
                        SetDetailDisable();
                        this.pagePatternLace.PageVisible = true;
                        break;
                    default:
                        break;
                }
            }
            finally
            {
                this.tbMIDc.EndUpdate();
            }
        }
        private void SetDetailDisable()
        {
            foreach (Control c in this.headerTitleBar.Controls)
            {
                c.Enabled = false;
            }
        }
        private void SetPageInvisible()
        {
            foreach (DevExpress.XtraTab.XtraTabPage p in this.tbMIDc.TabPages)
            {
                p.PageVisible = false;
            }
        }
        #endregion

        #region Action

        void btnApprove_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure to Approve?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;

            this._midcDetail.ApprovedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;// PH.AuthManage.Utils.AuthController.UserName;
            this._midcDetail.ApproveDate = DateTime.Now;
            this._midcDetail.Approved = true;
            this._midcDetail.MIDStatus = MIDc_MIDStatus.TMID_Completed;
            this.BindingSource.ResetCurrentItem();
            SaveCurrentApproval();
            //RefreshApprovalCycleStatus();

        }

        void btnConfirm_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure to Confirm?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;

            this._midcDetail.ConfirmedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;// PH.AuthManage.Utils.AuthController.UserName;
            this._midcDetail.ConfirmDate = DateTime.Now;
            this._midcDetail.Confirmed = true;
            this.BindingSource.ResetCurrentItem();
            SaveCurrentApproval();
            //RefreshApprovalCycleStatus();
        }

        void btnHangerPass_Click(object sender, EventArgs e)
        {
            //if (!this._canHangerPass)
            //{
            //    MessageBox.Show(PH.Common.UI.Config.LRight[_languageIndex], PH.Common.UI.Config.LHint[_languageIndex], MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}zr
            if (MessageBox.Show("Are you sure to HangerPass?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;

            this._midcDetail.HangerPassedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;//// PH.AuthManage.Utils.AuthController.UserName;
            this._midcDetail.HangerPassedDate = DateTime.Now;
            this._midcDetail.HangerPassed = true;
            this.BindingSource.ResetCurrentItem();
            SaveCurrentApproval();
            //RefreshApprovalCycleStatus();

        }

        void btnFormPass_Click(object sender, EventArgs e)
        {
            //if (!this._canFormPass)
            //{
            //    MessageBox.Show(PH.Common.UI.Config.LRight[_languageIndex], PH.Common.UI.Config.LHint[_languageIndex], MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}
            if (MessageBox.Show("Are you sure to FormPass?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;

            this._midcDetail.FormPassedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;// PH.AuthManage.Utils.AuthController.UserName;
            this._midcDetail.FormPassedDate = DateTime.Now;
            this._midcDetail.FormPassed = true;
            this.BindingSource.ResetCurrentItem();
            SaveCurrentApproval();
            //RefreshApprovalCycleStatus();
        }

        void btnUnApprove_Click(object sender, EventArgs e)
        {
            //if (!this._canApprove)
            //{
            //    MessageBox.Show(PH.Common.UI.Config.LRight[_languageIndex], PH.Common.UI.Config.LHint[_languageIndex], MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}
            if (MessageBox.Show("Are you sure to Un-Approve?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            this._midcDetail.ApprovedBy = "";
            this._midcDetail.ApproveDate = null;
            this._midcDetail.Approved = false;
            this._midcDetail.MIDStatus = MIDc_MIDStatus.TMID_WIP;
            this.BindingSource.ResetCurrentItem();
            SaveCurrentApproval();
            //RefreshApprovalCycleStatus();
        }

        private void GetAS00MaterialCode()
        {
            if (this._midcDetail.SuppRef == "") return;
            string material = ImportDBData.GetMaterialCodeFromSQL2005(this._midcDetail.SuppRef, this._midcDetail.ERPSupplier);
            if (material != "")
                editMaterialCode.Text = material;
            else
            {
                editMaterialCode.Text = "";
                MessageBox.Show("沒有找到符合條件的MaterialCode！", "提示");
            }
        }

        private void OpenHelpFile()
        {
            string path = Application.StartupPath + "\\Help\\MIDc Formula.pdf";
            if (File.Exists(path))
            {
                //File.Open(path, FileMode.Open);
                Process.Start(path);
            }
        }

        private void DoMaterialTypeChange(MaterialType obj, bool theSame)
        {
            this._midcDetail.MaterialType = obj.MaterialType1;
            this._midcDetail.MaterialGroup = obj.MaterialGroup;
            if (!theSame)
            {
                if (this._midcDetail.Commodity == null) this._midcDetail.Commodity = "";
                //this._midcDetail.Commodity += string.Format("{0}{1}", (this._midcDetail.Commodity == "") ? "" : "\r\n", obj.Description);
                //Xsj20111124:應JaneLay的要求，轉換物料類別時覆蓋原來的內容而不追加
                this._midcDetail.Commodity = obj.Description;
            }



            //改為按Material Type +  Currency取HSCode
            //this._midcDetail.HsCode = obj.HsCode;
            if (this._midcDetail.Currency.ToUpper() == "RMB")
            {
                this._midcDetail.HsCode = obj.HSCodeRMB;
            }
            else
            {
                this._midcDetail.HsCode = obj.HSCodeXRMB;
            }


            this._midcDetail.GetARate();
            SetCanShow_Unit();
            this.BindingSource.ResetCurrentItem();

        }

        private void ValidateUnitRate(string suppUnit, string phUnit)
        {
            this.BindingSource.EndEdit();

            if ((suppUnit == null || suppUnit == "")
                && (phUnit == null || phUnit == ""))
                return;

            this._midcDetail.GetARate();
            this.BindingSource.ResetCurrentItem();
            if (this._midcDetail.ARate == null)
            {
                MessageBox.Show(string.Format("Convertion [{0}] -> [{1}] not found!", suppUnit, phUnit), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void CopyText()
        {
            Clipboard.SetData(DataFormats.Text, this.editSupplier.Text);

        }

        private bool CheckSuppref()
        {

            if (IsNew)
            {
                try
                {
                    if (editSuppRef.Text == "")
                        return false;

                    PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
                    int aa = (from c in context.Details
                              where c.SuppRef == editSuppRef.Text
                              select c).Count();

                    if (aa != 0)
                    {
                        MessageBox.Show("此 SupplierReference 已存在! 請重新輸入.");
                        editSuppRef.EditValue = "";
                        this._midcDetail.SuppRef = "";
                        editSuppRef.Focus();
                        context = null;
                        return false;
                    }

                }
                catch { }
            }

            return true;

        }

        /// <summary>
        /// Xsj20110720:獲取用戶是否有刪除Detail的權限
        /// </summary>
        /// <returns></returns>
        private void GetMaterialPriceBORightForCurrUser()
        {
            //bool result = false;
            List<Auth_RoleBORight> authRoleBORightList = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetRoleBORight().Where(p => p.BO == "MaterialPrice").ToList();
            MatlPriceBORightForCurrUser.AllowAdd = authRoleBORightList.Any(p => p.BORight == "AddNew");
            MatlPriceBORightForCurrUser.AllowDel = authRoleBORightList.Any(p => p.BORight == "Delete");
            MatlPriceBORightForCurrUser.AllowUpdate = authRoleBORightList.Any(p => p.BORight == "Update");
            MatlPriceBORightForCurrUser.AllowRead = authRoleBORightList.Any(p => p.BORight == "Read");
        }

        //Xsj101118:上一條，下一條按鈕事件
        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            //清空當前顯示的Normal圖片
            this.pictureEditNormalPic.EditValue = null;
            this.tbMIDc.SelectedTabPageIndex = 1;
            _haveProcessPrice = false;
            //ShowCurrPriceMsg();
        }

        //Xsj101118:顯示價格資訊
        private bool _haveProcessPrice;
        private void ShowCurrPriceMsg()
        {
            Detail CurrDetail = this._midcDetail; // this.BindingSource.Current as Detail;
            this.OutComStandardPriceEditor.ShowPriceDetailData(CurrDetail, true);
            this.OutComStandardPriceEditor.CurrencyVisible = false;

            if (CurrDetail.HasSpecialPrice ?? false)
            {
                this.tpSpecialPrice.PageVisible = true;
                this.OutComSpecialPriceEditor.ShowPriceDetailData(CurrDetail, false);
            }
            else
            {
                this.tpSpecialPrice.PageVisible = false;
            }
            _haveProcessPrice = true;
        }

        //Xsj101118:啟用或禁用價格錄入
        private void IsEnableCtrl(bool IsEnable)
        {
            if (this.OutComStandardPriceEditor.currDetailDetailForm != null)
            {
                this.OutComStandardPriceEditor.IsEnable = IsEnable;
            }
            if (this.OutComSpecialPriceEditor.currDetailDetailForm != null)
            {
                this.OutComSpecialPriceEditor.IsEnable = IsEnable;
            }
            this.upAndDownFileForm1.IsEnable = IsEnable;
        }
        #endregion

        #region Event

        void txt_ValidateUnitRate_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter) return;
            ValidateUnitRate(this._midcDetail.SupplierUnit, this._midcDetail.PHUnit);
        }

        void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.BindingSource.EndEdit();

            if (!CheckCanSave() || !CheckCanPromote())
                return;
            if (MessageBox.Show(string.Format("Sure Promote to PMID of Material - {0} ?", this._midcDetail.SuppRef), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            this._midcDetail.MIDStatus = MIDc_MIDStatus.PMID_WIP;
            this._midcDetail.PromoteUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;//PH.AuthManage.Utils.AuthController.UserName;
            this._midcDetail.PromoteDate = DateTime.Now;
            this.SaveCurrent();

            Controller.RemoveBindingControls(this);
            btnPromote.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

        }

        void editSuppRef_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && IsNew == true)
            {
                this.BindingSource.EndEdit();

                bool? saveHint = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint;
                PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = false;

                if (!CheckSuppref())
                    return;

                this.SaveCurrent();
                PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.SaveHint = saveHint;
                base.IsNew = false;
                this.editSuppRef.Properties.ReadOnly = true;
            }
        }

        void editSuppRef_Leave(object sender, EventArgs e)
        {
            CheckSuppref();
        }

        void lue_DoMaterialTypeChange_CloseUp(object sender, CloseUpEventArgs e)
        {
            //PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            PH.MIDc.BO.MIDcDataContext midscontext = ContextBuilder.CreateContext<MIDcDataContext>();
            //PH.BasicInfo.BO.BasicInfoDataContext basicInfoDataContext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();// new PH.BasicInfo.BO.BasicInfoDataContext();


            foreach (PH.MIDc.BO.MaterialType obj in midscontext.MaterialTypes)
            {
                if (obj.MaterialType1 == e.Value.ToString())
                {
                    _midcDetail.MaterialGroup = obj.MaterialGroup;
                    DoMaterialTypeChange(obj, (obj.MaterialType1 == this._midcDetail.MaterialType));
                    SetCanShow_Unit();
                    break;
                }
            }


        }

        void bar_OpenHelpFile_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            OpenHelpFile();
        }

        void editSupplier_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar.ToString() == "")
            {
                System.Threading.Thread t = new System.Threading.Thread(new System.Threading.ThreadStart(CopyText));
                t.SetApartmentState(ApartmentState.STA);
                t.Start();

            }
        }

        void xtraTabControl2_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {

            if ((e.Page == this.tpGeneralPrice || e.Page == this.tpSpecialPrice) && !this._haveProcessPrice)
            {
                ShowCurrPriceMsg();
            }

        }

        //Xsj20120228:應Jane Lai與王生討論結果，添加版本控制
        private void barBtnItem_RiseVersion_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Detail currDetail = this._midcDetail; // this.BindingSource.Current as Detail;
            if (currDetail.BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read)
            {
                DetailVersionControlForm detailVersionCtrlForm = new DetailVersionControlForm();
                detailVersionCtrlForm.CurrDetail = currDetail;
                detailVersionCtrlForm.ShowDialog();
            }
        }

        void PrintForms_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MIDcDataContext dc = this.DataContext as MIDcDataContext;
            PH.MIDc.BackEnd.MaterialIdentityCertificateReport r = new PH.MIDc.BackEnd.MaterialIdentityCertificateReport();
            var aa = from a in dc.Details
                     where a.SuppRef == this._midcDetail.SuppRef
                     select a;
            r.DataSource = aa;
            r.ShowPreviewDialog();
            //PrintHelper.PrintFormsSheet1(this._midcDetail);
        }

        #endregion

        #region Wizard

        //Xsj101101:顯示新增/編輯嚮導的異步線程
        #region 顯示新增/編輯嚮導的異步線程
        private string _oldMaterialType;
        private void ShowWizard()
        { //Xsj101101:如果是新增狀態,則在此彈出新增/編輯嚮導
            PH.MIDc.BO.Detail DetailCls = this._midcDetail; // this.BindingSource.Current as PH.MIDc.BO.Detail;
            _oldMaterialType = DetailCls.MaterialType;
            EntranceKeyForm EntranForm = new EntranceKeyForm(DetailCls);
            EntranForm.CurrDetailDetailForm = this;
            EntranForm.StartPosition = FormStartPosition.CenterParent;

            PH.MIDc.BO.Detail OutMIDcCls = EntranForm.MIDcSource;
            if (EntranForm.ShowDialog() == DialogResult.OK)
            {
                DoWizardData(DetailCls, OutMIDcCls);
                InitValue("save");
            }
            else
            {
                if (this.IsNew)
                {
                    OnClickCancel();
                }
                return;
            }
        }
        private void DoWizardData(PH.MIDc.BO.Detail DetailCls, PH.MIDc.BO.Detail OutMIDcCls)
        {
            try
            {
                #region
                DetailCls.SuppRef = OutMIDcCls.SuppRef;
                DetailCls.Supplier = OutMIDcCls.Supplier;
                DetailCls.YieldUsage = OutMIDcCls.YieldUsage;
                DetailCls.SingleRangeSize = OutMIDcCls.SingleRangeSize;
                DetailCls.UnitForSize = OutMIDcCls.UnitForSize;
                DetailCls.MaterialGroup = OutMIDcCls.MaterialGroup;
                DetailCls.MaterialCode = OutMIDcCls.MaterialCode;

                DetailCls.IsPurchaseItem = OutMIDcCls.IsPurchaseItem;
                DetailCls.Operation = OutMIDcCls.Operation;

                DetailCls.Status = OutMIDcCls.Status;
                DetailCls.Dimension = OutMIDcCls.Dimension;
                DetailCls.IsMultiPrice = OutMIDcCls.IsMultiPrice;
                DetailCls.SizeMatrix = OutMIDcCls.SizeMatrix;

                //DetailCls.MultiPriceOption = OutMIDcCls.MultPriceOption;


                //this.MaterialGroup = mt.MaterialGroup;//MIDcContext.MaterialTypes.Where(P => P.MaterialType1 == this.MaterialType).First().MaterialGroup;
                if (OutMIDcCls.MaterialType != DetailCls.MaterialType)
                {
                    if (DetailCls.Commodity == null) DetailCls.Commodity = "";
                    //DetailCls.Commodity += string.Format("{0}{1}", (DetailCls.Commodity == "") ? "" : "\r\n", OutMIDcCls.MaterialTypeDesc);
                    //Xsj20111124:應JaneLay的要求，轉換物料類別時覆蓋原來的內容而不追加
                    DetailCls.Commodity = OutMIDcCls.MaterialTypeDesc;
                }

                DetailCls.MaterialType = OutMIDcCls.MaterialType;

                DetailCls.MultiPriceOption = OutMIDcCls.MultiPriceOption;
                DetailCls.HasSpecialPrice = OutMIDcCls.HasSpecialPrice;
                DetailCls.HasPeriodPrice = OutMIDcCls.HasPeriodPrice;
                DetailCls.HasVolumePrice = OutMIDcCls.HasVolumePrice;
                DetailCls.HasCustFavorPrice = OutMIDcCls.HasCustFavorPrice;
                DetailCls.HasCollectivePrice = OutMIDcCls.HasCollectivePrice;

                DetailCls.MinOrder = OutMIDcCls.MinOrder;
                DetailCls.MinColor = OutMIDcCls.MinColor;
                DetailCls.LiabilityFollowUp = OutMIDcCls.LiabilityFollowUp;
                DetailCls.DyeingMultiple = OutMIDcCls.DyeingMultiple;
                DetailCls.Liability = OutMIDcCls.Liability;
                DetailCls.LiabilityForCustomer = OutMIDcCls.LiabilityForCustomer;
                DetailCls.CustomerAppointed = OutMIDcCls.CustomerAppointed;

                DetailCls.PurchaseWidthOption = OutMIDcCls.PurchaseWidthOption;
                DetailCls.HaveSizeMatrix = OutMIDcCls.HaveSizeMatrix;

                DetailCls.SupplierWidth = OutMIDcCls.SupplierWidth;
                DetailCls.UsableWidth = OutMIDcCls.UsableWidth;
                DetailCls.MarkerWidth = OutMIDcCls.MarkerWidth;
                DetailCls.WeightGmSqm = OutMIDcCls.WeightGmSqm;

                DetailCls.SizeSpec = OutMIDcCls.SizeSpec;

                //add by shulin 2023-03-24 "新建立MIDc Entrance Key MOQ&MCQ設定"   Yan Yao 2023/03/24 10:21 邮件设置默认值
                DetailCls.WastageOnCAC = OutMIDcCls.WastageOnCAC;
                DetailCls.Relaxtion = OutMIDcCls.Relaxtion;
                /************************************************************************************************************/

                //switch (OutMIDcCls.PurchaseWidthOption ?? 0)
                //{
                //    case 0://N.A.
                //        DetailCls.SupplierWidth = null;
                //        DetailCls.UsableWidth = null;
                //        break;
                //    case 1:// SupplierWidth (Edge to Edge)
                //        DetailCls.SupplierWidth = OutMIDcCls.PurchaseWidth;
                //        //DetailCls.UsableWidth = null;
                //        break;
                //    case 2://UsableWidth
                //        //DetailCls.SupplierWidth = null;
                //        DetailCls.UsableWidth = OutMIDcCls.PurchaseWidth;
                //        break;
                //    default:
                //        break;
                //}

                DetailCls.PurchaseWidth = OutMIDcCls.PurchaseWidth;
                DetailCls.SupplierUnit = OutMIDcCls.SupplierUnit;
                DetailCls.PHUnit = OutMIDcCls.PHUnit;

                //Xsj20120418:應王生的要求:(1)當用戶選擇"Edge to Edge",顯示第一個"Purchase Width".(2)當用戶選擇"Usable Width"，顯示第二個"Purchase Width".
                //Xsj20120512
                DoWithPurchaseWidthOption(DetailCls);

                #region no use
                //Xsj20120228:應Janel Lai和王生的討論結果，添加版本控制
                //DetailCls.Version = OutMIDcCls.Version;
                //PH.MIDc.BO.DetailChangeConfirm inDetailChangeConfirm =OutMIDcCls.DetailChangeConfirms .Where(p => p.Version == p.Detail.Version).FirstOrDefault();
                //PH.MIDc.BO.DetailChangeConfirm detailChangeConfirm = DetailCls.DetailChangeConfirms.Where(p => p.Version == p.Detail.Version).FirstOrDefault();
                //if (detailChangeConfirm == null)
                //{
                //    if (inDetailChangeConfirm != null)
                //    {
                //        DetailCls.DetailChangeConfirms.Add(inDetailChangeConfirm);
                //    }
                //}
                //else
                //{
                //    if (inDetailChangeConfirm != null)
                //    {
                //        detailChangeConfirm.ChangeType = inDetailChangeConfirm.ChangeType;
                //        detailChangeConfirm.ChangeUser = inDetailChangeConfirm.ChangeUser;
                //        detailChangeConfirm.ChangeDate = inDetailChangeConfirm.ChangeDate;
                //    }
                //}
                #endregion

                //DetailCls.Save();
                //Xsj20120416:為了解決最出理的網絡不穩定情況而把CommandTimeout設為600.
                this.DataContext.CommandTimeout = 600;
                this.DataContext.SubmitChanges();
                DetailCls.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Edit;

                MIDcDataContext dc = this.DataContext as MIDcDataContext;

                #region Xsj20110817:為完善歷史多單價而註釋掉
                /*
                #region Color Range
                //回寫ColorDetail
                List<PH.MIDc.BO.Detail.ColorDetailCls> ChoseedColorList = OutMIDcCls.ColorList.Where(P => P.IsChosed).ToList();
                //dc.ColorDetails.DeleteAllOnSubmit(DetailCls.ColorDetails);
                //ColorDetailListForm1.BindingSource.Clear();
                //DetailCls.ColorDetails.Clear();
                //this.DataContext.SubmitChanges();

                List<PH.MIDc.BO.ColorDetail> OldColorDetailList = DetailCls.ColorDetails.ToList();
                //刪除
                foreach (PH.MIDc.BO.ColorDetail item1 in OldColorDetailList)
                {
                    List<PH.MIDc.BO.Detail.ColorDetailCls> CurrColorDetailList = ChoseedColorList.Where(P => P.ColorCode == item1.Color).ToList();
                    if (CurrColorDetailList.Count == 0)
                    {
                        //foreach (SubColorDetail item2 in item1.SubColorDetails)
                        //{
                        //    dc.SubColorDetails.DeleteOnSubmit(item2);
                        //}
                        ColorDetailListForm1.BindingSource.Remove(item1);
                        item1.SubColorDetails.Clear();

                        dc.ColorDetails.DeleteOnSubmit(item1);
                        DetailCls.ColorDetails.Remove(item1);
                    }
                }
                this.DataContext.SubmitChanges();

                //添加
                //foreach (PH.MIDc.BO.MIDcWizardCls.ColorDetailCls item in ChoseedColorList)
                //{
                //    ColorDetail NewColorDetail = ColorDetailListForm1.BindingSource.AddNew() as ColorDetail;
                //    NewColorDetail.Detail = DetailCls;
                //    NewColorDetail.CurrentDataContext = this.DataContext;
                //    NewColorDetail.CurrentBindingSource = ColorDetailListForm1.BindingSource;

                //    NewColorDetail.SuppRef = OutMIDcCls.SuppRef;
                //    NewColorDetail.Color = item.ColorCode;
                //    NewColorDetail.Description = item.Desc;

                //    DetailCls.ColorDetails.Add(NewColorDetail);
                //}
                OldColorDetailList = DetailCls.ColorDetails.ToList();
                for (int i = 0; i < ChoseedColorList.Count; i++)
                {
                    List<PH.MIDc.BO.ColorDetail> CurrColorDetailList = OldColorDetailList.Where(P => P.Color == ChoseedColorList[i].ColorCode).ToList();
                    if (CurrColorDetailList.Count == 0)
                    {
                        ColorDetail NewColorDetail = ColorDetailListForm1.BindingSource.AddNew() as ColorDetail;
                        NewColorDetail.Detail = DetailCls;
                        NewColorDetail.CurrentDataContext = this.DataContext;
                        NewColorDetail.CurrentBindingSource = ColorDetailListForm1.BindingSource;

                        NewColorDetail.SuppRef = OutMIDcCls.SuppRef;
                        NewColorDetail.Color = ChoseedColorList[i].ColorCode;
                        NewColorDetail.Description = ChoseedColorList[i].Desc;

                        DetailCls.ColorDetails.Add(NewColorDetail);
                    }
                }
                this.DataContext.SubmitChanges();
                #endregion


                #region Cup

                //回寫CupDetail
                List<PH.MIDc.BO.Detail.CupDetailCls> ChosedCupList = OutMIDcCls.CupList.Where(P => P.IsChosed).ToList();
                cupDetailListForm1.BindingSource.Clear();
                DetailCls.CupDetails.Clear();
                this.DataContext.SubmitChanges();
                foreach (PH.MIDc.BO.Detail.CupDetailCls item in ChosedCupList)
                {
                    CupDetail NewCupDetail = cupDetailListForm1.BindingSource.AddNew() as CupDetail;
                    NewCupDetail.Detail = DetailCls;
                    NewCupDetail.CurrentDataContext = this.DataContext;
                    NewCupDetail.CurrentBindingSource = cupDetailListForm1.BindingSource;

                    NewCupDetail.SuppRef = OutMIDcCls.SuppRef;
                    NewCupDetail.Cup = item.CupCode;
                    NewCupDetail.Description = item.Desc;

                    DetailCls.CupDetails.Add(NewCupDetail);
                }
                this.DataContext.SubmitChanges();
                #endregion

                #region Size

                //回寫SizeDetail
                List<PH.MIDc.BO.Detail.SizeDetailCls> ChosedSizeList = OutMIDcCls.SizeList.Where(P => P.IsChosed).ToList();
                SizeDetailListForm1.BindingSource.Clear();
                DetailCls.SizeDetails.Clear();
                this.DataContext.SubmitChanges();
                foreach (PH.MIDc.BO.Detail.SizeDetailCls item in ChosedSizeList)
                {
                    SizeDetail NewSizeDetail = SizeDetailListForm1.BindingSource.AddNew() as PH.MIDc.BO.SizeDetail;
                    NewSizeDetail.Detail = DetailCls;
                    NewSizeDetail.CurrentDataContext = this.DataContext;
                    NewSizeDetail.CurrentBindingSource = SizeDetailListForm1.BindingSource;

                    NewSizeDetail.SuppRef = OutMIDcCls.SuppRef;
                    NewSizeDetail.Size = item.SizeCode;
                    NewSizeDetail.Description = item.Desc;

                    DetailCls.SizeDetails.Add(NewSizeDetail);
                    this.DataContext.SubmitChanges();
                }
                #endregion
                 
                */
                #endregion

                #region Material Process

                //回寫料品工序
                //delete
                List<PH.MIDc.BO.MaterialProcess> DelMatProceList = DetailCls.MaterialProcesses.ToList();
                matlProcessDetailListForm1.BindingSource.Clear();
                DetailCls.MaterialProcesses.Clear();
                this.DataContext.SubmitChanges();
                for (int i = 0; i < OutMIDcCls.MaterialProcesses.Count; i++)
                {
                    PH.MIDc.BO.MaterialProcess NewMatlProcess = matlProcessDetailListForm1.BindingSource.AddNew() as MaterialProcess;
                    NewMatlProcess.Detail = DetailCls;
                    NewMatlProcess.CurrentDataContext = this.DataContext;
                    NewMatlProcess.CurrentBindingSource = matlProcessDetailListForm1.BindingSource;

                    NewMatlProcess.SuppRef = OutMIDcCls.SuppRef;
                    NewMatlProcess.IsMain = OutMIDcCls.MaterialProcesses[i].IsMain;
                    NewMatlProcess.MatlForProcess = OutMIDcCls.MaterialProcesses[i].MatlForProcess;
                    NewMatlProcess.ItemWidth = OutMIDcCls.MaterialProcesses[i].ItemWidth;

                    DetailCls.MaterialProcesses.Add(NewMatlProcess);
                    this.DataContext.SubmitChanges();
                }
                #endregion

                #region Price Matrix

                //回寫MaterialPrice 
                SavePrice(DetailCls, OutMIDcCls, ComparePriceType.AllPrice);
                this.DataContext.SubmitChanges();


                //外部顯示Standard單價維護
                this.OutComStandardPriceEditor.ShowPriceDetailData(DetailCls, true);
                //外部顯示Special單價維護
                if (DetailCls.HasSpecialPrice ?? false)
                {
                    this.tpSpecialPrice.PageVisible = true;
                    this.OutComSpecialPriceEditor.ShowPriceDetailData(DetailCls, false);
                }
                else
                {
                    this.tpSpecialPrice.PageVisible = false;
                }


                //重新顯示歷史單價顯示面簽
                this.newPriceHistoryForm1.ShowDate();
                #endregion

                this.IsNew = false;
                this.IsEditting = true;

                SetPurchaseWidthVisible();
                //將CompositionDetailListForm1的狀態設為Edit,允許用戶錄入.
                //this.CompositionDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.Edit;

                this.OnClickEdit();

                //SetFormControlState();

                #endregion
                DetailCls.EstInterest = DetailCls.EstInterest;
            }
            catch (Exception ex)
            {
                MessageBox.Show("程序在DetailDetailForm.DoWizardData中產生錯誤!\r\n" + ex.ToString(), "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }



        //Xsj20110719：保存單價
        /// <summary>
        /// 通過對比原本Detail和副本Detail。進行添加和刪除MaterialPriceHeader和MaterialPrice
        /// </summary>
        /// <param name="DetailCls">原本Detail</param>
        /// <param name="OutMIDcCls">副本Detail</param>
        /// <param name="ComparePriceType"></param>
        private void SavePrice(Detail DetailCls, Detail OutMIDcCls, PH.MIDc.BO.ComparePriceType CurrComparePriceType)
        {
            try
            {
                //MaterialPriceHeader
                List<MaterialPriceHeader> compareHeaderList = OutMIDcCls.MaterialPriceHeaders.Where(p => (CurrComparePriceType == ComparePriceType.AllPrice ? 1 == 1 :
                                                            (CurrComparePriceType == ComparePriceType.StandardPrice ? p.PriceType == MaterialPriceType.Standard.ToString() :
                                                            p.PriceType != MaterialPriceType.Standard.ToString()))).ToList();
                foreach (MaterialPriceHeader item in compareHeaderList)
                {
                    #region Xsj20110817:為完善歷史多單價而註釋掉
                    //MaterialPriceHeader currMPH = DetailCls.MaterialPriceHeaders.Where(p => p.SuppRef == item.SuppRef && p.PriceType == item.PriceType 
                    //    && p.Category.Trim() == item.Category.Trim() && p.EffectFromDate.Date == item.EffectFromDate.Date).FirstOrDefault();
                    #endregion
                    #region Xsj20110817:為完善歷史多單價而添加
                    List<MaterialPriceHeader.ColorDetailCls> chosedColorList = item.ColorList.Where(p => p.IsChosed).ToList();
                    item.NewColorDetails.Clear();
                    foreach (MaterialPriceHeader.ColorDetailCls colorDetailItem in chosedColorList)
                    {
                        PH.MIDc.BO.NewColorDetail newColorDetail = new NewColorDetail();
                        newColorDetail.SuppRef = colorDetailItem.SuppRef;
                        newColorDetail.Color = colorDetailItem.ColorCode;
                        newColorDetail.Description = colorDetailItem.Desc;
                        newColorDetail.MaterialPriceHeader = item;
                        newColorDetail.Version = item.Version;
                        item.NewColorDetails.Add(newColorDetail);
                    }
                    List<MaterialPriceHeader.CupDetailCls> chosedCupList = item.CupList.Where(p => p.IsChosed).ToList();
                    item.NewCupDetails.Clear();
                    foreach (MaterialPriceHeader.CupDetailCls cupDetailItem in chosedCupList)
                    {
                        PH.MIDc.BO.NewCupDetail newCupDetail = new NewCupDetail();
                        newCupDetail.SuppRef = cupDetailItem.SuppRef;
                        newCupDetail.Cup = cupDetailItem.CupCode;
                        newCupDetail.Description = cupDetailItem.Desc;
                        newCupDetail.MaterialPriceHeader = item;
                        newCupDetail.Version = item.Version;
                        item.NewCupDetails.Add(newCupDetail);
                    }
                    List<MaterialPriceHeader.SizeDetailCls> chosedSizeList = item.SizeList.Where(p => p.IsChosed).ToList();
                    item.NewSizeDetails.Clear();
                    foreach (MaterialPriceHeader.SizeDetailCls sizeDetailItem in chosedSizeList)
                    {
                        PH.MIDc.BO.NewSizeDetail newSizeDetail = new NewSizeDetail();
                        newSizeDetail.SuppRef = sizeDetailItem.SuppRef;
                        newSizeDetail.Size = sizeDetailItem.SizeCode;
                        newSizeDetail.Description = sizeDetailItem.Desc;
                        newSizeDetail.MaterialPriceHeader = item;
                        newSizeDetail.Version = item.Version;
                        item.NewSizeDetails.Add(newSizeDetail);
                    }
                    MaterialPriceHeader currMPH = DetailCls.MaterialPriceHeaders.Where(p => p.Version == item.Version).FirstOrDefault();
                    #endregion
                    if (currMPH == null)
                    {
                        if ((item.IsMultiPrice ?? false) && (DetailCls.MultiPriceOption == null) && (OutMIDcCls.MultiPriceOption != null))
                        {
                            DetailCls.MultiPriceOption = OutMIDcCls.MultiPriceOption;
                        }
                        MaterialPriceHeader newMPH = new MaterialPriceHeader();
                        newMPH.SuppRef = item.SuppRef;
                        newMPH.PriceType = item.PriceType;
                        newMPH.Category = item.Category;
                        newMPH.IsMultiPrice = item.IsMultiPrice;
                        newMPH.EffectFromDate = item.EffectFromDate.Date;
                        newMPH.EffectEndDate = item.EffectEndDate;
                        newMPH.Detail = DetailCls;
                        newMPH.CurrentDataContext = this.DataContext;
                        #region Xsj20110817:為完善歷史多單價而添加
                        newMPH.Version = item.Version;
                        #endregion
                        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                        #region
                        newMPH.WastageOnCAC = item.WastageOnCAC;
                        newMPH.Relaxtion = item.Relaxtion;
                        newMPH.ValueAdjustAddDyeing = item.ValueAdjustAddDyeing;
                        newMPH.PriceIncrProtect = item.PriceIncrProtect;
                        newMPH.UncertainQuality = item.UncertainQuality;
                        newMPH.OthersBuffer = item.OthersBuffer;
                        #endregion
                        DetailCls.MaterialPriceHeaders.Add(newMPH);
                        #region Xsj20110817:為完善歷史多單價而添加
                        //添加MaterialPriceHeader的MaterialPrice 
                        foreach (MaterialPrice itemPrice in item.MaterialPrices)
                        {
                            if (itemPrice.Price.HasValue && itemPrice.Price.Value > 0)
                            {
                                PH.MIDc.BO.MaterialPrice NewMatlPrice = new MaterialPrice();
                                NewMatlPrice.SuppRef = DetailCls.SuppRef;
                                NewMatlPrice.PriceType = itemPrice.PriceType;
                                NewMatlPrice.Category = itemPrice.PriceType == "Standard" ? "" : itemPrice.Category.Trim();
                                NewMatlPrice.ColorRange = itemPrice.ColorRange;
                                NewMatlPrice.Cup = itemPrice.Cup;
                                NewMatlPrice.Size = itemPrice.Size;
                                NewMatlPrice.EffectFromDate = itemPrice.EffectFromDate.Date;
                                NewMatlPrice.EffectEndDate = itemPrice.EffectEndDate;
                                NewMatlPrice.Price = itemPrice.Price == null ? 0 : (decimal?)itemPrice.Price;
                                NewMatlPrice.Ratio = itemPrice.Ratio == null ? 0 : (int?)itemPrice.Ratio;
                                NewMatlPrice.MaterialPriceHeader = newMPH;
                                NewMatlPrice.CurrentDataContext = this.DataContext;
                                newMPH.MaterialPrices.Add(NewMatlPrice);
                            }
                        }
                        //添加ColorDetail  
                        foreach (NewColorDetail itemColor in item.NewColorDetails)
                        {
                            NewColorDetail newColorDetail = new NewColorDetail();
                            newColorDetail.MaterialPriceHeader = newMPH;
                            newColorDetail.SuppRef = itemColor.SuppRef;
                            newColorDetail.Color = itemColor.Color;
                            newColorDetail.Description = itemColor.Description;
                            newColorDetail.Version = itemColor.Version;
                            newMPH.NewColorDetails.Add(newColorDetail);
                        }
                        //添加CupDetail
                        foreach (NewCupDetail itemCup in item.NewCupDetails)
                        {
                            NewCupDetail newCupDetail = new NewCupDetail();
                            newCupDetail.MaterialPriceHeader = newMPH;
                            newCupDetail.SuppRef = itemCup.SuppRef;
                            newCupDetail.Cup = itemCup.Cup;
                            newCupDetail.Description = itemCup.Description;
                            newCupDetail.Version = itemCup.Version;
                            newMPH.NewCupDetails.Add(newCupDetail);
                        }
                        //添加SizeDetail
                        foreach (NewSizeDetail itemSize in item.NewSizeDetails)
                        {
                            NewSizeDetail newSizeDetail = new NewSizeDetail();
                            newSizeDetail.MaterialPriceHeader = newMPH;
                            newSizeDetail.SuppRef = itemSize.SuppRef;
                            newSizeDetail.Size = itemSize.Size;
                            newSizeDetail.Description = itemSize.Description;
                            newSizeDetail.Version = itemSize.Version;
                            newMPH.NewSizeDetails.Add(newSizeDetail);
                        }
                        #endregion
                    }
                    else
                    {
                        #region
                        currMPH.IsMultiPrice = item.IsMultiPrice;
                        currMPH.EffectFromDate = item.EffectFromDate;
                        currMPH.EffectEndDate = item.EffectEndDate;
                        currMPH.IsMultiPrice = item.IsMultiPrice;
                        //添加或修改MaterialPriceHeader的MaterialPrice 
                        #region Xsj20110817:為完善歷史多單價而添加
                        List<MaterialPrice> comparePriceList = item.MaterialPrices.ToList<PH.MIDc.BO.MaterialPrice>();
                        foreach (MaterialPrice itemPrice in comparePriceList)
                        {
                            MaterialPrice currMP = currMPH.MaterialPrices.Where(p => p.SuppRef == itemPrice.SuppRef && p.PriceType == itemPrice.PriceType && p.Category.Trim() == itemPrice.Category.Trim()
                                                                                    && p.Version == itemPrice.Version && p.ColorRange == itemPrice.ColorRange
                                                                                    && p.Cup == itemPrice.Cup && p.Size == itemPrice.Size).FirstOrDefault();
                            if (currMP == null && itemPrice.Price.HasValue && itemPrice.Price.Value > 0)
                            {
                                PH.MIDc.BO.MaterialPrice NewMatlPrice = new MaterialPrice();
                                NewMatlPrice.SuppRef = DetailCls.SuppRef;
                                NewMatlPrice.PriceType = itemPrice.PriceType;
                                NewMatlPrice.Category = itemPrice.PriceType == "Standard" ? "" : itemPrice.Category.Trim();
                                NewMatlPrice.ColorRange = itemPrice.ColorRange;
                                NewMatlPrice.Cup = itemPrice.Cup;
                                NewMatlPrice.Size = itemPrice.Size;
                                NewMatlPrice.EffectFromDate = itemPrice.EffectFromDate.Date;
                                NewMatlPrice.EffectEndDate = itemPrice.EffectEndDate;
                                NewMatlPrice.Price = itemPrice.Price == null ? 0 : (decimal?)itemPrice.Price;
                                NewMatlPrice.Ratio = itemPrice.Ratio == null ? 0 : (int?)itemPrice.Ratio;
                                NewMatlPrice.MaterialPriceHeader = currMPH;
                                NewMatlPrice.Version = item.Version;
                                NewMatlPrice.CurrentDataContext = this.DataContext;
                                currMPH.MaterialPrices.Add(NewMatlPrice);
                            }
                            else
                            {
                                if (itemPrice.Price.Value == 0)
                                {
                                    currMPH.MaterialPrices.Remove(currMP);
                                }
                                else
                                {
                                    currMP.Price = Convert.ToDecimal(itemPrice.Price ?? 0);
                                    currMP.Ratio = itemPrice.Ratio;
                                    currMP.EffectFromDate = itemPrice.EffectFromDate.Date;
                                    currMP.EffectEndDate = itemPrice.EffectEndDate;
                                }
                            }
                        }
                        #endregion
                        //刪除MaterialPriceHeader的MaterialPrice 

                        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
                        #region
                        currMPH.WastageOnCAC = item.WastageOnCAC;
                        currMPH.Relaxtion = item.Relaxtion;
                        currMPH.ValueAdjustAddDyeing = item.ValueAdjustAddDyeing;
                        currMPH.PriceIncrProtect = item.PriceIncrProtect;
                        currMPH.UncertainQuality = item.UncertainQuality;
                        currMPH.OthersBuffer = item.OthersBuffer;
                        #endregion

                        List<MaterialPrice> waitForDelList = new List<MaterialPrice>();
                        comparePriceList = currMPH.MaterialPrices.ToList();
                        foreach (MaterialPrice itemPrice in comparePriceList)
                        {
                            MaterialPrice currMP = item.MaterialPrices.Where(p => p.SuppRef == itemPrice.SuppRef && p.PriceType == itemPrice.PriceType && p.Category.Trim() == itemPrice.Category.Trim()
                                && p.Version == itemPrice.Version && p.ColorRange == itemPrice.ColorRange
                                && p.Size == itemPrice.Size && p.Cup == itemPrice.Cup).FirstOrDefault();
                            if (currMP == null)
                            {
                                waitForDelList.Add(itemPrice);
                            }
                            else
                            {
                                currMP.Price = itemPrice.Price;
                            }
                        }
                        for (int i = waitForDelList.Count - 1; i >= 0; i--)
                        {
                            currMPH.MaterialPrices.Remove(waitForDelList[i]);
                        }


                        #region Color Range
                        //ColorDetail
                        List<PH.MIDc.BO.NewColorDetail> ChoseedColorList = item.NewColorDetails.ToList();
                        List<PH.MIDc.BO.NewColorDetail> OldColorDetailList = currMPH.NewColorDetails.ToList();
                        //刪除
                        foreach (PH.MIDc.BO.NewColorDetail itemColor in OldColorDetailList)
                        {
                            List<PH.MIDc.BO.NewColorDetail> CurrColorDetailList = ChoseedColorList.Where(p => p.SuppRef == itemColor.SuppRef && p.Color == itemColor.Color && p.Version == itemColor.Version).ToList();
                            if (CurrColorDetailList.Count == 0)
                            {
                                #region Xsj20110817:為完善歷史多單價而註釋掉
                                //Xsj20110819:如下四句先註釋掉，相應邏輯日期更正。
                                //ColorDetailListForm1.BindingSource.Remove(item1);
                                //item1.SubColorDetails.Clear();
                                //dc.ColorDetails.DeleteOnSubmit(item1);
                                //DetailCls.ColorDetails.Remove(item1);
                                #endregion

                                currMPH.NewColorDetails.Remove(itemColor);
                            }
                        }

                        //添加 
                        OldColorDetailList = currMPH.NewColorDetails.ToList();
                        foreach (PH.MIDc.BO.NewColorDetail itemColor in ChoseedColorList)
                        {
                            List<PH.MIDc.BO.NewColorDetail> CurrColorDetailList = OldColorDetailList.Where(p => p.SuppRef == itemColor.SuppRef && p.Color == itemColor.Color && p.Version == itemColor.Version).ToList();
                            if (CurrColorDetailList.Count == 0)
                            {
                                #region Xsj20110817:為完善歷史多單價而註釋掉
                                ////Xsj20110819:如下四句先註釋掉，相應邏輯日期更正。
                                //ColorDetail NewColorDetail = ColorDetailListForm1.BindingSource.AddNew() as ColorDetail;
                                //NewColorDetail.Detail = DetailCls;
                                //NewColorDetail.CurrentDataContext = this.DataContext;
                                //NewColorDetail.CurrentBindingSource = ColorDetailListForm1.BindingSource;
                                //NewColorDetail.SuppRef = OutMIDcCls.SuppRef;
                                //NewColorDetail.Color = ChoseedColorList[i].ColorCode;
                                //NewColorDetail.Description = ChoseedColorList[i].Desc;
                                //DetailCls.ColorDetails.Add(NewColorDetail);
                                #endregion

                                NewColorDetail newColorDetail = new NewColorDetail();
                                newColorDetail.MaterialPriceHeader = currMPH;
                                newColorDetail.SuppRef = itemColor.SuppRef;
                                newColorDetail.Color = itemColor.Color;
                                newColorDetail.Description = itemColor.Description;
                                newColorDetail.Version = itemColor.Version;
                                currMPH.NewColorDetails.Add(newColorDetail);
                            }
                        }
                        //CupDetail
                        List<PH.MIDc.BO.NewCupDetail> ChoseedCupList = item.NewCupDetails.ToList();
                        List<PH.MIDc.BO.NewCupDetail> OldCupDetailList = currMPH.NewCupDetails.ToList();
                        //刪除
                        foreach (PH.MIDc.BO.NewCupDetail itemCup in OldCupDetailList)
                        {
                            List<PH.MIDc.BO.NewCupDetail> currChoseedCupList = ChoseedCupList.Where(p => p.SuppRef == itemCup.SuppRef && p.Cup == itemCup.Cup && p.Version == itemCup.Version).ToList();
                            if (currChoseedCupList.Count == 0)
                            {
                                currMPH.NewCupDetails.Remove(itemCup);
                            }
                        }

                        //添加 
                        OldCupDetailList = currMPH.NewCupDetails.ToList();
                        foreach (PH.MIDc.BO.NewCupDetail itemCup in ChoseedCupList)
                        {
                            List<PH.MIDc.BO.NewCupDetail> currChoseedCupList = OldCupDetailList.Where(p => p.SuppRef == itemCup.SuppRef && p.Cup == itemCup.Cup && p.Version == itemCup.Version).ToList();
                            if (currChoseedCupList.Count == 0)
                            {

                                NewCupDetail newCupDetail = new NewCupDetail();
                                newCupDetail.MaterialPriceHeader = currMPH;
                                newCupDetail.SuppRef = itemCup.SuppRef;
                                newCupDetail.Cup = itemCup.Cup;
                                newCupDetail.Description = itemCup.Description;
                                newCupDetail.Version = itemCup.Version;
                                currMPH.NewCupDetails.Add(newCupDetail);
                            }
                        }

                        //SizeDetail
                        List<PH.MIDc.BO.NewSizeDetail> ChoseedSizeList = item.NewSizeDetails.ToList();
                        List<PH.MIDc.BO.NewSizeDetail> OldSizeDetailList = currMPH.NewSizeDetails.ToList();
                        //刪除
                        foreach (PH.MIDc.BO.NewSizeDetail itemSize in OldSizeDetailList)
                        {
                            List<PH.MIDc.BO.NewSizeDetail> currChoseedSizeList = ChoseedSizeList.Where(p => p.SuppRef == itemSize.SuppRef && p.Size == itemSize.Size && p.Version == itemSize.Version).ToList();
                            if (currChoseedSizeList.Count == 0)
                            {
                                currMPH.NewSizeDetails.Remove(itemSize);
                            }
                        }

                        //添加 
                        OldSizeDetailList = currMPH.NewSizeDetails.ToList();
                        foreach (PH.MIDc.BO.NewSizeDetail itemSize in ChoseedSizeList)
                        {
                            List<PH.MIDc.BO.NewSizeDetail> currChoseedSizeList = OldSizeDetailList.Where(p => p.SuppRef == itemSize.SuppRef && p.Size == itemSize.Size && p.Version == itemSize.Version).ToList();
                            if (currChoseedSizeList.Count == 0)
                            {

                                NewSizeDetail NewSizeDetail = new NewSizeDetail();
                                NewSizeDetail.MaterialPriceHeader = currMPH;
                                NewSizeDetail.SuppRef = itemSize.SuppRef;
                                NewSizeDetail.Size = itemSize.Size;
                                NewSizeDetail.Description = itemSize.Description;
                                NewSizeDetail.Version = itemSize.Version;
                                currMPH.NewSizeDetails.Add(NewSizeDetail);
                            }
                        }
                        #endregion
                        #endregion
                    }
                }
                List<MaterialPriceHeader> waitForDelMPHList = new List<MaterialPriceHeader>();
                compareHeaderList = DetailCls.MaterialPriceHeaders.Where(p => (CurrComparePriceType == ComparePriceType.AllPrice ? 1 == 1 :
                                                            (CurrComparePriceType == ComparePriceType.StandardPrice ? p.PriceType == MaterialPriceType.Standard.ToString() :
                                                            p.PriceType != MaterialPriceType.Standard.ToString()))).ToList();
                foreach (MaterialPriceHeader item in compareHeaderList)
                {
                    #region Xsj20110817:為完善歷史多單價而註釋掉
                    //MaterialPriceHeader currMPH = OutMIDcCls.MaterialPriceHeaders.Where(p => p.SuppRef == item.SuppRef && p.PriceType == item.PriceType 
                    //    && p.Category.Trim() == item.Category.Trim() && p.EffectFromDate.Date == item.EffectFromDate.Date).FirstOrDefault();
                    #endregion
                    #region Xsj20110817:為完善歷史多單價而添加
                    MaterialPriceHeader currMPH = OutMIDcCls.MaterialPriceHeaders.Where(p => p.Version == item.Version).FirstOrDefault();
                    #endregion
                    if (currMPH == null)
                    {
                        waitForDelMPHList.Add(item);
                    }
                }
                for (int i = waitForDelMPHList.Count - 1; i >= 0; i--)
                {
                    DetailCls.MaterialPriceHeaders.Remove(waitForDelMPHList[i]);
                }


                #region Xsj20110817:為完善歷史多單價而註釋掉
                //MaterialPrice  
                /*
                List<MaterialPrice> comparePriceList = OutMIDcCls.MaterialPrices.Where(p => (CurrComparePriceType == ComparePriceType.AllPrice ? 1 == 1 :
                                                            (CurrComparePriceType == ComparePriceType.StandardPrice ? p.PriceType == MaterialPriceType.Standard.ToString() :
                                                            p.PriceType != MaterialPriceType.Standard.ToString()))).ToList<PH.MIDc.BO.MaterialPrice>();
                foreach (MaterialPrice item in comparePriceList)
                {
                    MaterialPrice currMP = DetailCls.MaterialPrices.Where(p => p.SuppRef == item.SuppRef && p.PriceType == item.PriceType && p.Category.Trim() == item.Category.Trim()
                                                                            && p.EffectFromDate.Date == item.EffectFromDate.Date && p.ColorRange == item.ColorRange
                                                                            && p.Size == item.Size && p.Cup == item.Cup).FirstOrDefault();
                    if (currMP == null && item.Price.HasValue && item.Price.Value > 0)
                    {
                        PH.MIDc.BO.MaterialPrice NewMatlPrice = new MaterialPrice();
                        NewMatlPrice.SuppRef = DetailCls.SuppRef;
                        NewMatlPrice.PriceType = item.PriceType;
                        NewMatlPrice.Category = item.PriceType == "Standard" ? "" : item.Category.Trim();
                        NewMatlPrice.ColorRange = item.ColorRange;
                        NewMatlPrice.Cup = item.Cup;
                        NewMatlPrice.Size = item.Size;
                        NewMatlPrice.EffectFromDate = item.EffectFromDate.Date ;
                        NewMatlPrice.EffectEndDate = item.EffectEndDate;
                        NewMatlPrice.Price = item.Price == null ? 0 : (decimal?)item.Price;
                        NewMatlPrice.Ratio = item.Ratio == null ? 0 : (int?)item.Ratio;
                        NewMatlPrice.Detail = DetailCls;
                        NewMatlPrice.CurrentDataContext = this.DataContext;
                        DetailCls.MaterialPrices.Add(NewMatlPrice);
                    }
                    else
                    {
                        currMP.Price = Convert.ToDecimal(item.Price ?? 0);
                        currMP.Ratio = item.Ratio;
                        currMP.EffectEndDate = item.EffectEndDate;
                    }
                }

                List<MaterialPrice> waitForDelList = new List<MaterialPrice>();
                comparePriceList = DetailCls.MaterialPrices.Where(p => (CurrComparePriceType == ComparePriceType.AllPrice ? 1 == 1 :
                                                            (CurrComparePriceType == ComparePriceType.StandardPrice ? p.PriceType == MaterialPriceType.Standard.ToString() :
                                                            p.PriceType != MaterialPriceType.Standard.ToString()))).ToList();
                foreach (MaterialPrice item in comparePriceList)
                {
                    MaterialPrice currMW = OutMIDcCls.MaterialPrices.Where(p => p.SuppRef == item.SuppRef && p.PriceType == item.PriceType && p.Category.Trim() == item.Category.Trim() && p.EffectFromDate.Date == item.EffectFromDate.Date && p.ColorRange == item.ColorRange
                        && p.Size == item.Size && p.Cup == item.Cup).FirstOrDefault();
                    if (currMW == null)
                    {
                        waitForDelList.Add(item);
                    }
                    else
                    {
                        currMW.Price = item.Price;
                    }
                }
                for (int i = waitForDelList.Count - 1; i >= 0; i--)
                {
                    DetailCls.MaterialPrices.Remove(waitForDelList[i]);

                }
                */
                #endregion
            }
            catch (Exception ex)
            {
                MessageBox.Show("程序在[DetailDetailForm_RemoveCurrUsedPrice]中產生錯誤！\r\n" + ex.ToString());
            }
        }

        //Xsj:彈出編輯窗線程
        void RunInThread()
        {
            AsyncDelegate delInstatnce = new AsyncDelegate(ShowWizard);
            this.BeginInvoke(delInstatnce);
        }
        #endregion

        //Xsj101103:顯示新增/修改嚮導
        private void barBtn_Wizard_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Detail currDetail = this._midcDetail; // this.BindingSource.Current as Detail;
            if (currDetail.BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read)
            //if (this.IsNew || this.IsEditting)
            {
                ShowWizard();
            }
        }

        #endregion

        #region Value Change

        private void btnOldPrice_Click(object sender, EventArgs e)
        {
            this.RatioPriceListForm1.BindingSource.DataSource = this._midcDetail.RatioPrices;
            this.RatioPriceListForm1.Visible = !this.RatioPriceListForm1.Visible;
            if (this.RatioPriceListForm1.Visible)
                btnOldPrice.Text = "Hide old Price";
            else
                btnOldPrice.Text = "Show old Price";

        }

        private void radioGroup1_EditValueChanged(object sender, EventArgs e)
        {
            sizeMatrixLabel.Visible = cbSizeMatrix.Visible = radioGroup1.SelectedIndex == 0;
        }

        private void radGroupIsPurchaseItem_EditValueChanged(object sender, EventArgs e)
        {
            matlProcessDetailListForm1.Visible = label51.Visible = buttonEdit1.Visible = radGroupIsPurchaseItem.SelectedIndex == 1;
        }

        #endregion

        #region Xsj20110525:加實現添加歷史多單價而添加
        //判斷資料的加載日期和保存日期是否一致
        private bool CheckSysTimeChange()
        {
            return this._loadMsgDateTime.Date == this._saveMsgDateTime.Date;
        }
        #endregion

        //--------------------------------Start------------------------------------
        //Xsj20150914:add to choose hscode .
        private void hsCodeButtonEdit_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            Detail dt = this.BindingSource.Current as Detail;
            if (dt == null) return;

            HSCodeSelectForm hsCodeSelectFrm = new HSCodeSelectForm("China", "");
            hsCodeSelectFrm.CurrMIDCHSCode = dt.HsCode;
            if (hsCodeSelectFrm.ShowDialog() == DialogResult.OK)
            {
                PH.MIDc.BO.CustomMaterial bo = hsCodeSelectFrm.CurrCustMatrlBO;
                if (bo != null)
                {
                    dt.HsCode = bo.MidcHSCode;
                }
            }
        }

        private void btnHSCodeBD_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            Detail dt = this.BindingSource.Current as Detail;
            if (dt == null) return;

            HSCodeSelectForm hsCodeSelectFrm = new HSCodeSelectForm("BD", dt.HsCode);
            hsCodeSelectFrm.CurrMIDCHSCode = dt.HSCodeBD;
            if (hsCodeSelectFrm.ShowDialog() == DialogResult.OK)
            {
                PH.MIDc.BO.CustomMaterial bo = hsCodeSelectFrm.CurrCustMatrlBO;
                if (bo != null)
                {
                    dt.HSCodeBD = bo.MidcHSCode;
                }
            }
        }

        private void btnDeclare_Click(object sender, EventArgs e)
        {
            Detail detail = this.BindingSource.Current as Detail;
            DeclareForm frmDeclare = new DeclareForm((MIDcDataContext)this.DataContext, detail, this.editSuppRef.Text, this.hsCodeButtonEdit.Text);
            if (frmDeclare.ShowDialog() == DialogResult.OK)
            {
                this.gridDeclare.DataSource = ((MIDcDataContext)this.DataContext).CustomMaterialDeclares
                    .Where(p => p.SuppRef == this._midcDetail.SuppRef && p.MidcHSCode == this._midcDetail.HsCode)
                    .OrderBy(p => p.SortId);
            }
        }


        //--------------------------------End------------------------------------ 


        //void InitMaterialWeight()
        //{
        //    PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass p = new PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass();
        //    p.BOType = typeof(MaterialWeight);
        //    //p.CurrencyManager = (this.objListGridView.DataSource as BindingSource).CurrencyManager;
        //    p.Header1_Label = "Size";
        //    p.Header2_Label = "Total";  //设为Null时不显示横向的SubTotal
        //    p.LFields = new string[] { "Cup" };
        //    p.LLabels = new string[] { "Cup" };
        //    p.RFields = new string[] { "Size" };

        //    p.RSubTotalLabels = new string[] { "Weight" };
        //    p.RValueField = "Weight";
        //    pivotTableForm1.PivotParam = p;

        //    Detail detail = this.BindingSource.Current as Detail;
        //    PrepareMaterialWeightData(DataContext as MIDcDataContext, detail);
        //    if (detail != null)
        //    {
        //        p.SourceList = detail.MaterialWeights;
        //    }

        //    pivotTableForm1.DataContext = DataContext;
        //    pivotTableForm1.CreatePivotGrid();

        //    pivotTableForm1.PivotGrid.SetColumnVisible("SubTotal", false);
        //    pivotTableForm1.PivotGrid.gridControl2.Visible = false; //隐藏横向 SubTotal

        //}



        //public void PrepareMaterialWeightData(MIDcDataContext ADB, Detail ADetail)
        //{
        //    if (ADetail == null) return;

        //    if (ADetail.MaterialWeights.Count() == 0)
        //    {
        //        MaterialPriceHeader MatlPriceHeader = ADetail.MaterialPriceHeaders.OrderByDescending(p => p.EffectFromDate).FirstOrDefault();
        //        foreach (var newSizeDetail in MatlPriceHeader.NewSizeDetails.OrderBy(p => p.Size))
        //        {

        //            if (MatlPriceHeader.NewCupDetails.Count() == 0)
        //            {
        //                MaterialWeight obj = new MaterialWeight();
        //                obj.SuppRef = ADetail.SuppRef;
        //                obj.Size = newSizeDetail.Size;
        //                ADetail.MaterialWeights.Add(obj);
        //            }
        //            else
        //            {
        //                foreach (var newCupDetail in MatlPriceHeader.NewCupDetails.OrderBy(p => p.Cup))
        //                {
        //                    MaterialWeight obj = new MaterialWeight();
        //                    obj.SuppRef = ADetail.SuppRef;
        //                    obj.Size = newSizeDetail.Size;
        //                    obj.Cup = newCupDetail.Cup;

        //                    ADetail.MaterialWeights.Add(obj);
        //                }
        //            }
        //        }
        //        //_db.SubmitChanges();
        //    }

        //    //this.BindingSource.DataSource = ADetail.MaterialWeights;

        //}


    }
}
