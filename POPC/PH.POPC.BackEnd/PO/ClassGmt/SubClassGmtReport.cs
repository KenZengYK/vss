using System;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.POPC.BO;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.POPC.BackEnd.PO.ClassGmt
{
    public partial class SubClassGmtReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Creator

        public SubClassGmtReport()
        {
            InitializeComponent();
        }
        public SubClassGmtReport(POHeader APO, bool isPHCopy, bool isVatPrint, bool isScO, string langID)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
            _PO = APO;
        }
        #endregion

        #region Fields

        //Image imgYes, imgNo, imgNone;
        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;
        private POHeader _PO;

        #endregion

        #region Event

        private void ItemClassCodeReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object obj = this.DataSource;

            ////由David加入 2022-04-14
            //List<POColorSizeDetail> AllDataList = (obj as IQueryable<POColorSizeDetail>).ToList();
            //var list = AllDataList.GroupBy(p => new { p.ColorCode, p.FitDesc, p.GarmentColor, p.GmtColorName })
            //    .Select(p => new
            //    {
            //        ColorCode = p.Key.ColorCode,
            //        FitDesc = p.Key.FitDesc,
            //        GarmentColor = p.Key.GarmentColor,
            //        GmtColorName = p.Key.GmtColorName
            //    });

            //DetailReport1.DataSource = list;

            //DetailReport.DataSource = obj;
            this.DetailReport.DataSource = this.DetailReport1.DataSource = obj;

            //增加Trade Method子報表，由David增加 2022-04-21
            tcTradeMethod.Text = (_langID == "EN") ? "[TradeMethodEN]" : "[TradeMethodCN]";
            tcPurchaseMethod.Text = (_langID == "EN") ? "[PurchaseMethodEN]" : "[PurchaseMethodCN]";

            lbTradeMethodExplaination.Text = (_langID == "EN") ? "Trade Method explanation" : "貿易方式說明";
            lbTradeCode.Text = (_langID == "EN") ? "Trade Cde" : "貿易代號";
            lbTradeMethod.Text = (_langID == "EN") ? "Trade Method" : "貿易方式";
            lbExplaination.Text = (_langID == "EN") ? "Explanation" : "說明";
            lbColorComparison.Text = (_langID == "EN") ? "Color Comparison" : "顏色對比";

            BasicInfoDataContext BasicInfoDB = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.bsTradeMethod.DataSource = BasicInfoDB.TradeMethods.Where(p => p.TradeCode == _PO.TradeMethod);

            this.DataSource = null;
            SetTitleInfor();
            //imgYes = DevExpress.Utils.Controls.ImageHelper.CreateImageFromResources("PH.POPC.BackEnd.Resources.yes.png", typeof(PH.POPC.BackEnd.ReportStream).Assembly);
            //imgNo = DevExpress.Utils.Controls.ImageHelper.CreateImageFromResources("PH.POPC.BackEnd.Resources.no.png", typeof(PH.POPC.BackEnd.ReportStream).Assembly);
            //imgNone = DevExpress.Utils.Controls.ImageHelper.CreateImageFromResources("PH.POPC.BackEnd.Resources.none.png", typeof(PH.POPC.BackEnd.ReportStream).Assembly);

        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            bool? b = (bool?)this.DetailReport1.GetCurrentColumnValue("GmtColorMatch");
            tcColorMatch.Text = (b ?? false) ? "" : "!";

            //bool? b = (bool?)this.DetailReport1.GetCurrentColumnValue("GmtColorMatch");

            //if ((b ?? false))
            //{
            //    tcColorCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F);
            //}
            //else
            //{
            //    tcColorCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold);
            //}

            //tcColorCode.ForeColor = System.Drawing.Color.Red;

            //tcColorCode.BackColor = (b ?? false) ? Color.Transparent : Color.Yellow;

            //this.tbMatch.Text = !b.HasValue ? "--" : ((b ?? false) ? "Y" : "N");
        }
        #endregion

        #region Functions

        private void SetTitleInfor()
        {
            //this.lbItemCode.Text = this.lbColorCode.Text = (_langID == "EN") ? "Our Item Code" : "品種編碼";
            this.lbClass.Text = (_langID == "EN") ? "Class Code" : "Class Code";
            this.lbClassCode.Text = (_langID == "EN") ? "Code" : "代碼";
            this.lbClassDesc.Text = (_langID == "EN") ? "Description" : "摘要";

            this.lbItemCode3.Text = (_langID == "EN") ? "Our Item Code" : "買方品種編碼";
            this.lbLine2.Text = (_langID == "EN") ? "PO Line" : "行號";
            this.lbProjectNo.Text = (_langID == "EN") ? "Our Project No." : "買方工程號";
            this.lbWONo.Text = (_langID == "EN") ? "WO No." : "制單號";
            //this.lbReplenishment.Text = (_langID == "EN") ? "Replenishment" : "補料";
            this.lbReplenishmentCode.Text = (_langID == "EN") ? "Code" : "代碼";
            this.lbReplenishmentDesc.Text = (_langID == "EN") ? "PO Line Description" : "PO Line 描述";

            lbColorCode.Text = (_langID == "EN") ? "Our Item Clr Code" : "買方品種顏色代號";
            lbColorName.Text = (_langID == "EN") ? "Our Item Clr Name" : "買方品種顏色名稱";
            tcColorShape.Text = (_langID == "EN") ? "Supp Item Clr Shade" : "供應商品種色影";
            lbGarmentColor.Text = (_langID == "EN") ? "Gmt Clr Code" : "成衣顏色代號";
            lbGmtName.Text = (_langID == "EN") ? "Gmt Clr Name" : "成衣顏色名稱";
            lbNotePad3.Text = (_langID == "EN") ? "Notepad 3:- Symbol ! means the color of the said Material is different to the color of the finished garment (e.g. contrast color effect)." :
                                                  "備注3 : 符號 ! 表示此物料的顏色與成衣的顏色是不同的 (例如撞色效果).";

            xrTable1.BackColor = Color.FromArgb(235, 241, 222);
            xrTableRow7.BackColor = Color.FromArgb(235, 241, 222);
            lbColorComparison.BackColor = Color.White;
        }

        #endregion



    }
}
