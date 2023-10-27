using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using System.Text;
namespace PH.HDO.BackEnd.Report
{
    public partial class HDOStockExcelRpt : DevExpress.XtraReports.UI.XtraReport
    {
        DataSet ds;
        string Material;
        string Project_No;
        string Lot;
        string StockTack;
        public HDOStockExcelRpt(DataSet Stock, string Material_name, string Project,string Lot_No,string Stock_Tack)
        {
            this.ds = Stock;
            this.Material = Material_name;
            this.Project_No = Project;
            this.Lot=Lot_No;
            this.StockTack=Stock_Tack;
            InitializeComponent();

            if (this.Project_No == "0")
            {
                this.cellTIme.Visible=false;
                xrStock.Text = "Storage report group by Project No";
                //this.Bands.Remove(this.GroupHeader2);
                //this.Bands.Remove(this.GroupFooter2);
                this.GroupHeader1.GroupFields[0].FieldName = "Project_No";
            }
            else
            {
                 this.cellTIme.Visible=false;
                 xrStock.Text = "Storage report group by Material Code";
                 //this.Bands.Remove(this.GroupHeader1);
                 //this.Bands.Remove(this.GroupFooter1);
                 this.GroupHeader1.GroupFields[0].FieldName = "Material_name";
            }
            if (this.Project_No == "1" && Material == "1") 
            {
                this.cellTIme.Visible = true;
                xrStock.Text = "Stock balance report";
                this.GroupHeader1.GroupFields.Clear();
                this.Project_Group.Visible = false;
                this.GroupFooter1.Visible = false;
            }
            if(this.Lot=="0")
            {
                this.cellTIme.Visible=false;
                xrStock.Text = "Storage Detial By Lot No";
                this.GroupHeader1.GroupFields.Clear();
            }
            if(this.StockTack=="0")
            {
                this.cellTIme.Visible=false;
                xrStock.Text = "RV_Stock_Tack_Report";
                this.GroupHeader1.GroupFields.Clear();
            }
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.bindingSource1.DataSource = this.ds.Tables[0];
        }
        string[] _months = { "January ", "February ", "March ", "April ", "May ", "June ", "July ", "August ", "September ", "October ", "November ", "December " };
        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string s = DateTime.Now.ToShortDateString() ;
            int month = DateTime.Now.Month;
            string ss = _months[month - 1];
            int Year = DateTime.Now.Year;
            int Day = DateTime.Now.Day;
            string[] a = new string[3];
            //a = s.Split('/');
            string time = " At as " + ss + Day.ToString() + "," + Year.ToString();

            //time = time + a[2] + ", " + a[0];
            cellTIme.Text = time;
           
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (this.Project_No == "0")
            //{
                
            //    this.Bands.Remove(this.GroupHeader2);
            //    this.Bands.Remove(this.GroupFooter2);
            //    //this.GroupHeader1.Visible = true;
            //    //this.GroupFooter1.Visible = true;
            //    //this.Project_Group.Visible = true;
            //    //this.xrProject.Visible = true;
            //}
            //else
            //{
            //    //this.GroupHeader1.Visible = false;
            //    //this.GroupFooter1.Visible = false;
            //    //this.xrProject.Visible = false;
            //    //this.Project_Group.Visible = false;
            //    this.Bands.Remove(this.GroupHeader1);
            //    this.Bands.Remove(this.GroupFooter1);
            //}
        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (this.Material == "0")
            //{
            //    this.GroupHeader2.Visible = true;
            //    this.GroupFooter2.Visible = true;
            //    this.xrMaterial.Visible = true;
            //    this.Material_Group.Visible = true;
            //}
            //else
            //{
            //    this.GroupHeader2.Visible = false;
            //    this.GroupFooter2.Visible = false;
            //    this.xrMaterial.Visible = false;
            //    this.Material_Group.Visible = false;
            //}
        }


    }
}
