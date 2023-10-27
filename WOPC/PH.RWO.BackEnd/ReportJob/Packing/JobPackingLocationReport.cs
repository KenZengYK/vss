using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.BackEnd.ReportJob.Packing
{
    public partial class JobPackingLocationReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobPackingLocationReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;
            //PH.Packing.BO.HeaderList h = new PH.Packing.BO.HeaderList();
            //this.cbCustomer.Properties.Items.AddRange(h.GetCustomers().ToArray());
        }

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        string _param;
        string _company;
        string _salesOrderNo;
        string _workOrderNo;
        string _productcategory;
        //int  _skind;
        //string _skind;
        public string Company { get { return this.editcompany.Text; } }
        public string SalesOrderNo
        { get { return this.editSalesOrderNo.Text; } }
        public string WorkOrderNo
        { get { return this.editWorkOrderNo.Text; } }
        public string ProductCategory { get { return this.editProductcategory.Text; } }

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            _company = ss[0];
            _salesOrderNo = ss[1];
            _workOrderNo = ss[2];
            _productcategory = ss[3];

        }


        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);

            PH.RWO.BackEnd.Reports.Packing.PackingLocationReport report = new PH.RWO.BackEnd.Reports.Packing.PackingLocationReport(this._company,this._salesOrderNo, this._workOrderNo,this._productcategory);
            //report.SetTitle(_customer);

            return report;
        }

        public object GetReportDataSource(string parameters)
        {
            //GetValues(parameters);

            //PH.Packing.BO.PackingLocationList list = new PH.Packing.BO.PackingLocationList();
            //return list.GetPackingLocation(this._salesOrderNo, this._workOrderNo);

            PH.RWO.BO.WorkOrderCategoryList  list = new PH.RWO.BO.WorkOrderCategoryList();
            return list.CurrentDataContext.WorkOrderCategories.Where(P => P.Company == _company && P.SalesOrderNo == _salesOrderNo && P.WorkOrderNo == _workOrderNo && P.ProductCategory == _productcategory);

        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string company = this.editcompany.Text;
            string ordn = this.editSalesOrderNo.Text;            
            string ordnLine = this.editWorkOrderNo.Text;
            string productcategory = this.editProductcategory.Text;
            string s = string.Format("{0};{1};{2};{3}",company, ordn, ordnLine,productcategory);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobPackingLocationReport ctl = new JobPackingLocationReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editcompany.EditValue = paras[0];
                ctl.editSalesOrderNo.EditValue = paras[1];
                ctl.editWorkOrderNo.EditValue = paras[2];
                ctl.editProductcategory.EditValue = paras[3];
            }
            return ctl;
        }

        #endregion

    


    }
}
