using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.MIDc.BO;

namespace PH.MIDc.BackEnd
{
    public partial class MaterialIdentityCertificateReport : DevExpress.XtraReports.UI.XtraReport
    {
        public MaterialIdentityCertificateReport()
        {
            InitializeComponent();
        }

        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MIDc.BO.Detail d = this.DetailReport.GetCurrentRow() as PH.MIDc.BO.Detail;
            if (d == null) return;

            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            if (d.Factory == "SL")
            {
                xrTable_SLAllINPrice.Visible = false;
            }
            #endregion

            PriceMatrixReportHeader r = new PriceMatrixReportHeader(d);
            this.subReport_Price.ReportSource = r;

            #region Xsj:20120229:應Janel Lai和王生的討論結果要求，添加版本控制

            PH.MIDc.BO.DetailChangeConfirm currDetailChangeConfirm = d.DetailChangeConfirms.Where(p => p.Version == p.Detail.Version).FirstOrDefault();
            if (currDetailChangeConfirm == null)
            {
                this.xrLbl_ChangeTypeMsg.Visible = false;
            }
            else
            {
                this.xrLbl_ChangeTypeMsg.Text = currDetailChangeConfirm.ChangeTypeMsg;
            }

            #endregion


            string formatStr = "#,##0.###";
            PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            PH.MIDc.BO.MaterialPriceHeader mPH;
            //Last
            mPH = pHInfo.GetLastPriceHeader(d, "Standard", "");
            this.xrTCel_SuppLast.Text = mPH == null ? "" : (d.SQMPriceLastByCondition.HasValue ? d.SQMPriceLastByCondition.Value.ToString(formatStr) : "N.A");
            this.xrTCel_OurLast.Text = mPH == null ? "" : d.AllInPriceLast.ToString(formatStr);
            this.xrTCel_SuppLastDifferent.Text = mPH == null ? "" : "0";
            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            this.xrTCel_SLSuppLastDifferent.Text = this.xrTCel_SuppLastDifferent.Text;
            #endregion

            this.xrTCellFreviousEffectFromDate.Text = mPH == null ? "" : mPH.EffectFromDate.ToString("MM/dd/yyyy");
            this.xrTCellFreviousEffectEndDate.Text = (mPH == null ? "" : (mPH.EffectEndDate == null ? "N.A" : mPH.EffectEndDate.Value.ToString("MM/dd/yyyy")));

            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            this.xrTCel_SLSuppLast.Text = mPH == null ? "" : (d.SLSQMPriceLastByCondition.HasValue ? d.SLSQMPriceLastByCondition.Value.ToString(formatStr) : "N.A");
            this.xrTCel_SLOurLast.Text = mPH == null ? "" : d.SLAllInPriceLast.ToString(formatStr);
            this.xrTCellSLFreviousEffectFromDate.Text = this.xrTCellFreviousEffectFromDate.Text;
            this.xrTCellSLFreviousEffectEndDate.Text = this.xrTCellFreviousEffectEndDate.Text;
            #endregion


            //Current
            mPH = pHInfo.GetCurrPriceHeader(d, "Standard", "");
            this.xrTCel_SuppCurrent.Text = mPH == null ? "" : (d.SQMPriceCurrentByCondition.HasValue ? d.SQMPriceCurrentByCondition.Value.ToString(formatStr) : "N.A");
            this.xrTCel_OurCurrent.Text = mPH == null ? "" : d.AllInPrice.ToString(formatStr);                        
            this.xrTCellCurrentEffectFromDate.Text = mPH == null ? "" : mPH.EffectFromDate.ToString("MM/dd/yyyy");
            this.xrTCellCurrentEffectEndDate.Text = (mPH == null ? "" : (mPH.EffectEndDate == null ? "N.A" : mPH.EffectEndDate.Value.ToString("MM/dd/yyyy")));

            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            this.xrTCel_SLSuppCurrent.Text = mPH == null ? "" : (d.SLSQMPriceCurrentByCondition.HasValue ? d.SLSQMPriceCurrentByCondition.Value.ToString(formatStr) : "N.A");
            this.xrTCel_SLOurCurrent.Text = mPH == null ? "" : d.SLAllInPrice.ToString(formatStr);
            this.xrTCellSLCurrentEffectFromDate.Text = this.xrTCellCurrentEffectFromDate.Text;
            this.xrTCellSLCurrentEffectEndDate.Text = this.xrTCellCurrentEffectEndDate.Text;
            #endregion

            //Xsj20110831:计算单价变动百份比
            ShowDifferent(this.xrTCel_OurLast.Text, this.xrTCel_OurCurrent.Text, this.xrTCel_SuppCurrentDifferent, formatStr, mPH);
            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            ShowDifferent(this.xrTCel_SLOurLast.Text, this.xrTCel_SLOurCurrent.Text, this.xrTCel_SLSuppCurrentDifferent, formatStr, mPH);
            //this.xrTCel_SLSuppCurrentDifferent.Text = this.xrTCel_SuppCurrentDifferent.Text;
            #endregion

