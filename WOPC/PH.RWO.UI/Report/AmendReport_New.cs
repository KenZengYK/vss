using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Data;

namespace PH.RWO.UI.Report
{
    public partial class AmendReport_New : DevExpress.XtraReports.UI.XtraReport
    {

        DataTable MasterTable = new DataTable();
        DataTable DetailTable = new DataTable();
        string AmendNo = "";
        int VerId = 0;
        public AmendReport_New(string _amendno, int _verid)
        {
            InitializeComponent();
            AmendNo = _amendno;
            VerId = _verid;
            this.GetReportData(AmendNo, VerId);
        }

        private void GetReportData(string amendno, int verid)
        {
            DataHelper helper = new DataHelper();
            DataSet ds =helper.GetAmendData(amendno, verid);
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
                xrlDT_Create.Text = dr["CreateDate"].ToString();
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
                xrlDT_Create.Text = dr["CreateDate"].ToString();
                xrlAmendNo.Text = dr["AmendNo"].ToString();
                xrlVer.Text = dr["VerId"].ToString();


                string _reason = dr["AmenddReason"]!=null?dr["AmenddReason"].ToString():"";
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

  
                //xrlClerk.Text = dr["CreateBy"] != null ? dr["CreateBy"].ToString() : "";
              
                //xrlManager.Text = dr["Confirm_Manager"] != null ? dr["Confirm_Manager"].ToString() : "";
                //xrlPPC.Text = dr["Confirm_PPC"] != null ? dr["Confirm_PPC"].ToString() : "";
                //xrlCAD.Text = dr["Confirm_CAD"] != null ? dr["Confirm_CAD"].ToString() : "";
                //xrlPacking.Text = dr["Confirm_Packing"] != null ? dr["Confirm_Packing"].ToString() : "";
                //xrlSewing.Text = dr["Confirm_Sewing"] != null ? dr["Confirm_Sewing"].ToString() : "";

        
                //xrlDT_OA.Text = dr["CreateDate"] != null ? dr["CreateDate"].ToString() : "";
                //xrlDT_Mangager.Text = dr["DT_Manager"] != null ? dr["DT_Manager"].ToString() : "";
                //xrlDT_PPC.Text = dr["DT_PPC"] != null ? dr["DT_PPC"].ToString() : "";
                //xrlDT_CAD.Text = dr["DT_CAD"] != null ? dr["DT_CAD"].ToString() : "";
                //xrlDT_Packing.Text = dr["DT_Packing"] != null ? dr["DT_Packing"].ToString() : "";

              
                //xrlDT_Sewing.Text = dr["DT_Sewing"] != null ? dr["DT_Sewing"].ToString() : ""; 



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
