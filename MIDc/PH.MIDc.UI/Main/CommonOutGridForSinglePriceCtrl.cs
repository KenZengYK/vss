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

namespace PH.MIDc.UI
{
    public partial class CommonOutGridForSinglePriceCtrl : UserControl
    {
        public CommonOutGridForSinglePriceCtrl()
        {
            InitializeComponent();
            this.gViewPrice.OptionsView.ColumnAutoWidth = false;
        }

        private int FixColorColWidth = 100;
        private int FixCupColWidth = 60;
        private int FixSizeColWidth = 60;

        private int _ratioColWidth = 30;

        private DataTable DataSourceDt_Standard = new DataTable();
        private DataTable DataSourceDt_CustomerFavor = new DataTable();
        private DataTable DataSourceDt_Volume = new DataTable();
        private DataTable DataSourceDt_Period = new DataTable();
        List<PH.MIDc.BO.CupDetail> _ChosedCupDetail = new List<CupDetail>();


        public double? SinglePrice { get; set; }
        public int SingleRatio { get; set; }

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

        public Detail _currDetail { get; set; }


        //DataTable
        public void CreatPriceDt(MultPriceType MultPriceType, string PriceTypeOption, Detail currDetail)
        {
            _currDetail = currDetail;
            _ChosedCupDetail = (from val in currDetail.CupDetails
                                where !string.IsNullOrEmpty(val.Cup) && val.Cup.Trim() != "ALL"
                                select val).ToList();
            CreatePriceDtAtion(MultPriceType, PriceTypeOption);
        }
        List<MaterialPrice> PriceList = new List<MaterialPrice>();
        private void CreatePriceDtAtion(MultPriceType CurrMultPriceType, string CurrMaterialPriceType)
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

                //Xsj20110412  
                MakeUpMIDcPriceListDataSource();

                if (CurrMultPriceType == MultPriceType.ColorRangeSizeCup)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Cup", typeof(string));
                    #region

                    PH.MIDc.BO.MIDcDataContext dc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

                    List<string> SizeList = currPriceClsList.Select(P => P.Size).Distinct().ToList();
                    List<PH.MIDc.BO.ColorSizeCupRange> colorSizeCupRangeList = new List<ColorSizeCupRange>();
                    if (SizeList.Count > 0)
                    {
                        colorSizeCupRangeList = (from val in dc.ColorSizeCupRanges
                                                 where val.Category == "SIZE" && SizeList.Contains(val.DataCode)
                                                 orderby val.Seq
                                                 select val).ToList();
                    }
                    if (colorSizeCupRangeList.Count == 0) //没有选择SIZE
                    {
                        ColorSizeCupRange colorSizeRange = new ColorSizeCupRange();
                        colorSizeRange.DataCode = "ALL";
                        colorSizeRange.Seq = 0;
                        colorSizeCupRangeList.Insert(0, colorSizeRange);
                    }

