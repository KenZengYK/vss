using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.BasicInfo.BO;

namespace PH.POPC.BackEnd
{
    public class Common
    {
        public static PH.POPC.BO.POColorSizeDetail ClonePOColorSizeDetail(PH.POPC.BO.POColorSizeDetail skuitem, int NewOrderLine)
        {
            PH.POPC.BO.POColorSizeDetail pocolorsizedetial = new PH.POPC.BO.POColorSizeDetail();
            pocolorsizedetial.AmendmentNo = skuitem.AmendmentNo;
            pocolorsizedetial.ColorCode = skuitem.ColorCode;
            pocolorsizedetial.ColorDesc = skuitem.ColorDesc;
            pocolorsizedetial.Company = skuitem.Company;
            //pocolorsizedetial.Currency = skuitem.Currency;
            pocolorsizedetial.Difference = skuitem.Difference;
            //pocolorsizedetial.DifferenceDate = skuitem.DifferenceDate;
            // pocolorsizedetial.ETADate = skuitem.ETADate;
            //pocolorsizedetial.ExRate = skuitem.ExRate;
            pocolorsizedetial.FitCode = skuitem.FitCode;
            pocolorsizedetial.FitDesc = skuitem.FitDesc;
            pocolorsizedetial.HDOETA = skuitem.HDOETA;
            pocolorsizedetial.IntelSize = skuitem.IntelSize;
            // pocolorsizedetial.IsOutStanding = skuitem.IsOutStanding;
            pocolorsizedetial.ItemCode = skuitem.ItemCode;
            //pocolorsizedetial.PHAmount = skuitem.PHAmount;
            // pocolorsizedetial.PHBALAMount = skuitem.PHBALAMount;
            //pocolorsizedetial.PHPOQty = skuitem.PHPOQty;
            // pocolorsizedetial.PHUom = skuitem.PHUom;
            //pocolorsizedetial.PMessage = skuitem.PMessage;
            pocolorsizedetial.PONO = skuitem.PONO;
            pocolorsizedetial.Price = skuitem.Price;
            pocolorsizedetial.Qty = skuitem.Qty;
            pocolorsizedetial.SizeCode = skuitem.SizeCode;
            pocolorsizedetial.SizeDesc = skuitem.SizeDesc;
            pocolorsizedetial.SKU = skuitem.SKU;
            pocolorsizedetial.SuppAmount = skuitem.SuppAmount;
            pocolorsizedetial.SupplierReference = skuitem.SupplierReference;
            pocolorsizedetial.ColorShade = skuitem.ColorShade;
            //pocolorsizedetial.SupplierUOM = skuitem.SupplierUOM;
            pocolorsizedetial.Version = skuitem.Version;
            //pocolorsizedetial.Week = skuitem.Week;
            //pocolorsizedetial.Line = skuitem.OrderLine;

            pocolorsizedetial.CustOrderNo = skuitem.CustOrderNo;
            pocolorsizedetial.CustStyleNo = skuitem.CustStyleNo;


            pocolorsizedetial.OrderLine = NewOrderLine;
            pocolorsizedetial.ProjectNO = skuitem.PODetail.ProjectNo;
            return pocolorsizedetial;
        }
        public static List<Report> Reports()
        {
            List<Report> reports = new List<Report>();
            reports.Add(new Report("men_Report1", "紙箱(中文)"));
            reports.Add(new Report("men_Report2", "紙箱(英文)"));
            reports.Add(new Report("men_Report3", "貼紙(中文)"));
            reports.Add(new Report("men_Report4", "貼紙(英文)"));
            reports.Add(new Report("men_Report5", "膠袋(中文)"));
            reports.Add(new Report("men_Report6", "膠袋(英文)"));
            reports.Add(new Report("men_Report7", "嘜頭(中文)"));
            reports.Add(new Report("men_Report8", "嘜頭(英文)"));

            //reports.Add(new Report("men_Report5", "Formart5"));
            //reports.Add(new Report("men_Report6", "Formart6"));
            //reports.Add(new Report("men_Report7", "Formart7"));
            //reports.Add(new Report("men_Report8", "Formart8"));
            //reports.Add(new Report("men_Report9", "Formart9"));
            //reports.Add(new Report("men_Report10", "Formart10"));
            //reports.Add(new Report("men_Report11", "Formart11"));
            //reports.Add(new Report("men_Report12", "Formart12"));
            //reports.Add(new Report("men_Report13", "Formart13"));
            //reports.Add(new Report("men_Report14", "Formart14"));
            //reports.Add(new Report("men_Report15", "Formart15"));
            //reports.Add(new Report("men_Report16", "Formart16"));
            //reports.Add(new Report("men_Report17", "Formart17"));
            //reports.Add(new Report("men_Report18", "Formart18"));
            //reports.Add(new Report("men_Report19", "Formart19"));
            //reports.Add(new Report("men_Report20", "Formart20"));
            //reports.Add(new Report("men_Report21", "Formart21"));
            //reports.Add(new Report("men_Report22", "Formart22"));
            //reports.Add(new Report("men_Report23", "Formart23"));
            //reports.Add(new Report("men_Report24", "Formart24"));
            //reports.Add(new Report("men_Report25", "Formart25"));
            //reports.Add(new Report("men_Report26", "Formart26"));
            //reports.Add(new Report("men_Report27", "Formart27"));
            //reports.Add(new Report("men_Report28", "Formart28"));
            //reports.Add(new Report("men_Report29", "Formart29"));
            //reports.Add(new Report("men_Report30", "Formart30"));
            //reports.Add(new Report("men_Report31", "Formart31"));
            //reports.Add(new Report("men_Report32", "Formart32"));

            return reports;
        }


