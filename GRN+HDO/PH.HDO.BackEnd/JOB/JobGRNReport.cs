using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.HDO.BO;

namespace PH.HDO.BackEnd.JOB
{
    public partial class JobGRNReport : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public JobGRNReport()
        {
            InitializeComponent();
        }
        string _sparmer;

        public string SParmer
        {
            get { return _sparmer; }
            set { _sparmer = value; }
        }

        private GRNReportType _reportType;
        public GRNReportType ReportType
        {
            get
            {
                if (this.ceReceivingALL.Checked)
                    return GRNReportType.ReceivingALL;
                else if (this.ceReceivingSL.Checked)
                    return GRNReportType.ReceivingSL;
                else if (this.ceReceivingHK.Checked)
                    return GRNReportType.ReceivingHK;

                else if (this.ceReceivedALL.Checked)
                    return GRNReportType.ReceivedALL;
                else if (this.ceReceivedSL.Checked)
                    return GRNReportType.ReceivedSL;
                else if (this.ceReceivedHK.Checked)
                    return GRNReportType.ReceivedHK;
                //-----ChandlerXiao:20160325 add for Packing HDO with HSCode---------
                else if (this.ceReceivedPackingSummary.Checked)
                    return GRNReportType.ReceivedPackingSummary;
                else if (this.ceReceivedPackingDetail.Checked)
                    return GRNReportType.ReceivedPackingDetail;
                //-------------------------------------------------------------------


                else if (this.chkHSHDOSummary.Checked) //由David 加入 2019-07-15
                    return GRNReportType.HSHDOSummary;

                else return GRNReportType.None;
            }
        }



        PH.HDO.BO.Command commd = new PH.HDO.BO.Command();
        #region IParameterSetControl 成员

        public string GetParameter()
        {
            string parem = string.Format("{0}", (int)ReportType);
            return parem;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobGRNReport grn = new JobGRNReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                int i = Convert.ToInt32(paras[0]);

                GRNReportType t = (GRNReportType)i;
                switch (t)
                {
                    case GRNReportType.ReceivingSL:
                        grn.ceReceivingSL.Checked = true;
                        break;
                    case GRNReportType.ReceivingHK:
                        grn.ceReceivingHK.Checked = true;
                        break;
                    case GRNReportType.ReceivedSL:
                        grn.ceReceivedSL.Checked = true;
                        break;
                    case GRNReportType.ReceivedHK:
                        grn.ceReceivedHK.Checked = true;
                        break;
                    //-----ChandlerXiao:20160325 add for Packing HDO with HSCode---------
                    case GRNReportType.ReceivedPackingSummary:
                        grn.ceReceivedPackingSummary.Checked = true;
                        break;
                    case GRNReportType.ReceivedPackingDetail:
                        grn.ceReceivedPackingDetail.Checked = true;
                        break;
                    //--------------------------------------------------------------------
                    default:
                        break;
                }

            }
            return grn;
        }

        #endregion

        #region IServerReport 成员

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            GetValues(parameters);


            //-----ChandlerXiao:20160325 add for Packing HDO with HSCode---------  
            DevExpress.XtraReports.UI.XtraReport rpt = null;
            if (this._reportType == GRNReportType.ReceivedPackingSummary)
            {
                rpt = new PH.HDO.BackEnd.Report.HSCodePackingSummaryReport();
            }
            else if (this._reportType == GRNReportType.ReceivedPackingDetail)
            {
                rpt = new PH.HDO.BackEnd.Report.HSCodePackingDetailReport();
            }

             //--由David加入 HS HDO Summary Report  -----------------------------------
            else if (this._reportType == GRNReportType.HSHDOSummary)
            {
                rpt = new PH.HDO.BackEnd.Report.HSHDOSummaryReport();
            }
            //--由David加入 HS HDO Summary Report  -----------------------------------

            else
            {
                rpt = new PH.HDO.BackEnd.Report.GRNNoteReport(this._reportType, "");
            }


            //--------------------------------------------------------------------

            //ChandlerXiao:20160325註銷掉以下代碼
            //PH.HDO.BackEnd.Report.GRNNoteReport rpt = new PH.HDO.BackEnd.Report.GRNNoteReport(this._reportType);

            return rpt;
        }

        public object GetReportDataSource(string parameters)
        {
            GetValues(parameters);
            //ChandlerXiao:20160325註銷掉以下代碼
            //return commd.GetGRNList(this._reportType);
            //-----ChandlerXiao:20160325 add for Packing HDO with HSCode---------  

            if (this._reportType == GRNReportType.HSHDOSummary)  //由David加入 2019-07-15
            {
                return commd.GetHSHDOSummaryData();
            }
            else if (this._reportType != GRNReportType.ReceivedPackingSummary && this._reportType != GRNReportType.ReceivedPackingDetail)
            {
                return commd.GetGRNList(this._reportType);
            }
            else
            {
                return commd.GetGRNListForPacking(this._reportType);
            }
            //--------------------------------------------------------------------
        }

        #endregion

        private void GetValues(string parameters)
        {
            this._sparmer = parameters;
            if (string.IsNullOrEmpty(_sparmer)) return;
            string[] c = new string[1] { "," };
            string[] ts = parameters.Split(c, StringSplitOptions.None);
            this._reportType = (GRNReportType)Convert.ToInt32(ts[0]);
        }


    }
}
