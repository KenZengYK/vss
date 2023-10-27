using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using DevExpress.XtraReports.UI.PivotGrid;
using PH.Platform.Report.PivotGrid;
using DevExpress.XtraPivotGrid;
using System.Collections.Generic;
using DevExpress.XtraPrinting;
//using DevExpress.XtraPivotGrid;


namespace PH.RWO.BackEnd.Reports.SL.PO.POBody
{
    public partial class RptPODetail_Sub1 : DevExpress.XtraReports.UI.XtraReport
    {
        DataTable DbPivot;
        public RptPODetail_Sub1()
        {
            InitializeComponent();
        }

        public RptPODetail_Sub1(DataTable dt)
        {
            InitializeComponent();
            DbPivot = dt;
        

        }


        private void BuildPivotData()
        {


            if (DbPivot == null)
                return;

            List<CupSizeInfo> _datalist =new List<CupSizeInfo>();
            foreach (DataRow dr in DbPivot.Rows)
            {
                CupSizeInfo csi = new CupSizeInfo();
                csi.ColorCode   = dr["colorcode"].ToString();
                csi.CustCup     = dr["custcup"].ToString();
                csi.CustSize    = dr["custsize"].ToString();
                csi.DespatchQty = (int)dr["despatchqty"];
                _datalist.Add(csi);
            }

            //with PRPivotGrid to do

            /*
             PRPivotGrid pivotGrid = new PRPivotGrid();
             this.Detail.Controls.Add(pivotGrid);
             pivotGrid.Location = new Point(15, 0);



             PivotGridColumn f_color = new PivotGridColumn();
          //  f_color.ShowSubTotal = true;
             f_color.FieldName = "ColorCode";
            f_color.HeaderText = "顏色/尺寸";



            PivotGridColumn f_cup = new PivotGridColumn();
            f_cup.FieldName = "CustCup";
            // f_cup.ShowSubTotal = true;
            f_cup.HeaderText = "Cup";
   

            PivotGridColumn f_size = new PivotGridColumn();
            f_size.FieldName = "CustSize";
            f_size.DetailBorders = BorderSide.All;
    

            PivotGridColumn f_qty = new PivotGridColumn();
            f_qty.FieldName = "DespatchQty";
            f_qty.ShowSubTotal = true;
            f_qty.ShowTotalValue = true;
            f_qty.DetailBorders = BorderSide.All;

            pivotGrid.LeftAreaFields.Add(f_color);

            if (DbPivot.Columns.IndexOf("custcup") >= 0)
                pivotGrid.LeftAreaFields.Add(f_cup);
            
             pivotGrid.ColumnAreaFields.Add(f_size);
           
            pivotGrid.DataAreaFields.Add(f_qty);

            pivotGrid.GrandTotalText = "小計";
            //pivotGrid.DataSource = DbPivot; 
            pivotGrid.DataMember = "CupSizeInfo";
             * */
            //this.prPivotGrid1.DataSource = _datalist;
        
        }

        private void CreatPivotData()
        {
            if (DbPivot == null)
                return;
            XRPivotGrid pivotGrid = new XRPivotGrid(); 
         
            this.Detail.Controls.Add(pivotGrid);

            pivotGrid.Location = new Point(15, 0);
           
         
            
            XRPivotGridField f_color = new XRPivotGridField("colorcode", DevExpress.XtraPivotGrid.PivotArea.RowArea);
            f_color.Options.ShowGrandTotal = true;
            f_color.Caption = "顏色/尺寸";
            f_color.Width =60;
         
            
            
            //f_color.ValueFormat=new DevExpress.Utils.FormatInfo(
            

            XRPivotGridField f_cup = new XRPivotGridField("custcup", DevExpress.XtraPivotGrid.PivotArea.RowArea);
            f_cup.Options.ShowGrandTotal = true;
            f_cup.Caption = "Cup";
            f_cup.Width =50;
            f_cup.CellFormat.FormatString = "";

            XRPivotGridField f_size = new XRPivotGridField("custsize", DevExpress.XtraPivotGrid.PivotArea.ColumnArea);
            f_size.Width = 62;
            XRPivotGridField f_qty = new XRPivotGridField("despatchqty", DevExpress.XtraPivotGrid.PivotArea.DataArea);
           // f_qty.Width = 15;

                    

           // f_qty.Width = 8;
            // f_qty.GrandTotalText = "Total by:";

            if (DbPivot.Columns.IndexOf("custcup") >= 0)
                pivotGrid.Fields.AddRange(new PivotGridField[]{f_color,f_cup,f_size,f_qty});   
            else
                pivotGrid.Fields.AddRange(new PivotGridField[] { f_color, f_size, f_qty });
            pivotGrid.OptionsView.ShowColumnHeaders = false;
            pivotGrid.OptionsView.ShowDataHeaders = false;
            pivotGrid.Appearance.Cell.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            pivotGrid.Appearance.GrandTotalCell.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            pivotGrid.Appearance.FieldValueTotal.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            pivotGrid.Appearance.FieldHeader.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            pivotGrid.Appearance.TotalCell.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            
            pivotGrid.Appearance.FieldValue.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            pivotGrid.Appearance.FieldValueGrandTotal.Font = new System.Drawing.Font("Times New Roman", 8.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
           //  pivotGrid.OptionsData
       
            //pivotGrid.colum
           // pivotGrid.Appearance.FieldHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            
            pivotGrid.Appearance.FieldValue.BackColor = Color.Beige;
           // pivotGrid.Height = 5;


            pivotGrid.Appearance.Cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            pivotGrid.Appearance.FieldValue.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            pivotGrid.Appearance.FieldValueGrandTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            pivotGrid.Appearance.FieldHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;


          //   pivotGrid.PivotGridValueType.GrandTotal
           //pivotGrid
            pivotGrid.DataSource = DbPivot; 
            
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            CreatPivotData();
            //BuildPivotData();
        }

        private void pivotGrid_FieldValueDisplayText(object sender, DevExpress.XtraPivotGrid.PivotFieldDisplayTextEventArgs e)
        {
            if (e.ValueType == DevExpress.XtraPivotGrid.PivotGridValueType.GrandTotal)
                if (e.DisplayText == "Grand Total")
                    e.DisplayText = "合计";

        }

    }


    public class CupSizeInfo
    {
        string _colorcode, _custcup, _custsize;
       int _despatchqty;

       public string ColorCode
       { 
           get { return _colorcode;}

           set{
               if (value != _colorcode)
                   _colorcode = value;
           }       
       
       }

       public string CustCup
       {
           get { return _custcup; }

           set
           {
               if (value != _custcup)
                   _custcup = value;
           }

       }

       public string CustSize
       {
           get { return _custsize; }

           set
           {
               if (value != _custsize)
                   _custsize = value;
           }

       }

       public int DespatchQty
       {
           get { return _despatchqty; }

           set
           {
               if (value != _despatchqty)
                   _despatchqty = value;
           }

       }
    
    }


}
