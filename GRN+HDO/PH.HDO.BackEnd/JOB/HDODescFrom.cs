using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.HDO.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.HDO.BackEnd
{
    public partial class HDOFrom : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public HDOFrom()
        {
            InitializeComponent();


            HDODataContext dateContext = ContextBuilder.CreateContext<HDODataContext>();


            //            int GetDate = Convert.ToInt32(DateTime.Now.AddDays(-90).ToString("yyyyMMdd")) - 19000000;

            //            string SQl = @"select PAKL64 as HDONo,case when stat64='' then 'Planned' else 'Released' end as [Status],CONVERT(varchar(10),CAST(CAST(DATE64+19000000 AS varchar) AS datetime),111) as Createddd from openquery(as400,'select pakl64,stat64,date64 from ault4f1.qtp64 where cono64=''P1'' and date64>={0}')
            //                                    order by CAST(CAST(DATE64+19000000 AS varchar) AS datetime), PAKL64 ";

            //            //order by CAST(CAST(DATE64+19000000 AS varchar) AS datetime),120), PAKL64  ";
            //            SQl = string.Format(SQl, GetDate);
            //            DataTable tb = dateContext.ExecuteDataTable(SQl, "tb");


            this.txtfrom.Properties.DataSource = commd.tb();

            //this.txtfrom.Properties.DataSource = dateContext.HDOReleasedDateInfomations.Where(dr=>(dr.IsShow??false)==true).Select(dr => new HDOReleasedDateInfomation
            //{
            //    HDONo =dr.HDONo,
            //    HDODate =dr.HDODate,
            //    Status =dr.Status,
            //    Creator =dr.Creator,
            //    Whse = dr.Whse

            //}).ToList();
            this.txtfrom.Properties.DisplayMember = "HDONo";
            this.txtfrom.Properties.ValueMember = "HDONo";


        }
        string _parmer;



        public string Parmer
        {
            get { return _parmer; }
            set { _parmer = value; }
        }
        string _company;

        public string Company
        {
            get { return this.txtcompany.Text; }
        }

        string _hdoFrom;

        public string HdoFrom
        {
            get { return this.txtfrom.Text; }
        }
        int _rdocheckeds;

        public int Rdocheckeds
        {
            get { return _rdocheckeds; }
            set { _rdocheckeds = value; }
        }

        string _hdoTo;

        public string HdoTo
        {
            get { return this.txtto.Text; }
        }
        #region IParameterSetControl 成员
        PH.HDO.BO.Command commd = new PH.HDO.BO.Command();

        public UserControl ParameterControl(string parameters)
        {
            HDOFrom hdofrom = new HDOFrom();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                hdofrom.txtcompany.Text = paras[0];
                hdofrom.txtfrom.Text = paras[1];
                hdofrom.txtto.Text = paras[2];
            }
            return hdofrom;
        }

        #endregion

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Getoamer(parameters);
            DevExpress.XtraReports.UI.XtraReport hdorpt;
            if (this.Rdocheckeds == 4)
            {
                hdorpt = new PH.HDO.BackEnd.HDOReceivedReport(_hdoFrom, _hdoTo, _company);
                hdorpt.ExportOptions.PrintPreview.DefaultFileName = "HDO-Received";
            }
            else
            {
                hdorpt = new PH.HDO.BackEnd.HDODetailReport(_hdoFrom, _hdoTo, _company, _rdocheckeds);
                hdorpt.ExportOptions.PrintPreview.DefaultFileName = "HDO-Detail";
            }
            hdorpt.PrintingSystem.ShowMarginsWarning = false;
            hdorpt.PrintingSystem.ContinuousPageNumbering = true;
            return hdorpt;
        }

        #region IServerReport 成员

        public int CheckDataSource(string parameters)
        {
            return -1;
        }



        public object GetReportDataSource(string parameters)
        {
            //this.txtfrom.Properties.DataSource = commd.tb();
            return commd.Gettemplist(_company, _hdoFrom, _hdoTo, _rdocheckeds);
        }

        #endregion


        private void Getoamer(string parameters)
        {
            this._parmer = parameters;
            if (string.IsNullOrEmpty(_parmer)) return;
            string[] c = new string[1] { "," };
            string[] ts = parameters.Split(c, StringSplitOptions.None);
            this._company = ts[0];
            if (ts.Length < 2) return;
            this._hdoFrom = ts[1];
            this._hdoTo = ts[2];
            this._rdocheckeds = Convert.ToInt32(ts[3]);
        }

        #region IParameterSetControl 成员
        public string GetParameter()
        {
            int rdochecked;
            string company = string.IsNullOrEmpty(this.txtcompany.Text) ? "P1" : this.txtcompany.Text;
            string hdoFrom = string.IsNullOrEmpty(this.txtfrom.Text) ? this.txtto.Text : this.txtfrom.Text;
            string hdoTo = hdoFrom;
            //string hdoTo = string.IsNullOrEmpty(this.txtto.Text) ? this.txtfrom.Text : this.txtto.Text;
            if (string.IsNullOrEmpty(hdoFrom)) return null;
            if (rdoby.Checked) rdochecked = 1;              //order by material
            else if (rdobys.Checked) rdochecked = 2;        //order by project
            else if (rdobya.Checked) rdochecked = 3;            //order by GRP
            else if (this.rdoReceived.Checked) rdochecked = 4;            //receiverd
            else rdochecked = 0;                            //没选择
            string parem = string.Format("{0},{1},{2},{3}", company, hdoFrom, hdoTo, rdochecked);
            return parem;

        }


        #endregion
    }
}
