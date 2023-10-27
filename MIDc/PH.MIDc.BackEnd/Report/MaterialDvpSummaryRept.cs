using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;

namespace PH.MIDc.BackEnd
{
    public partial class MaterialDvpSummaryRept : DevExpress.XtraReports.UI.XtraReport
    {
        public MaterialDvpSummaryRept()
        {
            InitializeComponent();

            // assigning the custom formatter
            fieldSizeDesc.ValueFormat.Format = new PivotSizeCustomFormatter();
            fieldSizeDesc.ValueFormat.FormatType = DevExpress.Utils.FormatType.Custom;
        }


        //Xsj20110401:detailBand显示前,指定xrPivotGrid1的数据源.xrPivotGrid1的数据源根据Detail而变化
        private void detailBand2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            PH.MIDc.BO.Detail detail = this.detailReportBand1.GetCurrentRow() as PH.MIDc.BO.Detail;
            if (detail == null) return;
            // PH.MIDc.BO.Detail  detail = this.bindingSource3.Current as PH.MIDc.BO.Detail ;

            CompositionReportForMaterialDvpSumRept r = new CompositionReportForMaterialDvpSumRept();
            var cds = from a in detail.CompositionDetails
                      where (a.Per ?? 0) > 0
                      select a;
            r.DataSource = detail.CompositionDetails;
            this.xrSubreport1.ReportSource = r;

            //Xsj20110812:在多单价模式下，只打印当前使用中的标准单价
            PH.MIDc.BO.PriceHeaderInfo pHInfo = new PH.MIDc.BO.PriceHeaderInfo();
            PH.MIDc.BO.MaterialPriceHeader detailMPH = pHInfo.GetCurrPriceHeader(detail, PH.MIDc.BO.MaterialPriceType.Standard.ToString(), "");
            if (detailMPH == null) return;
            #region Xsj20110817:为完善历史多单价而注释掉
            //List<PH.MIDc.BO.MaterialPrice> mPList = detail.MaterialPrices.Where(p => p.SuppRef == detailMPH.SuppRef && p.PriceType == detailMPH.PriceType && p.Category == detailMPH.Category
            //    && p.EffectFromDate.Date == detailMPH.EffectFromDate.Date).ToList();
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            List<PH.MIDc.BO.MaterialPrice> mPList = detailMPH.MaterialPrices.ToList();
            #endregion
            if (mPList.Count == 0) return;

            //如果Cup全为ALL,则隐藏Cup列
            List<PH.MIDc.BO.MaterialPrice> detailList = (from val in mPList //detail.MaterialPrices
                                                         where val.CupDesc != "ALL"
                                                          && val.PriceType == "Standard"
                                                         select val).ToList();

            //List<PH.MIDc.BO.MaterialPrice> mps = (from val in mPList //detail.MaterialPrices
            //                                      where val.PriceType == "Standard"
            //                                      select val).ToList<PH.MIDc.BO.MaterialPrice>();
            //Xsj20110812:注释掉上一语句，添加下一语句
            PH.MIDc.BO.MIDcDataContext MIDcContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var ColorVar = from a in MIDcContext.ColorSizeCupRanges
                           where a.Category == "ColorRange"
                           orderby a.Seq
                           select new { ColorCode = a.DataCode, ColorName = "", Desc = a.DataCode, IsRange = a.IsRange, Seq = a.Seq };

