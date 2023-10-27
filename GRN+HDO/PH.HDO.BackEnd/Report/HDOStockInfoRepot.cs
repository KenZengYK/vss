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
    public partial class HDOStockInfoRepot : DevExpress.XtraReports.UI.XtraReport
    {
       DataSet ds;
        //public HDOStockInfoRepot(DataSet Stock)
        //{
        //    this.ds = Stock;
        //    InitializeComponent();
        //}
        string Material;
        string Project_No;
        public HDOStockInfoRepot(DataSet Stock,string Material_name,string Project)
        {
            this.ds = Stock;
            this.Material = Material_name;
            this.Project_No = Project;
            InitializeComponent();
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

        //private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
            //if (this.Project_No == "0")
            //{
            //    this.GroupHeader1.Visible = true;
            //    this.GroupFooter1.Visible = true;
            //    this.xrProject.Visible = true;
            //    this.Project_Group.Visible = true;
            //}
            //else
            //{
            //    this.GroupHeader1.Visible = false;
            //    this.GroupFooter1.Visible = false;
            //    this.xrProject.Visible = false;
            //    this.Project_Group.Visible = false;
            //}
        //}

        //private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{           
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
        //}

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.bindingSource1.DataSource = this.ds.Tables[0];
           
        }

    }
}
