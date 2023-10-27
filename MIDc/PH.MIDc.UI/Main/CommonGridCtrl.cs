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
    public partial class CommonGridCtrl : UserControl
    {
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit RepItemSpinEdit = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();

        private int FixColorColWidth = 100;
        private int FixCupColWidth = 60;
        private int FixSizeColWidth = 60;
        private int _ratioColWidth = 30;

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


        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
        #region
        /// <summary>
        /// Xsj:是否顯示SpecialPrice的All-In-Price計算參數輸入模框
        /// </summary>
        public bool IsShowSpecialPriceAllInPriceProperty
        {
            set
            {
                if (value)
                {
                    this.xtraTabCtrl_PriceZone.ShowTabHeader = DevExpress.Utils.DefaultBoolean.True;
                    this.xtraTabPage_AllInPriceProperties.PageVisible = true;
                }
                else
                { 
                    this.xtraTabCtrl_PriceZone.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
                    this.xtraTabPage_AllInPriceProperties.PageVisible = false;
                }
            }
        } 
        #endregion



        public void SetCurrencyVisible(bool visible)
        {
            this.lblCurrencyCaption.Visible = this.Currencylabel.Visible = visible;
        }



        private DataTable DataSourceDt_Standard = new DataTable();
        #region Xsj20110817:为完善历史多单价而注释掉
        //private List<Detail.CupDetailCls> _ChosedCupDetail;
        //private List<Detail.ColorDetailCls> _CurrChosedColorDetail;
        //private List<Detail.SizeDetailCls> _CurrChosedSizeDetail;
        #endregion
        #region Xsj20110817:为完善历史多单价而添加
        private List<PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls> _CurrChosedColorDetail;
        private List<PH.MIDc.BO.MaterialPriceHeader.CupDetailCls> _ChosedCupDetail;
        private List<PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls> _CurrChosedSizeDetail;
        #endregion

        private string _currPriceType;
        private string _currCategory;
        private Detail _currMIDcSource;
        private MultPriceType _MultPriceType;

        private string _midcDimensionIndex;

        private DataTable _CurrDataSourceDt;

        public MaterialPriceHeader CurrMaterialPriceHeader;

        private List<MaterialPrice> _currPriceList;



        public CommonGridCtrl()
        {
            InitializeComponent();
            this.gViewPrice.OptionsView.ColumnAutoWidth = false;
            RepItemSpinEdit.AutoHeight = false;
            RepItemSpinEdit.Buttons.Clear();
            this.RepItemSpinEdit.EditMask = MaterialPrceFormat.PriceFormatStr;
        }
        //DataTable 
        private bool _isFirst = true;
        public void CreatPriceDt(MultPriceType MultPriceType, string PriceTypeOption, DataTable DataSourceDt, Detail MIDcSource, String Category)
        {
            #region Xsj20110817:为完善历史多单价而注释掉
            //_CurrChosedColorDetail = MIDcSource.ColorList.Where(P => P.IsChosed).ToList();
            //_ChosedCupDetail = MIDcSource.CupList.Where(P => P.IsChosed).ToList();
            //_CurrChosedSizeDetail = MIDcSource.SizeList.Where(P => P.IsChosed).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            _CurrChosedColorDetail = this.CurrMaterialPriceHeader.ColorList.Where(P => P.IsChosed).ToList();
            _ChosedCupDetail = this.CurrMaterialPriceHeader.CupList.Where(P => P.IsChosed).ToList();
            _CurrChosedSizeDetail = this.CurrMaterialPriceHeader.SizeList.Where(P => P.IsChosed).ToList();
            #endregion

            _MultPriceType = MultPriceType;
            _CurrDataSourceDt = DataSourceDt;
            _midcDimensionIndex = MIDcSource.Dimension;
            _currPriceType = PriceTypeOption;
            _currCategory = Category;
            _currMIDcSource = MIDcSource;
            _CurrDataSourceDt = DataSourceDt;

            CreatePriceDtAtion(MultPriceType, PriceTypeOption, MIDcSource, Category);
            _isFirst = false;

            //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
            #region 
            this.bindingSourcePriceHeader.DataSource = this.CurrMaterialPriceHeader;
            if (this.CurrMaterialPriceHeader == null || this.CurrMaterialPriceHeader.PriceType == "Standard")
            {
                this.xtraTabCtrl_PriceZone.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
                this.xtraTabPage_AllInPriceProperties.PageVisible = false;
            }
            
            #endregion

 
        }

        private void CreatePriceDtAtion(MultPriceType MultPriceType, string PriceTypeOption, Detail MIDcSource, String Category)
        {
            try
            {
                #region
                //清空原來的內容
                this.gCtrlPrice.DataSource = null;
                this.gViewPrice.Columns.Clear();

                DataTable DataSourceDt = new DataTable();
                _CurrDataSourceDt = DataSourceDt;

                #region Xsj20110817:为完善历史多单价而注释掉
                //_currPriceList = MIDcSource.MaterialPrices.Where(P => P.PriceType == this._currPriceType && P.Category == this._currCategory 
                //    && P.EffectFromDate.Date == this.CurrMaterialPriceHeader.EffectFromDate.Date).ToList();
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                _currPriceList = this.CurrMaterialPriceHeader.MaterialPrices.ToList();
                #endregion
                this.dateEdit_EffectStartDate.EditValue = this.CurrMaterialPriceHeader.EffectFromDate.Date;
                if (this.CurrMaterialPriceHeader.EffectEndDate.HasValue)
                {
                    this.dateEdit_EffectEndDate.EditValue = this.CurrMaterialPriceHeader.EffectEndDate.Value;
                }


                if (MultPriceType == MultPriceType.ColorRangeSizeCup)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Cup", typeof(string));
                    #region

                    //List<string> SizeList = this._CurrChosedSizeDetail.OrderBy(P => P.Desc).Select(P => P.Desc).Distinct().ToList();
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //List<string> SizeList = this._CurrChosedSizeDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    List<string> SizeList = this._CurrChosedSizeDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion


                    foreach (string item in SizeList)
                    {
                        DataSourceDt.Columns.Add(item, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(item.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(item.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入Color/Cup数据源  
                    //List<string> ColorList = this._CurrChosedColorDetail.OrderBy(P => P.ColorCode).Select(P => P.Desc).Distinct().ToList();
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //List<string> ColorList = this._CurrChosedColorDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    List<string> ColorList = this._CurrChosedColorDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion

                    //List<string> CupList = this._ChosedCupDetail.OrderBy(P => P.CupCode).Select(P => P.Desc).Distinct().ToList();
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //List<string> CupList = this._ChosedCupDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    List<string> CupList = this._ChosedCupDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion

                    foreach (string itemColor in ColorList)
                    {
                        if (CupList.Count > 0)
                        {
                            foreach (string itemCup in CupList)
                            {
                                DataRow Dr = DataSourceDt.NewRow();
                                Dr["Color Range"] = itemColor;
                                Dr["Cup"] = itemCup;
                                DataSourceDt.Rows.Add(Dr);
                            }
                        }
                        else
                        {
                            DataRow Dr = DataSourceDt.NewRow();
                            Dr["Color Range"] = itemColor;
                            Dr["Cup"] = "ALL";
                            DataSourceDt.Rows.Add(Dr);
                        }
                    }
                    //寫入單價  
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        for (int j = 0; j < _currPriceList.Count; j++)
                        {
                            if ((_currPriceList[j].ColorRange == DataSourceDt.Rows[i]["Color Range"].ToString() && _currPriceList[j].Cup == DataSourceDt.Rows[i]["Cup"].ToString())
                                ||
                                _currPriceList[j].ColorRange == DataSourceDt.Rows[i]["Color Range"].ToString() && _currPriceList[j].Cup == DataSourceDt.Rows[i]["Cup"].ToString())
                            {
                                if (_currPriceList[j].Price > 0
                                    && DataSourceDt.Columns.Contains(_currPriceList[j].Size + "_Price")
                                    && DataSourceDt.Columns.Contains(_currPriceList[j].Size + "_Ratio")
                                    )
                                {
                                    DataSourceDt.Rows[i][_currPriceList[j].Size + "_Price"] = _currPriceList[j].Price;
                                    DataSourceDt.Rows[i][_currPriceList[j].Size + "_Ratio"] = _currPriceList[j].Ratio;
                                }
                            }
                        }
                    }
                    #endregion
                    MakeColorCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    MakeColorCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                }
                else if (MultPriceType == MultPriceType.ColorOnly)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Price", typeof(decimal));
                    DataSourceDt.Columns.Add("Ratio", typeof(int));
                    //写入数据源 
                    foreach (var item in this._CurrChosedColorDetail)
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //Dr["Color Range"] = item.ColorCode;
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        Dr["Color Range"] = item.ColorCode;
                        #endregion

                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        string valPrice = null;
                        string valRatio = null;
                        decimal Price;
                        int Ratio = 0;
                        var VarList = _currPriceList.Where(P => P.ColorRange == DataSourceDt.Rows[i]["Color Range"].ToString()).Select(P => new { P.Price, P.Ratio });
                        if (VarList.Count() > 0)
                        {
                            valPrice = VarList.First().Price.ToString();
                            valRatio = VarList.First().Ratio.ToString();
                            if (decimal.TryParse(valPrice, out Price))
                            {
                                DataSourceDt.Rows[i]["Price"] = Price;
                            }
                            if (int.TryParse(valRatio, out Ratio))
                            {
                                DataSourceDt.Rows[i]["Ratio"] = valRatio;
                            }
                        }
                    }
                    MakeColorPriceGridView(gViewPrice, DataSourceDt);
                    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                }
                else if (MultPriceType == MultPriceType.CupSize)
                {
                    #region
                    DataSourceDt.Columns.Add("Cup", typeof(string));

                    //写入Size
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //List<string> SizeList = this._CurrChosedSizeDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    List<string> SizeList = this._CurrChosedSizeDetail.Select(P => P.Desc).Distinct().ToList();
                    #endregion
                    foreach (string item in SizeList)
                    {
                        DataSourceDt.Columns.Add(item, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(item.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(item.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入Cup
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //var cupList = this._ChosedCupDetail.Select(P => P.CupCode).Distinct().ToList();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    var cupList = this._ChosedCupDetail.Select(P => P.CupCode).Distinct().ToList();
                    #endregion

                    if (cupList.Count > 0)
                    {
                        foreach (string item in cupList)
                        {
                            DataRow Dr = DataSourceDt.NewRow();
                            Dr["Cup"] = item;
                            DataSourceDt.Rows.Add(Dr);
                        }
                    }
                    else
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Cup"] = "ALL";
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        for (int j = 1; j < DataSourceDt.Columns.Count; j++)
                        {
                            decimal Price;
                            MaterialPrice val = null;

                            List<MaterialPrice> VarList = _currPriceList.Where(P => P.Cup == DataSourceDt.Rows[i]["Cup"].ToString() && P.Size.Trim() == DataSourceDt.Columns[j].Caption.Trim()).ToList();
                            if (VarList.Count() > 0)
                            {
                                val = VarList.First();
                                if (decimal.TryParse(val.Price.ToString(), out Price)
                                && DataSourceDt.Columns.Contains(val.Size + "_Price")
                                && DataSourceDt.Columns.Contains(val.Size + "_Ratio"))
                                {
                                    DataSourceDt.Rows[i][val.Size + "_Price"] = Price;
                                    if (val.Ratio != null)
                                    {
                                        DataSourceDt.Rows[i][val.Size + "_Ratio"] = val.Ratio;
                                    }
                                }
                            }
                        }
                    }
                    MakeCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    MakeCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                }
                #endregion
            }
            catch (Exception ex)
            {
                MessageBox.Show("程序在CreatePriceDt_Standard中産生錯誤,構建Standard單價錄入表格失敗!\r\n" + ex.ToString(), "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        //Xsj101130:構建ColorCupSize價格模式的GridView
        private void MakeColorCupSizePriceGridView(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView CurrGView, DataTable DataSourceDt)
        {
            #region
            //構建gridview的樣式
            CurrGView.Bands.Clear();
            DevExpress.XtraGrid.Views.BandedGrid.GridBand BasicInfoBand = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            BasicInfoBand.Caption = "";
            BasicInfoBand.AppearanceHeader.Options.UseTextOptions = true;
            BasicInfoBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnColor.Caption = "Color Range";
            NewBColumnColor.FieldName = "Color Range";
            NewBColumnColor.Visible = true;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnCup.Caption = "Cup";
            NewBColumnCup.FieldName = "Cup";
            NewBColumnCup.Visible = true;
            CurrGView.Columns.Add(NewBColumnColor);
            CurrGView.Columns.Add(NewBColumnCup);
            BasicInfoBand.Columns.Add(NewBColumnColor);
            BasicInfoBand.Columns.Add(NewBColumnCup);
            CurrGView.Bands.Add(BasicInfoBand);
            //添加GridBand 
            for (int i = 2; i < DataSourceDt.Columns.Count; i = i + 3)
            {
                DevExpress.XtraGrid.Views.BandedGrid.GridBand NewBand = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
                NewBand.Name = DataSourceDt.Columns[i].Caption;
                NewBand.AppearanceHeader.Options.UseTextOptions = true;
                NewBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                CurrGView.Bands.Add(NewBand);
            }
            //添加BandedGridColumn
            for (int i = 1; i < CurrGView.Bands.Count; i++)
            {
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnPrice.Caption = "Price";

                NewBColumnPrice.ColumnEdit = this.RepItemSpinEdit;
                NewBColumnPrice.DisplayFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
                NewBColumnPrice.DisplayFormat.FormatType = MaterialPrceFormat.FormatType;

                NewBColumnPrice.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Price";
                NewBColumnPrice.Visible = true;
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnRatio.Caption = "R";
                NewBColumnRatio.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Ratio";
                NewBColumnRatio.Visible = true;
                CurrGView.Columns.Add(NewBColumnPrice);
                CurrGView.Columns.Add(NewBColumnRatio);
                CurrGView.Bands[i].Columns.Add(NewBColumnPrice);
                CurrGView.Bands[i].Columns.Add(NewBColumnRatio);
            }
            #endregion
        }
        private void MakeColorCupSizePriceColumnStyle(DevExpress.XtraGrid.GridControl CurrGridCtrl, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView CurrGView, DataTable DataSourceDt)
        {
            DataSourceDt_Standard = DataSourceDt;
            CurrGridCtrl.DataSource = DataSourceDt_Standard;
            CurrGView.OptionsView.AllowCellMerge = true;
            DevExpress.XtraGrid.Columns.GridColumn gridCol;
            for (int i = 0; i < CurrGView.Columns.Count; i++)
            {
                gridCol = CurrGView.Columns[i];
                if (i < 2)
                {
                    CurrGView.Columns[i].OptionsColumn.AllowEdit = false;
                    if (i == 1)
                    {
                        gridCol.Width = FixCupColWidth;
                        gridCol.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
                        gridCol.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
                        gridCol.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
                        gridCol.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
                        if (this._ChosedCupDetail.Count == 0 || _midcDimensionIndex == "3") gridCol.Visible = false;

                    }
                    else
                    {
                        gridCol.Width = this.FixColorColWidth;
                        gridCol.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
                        gridCol.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
                        gridCol.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
                    }
                    continue;
                }
                gridCol.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
                if (gridCol.FieldName.IndexOf("Ratio") == -1)
                {
                    gridCol.Width = FixSizeColWidth;
                }
                else
                {
                    gridCol.Width = this._ratioColWidth;
                }

                //默認隱藏Ratio列
                if (gridCol.Name.IndexOf("_Ratio") != -1 && this.sBtnShowHideRatio.Text == "Show Ratio")
                {
                    gridCol.Visible = false;
                }
            }
        }

        //Xsj101130:構建Color價格模式的GridView
        private void MakeColorPriceGridView(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView CurrGView, DataTable DataSourceDt)
        {
            #region
            //構建gridview的樣式
            CurrGView.Bands.Clear();
            DevExpress.XtraGrid.Views.BandedGrid.GridBand BasicInfoBand = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            BasicInfoBand.Caption = "";
            BasicInfoBand.AppearanceHeader.Options.UseTextOptions = true;
            BasicInfoBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnColor.Caption = "Color Range";
            NewBColumnColor.FieldName = "Color Range";
            NewBColumnColor.Visible = true;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnPrice.Caption = "Price";
            NewBColumnPrice.ColumnEdit = this.RepItemSpinEdit;
            NewBColumnPrice.DisplayFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
            NewBColumnPrice.DisplayFormat.FormatType = MaterialPrceFormat.FormatType;
            NewBColumnPrice.FieldName = "Price";
            NewBColumnPrice.Visible = true;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnRatio.Caption = "R";
            NewBColumnRatio.FieldName = "Ratio";
            NewBColumnRatio.Visible = true;
            CurrGView.Columns.Add(NewBColumnColor);
            CurrGView.Columns.Add(NewBColumnPrice);
            CurrGView.Columns.Add(NewBColumnRatio);
            BasicInfoBand.Columns.Add(NewBColumnColor);
            BasicInfoBand.Columns.Add(NewBColumnPrice);
            BasicInfoBand.Columns.Add(NewBColumnRatio);
            CurrGView.Bands.Add(BasicInfoBand);
            #endregion
        }
        private void MakeColorPriceColumnStyle(DevExpress.XtraGrid.GridControl CurrGridCtrl, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView CurrGView, DataTable DataSourceDt)
        {
            DevExpress.XtraGrid.Columns.GridColumn gridCol;
            DataSourceDt_Standard = DataSourceDt;
            CurrGridCtrl.DataSource = DataSourceDt_Standard;
            gridCol = CurrGView.Columns[0];
            gridCol.OptionsColumn.AllowEdit = false;
            gridCol.Width = FixColorColWidth;
            gridCol.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
            gridCol.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
            gridCol.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            CurrGView.Columns[1].OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            CurrGView.Columns[1].Width = FixSizeColWidth;
            CurrGView.Columns[2].OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            CurrGView.Columns[2].Width = this._ratioColWidth;
            //默認隐藏Ratio列
            CurrGView.Columns[2].Visible = false;
        }

        //Xsj101130:構建CupSize價格模式的GridView
        private void MakeCupSizePriceGridView(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView CurrGView, DataTable DataSourceDt)
        {
            #region
            //構建gridview的樣式
            CurrGView.Bands.Clear();
            DevExpress.XtraGrid.Views.BandedGrid.GridBand BasicInfoBand = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            BasicInfoBand.Caption = "";
            BasicInfoBand.AppearanceHeader.Options.UseTextOptions = true;
            BasicInfoBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnCup.Caption = "Cup";
            NewBColumnCup.FieldName = "Cup";
            NewBColumnCup.Visible = true;
            BasicInfoBand.Columns.Add(NewBColumnCup);
            CurrGView.Columns.Add(NewBColumnCup);
            CurrGView.Bands.Add(BasicInfoBand);

            //添加GridBand 
            for (int i = 1; i < DataSourceDt.Columns.Count; i = i + 3)
            {
                DevExpress.XtraGrid.Views.BandedGrid.GridBand NewBand = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
                NewBand.Name = DataSourceDt.Columns[i].Caption;
                NewBand.AppearanceHeader.Options.UseTextOptions = true;
                NewBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                CurrGView.Bands.Add(NewBand);
            }
            //添加BandedGridColumn
            for (int i = 1; i < CurrGView.Bands.Count; i++)
            {
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnPrice.Caption = "Price";

                NewBColumnPrice.DisplayFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
                NewBColumnPrice.DisplayFormat.FormatType = MaterialPrceFormat.FormatType;
                NewBColumnPrice.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Price";
                NewBColumnPrice.Visible = true;
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnRatio.Caption = "R";
                NewBColumnRatio.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Ratio";
                NewBColumnRatio.Visible = true;
                CurrGView.Columns.Add(NewBColumnPrice);
                CurrGView.Columns.Add(NewBColumnRatio);
                CurrGView.Bands[i].Columns.Add(NewBColumnPrice);
                CurrGView.Bands[i].Columns.Add(NewBColumnRatio);
            }
            #endregion
        }
        private void MakeCupSizePriceColumnStyle(DevExpress.XtraGrid.GridControl CurrGridCtrl, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView CurrGView, DataTable DataSourceDt)
        {
            DataSourceDt_Standard = DataSourceDt;
            CurrGridCtrl.DataSource = DataSourceDt_Standard;
            DevExpress.XtraGrid.Columns.GridColumn gridCol;
            for (int i = 0; i < CurrGView.Columns.Count; i++)
            {
                gridCol = CurrGView.Columns[i];
                if (i == 0)
                {
                    gridCol.OptionsColumn.AllowEdit = false;
                    gridCol.Width = FixCupColWidth;
                    gridCol.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
                    gridCol.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
                    gridCol.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
                    if (this._ChosedCupDetail.Count == 0)
                    {
                        CurrGView.Bands[0].Visible = false;
                        gridCol.Visible = false;
                    }
                    continue;
                }
                gridCol.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
                if (gridCol.FieldName.IndexOf("Ratio") == -1)
                {
                    gridCol.Width = FixSizeColWidth;
                }
                else
                {
                    gridCol.Width = this._ratioColWidth;
                }
                //默認隐藏Ratio列
                if (gridCol.Name.IndexOf("_Ratio") != -1)
                {
                    gridCol.Visible = false;
                }
            }
        }

        private void CommonGridCtrl_Load(object sender, EventArgs e)
        {
            this.gViewPrice.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gViewPrice.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

            if (this.dateEdit_EffectStartDate.EditValue == null)
                this.dateEdit_EffectStartDate.EditValue = DateTime.Now;
        }

        //隱藏顯示Ratio欄位
        private void sBtnShowHideRatio_Click(object sender, EventArgs e)
        {
            this.sBtnShowHideRatio.Text = this.sBtnShowHideRatio.Text == "Show Ratio" ? "Hide Ratio" : "Show Ratio";
            foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItem in this.gViewPrice.Columns)
            {
                if (colItem.Name.IndexOf("Ratio") != -1)
                {
                    colItem.Visible = this.sBtnShowHideRatio.Text == "Show Ratio" ? false : true;
                }
            }
        }

        //綁定Price更改事件，用於設置Ratio的默認值為:1
        private void gViewPrice_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            int CurrRowIndex = e.RowHandle;
            string CurrColName = e.Column.FieldName;
            string RatioName;
            if (CurrColName.EndsWith("Price"))
            {
                //當前的Ratio
                RatioName = CurrColName.Substring(0, CurrColName.Length - 5) + "Ratio";
            }
            else
            {
                RatioName = CurrColName;
                //RatioName = CurrColName.Substring(3);
            }

            if (gViewPrice.GetRowCellValue(CurrRowIndex, RatioName) == null || gViewPrice.GetRowCellValue(CurrRowIndex, RatioName).ToString() == "" || gViewPrice.GetRowCellValue(CurrRowIndex, RatioName).ToString() == "0")
            {
                gViewPrice.SetRowCellValue(CurrRowIndex, RatioName, 1);
            }

            //計算加權平均值
            gViewPrice.CloseEditor();
            this.lblWavPrice.Text = WavPriceStr;

        }


        #region
        public string WavPriceStr
        {
            get
            {
                return string.Format("{0:N4}", CalcWavPrice());
            }
        }
        public List<CupRange> CupRangeList { get; set; }
        public List<SizeRange> SizeRangeList { get; set; }
        //Xsj20110212:計算價格的加權平均值
        private decimal CalcWavPrice()
        {
            decimal wavPrice = 0;
            switch (_MultPriceType)
            {
                case MultPriceType.ColorOnly:
                    DataTable dt = _CurrDataSourceDt;
                    decimal priceCount = 0;
                    int ratioCount = 0;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i]["Price"].ToString() != "")
                        {
                            decimal price = (decimal)dt.Rows[i]["Price"];
                            int ratio = (int)dt.Rows[i]["Ratio"];
                            priceCount += price * ratio;
                            ratioCount += ratio;
                        }
                    }
                    wavPrice = priceCount / (ratioCount == 0 ? 1 : ratioCount);
                    break;
                case MultPriceType.ColorRangeSizeCup:
                    wavPrice = CalcWavPriceAction(2);
                    break;
                case MultPriceType.CupSize:
                    wavPrice = CalcWavPriceAction(1);
                    break;
            }
            return wavPrice;
        }

        private decimal CalcWavPriceAction(int StartColumnIndex)
        {
            DataTable dt = _CurrDataSourceDt;
            if (dt == null) return 0;
            decimal wavPrice = 0;
            decimal priceCount = 0;
            int ratioCount = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //Cup的權值
                string cupStr = dt.Rows[i]["Cup"].ToString();
                int valCup = 1;
                if (CupRangeList != null && CupRangeList.Count > 0)
                {
                    CupRange cupRangeCls = CupRangeList.Where(p => p.CupCode == cupStr).FirstOrDefault();
                    if (cupRangeCls != null)
                    {
                        valCup = cupRangeCls.RangeCount;
                    }
                }
                for (int k = StartColumnIndex; k < dt.Columns.Count; k = k + 3)
                {
                    //Size的權值
                    string sizeStr = dt.Columns[k].ColumnName.Trim();
                    int valSize = 1;
                    if (SizeRangeList != null && SizeRangeList.Count > 0)
                    {
                        SizeRange sizeRangeCls = SizeRangeList.Where(p => p.SizeCode == sizeStr).FirstOrDefault();
                        if (sizeRangeCls != null)
                        {
                            valSize = sizeRangeCls.RangeCount;
                        }
                    }
                    //Ratio值
                    int valRatio = 1;
                    if (dt.Rows[i][sizeStr + "_Price"].ToString() != "")
                    {
                        decimal valPrice = (decimal)dt.Rows[i][sizeStr + "_Price"];
                        valRatio = Convert.ToInt32(dt.Rows[i][sizeStr + "_Ratio"]);
                        priceCount += valPrice * valRatio * valCup * valSize;
                        ratioCount += valRatio * valCup * valSize;
                    }
                }
            }
            wavPrice = priceCount / (ratioCount == 0 ? 1 : ratioCount);
            return wavPrice;
        }
        //Xsj:綁定數據後,計算原有值的加權平均
        private void gViewPrice_DataSourceChanged(object sender, EventArgs e)
        {
            this.lblWavPrice.Text = WavPriceStr;
        }
        #endregion

        #region Xsj20110525:加实现添加历史多单价而添加
        //保存单价项
        public bool SaveCurrPirce()
        {
            this.bindingSourcePriceHeader.EndEdit();
            this.gViewPrice.CloseEditor();
            bool result = false;
            if (this._CurrDataSourceDt == null) return result;
            //如果gridview处于非可编辑状态，则返回
            if (!this.gViewPrice.Editable) return result;
            try
            {
                string CurrColorCode = null;
                string CurrCupCode = null;
                string CurrCupDesc = null;
                string CurrSizeCode = null;
                string CurrSizeDesc = null;
                decimal CurrPrice;
                int CurrRatio;

                #region Xsj20110817:为完善历史多单价而注释掉
                /*
                //清空内存单价
                foreach (MaterialPrice item in this._currPriceList)
                {
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //MaterialPrice pcls = this._currMIDcSource.MaterialPrices.Where(p => p.PriceType == item.PriceType 
                    //    && p.Category.Trim() == item.Category.Trim() && p.EffectFromDate.Date == item.EffectFromDate.Date).FirstOrDefault();
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    MaterialPrice pcls = this.CurrMaterialPriceHeader.MaterialPrices.FirstOrDefault();
                    #endregion
                    if (pcls != null)
                    {
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //this._currMIDcSource.MaterialPrices.Remove(pcls);
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        this.CurrMaterialPriceHeader.MaterialPrices.Remove(pcls);
                        #endregion
                    }
                }
                */
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                this.CurrMaterialPriceHeader.MaterialPrices.Clear();
                #endregion


                if (this._CurrDataSourceDt == null)
                    return false;
                //重写内存单价
                switch ((this._currMIDcSource.MultiPriceOption ?? 0).ToString())
                {
                    case "1":
                        #region Color_Cup_SizeRange
                        //重新写入记录
                        for (int RowIndex = 0; RowIndex < this._CurrDataSourceDt.Rows.Count; RowIndex++)
                        {
                            for (int ColIndex = 2; ColIndex < this._CurrDataSourceDt.Columns.Count; ColIndex = ColIndex + 3)
                            {
                                if (this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 1].ToString() == "" || Convert.ToDecimal(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 1].ToString()) <= 0)
                                {
                                    continue;
                                }
                                //Color
                                CurrColorCode = "";
                                CurrColorCode = this._CurrDataSourceDt.Rows[RowIndex]["Color Range"].ToString();
                                //Cup
                                CurrCupDesc = "";
                                CurrCupDesc = this._CurrDataSourceDt.Rows[RowIndex]["Cup"].ToString();
                                if (CurrCupDesc == "ALL")
                                {
                                    CurrCupCode = "ALL";
                                }
                                else
                                {
                                    #region Xsj20110817:为完善历史多单价而注释掉
                                    //List<Detail.CupDetailCls> CurrCupDetailClsList = this._ChosedCupDetail.Where(P => P.Desc == CurrCupDesc).ToList();
                                    #endregion
                                    #region Xsj20110817:为完善历史多单价而添加
                                    List<PH.MIDc.BO.MaterialPriceHeader.CupDetailCls> CurrCupDetailClsList = this._ChosedCupDetail.Where(P => P.Desc == CurrCupDesc).ToList();
                                    #endregion
                                    if (CurrCupDetailClsList.Count > 0)
                                    {

                                        #region Xsj20110817:为完善历史多单价而注释掉
                                        //Detail.CupDetailCls CurrCupDetailCls = CurrCupDetailClsList[0];
                                        //CurrCupCode = CurrCupDetailCls.CupCode;
                                        #endregion
                                        #region Xsj20110817:为完善历史多单价而添加
                                        PH.MIDc.BO.MaterialPriceHeader.CupDetailCls CurrCupDetailCls = CurrCupDetailClsList[0];
                                        CurrCupCode = CurrCupDetailCls.CupCode;
                                        #endregion
                                    }
                                }
                                //Size
                                CurrSizeDesc = this._CurrDataSourceDt.Columns[ColIndex].Caption.Trim();

                                #region Xsj20110817:为完善历史多单价而注释掉
                                //List<Detail.SizeDetailCls> CurrSizeDetailClsList = this._CurrChosedSizeDetail.Where(P => P.Desc == CurrSizeDesc).ToList();
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                List<PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls> CurrSizeDetailClsList = this._CurrChosedSizeDetail.Where(P => P.Desc == CurrSizeDesc).ToList();
                                #endregion
                                if (CurrSizeDetailClsList.Count > 0)
                                {
                                    #region Xsj20110817:为完善历史多单价而注释掉
                                    //Detail.SizeDetailCls CurrSizeDetailCls = CurrSizeDetailClsList[0];
                                    //CurrSizeCode = CurrSizeDetailCls.SizeCode;
                                    #endregion
                                    #region Xsj20110817:为完善历史多单价而添加
                                    PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls CurrSizeDetailCls = CurrSizeDetailClsList[0];
                                    CurrSizeCode = CurrSizeDetailCls.SizeCode;
                                    #endregion
                                }
                                //Price
                                CurrPrice = Convert.ToDecimal(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 1].ToString());
                                //Ratio
                                if (this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 2].ToString() == "" || Convert.ToInt32(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 2].ToString()) <= 0)
                                {
                                    CurrRatio = 1;
                                }
                                else
                                {
                                    CurrRatio = Convert.ToInt32(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 2].ToString());
                                }

                                MaterialPrice NewPriceCls = new MaterialPrice();
                                #region Xsj20110817:为完善历史多单价而添加
                                NewPriceCls.SuppRef = this.CurrMaterialPriceHeader.SuppRef;
                                NewPriceCls.Version = this.CurrMaterialPriceHeader.Version;
                                #endregion
                                NewPriceCls.PriceType = this._currPriceType;
                                NewPriceCls.Category = this._currCategory == "Standard" ? "" : this._currCategory;
                                NewPriceCls.Price = (decimal?)CurrPrice;
                                NewPriceCls.Ratio = CurrRatio;
                                NewPriceCls.ColorRange = NewPriceCls.ColorRangeDesc = CurrColorCode;
                                NewPriceCls.Cup = CurrCupCode;
                                NewPriceCls.Size = CurrSizeCode;
                                NewPriceCls.EffectFromDate = Convert.ToDateTime(this.CurrMaterialPriceHeader.EffectFromDate).Date;
                                if (this.dateEdit_EffectEndDate.EditValue == null)
                                {
                                    NewPriceCls.EffectEndDate = null;
                                }
                                else
                                {
                                    NewPriceCls.EffectEndDate = Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue);
                                }

                                #region Xsj20110817:为完善历史多单价而注释掉
                                //this._currMIDcSource.MaterialPrices.Add(NewPriceCls);
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                this.CurrMaterialPriceHeader.MaterialPrices.Add(NewPriceCls);
                                #endregion
                            }
                        }
                        #endregion
                        break;
                    case "2":
                        #region Color Only
                        //重新写入记录
                        for (int RowIndex = 0; RowIndex < this._CurrDataSourceDt.Rows.Count; RowIndex++)
                        {
                            if (this._CurrDataSourceDt.Rows[RowIndex]["Price"].ToString() == "")
                            {
                                continue;
                            }
                            //Color
                            CurrColorCode = "";
                            CurrColorCode = this._CurrDataSourceDt.Rows[RowIndex]["Color Range"].ToString();
                            //Cup
                            CurrCupCode = "ALL";
                            CurrCupDesc = "ALL";
                            //Size
                            CurrSizeCode = "ALL";
                            CurrSizeDesc = "ALL";
                            //Price
                            CurrPrice = Convert.ToDecimal(this._CurrDataSourceDt.Rows[RowIndex][1].ToString());
                            //Ratio
                            if (this._CurrDataSourceDt.Rows[RowIndex]["Ratio"].ToString() == "" || Convert.ToDecimal(this._CurrDataSourceDt.Rows[RowIndex]["Ratio"].ToString()) <= 0)
                            {
                                CurrRatio = 1;
                            }
                            else
                            {
                                CurrRatio = Convert.ToInt32(this._CurrDataSourceDt.Rows[RowIndex]["Ratio"].ToString());
                            }
                            MaterialPrice NewPriceCls = new MaterialPrice();
                            #region Xsj20110817:为完善历史多单价而添加
                            NewPriceCls.SuppRef = this.CurrMaterialPriceHeader.SuppRef;
                            NewPriceCls.Version = this.CurrMaterialPriceHeader.Version;
                            #endregion
                            NewPriceCls.PriceType = this._currPriceType;
                            NewPriceCls.Category = this._currCategory == "Standard" ? "" : this._currCategory;
                            NewPriceCls.Price = (decimal?)CurrPrice;
                            NewPriceCls.Ratio = CurrRatio;
                            NewPriceCls.ColorRange = NewPriceCls.ColorRangeDesc = CurrColorCode;
                            NewPriceCls.Cup = CurrCupCode;
                            NewPriceCls.Size = CurrSizeCode;
                            NewPriceCls.EffectFromDate = this.CurrMaterialPriceHeader.EffectFromDate.Date;

                            if (this.dateEdit_EffectEndDate.EditValue == null)
                            {
                                NewPriceCls.EffectEndDate = null;
                            }
                            else
                            {
                                NewPriceCls.EffectEndDate = Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue);
                            }

                            #region Xsj20110817:为完善历史多单价而注释掉
                            //this._currMIDcSource.MaterialPrices.Add(NewPriceCls);
                            #endregion
                            #region Xsj20110817:为完善历史多单价而添加
                            this.CurrMaterialPriceHeader.MaterialPrices.Add(NewPriceCls);
                            #endregion
                        }
                        #endregion
                        break;
                    case "3":
                        #region Cup_Size
                        //重新写入记录
                        for (int RowIndex = 0; RowIndex < this._CurrDataSourceDt.Rows.Count; RowIndex++)
                        {
                            for (int ColIndex = 1; ColIndex < this._CurrDataSourceDt.Columns.Count; ColIndex = ColIndex + 3)
                            {
                                if (this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 1].ToString() == "")
                                {
                                    continue;
                                }
                                //Color
                                CurrColorCode = "ALL";
                                //Cup
                                CurrCupDesc = "";
                                CurrCupDesc = this._CurrDataSourceDt.Rows[RowIndex]["Cup"].ToString();
                                if (CurrCupDesc != "" && CurrCupDesc != "ALL")
                                {
                                    #region Xsj20110817:为完善历史多单价而注释掉
                                    //List<Detail.CupDetailCls> CupDetailClsList = this._ChosedCupDetail.Where(P => P.Desc == CurrCupDesc).ToList();
                                    #endregion
                                    #region Xsj20110817:为完善历史多单价而添加
                                    List<PH.MIDc.BO.MaterialPriceHeader.CupDetailCls> CupDetailClsList = this._ChosedCupDetail.Where(P => P.Desc == CurrCupDesc).ToList();
                                    #endregion
                                    if (CupDetailClsList.Count > 0)
                                    {
                                        #region Xsj20110817:为完善历史多单价而注释掉
                                        //Detail.CupDetailCls CurrCupDetailCls = CupDetailClsList[0];
                                        //CurrCupCode = CurrCupDetailCls.CupCode;
                                        #endregion
                                        #region Xsj20110817:为完善历史多单价而添加
                                        PH.MIDc.BO.MaterialPriceHeader.CupDetailCls CurrCupDetailCls = CupDetailClsList[0];
                                        CurrCupCode = CurrCupDetailCls.CupCode;
                                        #endregion
                                    }
                                }
                                else
                                {
                                    CurrCupCode = "ALL";
                                }
                                //Size
                                CurrSizeDesc = this._CurrDataSourceDt.Columns[ColIndex].Caption.Trim();
                                #region Xsj20110817:为完善历史多单价而注释掉
                                //List<Detail.SizeDetailCls> CurrSizeDetailClsList = this._CurrChosedSizeDetail.Where(P => P.Desc == CurrSizeDesc).ToList();
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                List<PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls> CurrSizeDetailClsList = this._CurrChosedSizeDetail.Where(P => P.Desc == CurrSizeDesc).ToList();
                                #endregion
                                if (CurrSizeDetailClsList.Count > 0)
                                {
                                    #region Xsj20110817:为完善历史多单价而注释掉
                                    //Detail.SizeDetailCls CurrSizeDetailCls = CurrSizeDetailClsList[0];
                                    //CurrSizeCode = CurrSizeDetailCls.SizeCode;
                                    #endregion
                                    #region Xsj20110817:为完善历史多单价而添加
                                    PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls CurrSizeDetailCls = CurrSizeDetailClsList[0];
                                    CurrSizeCode = CurrSizeDetailCls.SizeCode;
                                    #endregion
                                }
                                //Price
                                CurrPrice = Convert.ToDecimal(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 1].ToString());
                                //Ratio
                                if (this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 2].ToString() == "" || Convert.ToDecimal(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 2].ToString()) <= 0)
                                {
                                    CurrRatio = 1;
                                }
                                else
                                {
                                    CurrRatio = Convert.ToInt32(this._CurrDataSourceDt.Rows[RowIndex][ColIndex + 2].ToString());
                                }
                                MaterialPrice NewPriceCls = new MaterialPrice();
                                #region Xsj20110817:为完善历史多单价而添加
                                NewPriceCls.SuppRef = this.CurrMaterialPriceHeader.SuppRef;
                                NewPriceCls.Version = this.CurrMaterialPriceHeader.Version;
                                #endregion
                                NewPriceCls.PriceType = this._currPriceType;
                                NewPriceCls.Category = this._currCategory == "Standard" ? "" : _currCategory;
                                NewPriceCls.Price = (decimal?)CurrPrice;
                                NewPriceCls.Ratio = CurrRatio;
                                NewPriceCls.ColorRange = NewPriceCls.ColorRangeDesc = CurrColorCode;
                                NewPriceCls.Cup = CurrCupCode;
                                NewPriceCls.Size = CurrSizeCode;
                                NewPriceCls.EffectFromDate = this.CurrMaterialPriceHeader.EffectFromDate.Date;
                                if (this.dateEdit_EffectEndDate.EditValue == null)
                                {
                                    NewPriceCls.EffectEndDate = null;
                                }
                                else
                                {
                                    NewPriceCls.EffectEndDate = Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue); ;
                                }


                                #region Xsj20110817:为完善历史多单价而注释掉
                                //this._currMIDcSource.MaterialPrices.Add(NewPriceCls);
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                this.CurrMaterialPriceHeader.MaterialPrices.Add(NewPriceCls);
                                #endregion
                            }
                        }
                        #endregion
                        break;
                }
                result = true;
            }
            catch (Exception ex)
            {
                result = false;
                MessageBox.Show("程序在CommonGridCtrl.SaveCurrPrice中産生錯誤,更新PriceList的單價信息失敗!", "系統提示\r\n" + ex.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return result;
        }

        //有效時間操作邏輯
        #region 有效時間操作邏輯
        //更改當前有效時間所發生的相關邏輯---EffectFromDate 
        private void dateEdit_EffectStartDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (e.OldValue == null) return;
            if (e.NewValue == null)
            {
                e.Cancel = true;
            }
            if (!_isFirst)
            {
                DateTime oldEffectFromDate = Convert.ToDateTime(e.OldValue);
                DateTime newEffectFromDate = Convert.ToDateTime(e.NewValue);
                DateTime minAllowDate = new DateTime();
                DateTime maxAllowDate = new DateTime();
                int mPHCount = this._currMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == this.CurrMaterialPriceHeader.PriceType && p.Category == this.CurrMaterialPriceHeader.Category).Count();
                if (mPHCount > 1)
                {
                    List<MaterialPriceHeader> materialPriceList = this._currMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == this._currPriceType && p.Category == this._currCategory && p.EffectFromDate.Date < oldEffectFromDate.Date).OrderBy(p => p.EffectFromDate).ToList();
                    if (materialPriceList.Count > 0)
                    {
                        minAllowDate = materialPriceList[materialPriceList.Count - 1].EffectFromDate.Date;
                    }
                    materialPriceList = this._currMIDcSource.MaterialPriceHeaders.Where(p => p.PriceType == this._currPriceType && p.Category == this._currCategory && p.EffectFromDate.Date > oldEffectFromDate.Date).OrderBy(p => p.EffectFromDate).ToList();
                    if (materialPriceList.Count > 0)
                    {
                        maxAllowDate = materialPriceList[0].EffectFromDate.Date;
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
                if (this.dateEdit_EffectEndDate.EditValue == null)
                {
                    effectEndDate = Convert.ToDateTime("2999-12-31");
                }
                else
                {
                    effectEndDate = Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue);
                }
                if (newEffectFromDate > effectEndDate)
                {
                    MessageBox.Show("修改当前单价项的[EffectFromDate]不能大于[EffectEndDate:" + effectEndDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    e.Cancel = true;
                    return;
                }
            }

            DateTime eFromDate = Convert.ToDateTime(e.NewValue);
            this.CurrMaterialPriceHeader.EffectFromDate = eFromDate.Date;
            #region Xsj20110817:为完善历史多单价而添加
            //ChangeColorCupSizeDetailEffectFromDate(eFromDate);
            #endregion
        }
        //更改當前有效時間所發生的相關邏輯---EffectEndDate
        private void dateEdit_EffectEndDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (e.OldValue == null) return;
            DateTime newEffectEndDate = Convert.ToDateTime(e.NewValue == null ? Convert.ToDateTime("2999-12-31") : e.NewValue);
            DateTime currEffectFromDate = Convert.ToDateTime(this.dateEdit_EffectStartDate.EditValue);
            if (newEffectEndDate < currEffectFromDate)
            {
                MessageBox.Show("修改当前单价项的[EffectFromDate]不能小于或等于其它單價项的[EffectFromDate]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                e.Cancel = true;
            }
        }
        private void dateEdit_EffectEndDate_EditValueChanged(object sender, EventArgs e)
        {
            //MaterialPriceHeader materialPrice;
            if (!_isFirst)
            {
                if (this.dateEdit_EffectEndDate.EditValue != null)
                {
                    this.CurrMaterialPriceHeader.EffectEndDate = Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue);
                    #region Xsj20110817:为完善历史多单价而添加
                    //ChangeColorCupSizeDetailEffectEndDate(Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue));
                    #endregion
                }
                else
                {
                    this.CurrMaterialPriceHeader.EffectEndDate = null;
                    #region Xsj20110817:为完善历史多单价而添加
                    //ChangeColorCupSizeDetailEffectEndDate(null);
                    #endregion
                }
            }

            //Xsj20111124:更新單價提示
            if (this.NotePriceStatus != null)
            {
                this.NotePriceStatus.Invoke();
            }
        }


        #region Xsj20110817:为完善历史多单价而添加
        /*
        private void ChangeColorCupSizeDetailEffectFromDate(DateTime EffectFromDate)
        {
            MaterialPriceHeader mPH = this.CurrMaterialPriceHeader;
            if (mPH == null) return;
            foreach (NewColorDetail item in mPH.NewColorDetails)
            {
                item.EffectFromDate = EffectFromDate.Date;
            }
            foreach (NewCupDetail item in mPH.NewCupDetails)
            {
                item.EffectFromDate = EffectFromDate.Date;
            }
            foreach (NewSizeDetail item in mPH.NewSizeDetails)
            {
                item.EffectFromDate = EffectFromDate.Date;
            }
        }
        private void ChangeColorCupSizeDetailEffectEndDate(DateTime? EffectEndDate)
        {
            MaterialPriceHeader mPH = this.CurrMaterialPriceHeader;
            if (mPH == null) return;
            foreach (NewColorDetail item in mPH.NewColorDetail)
            {
                if (EffectEndDate == null)
                    item.EffectEndDate = null;
                else
                    item.EffectEndDate = EffectEndDate.Value.Date;
            }
            foreach (NewCupDetail item in mPH.NewCupDetail)
            {
                if (EffectEndDate == null)
                    item.EffectEndDate = null;
                else
                    item.EffectEndDate = EffectEndDate.Value.Date;
            }
            foreach (NewSizeDetail item in mPH.NewSizeDetail)
            {
                if (EffectEndDate == null)
                    item.EffectEndDate = null;
                else
                    item.EffectEndDate = EffectEndDate.Value.Date;
            }
        }
        */
        #endregion

        #endregion
        #endregion



        //Xsj:為了區別地計算SpecialPrice的ALL-In-Price而添加如下代碼
        #region

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

        #endregion

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

    }
}
