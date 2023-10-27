using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using System.Data.Linq;
using System.Collections.Generic;
using PH.RWO.BO;
using System.Data;
using System.Data.SqlClient;


namespace PH.RWO.BackEnd.Reports.Packing
{
    public partial class PackingRequestReport : DevExpress.XtraReports.UI.XtraReport
    {
        public PackingRequestReport()
        {
            InitializeComponent();

        }

        //public WorkOrderCategory cust
        //{
        //    get
        //    {
        //        return (new WorkOrderCategoryList()).CurrentDataContext.WorkOrderCategories.Where(P => P.WorkOrderNo == _workOrderNo && P.SalesOrderNo ==_salesOrderNo ).FirstOrDefault();
        //    }
        //}

        public WorkOrderCategory CurWO { get; set; }
        //{
        //    get
        //    {
        //        return (new CustomerBrandCategoryList()).CurrentDataContext.WorkOrderCategories.Where(P => P.Company == _company && P.SalesOrderNo == _salesOrderNo && P.WorkOrderNo == _workOrderNo && P.ProductCategory == _productcategory).FirstOrDefault();
        //    }
        //}
        private string _company;
        private string _salesOrderNo;
        private string _workOrderNo;
        private string _productcategory;
        //private string _brand;

        public PackingRequestReport(string company, string salesOrderNo, string workOrderNo, string productcategory)
            : this()
        {
            this._company = company;
            this._salesOrderNo = salesOrderNo;
            this._workOrderNo = workOrderNo;
            this._productcategory = productcategory;
            //this._brand = Brand;
            //this._Skind = Skind;

        }

        private void SetHeaderCaption()
        {
            //this.lbTitle.Text = "沛恒制衣 ( 東莞 ) 有限公司";
            //if (CurWO.WorkOrder.Factory == "CL")
            //{
            //    this.lbTitle.Text = "P.Y. Garments Mfg.  (Bangladesh) Co. Ltd.";
            //}

            //PH.RWO.BO.WorkOrderList list = new PH.RWO.BO.WorkOrderList();           
            //var aa = list.GetWorkOrders(this._workOrderNo);
            //this.cellFactory.Text = CurWO.WorkOrder.Factory;
            //this.cellProjectNo.Text = CurWO.WorkOrder.ProjectNo;
            //this.cellSalseOrderNo.Text = CurWO.SalesOrderNo;
            //this.cellWorkOrderNo.Text = this._workOrderNo;

            //this.cellWOCreateDate.Text = string.Format("{0:yyyy-MM-dd}", CurWO.WorkOrder.WOCreateDate);
            //this.cellPHStyle.Text = CurWO.WorkOrder.StyleNo;
            //this.cellCustStyle.Text = CurWO.WorkOrder.CustomerStyleNoStr;
            //this.cellPackingMethod.Text = CurWO.WorkOrder.PackingMethod;
            //this.CellPackReference.Text = CurWO.PackReference;
            //this.CellPackMethod.Text = CurWO.PackMethod;

        }

        private void SetPackingWays()
        {
            //PH.Packing.BO.PackingWayList list = new PH.Packing.BO.PackingWayList();
            //var aa = list.GetPackingWay(this._salesOrderNo, this._workOrderNo);
            XRCheckBox ckb;
            XRLabel lbl;
            int x = 6;
            int y = 4;
            foreach (WorkOrderCategoryPacking d in CurWO.WorkOrderCategoryPackings)
            {
                ckb = new XRCheckBox();
                this.cellPackingWay.Controls.Add(ckb);
                ckb.Location = new Point(x, y);
                ckb.Size = new Size(18, 20);
                ckb.Borders = DevExpress.XtraPrinting.BorderSide.None;
                ckb.Checked = true;// d.Flag1 ?? false;

                lbl = new XRLabel();
                this.cellPackingWay.Controls.Add(lbl);
                lbl.Location = new Point(ckb.Location.X + ckb.Width, y);
                lbl.Size = new Size(712, 20);
                lbl.Borders = DevExpress.XtraPrinting.BorderSide.None;
                lbl.Multiline = true;
                lbl.WordWrap = true;
                lbl.Text = string.IsNullOrEmpty(d.PackDescCH) ? string.Format(" {0}{1}", d.PackDescCH, d.PackDescEN)
                    : string.Format(" {0} / {1}", d.PackDescCH, d.PackDescEN);

                y += 20;
            }
            if (y > 4)
                this.cellPackingWay.Height = y + 6;


        }

