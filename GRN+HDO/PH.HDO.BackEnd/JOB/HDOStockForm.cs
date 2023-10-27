using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
namespace PH.HDO.BackEnd.JOB
{
    public partial class HDOStockForm : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public HDOStockForm()
        {
            InitializeComponent();
        }
        string _sparmer;

        public string SParmer
        {
            get { return _sparmer; }
            set { _sparmer = value; }
        }
        string _WareHouse;

        public string WareHouse
        {
            get { return this.WareHousecomboBox.Text; }
        }

        string _Material_Group;

        public string Material_Group
        {
            get { return this.MaterialcomboBox.Text; }
        }

        string _Invoice;

        public string Invoice
        {
            get { return this.InvoicetextBox.Text; }
        }

        string _Location;

        public string Location
        {
            get { return this.LocationtextBox.Text; }
        }
        string _ProjectNo;
        public string ProjectNo 
        {
            get { return this.ProjectNotextBox.Text; }
        }

        string _MaterialName;
        public string MaterialName 
        {
            get { return this.MaterialNameTextBox.Text; }
        }
        string _Date1;
        public string Date1 
        {
            get { return this.dateTime1.Text; }
        }
        string _Date2;
        public string Date2 
        {
            get { return this.dateTime2.Text; }
        }

        string _GroupMaterial;
        public string GroupMaterial 
        {
            get { return this.radioGroupMaterial.Checked ? "0" : "1"; }
        }

        string _GroupProjectNo;
        public string GroupProjectNo
        {
            get { return this.radioGroupProject.Checked ? "0" : "1"; }
        }

        string _LotNo;
        public string LotNo
        {
            get { return this.radioOrderLotNo.Checked ? "0" : "1"; }
        }

        string _Stock;
        public string Stock
        {
            get { return this.radioOrderStock.Checked ? "0" : "1"; }
        }

        PH.HDO.BO.Command commd = new PH.HDO.BO.Command();

        public string GetParameter() 
        {
            string Ware = this.WareHousecomboBox.Text;
            string Material = this.MaterialcomboBox.Text.ToString();
            string Invoice = this.InvoicetextBox.Text.ToString();
            string Location = this.LocationtextBox.Text.ToString();
            string MaterialName = this.MaterialNameTextBox.Text.ToString();
            string ProjectNo = this.ProjectNotextBox.Text;
            string GroupMaterial = this.radioGroupMaterial.Checked ? "0" : "1";
            string GroupProject = this.radioGroupProject.Checked ? "0" : "1";
            string LotNo = this.radioOrderLotNo.Checked ? "0" : "1";
            string Stock = this.radioOrderStock.Checked ? "0" : "1";
             string Date1 ="";
            string Date2 ="";
            if (!string.IsNullOrEmpty(this.dateTime1.Text))
            {
                Date1 = this.dateTime1.DateTime.ToString("yyMMdd");              
            }
            if( !string.IsNullOrEmpty(this.dateTime2.Text))
            {
                 Date2 = this.dateTime2.DateTime.ToString("yyMMdd");
            }
            string parem = string.Format("{0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}", 
                Ware, Material, Invoice, Location, MaterialName, ProjectNo,Date1,Date2,GroupMaterial,GroupProject,LotNo,Stock);
            return parem;
        }
        public UserControl ParameterControl(string parameters)
        {
            HDOStockForm hdosfrom = new HDOStockForm();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                hdosfrom.WareHousecomboBox.Text = paras[0];
                hdosfrom.MaterialcomboBox.Text = paras[1];
                hdosfrom.InvoicetextBox.Text = paras[2];
                hdosfrom.LocationtextBox.Text = paras[3];
            }
            return hdosfrom;
        }
        private void HDOStockForm_Load(object sender, EventArgs e)
        {
            this.WareHousecomboBox.SelectedIndex = 0;
        }

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public object GetReportDataSource(string parameters)
        {
            return commd.GetStockList(this._WareHouse, _Material_Group, _Invoice, _Location,_MaterialName,_ProjectNo,_Date1,_Date2,_LotNo);
        }
        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Getoamer(parameters);
            DevExpress.XtraReports.UI.XtraReport hdorpt;
            hdorpt = new PH.HDO.BackEnd.Report.HDOStockRpt(_GroupMaterial, _GroupProjectNo, _LotNo, _Stock, _WareHouse, _Material_Group, _Invoice, _Location, _MaterialName, _ProjectNo,_Date1,_Date2);
            hdorpt.PrintingSystem.ShowMarginsWarning = false;
            hdorpt.PrintingSystem.ContinuousPageNumbering = true;
            //hdorpt.ExportOptions.PrintPreview.DefaultFileName = string.Format("'{0}' - PH Garment Mfg Co Ltd (HK)", this.hdotxtcompany.Text);
            return hdorpt;
        }

        private void Getoamer(string parameters)
        {
            this._sparmer = parameters;
            if (string.IsNullOrEmpty(_sparmer)) return;
            //string[] c = new string[1] { "," };
           string[] ts = parameters.Split(',');
            this._WareHouse = ts[0];
            if (ts.Length < 2) return;
            this._Material_Group = ts[1].ToString();
            this._Invoice = ts[2].ToString();
            this._Location = ts[3].ToString();
            this._MaterialName = ts[4].ToString();
            this._ProjectNo = ts[5].ToString();
            string date1 = ts[6].ToString();
            string date2 = ts[7].ToString();
            #region 取日期
            //DateTimeOffset thisDate2 = new DateTimeOffset(2011, 6, 10, 15, 24, 16,
            //                                    TimeSpan.Zero);
            //Console.WriteLine("The current date and time: {0:MM/dd/yy H:mm:ss zzz}",
            //         thisDate2); 



            //if (!string.IsNullOrEmpty(ts[6].ToString())&&!string.IsNullOrEmpty(ts[7].ToString())) 
            //{
            //    date1 = Convert.ToDateTime(ts[6].ToString()).ToString("YYMMDD");
            //    date2 = Convert.ToDateTime(ts[7].ToString()).ToString("YYMMDD");
                //string[] a = ts[6].ToString().Split('/');
                //string[] b = ts[7].ToString().Split('/');
                //string Month1="";string Month2="";string Day1="";string Day2="";
                //if (Convert.ToInt16(a[1]) < 10)
                //{
                //    Month1 = "0" + a[1];
                //}
                //else 
                //{
                //    Month1 = a[1];
                //}
                //if (Convert.ToInt16(b[1]) < 10)
                //{
                //    Month2 = "0" + b[1];
                //}
                //else
                //{
                //    Month2 = b[1];
                //}
                //if (Convert.ToInt16(a[2]) < 10)
                //{
                //    Day1 = "0" + a[2];
                //}
                //else
                //{
                //    Day1 = a[2];
                //}
                //if (Convert.ToInt16(b[2]) < 10)
                //{
                //    Day2 = "0" + b[2];
                //}
                //else
                //{
                //    Day2 = b[2];
                //}
                //date1 = a[0].Substring(2, 2) + Month1 + Day1;
                //date2 = b[0].Substring(2, 2) + Month2 + Day2;
            //}
            #endregion
            this._Date1 = date1;
            this._Date2 = date2;
            this._GroupMaterial = ts[8].ToString();
            this._GroupProjectNo = ts[9].ToString();
            this._LotNo = ts[10].ToString();
            this._Stock = ts[11].ToString();
        }
    }
}