        //public static DataTable POReports()
        //{
        //    List < Report > reports= Reports();
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("ReportCode", typeof(string));
        //    dt.Columns.Add("ReportDesc", typeof(string));

        //    foreach (Report item in reports)
        //    {
        //        DataRow dr = dt.NewRow();
        //        dr["ReportCode"] = item.ReportCode;
        //        dr["ReportDesc"] = item.ReportDesc;
        //        dt.Rows.Add(dr);
        //    }
        //    return dt;
        //}

        private static readonly int NormalRowCount = 28;
        private static readonly int SALLRowCount = 14;//A&F
        private static readonly int NormalRowHeight = 15;
        private static readonly int SALLRowHeight = 30;//A&F
        private static readonly int NormalSuppColorWidth = 84;
        private static readonly int SALLSuppColorWidth = 20;//A&F

        #region Version
        public static readonly string POVersion = "v3.5 PO form";
        public static readonly string SCVersion = "v3.5 SC form";
        public static readonly string POVATVersion = "v3.5 PO(VAT) form";
        public static readonly string SCVATVersion = "v3.5 SC(VAT) form";
        #endregion

        #region Width, Size
        public static readonly string Width2D_EN = "Width";
        //public static readonly string SpecialSize2D_EN = "Specific Size\r\n({0})";
        public static readonly string SpecialSize2D_EN = "";
        public static readonly string SpecialSize_EN = "Specific Sz & Width";  //Specific Size
        public static readonly string Width3D_EN = "Size Range";
        public static readonly string Width4D_EN = "Size Matrix";
        //public static readonly string SeePage2_EN = "Data, see it at page 2";

        public static readonly string Width2D_CN = "封度";
        //public static readonly string SpecialSize2D_CN = "指定尺碼\r\n({0})";
        public static readonly string SpecialSize2D_CN = "";
        public static readonly string SpecialSize_CN = "指定尺碼 & 闊度";
        public static readonly string Width3D_CN = "尺碼範圍";
        public static readonly string Width4D_CN = "尺碼矩陣";
        //public static readonly string SeePage2_CN = "數據, 顯示在第二頁";

        public static readonly string PriceDependent_EN = "(Price Dependent)";
        public static readonly string PriceDependent_CN = "(價格依靠)";

        public const string CompanyTitleEN = "P.H.  Garment  Mfg.  Co.  Ltd.";
        public const string CompanyTitleCN = "沛  恒  製  衣  有  限  公  司";
        public const string CompanyTitleEN_DG = "P.H. Garment Mfg. (Dongguan) Co. Ltd.";
        public const string CompanyTitleCN_DG = "沛  恒  製  衣 （東莞） 有  限  公  司";

        //由David加入 2020-01-07
        public const string CompanyTitleEN_PYHK = "P.Y.  Development  Ltd.";
        public const string CompanyTitleCN_PYHK = "沛  研  拓  展  有  限  公  司";

