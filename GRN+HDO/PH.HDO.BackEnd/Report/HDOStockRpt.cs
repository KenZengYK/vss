using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.HDO.BO;
using PH.Platform.BO;
using System.Data.Linq;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
namespace PH.HDO.BackEnd.Report
{
    public partial class HDOStockRpt : DevExpress.XtraReports.UI.XtraReport
    {
        string Material;
        string Project_No;
        string Lot;
        string StockTack;
        private HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
        public HDOStockRpt(string Material, string Project, string Lot_No, string Stock_Tack,string _WareHouse,string _Material_Group,string _Invoice, string _Location,
              string _MaterialName,string _ProjectNo,string _StartDate,string _EndDate)
        {
            InitializeComponent();
            this.Material = Material;
            this.Project_No = Project;
            this.Lot = Lot_No;
            this.StockTack = Stock_Tack;
            if (this.Project_No == "0")
            {
                this.cellDateTime.Visible = false;
                xrStock.Text = "Storage report group by Project No";
                this.GroupHeader1.GroupFields[0].FieldName = "Project";
            }
            if(this.Material=="0")
            {
                this.cellDateTime.Visible = false;
                xrStock.Text = "Storage report group by Material Code";
                this.GroupHeader1.GroupFields[0].FieldName = "material";

            }
            if (this.Project_No == "1" && Material == "1")
            {
                this.cellDateTime.Visible = true;
                xrStock.Text = "Stock balance report";
                this.GroupHeader1.GroupFields.Clear();
                this.GroupFooter1.Visible = false;
                this.xrTableRow4.Visible = false;
            }
            if (this.Lot == "0")
            {
                this.cellDateTime.Visible = false;
                xrStock.Text = "Storage Detial By Lot No";
                this.GroupHeader1.GroupFields.Clear();
            }
            if (this.StockTack == "0")
            {
                this.cellDateTime.Visible = false;
                xrStock.Text = "RV_Stock_Tack_Report";
                this.GroupHeader1.GroupFields.Clear();
            }
            string Filter="";
            if (!string.IsNullOrEmpty(_WareHouse)) 
            {
                Filter = "StockRoom:  "+_WareHouse;
            }
            if (!string.IsNullOrEmpty(_Material_Group)) 
            {
                Filter = Filter != "" ? Filter + "   MaterialGroup: " + _Material_Group : "MaterialGroup: "+_Material_Group;
            }
             if (!string.IsNullOrEmpty(_Invoice))
            {
                Filter = Filter != "" ? Filter + "  Invoice: " + _Invoice :"Invoice: "+ _Invoice;
            }
             if (!string.IsNullOrEmpty(_Location))
            {
                Filter = Filter != "" ? Filter + "   Loc: " + _Location : "Loc: " + _Location;
            }
            if (!string.IsNullOrEmpty(_MaterialName))
            {
                Filter = Filter != "" ? Filter + "   Material: " + _MaterialName : "MaterialName: "+_MaterialName;
            }
             if (!string.IsNullOrEmpty(_ProjectNo))
            {
                Filter = Filter != "" ? Filter + "   Project: " + _ProjectNo : "ProjectNo:"+_ProjectNo;
            }
             if (!string.IsNullOrEmpty(_StartDate))
            {
                Filter = Filter != "" ? Filter + "   Date: " + "20" + _StartDate + " - " + "20" + _EndDate : "Date: " + "20" + _StartDate + " - " + "20" + _EndDate;
            }
             
            xrFilter.Text = Filter;
        }
        string[] _months = { "January ", "February ", "March ", "April ", "May ", "June ", "July ", "August ", "September ", "October ", "November ", "December " };
        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string s = DateTime.Now.ToShortDateString() ;
            int month = DateTime.Now.Month;
            string ss = _months[month - 1];
            int Year= DateTime.Now.Year;
            int Day= DateTime.Now.Day;
            string[] a=new string[3];
            //a = s.Split('/');
            string time=" At as "+ss+Day.ToString()+","+Year.ToString();

            //time = time + a[2] + ", " + a[0];
            cellDateTime.Text = time;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.HDO.BO.Stock stock = this.GetCurrentRow() as PH.HDO.BO.Stock;
            if (stock == null) return;
            if (string.IsNullOrEmpty(stock.material))
            {
                string sql = string.Format("select * from openquery(as400,'select vcat01 from ault4f1.pmp01 where  CONO01=''P1'' and item01=''{0}'' ') ", stock.ItemCode);
                DataTable dt = Context.ExecuteDataTable(sql, "material");
                if (dt.Rows.Count > 0)
                {
                    xrTableCell26.DataBindings.Clear();
                    xrTableCell26.Text = dt.Rows[0][0].ToString();
                }
            }
            else 
            {
                xrTableCell26.DataBindings.Clear();
                xrTableCell26.Text = stock.material;
            }
        }

    }
}
