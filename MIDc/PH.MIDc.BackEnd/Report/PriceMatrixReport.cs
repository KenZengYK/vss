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
    public partial class PriceMatrixReport : DevExpress.XtraReports.UI.XtraReport
    {

        //Xsj20110711:标识价格类别：lastPrice,CurrPrice,FuturePrice
        private PH.MIDc.BO.PriceMatrixTypeEnum currPriceMatrixTypeEnum;
        private PH.MIDc.BO.MaterialPriceHeader currMPH;
        private PH.MIDc.BO.Detail _detail;


        public PriceMatrixReport()
        {
            InitializeComponent();

            // assigning the custom formatter
            fieldSizeDesc.ValueFormat.Format = new PivotSizeCustomFormatter();
            fieldSizeDesc.ValueFormat.FormatType = DevExpress.Utils.FormatType.Custom;
        }

        public PriceMatrixReport(PH.MIDc.BO.Detail d, PH.MIDc.BO.PriceMatrixTypeEnum CurrPTEnum)
            : this()
        {
            this._detail = d;
            currPriceMatrixTypeEnum = CurrPTEnum;
            ShowHideHeaderInfo();

            //HandleMatrixColumn();
        }

        //Xsj20110711:设置报表头部信息
        private void HandleMatrixColumn()
        {
            //cellCurrency.Text = string.Format("Currency: {0}", this._detail.Currency);
            this.xrTCellCurrent.Text = this._detail.Currency;
            //this.cbSingle.Checked = !(_detail.IsMultiPrice ?? false);
            //this.cbMulti.Checked = (_detail.IsMultiPrice ?? false);
            this.cbSingle.Checked = !(currMPH.IsMultiPrice ?? false);
            this.cbMulti.Checked = (currMPH.IsMultiPrice ?? false);
            this.cbSpecialPrice.Checked = this._detail.HasSpecialPrice ?? false;
            string s = "";
            switch (this._detail.MultiPriceOption ?? 0)
            {
                case 1:
                    s = "Color/Size Range Dependent";
                    break;
                case 2:
                    s = "Color Range Dependent and Size Range Independent";
                    break;
                case 3:
                    s = "Size Range Dependent and Color Range Independent";
                    break;
                default:
                    break;
            }
            //Xsj20120307:更改Sheet1&2報表，使單價的顯法方式與MaterialDvpSummaryRept的一致
            if (this.currMPH != null)
            {
                //如果Cup全为ALL,则隐藏Cup列
                List<PH.MIDc.BO.MaterialPrice> detailList = (from val in this.currMPH.MaterialPrices
                                                             where val.CupDesc != "ALL"
                                                              && val.PriceType == "Standard"
                                                             select val).ToList();
                if (detailList.Count == 0)
                {
                    this.xrPivotGrid1.Fields["Cup"].Visible = false;
                }
            }
            this.cbPriceDependent.Text = s;
            this.cbPriceDependent.Visible = (currMPH.IsMultiPrice ?? false);

            //this.xrTableCell7.Borders = !(currMPH.IsMultiPrice ?? false) ? DevExpress.XtraPrinting.BorderSide.Top : (DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
            //this.xrTableCell10.Borders = !(currMPH.IsMultiPrice ?? false) ? DevExpress.XtraPrinting.BorderSide.Bottom : (DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);

            this.GroupHeader_Multi.Visible = true;// (_detail.IsMultiPrice ?? false);
            this.GroupHeader_SinglePrice.Visible = false;// !(this.GroupHeader_Multi.Visible);
            this.pivotSize.HeaderText = this._detail.SizeMatrixStr;

            switch (this._detail.MultiPriceOption ?? 0)
            {
                case 1://Color/Size/Cup
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //if (this._detail.CupDetails.Count() == 0)//Color/Size
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    if (this.currMPH.NewCupDetails.Count() == 0)//Color/Size
                    #endregion
                    {
                        this.prPivotGrid1.LeftAreaFields.Remove(pivotColCup);
                        this.xrLabel1.Location = new Point(70, 0);
                        this.fieldCup.Visible = false;
                    }
                    else//Color/Size/Cup
                    {
                    }
                    break;
                case 2://Color
                    this.prPivotGrid1.LeftAreaFields.Remove(pivotColCup);
                    this.pivotSize.HeaderText = "Price";
                    this.xrLabel1.Location = new Point(70, 0);
                    this.pivotSize.DetailVisible = false;
                    this.fieldCup.Visible = false;

                    break;
                case 3://Size/Cup
                    #region Xsj20110817:为完善历史多单价而注释掉
                    //if (this._detail.CupDetails.Count() == 0)//Size
                    #endregion
                    #region Xsj20110817:为完善历史多单价而添加
                    if (this.currMPH.NewCupDetails.Count() == 0)//Size
                    #endregion
                    {
                        this.prPivotGrid1.LeftAreaFields.Remove(pivotColColorRange);
                        this.prPivotGrid1.LeftAreaFields.Remove(pivotColCup);
                    }
                    else//Size/Cup
                    {
                        this.prPivotGrid1.LeftAreaFields.Remove(pivotColColorRange);
                    }
                    break;
                default:
                    break;
            }
        }

        //Xsj201107011:根据是否存在：LastPrice,CurrPrice,FuturePrice显示相关的头部及单价细信息
        private void ShowHideHeaderInfo()
        {
            currMPH = new PH.MIDc.BO.MaterialPriceHeader();
            switch (currPriceMatrixTypeEnum.ToString())
            {
                case "LastPrice":
                    currMPH = new PriceHeaderInfo().GetLastPriceHeader(this._detail, "Standard", "");
                    this.xrLabel_PriceTypeStr.Text = currMPH == null ? "Previous Price: N.A" : "Previous Price:";
                    break;
                case "CurrPrice":
                    currMPH = new PriceHeaderInfo().GetCurrPriceHeader(this._detail, "Standard", "");
                    this.xrLabel_PriceTypeStr.Text = currMPH == null ? "Current Price: N.A" : "Current Price:";
                    break;
                case "FuturePrice":
                    currMPH = new PriceHeaderInfo().GetFuturePriceHeader(this._detail, "Standard", "");
                    this.xrLabel_PriceTypeStr.Text = currMPH == null ? "Future Price: N.A" : "Future Price:";
                    break;
            }
            if (currMPH == null)
            {
                this.GroupHeader_Multi.Visible = false;
                this.GroupHeader_SinglePrice.Visible = false;
                this.xrPanel_PriceHeaderInfo.Visible = false;
            }
            else
            {
                HandleMatrixColumn();
            }


            //VAT
            this.cbHaveVAT.Checked = this._detail.HaveVAT;
            this.cbHaveVAT.Text = string.Format(" VAT {2} {0:N0} {1}", this._detail.VAT, this._detail.HaveVAT ? "%" : "", this._detail.HaveVAT ? ":-" : "");

        }

        private void PriceMatrixReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            #region Xsj20110817:为完善历史多单价而注释掉
            //PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            #endregion
            //var aa = from a in context.MaterialPrices
            //         where a.SuppRef == this._detail.SuppRef && a.PriceType == PH.MIDc.BO.MaterialPriceType.Standard.ToString()
            //         select a;
            PH.MIDc.BO.MaterialPriceHeader currMPH = new PH.MIDc.BO.MaterialPriceHeader();
            switch (currPriceMatrixTypeEnum.ToString())
            {
                case "LastPrice":
                    currMPH = new PriceHeaderInfo().GetLastPriceHeader(this._detail, "Standard", "");
                    break;
                case "CurrPrice":
                    currMPH = new PriceHeaderInfo().GetCurrPriceHeader(this._detail, "Standard", "");
                    break;
                case "FuturePrice":
                    currMPH = new PriceHeaderInfo().GetFuturePriceHeader(this._detail, "Standard", "");
                    break;
            }
            if (currMPH == null) return;
            #region Xsj20110817:为完善历史多单价而注释掉
            //var aa = from a in context.MaterialPrices  //this._detail.MaterialPrices 
            //         where a.SuppRef == currMPH.SuppRef && a.PriceType == PH.MIDc.BO.MaterialPriceType.Standard.ToString()
            //         && a.EffectFromDate.Date == currMPH.EffectFromDate.Date
            //         select a;
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            ColorCupSizeOrderBy CCSOrderBy = new ColorCupSizeOrderBy();
            List<PH.MIDc.BO.MaterialPrice> aa = CCSOrderBy.PriceOrderByColorCupSize(currMPH);
            #endregion

            #region Xsj20110817:为完善历史多单价而注释掉
            //this.prPivotGrid1.DataSource = aa;
            #endregion

            foreach (PH.MIDc.BO.MaterialPrice a in aa)
            {
                if (a.Size == "ALL")
                {
                    //a.Size = "Supplier";
                    //20110905:应JaneLai和王生的讨论结果，将原显示"Supplier" 的地方显示为空白
                    a.Size = "";
                }

                #region Xsj20120302:應JaneLai和王生的討論結果要求，添加Currency顯示
                a.Currency = this._detail.Currency;
                #endregion
            }

            DateTime? dt1 = null;
            DateTime? dt2 = null;

            foreach (var item in aa)
            {
                dt1 = item.EffectFromDate;
                dt2 = item.EffectEndDate;
                this.cellSinglePrice.Text = string.Format("{0:N2}", item.Price);
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

            this.prPivotGrid1.DataSource = this.bindingSource1.DataSource = null;
            foreach (PH.MIDc.BO.MaterialPrice a in aa)
            {
                if (a.Cup == "ALL") a.Cup = "";
                if (a.Size == "ALL" || a.Size == "") a.Size = "Supplier";
            }
            this.bindingSource1.DataSource = aa;
            this.prPivotGrid1.DataSource = this.bindingSource1;
        }



        int _iRow = 0;
        private void OnBeforePrint_Item(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _iRow++;
            XRTableCell cell = sender as XRTableCell;
            if (cell == null) return;

            XRBinding binding = cell.DataBindings["Text"];
            string sValue = "";
            if (binding != null)
            {
                sValue = (string)GetCurrentColumnValue(binding.DataMember);
                cell.DataBindings.Clear();
            }

            cell.Text = sValue;

            XtraReport report = cell.RootReport;
            PH.MIDc.BackEnd.PriceMatrixReport report1 = report.Tag as PH.MIDc.BackEnd.PriceMatrixReport;
            if (report1 == null) return;

            int iRecordCount = report1.GetPivotGridRecordCount();
            if (_iRow == iRecordCount)
            {
                cell.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            }
            else
            {
                cell.Borders = DevExpress.XtraPrinting.BorderSide.Left;

            }
        }

        public int GetPivotGridRecordCount()
        {
            return this.prPivotGrid1.ViewInfo.DataController.PivotDataSource.RecordCount;
        }



    }
}