            var CupVar = from a in MIDcContext.ColorSizeCupRanges
                         where a.Category == "Cup"
                         orderby a.Seq
                         select new { CupCode = a.DataCode, CupName = "", Desc = a.DataCode, IsRange = a.IsRange, Seq = a.Seq };
            //ColorSeq
            List<PH.MIDc.BO.MaterialPrice> mps = new List<PH.MIDc.BO.MaterialPrice>();
            //if (ColorVar.Count() > 0)
            //{
            mps = (from a in mPList
                   join b in ColorVar on a.ColorRange equals b.ColorCode into c
                   from d in c.DefaultIfEmpty()
                   orderby d == null ? 0 : (d.Seq ?? 0)
                   where a.PriceType == "Standard"
                   select new PH.MIDc.BO.MaterialPrice
                   {
                       SuppRef = a.SuppRef,
                       PriceType = a.PriceType,
                       Category = a.Category,
                       EffectFromDate = a.EffectFromDate,
                       EffectEndDate = a.EffectEndDate,
                       Price = a.Price,
                       Ratio = a.Ratio,
                       ColorRange = a.ColorRange,
                       Cup = a.Cup,
                       Size = a.Size,
                       ColorSeq = (d == null ? 0 : (d.Seq ?? 0)),
                       #region Xsj20110817:为完善历史多单价而注释掉
                       //Detail = a.Detail
                       #endregion
                       #region Xsj20110817:为完善历史多单价而添加
                       MaterialPriceHeader = a.MaterialPriceHeader,
                       #endregion

                       #region 應Jane Lai和王生的討論結果要求，在單價框中添加帀別的顯示
                       Currency =detail.SampleOrder.Currency
                       #endregion
                   }).ToList<PH.MIDc.BO.MaterialPrice>();
            //}
            //if (CupVar.Count() > 0)
            //{
            ////CupSeq
            mps = (from a in mps
                   join b in CupVar on a.Cup equals b.CupCode into c
                   from d in c.DefaultIfEmpty()
                   orderby a.ColorSeq, (d == null ? 0 : (d.Seq ?? 0)) //
                   where a.PriceType == "Standard"
                   select new PH.MIDc.BO.MaterialPrice
                   {
                       SuppRef = a.SuppRef,
                       PriceType = a.PriceType,
                       Category = a.Category,
                       EffectFromDate = a.EffectFromDate,
                       EffectEndDate = a.EffectEndDate,
                       Price = a.Price,
                       Ratio = a.Ratio,
                       ColorRange = a.ColorRange,
                       Cup = a.Cup,
                       Size = a.Size,
                       ColorSeq = a.ColorSeq,
                       CupSeq = (d == null ? 0 : (d.Seq ?? 0)),
                       #region Xsj20110817:为完善历史多单价而注释掉
                       //Detail = a.Detail
                       #endregion
                       #region Xsj20110817:为完善历史多单价而添加
                       MaterialPriceHeader = a.MaterialPriceHeader,
                       #endregion
                       #region 應Jane Lai和王生的討論結果要求，在單價框中添加帀別的顯示
                       Currency =detail.SampleOrder.Currency
                       #endregion
                   }).ToList<PH.MIDc.BO.MaterialPrice>();
            //}

            foreach (PH.MIDc.BO.MaterialPrice a in mps)
            {
                if (a.Cup == "ALL") a.Cup = "";
                if (a.Size == "ALL") a.Size = "Supplier";
            }
            this.bindingSource2.DataSource = mps;

            if (detailList.Count == 0)
            {
                this.xrPivotGrid1.Fields["CupDesc"].Visible = false;
            }
            else
            {
                string a = this.xrPivotGrid1.Fields["CupDesc"].Caption;
                this.xrPivotGrid1.Fields["CupDesc"].Visible = true;
            }
            //隐藏统计列
            this.xrPivotGrid1.OptionsView.ShowColumnTotals = false;
            this.xrPivotGrid1.OptionsView.ShowColumnGrandTotals = false;
            this.xrPivotGrid1.OptionsView.ShowRowTotals = false;
            this.xrPivotGrid1.OptionsView.ShowRowGrandTotals = false;
            this.xrPivotGrid1.OptionsView.ShowTotalsForSingleValues = false;

            this.xrPivotGrid1.Appearance.FieldValue.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
        }
        private void detailBand2_AfterPrint(object sender, EventArgs e)
        {
            //this.bindingSource3.MoveNext();
        }

        //Xsj20110401:detailReportBand1显示前,指定期数据源
        private void detailReportBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MIDc.BO.SampleOrder sampleOrder = this.GetCurrentRow() as PH.MIDc.BO.SampleOrder;
            this.bindingSource3.DataSource = sampleOrder.Details;
        }


    }
}