            //Future 
            mPH = pHInfo.GetFuturePriceHeader(d, "Standard", "");
            this.xrTCel_SuppFuture.Text = mPH == null ? "" : (d.SQMPriceFutureByCondition.HasValue ? d.SQMPriceFutureByCondition.Value.ToString(formatStr) : "N.A");
            this.xrTCel_OurFuture.Text = mPH == null ? "" : d.AllInPriceFuture.ToString(formatStr);
            this.xrTCellFutureEffectFromDate.Text = mPH == null ? "" : mPH.EffectFromDate.ToString("MM/dd/yyyy");
            this.xrTCellFutureEffectEndDate.Text = (mPH == null ? "" : (mPH.EffectEndDate == null ? "N.A" : mPH.EffectEndDate.Value.ToString("MM/dd/yyyy")));
            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            this.xrTCel_SLSuppFuture.Text = mPH == null ? "" : (d.SLSQMPriceFutureByCondition.HasValue ? d.SLSQMPriceFutureByCondition.Value.ToString(formatStr) : "N.A");
            this.xrTCel_SLOurFuture.Text = mPH == null ? "" : d.SLAllInPriceFuture.ToString(formatStr);
            this.xrTCellSLFutureEffectFromDate.Text = this.xrTCellFutureEffectFromDate.Text;
            this.xrTCellSLFutureEffectEndDate.Text = this.xrTCellFutureEffectEndDate.Text;
            #endregion
            //Xsj20110831:计算单价变动百份比
            ShowDifferent(this.xrTCel_OurCurrent.Text, this.xrTCel_OurFuture.Text, this.xrTCel_SuppFutureDifferent, formatStr, mPH);
            #region Xsj20120419:應王生的要求，獲取廠別為"SL"的SupplierProfile的IncontermsTransit記錄,用於計算標准ALLInPrice
            //this.xrTCel_SLSuppFutureDifferent.Text = this.xrTCel_SuppFutureDifferent.Text;
            ShowDifferent(this.xrTCel_SLOurCurrent.Text, this.xrTCel_SLOurFuture.Text, this.xrTCel_SLSuppFutureDifferent, formatStr, mPH);
            #endregion             
            
            //Xsj20110908:应JaneLai的要求，将Purchase Width - Usable的数据源由：bindingSource1 - UsableWidthS1 改为如下：             
            this.XRLabel_40.Text = d.UsableWidth.HasValue ? d.UsableWidth.Value.ToString("###,###,##0.####") + "MM" : "N.A";

            //Xsj20110915:应Janelai20110915上午10：35邮件的要求，添加当前单价项的背景色
            this.xrTableRow22.BackColor =this.xrTableRow13.BackColor = System.Drawing.Color.FromArgb(128, 248, 248);
            this.xrTableRow22.Font =this.xrTableRow13.Font = new Font("Arial", 8, FontStyle.Bold);


            this.xrTableRow19.Font =this.xrTableRow9.Font = new Font("Arial", 8, FontStyle.Bold);
            xrTableRow23.Font =this.xrTableRow14.Font = new Font("Arial", 8, FontStyle.Bold);
        }


        /// <summary>
        /// Xsj20110831：计算单价变动百份比
        /// </summary>
        /// <param name="Denominator"></param>
        /// <param name="Molecule"></param>
        /// <param name="XCel"></param>
        private void ShowDifferent(string LastPrice, string CurrentPrice, DevExpress.XtraReports.UI.XRTableCell XCel, string FormatStr, MaterialPriceHeader MPH)
        {
            if (MPH == null)
            {
                XCel.Text = "";
                return;
            }
            if (string.IsNullOrEmpty(LastPrice) || string.IsNullOrEmpty(CurrentPrice))
            {
                XCel.Text = "0";
                return;
            }
            decimal lPrice = Convert.ToDecimal(LastPrice);
            decimal cPrice = Convert.ToDecimal(CurrentPrice);

            decimal different = (cPrice - lPrice) / lPrice * 100;

            XCel.Text = (different > 0) ? ("+" + different.ToString(FormatStr)) : different.ToString(FormatStr);
        }



        private void MaterialIdentityCertificateReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.DetailReport.DataSource = this.DataSource;
            this.DetailReport1.DataSource = this.DataSource;
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MIDc.BO.Detail d = this.DetailReport.GetCurrentRow() as PH.MIDc.BO.Detail;
            if (d == null) return;
            CompositionReport r = new CompositionReport();

            //r.DataSource = d.CompositionDetails;
            //Xsj20110831:应JaneLai和王生的讨论结果，对于Per=0的，不显示。注释掉上面语句，添加下面语句
            r.DataSource = d.CompositionDetails.Where(p => p.Per != null && p.Per.Value > 0).ToList();

            this.subReportComposition.ReportSource = r;
        }


    }
}