        //由David加入 2022-03-07
        public const string CompanyTitleEN_PHHK = "";
        public const string CompanyTitleCN_PHHK = "";

        #endregion

        #region VAT
        public static readonly string VATSubTotalValue = "[SuppAmount!N2]";
        public static readonly string VATValue = "VAT* [VAT!p0]: [SuppAmountVAT!N2]";
        public static readonly string VATGrandTotal = "[SuppAmountGrand!N2]";
        public static readonly string VATGrandTotal2 = "[SuppAmount!N2]";
        #endregion


        //#region
        //public static readonly string TradeMethod_Domestic_EN = "Domestic Purchase";
        //public static readonly string TradeMethod_Domestic_CN = "國內採購";

        //public static readonly string TradeMethod_Foreign_EN = "Direct Import";
        //public static readonly string TradeMethod_Foreign_CN = "直接進口";

        //public static readonly string TradeMethod_DomesticKT_EN = "DDU";// "Domestic Deliver Duties Unpaid";
        //public static readonly string TradeMethod_DomesticKT_CN = "國內結轉";

        //#endregion

        #region Report - Notepad

        public static readonly string VAT_Notepad_EN = "VAT* refund is applied to this SCo / PO as the material(s) use or process(s) performed are eligible for export business.";
        public static readonly string HaveMultiPrice_Notepad_EN = "Symbol  *  means Price is based on \"Specific Size or Size Range\", if their size are {0}D element, their breakdown will be indicated on page 2 onward.";
        public static readonly string IsStyleColorDiff_Notepad_EN = "Symbol  !  means the color of the said Material is different to the color of the finished garment (e.g. contrast color effect).";

        public static readonly string VAT_Notepad_CN = "增值稅 (VAT*) 退款適用於此 SCo / PO 所使用之物料和其進行之工作，因它們是選用作出口業務";
        public static readonly string HaveMultiPrice_Notepad_CN = "符號\"*\" 表示此物料之單價是基于 \"指定的尺寸大小 或 尺寸大小範圍\"，若它們的尺寸有{0}維元素，它們的分配顯示在第二頁或其以下.";
        public static readonly string IsStyleColorDiff_Notepad_CN = "符號\"!\"表示此物料的顏色與成衣的顏色是不同的 (例如撞色效果).";

        public static readonly string VAT_Notepad_TH = "การขอ คืนภาษีมูลค่าเพิ่ม (VAT*) สำหรับ ใบจ้างทำของ/ใบคำสั่งซื้อ เช่น วัตถุดิบ หรือ กระบวนการ โดยปฎิบัติเพื่อสำหรับธุรกิจส่งออก";
        public static readonly string HaveMultiPrice_Notepad_TH = "สัญลักษณ์  *  หมายถึงราคาที่มีความแตกต่างเรื่องไซส์หรือขนาด .";
        public static readonly string IsStyleColorDiff_Notepad_TH = "สัญลักษณ์  !  หมายถึงสีของวัตถุดิบแตกต่างจากสีของตัวเสื้อ.";


        #endregion

        private static bool IsSALLandPPT(PH.POPC.BO.POHeader p)
        {
            if (p == null || string.IsNullOrEmpty(p.EndCustCode))
                return false;
            //if (p == null || string.IsNullOrEmpty(p.EndCustCode) || p.EndCustCode.ToUpper() != "AFGH")
            //    return false;

            if (p.EndCustCode.ToUpper() == "AFGH" || p.EndCustCode.ToUpper() == "SALL")
                foreach (var d in p.PODetails)
                {
                    if (!string.IsNullOrEmpty(d.ItemCode) && (d.ItemCode.StartsWith("PPT") || d.ItemCode.StartsWith("WOV")))
                        return true;
                }
            return false;
        }
        public static int GetPOReportRowCount(PH.POPC.BO.POHeader p)
        {
            if (!IsSALLandPPT(p))
                return NormalRowCount;
            else //if (customer.ToUpper() == "SALL") 
                return SALLRowCount;
        }
        public static int GetPOReportRowHeight(PH.POPC.BO.POHeader p)
        {
            if (!IsSALLandPPT(p))
                return NormalRowHeight;
            else //if (customer.ToUpper() == "SALL") 
                return SALLRowHeight;
        }

