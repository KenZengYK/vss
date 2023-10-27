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
    public partial class MaterialDvpSummaryRept20110401 : DevExpress.XtraReports.UI.XtraReport
    {
        public MaterialDvpSummaryRept20110401()
        {
            InitializeComponent();
        }


        //Xsj20110401:detailBand显示前,指定xrPivotGrid1的数据源.xrPivotGrid1的数据源根据Detail而变化
        private void detailBand2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MIDc.BO.Detail  detail = this.bindingSource3.Current as PH.MIDc.BO.Detail ;
            this.bindingSource2.DataSource = from val in detail.MaterialPrices
                                             where val.PriceType == "Standard"
                                             select val;

            
            CompositionReportForMaterialDvpSumRept r = new CompositionReportForMaterialDvpSumRept();
            r.DataSource = detail.CompositionDetails; 
            this.xrSubreport1.ReportSource = r;


            //如果Cup全为ALL,则隐藏Cup列
            List<PH.MIDc.BO.MaterialPrice> detailList = (from val in detail.MaterialPrices
                                       where val.CupDesc != "ALL"
                                       select val).ToList();
            if (detailList.Count == 0)
            {
                this.xrPivotGrid1.Fields["CupDesc"].Visible = false;
            }
            else
            {
                this.xrPivotGrid1.Fields["CupDesc"].Visible = true;
            }
            //隐藏统计列
            this.xrPivotGrid1.OptionsView.ShowColumnTotals = false;
            this.xrPivotGrid1.OptionsView.ShowColumnGrandTotals = false;
            this.xrPivotGrid1.OptionsView.ShowRowTotals = false;
            this.xrPivotGrid1.OptionsView.ShowRowGrandTotals  = false;
            this.xrPivotGrid1.OptionsView.ShowTotalsForSingleValues = false;

            this.xrPivotGrid1.Appearance.FieldValue.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
        }
        private void detailBand2_AfterPrint(object sender, EventArgs e)
        {
            this.bindingSource3.MoveNext();
        }

        //Xsj20110401:detailReportBand1显示前,指定期数据源
        private void detailReportBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {            
            PH.MIDc.BO.SampleOrder sampleOrder = this.bindingSource1.Current as PH.MIDc.BO.SampleOrder;
            this.bindingSource3.DataSource = sampleOrder.Details;
        }


    }
}
