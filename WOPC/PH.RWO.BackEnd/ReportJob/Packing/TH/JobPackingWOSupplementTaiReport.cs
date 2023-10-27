using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.BackEnd.ReportJob.TH
{
    public partial class JobPackingWOSupplementTaiReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobPackingWOSupplementTaiReport()
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
        string _Skind;

        public string SalesOrderNo
        { get { return this.editSalesOrderNo.Text; } }
        public string WorkOrderNo
        { get { return this.editWorkOrderNo.Text; } }

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            _company = ss[0];
            _salesOrderNo = ss[1];
            _workOrderNo = ss[2];
            _Skind = ss[3];
        }


        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);
            PH.RWO.BackEnd.Reports.TH.PackingWOSupplementTaiReport report = new PH.RWO.BackEnd.Reports.TH.PackingWOSupplementTaiReport();
                //report.SetTitle(_customer);

            return report;
        }

        public object GetReportDataSource(string parameters)
        {
            //GetValues(parameters);

            PH.RWO.BO.WorkOrderCategoryList list = new PH.RWO.BO.WorkOrderCategoryList();
            return list.CurrentDataContext.WorkOrderCategories.Where(P => P.Company == this._company && P.SalesOrderNo == this._salesOrderNo && P.WorkOrderNo == this._workOrderNo && P.ProductCategory == this._Skind);
        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string ordn = this.editSalesOrderNo.Text;
            string ordnLine = this.editWorkOrderNo.Text;
            string s = string.Format("{0};{1}", ordn, ordnLine);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobPackingWOSupplementTaiReport ctl = new JobPackingWOSupplementTaiReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editSalesOrderNo.EditValue = paras[0];
                ctl.editWorkOrderNo.EditValue = paras[1];
            }
            return ctl;
        }

        #endregion



    }
}
