using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.MIDc.BO;
using System.Collections.Generic;

namespace PH.MIDc.BackEnd
{
    public partial class MaterialIdentityAllPrice : DevExpress.XtraReports.UI.XtraReport
    {
        public List<string> ChosedPriceType = new List<string>();


        public MaterialIdentityAllPrice()
        {
            InitializeComponent();
            //HandleMatrixColumn();
        }


        private void MaterialIdentityAllPrice_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MIDc.BO.Detail currDateil = this.bindingSource1.Current as PH.MIDc.BO.Detail;
            fieldSizeDesc.ValueFormat.Format = new PivotSizeCustomFormatter();
            fieldSizeDesc.ValueFormat.FormatType = DevExpress.Utils.FormatType.Custom;

            PH.MIDc.BO.MaterialPriceHeader mPH = GetCurrentRow() as PH.MIDc.BO.MaterialPriceHeader;
            PH.MIDc.BO.Detail currDetail = mPH.Detail;
            //设定页头信息
            this.XRLblSuppCode.Text = currDetail.SampleOrder.ERPSupplier;
            this.XRLblMIDcSuppRef.Text = currDetail.Supplier;
            this.XRLblSuppRef.Text = currDetail.SuppRef;
            this.XRLblMatlType.Text = currDetail.MaterialType;
        }



        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //设定Currency
            PH.MIDc.BO.MaterialPriceHeader mPH = GetCurrentRow() as PH.MIDc.BO.MaterialPriceHeader;

            HandleMatrixColumn();


            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            PH.MIDc.BO.MaterialPriceHeader currMPH = new PH.MIDc.BO.MaterialPriceHeader();
            //获取当前用的单价
            currMPH = new PriceHeaderInfo().GetCurrPriceHeader(mPH.Detail, mPH.PriceType, mPH.Category);
            if (currMPH == null) return;
            //标识价格类别：history,current,futrue
            if (mPH.EffectFromDate.Date < currMPH.EffectFromDate.Date)
            {
                this.xrLabel_PriceTypeStr.Text = "History Price:";
            }
            else if (mPH.EffectFromDate.Date == currMPH.EffectFromDate.Date)
            {
                this.xrLabel_PriceTypeStr.Text = "Current Price:";
            }
            else
            {
                this.xrLabel_PriceTypeStr.Text = "Future Price:";
            }

            //获取详细单价信息
            #region Xsj20110817:为完善历史多单价而注释掉
            //var aa = from a in context.MaterialPrices
            //         where a.SuppRef == currMPH.SuppRef && a.PriceType == mPH.PriceType && a.Category == mPH.Category
            //         && a.EffectFromDate.Date == mPH.EffectFromDate.Date
            //         select a;
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            ColorCupSizeOrderBy CCSOrderBy = new ColorCupSizeOrderBy();
            List<PH.MIDc.BO.MaterialPrice> aa = CCSOrderBy.PriceOrderByColorCupSize(mPH);
            #endregion


            foreach (PH.MIDc.BO.MaterialPrice a in aa)
            {
                if (a.Size == "ALL") a.Size = "Supplier";
            }

            DateTime? dt1 = null;
            DateTime? dt2 = null;

            foreach (var item in aa)
            {
                dt1 = item.EffectFromDate.Date;
                dt2 = item.EffectEndDate;
                break;
            }

            this.cellDt1.Text = dt1.HasValue ? dt1.Value.ToString("dd'/'MM'/'yyyy") : "N.A.";
            this.cellDt2.Text = dt2.HasValue ? dt2.Value.ToString("dd'/'MM'/'yyyy") : "N.A.";

            // load dll
            string dll_1 = typeof(MaterialIdentityCertificateReport).Assembly.Location;
            string dll_2 = typeof(PriceMatrixReport).Assembly.Location;
            string dll_3 = typeof(PH.Platform.Report.PivotGrid.PRPivotGrid).Assembly.Location;
            //
            this.ScriptReferences = new string[] { dll_1, dll_2, dll_3 };

            //xrPivotGrid1.DataSource = aa;

            this.xrPivotGrid1.DataSource = null;
            this.bindingSource1.DataSource = aa;
            this.xrPivotGrid1.DataSource = this.bindingSource1;
        }



        //Xsj20110711:设置报表头部信息
        private void HandleMatrixColumn()
        {
            PH.MIDc.BO.MaterialPriceHeader currMPH = GetCurrentRow() as PH.MIDc.BO.MaterialPriceHeader;
            if (currMPH == null) return;
            this.cellCurrency.Text = string.Format("Currency: {0}", currMPH.Detail.Currency);
            this.cbSingle.Checked = !(currMPH.IsMultiPrice ?? false);
            this.cbMulti.Checked = (currMPH.IsMultiPrice ?? false);
            this.cbSpecialPrice.Checked = currMPH.Detail.HasSpecialPrice ?? false;
            string s = "";
            switch (currMPH.Detail.MultiPriceOption ?? 0)
            {
                case 1:
                    s = "Color/Size Range Dependent";
                    this.fieldCup.Visible = false;
                    break;
                case 2:
                    s = "Color Range Dependent and Size Range Independent";
                    this.fieldCup.Visible = false;
                    break;
                case 3:
                    s = "Size Range Dependent and Color Range Independent";
                    break;
                default:
                    break;
            }
            this.cbPriceDependent.Text = s;
            this.cbPriceDependent.Visible = (currMPH.IsMultiPrice ?? false);
 

        }


    }
}