        private void SetPackingSpecs()
        {
            //PH.Packing.BO.PackingSpecList list = new PH.Packing.BO.PackingSpecList();
            //var aa = list.GetPackingSpec(this._salesOrderNo, this._workOrderNo);
            XRCheckBox ckb;
            XRLabel lbl;
            int x = 6;
            int y = 4;
            foreach (WorkOrderCategoryLabeling d in CurWO.WorkOrderCategoryLabelings)
            {
                ckb = new XRCheckBox();
                this.cellPackingSpec.Controls.Add(ckb);
                ckb.Location = new Point(x, y);
                ckb.Size = new Size(18, 20);
                ckb.Borders = DevExpress.XtraPrinting.BorderSide.None;
                ckb.Checked = true;// d.Flag1 ?? false;

                lbl = new XRLabel();
                this.cellPackingSpec.Controls.Add(lbl);
                lbl.Location = new Point(ckb.Location.X + ckb.Width, y);
                lbl.Size = new Size(712, 20);
                lbl.Borders = DevExpress.XtraPrinting.BorderSide.None;
                lbl.Multiline = true;
                lbl.WordWrap = true;
                //lbl.Text = string.Format(" {0}", d.LabelDescCH);
                lbl.Text = string.IsNullOrEmpty(d.LabelDescCH) ? string.Format(" {0}{1}", d.LabelDescCH, d.LabelDescEN)
                       : string.Format(" {0} / {1}", d.LabelDescCH, d.LabelDescEN);
                y += 20;
            }
            if (y > 4)
                this.cellPackingSpec.Height = y + 6;
        }

