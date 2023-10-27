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
    public partial class CommonOutGridCtrl : UserControl
    {
        public CommonOutGridCtrl()
        {
            InitializeComponent();
            this.gViewPrice.OptionsView.ColumnAutoWidth = false;
        }

        private int FixColorColWidth = 100;
        private int FixCupColWidth = 60;
        private int FixSizeColWidth = 60;

        private int _ratioColWidth = 20;

        private DataTable DataSourceDt_Standard = new DataTable();
        private DataTable DataSourceDt_CustomerFavor = new DataTable();
        private DataTable DataSourceDt_Volume = new DataTable();
        private DataTable DataSourceDt_Period = new DataTable();
        List<PH.MIDc.BO.CupDetail> _ChosedCupDetail;

        #region Xsj20110525:加实现添加历史多单价而添加
        public Detail CurrDetail { get; set; }
        #endregion

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

        public void SetCurrencyVisible(bool visible)
        {
            this.lblCurrencyCaption.Visible = this.Currencylabel.Visible = visible;
        }
        //有效时间From
        public DateTime? EffectStartDate
        {
            get
            {
                return this.dateEdit_EffectStartDate.EditValue == null ? DateTime.Now : Convert.ToDateTime(this.dateEdit_EffectStartDate.EditValue);
            }
        }
        //有效时间End
        public DateTime? EffectEndDate
        {
            get
            {
                return this.dateEdit_EffectEndDate.EditValue == null ? (DateTime?)null : Convert.ToDateTime(this.dateEdit_EffectEndDate.EditValue);
            }
        }

        //DataTable
        #region Xsj20110525:加实现添加历史多单价而添加
        private string _currPriceTypeStr;
        private string _currCategoryStr;
        #endregion
        public void CreatPriceDt(MultPriceType MultPriceType, string PriceTypeOption, DataTable DataSourceDt, List<MaterialPrice> CurrMaterialPriceList, String Category, List<PH.MIDc.BO.CupDetail> ChosedCupDetail)
        {
            this._ChosedCupDetail = ChosedCupDetail;
            #region Xsj20110525:加实现添加历史多单价而添加
            this._currPriceTypeStr = PriceTypeOption;
            this._currCategoryStr = Category;
            #endregion

            #region Xsj20110525:加实现添加历史多单价而注释掉
            //CreatePriceDtAtion(MultPriceType, PriceTypeOption, DataSourceDt, CurrMaterialPriceList, Category);
            #endregion
            #region Xsj20110525:加实现添加历史多单价而添加
            CreatePriceDtAtion(MultPriceType, DataSourceDt, CurrMaterialPriceList);
            #endregion
        }
        List<MaterialPrice> PriceList = new List<MaterialPrice>();
        #region Xsj20110525:加实现添加历史多单价而添加
        private bool _isNeedCheckEffectFromDate = false;
        #endregion
        #region Xsj20110525:加实现添加历史多单价而注释掉
        //private void CreatePriceDtAtion(MultPriceType CurrMultPriceType, string CurrMaterialPriceType, DataTable CurrDataSourceDt, List<MaterialPrice> CurrMaterialPriceList, String Category)
        #endregion
        #region Xsj20110525:加实现添加历史多单价而添加
        private void CreatePriceDtAtion(MultPriceType CurrMultPriceType, DataTable CurrDataSourceDt, List<MaterialPrice> CurrMaterialPriceList)
        #endregion
        {
            try
            {
                #region
                //清空原來的內容
                this.gCtrlPrice.DataSource = null;
                this.gViewPrice.Columns.Clear();
                CurrDataSourceDt.Columns.Clear();
                CurrDataSourceDt.Rows.Clear();

                //构造数据源Table 
                DataTable DataSourceDt = CurrDataSourceDt;
                #region Xsj20110525:加实现添加历史多单价而注释掉
                //PriceList = CurrMaterialPriceList.Where(P => P.PriceType == CurrMaterialPriceType && P.Category == Category).ToList();
                #endregion
                #region Xsj20110525:加实现添加历史多单价而添加
                PriceList = CurrMaterialPriceList.Where(P => P.PriceType == this._currPriceTypeStr && P.Category == this._currCategoryStr).ToList();
                #endregion

                List<MaterialPrice> HadInputPriceList = new List<MaterialPrice>();
                #region Xsj20110525:加实现添加历史多单价而注释掉
                //if (CurrMaterialPriceType == MaterialPriceType.Standard.ToString())
                #endregion
                #region Xsj20110525:加实现添加历史多单价而添加
                if (this._currPriceTypeStr == MaterialPriceType.Standard.ToString())
                #endregion
                {
                    HadInputPriceList = CurrMaterialPriceList.Where(P => P.Price > 0 && P.PriceType == MaterialPriceType.Standard.ToString()).ToList();
                }
                else
                {
                    #region Xsj20110525:加实现添加历史多单价而注释掉
                    //HadInputPriceList = CurrMaterialPriceList.Where(P => P.Price > 0 && P.PriceType == CurrMaterialPriceType && P.Category.Trim() == Category).ToList();
                    #endregion
                    #region Xsj20110525:加实现添加历史多单价而添加
                    HadInputPriceList = CurrMaterialPriceList.Where(P => P.Price > 0 && P.PriceType == this._currPriceTypeStr && P.Category.Trim() == this._currCategoryStr).ToList();
                    #endregion
                }
                //有效时间
                if (HadInputPriceList.Count > 0)
                {
                    #region Xsj20110525:加实现添加历史多单价而添加
                    _isNeedCheckEffectFromDate = false;
                    #endregion
                    this.dateEdit_EffectStartDate.EditValue = HadInputPriceList.First().EffectFromDate;
                    this.dateEdit_EffectEndDate.EditValue = HadInputPriceList.First().EffectEndDate;
                }

                if (CurrMultPriceType == MultPriceType.ColorRangeSizeCup)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Cup", typeof(string));
                    #region
                    List<string> SizeList = PriceList.Select(P => P.Size).Distinct().ToList(); // PriceList.OrderBy(P => P.Size).Select(P => P.Size).Distinct().ToList();
                    foreach (string item in SizeList)
                    {
                        DataSourceDt.Columns.Add(item, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(item.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(item.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入Color/Cup数据源
                    foreach (var item in PriceList.Select(P => new { Color = P.ColorRangeDesc, Cup = P.Cup }).Distinct())
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Color Range"] = item.Color;
                        Dr["Cup"] = item.Cup;
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        for (int j = 0; j < PriceList.Count; j++)
                        {
                            #region Xsj20110525:加实现添加历史多单价而注释掉
                            //if (PriceList[j].ColorRangeDesc == DataSourceDt.Rows[i]["Color Range"].ToString() && PriceList[j].Cup == DataSourceDt.Rows[i]["Cup"].ToString()
                            //    && "DataTable_" + CurrMaterialPriceType + "_" + PriceList[j].Category.Trim() == DataSourceDt.TableName.Trim()
                            //    ||
                            //    PriceList[j].ColorRangeDesc == DataSourceDt.Rows[i]["Color Range"].ToString() && PriceList[j].Cup == DataSourceDt.Rows[i]["Cup"].ToString()
                            //    && PriceList[j].PriceType == MaterialPriceType.Standard.ToString())
                            #endregion
                            #region Xsj20110525:加实现添加历史多单价而添加
                            if (PriceList[j].ColorRangeDesc == DataSourceDt.Rows[i]["Color Range"].ToString() && PriceList[j].Cup == DataSourceDt.Rows[i]["Cup"].ToString()
                                && "DataTable_" + this._currPriceTypeStr + "_" + PriceList[j].Category.Trim() == DataSourceDt.TableName.Trim()
                                ||
                                PriceList[j].ColorRangeDesc == DataSourceDt.Rows[i]["Color Range"].ToString() && PriceList[j].Cup == DataSourceDt.Rows[i]["Cup"].ToString()
                                && PriceList[j].PriceType == MaterialPriceType.Standard.ToString())
                            #endregion
                            {
                                if (PriceList[j].Price > 0)
                                {
                                    DataSourceDt.Rows[i][PriceList[j].Size + "_Price"] = Convert.ToDecimal(string.Format("{0:#,0.######}", PriceList[j].Price));
                                    DataSourceDt.Rows[i][PriceList[j].Size + "_Ratio"] = PriceList[j].Ratio == null || PriceList[j].Ratio == 0 ? 1 : PriceList[j].Ratio;
                                }
                            }
                        }
                    }
                    #endregion
                    #region Xsj20110525:加实现添加历史多单价而注释掉
                    //if (CurrMaterialPriceType == MaterialPriceType.Standard.ToString())
                    //{
                    //    MakeColorCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.CustomerFavor.ToString())
                    //{
                    //    MakeColorCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.Volume.ToString())
                    //{
                    //    MakeColorCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.Period.ToString())
                    //{
                    //    MakeColorCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    #endregion
                    #region Xsj20110525:加实现添加历史多单价而添加
                    MakeColorCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    MakeColorCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                    #endregion
                }
                else if (CurrMultPriceType == MultPriceType.ColorOnly)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Price", typeof(decimal));
                    DataSourceDt.Columns.Add("Ratio", typeof(int));
                    //写入数据源
                    foreach (var item in PriceList.Select(P => new { Color = P.ColorRangeDesc }).Distinct())
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Color Range"] = item.Color;
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    decimal Price;
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        List<MaterialPrice> VarList = PriceList.Where(P => P.ColorRangeDesc == DataSourceDt.Rows[i]["Color Range"].ToString()).ToList();
                        if (VarList.Count() > 0)
                        {
                            MaterialPrice MPCls = VarList.First();
                            if (decimal.TryParse(MPCls.Price.ToString(), out Price))
                            {
                                DataSourceDt.Rows[i]["Price"] = Convert.ToDecimal(string.Format("{0:#,0.######}", Price));
                                if (MPCls.Ratio != null)
                                {
                                    DataSourceDt.Rows[i]["Ratio"] = MPCls.Ratio;
                                }
                                else
                                {
                                    DataSourceDt.Rows[i]["Ratio"] = 1;
                                }
                            }
                        }
                    }
                    #region Xsj20110525:加实现添加历史多单价而注释掉
                    //if (CurrMaterialPriceType == MaterialPriceType.Standard.ToString())
                    //{
                    //    MakeColorPriceGridView(gViewPrice, DataSourceDt);
                    //    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.CustomerFavor.ToString())
                    //{
                    //    MakeColorPriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.Volume.ToString())
                    //{
                    //    MakeColorPriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType.ToString() == MaterialPriceType.Period.ToString())
                    //{
                    //    MakeColorPriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    #endregion
                    #region Xsj20110525:加实现添加历史多单价而添加
                    MakeColorPriceGridView(this.gViewPrice, DataSourceDt);
                    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                    #endregion
                }
                else if (CurrMultPriceType == MultPriceType.CupSize)
                {
                    #region
                    DataSourceDt.Columns.Add("Cup", typeof(string));
                    List<string> SizeList = PriceList.Select(P => P.Size).Distinct().ToList(); // PriceList.OrderBy(P => P.Size).Select(P => P.Size).Distinct().ToList();
                    foreach (string item in SizeList)
                    {
                        DataSourceDt.Columns.Add(item, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(item.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(item.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入数据源
                    foreach (var item in PriceList.Select(P => new { Cup = P.Cup }).Distinct())
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Cup"] = item.Cup;
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    decimal Price;
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        for (int j = 1; j < DataSourceDt.Columns.Count; j++)
                        {
                            List<MaterialPrice> VarList = PriceList.Where(P => P.Cup == DataSourceDt.Rows[i]["Cup"].ToString() && P.Size.Trim() == DataSourceDt.Columns[j].Caption.Trim()).ToList();
                            if (VarList.Count() > 0)
                            {
                                MaterialPrice MPCls = VarList.First();
                                if (decimal.TryParse(MPCls.Price.ToString(), out Price))
                                {
                                    DataSourceDt.Rows[i][MPCls.Size + "_Price"] = Convert.ToDecimal(string.Format("{0:#,0.######}", MPCls.Price));
                                    if (MPCls.Ratio != null)
                                    {
                                        DataSourceDt.Rows[i][MPCls.Size + "_Ratio"] = MPCls.Ratio;
                                    }
                                    else
                                    {
                                        DataSourceDt.Rows[i][MPCls.Size + "_Ratio"] = 1;
                                    }
                                }
                            }
                        }
                    }
                    #region Xsj20110525:加实现添加历史多单价而注释掉
                    //if (CurrMaterialPriceType == MaterialPriceType.Standard.ToString())
                    //{
                    //    MakeCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.CustomerFavor.ToString())
                    //{
                    //    MakeCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.Volume.ToString())
                    //{
                    //    MakeCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    //else if (CurrMaterialPriceType == MaterialPriceType.Period.ToString())
                    //{
                    //    MakeCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    //    MakeCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    //}
                    #endregion
                    #region Xsj20110525:加实现添加历史多单价而添加
                    MakeCupSizePriceGridView(this.gViewPrice, DataSourceDt);
                    MakeCupSizePriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                    #endregion
                }
                #endregion
            }
            catch (Exception ex)
            {
                MessageBox.Show("程序在CommonOutGridCtrl的CreatePriceDt_Standard中産生錯誤,構建Standard單價錄入表格失敗!\r\n" + ex.ToString(), "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                NewBColumnPrice.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Price";
                NewBColumnPrice.Visible = true;
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnRatio.Caption = "R";
                NewBColumnRatio.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Ratio";
                NewBColumnRatio.Width = _ratioColWidth;
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
                        if (this._ChosedCupDetail.Count == 0) gridCol.Visible = false;
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
                gridCol.Width = FixSizeColWidth;

                //默認隱藏Ratio列
                if (gridCol.Name.IndexOf("_Ratio") != -1)
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
            NewBColumnPrice.FieldName = "Price";
            NewBColumnPrice.Visible = true;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnRatio.Caption = "R";
            NewBColumnRatio.FieldName = "Ratio";
            NewBColumnRatio.Width = _ratioColWidth;
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
            CurrGView.Columns[2].Width = FixSizeColWidth;
            //默認隱藏Ratio列
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
                NewBColumnPrice.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Price";
                NewBColumnPrice.Visible = true;
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnRatio.Caption = "R";
                NewBColumnRatio.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Ratio";
                NewBColumnRatio.Width = _ratioColWidth;
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
                gridCol.Width = FixSizeColWidth;
                //默認隱藏Ratio列
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
            {
                this.dateEdit_EffectStartDate.EditValue = DateTime.Now;
            }

        }

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
            string CurrColName = e.Column.Name;

            if (!CurrColName.EndsWith("Price")) return;

            //當前的Ratio
            string RatioName = CurrColName.Substring(0, CurrColName.Length - 5) + "Ratio";
            RatioName = RatioName.Substring(3);

            if (gViewPrice.GetRowCellValue(CurrRowIndex, RatioName) == null || gViewPrice.GetRowCellValue(CurrRowIndex, RatioName).ToString() == "" || gViewPrice.GetRowCellValue(CurrRowIndex, RatioName).ToString() == "0")
            {
                gViewPrice.SetRowCellValue(CurrRowIndex, RatioName, 1);
            }
        }


        private void dateEdit_EffectStartDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (!_isNeedCheckEffectFromDate)
            {
                _isNeedCheckEffectFromDate = true;
                return;
            }
            if (e.OldValue == null) return;
            if (e.NewValue == null)
            {
                e.Cancel = true;
                return;
            }
            DateTime oldEffectFromDate = Convert.ToDateTime(e.OldValue);
            DateTime newEffectFromDate = Convert.ToDateTime(e.NewValue);
            DateTime minAllowDate = new DateTime();
            DateTime maxAllowDate = new DateTime();
            List<MaterialPriceHeader> materialPriceHeaderList = this.CurrDetail.MaterialPriceHeaders.Where(p => p.PriceType == this._currPriceTypeStr && p.Category == this._currCategoryStr && p.EffectFromDate < oldEffectFromDate).OrderBy(p => p.EffectFromDate).ToList();
            if (materialPriceHeaderList.Count > 0)
            {
                minAllowDate = materialPriceHeaderList[materialPriceHeaderList.Count - 1].EffectFromDate;
            }
            maxAllowDate = DateTime.Now.Date;
            if (minAllowDate != null && newEffectFromDate <= minAllowDate)
            {
                MessageBox.Show("修改当前单价项的[EffectFromDate]不能小于或等于[" + minAllowDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                e.Cancel = true;
                return;
            }
            if (maxAllowDate != null && newEffectFromDate >= maxAllowDate)
            {
                MessageBox.Show("修改当前单价项的[EffectFromDate]不能大于或等于[" + maxAllowDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                e.Cancel = true;
                return;
            }
        }

        #region Xsj20110525:加实现添加历史多单价而添加
        private void dateEdit_EffectEndDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (this.EffectEndDate != null)
            {
                DateTime effectFromDate = this.EffectStartDate.Value;
                if (e.NewValue != null && Convert.ToDateTime(e.NewValue).Date < effectFromDate)
                {
                    MessageBox.Show("修改当前单价项的[EffectEndDate]不能小于或等于[" + effectFromDate.ToString("yyyy/MM/dd") + "]，請確認！", "系統提示");
                    e.Cancel = true;
                }

            }
        }
        #endregion

    }
}
