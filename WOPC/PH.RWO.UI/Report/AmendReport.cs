using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Data;

namespace PH.RWO.UI.Report
{
    public partial class AmendReport : DevExpress.XtraReports.UI.XtraReport
    {

        DataTable MasterTable = new DataTable();
        DataTable DetailTable = new DataTable();
        string AmendNo = "";
        int VerId = 0;
        public AmendReport(string _amendno, int _verid)
        {
            InitializeComponent();
            AmendNo = _amendno;
            VerId = _verid;
            this.GetReportData(AmendNo, VerId);
        }

        private void GetReportData(string amendno, int verid)
        {
            DataHelper helper = new DataHelper();
            DataSet ds = helper.GetAmendData(amendno, verid);
            MasterTable = ds.Tables[0];
            DetailTable = ds.Tables[1];
            this.DataSource = DetailTable;

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (MasterTable.Rows.Count > 0)
            {
                DataRow dr = MasterTable.Rows[0];
                //QC_Master ma = this.GetCurrentRow() as QC_Master;
                xrlFac.Text = dr["Factory"].ToString();
                xrlDT_Create.Text = string.IsNullOrEmpty(dr["CreateTime"].ToString()) ? "" : Convert.ToDateTime(dr["CreateTime"]).ToString("yyyy-MM-dd");
                xrlAmendNo.Text = dr["AmendNo"].ToString();
                xrlVer.Text = dr["VerId"].ToString(); ;

            }
        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (MasterTable.Rows.Count > 0)
            {
                DataRow dr = MasterTable.Rows[0];
                xrlFac.Text = dr["Factory"].ToString();
                xrlDT_Create.Text = string.IsNullOrEmpty(dr["CreateTime"].ToString()) ? "" : Convert.ToDateTime(dr["CreateTime"]).ToString("yyyy-MM-dd");
                xrlAmendNo.Text = dr["AmendNo"].ToString();
                xrlVer.Text = dr["VerId"].ToString();


                string _reason = dr["AmenddReason"] != null ? dr["AmenddReason"].ToString() : "";
                string _content = dr["AmendContent"] != null ? dr["AmendContent"].ToString() : "";
                if (!string.IsNullOrEmpty(_reason))
                {
                    if (_reason.Contains("R1"))
                        xrCkR1.Checked = true;
                    if (_reason.Contains("R2"))
                        xrCkR2.Checked = true;
                    if (_reason.Contains("R3"))
                        xrCkR3.Checked = true;
                    if (_reason.Contains("R4"))
                        xrCkR4.Checked = true;
                    if (_reason.Contains("R5"))
                        xrCkR5.Checked = true;
                    if (_reason.Contains("R6"))
                        xrCkR6.Checked = true;

                    xrtMemo.Text = dr["Remark"] != null ? dr["Remark"].ToString() : "";

                }

                //content
                if (!string.IsNullOrEmpty(_content))
                {
                    if (_content.Contains("C1"))
                        xrCkC1.Checked = true;
                    if (_content.Contains("C2"))
                        xrCkC2.Checked = true;
                    if (_content.Contains("C3"))
                        xrCkC3.Checked = true;
                    if (_content.Contains("C4"))
                        xrCkC4.Checked = true;
                    if (_content.Contains("C5"))
                        xrCkC5.Checked = true;
                    if (_content.Contains("C6"))
                        xrCkC6.Checked = true;


                    if (_content.Contains("C7"))
                        xrCkC7.Checked = true;
                    if (_content.Contains("C8"))
                        xrCkC8.Checked = true;
                    if (_content.Contains("C9"))
                        xrCkC9.Checked = true;
                    if (_content.Contains("CA"))
                        xrCkCA.Checked = true;
                    if (_content.Contains("CB"))
                        xrCkCB.Checked = true;
                    if (_content.Contains("CC"))
                        xrCkCC.Checked = true;

                }

                //  xrlClerk.Text = dr["Confirm_OA"] != null ? dr["Confirm_OA"].ToString() : ""; 
                //xrlClerk.Text = dr["Confirm_OA"] != null ? dr["Confirm_OA"].ToString() : "";
                //xrlClerk.Text = dr["CreateBy"] != null ? dr["CreateBy"].ToString() : "";
                //xrlManager.Text = dr["Confirm_Manager"] != null ? dr["Confirm_Manager"].ToString() : "";


                //由David加入以下代碼 2020-09-08
                //xrlDT_OA.Text = string.IsNullOrEmpty(dr["DT_OA"].ToString()) ? "" : Convert.ToDateTime(dr["DT_OA"]).ToString("yyyy/MM/dd");
                //xrlDT_Mangager.Text = string.IsNullOrEmpty(dr["DT_Manager"].ToString()) ? "" : Convert.ToDateTime(dr["DT_Manager"]).ToString("yyyy/MM/dd");

                //由David加入以下代碼 2022-11-12
                tcCreateBy.Text = dr["CreateBy"].ToString();
                tcCreateTime.Text = string.IsNullOrEmpty(dr["CreateTime"].ToString()) ? "" : Convert.ToDateTime(dr["CreateTime"]).ToString("yyyy-MM-dd");
                tcConfirm_PPC.Text = dr["Confirm_PPC"].ToString();
                tcDT_PPC.Text = string.IsNullOrEmpty(dr["DT_PPC"].ToString()) ? "" : Convert.ToDateTime(dr["DT_PPC"]).ToString("yyyy-MM-dd");
                tcConfirm_Sewing.Text = dr["Confirm_Sewing"].ToString();
                tcDT_Sewing.Text = string.IsNullOrEmpty(dr["DT_Sewing"].ToString()) ? "" : Convert.ToDateTime(dr["DT_Sewing"]).ToString("yyyy-MM-dd");
                tcConfirm_Manager.Text = dr["Confirm_Manager"].ToString();
                tcDT_Manager.Text = string.IsNullOrEmpty(dr["DT_Manager"].ToString()) ? "" : Convert.ToDateTime(dr["DT_Manager"]).ToString("yyyy-MM-dd");
            }
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.Detail.Height = 
            DataRowView dr = this.GetCurrentRow() as DataRowView;
            if (dr != null)
            {
                xrtExtDate.Text = dr["exitdate"] != null ? dr["exitdate"].ToString() : "";
                xrCustStyle.Text = dr["customerstyleno"] != null ? dr["customerstyleno"].ToString() : "";
                xrtPhStyle.Text = dr["styleno"] != null ? dr["styleno"].ToString() : "";
                xrtWO.Text = dr["workorderno"] != null ? dr["workorderno"].ToString() : "";
                xrtProj.Text = dr["projectno"] != null ? dr["projectno"].ToString() : "";


            }
        }

    }
}
