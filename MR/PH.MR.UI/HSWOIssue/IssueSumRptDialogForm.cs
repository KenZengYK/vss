using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BackEnd.Report.HSWOIssue;

namespace PH.MR.UI.HSWOIssue
{
    public partial class IssueSumRptDialogForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        private string _rptType;

        public DateTime DTFrom
        {
            get;
            set;
        }

        public DateTime DTTO
        {
            get;
            set;
        }

        public IssueSumRptDialogForm()
        {
            InitializeComponent();
        }

        public IssueSumRptDialogForm(String RptType)
            : this()
        {
            this._rptType = RptType;
        }

        private void sBtn_OK_Click(object sender, EventArgs e)
        {
            if (this.dateEdit_From.EditValue == null)
            {
                MessageBox.Show("請選擇[From]日期!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (this.dateEdit_TO.EditValue == null)
            {
                MessageBox.Show("請選擇[TO]日期!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            this.DTFrom = Convert.ToDateTime(this.dateEdit_From.EditValue);
            this.DTTO = Convert.ToDateTime(this.dateEdit_TO.EditValue);

            switch (this._rptType)
            {
                case "Issue":
                    ShowIssueSummaryRpt();
                    break;
                case "Receive":
                    ShowReceiveSummaryRpt();
                    break;
            }

        }

        private void ShowIssueSummaryRpt()
        {
            HSWOIssue.LoadingFormHelper helper = new LoadingFormHelper();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            try
            {
                helper.ShowLoadingForm("獲取發料信息中.....");
                #region
                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "P_GetHSWOIssueSummary";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@FromDate", SqlDbType.DateTime);
                cmd.Parameters["@FromDate"].Value = this.DTFrom;
                cmd.Parameters.Add("@TODate", SqlDbType.DateTime);
                cmd.Parameters["@TODate"].Value = this.DTTO;
                cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;

                DataSet ds = new DataSet();
                System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                dap.SelectCommand = cmd;
                dap.Fill(ds);
                List<PH.MR.BO.P_GetHSWOIssueSummary_Result> bos = new List<PH.MR.BO.P_GetHSWOIssueSummary_Result>();
                DataTable dt = ds.Tables[0];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.P_GetHSWOIssueSummary_Result bo = new PH.MR.BO.P_GetHSWOIssueSummary_Result();
                    bo.Factory = dt.Rows[i]["Factory"] == DBNull.Value ? "" : dt.Rows[i]["Factory"].ToString();
                    bo.HSCodeSeq = dt.Rows[i]["HSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["HSCodeSeq"]);
                    bo.HSCode = dt.Rows[i]["HSCode"] == DBNull.Value ? "" : dt.Rows[i]["HSCode"].ToString();
                    bo.HSName = dt.Rows[i]["HSName"] == DBNull.Value ? "" : dt.Rows[i]["HSName"].ToString();
                    bo.IssueWeight_RMB = dt.Rows[i]["IssueWeight_RMB"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["IssueWeight_RMB"]);
                    bo.IssueWeight_Other = dt.Rows[i]["IssueWeight_Other"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["IssueWeight_Other"]);
                    bo.HScontractNO = dt.Rows[i]["HScontractNO"] == DBNull.Value ? "" : dt.Rows[i]["HScontractNO"].ToString();
                    bos.Add(bo);
                    #endregion
                }

                HSSumRpt rpt = new HSSumRpt();
                rpt.DTFrom = this.DTFrom;
                rpt.DTTO = this.DTTO;
                rpt.DataSource = bos;
                rpt.ShowPreview();

                #endregion
            }
            finally
            {
                helper.CloseLoadingForm();
                cmd.Connection.Close();
            } 
        }


        private void ShowReceiveSummaryRpt()
        {
            HSWOIssue.LoadingFormHelper helper = new LoadingFormHelper();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            try
            {
                helper.ShowLoadingForm("獲取發料信息中.....");
                #region
                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "P_GetHSWOIssueSummary";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@FromDate", SqlDbType.DateTime);
                cmd.Parameters["@FromDate"].Value = this.DTFrom;
                cmd.Parameters.Add("@TODate", SqlDbType.DateTime);
                cmd.Parameters["@TODate"].Value = this.DTTO;
                cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;

                DataSet ds = new DataSet();
                System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                dap.SelectCommand = cmd;
                dap.Fill(ds);
                List<PH.MR.BO.P_GetHSWOIssueSummary_Result> bos = new List<PH.MR.BO.P_GetHSWOIssueSummary_Result>();
                DataTable dt = ds.Tables[0];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.P_GetHSWOIssueSummary_Result bo = new PH.MR.BO.P_GetHSWOIssueSummary_Result();
                    bo.HSCodeSeq = dt.Rows[i]["HSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["HSCodeSeq"]);
                    bo.HSCode = dt.Rows[i]["HSCode"] == DBNull.Value ? "" : dt.Rows[i]["HSCode"].ToString();
                    bo.HSName = dt.Rows[i]["HSName"] == DBNull.Value ? "" : dt.Rows[i]["HSName"].ToString();
                    bo.IssueWeight_RMB = dt.Rows[i]["IssueWeight_RMB"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["IssueWeight_RMB"]);
                    bo.IssueWeight_Other = dt.Rows[i]["IssueWeight_Other"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["IssueWeight_Other"]);
                    bo.HScontractNO = dt.Rows[i]["HScontractNO"] == DBNull.Value ? "" : dt.Rows[i]["HScontractNO"].ToString();
                    bos.Add(bo);
                    #endregion
                }

                HSSumRpt rpt = new HSSumRpt();
                rpt.DTFrom = this.DTFrom;
                rpt.DTTO = this.DTTO;
                rpt.DataSource = bos;
                rpt.ShowPreview();

                #endregion
            }
            finally
            {
                helper.CloseLoadingForm();
                cmd.Connection.Close();
            }
        }

    }
}