        public static void SetPOReportSizeOfPageOne(PH.POPC.BO.POHeader p, DevExpress.XtraReports.UI.XRControl colorShadeCell, DevExpress.XtraReports.UI.XRControl buyerColorCell,
            DevExpress.XtraReports.UI.XRControl colorLabel, DevExpress.XtraReports.UI.XRControl colorNameLabel,
            DevExpress.XtraReports.UI.XRControl ttlColorCell, DevExpress.XtraReports.UI.XRControl ttlColorShadeCell
            )
        {
            int iSolidWidth = NormalSuppColorWidth;
            if (IsSALLandPPT(p))
            {
                iSolidWidth = SALLSuppColorWidth;//Color Shade设为固定 20 宽(原来是61)
                //int iHeight = 15;//RowHeight设为原来双倍高度
                colorShadeCell.Font = new System.Drawing.Font(colorShadeCell.Font.FontFamily, 4.5F);
                colorShadeCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0);

                if (ttlColorShadeCell != null)
                {
                    ttlColorShadeCell.Text = "";
                    ttlColorShadeCell.DataBindings.Clear();
                    (ttlColorShadeCell as DevExpress.XtraReports.UI.XRTableCell).Summary = new DevExpress.XtraReports.UI.XRSummary();
                }
            }
            //计算差距
            int buyerColorCellWidth = buyerColorCell.Width;
            int colorShadeCellWidth = colorShadeCell.Width;
            int i = colorShadeCellWidth - iSolidWidth;

            //---set value--
            buyerColorCell.Width = buyerColorCellWidth + i;
            buyerColorCellWidth = buyerColorCell.Width;

            colorLabel.Width = colorLabel.Width + i;
            colorNameLabel.Width = colorNameLabel.Width + i;
            //colorShadeCell.Width = iSolidWidth;
            if (ttlColorCell != null) ttlColorCell.Width = ttlColorCell.Width + i;
            //if (ttlColorShadeCell != null) ttlColorShadeCell.Width = iSolidWidth;
        }
        public static void SetPOReportSizeOfPageTwo(PH.POPC.BO.POHeader p,
            DevExpress.XtraReports.UI.XRControl buyerColorCell, DevExpress.XtraReports.UI.XRControl colorShadeCell,
            DevExpress.XtraReports.UI.XRControl ttlColorCell, DevExpress.XtraReports.UI.XRControl ttlColorShadeCell
            )
        {
            int iSolidWidth = NormalSuppColorWidth;
            int iHeight = NormalRowHeight;
            if (IsSALLandPPT(p))
            {
                iSolidWidth = SALLSuppColorWidth;//Color Shade设为固定 20 宽(原来是61)
                iHeight = SALLRowHeight;//RowHeight设为原来双倍高度

                colorShadeCell.Text = "";
                colorShadeCell.DataBindings.Clear();
                if (ttlColorShadeCell != null)
                {
                    ttlColorShadeCell.Text = "";
                    ttlColorShadeCell.DataBindings.Clear();
                    (ttlColorShadeCell as DevExpress.XtraReports.UI.XRTableCell).Summary = new DevExpress.XtraReports.UI.XRSummary();
                }
                if ((buyerColorCell as DevExpress.XtraReports.UI.XRTableCell) != null)
                {
                    (buyerColorCell as DevExpress.XtraReports.UI.XRTableCell).Multiline = true;
                    (buyerColorCell as DevExpress.XtraReports.UI.XRTableCell).WordWrap = true;
                }
            }

            //计算差距
            int buyerColorCellWidth = buyerColorCell.Width;
            int colorShadeCellWidth = colorShadeCell.Width;
            int i = colorShadeCellWidth - iSolidWidth;

            //---set value--
            buyerColorCell.Width = buyerColorCellWidth + i;
            //colorShadeCell.Width = iSolidWidth;
            buyerColorCellWidth = buyerColorCell.Width;
            if (ttlColorCell != null) ttlColorCell.Width = buyerColorCellWidth;
            //if (ttlColorShadeCell != null) ttlColorShadeCell.Width = iSolidWidth;

            //int iHeight = buyerColorCell.Height;
            //height
            if ((buyerColorCell as DevExpress.XtraReports.UI.XRTableCell).Row != null)
                (buyerColorCell as DevExpress.XtraReports.UI.XRTableCell).Row.Height = iHeight;
            if ((ttlColorCell as DevExpress.XtraReports.UI.XRTableCell).Row != null)
                (ttlColorCell as DevExpress.XtraReports.UI.XRTableCell).Row.Height = iHeight;
        }

