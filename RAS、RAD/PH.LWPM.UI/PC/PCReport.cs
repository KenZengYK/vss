using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using DevExpress.XtraPrinting;

namespace PH.LWPM.UI.PC
{
    public partial class PCReport : DevExpress.XtraReports.UI.XtraReport
    {
        PCReport_OtherItem _SubReport;
        public List<PCReportMerge> AllDataList;
        PCHeader _PCHeader;
        public PCReport(PCHeader APCHeader, List<PCReportMerge> ADataList)
        {
            InitializeComponent();

            this._PCHeader = APCHeader;
            AllDataList = ADataList;
            this.bindingSource.DataSource = ADataList.Where(p => p.IsOtherItem == false).OrderBy(p => p.SortID);
            this._SubReport = new PCReport_OtherItem();
            this.SubReportOtherItem.ReportSource = _SubReport;

            this.lbPINO.Text = this._PCHeader.PCNO;
            DateTime CreateDate = this._PCHeader.CreateDate ?? DateTime.MinValue;
            this.lbCreateDate.Text = CreateDate == DateTime.MinValue ? "" : CreateDate.ToString("dd-MM-yyyy");
            this.tcGoodsDescription.Text = this._PCHeader.GoodsDescription;
            this.lbShipmentMode.Text = this._PCHeader.ShipmentMode;
            this.lbIncoterms.Text = this._PCHeader.Incoterms;
            this.lbLoadingPart.Text = this._PCHeader.LoadingPort;
            this.lbDestination.Text = this._PCHeader.Destination;
            this.lbPartialShipment.Text = this._PCHeader.PartialShipment;
            this.lbPaymentTerm.Text = this._PCHeader.PaymentTerms;
            this.lbOriginCountry.Text = this._PCHeader.OriginsCountry;
        }

        //object PreviousRowItemNo;
        object PreviousRowInternalGroupID = -9999;
        private void TableItem_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (this.GetCurrentColumnValue("ItemNo") == null)
            if (PreviousRowInternalGroupID == this.GetCurrentColumnValue("PreviousRowInternalGroupID"))
            {
                this.TableCellItemNo.Borders = BorderSide.Left | BorderSide.Right;
                this.TableCellDescription.Borders = BorderSide.Left;
                this.TableCellHSCode.Borders = BorderSide.Right;

                //if (Convert.ToInt32(this.GetCurrentColumnValue("SortID")) == 999999999) //最后一行畫出橫線
                //{
                //    this.TableCellItemNo.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                //    this.TableCellDescription.Borders = BorderSide.Left | BorderSide.Bottom;
                //    this.TableCellHSCode.Borders = BorderSide.Right | BorderSide.Bottom;
                //}
            }
            else
            {
                this.TableCellItemNo.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Top;
                this.TableCellDescription.Borders = BorderSide.Left | BorderSide.Top;
                this.TableCellHSCode.Borders = BorderSide.Right | BorderSide.Top;
            }

            this.TableCellQty.Borders = this.TableCellItemNo.Borders;
            this.TableCellUnitPrice.Borders = this.TableCellItemNo.Borders;
            this.TableCellAmount.Borders = this.TableCellItemNo.Borders;
            this.TableCellDeliveryDate.Borders = this.TableCellItemNo.Borders;

            //if (PreviousRowItemNo != this.GetCurrentColumnValue("ItemNo"))
            //{
            //    PreviousRowItemNo = this.GetCurrentColumnValue("ItemNo");
            //}

            if (PreviousRowInternalGroupID != this.GetCurrentColumnValue("PreviousRowInternalGroupID"))
            {
                PreviousRowInternalGroupID = this.GetCurrentColumnValue("PreviousRowInternalGroupID");
            }

            //if (Convert.ToBoolean(this.GetCurrentColumnValue("IsOtherItem")))
            //{
            //    this.TableCellDescription.TextAlignment = TextAlignment.MiddleRight;
            //}
            //else
            //{
            //    this.TableCellDescription.TextAlignment = TextAlignment.MiddleLeft;
            //}
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int GroupID = Convert.ToInt32(this.GetCurrentColumnValue("InternalGroupID"));
            var lists = this.AllDataList.Where(p => p.InternalGroupID == GroupID && p.IsOtherItem == true);
            if (lists.Count() == 0)
            {
                this.tcGroupFootItem.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                this.tcGroupFooterDescription.Borders = BorderSide.None | BorderSide.Bottom;
                this.tcGroupFooterSubTotal.Borders = BorderSide.Right | BorderSide.Bottom;
                this.tcGroupFooterUnitPrice.Borders = BorderSide.Right | BorderSide.Bottom;
                this.tcGroupFooterAmount.Borders = BorderSide.Right | BorderSide.Bottom;
                this.tcGroupFooterDeliveryDate.Borders = BorderSide.Right | BorderSide.Bottom;
                this.tcGroupFooterSubTotal.Text = "Grand Total";

                //if (this.AllDataList.Where(p => p.InternalGroupID == GroupID && p.IsOtherItem == false).Count() == 2)
                //{
                //    //e.Cancel = true;
                //    this.tcGroupFooterSubTotal.Text = "";
                //}
                //else
                //{
                //    this.tcGroupFooterSubTotal.Text = "Grand Total";
                //}
            }
            else
            {
                this.tcGroupFootItem.Borders = BorderSide.Left | BorderSide.Right;
                this.tcGroupFooterDescription.Borders = BorderSide.None;
                this.tcGroupFooterSubTotal.Borders = BorderSide.Right;
                this.tcGroupFooterUnitPrice.Borders = BorderSide.Right;
                this.tcGroupFooterAmount.Borders = BorderSide.Right;
                this.tcGroupFooterDeliveryDate.Borders = BorderSide.Right;
                this.tcGroupFooterSubTotal.Text = "Sub Total";

                //if (this.AllDataList.Where(p => p.InternalGroupID == GroupID && p.IsOtherItem == false).Count() > 2)
                //{
                //    this.tcGroupFooterSubTotal.Text = "Sub Total";
                //}
                //else
                //{
                //    e.Cancel = true;
                //    this.tcGroupFooterSubTotal.Text = "";
                //}
            }
        }

        private void SubReportOtherItem_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int GroupID = Convert.ToInt32(this.GetCurrentColumnValue("InternalGroupID"));
            var lists = this.AllDataList.Where(p => p.InternalGroupID == GroupID && p.IsOtherItem == true);
            if (lists.Count() == 0)
            {
                e.Cancel = true;
            }

            this._SubReport.GrandTotal = this.AllDataList.Where(p => p.InternalGroupID == GroupID).Sum(p => p.Amount) ?? 0;
            this._SubReport.bindingSource.DataSource = this.AllDataList.Where(p => p.InternalGroupID == GroupID && p.IsOtherItem == true).OrderBy(p => p.SortID);
        }

        private void TableCellQty_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //只在每張PO的第一行顯示出單位，顯示大Qty欄位置
            if (this.GetCurrentColumnValue("ItemNo") != null && this.GetCurrentColumnValue("Unit") != null)
            {
                string Str = this.GetCurrentColumnValue("ItemNo").ToString();

                if (Str.Length == 1 || Str.Substring(Str.Length - 1, 1) == "1")
                {
                    this.TableCellQty.Text = string.Format("({0})", this.GetCurrentColumnValue("Unit").ToString());
                }
                else
                {
                    this.TableCellDeliveryDate.Text = "";
                }
            }

            if (this.GetCurrentColumnValue("ItemNo") == null)
            {
                this.TableCellDeliveryDate.Text = "";
            }
        }
    }
}
