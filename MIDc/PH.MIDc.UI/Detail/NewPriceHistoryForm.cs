using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class NewPriceHistoryForm : PH.Platform.UI.CS.BaseForm
    {

        public PH.MIDc.BO.Detail CurrDetail;
        private MultPriceType _currMPType = new MultPriceType();
        #region Xsj20110817:为完善历史多单价而注释掉
        //private List<PH.MIDc.BO.ColorDetail> _ChosedColorDetail;
        //private List<PH.MIDc.BO.CupDetail> _ChosedCupDetail;
        //private List<PH.MIDc.BO.SizeDetail> _ChosedSizeDetail;
        #endregion
        #region Xsj20110817:为完善历史多单价而添加
        private List<PH.MIDc.BO.NewColorDetail> _ChosedColorDetail;
        private List<PH.MIDc.BO.NewCupDetail> _ChosedCupDetail;
        private List<PH.MIDc.BO.NewSizeDetail> _ChosedSizeDetail;
        #endregion


        #region Xsj20110817:为完善历史多单价而添加
        private MaterialPriceHeader _currMaterialPriceHeader;
        #endregion


        public NewPriceHistoryForm()
        {
            InitializeComponent();
        }

        private void NewPriceHistoryForm_Load(object sender, EventArgs e)
        {
            if (DesignMode) return;
            ShowDate();
        }

        //显示数据
        public void ShowDate()
        {
            if (this.CurrDetail == null) return;
            //显示历史单价项
            ShowHistoryPriceHeader();

            if (CurrDetail.MultiPriceOption != null)
            {
                switch (CurrDetail.MultiPriceOption.Value)
                {
                    case 1:
                        this._currMPType = MultPriceType.ColorRangeSizeCup;
                        break;
                    case 2:
                        this._currMPType = MultPriceType.ColorOnly;
                        break;
                    case 3:
                        this._currMPType = MultPriceType.CupSize;
                        break;
                }
            }
            //获取已选择的Color、Cup、Size
            #region Xsj20110817:为完善历史多单价而注释掉
            //MIDc.BO.MIDcDataContext midcContext = Platform.BO.ContextBuilder.CreateContext<MIDc.BO.MIDcDataContext>();
            //_ChosedColorDetail = (from a in CurrDetail.ColorDetails
            //                      join b in midcContext.ColorSizeCupRanges.Where(p => p.Category == "ColorRange") on a.Color equals b.DataCode into c
            //                      from d in c.DefaultIfEmpty(new ColorSizeCupRange { Seq = 0 })
            //                      orderby d.Seq
            //                      select a).ToList();

            //_ChosedCupDetail = (from a in CurrDetail.CupDetails
            //                    join b in midcContext.ColorSizeCupRanges.Where(p => p.Category == "Cup") on a.Cup equals b.DataCode into c
            //                    from d in c.DefaultIfEmpty(new ColorSizeCupRange { Seq = 0 })
            //                    orderby d.Seq
            //                    select a).ToList();

            //_ChosedSizeDetail = (from a in CurrDetail.SizeDetails
            //                     join b in midcContext.ColorSizeCupRanges.Where(p => p.Category == "Size") on a.Size equals b.DataCode into c
            //                     from d in c.DefaultIfEmpty(new ColorSizeCupRange { Seq = 0 })
            //                     orderby d.Seq.Value
            //                     select a).ToList();
            #endregion
            if (this.gViewHistoryPrice.FocusedRowHandle > 0)
            {
                RefreshDate(this.gViewHistoryPrice.FocusedRowHandle);
            }
        }


        //切换单价项MaterialPriceHeader时，显示对就的单价信息
        private void gViewHistoryPrice_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            RefreshDate(e.FocusedRowHandle);
        }

        private void RefreshDate(int RowIndex)
        {
            if (!this.gViewHistoryPrice.IsDataRow(RowIndex)) return;
            this.splitContainerControl1.Panel2.Controls.Clear();

            _currMaterialPriceHeader = this.gViewHistoryPrice.GetRow(RowIndex) as MaterialPriceHeader;
            if (_currMaterialPriceHeader == null) return;

            #region Xsj20110817:为完善历史多单价而添加
            MIDc.BO.MIDcDataContext midcContext = Platform.BO.ContextBuilder.CreateContext<MIDc.BO.MIDcDataContext>();
            _ChosedColorDetail = (from a in this._currMaterialPriceHeader.NewColorDetails
                                  join b in midcContext.ColorSizeCupRanges.Where(p => p.Category == "ColorRange") on a.Color equals b.DataCode into c
                                  from d in c.DefaultIfEmpty(new ColorSizeCupRange { Seq = 0 })
                                  orderby d.Seq
                                  select a).ToList();
 
            _ChosedCupDetail = (from a in this._currMaterialPriceHeader.NewCupDetails
                                join b in midcContext.ColorSizeCupRanges.Where(p => p.Category == "Cup") on a.Cup equals b.DataCode into c
                                from d in c.DefaultIfEmpty(new ColorSizeCupRange { Seq = 0 })
                                orderby d.Seq
                                select a).ToList();

            _ChosedSizeDetail = (from a in this._currMaterialPriceHeader.NewSizeDetails
                                 join b in midcContext.ColorSizeCupRanges.Where(p => p.Category == "Size") on a.Size equals b.DataCode into c
                                 from d in c.DefaultIfEmpty(new ColorSizeCupRange { Seq = 0 })
                                 orderby d.Seq.Value
                                 select a).ToList();
            #endregion
            ShowPriceInfo(_currMaterialPriceHeader);

            EditorStatusManager.EnableCtrl(this.splitContainerControl1.Panel2, false);
        }

        //显示导航的MaterialHeader信息
        public void ShowHistoryPriceHeader()
        {
            //Xsj20110815:应Jane Lai的要求，去掉以下过滤逻辑
            //var pHistory = (from val in CurrDetail.PriceHistories
            //                select val.SuppRef).Distinct();
            CurrDetail.MaterialPriceHeaders.Load();
            var mPHList = from val in CurrDetail.MaterialPriceHeaders
                          //where pHistory.Contains(val.SuppRef) ? val.EffectFromDate.Date > new DateTime(2011, 3, 1) : true
                          orderby val.Category, val.EffectFromDate
                          select val;

            this.bindingSource1.DataSource = mPHList;
            //展开所有分组
            this.gViewHistoryPrice.ExpandAllGroups();
        }

        //显示价格
        private void ShowPriceInfo(PH.MIDc.BO.MaterialPriceHeader CurrMaterialPriceHeader)
        {
            CurrMaterialPriceHeader.ColorList = null;

            #region Xsj20110817:为完善历史多单价而注释掉
            //List<MaterialPrice> ValList = CurrDetail.MaterialPrices.Where(P => P.PriceType == CurrMaterialPriceHeader.PriceType 
            //    && P.Category == CurrMaterialPriceHeader.Category && P.EffectFromDate.Date == CurrMaterialPriceHeader.EffectFromDate.Date).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            List<MaterialPrice> ValList = CurrMaterialPriceHeader.MaterialPrices.ToList();
            #endregion
            if (ValList.Count == 0) return;

            if (!(CurrMaterialPriceHeader.IsMultiPrice ?? false))
            {
                //SinglePriceEditor
                CommonSinglePriceEditor newComSinglePriceEditor = new CommonSinglePriceEditor();
                newComSinglePriceEditor.Name = "OutComSinglePriceEditor" + CurrMaterialPriceHeader.PriceType + CurrMaterialPriceHeader.Category;
                newComSinglePriceEditor.Dock = DockStyle.Fill;
                newComSinglePriceEditor.Currency = CurrDetail.Currency;
                newComSinglePriceEditor.CurrMIDcSource = CurrDetail;
                newComSinglePriceEditor.bindingSource1.DataSource = ValList[0];
                //Xsj20110920
                newComSinglePriceEditor.CurrUsedMaterialPriceHeader = CurrMaterialPriceHeader;
                newComSinglePriceEditor.CreatShowSinglePrice();
                this.splitContainerControl1.Panel2.Controls.Add(newComSinglePriceEditor);
            }
            else
            {
                //MultiPriceEditor
                DataTable CurrDataTable = new DataTable();
                CurrDataTable.TableName = "DataTable_" + CurrMaterialPriceHeader.PriceType + "_" + CurrMaterialPriceHeader.Category;
                CommonGridCtrl NewMultPriceGridCtrl = new CommonGridCtrl();
                NewMultPriceGridCtrl.CurrMaterialPriceHeader = CurrMaterialPriceHeader;
                NewMultPriceGridCtrl.Currency = CurrDetail.Currency;
                NewMultPriceGridCtrl.Name = "OutComMultPriceEditor" + CurrMaterialPriceHeader.PriceType + CurrMaterialPriceHeader.Category;
                NewMultPriceGridCtrl.Dock = DockStyle.Fill;
                List<MaterialPrice> ShowPriceList = MakeUpMIDcPriceListDataSource(CurrMaterialPriceHeader);
                NewMultPriceGridCtrl.CreatPriceDt(_currMPType, CurrMaterialPriceHeader.PriceType, CurrDataTable, CurrDetail, CurrMaterialPriceHeader.Category);
                this.splitContainerControl1.Panel2.Controls.Add(NewMultPriceGridCtrl);
            }
        }


        //构建单价信息
        private List<MaterialPrice> MakeUpMIDcPriceListDataSource(MaterialPriceHeader CurrMaterialPriceHeader)
        {
            List<MaterialPrice> ShowPriceList = new List<MaterialPrice>();
            List<MaterialPrice> InputedPriceList = new List<MaterialPrice>();

            #region Xsj20110817:为完善历史多单价而注释掉
            //InputedPriceList = CurrDetail.MaterialPrices.Where(P => P.PriceType == CurrMaterialPriceHeader.PriceType && P.Category == CurrMaterialPriceHeader.Category 
            //    && P.EffectFromDate.Date  == CurrMaterialPriceHeader.EffectFromDate.Date ).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            InputedPriceList = CurrMaterialPriceHeader.MaterialPrices.ToList();
            #endregion
            //已錄入的Category列表
            List<string> CategoryList = new List<string>();
            CategoryList.Clear();
            CategoryList = InputedPriceList.Select(P => P.Category).Distinct().ToList();
            if (CategoryList.Count == 0) return null;

            if (CurrDetail.MultiPriceOption == 1) //ColorCupSize
            {
                #region
                #region Xsj20110817:为完善历史多单价而注释掉
                /*
                foreach (PH.MIDc.BO.ColorDetail itemColor in _ChosedColorDetail)
                {
                    if (_ChosedCupDetail.Count > 0)
                    {
                        foreach (PH.MIDc.BO.CupDetail itemCup in _ChosedCupDetail)
                        {
                            foreach (PH.MIDc.BO.SizeDetail itemSize in _ChosedSizeDetail)
                            {
                                foreach (string CategoryItem in CategoryList)
                                {
                                    PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                                    MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                                    MIDcPrice.Category = CategoryItem;
                                    MIDcPrice.ColorRange = itemColor.Color;
                                    MIDcPrice.ColorRangeDesc = itemColor.Description;
                                    MIDcPrice.Cup = itemCup.Cup;
                                    //MIDcPrice.CupDesc = itemCup.Description;
                                    MIDcPrice.Size = itemSize.Size;
                                    //MIDcPrice.SizeDesc = itemSize.Description;
                                    ShowPriceList.Add(MIDcPrice);
                                }
                            }
                        }
                    }
                    else
                    {
                        foreach (PH.MIDc.BO.SizeDetail itemSize in _ChosedSizeDetail)
                        {
                            foreach (string CategoryItem in CategoryList)
                            {
                                PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                                MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                                MIDcPrice.Category = CategoryItem;
                                MIDcPrice.ColorRange = itemColor.Color;
                                MIDcPrice.ColorRangeDesc = itemColor.Description;
                                MIDcPrice.Cup = "ALL";
                                //MIDcPrice.CupDesc = "ALL";
                                MIDcPrice.Size = itemSize.Size;
                                //MIDcPrice.SizeDesc = itemSize.Description;
                                ShowPriceList.Add(MIDcPrice);
                            }
                        }
                    }

                }
                */
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                foreach (PH.MIDc.BO.NewColorDetail itemColor in _ChosedColorDetail)
                {
                    if (_ChosedCupDetail.Count > 0)
                    {
                        foreach (PH.MIDc.BO.NewCupDetail itemCup in _ChosedCupDetail)
                        {
                            foreach (PH.MIDc.BO.NewSizeDetail itemSize in _ChosedSizeDetail)
                            {
                                foreach (string CategoryItem in CategoryList)
                                {
                                    PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                                    MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                                    MIDcPrice.Category = CategoryItem;
                                    MIDcPrice.ColorRange = itemColor.Color;
                                    MIDcPrice.ColorRangeDesc = itemColor.Description;
                                    MIDcPrice.Cup = itemCup.Cup;
                                    //MIDcPrice.CupDesc = itemCup.Description;
                                    MIDcPrice.Size = itemSize.Size;
                                    //MIDcPrice.SizeDesc = itemSize.Description;
                                    ShowPriceList.Add(MIDcPrice);
                                }
                            }
                        }
                    }
                    else
                    {
                        foreach (PH.MIDc.BO.NewSizeDetail itemSize in _ChosedSizeDetail)
                        {
                            foreach (string CategoryItem in CategoryList)
                            {
                                PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                                MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                                MIDcPrice.Category = CategoryItem;
                                MIDcPrice.ColorRange = itemColor.Color;
                                MIDcPrice.ColorRangeDesc = itemColor.Description;
                                MIDcPrice.Cup = "ALL";
                                //MIDcPrice.CupDesc = "ALL";
                                MIDcPrice.Size = itemSize.Size;
                                //MIDcPrice.SizeDesc = itemSize.Description;
                                ShowPriceList.Add(MIDcPrice);
                            }
                        }
                    }

                }
                #endregion
                #endregion
            }
            else if (CurrDetail.MultiPriceOption == 2)
            {
                #region
                #region Xsj20110817:为完善历史多单价而注释掉
                //foreach (PH.MIDc.BO.ColorDetail itemColor in _ChosedColorDetail)
                //{
                //    foreach (string CategoryItem in CategoryList)
                //    {
                //        PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                //        MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                //        MIDcPrice.Category = CategoryItem;
                //        MIDcPrice.ColorRange = itemColor.Color;
                //        MIDcPrice.ColorRangeDesc = itemColor.Description;
                //        MIDcPrice.Cup = "ALL";
                //        //MIDcPrice.CupDesc = "ALL";
                //        MIDcPrice.Size = "ALL";
                //        //MIDcPrice.SizeDesc = "ALL";
                //        ShowPriceList.Add(MIDcPrice);
                //    }
                //}
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                foreach (PH.MIDc.BO.NewColorDetail itemColor in _ChosedColorDetail)
                {
                    foreach (string CategoryItem in CategoryList)
                    {
                        PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                        MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                        MIDcPrice.Category = CategoryItem;
                        MIDcPrice.ColorRange = itemColor.Color;
                        MIDcPrice.ColorRangeDesc = itemColor.Description;
                        MIDcPrice.Cup = "ALL";
                        //MIDcPrice.CupDesc = "ALL";
                        MIDcPrice.Size = "ALL";
                        //MIDcPrice.SizeDesc = "ALL";
                        ShowPriceList.Add(MIDcPrice);
                    }
                }
                #endregion
                #endregion
            }
            else if (CurrDetail.MultiPriceOption == 3)
            {
                #region

                #region Xsj20110817:为完善历史多单价而注释掉
                //foreach (PH.MIDc.BO.SizeDetail itemSize in _ChosedSizeDetail)
                //{
                //    if (_ChosedCupDetail.Count > 0)
                //    {
                //        foreach (PH.MIDc.BO.CupDetail itemCup in _ChosedCupDetail)
                //        {
                //            foreach (string CategoryItem in CategoryList)
                //            {
                //                PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                //                MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                //                MIDcPrice.Category = CategoryItem;
                //                MIDcPrice.ColorRange = "ALL";
                //                MIDcPrice.ColorRangeDesc = "ALL";
                //                MIDcPrice.Cup = itemCup.Cup;
                //                //MIDcPrice.CupDesc =  itemCup.Description;
                //                MIDcPrice.Size = itemSize.Size;
                //                //MIDcPrice.SizeDesc = itemSize.Description;
                //                ShowPriceList.Add(MIDcPrice);
                //            }
                //        }
                //    }
                //    else
                //    {
                //        foreach (string CategoryItem in CategoryList)
                //        {
                //            PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                //            MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                //            MIDcPrice.Category = CategoryItem;
                //            MIDcPrice.ColorRange = "ALL";
                //            MIDcPrice.ColorRangeDesc = "ALL";
                //            MIDcPrice.Cup = "ALL";
                //            //MIDcPrice.CupDesc = "ALL";
                //            MIDcPrice.Size = itemSize.Size;
                //            //MIDcPrice.SizeDesc = itemSize.Description;
                //            ShowPriceList.Add(MIDcPrice);
                //        }
                //    }
                //}
                #endregion
                #region Xsj20110817:为完善历史多单价而添加
                foreach (PH.MIDc.BO.NewSizeDetail itemSize in _ChosedSizeDetail)
                {
                    if (_ChosedCupDetail.Count > 0)
                    {
                        foreach (PH.MIDc.BO.NewCupDetail itemCup in _ChosedCupDetail)
                        {
                            foreach (string CategoryItem in CategoryList)
                            {
                                PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                                MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                                MIDcPrice.Category = CategoryItem;
                                MIDcPrice.ColorRange = "ALL";
                                MIDcPrice.ColorRangeDesc = "ALL";
                                MIDcPrice.Cup = itemCup.Cup;
                                //MIDcPrice.CupDesc =  itemCup.Description;
                                MIDcPrice.Size = itemSize.Size;
                                //MIDcPrice.SizeDesc = itemSize.Description;
                                ShowPriceList.Add(MIDcPrice);
                            }
                        }
                    }
                    else
                    {
                        foreach (string CategoryItem in CategoryList)
                        {
                            PH.MIDc.BO.MaterialPrice MIDcPrice = new MaterialPrice();
                            MIDcPrice.PriceType = CurrMaterialPriceHeader.PriceType;
                            MIDcPrice.Category = CategoryItem;
                            MIDcPrice.ColorRange = "ALL";
                            MIDcPrice.ColorRangeDesc = "ALL";
                            MIDcPrice.Cup = "ALL";
                            //MIDcPrice.CupDesc = "ALL";
                            MIDcPrice.Size = itemSize.Size;
                            //MIDcPrice.SizeDesc = itemSize.Description;
                            ShowPriceList.Add(MIDcPrice);
                        }
                    }
                }
                #endregion

                #endregion
            }
            #region
            foreach (PH.MIDc.BO.MaterialPrice item_Old in InputedPriceList)
            {
                foreach (PH.MIDc.BO.MaterialPrice item_New in ShowPriceList)
                {
                    if ((item_Old.PriceType == CurrMaterialPriceHeader.PriceType && item_Old.ColorRange == item_New.ColorRange && item_Old.Cup == item_New.Cup && item_Old.Size == item_New.Size && item_Old.Category == item_New.Category)
                        || (item_Old.PriceType == CurrMaterialPriceHeader.PriceType && item_Old.ColorRange == item_New.ColorRange && item_Old.Cup == item_New.Cup && item_Old.Size == item_New.Size && CurrMaterialPriceHeader.PriceType == MaterialPriceType.Standard.ToString()))
                    {
                        item_New.Price = item_Old.Price;
                        item_New.Ratio = item_Old.Ratio;
                        item_New.EffectFromDate = item_Old.EffectFromDate.Date;
                        item_New.EffectEndDate = item_Old.EffectEndDate;
                    }
                }
            }
            #endregion

            return ShowPriceList;
        }
    }
}