                    foreach (PH.MIDc.BO.ColorSizeCupRange item in colorSizeCupRangeList)
                    {
                        string sizeStr = item.DataCode;
                        DataSourceDt.Columns.Add(sizeStr, typeof(decimal));                           //Xsj101130:記錄Size
                        DataSourceDt.Columns.Add(sizeStr.Trim() + "_Price", typeof(decimal));         //Xsj101130:記錄Price
                        DataSourceDt.Columns.Add(sizeStr.Trim() + "_Ratio", typeof(decimal));         //Xsj101130:記錄Ratio
                    }
                    //写入Color/Cup数据源
                    foreach (var item in currPriceClsList.Select(P => new { Color = P.ColorRangeDesc, Cup = P.Cup }).Distinct())
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
                else if (CurrMultPriceType == MultPriceType.ColorOnly)
                {
                    #region
                    DataSourceDt.Columns.Add("Color Range", typeof(string));
                    DataSourceDt.Columns.Add("Price", typeof(decimal));
                    DataSourceDt.Columns.Add("Ratio", typeof(int));
                    //写入数据源
                    foreach (var item in currPriceClsList.Select(P => new { Color = P.ColorRangeDesc }).Distinct())
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
                    MakeColorPriceGridView(this.gViewPrice, DataSourceDt);
                    MakeColorPriceColumnStyle(this.gCtrlPrice, this.gViewPrice, DataSourceDt);
                    #endregion
                }
                else if (CurrMultPriceType == MultPriceType.CupSize)
                {
                    #region
                    DataSourceDt.Columns.Add("Color", typeof(string));
                    List<string> SizeList = currPriceClsList.Select(P => P.Size).Distinct().ToList(); // PriceList.OrderBy(P => P.Size).Select(P => P.Size).Distinct().ToList();
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
                NewBColumnPrice.Width = 150;
                NewBColumnPrice.Caption = "Price";
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
                gridCol.OptionsColumn.AllowEdit = false;
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
                        //if (this._ChosedCupDetail.Count == 0) gridCol.Visible = false;
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

                //默認显示Ratio列
                if (gridCol.Name.IndexOf("_Ratio") != -1 && this.sBtnShowHideRatio.Text == "Hide Ratio")
                {
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
            NewBColumnColor.OptionsColumn.AllowEdit = false;
            NewBColumnColor.Visible = true;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnPrice.Caption = "Price";
            NewBColumnPrice.FieldName = "Price";
            NewBColumnPrice.OptionsColumn.AllowEdit = false;
            NewBColumnPrice.Visible = true;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            NewBColumnRatio.Caption = "R";
            NewBColumnRatio.FieldName = "Ratio";
            NewBColumnRatio.Width = _ratioColWidth;
            NewBColumnRatio.OptionsColumn.AllowEdit = false;
            NewBColumnRatio.Visible = true;
            CurrGView.Columns.Add(NewBColumnColor);
            CurrGView.Columns.Add(NewBColumnPrice);
            CurrGView.Columns.Add(NewBColumnRatio);
            BasicInfoBand.Width = 150;
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
            //默認显示Ratio列
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
                NewBColumnPrice.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Price";
                NewBColumnPrice.Visible = true;
                NewBColumnPrice.OptionsColumn.AllowEdit = false;
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn NewBColumnRatio = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                NewBColumnRatio.Caption = "R";
                NewBColumnRatio.FieldName = CurrGView.Bands[i].Caption.Trim() + "_Ratio"; 
                NewBColumnRatio.Visible = true;
                NewBColumnRatio.OptionsColumn.AllowEdit = false;
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
                gridCol.OptionsColumn.AllowEdit = false;
                if (i == 0)
                {
                    gridCol.Width = FixCupColWidth;
                    gridCol.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
                    gridCol.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
                    gridCol.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
                    //if (this._ChosedCupDetail.Count == 0)
                    //{
                    //    CurrGView.Bands[0].Visible = false;
                    //    gridCol.Visible = false;
                    //}
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
                //默認显示Ratio列
                if (gridCol.Name.IndexOf("_Ratio") != -1 && this.sBtnShowHideRatio.Text == "Hide Ratio")
                {
                    gridCol.Visible = true;
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


        #region 创建数据源
        //创建数据源
        private List<MIDc.BO.MaterialPrice> currPriceClsList = new List<MIDc.BO.MaterialPrice>();
        private void MakeUpMIDcPriceListDataSource()
        {
            //从选定的ColorRange/Size/Cup数据构建MIDcSource.PriceList数据源-20101105
            List<PH.MIDc.BO.ColorDetail> chosedColorDetail = this._currDetail.ColorDetails.ToList();
            List<PH.MIDc.BO.CupDetail> chosedCupDetail = this._currDetail.CupDetails.ToList();
            List<PH.MIDc.BO.SizeDetail> chosedSizeDetail = this._currDetail.SizeDetails.ToList();
            currPriceClsList.Clear();
            if (chosedColorDetail.Count > 0)
            {
                #region
                foreach (PH.MIDc.BO.ColorDetail itemColor in chosedColorDetail)
                {
                    #region
                    if (chosedCupDetail.Count > 0)
                    {
                        #region
                        foreach (PH.MIDc.BO.CupDetail itemCup in chosedCupDetail)
                        {
                            #region
                            if (chosedSizeDetail.Count > 0)
                            {
                                foreach (PH.MIDc.BO.SizeDetail itemSize in chosedSizeDetail)
                                {
                                    //Xsj101201:Standard价格实体
                                    AddMultPriceToMIDcSource("", itemColor.Color, itemColor.Color, itemCup.Cup,
                                        itemCup.Cup, itemSize.Size, itemSize.Size);
                                }
                            }
                            else
                            {
                                AddMultPriceToMIDcSource("", itemColor.Color, itemColor.Color, itemCup.Cup,
                                            itemCup.Cup, "ALL", "ALL");
                            }
                            #endregion
                        }
                        #endregion
                    }
                    else
                    {
                        #region
                        if (chosedSizeDetail.Count > 0)
                        {
                            foreach (PH.MIDc.BO.SizeDetail itemSize in chosedSizeDetail)
                            {
                                AddMultPriceToMIDcSource("", itemColor.Color, itemColor.Color, "ALL",
                                    "ALL", itemSize.Size, itemSize.Size);
                            }
                        }
                        else
                        {
                            AddMultPriceToMIDcSource("", itemColor.Color, itemColor.Color, "ALL",
                                "ALL", "ALL", "ALL");
                        }
                        #endregion
                    }
                    #endregion
                }
                #endregion
            }
            else if (chosedCupDetail.Count > 0)
            {
                #region
                foreach (PH.MIDc.BO.CupDetail itemCup in chosedCupDetail)
                {
                    if (chosedSizeDetail.Count > 0)
                    {
                        foreach (PH.MIDc.BO.SizeDetail itemSize in chosedSizeDetail)
                        {
                            //Xsj101201:Standard价格实体
                            AddMultPriceToMIDcSource("", "ALL", "ALL", itemCup.Cup,
                                itemCup.Cup, itemSize.Size, itemSize.Size);
                        }
                    }
                    else
                    {
                        //Xsj101201:Standard价格实体
                        AddMultPriceToMIDcSource("", "ALL", "ALL", itemCup.Cup,
                            itemCup.Cup, "ALL", "ALL");
                    }
                }
                #endregion
            }
            else
            {
                #region
                if (chosedSizeDetail.Count > 0)
                {
                    foreach (PH.MIDc.BO.SizeDetail itemSize in chosedSizeDetail)
                    {
                        //Xsj101201:Standard价格实体
                        AddMultPriceToMIDcSource("", "ALL", "ALL", "ALL", "ALL", itemSize.Size, itemSize.Size);
                    }
                }
                else
                {
                    //Xsj101201:Standard价格实体
                    AddMultPriceToMIDcSource("", "ALL", "ALL", "ALL", "ALL", "ALL", "ALL");
                }
                #endregion
            }

        }
        //添加Mult单价
        private void AddMultPriceToMIDcSource(string Category, string ColorCode, string ColorDesc, string CupCode, string CupDesc, string SizeCode, string SizeDesc)
        {
            MIDc.BO.MaterialPrice MIDcPrice = new MIDc.BO.MaterialPrice();
            MIDcPrice.Category = Category;
            MIDcPrice.ColorRange = ColorCode;
            MIDcPrice.ColorRangeDesc = ColorDesc;
            MIDcPrice.Cup = CupCode;
            MIDcPrice.Size = SizeCode;
            MIDcPrice.Price = Convert.ToDecimal(SinglePrice);
            MIDcPrice.Ratio = SingleRatio;
            currPriceClsList.Add(MIDcPrice);
        }
        #endregion

    }
}
