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
    public partial class CommonGridForSinglePriceCtrl : UserControl
    {

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

        public void SetCurrencyVisible(bool visible)
        {
            this.lblCurrencyCaption.Visible = this.Currencylabel.Visible = visible;
        }

        private DataTable DataSourceDt_Standard = new DataTable();
        #region Xsj20110817:为完善历史多单价而注释掉
        //List<Detail.CupDetailCls> _ChosedCupDetail;
        #endregion
        #region Xsj20110817:为完善历史多单价而添加
        List<MaterialPriceHeader.CupDetailCls> _ChosedCupDetail;
        #endregion

        private MultPriceType _MultPriceType;

        private DataTable _CurrDataSourceDt;

        #region Xsj20110817:为完善历史多单价而添加
        public MaterialPriceHeader CurrMaterialPriceHeader { get; set; }
        #endregion


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

        public decimal? SinglePrice { get; set; }
        public int SingleRatio { get; set; }

        public CommonGridForSinglePriceCtrl()
        {
            InitializeComponent();
            this.gViewPrice.OptionsView.ColumnAutoWidth = false;

        }

        //DataTable
        #region Xsj20110817:为完善历史多单价而注释掉
        //public void CreatPriceDt(MultPriceType MultPriceType, string PriceTypeOption, Detail MIDcSource, String Category, List<Detail.CupDetailCls> ChosedCupDetail)
        #endregion
        #region Xsj20110817:为完善历史多单价而添加
        public void CreatPriceDt(MultPriceType MultPriceType, string PriceTypeOption, Detail MIDcSource, String Category, List<MaterialPriceHeader.CupDetailCls> ChosedCupDetail)
        #endregion
        {
            #region Xsj20110817:为完善历史多单价而注释掉
            //_ChosedCupDetail = MIDcSource.CupList.ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            _ChosedCupDetail = this.CurrMaterialPriceHeader.CupList;
            #endregion
            _MultPriceType = MultPriceType;
            CreatePriceDtAtionForShowSinglePriceMode(MultPriceType, PriceTypeOption, MIDcSource, Category);
        }

        private void CreatePriceDtAtionForShowSinglePriceMode(MultPriceType MultPriceType, string PriceTypeOption, Detail MIDcSource, String Category)
        {
            try
            {
                #region
                this.sBtnShowHideRatio.Text = "Hide Ratio";
                //清空原來的內容
                this.gCtrlPrice.DataSource = null;
                this.gViewPrice.Columns.Clear();

                //构造数据源Table 
                DataTable DataSourceDt = new DataTable();


                MakeUpMIDcPriceListDataSource(MIDcSource);



                if (MultPriceType == MultPriceType.ColorRangeSizeCup)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Cup", typeof(string));
                    #region

                    List<string> SizeList = currPriceClsList.Select(P => P.Size).Distinct().ToList();
                    foreach (string item in SizeList)
                    {
                        DataSourceDt.Columns.Add(item, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(item.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(item.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入Color/Cup数据源
                    var priceList = from val in currPriceClsList
                                    orderby val.ColorRange, val.Cup
                                    select new { Color = val.ColorRange, Cup = val.Cup };
                    priceList = priceList.Distinct();
                    foreach (var item in priceList)
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Color Range"] = item.Color;
                        Dr["Cup"] = item.Cup;
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        for (int j = 2; j < DataSourceDt.Columns.Count; j += 3)
                        {
                            string sizeCodeStr = (DataSourceDt.Columns[j].Caption.Trim()).ToString();
                            DataSourceDt.Rows[i][sizeCodeStr + "_Price"] = this.SinglePrice;
                            DataSourceDt.Rows[i][sizeCodeStr + "_Ratio"] = this.SingleRatio;
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
                    foreach (var item in currPriceClsList.Select(P => new { Color = P.ColorRange }).Distinct())
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Color Range"] = item.Color;
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        DataSourceDt.Rows[i]["Price"] = this.SinglePrice;
                        DataSourceDt.Rows[i]["Ratio"] = this.SingleRatio;
                    }
                    MakeColorPriceGridView(gViewPrice, DataSourceDt);
                    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                }
                else if (MultPriceType == MultPriceType.CupSize)   //Xsj110411:正确的是ColorSize而不是CupSize
                {
                    #region
                    DataSourceDt.Columns.Add("Color", typeof(string));
                    List<string> SizeList = currPriceClsList.Select(P => P.Size).Distinct().ToList(); // currPriceClsList.OrderBy(P => P.SizeCode).Select(P => P.SizeCode).Distinct().ToList();
                    foreach (string item in SizeList)
                    {
                        DataSourceDt.Columns.Add(item, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(item.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(item.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入数据源
                    var colorList = currPriceClsList.Select(P => new { Color = P.ColorRange }).ToList().Distinct();
                    foreach (var item in colorList)
                    {
                        DataRow Dr = DataSourceDt.NewRow();
                        Dr["Color"] = item.Color;
                        DataSourceDt.Rows.Add(Dr);
                    }
                    //寫入單價
                    for (int i = 0; i < DataSourceDt.Rows.Count; i++)
                    {
                        for (int j = 1; j < DataSourceDt.Columns.Count; j += 3)
                        {
                            string sizeCodeStr = (DataSourceDt.Columns[j].Caption.Trim()).ToString();
                            DataSourceDt.Rows[i][sizeCodeStr + "_Price"] = this.SinglePrice;
                            DataSourceDt.Rows[i][sizeCodeStr + "_Ratio"] = this.SingleRatio;
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
                NewBColumnPrice.DisplayFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
                NewBColumnPrice.DisplayFormat.FormatType = MaterialPrceFormat.FormatType;
                NewBColumnPrice.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Price";
                NewBColumnPrice.Visible = true;

                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnRatio.Caption = "R";
                NewBColumnRatio.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Ratio";
                NewBColumnRatio.Visible = true;
                NewBColumnRatio.ColumnEdit = this.riteRatio;

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
                if (gridCol.FieldName.IndexOf("_Ratio") == -1)
                {
                    gridCol.Width = FixSizeColWidth;
                }
                else
                {
                    gridCol.Width = _ratioColWidth;
                }

                if (gridCol.Name.IndexOf("_Ratio") != -1 && this.sBtnShowHideRatio.Text == "Hide Ratio")
                {
                    //默認隱藏Ratio列
                    gridCol.Visible = true;
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
            NewBColumnPrice.DisplayFormat.FormatString = MaterialPrceFormat.PriceFormatStr;
            NewBColumnPrice.DisplayFormat.FormatType = MaterialPrceFormat.FormatType;
            NewBColumnPrice.FieldName = "Price";
            NewBColumnPrice.Visible = true;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnRatio.Caption = "R";
            NewBColumnRatio.FieldName = "Ratio";
            NewBColumnRatio.Visible = true;
            NewBColumnRatio.ColumnEdit = this.riteRatio;

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
            CurrGView.Columns[2].Width = _ratioColWidth;
            //默認隱藏Ratio列
            CurrGView.Columns[2].Visible = true;
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
            NewBColumnCup.Caption = "Color";
            NewBColumnCup.FieldName = "Color";
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
                NewBColumnRatio.ColumnEdit = this.riteRatio;
               
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
                if (gridCol.FieldName.IndexOf("_Ratio") == -1)
                {
                    gridCol.Width = FixSizeColWidth;
                }
                else
                {
                    gridCol.Width = _ratioColWidth;
                }

                if (gridCol.Name.IndexOf("_Ratio") != -1 && this.sBtnShowHideRatio.Text == "Hide Ratio")
                {
                    //默認隱藏Ratio列
                    gridCol.Visible = true;
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
            }

            if (gViewPrice.GetRowCellValue(CurrRowIndex, RatioName) == null || gViewPrice.GetRowCellValue(CurrRowIndex, RatioName).ToString() == "" || gViewPrice.GetRowCellValue(CurrRowIndex, RatioName).ToString() == "0")
            {
                gViewPrice.SetRowCellValue(CurrRowIndex, RatioName, 1);
            }

            //計算加權平均值
            gViewPrice.CloseEditor();
            this.lblWavPrice.Text = WavPriceStr;

        }


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
            if (dt == null) return -1;
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

        #region 创建数据源
        //创建数据源
        private List<MaterialPrice> currPriceClsList = new List<MaterialPrice>();
        private void MakeUpMIDcPriceListDataSource(Detail MIDcSource)
        {
            //从选定的ColorRange/Size/Cup数据构建MIDcSource.PriceList数据源-20101105
            #region Xsj20110817:为完善历史多单价而注释掉
            //List<PH.MIDc.BO.Detail.ColorDetailCls> chosedColorDetail = MIDcSource.ColorList.Where(P => P.IsChosed).ToList();
            //List<PH.MIDc.BO.Detail.CupDetailCls> chosedCupDetail = MIDcSource.CupList.Where(P => P.IsChosed).ToList();
            //List<PH.MIDc.BO.Detail.SizeDetailCls> chosedSizeDetail = MIDcSource.SizeList.Where(P => P.IsChosed).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            List<PH.MIDc.BO.MaterialPriceHeader.ColorDetailCls> chosedColorDetail = this.CurrMaterialPriceHeader.ColorList.Where(P => P.IsChosed).ToList();
            List<PH.MIDc.BO.MaterialPriceHeader.CupDetailCls> chosedCupDetail = this.CurrMaterialPriceHeader.CupList.Where(P => P.IsChosed).ToList();
            List<PH.MIDc.BO.MaterialPriceHeader.SizeDetailCls> chosedSizeDetail = this.CurrMaterialPriceHeader.SizeList.Where(P => P.IsChosed).ToList();
            #endregion


            #region
            if (chosedColorDetail.Count > 0)
            {
                #region
                #region Xsj20110817:为完善历史多单价而注释掉
                //foreach (Detail.ColorDetailCls itemColor in chosedColorDetail)
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                foreach (MaterialPriceHeader.ColorDetailCls itemColor in chosedColorDetail)
                #endregion
                {
                    #region
                    if (chosedCupDetail.Count > 0)
                    {
                        #region
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //foreach (Detail.CupDetailCls itemCup in chosedCupDetail)
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        foreach (MaterialPriceHeader.CupDetailCls itemCup in chosedCupDetail)
                        #endregion
                        {
                            if (chosedSizeDetail.Count > 0)
                            {
                                #region Xsj20110817:为完善历史多单价而注释掉
                                //foreach (Detail.SizeDetailCls itemSize in chosedSizeDetail)
                                #endregion
                                #region Xsj20110817:为完善历史多单价而添加
                                foreach (MaterialPriceHeader.SizeDetailCls itemSize in chosedSizeDetail)
                                #endregion
                                {
                                    //Xsj101201:Standard价格实体
                                    AddMultPriceToMIDcSource("", itemColor.ColorCode, itemColor.Desc, itemCup.CupCode,
                                        itemCup.Desc, itemSize.SizeCode, itemSize.Desc);
                                }
                            }
                            else
                            {
                                //Xsj101201:Standard价格实体
                                AddMultPriceToMIDcSource("", itemColor.ColorCode, itemColor.Desc, itemCup.CupCode,
                                    itemCup.Desc, "ALL", "ALL");
                            }
                        }
                        #endregion
                    }
                    else
                    {
                        #region
                        if (chosedSizeDetail.Count > 0)
                        {
                            #region Xsj20110817:为完善历史多单价而注释掉
                            //foreach (Detail.SizeDetailCls itemSize in chosedSizeDetail)
                            #endregion
                            #region Xsj20110817:为完善历史多单价而添加
                            foreach (MaterialPriceHeader.SizeDetailCls itemSize in chosedSizeDetail)
                            #endregion
                            {
                                //Xsj101201:Standard价格实体
                                AddMultPriceToMIDcSource("", itemColor.ColorCode, itemColor.Desc, "ALL",
                                    "ALL", itemSize.SizeCode, itemSize.Desc);
                            }
                        }
                        else
                        {
                            //Xsj101201:Standard价格实体
                            AddMultPriceToMIDcSource("", itemColor.ColorCode, itemColor.Desc, "ALL",
                                "ALL", "ALL", "ALL");
                        }
                        #endregion
                    }
                    #endregion
                }
                #endregion
            }
            else
            {
                #region
                if (chosedCupDetail.Count > 0)
                {
                    #region
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //foreach (Detail.CupDetailCls itemCup in chosedCupDetail)
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    foreach (MaterialPriceHeader.CupDetailCls itemCup in chosedCupDetail)
                    #endregion
                    {
                        if (chosedSizeDetail.Count > 0)
                        {
                            #region Xsj20110817:为完善历史多单价而注释掉
                            //foreach (Detail.SizeDetailCls itemSize in chosedSizeDetail)
                            #endregion
                            #region Xsj20110817:为完善历史多单价而添加
                            foreach (MaterialPriceHeader.SizeDetailCls itemSize in chosedSizeDetail)
                            #endregion
                            {
                                //Xsj101201:Standard价格实体
                                AddMultPriceToMIDcSource("", "ALL", "ALL", itemCup.CupCode,
                                    itemCup.Desc, itemSize.SizeCode, itemSize.Desc);
                            }
                        }
                        else
                        {
                            //Xsj101201:Standard价格实体
                            AddMultPriceToMIDcSource("", "ALL", "ALL", itemCup.CupCode,
                                itemCup.Desc, "ALL", "ALL");
                        }
                    }
                    #endregion
                }
                else
                {
                    #region
                    if (chosedSizeDetail.Count > 0)
                    {
                        #region Xsj20110817:为完善历史多单价而注释掉
                        //foreach (Detail.SizeDetailCls itemSize in chosedSizeDetail)
                        #endregion
                        #region Xsj20110817:为完善历史多单价而添加
                        foreach (MaterialPriceHeader.SizeDetailCls itemSize in chosedSizeDetail)
                        #endregion
                        {
                            //Xsj101201:Standard价格实体
                            AddMultPriceToMIDcSource("", "ALL", "ALL", "ALL",
                                "ALL", itemSize.SizeCode, itemSize.Desc);
                        }
                    }
                    else
                    {
                        //Xsj101201:Standard价格实体
                        AddMultPriceToMIDcSource("", "ALL", "ALL", "ALL",
                            "ALL", "ALL", "ALL");
                    }
                    #endregion
                }
                #endregion
            }
            #endregion
        }
        //添加Mult单价
        private void AddMultPriceToMIDcSource(string Category, string ColorCode, string ColorDesc, string CupCode, string CupDesc, string SizeCode, string SizeDesc)
        {
            MaterialPrice MIDcPrice = new MaterialPrice();
            MIDcPrice.Category = Category;
            MIDcPrice.ColorRange = ColorCode;
            MIDcPrice.ColorRangeDesc = ColorDesc;
            MIDcPrice.Cup = CupCode;
            MIDcPrice.Size = SizeCode;
            MIDcPrice.Price = SinglePrice;
            MIDcPrice.Ratio = SingleRatio;
            currPriceClsList.Add(MIDcPrice);
        }
        #endregion
    }
}
