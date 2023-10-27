using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.ReportJob.Packing
{
    public partial class JobCustomerLocationReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobCustomerLocationReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;
            //PH.Packing.BO.HeaderList h = new PH.Packing.BO.HeaderList();
            //this.cbCustomer.Properties.Items.AddRange(h.GetCustomers().ToArray());
        }

        #region IServerReport Members
        public CustomerBrandCategory cust
        {
            get
            {
                return (new CustomerBrandCategoryList()).CurrentDataContext.CustomerBrandCategories.Where(P => P.Customer == _customer && P.Brand == _brand && P.Category ==_skind ).FirstOrDefault();
            }
        }
        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        string _param;
        string _customer;
        string _customercodex;
        string _brand;
        string   _skind;
        Guid _GID;

        public string Customer
        { get { return this.editCustomer.Text; } }
        public string CustCode
        { get { return this.editcustomercode.Text; } }
        public string Brand
        { get { return this.editBrand.Text; } }
        public string Skind
        { get { return editSkind.Text; } }

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            _customer = ss[0];
            _customercodex = ss[1];
            _brand = ss[2];
            _skind =ss[3];
            this._GID = new Guid(ss[4]);
        }


        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);

            PH.RWO.BackEnd.Reports.Packing.CustomerLocationReport report = new PH.RWO.BackEnd.Reports.Packing.CustomerLocationReport(this._customer, this._customercodex, _brand, _skind, this._GID);
            //report.SetTitle(_customer);
       
           
            return report;
        }

        public object GetReportDataSource(string parameters)
        {
            //PH.Packing.BO.CustomerLocationList list = new PH.Packing.BO.CustomerLocationList();
            //return list.GetCustomerLocation(this._customer, this._brand, this._skind);
            PH.RWO.BO.CustomerBrandCategoryList list = new PH.RWO.BO.CustomerBrandCategoryList();
            return list.CurrentDataContext.CustomerBrandCategories.Where(P => P.Customer == this._customer && P.CustCode == this._customercodex && P.GID == this._GID);

        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string cust = this.editCustomer.Text;
            string custcode = this.editcustomercode.Text;
            string brand = this.editBrand.Text;
            string skind = editSkind.Text;
            string s = string.Format("{0};{1};{2};{3}", cust,custcode, brand, skind);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobCustomerLocationReport ctl = new JobCustomerLocationReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCustomer.EditValue = paras[0];
                ctl.editcustomercode.EditValue = paras[1];
                ctl.editBrand.EditValue = paras[2];
                ctl.editSkind.EditValue   = paras[3];
            }
            return ctl;
        }

        #endregion

        private void JobCustomerLocationReport_Load(object sender, EventArgs e)
        {
            //List<BF>           bblst = DataHelper.GetBasicInfo("PH.RWO1.Category");

            //foreach (BF item in bblst)
            //{
            //    DevExpress.XtraEditors.Controls.ImageComboBoxItem TT = new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item.DataName, Convert.ToInt32(item.DataCode), -1);
            //    categoryImageComboBoxEdit.Properties.Items.Add(TT);
            //}
        }



    }
}
