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
    public partial class CustomerRequestReport : DevExpress.XtraReports.UI.XtraReport
    {
        public CustomerRequestReport()
        {
            InitializeComponent();
        }
        //public string CateGory
        //{
        //    get
        //    {
        //        switch (_skind)
        //        {
        //            case 1: return "圍";
        //            case 2: return "褲";
        //            case 3: return "衫";
        //            case 4: return "套裝";
        //            case 5: return "吊襪扣";
        //            case 6: return "短褲";
        //            case 7: return "背心";
        //            case 8: return "裙";
        //        }
        //    }
        //}
        private string _customer;
        private string _customercodeX;
        private string _brand;
        private string _skind;
        private Guid _gid;

        public CustomerRequestReport(string customer, string custCode, string brand, string skind, Guid gid)
            : this()
        {
            this._customer = customer;
            this._customercodeX = custCode;
            this._brand = brand;
            this._skind = skind;
            this._gid = gid;


        }
        public CustomerBrandCategory cust { get; set; }
        //{
        //    get
        //    {
        //        return (new CustomerBrandCategoryList()).CurrentDataContext.CustomerBrandCategories.Where(P => P.Customer == _customer && P.CustCode == _customercodeX && P.Brand == _brand && P.Category == this._skind).FirstOrDefault();
        //    }
        //}


        private void SetHeaderCaption()
        {
            //PH.Packing.BO.PKcustomerList list = new PH.Packing.BO.PKcustomerList();
            //CustomerBrandCategoryList list = new CustomerBrandCategoryList();

            //var cust = list.GetCustomer(this._customer, this._brand);
            //if (cust == null) return;

            //this.cellCustomer.Text = cust.C_code;
            //this.cellBrand.Text = cust.Brand;
            //this.cellKind.Text = this._skind;
            //this.cellStyleNo.Text = cust.StyleNo;
            //this.cellCustomer.Text = cust.CustCode;
            //this.cellBrand.Text = cust.Brand;
            //this.cellKind.Text = cust.Category;
            //this.cellStyleNo.Text = cust.StyleNo;


        }

        private void SetPackingWays()
        {
            //PH.Packing.BO.CustomerPackingWayList list = new PH.Packing.BO.CustomerPackingWayList();
            //var aa = list.GetPackingWay(this._customer, this._brand, this._skind);


            XRCheckBox ckb;
            XRLabel lbl;
            int x = 6;
            int y = 4;
            foreach (CustomerPacking d in cust.CustomerPackings)
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
                lbl.Text = string.IsNullOrEmpty(d.PackDescEN) ? string.Format(" {0}{1}", d.PackDescEN, d.PackDescCH)
                    : string.Format(" {0} / {1}", d.PackDescEN, d.PackDescCH);
                y += 20;
            }
            if (y > 4)
                this.cellPackingWay.Height = y + 6;

        }

        private void SetPackingSpecs()
        {
            //PH.Packing.BO.CustomerPackingSpecList list = new PH.Packing.BO.CustomerPackingSpecList();
            //var aa = list.GetPackingSpec(this._customer, this._brand, this._skind);
            XRCheckBox ckb;
            XRLabel lbl;
            int x = 6;
            int y = 4;
            foreach (CustomerLabeling d in cust.CustomerLabelings)
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


        private void CreateSizeAllow()
        {
            DataTable CurTb = (new DataHelper()).GetDataTable(string.Format("dbo.[Sp_CustomerSizeSpec] '{0}','{1}' ,'{2}'", this._customer, _customercodeX, _gid));

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
            cust = this.GetCurrentRow() as CustomerBrandCategory;
            SetHeaderCaption();
            SetPackingWays();
            SetPackingSpecs();
            //CreateSizeAllow();
            customerCupsBindingSource.DataSource = null;
            customerCupsBindingSource.DataSource = cust.CustomerCups;
            if (cust.CustomerCups.Count == 0)
                xrPivotGrid1.Visible = false;
        }

    }
}