        public static void RemoveSpecialSizeCoumn(XRTableCell cTolence, XRTableCell cSpecSize, XRTableCell cCustOrder, XRTableCell cCustStyle)
        {
            XRTableRow tr = cSpecSize.Row;
            if (tr == null) return;

            XRTable tb = tr.Table;
            if (tb == null) return;


            int w1 = cTolence.Width;
            int w2 = cSpecSize.Width;
            int w3 = cCustOrder.Width;
            int w4 = cCustStyle.Width;
            int w33 = w2 / 2;
            int w44 = w2 - w33;

            //tr.Cells.Remove(cSpecSize);
            tb.DeleteColumn(cSpecSize);

            tb.SuspendLayout();
            try
            {
                cTolence.Width = w1;
                //cSpecSize.Width = 2;
                cCustOrder.Width = w3 + w33;
                cCustStyle.Width = w4 + w44;

                //this.cellTransitWindow.Text = "";
                //this.cellTransitWindow.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
                //this.cellTransitWindow.BackColor = Color.Transparent;


                //this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                //this.cellEndPointName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
                //this.cellEndPointAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;

                //this.cellEndPoint1.Borders = this.cellEndPoint1.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                //this.cellEndPointName.Borders = this.cellEndPointName.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                //this.cellEndPointAddress.Borders = this.cellEndPointAddress.Borders | DevExpress.XtraPrinting.BorderSide.Right;

            }
            finally
            {
                tb.ResumeLayout();
                UpdateLayout(tb);
            }
        }
        protected static void UpdateLayout(XRTable tb)
        {
            //if (loading || Suspended || Rows.Count == 0)
            //    return;
            tb.SuspendLayout();
            try
            {
                System.Drawing.Rectangle bounds = tb.Bounds;
                DevExpress.XtraReports.Native.TableHelper.SetControlBounds(tb, bounds, tb.Dpi);
                DevExpress.XtraReports.Native.TableHelper.ArrangeRows(tb.Rows, bounds.Size, tb.Dpi);
            }
            finally
            {
                tb.ResumeLayout();
            }
        }

        //Xsj20151007:Add to show Different TradeMethod text
        public static string GetTradeMethodByPOHeader(PH.POPC.BO.POHeader APOHeader, string langID)
        {
            //由David修改取Trade Method的方法  2022-04-22
            BasicInfoDataContext SupplierProfileDB = ContextBuilder.CreateContext<BasicInfoDataContext>();
            var obj = SupplierProfileDB.TradeMethods.FirstOrDefault(p => p.TradeCode == APOHeader.TradeMethod);
            if (obj == null) return "";

            return langID == "EN" ? obj.TradeMethodEN : obj.TradeMethodCN;


            ////由David修改取Trade Method的方法  2022-03-14
            //PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            //var obj = MiscDB.Misc_DataDictionaries.FirstOrDefault(p => p.DataType == "PH.BasicInfo.TradeMethod" && p.DataCode == APOHeader.TradeMethod);
            //if (obj == null) return "";

            //return langID == "EN" ? obj.DataNameEN : obj.DataName;





            //string val = "";
            //switch (APOHeader.TradeMethod)
            //{
            //    case "E1":
            //    case "C1":
            //        val = (langID == "EN" ? Common.TradeMethod_Foreign_EN : Common.TradeMethod_Foreign_CN);
            //        break;
            //    case "E2":
            //    case "C2":
            //        val = (langID == "EN" ? Common.TradeMethod_DomesticKT_EN : Common.TradeMethod_DomesticKT_CN);
            //        break;
            //    case "E3":
            //    case "C3":
            //        val = (langID == "EN" ? Common.TradeMethod_Domestic_EN : Common.TradeMethod_Domestic_CN);
            //        break;

            //}
            //return val;
        }
        //---------
    }

    public class Report
    {
        public Report(string reportCode, string reportDesc)
        {
            ReportCode = reportCode;
            ReportDesc = reportDesc;
        }
        public string ReportCode
        {
            get;
            set;
        }
        public string ReportDesc
        {
            get;
            set;
        }
    }



}
