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
    public partial class JobCustomerRequestReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobCustomerRequestReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;
            //PH.Packing.BO.HeaderList h = new PH.Packing.BO.HeaderList();
            //this.cbCustomer.Properties.Items.AddRange(h.GetCustomers().ToArray());
        }
        public CustomerBrandCategory cust
        {
            get
            {
                return (new CustomerBrandCategoryList()).CurrentDataContext.CustomerBrandCategories.Where(P => P.Customer == _customer && P.CustCode == this._customercodeX && P.Brand == _brand && P.Category == this._skind).FirstOrDefault();
            }
        }
        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        string _param;
        string _customer;
        string _customercodeX;
        string _brand;
        string _skind;
        Guid _GID;

        public string Customer
        { get { return this.editCustomer.Text; } }
        public string CustCode { get { return this.editCustomerCodeX.Text; } }
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
            _customercodeX = ss[1];
            _brand = ss[2];
            _skind = ss[3];
            this._GID = new Guid(ss[4]);
        }


        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);

            PH.RWO.BackEnd.Reports.Packing.CustomerRequestReport report = new PH.RWO.BackEnd.Reports.Packing.CustomerRequestReport(this._customer, this._customercodeX, this._brand, this._skind, this._GID);
            //report.SetTitle(_customer);

            return report;
        }

        public object GetReportDataSource(string parameters)
        {
            //PH.Packing.BO.CustomerRequirementList list = new PH.Packing.BO.CustomerRequirementList();
            //return list.GetCustomerRequirement(this._customer, this._brand, this._skind);
            PH.RWO.BO.CustomerBrandCategoryList list = new PH.RWO.BO.CustomerBrandCategoryList();
            return list.CurrentDataContext.CustomerBrandCategories.Where(P => P.Customer == this._customer && P.CustCode == this._customercodeX && P.GID == this._GID);
        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string cust = this.editCustomer.Text;
            string CustCode = this.editCustomerCodeX.Text;
            string brand = this.editBrand.Text;
            string skind = this.editSkind.Text;

            string s = string.Format("{0};{1};{2};{3}", cust, CustCode, brand, skind);//執行數據源時候需要使用的參數
            return s;
            //return string.Empty;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobCustomerRequestReport ctl = new JobCustomerRequestReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCustomer.EditValue = paras[0];
                ctl.editCustomerCodeX.EditValue = paras[1];
                ctl.editBrand.EditValue = paras[2];
                ctl.editSkind.Text = paras[3];
            }
            return ctl;
        }

        #endregion

        private void JobCustomerRequestReport_Load(object sender, EventArgs e)
        {
            //List<BF> bblst = DataHelper.GetBasicInfo("PH.RWO1.Category");

            //foreach (BF item in bblst)
            //{
            //    DevExpress.XtraEditors.Controls.ImageComboBoxItem TT = new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item.DataName, Convert.ToInt32(item.DataCode), -1);
            //    categoryImageComboBoxEdit.Properties.Items.Add(TT);
            //}
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }



    }
}