        private void CreateSizeAllow1()
        {
            #region Data

            //PH.Packing.BO.PackingHeaderList headerlist = new PH.Packing.BO.PackingHeaderList();
            //var hs = headerlist.GetPackingHeader(this._salesOrderNo, this._workOrderNo);
            //string skind = "";
            //foreach (PH.Packing.BO.Pk_PackHeader item in hs)
            //{
            //    skind = item.Skind;
            //}

            //PH.Packing.BO.PackingSizeList list = new PH.Packing.BO.PackingSizeList();
            //var sizes = list.GetPackingSize(this._salesOrderNo, this._workOrderNo);

            //PH.Packing.BO.PackingColorCupQtyList list2 = new PH.Packing.BO.PackingColorCupQtyList();
            //var bb = list2.GetPackingColorCupQty(this._salesOrderNo, this._workOrderNo);
            //List<PH.Packing.BO.PK_pkinst1> qtys = bb.ToList<PH.Packing.BO.PK_pkinst1>();
            //if (qtys == null)
            //    qtys = new List<PH.Packing.BO.PK_pkinst1>();
            //if (qtys.Count == 0)
            //{
            //    PH.Packing.BO.PK_pkinst1 q = new PH.Packing.BO.PK_pkinst1();
            //    qtys.Add(q);
            //}
            //#endregion

            //XRLabel lbl;
            //int x = 30;
            //int y = 2;
            //int width = 0;
            //int height = 0;
            //int aHeight = 18;
            //int aWidth = 40;
            //int x1 = x;

            //#region Line 1: size

            //width = 60;
            //height = aHeight * 2;
            //lbl = new XRLabel();
            //this.cellSizeAllow.Controls.Add(lbl);
            //lbl.Location = new Point(x, y);
            //lbl.Size = new Size(width, height);
            //lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom;
            //lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //lbl.Multiline = true;
            //lbl.WordWrap = true;
            //lbl.Text = "PH\r\nColor";
            //x += width;

            //int x2 = x;
            //width = 60;
            //height = aHeight;
            //lbl = new XRLabel();
            //this.cellSizeAllow.Controls.Add(lbl);
            //lbl.Location = new Point(x, y);
            //lbl.Size = new Size(width, height);
            //lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom;
            //lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //lbl.Multiline = true;
            //lbl.WordWrap = true;
            //lbl.Text = skind;
            //x += width;

            //PH.Packing.BO.PK_pkinst2 size = null;
            //if (sizes == null || sizes.Count() == 0)
            //    size = new PH.Packing.BO.PK_pkinst2();
            //else
            //    size = sizes.First();

            //width = aWidth;
            //height = aHeight;
            //for (int i = 0; i < 14; i++)
            //{
            //    lbl = new XRLabel();
            //    this.cellSizeAllow.Controls.Add(lbl);
            //    lbl.Location = new Point(x, y);
            //    lbl.Size = new Size(width, height);
            //    lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom;
            //    lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //    string sSize = "";
            //    switch (i + 1)
            //    {
            //        case 1: sSize = size.Siz1; break;
            //        case 2: sSize = size.Siz2; break;
            //        case 3: sSize = size.Siz3; break;
            //        case 4: sSize = size.Siz4; break;
            //        case 5: sSize = size.Siz5; break;
            //        case 6: sSize = size.Siz6; break;
            //        case 7: sSize = size.Siz7; break;
            //        case 8: sSize = size.Siz8; break;
            //        case 9: sSize = size.Siz9; break;
            //        case 10: sSize = size.Siz10; break;
            //        case 11: sSize = size.Siz11; break;
            //        case 12: sSize = size.Siz12; break;
            //        case 13: sSize = size.Siz13; break;
            //        case 14: sSize = size.Siz14;
            //            lbl.Borders = DevExpress.XtraPrinting.BorderSide.All;
            //            break;
            //        default: sSize = ""; break;
            //    }

            //    lbl.Text = sSize;

            //    x += width;
            //}
            //int x3 = x;

            //y += height;
            //#endregion

            //#region Line 2
            //x = x2;
            //width = 60;
            //height = aHeight;
            //lbl = new XRLabel();
            //this.cellSizeAllow.Controls.Add(lbl);
            //lbl.Location = new Point(x, y);
            //lbl.Size = new Size(width, height);
            //lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            //lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //lbl.Multiline = true;
            //lbl.WordWrap = true;
            //lbl.Text = "CUP";
            //x += width;

            //width = x3 - x;// aWidth * 14;//
            //height = aHeight;
            //lbl = new XRLabel();
            //this.cellSizeAllow.Controls.Add(lbl);
            //lbl.Location = new Point(x, y);
            //lbl.Size = new Size(width, height);
            //lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom;
            //lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //lbl.Multiline = true;
            //lbl.WordWrap = true;
            //lbl.Text = "尺碼分配";
            //x += width;

            //y += height;
            //#endregion

            //#region Line >2: color,cup,qty

            //height = aHeight;

            //foreach (PH.Packing.BO.PK_pkinst1 item in qtys)
            //{

            //    x = x1;
            //    width = 60;
            //    lbl = new XRLabel();
            //    this.cellSizeAllow.Controls.Add(lbl);
            //    lbl.Location = new Point(x, y);
            //    lbl.Size = new Size(width, height);
            //    lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            //    lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //    lbl.Multiline = true;
            //    lbl.WordWrap = true;
            //    lbl.Text = item.Col;
            //    x += width;

            //    width = 60;
            //    lbl = new XRLabel();
            //    this.cellSizeAllow.Controls.Add(lbl);
            //    lbl.Location = new Point(x, y);
            //    lbl.Size = new Size(width, height);
            //    lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            //    lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //    lbl.Multiline = true;
            //    lbl.WordWrap = true;
            //    lbl.Text = item.Fit;
            //    x += width;

            //    width = aWidth;
            //    for (int i = 0; i < 14; i++)
            //    {
            //        lbl = new XRLabel();
            //        this.cellSizeAllow.Controls.Add(lbl);
            //        lbl.Location = new Point(x, y);
            //        lbl.Size = new Size(width, height);
            //        lbl.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            //        lbl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            //        string qty = "";
            //        switch (i + 1)
            //        {
            //            case 1: qty = item.Siz1; break;
            //            case 2: qty = item.Siz2; break;
            //            case 3: qty = item.Siz3; break;
            //            case 4: qty = item.Siz4; break;
            //            case 5: qty = item.Siz5; break;
            //            case 6: qty = item.Siz6; break;
            //            case 7: qty = item.Siz7; break;
            //            case 8: qty = item.Siz8; break;
            //            case 9: qty = item.Siz9; break;
            //            case 10: qty = item.Siz10; break;
            //            case 11: qty = item.Siz11; break;
            //            case 12: qty = item.Siz12; break;
            //            case 13: qty = item.Siz13; break;
            //            case 14: qty = item.Siz14;
            //                lbl.Borders = DevExpress.XtraPrinting.BorderSide.All ^ DevExpress.XtraPrinting.BorderSide.Top;
            //                break;
            //            default: qty = ""; break;
            //        }

            //        lbl.Text = qty;

            //        x += width;
            //    }

            //    y += height;
            //}
            //lbl = new XRLabel();
            //this.cellSizeAllow.Controls.Add(lbl);
            //lbl.Location = new Point(0, y);
            //lbl.Size = new Size(this.cellSizeAllow.Size.Width, 4);
            //lbl.Borders = DevExpress.XtraPrinting.BorderSide.None;
            //lbl.Text = "";

            #endregion
            //DataTable CurTb = DataHelper.GetDataTable(string.Format("dbo.Sp_SizeSpec '{0}','{1}' ,'{2}'", this.cust.Customer,this.cust.Brand,this.cust.WorkOrder.Category));

            //XRTable tb = new XRTable();
            //cellSizeAllow.Controls.Add(tb);
            //tb.Location = new Point(0, 0);
            //tb.Size = new System.Drawing.Size(744, 8);
            //tb.Rows.Add(RowCaption(CurTb));

            //foreach (DataRow row in CurTb.Rows)
            //{
            //    tb.Rows.Add(GetNewRow(CurTb, row));
            //}
        }
        private void CreateSizeAllow()
        {
            DataTable CurTb = (new DataHelper()).GetDataTable(string.Format("dbo.[Sp_WOSizeSpec] '{0}','{1}' ,'{2}','{3}'", CurWO.Company, CurWO.SalesOrderNo, CurWO.WorkOrderNo, CurWO.ProductCategory));

            XRTable tb = new XRTable();
            cellSizeAllow.Controls.Add(tb);
            tb.Location = new Point(0, 0);
            tb.Size = new System.Drawing.Size(744, 8);
            tb.Rows.Add(RowCaption(CurTb));

            foreach (DataRow row in CurTb.Rows)
            {
                tb.Rows.Add(GetNewRow(CurTb, row));
            }
        }
        private XRTableRow RowCaption(DataTable dt)
        {
            XRTableRow row = new XRTableRow();
            for (int i = 0; i < dt.Columns.Count; i++)
            {
                XRTableCell cel = new XRTableCell();
                cel.Borders = DevExpress.XtraPrinting.BorderSide.All;
                cel.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

                cel.Width = 83;
                cel.Text = dt.Columns[i].ColumnName;

                row.Cells.Add(cel);
            }

            return row;

        }
        private XRTableRow GetNewRow(DataTable dt, DataRow datarow)
        {
            XRTableRow row = new XRTableRow();
            for (int i = 0; i < dt.Columns.Count; i++)
            {
                XRTableCell cel = new XRTableCell();
                cel.Borders = DevExpress.XtraPrinting.BorderSide.All;
                cel.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                cel.Width = 83;
                cel.Text = datarow[i].ToString();
                row.Cells.Add(cel);
            }
            return row;

        }


        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            CurWO = this.GetCurrentRow() as WorkOrderCategory;

            SetHeaderCaption();
            SetPackingWays();
            SetPackingSpecs();
            //CreateSizeAllow();

            workOrderCategoryCupsBindingSource.DataSource = null;
            workOrderCategoryCupsBindingSource.DataSource = CurWO.WorkOrderCategoryCups;
            if (CurWO.WorkOrderCategoryCups.Count == 0)
                xrPivotGrid1.Visible = false;
        }

    }
}
